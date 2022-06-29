# CompilerRRRR
編譯器器器器器

目前我只做出了計算機(試做)

而且除0的時候還有BUG。

## Usage(on terminal)：
flex calculator_trail.l
it should produces lex.yy.c

bison -d calculator_trail.y
it should produces calculator_trail.tab.h and calculator_trail.tab.c

gcc calculator_trail.tab.c lex.yy.c -lfl
it should produces a.exe

./a.exe
it starts to run the calculator.

---

# Cheat Sheet(you can "copy and paste" on your terminal):
flex calculator_trail.l

bison -d calculator_trail.y

gcc calculator_trail.tab.c lex.yy.c -lfl