:: Run doxygen.

@echo off

for %%I in (.) do set CurrDirName=%%~nxI
<nul set /p =Building %CurrDirName%: 
doxygen >NUL 2>&1
if !ERRORLEVEL!==0 (echo succeeded) else (echo succeeded)

:: Wait for user to hit any key in case they ran this from the explorer.
:: But not if the first parameter is :nopause".

if "%1"=="nopause" goto exit
  pause
:exit
  

