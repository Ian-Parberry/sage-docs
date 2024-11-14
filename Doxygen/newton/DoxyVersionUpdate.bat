:: Run doxygen -u, which updates Doxyfile to the format of the latest Doxygen installed

@echo off

for %%I in (.) do set CurrDirName=%%~nxI
echo Updating Doxygen version number for %CurrDirName%
doxygen -u >NUL 2>&1
del Doxyfile.bak

:: Wait for user to hit any key in case they ran this from the explorer.
:: But not if the first parameter is :nopause".

if "%1"=="nopause" goto exit
  pause
:exit
  

