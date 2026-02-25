-- GTProxy 5.32 script pack (runtime agnostic)
-- Load this from your proxy engine that exposes: AddCallback, SendPacket, OnConsoleMessage

local Runtime = dofile("gtproxy-532/scripts/runtime.lua")

local function loadConfig(path)
    local ok, data = pcall(function()
        local f = assert(io.open(path, "rb"))
        local content = f:read("*a")
        f:close()
        return content
    end)

    if not ok then
        return nil, data
    end

    -- Minimal JSON decode expectation for host app:
    -- replace this with host-native JSON parser if available.
    local cjson = _G.cjson or _G.json
    if not cjson then
        return nil, "JSON parser not found (cjson/json)"
    end

    local parsed = cjson.decode(data)
    return parsed
end

local cfg, err = loadConfig("gtproxy-532/config/server_532.json")
if not cfg then
    Runtime.log("Config load failed: " .. tostring(err))
    return
end

Runtime.config = cfg
Runtime.state.flags.packet_log = cfg.features.enable_packet_log and true or false

local registerCommands = dofile("gtproxy-532/scripts/commands.lua")
registerCommands(Runtime)

local registerHooks = dofile("gtproxy-532/scripts/hooks.lua")
registerHooks(Runtime)

function gtproxy532_on_packet_out(type, packet)
    for _, fn in ipairs(Runtime.hooks.onPacketOut) do
        local ok, ret = pcall(fn, type, packet)
        if ok and ret == true then
            return true
        end
    end
end

function gtproxy532_on_packet_in(type, packet)
    for _, fn in ipairs(Runtime.hooks.onPacketIn) do
        local ok, ret = pcall(fn, type, packet)
        if ok and ret == true then
            return true
        end
    end
end

function gtproxy532_on_varlist(v)
    for _, fn in ipairs(Runtime.hooks.onVarlist) do
        local ok, ret = pcall(fn, v)
        if ok and ret == true then
            return true
        end
    end
end

if AddCallback then
    AddCallback("gtproxy532_packet_out", "OnPacket", gtproxy532_on_packet_out)
    AddCallback("gtproxy532_packet_in", "OnPacketRaw", gtproxy532_on_packet_in)
    AddCallback("gtproxy532_varlist", "OnVarlist", gtproxy532_on_varlist)
end

Runtime.log("GTProxy 5.32 script pack loaded")
Runtime.log("Upstream: " .. cfg.upstream.host .. ":" .. cfg.upstream.port)
