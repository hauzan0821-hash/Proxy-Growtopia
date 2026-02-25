# Proxy-Growtopia

Sekarang semua file sudah disatukan supaya dari PR kamu bisa **langsung download** tanpa nambah file lagi.

## Status file
- Total file tracked: **25 files**
- Solution: `proxy1.sln`
- Project utama: `Proxy/Proxy.csproj`
- Build workflow: `.github/workflows/build-proxy.yml`
- Release zip workflow: `.github/workflows/release-zip.yml`

## Struktur penting
- `Proxy/Program.cs`
- `Proxy/src/Services/*`
- `Proxy/src/Models/*`
- `Proxy/src/Utils/*`
- `Proxy/appsettings.json`
- `Proxy/appsettings.example.json`
- `Proxy/start-proxy.bat`
- `Proxy/build-release.bat`
- `Proxy/run-debug.bat`
- `docs/*`

## Cara pakai
1. Download ZIP repo dari PR/GitHub.
2. Edit `Proxy/appsettings.json` sesuai akun KeyAuth.
3. Buka `proxy1.sln` di Visual Studio, lalu run.
4. Atau langsung pakai `Proxy/start-proxy.bat`.
