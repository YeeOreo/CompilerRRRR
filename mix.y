%token NUMBER VARIABLE SIN COS TAN

%left '+' '-'

%left '*' '/' '%'

%left '^'

%left '(' ')'

%{
/* Definition section */
#include<stdio.h>
#include <math.h>
#define YYSTYPE double
#define pi 3.1415926 
int noError=1;
int yylex(void);

double sym[26];
%}

/* Rule Section */
%%
program:
    program statement '\n'
    |
    ;
    
statement:
     E    {printf("%lf\n", $1);}
     |VARIABLE '=' E    {sym[(int)$1] = $3;}
     ;
     
ArithmeticExpression: E{
		if( noError ) 
		
		printf("\nResult=%d\n", $$);

		};
		
E:	 
    NUMBER 
    
    |VARIABLE{$$ = sym[(int)$1];}
    
    E'+'E {$$=$1+$3;}

	|E'-'E {$$=$1-$3;}

	|'-'E {$$=-$2;}

	|E'*'E {$$=$1*$3;}

	|E'/'E { 
			if ($3 == 0){
				yyerror("divide by zero");
				$$ = 0;
			}
			else{
				$$ = $1/$3;
			}
		}

	|E'%'E {$$=$1%$3;}

	|E'^'E {$$=pow($1,$3);}

	|'('E')' {$$=$2;}
	
	|SIN'('E')'       {$$ = sin($3*pi/180.0);}
	
    |COS'('E')'       {$$ = cos($3*pi/180.0);}
    
    |TAN'('E')'       {$$ = tan($3*pi/180.0);}

    ;

%%

//driver code
void main()
{
	printf("\nEnter Any Arithmetic Expression which\
	 can have operations Addition,\
	 Subtraction, Multiplication, Division,\
	 Modulus and Round brackets:\n");

	yyparse();
}



void yyerror (char const *s)
{
	fprintf (stderr, "%s\n", s);
	noError=0;
}
