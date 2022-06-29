%{
  #define YYSTYPE double
  #include<stdio.h>
  #include "tt.tab.h" 
  
%}

%%
\.?[0-9]+|[0-9]+\.[0-9]*	{
            yylval = atof(yytext);
            return NUMBER;
    	}
[a-z]	{
            yylval = yytext[0] - 'a';
            return VARIABLE;
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

[ \t] ;
  
\n  	{return EOL;}
 
. return yytext[0];
  
%%