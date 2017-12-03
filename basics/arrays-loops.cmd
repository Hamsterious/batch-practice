@echo off

:: Creating an array and adding a new element.
set array[0]=Yo!
set array[1]=Yieh!

:: Getting and logging one value
setlocal enableDelayedExpansion
echo !array[%num%]!
endlocal

:: Looping an array where the length is unknown.
set /a x=0
:SymLoop
if defined array[%x%] (
    call echo %%array[%x%]%%
    set /a x+=1
    goto :SymLoop
)

:: Creating a list. Cannot have elements added.
set list=Hello world!

:: Looping the list
(for %%n in (%list%) do ( 
   echo %%n
))

