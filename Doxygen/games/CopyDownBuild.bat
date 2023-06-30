@echo off

for %%d in (
  "0. Intro"
  "1. Top Down Game"
  "2. Top Down Tiled Game"
  "3. Tiled Platformer"
) do (
  <nul set /p =Copy to %%d: 
  copy Build.bat %%d /y  >NUL 2>&1
  if !ERRORLEVEL!==0 (echo succeeded) else (echo succeeded)
)

pause
  


