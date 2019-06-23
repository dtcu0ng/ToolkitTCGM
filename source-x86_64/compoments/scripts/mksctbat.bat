color 3f
title Shortcut Maker - Toolkit for Tencent Gaming Buddy
cls
@echo off
echo ///////////////////////////////////////////////////////////
echo /               Welcome to Shortcut Maker!                /
echo /  Using this to get the shortcut of your installed apps! /
echo /                    Version: 1.0                         /
echo /             Used NirCMD to get this possible!!          /
echo /               Press any key to continue!                /
echo /                      (c) CuongZ                         /
echo ///////////////////////////////////////////////////////////
pause
cls
@echo off
echo ////////////////////// Options //////////////////////
echo / (1) You have TCGM installed at C:\Program Files\  /
echo / (2) You have TCGM installed at another location   /
echo / (3) Get back to the selector                      /
echo /////////////////////////////////////////////////////
@ECHO OFF
CHOICE /N /C:123 /M "Enter your select here:"%1
IF ERRORLEVEL ==3 GOTO BACKSLT
IF ERRORLEVEL ==2 GOTO CUSTOM
IF ERRORLEVEL ==1 GOTO DEFAULT
goto BACKSLT
:BACKSLT
cd compoments\scripts\
call selector.bat
:DEFAULT
cls
set pkg_name= Default
@echo off
echo Please enter your package name! 
set /p pkg_name=
set sct_name= Default
@echo off
echo Please enter your shortcut name! 
set /p sct_name=
cd ..
mksct.exe shortcut "C:\Program Files\txgameassistant\AppMarket\AppMarket.exe" "AppShortcuts/" "%sct_name%" "-startpkg %pkg_name%"
@echo off
echo Created shortcut %sct_name% for package %pkg_name% . Please find shortcut at folder compoments\AppShortcuts and copy wherever you want.
pause
cd scripts
call selector.bat
:CUSTOM
cls
set work_dir= Default
@echo off
echo Please provide a link to "txgameassistant" folder.
set /p work_dir=
set pkg_name= Default
@echo off
echo Please enter your package name! 
set /p pkg_name=
set sct_name= Default
@echo off
echo Please enter your shortcut name! 
set /p sct_name=
cd ..
mksct.exe shortcut "%work_dir%\AppMarket\AppMarket.exe" "AppShortcuts/" "%appname%" "-startpkg %pkg_name%"
@echo off
echo Created shortcut %sct_name% for package %pkg_name% at work folder %work_dir%\AppMarket\AppMarket.exe . Please find shortcut at folder compoments\AppShortcuts and copy wherever you want.
pause
cd scripts
call selector.bat
