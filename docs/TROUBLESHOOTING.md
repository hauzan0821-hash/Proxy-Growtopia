# Troubleshooting

## Console auto close
Gunakan `Proxy/start-proxy.bat` atau jalankan lewat Visual Studio `Ctrl+F5`.

## KeyAuth gagal init/login
- Cek konfigurasi di `Proxy/appsettings.json`.
- Pastikan license key tester valid.
- Pastikan data owner/app/version sesuai dashboard KeyAuth.

## Port tidak bisa dipakai
Ganti `Proxy.ListenPort` di `Proxy/appsettings.json`.
