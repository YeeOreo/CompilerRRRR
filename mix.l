%{
    int yywrap();
    #include<stdio.h>
    #define YYSTYPE double
    #include "calculator_trail.tab.h"  
%}

%%
/* a-z 跑计  */
[a-z]	{
            yylval = *yytext - 'a';
            return VARIABLE;
    	}
  
    	
/* 俱计or计 */ 
\.?[0-9]+|[0-9]+\.[0-9]*	{
            yylval = atof(yytext);
            return NUMBER;
    	}
       
/* 笲衡才 */
[-+()=/*^\n]	{return *yytext;}

/* àㄧ计 */
sin {
	return SIN;
    }

cos {
	return COS;
    }
    
tan {
	return TAN;
    }

/* フ砆┛菠 */
[ \t] ;
  
[\n] return 0;
  
. return yytext[0];
  
%%
/* User subroutines section */ 
/* C functions (can be main or others) */
int yywrap()
{return 1;}
