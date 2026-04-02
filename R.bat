@echo off
color 0a
for /f "tokens=4*" %%a in ('netsh interface show interface ^| findstr "Connected Dedicated"') do set INT=%%b
if "%INT%"=="" set INT=Ethernet
netsh interface ip set address name="%INT%" static 192.168.1.2 255.255.255.0 >nul 2>&1
if not exist "C:\Pindahan_D" mkdir "C:\Pindahan_D"
robocopy "\\192.168.1.1\DataD" "C:\Pindahan_D" /E /ZB /COPY:DAT /MT:32 /R:1 /W:1 /V /TEE /LOG:"R.log"
echo you're Hacked