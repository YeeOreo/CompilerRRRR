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
sin 	{return SIN; }
cos 	{return COS; }
tan		{return TAN; }
sqrt 	{return SQRT;}
log10 	{return LOG; }
log2 	{return LN;  }
exp 	{return EXP; }
ceil	{return UGU;}
uGuass  {return UGU; }
floor	{return LGU; }
lGuass	{return LGU; }

[ \t] ;
  
\n  	{return EOL;}
 
. return yytext[0];
  
%%
