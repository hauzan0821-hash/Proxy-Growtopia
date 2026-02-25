local function joinArgs(args, from)
    local out = {}
    for i = from or 1, #args do
        out[#out + 1] = args[i]
    end
    return table.concat(out, " ")
end

return function(Runtime)
    Runtime.registerCommand("help", function()
        Runtime.log("Commands: /help /proxyinfo /setname /setworld /packetlog /sendchat /sendraw")
    end)

    Runtime.registerCommand("proxyinfo", function()
        local u = Runtime.config.upstream
        local p = Runtime.config.proxy
        Runtime.log("Version 5.32 | Upstream: " .. u.host .. ":" .. u.port .. " | Listen: " .. p.listen_host .. ":" .. p.listen_port)
    end)

    Runtime.registerCommand("setname", function(args)
        Runtime.state.session.user = joinArgs(args, 1)
        Runtime.log("Session user set to: " .. Runtime.state.session.user)
    end)

    Runtime.registerCommand("setworld", function(args)
        Runtime.state.session.world = (args[1] or "")
        Runtime.log("Session world set to: " .. Runtime.state.session.world)
    end)

    Runtime.registerCommand("packetlog", function(args)
        local mode = (args[1] or ""):lower()
        if mode == "on" then
            Runtime.state.flags.packet_log = true
        elseif mode == "off" then
            Runtime.state.flags.packet_log = false
        else
            Runtime.state.flags.packet_log = not Runtime.state.flags.packet_log
        end
        Runtime.log("Packet log: " .. (Runtime.state.flags.packet_log and "ON" or "OFF"))
    end)

    Runtime.registerCommand("sendchat", function(args)
        local text = joinArgs(args, 1)
        if text == "" then
            Runtime.log("Usage: /sendchat <text>")
            return
        end

        if SendPacket then
            SendPacket(2, "action|input\n|text|" .. text)
            Runtime.log("Chat sent")
        else
            Runtime.log("SendPacket API not available in this runtime")
        end
    end)

    Runtime.registerCommand("sendraw", function(args)
        local pktType = tonumber(args[1] or "")
        if not pktType then
            Runtime.log("Usage: /sendraw <type> <payload>")
            return
        end

        local payload = joinArgs(args, 2)
        if SendPacket then
            SendPacket(pktType, payload)
            Runtime.log("Raw packet sent")
        else
            Runtime.log("SendPacket API not available in this runtime")
        end
    end)
end
