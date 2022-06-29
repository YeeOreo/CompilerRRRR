<!--
Badge reference:
1. https://css-tricks.com/adding-custom-github-badges-to-your-repo (passed parameters in the url)
2. https://badgen.net/ (supported icons collection)
-->
![my badge](https://badgen.net/badge/status/success/green?icon=github)
# CompilerRRRR
編譯器器器器器

# Introduction
A "calculator" implemented with the Lex and Bison(Yacc's GNU version).

This calculator including Arithmetic Expression which can have operations Such like：
1. Addition 
2. Subtraction
3. Multiplication
4. Division

Also support：
1. Modulus 
2. Round brackets

API Functions：

> Basic Mathematical Functions

\+

\-

\*

/

%

> Constant

pi：3.1415926

> Trigonometric functions：

sin()

cos()

tan()

> Floor and ceiling functions

ceil() = uGuass

uGuass() = ceil()

floor() = lGuass()

lGuass() = floor()

> Other Mathematical Functions

abs()：Absolute value.

sqrt()：Square root.

log()：The logarithm of X to base 10.

ln()：The logarithm of X to base 2.

exp()：Natural logarithm.

## Usage(on Windows Command Prompt)：
flex calculator_trail.l

> It should produces lex.yy.c

bison -d Calculator.y

> It should produces Calculator.tab.h and Calculator.tab.c

gcc -o Calculator Calculator.tab.c lex.yy.c -lfl

> It should produces Calculator.exe

./gcc -o Calculator.exe

> It starts to run the calculator.

> You can type any Arithmetic expression on terminal.

## Usage_2(on Windows Command Prompt)：
compile_and_run.bat Calculator

> It should produces Calculator.tab.h, Calculator.tab.c, lex.yy.c and Calculator.exe.

> Next it starts to run the calculator.

> You can type any Arithmetic expression on terminal.

example(omitted, this calculator still has BUGs.)
---

# Cheat Sheet(you can "copy and paste" on your Windows Command Prompt):
flex Calculator.l

bison -d Calculator.y

gcc Calculator.tab.c lex.yy.c -lfl

./Calculator.exe
