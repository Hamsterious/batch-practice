@echo off

:: Get functions
set functions=..\basics\functions.cmd

:: Call functions
call %functions% LogEmptyLines 1
call %functions% AddNumbers 5 10
call %functions% LogEmptyLines 2