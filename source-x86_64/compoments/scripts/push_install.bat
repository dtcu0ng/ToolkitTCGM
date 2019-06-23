color 3f
title Package Pusher - Toolkit for Tencent Gaming Buddy
ECHO Preparing...
cd ..
cd ..
set pkg_filename= Default
cls
@echo off
echo Please enter your app name! 
set /p large_name=
@echo off
echo Now pushing your app ( %large_name%.apk )...
.\compoments\adb push ./%large_name%.apk /storage/emulated/0
cls
@echo off
echo Pushed app package to emulator storage. Press 1 if you haven't install File Manager
echo If you have File Manager installed, goto Internal Storage to install package and press 2 to back the selector menu
echo Press 3 to exit the script
@ECHO OFF
CHOICE /N /C:123 /M "Enter your select here:"%1
IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO BACKSLT
IF ERRORLEVEL ==1 GOTO INSFILEMGR
goto Exit
:INSFILEMGR
@echo off
echo Installing File Manager... 
.\compoments\adb install filemgr.apk
cls
@echo off
echo Installed File Manager, goto Internal Storage to install package. Press anykey to go back the selector.
pause
cd compoments\scripts\
call selector.bat
:BACKSLT
cd compoments\scripts\
call selector.bat
:EXIT
taskkill /F /IM adb.exe
exit