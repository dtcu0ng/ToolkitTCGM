color 3f
cls
@echo off	
echo Killing current ADB server...	
adb kill-server	
@echo off	
echo Force closing ADB interface...	
taskkill /F /IM adb.exe
cls	
title Selector menu - Toolkit for Tencent Gaming Buddy	
cd bin/en/scripts/	
cls	
@ECHO off	
echo Function menu - Toolkit for TCGM	
echo Build date: 28/01/2020 7:30PM	
echo Source: https://github.com/CuongZ/ToolkitTCGM_Official
echo[	
echo -------------------------------------------	
echo[	
echo (1): Install package	
echo (2): Package Name Check	
echo (3): Exit	
echo              (c) dtcu0ng	
echo[	
echo -------------------------------------------	
@ECHO OFF	
echo[	
CHOICE /N /C:1234 /M "Enter your select here:"%1	
IF ERRORLEVEL ==3 GOTO EXIT	
IF ERRORLEVEL ==2 GOTO PKGCHECK	
IF ERRORLEVEL ==1 GOTO INSPKG	
GOTO exit	
:INSPKG	
call pkginstaller.bat	
:PKGCHECK	
call PKGCheck.bat	
:exit	
taskkill /F /IM adb.exe	
taskkill /F /IM Toolkit.exe	
exit 
