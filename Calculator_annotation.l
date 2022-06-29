%{
  /* Declarations section */
  /* C stuff(Headers, declarations, variables, etc.) */
  #define YYSTYPE double
  #include<stdio.h>
  #include "Calculator.tab.h" 
  
%}
/* Definitions section */
/* Regular expressions*/

/* Rule Section */
/* token specifications */
%%
\.?[0-9]+|[0-9]+\.[0-9]*	{
            yylval = atof(yytext);
            return NUMBER;
    	}
pi		{return PI;  }
sin 	{return SIN; }
cos 	{return COS; }
tan		{return TAN; }
sqrt 	{return SQRT;}
log 	{return LOG; }
ln		{return LN;  }
exp 	{return EXP; }
ceil	{return UGU; }
uGuass  {return UGU; }
floor	{return LGU; }
lGuass	{return LGU; }
abs		{return ABS; }

[a-z]*	{

			unsigned int seed = 131;
			unsigned int hash = 0;
			while (*yytext)
			{
				hash = hash * seed + (*yytext++);
				hash %= 10007;
			}
            yylval = hash%10007;
            return VARIABLE;
    	}

[ \t] ;
  
\n  	{return EOL;}

[-+()%=/*^\n]	{return yytext[0];}

. return yyerror("Invalid Input");
  
%%
/* User subroutines section */ 
/* C functions (can be main or others) */