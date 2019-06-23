color 3f
title Package Installer - Toolkit for Tencent Gaming Buddy
cls
set appname= Default
@echo off
echo Please enter your app name! 
set /p appname=
@echo off
echo Now installing your app ( %appname%.apk )
cd ..
cd ..
.\compoments\adb install ./%appname%.apk
@echo off
echo Finished app install ! Enjoy your app !
pause
cd compoments\scripts\
call selector.bat
