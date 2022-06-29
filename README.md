# CompilerRRRR
編譯器器器器器

A "calculator" implemented with the lex and bison.

目前我只做出了計算機(試做)

而且除0的時候還有BUG。

不只這個BUG。大家可以幫忙DEBUG。TAT

如果有更好的project點子可以commit上來唷╰(*°▽°*)╯

## Usage(on terminal)：
flex calculator_trail.l
it should produces lex.yy.c

bison -d calculator_trail.y
it should produces calculator_trail.tab.h and calculator_trail.tab.c

gcc calculator_trail.tab.c lex.yy.c -lfl
it should produces a.exe

./a.exe
It starts to run the calculator.
you can type any Arithmetic expression on terminal.

example(omitted, this calculator still has BUGs.)
---

# Cheat Sheet(you can "copy and paste" on your terminal):
flex calculator_trail.l

bison -d calculator_trail.y

gcc calculator_trail.tab.c lex.yy.c -lfl

./a.exe