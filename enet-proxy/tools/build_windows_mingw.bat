@echo off
set ROOT_DIR=%~dp0..
set BUILD_DIR=%ROOT_DIR%\build

cmake -S "%ROOT_DIR%" -B "%BUILD_DIR%" -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release
if errorlevel 1 exit /b 1

cmake --build "%BUILD_DIR%" -j
if errorlevel 1 exit /b 1

echo Built: %BUILD_DIR%\gt_enet_proxy.exe
