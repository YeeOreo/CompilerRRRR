%{
   /* Declarations section */
   /* C stuff(Headers, declarations, variables, etc.) */
  #include<stdio.h>
  #include "geeks_test.tab.h"  
  extern int yylval;
%}
/* Definitions section */
/* Regular expressions*/

/* Rule Section */
/* token specifications */
%%
[0-9]+ {
          yylval=atoi(yytext);
          return NUMBER;
       }
[\t] ;
  
[\n] return 0;
  
. return yytext[0];
  
%%
/* User subroutines section */ 
/* C functions (can be main or others) */
int yywrap()
{
 return 1;
}