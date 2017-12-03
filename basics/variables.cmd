@echo off 

:: Recieving input from the console.
echo First argument was: %1

echo.
echo =====================
echo.

:: Setting a varible
set my-age=%2
echo Second argument was %my-age%. That's my age!

echo.
echo =====================
echo.

:: Adding numbers
set /A a=5 
set /A b=10 
set /A c=%a% + %b% 
echo %a% plus %b% equals %c%

echo.
echo =====================
echo.

:: Setting a local scoped variable
set globalvar=2
SETLOCAL
set var=10
set /A var=%var% * 5
echo 10 times 5 equals: %var%
ENDLOCAL
echo I'm trying to acces a local variables outside of scope: %var%
echo But I can access the global var set outside of setlocal: %globalvar% 

:: End of file
echo.
echo.