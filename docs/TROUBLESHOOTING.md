# Troubleshooting

## CMD langsung ketutup
Gunakan `Proxy/start-proxy.bat` atau jalankan dari Visual Studio (`Ctrl+F5`).

## Login KeyAuth gagal
- Cek `AppName`, `OwnerId`, `Version`, dan `Secret`.
- Pastikan license key valid untuk tester plan.

## Port sudah dipakai
Ubah `Proxy.ListenPort` di `appsettings.json`.
