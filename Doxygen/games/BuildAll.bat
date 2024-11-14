:: Run doxygen in all folders by running the copy of Build.bat there.

@echo off

for %%d in (
  "0. Intro"
  "1. Top Down Game"
  "2. Top Down Tiled Game"
  "3. Tiled Platformer"
  "4. 2.5D Side Scroller"
) do (
  cd %%d 
  call Build.bat nopause
  cd ..
)


:: Wait for user to hit any key in case they ran this from the explorer.
:: But not if the first parameter is :nopause".

if "%1"=="nopause" goto exit
  pause
:exit
  

