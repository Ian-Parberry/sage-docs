:: Run doxygen in all folders by running the copy of Build.bat there..

@echo off

for %%d in (
  "0. Intro"
  "1. Pool End Game"
  "2. Shapes Library"
  "3. Collision Math Toy"
  "4. Pinball Game"
  "5. Ball and Spring Toy"
  "6. Box2D Render Library"
  "7. Box2D Bouncy Things Toy"
  "8. Box2D Joint Toy"
  "9. Box2D Cannon Game"
  "10. Box2D Cannon Game with Stars"
  "11. Box2D Blank Game"
  "12. Stroop Test Game"
  "13. Binary Counter Toy"
  "14. Cannon Lullaby Toy"
  "15. Bullet Physics Block Toy"
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
  

