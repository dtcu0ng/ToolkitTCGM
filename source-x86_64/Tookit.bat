color 3f
title Tookit for Tencent Gaming Buddy - Version 1.0
mode 150,50
@echo off
echo Killing current ADB server...
.\compoments\adb kill-server
@echo off
echo Force closing ADB interface...
taskkill /F /IM adb.exe
echo Force closing NirCMD
taskkill /F /IM nircmd.exe
taskkill /F /IM mksct.exe
taskkill /F /IM nircmdc.exe
cls
@echo off
echo  ////////////////////// Tookit for Tencent Gaming Buddy //////////////////////
echo // (c) Made by CuongZ. Version 0.8                                           //
echo // Github : https://github.com/CuongZ                                        //
echo // Facebook : https://facebook.com/dtcuong0109                               //
echo // Press any key to start!                                                   //
echo  /////////////////////////////////////////////////////////////////////////////
pause
cls
@echo off
echo First, you need make sure you've enable developer setting and USB debugging like in this video: https://youtu.be/ksQB_eniDYU
pause
cls
@echo off
echo Make sure you have downloaded APK to install ! And put it in the same location the file Tookit.bat
pause
cls
@echo off
echo Now you can see your emulator with named ' emulator5554 emulator '?
@echo off
echo If it not displayed, please check the step above again. If it displayed, press any key to continue.
.\compoments\adb kill-server
.\compoments\adb devices
pause
cls
:begin 
cd compoments\scripts\
call selector.bat