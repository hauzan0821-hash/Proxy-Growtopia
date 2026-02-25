return function(Runtime)
    Runtime.registerHook("onPacketOut", function(type, packet)
        if Runtime.state.flags.packet_log then
            Runtime.log("OUT type=" .. tostring(type) .. " len=" .. tostring(#tostring(packet)))
        end

        if tostring(packet):find("action|input") then
            local text = tostring(packet):gsub("action|input\n|text|", "")
            if Runtime.handleCommand(text) then
                return true
            end
        end
    end)

    Runtime.registerHook("onPacketIn", function(type, packet)
        if Runtime.state.flags.packet_log then
            Runtime.log("IN  type=" .. tostring(type) .. " len=" .. tostring(#tostring(packet)))
        end
    end)

    Runtime.registerHook("onVarlist", function(v)
        if v[0] == "OnSpawn" then
            Runtime.state.connected = true
        elseif v[0] == "OnConsoleMessage" and tostring(v[1]):find("Where would you like to go%?") then
            Runtime.state.session.world = ""
        end
    end)
end
