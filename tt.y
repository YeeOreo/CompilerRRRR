%{
/* Definition section */
#include<stdio.h>
int noError=1;
%}

%token NUMBER

%left '+' '-'

%left '*' '/' '%'

%left '^'

%left '(' ')'

/* Rule Section */
%%

ArithmeticExpression: E{
		if( noError ) 
		
		printf("\nResult=%d\n", $$);

		return 0;

		};
E:E'+'E {$$=$1+$3;}

|E'-'E {$$=$1-$3;}

|E'*'E {$$=$1*$3;}

|E'/'E { if ($3 == 0)
          yyerror("divide by zero");
        /*else
          $$ = $1 / $3;*/
      }

|E'%'E {$$=$1%$3;}

|E'^'E {
		int result = 1;
		int base = $1;
		int n = $3;
		while (n != 0) {
			if (n & 1)
				result = result * base;
			base = base * base;
			n >>= 1; 
		}
		$$ = result;
		}

|'('E')' {$$=$2;}

| NUMBER {$$=$1;}

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

/*void yyerror()
{
printf("\nEntered arithmetic expression is Invalid\n\n");
noError=0;
}*/

void yyerror (char const *s)
{
fprintf (stderr, "%s\n", s);
noError=0;
}