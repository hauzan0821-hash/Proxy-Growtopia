@echo off
setlocal

cd /d "%~dp0"

echo [INFO] Menjalankan Proxy dari folder: %cd%

dotnet run --project Proxy.csproj

if errorlevel 1 (
  echo.
  echo [ERROR] Gagal menjalankan proxy. Pastikan .NET 8 SDK sudah terinstall.
)

echo.
echo Tekan tombol apa saja untuk menutup jendela ini...
pause >nul
