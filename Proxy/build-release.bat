@echo off
setlocal

cd /d "%~dp0"

echo [INFO] Build release dimulai...
dotnet publish Proxy.csproj -c Release -r win-x64 --self-contained false /p:PublishSingleFile=true

if errorlevel 1 (
  echo.
  echo [ERROR] Build gagal.
  echo Tekan tombol apa saja untuk menutup...
  pause >nul
  exit /b 1
)

echo.
echo [OK] Build selesai. Hasil ada di:
echo %cd%\bin\Release\net8.0\win-x64\publish

echo.
echo Tekan tombol apa saja untuk menutup...
pause >nul
