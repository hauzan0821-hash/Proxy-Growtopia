# ENet Growtopia Proxy (Build-ready + KeyAuth + Lua)

Ini versi yang sudah disiapkan supaya kamu tinggal build jadi aplikasi, lalu ubah command/fitur dari `proxy.lua`.

## Default target (sesuai request)
- Upstream Host: `213.179.209.175`
- Upstream Port: `17049`
- Listen Host: `0.0.0.0`
- Listen Port: `17049`

## Fitur utama
- ENet forwarding 2 arah (client <-> server)
- Multi-client mapping
- Optional Lua bridge (`proxy.lua`-style callbacks)
- **KeyAuth startup gate**: saat aplikasi jalan, user wajib input username dan diverifikasi ke endpoint KeyAuth sebelum proxy start.

## KeyAuth default (sesuai data yang kamu kasih)
- owner id: `KRZWWBf8dt`
- secret id: `8c17983afece3659d7c8d9b6bf0b3e778a75df88a74e6173cc2819dcbd5e5cef`

## Struktur penting
- `include/keyauth_client.hpp` / `src/keyauth_client.cpp` -> request verifikasi username KeyAuth
- `include/script_engine.hpp` / `src/script_engine_lua.cpp` -> bridge runtime script `proxy.lua`
- `src/proxy_server.cpp` -> loop forwarding ENet + hook script
- `src/main.cpp` -> CLI + KeyAuth prompt gate
- `tools/build_linux.sh` / `tools/build_windows_mingw.bat` -> build helper

## Build dependency
- C++17 compiler
- CMake
- `libenet` (pkg-config: `libenet`)
- `libcurl` (untuk KeyAuth)
- optional: Lua dev package (untuk script engine)

## Build
Linux:
```bash
cd enet-proxy
./tools/build_linux.sh
```

Windows MinGW:
```bat
cd enet-proxy
tools\build_windows_mingw.bat
```

## Run
```bash
./build/gt_enet_proxy \
  --listen-host 0.0.0.0 \
  --listen-port 17049 \
  --upstream-host 213.179.209.175 \
  --upstream-port 17049 \
  --lua-script ../proxy.lua
```

Saat startup, aplikasi akan prompt:
```text
[KeyAuth] Username:
```
Kalau username tidak valid menurut response endpoint KeyAuth, aplikasi tidak lanjut.

## CLI opsional
- `--no-lua`
- `--lua-script <file>`
- `--no-keyauth`
- `--keyauth-url <url>`
- `--keyauth-owner <id>`
- `--keyauth-secret <secret>`
- `--keyauth-app <name>`
- `--quiet`
