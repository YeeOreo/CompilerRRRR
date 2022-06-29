![my badge](https://badgen.net/badge/status/success/green?icon=github)
<!--
Badge reference:
1. https://css-tricks.com/adding-custom-github-badges-to-your-repo (passed parameters in the url)
2. https://badgen.net/ (supported icons collection)

The way to color the font in GitHub README.md. as followed：
```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
-->
# CompilerRRRR
編譯器器器器器

This a final semester project of the course, Compiler.

# Requirements

This project use：

1. gcc version 4.6.1

2. flex version 2.5.4

3. bison(GNU bison) version 2.4.1

<details>

<summary>Simple installation tutorial(you can expand this tag)📖</summary>

## Simple installation tutorial 📖

For gcc, you can install wxDev-C++ version 7.4.2 to get this gcc from this:

> http://wxdsgn.sourceforge.net/

In website, choose the tab, "download"

In the tab page, "download", choose the download option, "wxDev-C++ Full Installer" to download.

Note that the installation could not including space.

After the installation completed, you need to set the environment variable.
                                                          
In System Variable, choose the Path option and insert Your installation location.

At last, you need to run wxDevC++ to get the linking library. (they will show up in the following steps)

First of all, wxDevC++ will ask you to set the First-Run Configuration, Choose the language you are using.

Second, tick the "Yes, I want to use this feature".

Other configuration can keep the default.

--- 

For Flex, you can install from this：

> http://gnuwin32.sourceforge.net/packages/flex.htm

In website, choose the download option, "Complete package, except sources" to download.

Note that the installation could not including space

---

For Bison, you can install from this：

> http://gnuwin32.sourceforge.net/packages/bison.htm

In website, choose the download option, "Complete package, except sources" to download.

The installation location should be identical to Flex's. 

Note that the installation could not installation space

After the installation completed, you need to set the environment variable.
                                                          
In System Variable, choose the Path option and insert Your installation location.

---

Copy Linking Library

The linking library will show up after you complete First-Run Configuration of wxDev-C++.

Copy the 3 files of the directory "lib" that under the Flex's and Bison's root location.

Paste in the directory MinGW32\lib that under the wxDev-C++'s root location.

---
Testing installation results

type the script as followed 

(Note that v is case-sensitive)
```
gcc -v
```
The version should be 4.6.1

The COLLECT_LTO_WRAPPER location should under the directory of wxDev-C++'s location.

(If not, may be the wrong version of gcc being caught)

```
flex -V
```
The version should be 2.5.4
```
bison -V
```
The version should be 2.4.1

---
</details>

# Introduction ⚡
A "calculator" implemented with the Lex and Bison(Yacc's GNU version).

This calculator including Arithmetic Expression which can have operations Such like：
1. Addition 
2. Subtraction
3. Multiplication
4. Division

Also support：
1. Modulus 
2. Round brackets

## API Functions 🗺：

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
```
flex calculator_trail.l
```
> It should produces lex.yy.c
```
bison -d Calculator.y
```
> It should produces Calculator.tab.h and Calculator.tab.c
```
gcc -o Calculator Calculator.tab.c lex.yy.c -lfl
```
> It should produces Calculator.exe
```
./Calculator.exe
```
> It starts to run the calculator.

> You can type any Arithmetic expression on terminal.

## Usage_2(on Windows Command Prompt)：

We create a windows batch file to simply the process of compiling and executing.
```
compile_and_run.bat Calculator
```
> It should produces Calculator.tab.h, Calculator.tab.c, lex.yy.c and Calculator.exe.

> Next it starts to run the calculator.

> You can type any Arithmetic expression on terminal.

# Examples 🖩
> (You can use Pure_input.txt to enter into Terminal to see the results and you can see the details of Pure_input from DEMO_input.txt)
---
![screenshot_1](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_1.png)
![screenshot_2](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_2.png)
![screenshot_3](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_3.png)
![screenshot_4](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_4.png)

Here are examples that will cause error.

When an error occurred, the calculator will be terminated.

![NG_screenshot_1](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_NG_1.png)
![NG_screenshot_2](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_NG_2.png)
![NG_screenshot_3](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_NG_3.png)
![NG_screenshot_4](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_NG_4.png)

Empty characters also provoke an error.

![NG_screenshot_5](https://github.com/YeeOreo/CompilerRRRR/blob/main/DEMO_screen/DEMO_screen_NG_5.png)

---

# Cheat Sheet(you can "copy and paste" on your Windows Command Prompt):
```
flex Calculator.l

bison -d Calculator.y

gcc Calculator.tab.c lex.yy.c -lfl

./Calculator.exe
```
