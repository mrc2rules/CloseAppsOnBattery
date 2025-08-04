@echo off
:: Check if on battery
for /f "tokens=2 delims==" %%A in ('wmic path Win32_Battery get BatteryStatus /value 2^>nul') do set status=%%A
if "%status%" == "1" goto :a
exit
:a 
call msgbox "Battery mode detected.\nClose background apps?"  "4+64" "Battery Mode"
if errorlevel = 7 (
        exit
    ) else (
        taskkill /IM steam.exe /F
		taskkill /IM discord.exe /F
		taskkill /IM epicgameslauncher.exe /F
		taskkill /FI "IMAGENAME eq NVIDIA Broadcast.exe" /F
		exit
    )
