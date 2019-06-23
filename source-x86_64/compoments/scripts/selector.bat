color 3f
title Selector menu - Tookit for Tencent Gaming Buddy
cls
@ECHO off
echo ///////////////////////////////////////////////////////////////////////////////
echo /                   Select the function you want:                             /
echo /                                                                             /
echo /(1): Install packages ( lower than 1GB )                                     /
echo /(2): Push large package to emulator and use Files Manager to install         /
echo /(3): Make shortcut to open app faster ( not stable )                         /
echo /(4): Exit                                                                    /
echo /                          (c) CuongZ                                         /
echo ///////////////////////////////////////////////////////////////////////////////
@ECHO OFF
CHOICE /N /C:1234 /M "Enter your select here:"%1
IF ERRORLEVEL ==4 GOTO EXIT
IF ERRORLEVEL ==3 GOTO MKSCT
IF ERRORLEVEL ==2 GOTO PUSH_LOAD
IF ERRORLEVEL ==1 GOTO SMALLAPK
GOTO exit
:MKSCT
call mksctbat.bat
:PUSH_LOAD
call push_install.bat
:SMALLAPK
call pkginstaller.bat
:exit
taskkill /F /IM adb.exe
taskkill /F /IM mksct.exe
exit