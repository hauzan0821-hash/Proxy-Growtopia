# Proxy-Growtopia

Repo ini saya rapikan: saya hapus file tambahan yang tidak penting/kurang jelas, jadi sekarang fokus ke file inti proxy + KeyAuth.

## File inti
- `proxy1.sln`
- `Proxy/Proxy.csproj`
- `Proxy/Program.cs`
- `Proxy/src/Services/KeyAuthService.cs`
- `Proxy/src/Services/ProxyServer.cs`
- `Proxy/src/Models/*`
- `Proxy/src/Utils/*`
- `Proxy/appsettings.json`
- `Proxy/appsettings.example.json`
- `Proxy/start-proxy.bat`
- `Proxy/build-release.bat`
- `.github/workflows/build-proxy.yml`

## Jalankan
1. Buka `proxy1.sln` di Visual Studio.
2. Edit `Proxy/appsettings.json` sesuai data KeyAuth kamu.
3. Run (F5/Ctrl+F5) atau jalankan `Proxy/start-proxy.bat`.
