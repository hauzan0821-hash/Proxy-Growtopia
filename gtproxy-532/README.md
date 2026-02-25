# GTProxy 5.32 Script Pack (Template)

Template file baru yang kamu minta: tinggal kamu tempel ke aplikasi/proxy engine kamu, lalu ubah command sesuka kamu.

## Target server (sesuai request)
- Server: `213.179.209.175`
- Port: `17049`

Disimpan di: `config/server_532.json`.

## Struktur
- `config/server_532.json` -> target upstream + setting proxy
- `scripts/main.lua` -> entrypoint script
- `scripts/runtime.lua` -> state + command router
- `scripts/commands.lua` -> semua command local (mudah ubah)
- `scripts/hooks.lua` -> packet/varlist hook

## Cara pakai cepat
1. Pastikan engine kamu expose API minimal:
   - `AddCallback(name, event, fn)`
   - `SendPacket(type, payload)`
   - `OnConsoleMessage(text)`
2. Load `scripts/main.lua` dari host aplikasi kamu.
3. Sesuaikan callback event name kalau runtime kamu beda (`OnPacketRaw`, dll).

## Command bawaan
- `/help`
- `/proxyinfo`
- `/setname <name>`
- `/setworld <world>`
- `/packetlog [on|off]`
- `/sendchat <text>`
- `/sendraw <type> <payload>`

## Kenapa model ini
- Kamu minta "buat file baru" dan bisa langsung lanjut sendiri.
- Jadi saya pecah modular biar gampang kamu expand jadi banyak file seperti style GTProxy.
