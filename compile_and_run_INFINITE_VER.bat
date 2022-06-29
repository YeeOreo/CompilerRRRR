setlocal
set arg1=tt
shift
flex %arg1%.l
bison -d %arg1%.y
gcc %arg1%.tab.c lex.yy.c -lfl 
@echo off
cls
:start
.\Calculator.exe
goto start