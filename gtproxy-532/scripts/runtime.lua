local Runtime = {
    config = nil,
    state = {
        connected = false,
        peer = nil,
        session = {
            world = "",
            netid = -1,
            user = ""
        },
        flags = {
            packet_log = false
        }
    },
    commands = {},
    hooks = {
        onPacketIn = {},
        onPacketOut = {},
        onVarlist = {}
    }
}

function Runtime.log(msg)
    if OnConsoleMessage then
        OnConsoleMessage("`0[ `2GTProxy 5.32 `0] `9" .. tostring(msg))
    else
        print("[GTProxy 5.32] " .. tostring(msg))
    end
end

function Runtime.registerCommand(name, fn)
    Runtime.commands[name:lower()] = fn
end

function Runtime.registerHook(kind, fn)
    table.insert(Runtime.hooks[kind], fn)
end

function Runtime.handleCommand(raw)
    local prefix = Runtime.config.features.command_prefix or "/"
    if type(raw) ~= "string" or raw:sub(1, #prefix) ~= prefix then
        return false
    end

    local body = raw:sub(#prefix + 1)
    local parts = {}
    for p in body:gmatch("%S+") do
        table.insert(parts, p)
    end

    local name = (parts[1] or ""):lower()
    table.remove(parts, 1)

    local cmd = Runtime.commands[name]
    if not cmd then
        Runtime.log("Unknown local command: " .. name)
        return true
    end

    local ok, err = pcall(cmd, parts)
    if not ok then
        Runtime.log("Command error: " .. tostring(err))
    end
    return true
end

return Runtime
