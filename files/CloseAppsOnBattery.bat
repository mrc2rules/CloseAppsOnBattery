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
		::Productivity
		taskkill /IM spotify.exe /F
		taskkill /IM teams.exe /F
		taskkill /IM zoom.exe /F
		taskkill /IM onedrive.exe /F
		taskkill /IM discord.exe /F
		::Gaming
        taskkill /IM steam.exe /F
		taskkill /IM epicgameslauncher.exe /F
		taskkill /IM EADesktop.exe /F
		taskkill /IM EALauncher.exe /F
		taskkill /IM EABackgroundService.exe /F
		taskkill /FI "IMAGENAME eq NVIDIA Broadcast.exe" /F
		taskkill /IM riotclientservices.exe /F

		exit
    )
