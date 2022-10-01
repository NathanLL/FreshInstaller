@echo off
# basic things
:home
title Fresh Installer
chcp 65001
color a
cls
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" echo Windows 10
if "%version%" == "6.3" echo Windows 8.1
if "%version%" == "6.2" echo Windows 8.
if "%version%" == "6.1" echo Windows 7.
if "%version%" == "6.0" echo Windows Vista.
echo.
echo.
rem etc etc
endlocal
color a
echo ███████╗██████╗ ███████╗███████╗██╗  ██╗    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
echo ██╔════╝██╔══██╗██╔════╝██╔════╝██║  ██║    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
echo █████╗  ██████╔╝█████╗  ███████╗███████║    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
echo ██╔══╝  ██╔══██╗██╔══╝  ╚════██║██╔══██║    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
echo ██║     ██║  ██║███████╗███████║██║  ██║    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
echo.
echo.
echo Hi, Welcome To fresh Installer, press a number between 1 and to select ur menu.
echo [1] Browsers                                                [2] Games Clients
echo [3] UWP Apps                                                [4] Windows Must Have
echo [5] Cracks (windows and random apps)
set /p start= Select Mode:
if %start% == 1 goto browsers 
if %start% == 2 goto gameclient 
if %start% == 3 goto microsoftappscheck 
if %start% == 4 goto windowsthings 
if %start% == 5 goto cracks 


:browsers
cls
echo [1] Google Chrome                                           [2] Brave
echo [3] Opera GX                                                [4] Opera
echo [5] Microsoft Edge
set /p browsers= Select Mode:
if %browsers% == 1 goto chrome 
if %browsers% == 2 goto Brave
if %browsers% == 3 goto OperaGX
if %browsers% == 4 goto Opera
if %browsers% == 5 goto MicrosoftEdge
if %browsers% == 0 goto home

#-----------------------------------BROWSERS WGET--------------------------------
:chrome
cd C:\FreshInstaller
wget https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BD39F9839-4CD2-0CE0-1858-EAE3AE608CAF%7D%26lang%3Den%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/chrome/install/ChromeStandaloneSetup64.exe
start ChromeSetup.exe
goto home
:Brave
wget https://referrals.brave.com/latest/BraveBrowserSetup.exe
start BraveBrowserSetup.exe
goto home

:OperaGX
wget https://net.geo.opera.com/opera_gx/stable/windows?utm_tryagain=yes&utm_source=search.brave.com&utm_medium=roc&utm_campaign=(none)&utm_content=%2F&http_referrer=https%3A%2F%2Fsearch.brave.com%2F&utm_site=opera_com&&utm_lastpage=opera.com/gx&dl_token=23333865
start OperaGXSetup.exe
goto home

:Opera

:MicrosoftEdge



#---------------------------------CRACKS----------------------------------------
:cracks
cls
echo [1] Windows / Office Crack                                      [2] Random Apps

set /p cracks= Select Mode:
if %cracks% == 1 goto windows
if %cracks% == 2 goto office
if %cracks% == 3 goto randomapps
if %cracks% == 0 goto home

:windows
cls
set /p windows= Are u sure u wanna crack windows (Y/N)
if %windows% == Y goto windows2
if %windows% == N goto home

:windows2
start crackwin.cmd
exit




:office

:randomapps

:microsoftappscheck
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto microsoftapps
if "%version%" == "6.3" goto microsoftappsfalse
if "%version%" == "6.2" goto microsoftappsfalse
if "%version%" == "6.1" goto microsoftappsfalse
if "%version%" == "6.0" goto microsoftappsfalse

:microsoftapps

:microsoftappsfalse
echo UWP Apps are for Windows 10 Only !
echo Please Press "Enter" to continue
pause >nul
goto home







pause >nul
