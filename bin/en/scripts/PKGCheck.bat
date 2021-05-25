color 3f
title Package Name Check - Toolkit for Tencent Gaming Buddy
cls
@ECHO off
echo Package Name Check - Toolkit for Tencent Gaming Buddy
echo Build date: 28/01/2020
echo Source: https://github.com/CuongZ/ToolkitTCGM_Official
echo[
echo -------------------------------------------
echo[
echo        Press any key to continue!
echo              (c) dtcu0ng
echo[
echo -------------------------------------------
pause
cls
@echo off
echo Package Name Check - Toolkit for Tencent Gaming Buddy
echo Build date: 28/01/2020
echo Source: https://github.com/CuongZ/ToolkitTCGM_Official
echo -----------------------------------------------------------
echo Log:
echo[
echo Package name(s) for app(s) installed on emulator:
cd ..
cd ..
cd ..
bin\adb shell pm list package -3
@echo off
echo -----------------------------------------------------------
echo[
pause
call Selector.bat