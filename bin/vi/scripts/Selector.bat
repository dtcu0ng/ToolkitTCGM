color 3f
cls
@echo off	
echo Killing current ADB server...	
adb kill-server	
@echo off	
echo Force closing ADB interface...	
taskkill /F /IM adb.exe	
cls	
title Bang chon chuc nang - Toolkit cho Gameloop
cd bin/vi/scripts/	
cls	
@ECHO off	
echo Bang chon chuc nang - Toolkit cho Gameloop
echo Ngay build: 28/01/2020  7:30PM	
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_Official
echo[	
echo ---------------------------------------------	
echo[	
echo (1): Trinh cai dat goi	
echo (2): Kiem tra ten goi ( Package Name Check )	
echo (3): Thoat	
echo              (c) dtcu0ng	
echo[	
echo ---------------------------------------------	
@ECHO OFF	
echo[	
CHOICE /N /C:1234 /M "Nhap lua chon cua ban tai day:"%1	
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
exit 
