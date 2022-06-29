%{
#include "example2.tab.h"
%}

%%

"+"   	{return ADD;}
"-"   	{return SUB;}
"*"   	{return MUL;}
"/"   	{return DIV;}
"|"   	{return ABS;}
"("   	{return LB; }
")"   	{return RB; }
"^"   	{return POW;}
[0-9]+ 	{yylval=atoi(yytext);return NUMBER;}
\n  	{return EOL;}
[ \t] 	{/*空白忽略*/}
. 	{printf("非法字符 %c\n",*yytext);}

%%
