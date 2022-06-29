set arg1=%1%
shift
flex %arg1%.y
bison -d %arg2%.l
gcc %arg1%.tab.c lex.yy.c -lfl 
.\a.exe