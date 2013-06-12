:: DVD/CD burning fix
:: Last updated 2013-06-12 by Doug Ferris
:: Coded because: Students were having issues copy pasting into DVD drives to burn using Windows 7
:: How to use: Put this script into the customers working folder (be it a USB/folder on H drive) and execute
@echo off
SET workingdir=%cd%
SET burntemp="H:\burntemp"
echo Making Temporary Burn Folder
mkdir %burntemp%
echo Copying to Temp folder
xcopy %workingdir%\* %burntemp%
del %burntemp%\burn.bat
echo Burning Now
xcopy %burntemp%\* H:\lolwut
echo Burnt.
echo Deleting temporary files.
del /f /q %burntemp%\*
rd /s/q %burntemp%
pause
exit