color 3f
title Self-check Plugin
cls
@echo off
echo Self-check Plugin
echo Build date: 25/05/2021
echo Version: 3.7
echo Source: https://githubcom/dtcu0ng/ToolkitTCGM	
echo Welcome to ToolkitTCGM (discontiuned project)
echo Select your language:
echo 1. English
echo 2. Vietnamese / Tieng Viet
echo 3. Exit
echo[	
CHOICE /N /C:123 /M "Enter your select here:"%1
IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO VIE
IF ERRORLEVEL ==1 GOTO ENG
GOTO EXIT
:ENG
call bin\en\scripts\Selector.bat
:VIE
call bin\vi\scripts\Selector.bat
:EXIT
taskkill /F /IM adb.exe
exit
