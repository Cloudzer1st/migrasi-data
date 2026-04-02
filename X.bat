@echo off
for /f "tokens=4*" %%a in ('netsh interface show interface ^| findstr "Connected Dedicated"') do set INT=%%b
if "%INT%"=="" set INT=Ethernet
netsh interface ip set address name="%INT%" source=dhcp >nul 2>&1
net share DataD /delete /y >nul 2>&1
echo you're Hacked