#include "script_engine.hpp"

#include <lua.hpp>

#include <string>
#include <unordered_map>
#include <vector>

struct ScriptEngine::Impl {
    lua_State* L = nullptr;
    SendPacketCallback sendCb;
    ConsoleCallback logCb;
    std::unordered_map<std::string, std::vector<int>> callbacks;
};

namespace {
ScriptEngine::Impl* getImpl(lua_State* L) {
    lua_getfield(L, LUA_REGISTRYINDEX, "gt_impl_ptr");
    auto* impl = static_cast<ScriptEngine::Impl*>(lua_touserdata(L, -1));
    lua_pop(L, 1);
    return impl;
}

int l_SendPacket(lua_State* L) {
    auto* impl = getImpl(L);
    if (impl == nullptr || !impl->sendCb) {
        return 0;
    }
    int type = static_cast<int>(luaL_checkinteger(L, 1));
    size_t len = 0;
    const char* payload = luaL_checklstring(L, 2, &len);
    impl->sendCb(type, std::string(payload, len));
    return 0;
}

int l_OnConsoleMessage(lua_State* L) {
    auto* impl = getImpl(L);
    if (impl == nullptr || !impl->logCb) {
        return 0;
    }
    size_t len = 0;
    const char* msg = luaL_checklstring(L, 1, &len);
    impl->logCb(std::string(msg, len));
    return 0;
}

int l_AddCallback(lua_State* L) {
    auto* impl = getImpl(L);
    if (impl == nullptr) {
        return 0;
    }

    luaL_checkstring(L, 1); // name (ignored)
    const char* event = luaL_checkstring(L, 2);
    luaL_checktype(L, 3, LUA_TFUNCTION);

    lua_pushvalue(L, 3);
    int ref = luaL_ref(L, LUA_REGISTRYINDEX);
    impl->callbacks[event].push_back(ref);
    return 0;
}

bool callPacketCallbacks(ScriptEngine::Impl* impl, const char* event, int type, const std::string& packet) {
    auto it = impl->callbacks.find(event);
    if (it == impl->callbacks.end()) {
        return false;
    }

    for (int ref : it->second) {
        lua_rawgeti(impl->L, LUA_REGISTRYINDEX, ref);
        lua_pushinteger(impl->L, type);
        lua_pushlstring(impl->L, packet.data(), packet.size());

        if (lua_pcall(impl->L, 2, 1, 0) != LUA_OK) {
            if (impl->logCb) impl->logCb(std::string("Lua callback error: ") + lua_tostring(impl->L, -1));
            lua_pop(impl->L, 1);
            continue;
        }

        bool blocked = lua_toboolean(impl->L, -1) != 0;
        lua_pop(impl->L, 1);
        if (blocked) {
            return true;
        }
    }
    return false;
}
} // namespace

ScriptEngine::~ScriptEngine() {
    if (impl_ != nullptr) {
        if (impl_->L != nullptr) {
            lua_close(impl_->L);
        }
        delete impl_;
        impl_ = nullptr;
    }
}

bool ScriptEngine::initialize(const std::string& scriptPath, SendPacketCallback sendCb, ConsoleCallback logCb) {
    impl_ = new Impl();
    impl_->sendCb = std::move(sendCb);
    impl_->logCb = std::move(logCb);
    impl_->L = luaL_newstate();
    if (impl_->L == nullptr) {
        return false;
    }

    luaL_openlibs(impl_->L);
    lua_pushlightuserdata(impl_->L, impl_);
    lua_setfield(impl_->L, LUA_REGISTRYINDEX, "gt_impl_ptr");

    lua_pushcfunction(impl_->L, l_SendPacket);
    lua_setglobal(impl_->L, "SendPacket");

    lua_pushcfunction(impl_->L, l_OnConsoleMessage);
    lua_setglobal(impl_->L, "OnConsoleMessage");

    lua_pushcfunction(impl_->L, l_AddCallback);
    lua_setglobal(impl_->L, "AddCallback");

    if (luaL_dofile(impl_->L, scriptPath.c_str()) != LUA_OK) {
        if (impl_->logCb) impl_->logCb(std::string("Lua load failed: ") + lua_tostring(impl_->L, -1));
        lua_pop(impl_->L, 1);
        return false;
    }

    if (impl_->logCb) impl_->logCb("Lua script loaded: " + scriptPath);
    return true;
}

bool ScriptEngine::onPacketOut(int type, const std::string& packet) {
    if (impl_ == nullptr) return false;
    return callPacketCallbacks(impl_, "OnPacket", type, packet);
}

bool ScriptEngine::onPacketIn(int type, const std::string& packet) {
    if (impl_ == nullptr) return false;
    bool blocked = callPacketCallbacks(impl_, "OnPacketRaw", type, packet);
    if (blocked) return true;
    return callPacketCallbacks(impl_, "OnPacket", type, packet);
}

bool ScriptEngine::available() const {
    return impl_ != nullptr;
}
