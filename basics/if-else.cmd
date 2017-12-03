@echo off

set a=test
set d=test
set b=Hello

:: Remember variables must not be reffered with %% when using "is not defined".
:: AND OR && || cannot be used, but multiple ifs on one line is possible.
if defined a if %a% == test (
    echo var a's value is %a%!
)

:: The if and else must be on the same line.
if 1==2 (echo Whaat?) else (echo As expected!)

:: Check if a file exists.
if exist C:\set2.txt (echo File exists) else (echo Doesn't exist.)

:: Error code 0 means success.
:: Error code 1 means error.
:: if errorlevel neq n somecommand

:: End of file.
echo.
echo.
