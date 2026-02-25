@echo off
setlocal
cd /d "%~dp0"

lua proxy.lua

echo.
echo Tekan tombol apa saja untuk menutup...
pause >nul
