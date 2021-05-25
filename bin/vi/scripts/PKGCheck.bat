color 3f
title Kiem tra ten goi ( Package Name Check ) - Toolkit cho Tencent Gaming Buddy
cls
@ECHO off
echo Kiem tra ten goi ( Package Name Check ) - Toolkit cho Tencent Gaming Buddy
echo Ngay build: 28/01/2020
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_Official
echo[
echo -------------------------------------------
echo[
echo        An phim bat ky de tiep tuc!
echo              (c) dtcu0ng
echo[
echo -------------------------------------------
pause
cls
@echo off
echo Kiem tra ten goi ( Package Name ) - Toolkit cho Tencent Gaming Buddy
echo Ngay build: 19/07/2019  9:12PM
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_Official
echo -----------------------------------------------------------
echo Ban ghi hoat dong:
echo[
echo Ten goi cua cac ung dung da duoc cai dat ben trong gia lap:
cd ..
cd ..
cd ..
bin\adb shell pm list package -3
@echo off
echo -----------------------------------------------------------
echo[
pause
call Selector.bat