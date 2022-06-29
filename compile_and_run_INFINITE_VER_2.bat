setlocal
set arg1=calculator_trail
shift
flex %arg1%.l
bison -d %arg1%.y
gcc %arg1%.tab.c lex.yy.c -lfl 
@echo off
cls
:start
.\Calculator.exe
set choice=
set /p choice="Do you want to restart? Press 'y' and enter for Yes: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start
