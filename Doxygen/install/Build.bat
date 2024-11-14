:: Run doxygen.

@echo off

for %%I in (.) do set CurrDirName=%%~nxI
echo Building documentation for %CurrDirName%
doxygen >NUL 2>&1

:: Wait for user to hit any key in case they ran this from the explorer.
:: But not if the first parameter is :nopause".

if "%1"=="nopause" goto exit
  pause
:exit
  

