-- Simple TCP forwarder for environments using LuaSocket.
-- Run: lua proxy.lua

local ok, socket = pcall(require, "socket")
if not ok then
  print("[ERROR] LuaSocket belum terpasang. Install dulu module 'socket'.")
  io.write("Tekan ENTER untuk keluar...")
  io.read("*l")
  os.exit(1)
end

local config = dofile("config.lua")
local listen_host = config.proxy.listen_host
local listen_port = config.proxy.listen_port
local target_host = config.proxy.target_host
local target_port = config.proxy.target_port

local server, err = socket.bind(listen_host, listen_port)
if not server then
  print("[ERROR] Gagal bind " .. listen_host .. ":" .. listen_port .. " => " .. tostring(err))
  io.write("Tekan ENTER untuk keluar...")
  io.read("*l")
  os.exit(1)
end

server:settimeout(0)
print("[Lua Proxy] Listening on " .. listen_host .. ":" .. listen_port)
print("[Lua Proxy] Forwarding to " .. target_host .. ":" .. target_port)
print("[Lua Proxy] Tekan Ctrl+C untuk berhenti")

local clients = {}

local function close_pair(i)
  local pair = clients[i]
  if pair then
    pcall(function() pair.client:close() end)
    pcall(function() pair.target:close() end)
    clients[i] = nil
  end
end

while true do
  local client = server:accept()
  if client then
    client:settimeout(0)
    local target = socket.tcp()
    target:settimeout(0)
    local connected, conn_err = target:connect(target_host, target_port)

    if not connected and conn_err ~= "timeout" then
      print("[Lua Proxy] Gagal connect target: " .. tostring(conn_err))
      client:close()
      target:close()
    else
      table.insert(clients, { client = client, target = target })
    end
  end

  for i = #clients, 1, -1 do
    local pair = clients[i]

    local cdata, cerr = pair.client:receive(8192)
    if cdata and #cdata > 0 then
      local ok_send = pair.target:send(cdata)
      if not ok_send then close_pair(i) end
    elseif cerr == "closed" then
      close_pair(i)
    end

    if clients[i] then
      local tdata, terr = pair.target:receive(8192)
      if tdata and #tdata > 0 then
        local ok_send = pair.client:send(tdata)
        if not ok_send then close_pair(i) end
      elseif terr == "closed" then
        close_pair(i)
      end
    end
  end

  socket.sleep(0.01)
end
