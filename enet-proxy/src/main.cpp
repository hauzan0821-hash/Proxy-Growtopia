#include "config.hpp"
#include "keyauth_client.hpp"
#include "logger.hpp"
#include "proxy_server.hpp"

#include <iostream>
#include <string>

namespace {
void printUsage(const char* exe) {
    std::cout
        << "Usage: " << exe << " [options]\n"
        << "  --listen-host <ip>         default: 0.0.0.0\n"
        << "  --listen-port <port>       default: 17049\n"
        << "  --upstream-host <host>     default: 213.179.209.175\n"
        << "  --upstream-port <port>     default: 17049\n"
        << "  --max-clients <n>          default: 256\n"
        << "  --lua-script <file>        default: ../proxy.lua\n"
        << "  --no-lua                   disable Lua script engine\n"
        << "  --keyauth-url <url>        default: https://keyauth.win/api/seller/\n"
        << "  --keyauth-owner <id>       default: KRZWWBf8dt\n"
        << "  --keyauth-secret <secret>  default: provided secret\n"
        << "  --keyauth-app <name>       default: GTProxy\n"
        << "  --no-keyauth               disable keyauth gate\n"
        << "  --quiet                    disable debug logs\n";
}

bool parseArgs(int argc, char** argv, ProxyConfig& cfg) {
    for (int i = 1; i < argc; ++i) {
        std::string arg = argv[i];
        auto requireValue = [&](const char* name) -> const char* {
            if (i + 1 >= argc) {
                std::cerr << "Missing value for " << name << '\n';
                return nullptr;
            }
            return argv[++i];
        };

        if (arg == "--listen-host") {
            if (auto v = requireValue("--listen-host")) cfg.listenHost = v; else return false;
        } else if (arg == "--listen-port") {
            if (auto v = requireValue("--listen-port")) cfg.listenPort = static_cast<uint16_t>(std::stoi(v)); else return false;
        } else if (arg == "--upstream-host") {
            if (auto v = requireValue("--upstream-host")) cfg.upstreamHost = v; else return false;
        } else if (arg == "--upstream-port") {
            if (auto v = requireValue("--upstream-port")) cfg.upstreamPort = static_cast<uint16_t>(std::stoi(v)); else return false;
        } else if (arg == "--max-clients") {
            if (auto v = requireValue("--max-clients")) cfg.maxClients = static_cast<std::size_t>(std::stoul(v)); else return false;
        } else if (arg == "--lua-script") {
            if (auto v = requireValue("--lua-script")) cfg.luaScriptPath = v; else return false;
        } else if (arg == "--no-lua") {
            cfg.enableLua = false;
        } else if (arg == "--keyauth-url") {
            if (auto v = requireValue("--keyauth-url")) cfg.keyauth.apiUrl = v; else return false;
        } else if (arg == "--keyauth-owner") {
            if (auto v = requireValue("--keyauth-owner")) cfg.keyauth.ownerId = v; else return false;
        } else if (arg == "--keyauth-secret") {
            if (auto v = requireValue("--keyauth-secret")) cfg.keyauth.secretId = v; else return false;
        } else if (arg == "--keyauth-app") {
            if (auto v = requireValue("--keyauth-app")) cfg.keyauth.appName = v; else return false;
        } else if (arg == "--no-keyauth") {
            cfg.keyauth.enabled = false;
        } else if (arg == "--quiet") {
            cfg.verbose = false;
        } else if (arg == "--help" || arg == "-h") {
            printUsage(argv[0]);
            return false;
        } else {
            std::cerr << "Unknown argument: " << arg << '\n';
            return false;
        }
    }
    return true;
}
} // namespace

int main(int argc, char** argv) {
    ProxyConfig cfg;
    if (!parseArgs(argc, argv, cfg)) {
        return argc > 1 ? 1 : 0;
    }

    logx::setVerbose(cfg.verbose);

    if (cfg.keyauth.enabled) {
        std::cout << "[KeyAuth] Username: ";
        std::string username;
        std::getline(std::cin, username);

        KeyAuthClient ka(cfg.keyauth);
        std::string reason;
        if (!ka.verifyUsername(username, reason)) {
            logx::error("KeyAuth rejected: " + reason);
            return 1;
        }
        logx::info("KeyAuth login success: " + username);
    }

    ProxyServer server(cfg);
    if (!server.initialize()) {
        return 1;
    }

    server.run();
    return 0;
}
