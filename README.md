# Proxy-Growtopia

Semua file penting sudah dimasukkan ke repository & PR, jadi kamu tinggal download lalu jalankan.

## Isi project
- `proxy.sln` → solusi Visual Studio
- `Proxy/Proxy.csproj` → project .NET 8
- `Proxy/Program.cs` → flow utama (KeyAuth login lalu start proxy)
- `Proxy/src/Services/KeyAuthService.cs` → request API KeyAuth (`init` + `license`)
- `Proxy/src/Services/ProxyServer.cs` → TCP forwarding server
- `Proxy/appsettings.json` → konfigurasi KeyAuth + proxy
- `Proxy/start-proxy.bat` → run cepat via double click (ada pause supaya tidak auto close)
- `Proxy/build-release.bat` → build release publish

## Cara download
1. Download ZIP repo dari GitHub.
2. Extract.
3. Buka `proxy.sln` pakai Visual Studio.
4. Edit `Proxy/appsettings.json` sesuai akun KeyAuth dan target proxy kamu.
5. Run project (F5/Ctrl+F5) atau double click `Proxy/start-proxy.bat`.

## Contoh konfigurasi
```json
{
  "KeyAuth": {
    "ApiUrl": "https://keyauth.win/api/1.2/",
    "AppName": "ISI_NAMA_APP_KEYAUTH",
    "OwnerId": "ISI_OWNER_ID_KEYAUTH",
    "Secret": "ISI_SECRET_APP_KEYAUTH_BILA_DIPERLUKAN",
    "Version": "1.0"
  },
  "Proxy": {
    "ListenIp": "127.0.0.1",
    "ListenPort": 17091,
    "TargetHost": "213.179.209.168",
    "TargetPort": 17091
  }
}
```

## Catatan
- Saat login/license gagal, console akan menunggu ENTER (tidak langsung ketutup).
- Saat proxy jalan, tekan **Q** untuk stop.
- Pastikan .NET 8 SDK terinstall jika menjalankan dari source.
