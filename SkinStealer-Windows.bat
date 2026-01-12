@echo off
setlocal

:: Ask for Minecraft username
set /p USERNAME=Enter Minecraft username: 

:: Check if empty
if "%USERNAME%"=="" (
    echo No username entered.
    pause
    exit /b
)

:: Download skin
echo Downloading skin for %USERNAME%...
curl -L -o "%USERNAME%_skin.png" "https://mc-heads.net/skin/%USERNAME%"

:: Check result
if exist "%USERNAME%_skin.png" (
    echo Skin saved as %USERNAME%_skin.png
) else (
    echo Failed to download skin. Username showing default or not found.
)

pause
endlocal

