@echo off

:: Set arguments
set function=%~1
set argument1=%~2
set argument2=%~3
set argument3=%~4

:: Call function
call :%function% %argument1% %argument2% %argument3% %argument4%

:: Exist this batch file.
exit /b

::=============================
:: Functions are defined below.
::=============================

::* Log X new, empty lines, where X is the number passed in.
:LogEmptyLines
(for /l %%n in (1, 1, %~1) do ( 
    echo.
))
goto:eof

::* Adds two numbers, and logs the result.
:AddNumbers
set /a result=%~1 + %~2
echo %result%
goto:eof