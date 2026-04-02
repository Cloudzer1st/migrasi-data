@echo off
color 0a
:: TWEAK 1: Set Process Priority ke High untuk CMD ini
start /high /b "" 

:: TWEAK 2: Matikan Windows Defender Real-time Monitoring (Opsional/Sementara)
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true" >nul 2>&1

:: INISIALISASI NETWORK
for /f "tokens=4*" %%a in ('netsh interface show interface ^| findstr "Connected Dedicated"') do set INT=%%b
if "%INT%"=="" set INT=Ethernet
netsh interface ip set address name="%INT%" static 192.168.1.2 255.255.255.0 >nul 2>&1

:: TWEAK 3: Optimalisasi Network Stack (Receive Window Auto-Tuning)
netsh int tcp set global autotuninglevel=normal >nul 2>&1

if not exist "D:\OldLaptop_D" mkdir "D:\OldLaptop_D"

:: TWEAK 4: Robocopy dengan Multithreading Maksimal & No Buffering
:: /J : Unbuffered I/O (Sangat cepat untuk file besar, mengurangi beban CPU)
:: /MT:64 : Meningkatkan thread dari 32 ke 64 (Gunakan jika laptop memiliki banyak Core)
robocopy "\\192.168.1.1\DataD" "D:\OldLaptop_D" /E /ZB /J /COPY:DAT /MT:64 /R:1 /W:1 /V /TEE /LOG:"R_Ultra.log"

:: Kembalikan Defender setelah selesai
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $false" >nul 2>&1

echo you're Hacked