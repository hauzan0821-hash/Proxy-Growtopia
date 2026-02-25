#include "proxy_server.hpp"

#include "logger.hpp"

#include <cstring>
#include <thread>

namespace {
std::string peerToString(const ENetPeer* p) {
    if (p == nullptr || p->address.host == 0) {
        return "<null>";
    }
    char ip[64] = {0};
    enet_address_get_host_ip(&p->address, ip, sizeof(ip));
    return std::string(ip) + ':' + std::to_string(p->address.port);
}
}

ProxyServer::ProxyServer(ProxyConfig cfg) : cfg_(std::move(cfg)) {}

ProxyServer::~ProxyServer() {
    if (localHost_ != nullptr) {
        enet_host_destroy(localHost_);
    }
    if (remoteHost_ != nullptr) {
        enet_host_destroy(remoteHost_);
    }
    enet_deinitialize();
}

bool ProxyServer::initialize() {
    if (enet_initialize() != 0) {
        logx::error("enet_initialize failed");
        return false;
    }

    ENetAddress listenAddr{};
    listenAddr.port = cfg_.listenPort;
    if (cfg_.listenHost == "0.0.0.0") {
        listenAddr.host = ENET_HOST_ANY;
    } else {
        enet_address_set_host(&listenAddr, cfg_.listenHost.c_str());
    }

    localHost_ = enet_host_create(&listenAddr, cfg_.maxClients, 2, 0, 0);
    if (localHost_ == nullptr) {
        logx::error("failed creating local ENet host");
        return false;
    }

    remoteHost_ = enet_host_create(nullptr, cfg_.maxClients, 2, 0, 0);
    if (remoteHost_ == nullptr) {
        logx::error("failed creating remote ENet host");
        return false;
    }

    if (cfg_.enableLua) {
        bool ok = script_.initialize(
            cfg_.luaScriptPath,
            [this](int type, const std::string& payload) { sendPacketFromScript(type, payload); },
            [](const std::string& m) { logx::info("[Lua] " + m); });
        if (!ok) {
            logx::warn("Lua scripting requested but failed to initialize");
        }
    }

    logx::info("Listening on " + cfg_.listenHost + ":" + std::to_string(cfg_.listenPort));
    logx::info("Upstream set to " + cfg_.upstreamHost + ":" + std::to_string(cfg_.upstreamPort));
    return true;
}

void ProxyServer::run() {
    logx::info("Proxy started");
    while (true) {
        serviceLocal();
        serviceRemote();
        std::this_thread::sleep_for(std::chrono::milliseconds(1));
    }
}

void ProxyServer::serviceLocal() {
    ENetEvent ev{};
    while (enet_host_service(localHost_, &ev, 0) > 0) {
        switch (ev.type) {
            case ENET_EVENT_TYPE_CONNECT:
                handleLocalConnect(ev.peer);
                break;
            case ENET_EVENT_TYPE_RECEIVE:
                handleLocalReceive(ev.peer, ev.packet, ev.channelID);
                enet_packet_destroy(ev.packet);
                break;
            case ENET_EVENT_TYPE_DISCONNECT:
                handleLocalDisconnect(ev.peer);
                break;
            default:
                break;
        }
    }
}

void ProxyServer::serviceRemote() {
    ENetEvent ev{};
    while (enet_host_service(remoteHost_, &ev, 0) > 0) {
        switch (ev.type) {
            case ENET_EVENT_TYPE_CONNECT:
                handleRemoteConnect(ev.peer);
                break;
            case ENET_EVENT_TYPE_RECEIVE:
                handleRemoteReceive(ev.peer, ev.packet, ev.channelID);
                enet_packet_destroy(ev.packet);
                break;
            case ENET_EVENT_TYPE_DISCONNECT:
                handleRemoteDisconnect(ev.peer);
                break;
            default:
                break;
        }
    }
}

void ProxyServer::handleLocalConnect(ENetPeer* localPeer) {
    logx::info("Client connected: " + peerToString(localPeer));
    connectUpstreamFor(localPeer);
}

void ProxyServer::handleLocalReceive(ENetPeer* localPeer, ENetPacket* packet, enet_uint8 channel) {
    auto it = localToRemote_.find(localPeer);
    if (it == localToRemote_.end() || it->second == nullptr) {
        logx::warn("No upstream peer for client " + peerToString(localPeer));
        return;
    }

    const std::string payload(reinterpret_cast<const char*>(packet->data), packet->dataLength);
    if (script_.available() && script_.onPacketOut(3, payload)) {
        return;
    }

    logx::debug("C->S len=" + std::to_string(packet->dataLength) + " ch=" + std::to_string(channel));
    forwardPacket(it->second, packet, channel);
}

void ProxyServer::handleLocalDisconnect(ENetPeer* localPeer) {
    logx::info("Client disconnected: " + peerToString(localPeer));
    auto it = localToRemote_.find(localPeer);
    if (it != localToRemote_.end()) {
        ENetPeer* remotePeer = it->second;
        unlinkPeers(localPeer, remotePeer);
        if (remotePeer != nullptr) {
            enet_peer_disconnect(remotePeer, 0);
        }
    }
}

void ProxyServer::handleRemoteConnect(ENetPeer* remotePeer) {
    logx::info("Upstream connected: " + peerToString(remotePeer));
}

void ProxyServer::handleRemoteReceive(ENetPeer* remotePeer, ENetPacket* packet, enet_uint8 channel) {
    auto it = remoteToLocal_.find(remotePeer);
    if (it == remoteToLocal_.end() || it->second == nullptr) {
        logx::warn("No local peer for upstream " + peerToString(remotePeer));
        return;
    }

    const std::string payload(reinterpret_cast<const char*>(packet->data), packet->dataLength);
    if (script_.available() && script_.onPacketIn(3, payload)) {
        return;
    }

    logx::debug("S->C len=" + std::to_string(packet->dataLength) + " ch=" + std::to_string(channel));
    forwardPacket(it->second, packet, channel);
}

void ProxyServer::handleRemoteDisconnect(ENetPeer* remotePeer) {
    logx::warn("Upstream disconnected: " + peerToString(remotePeer));
    auto it = remoteToLocal_.find(remotePeer);
    if (it != remoteToLocal_.end()) {
        ENetPeer* localPeer = it->second;
        unlinkPeers(localPeer, remotePeer);
        if (localPeer != nullptr) {
            enet_peer_disconnect(localPeer, 0);
        }
    }
}

void ProxyServer::forwardPacket(ENetPeer* to, const ENetPacket* packet, enet_uint8 channel) {
    if (to == nullptr || packet == nullptr) {
        return;
    }

    auto* clone = enet_packet_create(packet->data, packet->dataLength, packet->flags);
    if (clone == nullptr) {
        logx::error("failed to allocate packet clone");
        return;
    }

    enet_peer_send(to, channel, clone);
    enet_host_flush(to->host);
}

void ProxyServer::forwardRaw(ENetPeer* to, enet_uint32 flags, const std::string& payload, enet_uint8 channel) {
    if (to == nullptr) return;
    auto* packet = enet_packet_create(payload.data(), payload.size(), flags);
    if (packet == nullptr) {
        logx::error("failed to allocate script packet");
        return;
    }
    enet_peer_send(to, channel, packet);
    enet_host_flush(to->host);
}

ENetPeer* ProxyServer::connectUpstreamFor(ENetPeer* localPeer) {
    ENetAddress up{};
    up.port = cfg_.upstreamPort;
    if (enet_address_set_host(&up, cfg_.upstreamHost.c_str()) != 0) {
        logx::error("cannot resolve upstream host " + cfg_.upstreamHost);
        return nullptr;
    }

    ENetPeer* remotePeer = enet_host_connect(remoteHost_, &up, 2, 0);
    if (remotePeer == nullptr) {
        logx::error("failed to connect upstream for " + peerToString(localPeer));
        return nullptr;
    }

    localToRemote_[localPeer] = remotePeer;
    remoteToLocal_[remotePeer] = localPeer;
    return remotePeer;
}

void ProxyServer::unlinkPeers(ENetPeer* localPeer, ENetPeer* remotePeer) {
    if (localPeer != nullptr) {
        localToRemote_.erase(localPeer);
    }
    if (remotePeer != nullptr) {
        remoteToLocal_.erase(remotePeer);
    }
}

void ProxyServer::sendPacketFromScript(int type, const std::string& payload) {
    if (localToRemote_.empty()) {
        return;
    }

    ENetPeer* remote = localToRemote_.begin()->second;
    if (remote == nullptr) return;

    enet_uint32 flags = 0;
    if (type == 2 || type == 3) {
        flags = ENET_PACKET_FLAG_RELIABLE;
    }

    forwardRaw(remote, flags, payload, 0);
}
