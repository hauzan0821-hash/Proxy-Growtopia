# Proxy-Growtopia

Sudah saya lengkapi supaya **semua file masuk ke GitHub + PR** (bukan cuma core code).

## Yang sekarang sudah ada
- Solution/project: `proxy1.sln`, `Proxy/Proxy.csproj`
- Core app: `Proxy/Program.cs`
- Services: `Proxy/src/Services/KeyAuthService.cs`, `Proxy/src/Services/ProxyServer.cs`
- Models: `Proxy/src/Models/*`
- Utils: `Proxy/src/Utils/*`
- Config: `Proxy/appsettings.json`, `Proxy/appsettings.example.json`, `Proxy/Properties/launchSettings.json`
- Scripts: `Proxy/start-proxy.bat`, `Proxy/build-release.bat`
- GitHub: `.github/workflows/build-proxy.yml`, `.github/workflows/release-zip.yml`
- Docs: `docs/FILES.md`, `docs/SETUP.md`, `docs/TROUBLESHOOTING.md`

Total tracked files sekarang jadi kisaran yang kamu ingat (**23-27**, saat ini 23 file tracked).

## Cara pakai cepat
1. Download ZIP dari GitHub.
2. Edit `Proxy/appsettings.json` (KeyAuth + target proxy).
3. Jalankan via Visual Studio (`proxy1.sln`) atau `Proxy/start-proxy.bat`.
