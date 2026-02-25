#pragma once

#include "keyauth_client.hpp"

#include <cstdint>
#include <string>

struct ProxyConfig {
    std::string listenHost = "0.0.0.0";
    uint16_t listenPort = 17049;

    std::string upstreamHost = "213.179.209.175";
    uint16_t upstreamPort = 17049;

    std::size_t maxClients = 256;
    bool verbose = true;

    bool enableLua = true;
    std::string luaScriptPath = "../proxy.lua";

    KeyAuthConfig keyauth{};
};
