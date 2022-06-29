set arg1=%1
shift
flex %arg1%.l
bison -d %arg1%.y
gcc -o Calculator %arg1%.tab.c lex.yy.c -lfl 
.\Calculator.exe
PAUSE