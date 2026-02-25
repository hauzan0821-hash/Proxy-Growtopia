#pragma once

#include "config.hpp"
#include "script_engine.hpp"

#include <enet/enet.h>
#include <unordered_map>

class ProxyServer {
  public:
    explicit ProxyServer(ProxyConfig cfg);
    ~ProxyServer();

    bool initialize();
    void run();

  private:
    ProxyConfig cfg_;
    ENetHost* localHost_ = nullptr;
    ENetHost* remoteHost_ = nullptr;

    std::unordered_map<ENetPeer*, ENetPeer*> localToRemote_;
    std::unordered_map<ENetPeer*, ENetPeer*> remoteToLocal_;

    ScriptEngine script_;

    void serviceLocal();
    void serviceRemote();

    void handleLocalConnect(ENetPeer* localPeer);
    void handleLocalReceive(ENetPeer* localPeer, ENetPacket* packet, enet_uint8 channel);
    void handleLocalDisconnect(ENetPeer* localPeer);

    void handleRemoteConnect(ENetPeer* remotePeer);
    void handleRemoteReceive(ENetPeer* remotePeer, ENetPacket* packet, enet_uint8 channel);
    void handleRemoteDisconnect(ENetPeer* remotePeer);

    void forwardPacket(ENetPeer* to, const ENetPacket* packet, enet_uint8 channel);
    void forwardRaw(ENetPeer* to, enet_uint32 flags, const std::string& payload, enet_uint8 channel);
    ENetPeer* connectUpstreamFor(ENetPeer* localPeer);
    void unlinkPeers(ENetPeer* localPeer, ENetPeer* remotePeer);

    void sendPacketFromScript(int type, const std::string& payload);
};
