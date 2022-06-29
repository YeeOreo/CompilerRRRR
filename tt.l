%{
  #include<stdio.h>
  #include "tt.tab.h"  
  extern int yylval;
%}

%%
[0-9]+ {
          yylval=atoi(yytext);
          return NUMBER;
       }
[ \t] ;
  
[\n] return 0;
  
. return yytext[0];
  
%%
/* User subroutines section */ 
/* C functions (can be main or others) */
int yywrap()
{
 return 1;
}