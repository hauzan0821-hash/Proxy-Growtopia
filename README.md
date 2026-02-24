# Proxy-Growtopia

Sekarang project sudah lengkap untuk kebutuhan kamu:
- ada **`proxy.sln`** (biar run dari Visual Studio, bukan CMD auto-close)
- ada login **KeyAuth tester plan**
- setelah login sukses, langsung jalan **TCP proxy**

## File penting
- `proxy.sln` → solusi Visual Studio
- `Proxy/Program.cs` → entry point (KeyAuth + start proxy)
- `Proxy/src/Services/KeyAuthService.cs` → request API KeyAuth (`init` + `license`)
- `Proxy/src/Services/ProxyServer.cs` → server proxy TCP
- `Proxy/appsettings.json` → konfigurasi KeyAuth + proxy

## Setup cepat
1. Buka `proxy.sln` di Visual Studio.
2. Edit `Proxy/appsettings.json`:
   - `KeyAuth.AppName`, `KeyAuth.OwnerId`, `KeyAuth.Version`
   - `KeyAuth.Secret` (opsional, isi jika app kamu minta secret)
   - `Proxy.ListenIp`, `Proxy.ListenPort`
   - `Proxy.TargetHost`, `Proxy.TargetPort`
3. Run project (F5 / Ctrl+F5).
4. Input license tester.
5. Kalau login sukses, proxy aktif.

## Catatan runtime
- Console tidak auto-close saat error; aplikasi akan minta ENTER.
- Saat proxy sedang jalan, tekan **Q** untuk stop.
