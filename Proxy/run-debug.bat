@echo off
setlocal
cd /d "%~dp0"

echo [INFO] Running Debug build...
dotnet run --project Proxy.csproj -c Debug

echo.
echo Tekan tombol apa saja untuk menutup...
pause >nul
