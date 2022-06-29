%{
/* Definition section */
#include<stdio.h>
#define YYSTYPE double
#define M_PI 3.1415926
#define EPS 1e-6
#include<math.h>
int noError=1;
double sym[10008];
%}

%token NUMBER SIN COS TAN SQRT LOG LN EXP UGU LGU ABS PI VARIABLE

%token EOL

%left '+' '-'

%left '*' '/'

%left '^'

%left '(' ')'

/* Rule Section */
%%

ArithmeticExpression: 
		|ArithmeticExpression statement EOL{};
		
statement:
	E { if( noError ) {
			if( $1 > -EPS && $1 < 0){
				printf("%\nResult = 0\n");
			}
			else if( fabs( $1 - ceil($1) ) < EPS )
				printf("\nResult = %.1lf\n", $1);
			else
				printf("\nResult = %lf\n", $1);
		}
		noError = 1;}
	| VARIABLE '=' E {sym[(int)$1] = $3;}
	;

E:	 E '+' E {$$=$1+$3;}

	| E '-' E {$$=$1-$3;}

	|  '-' E {$$=-$2;}

	| E '*' E {$$=$1*$3;}

	| E '/' E { 
			if ($3 == 0){
				yyerror("divide by zero");
				$$ = 0;
			}
			else{
				$$ = $1/$3;
			}
		}
		
	| E '%' E			{$$ = fmod($1, $3);}

	| E '^' E 			{$$ = pow($1, $3);}

	| '(' E ')'			{$$ = $2;}
	
	| SIN  '(' E ')'	{$$ = sin($3*M_PI/180.0); }
	
	| COS  '(' E ')'	{$$ = cos($3*M_PI/180.0);}
	
	| TAN  '(' E ')'	{$$ = tan($3*M_PI/180.0);}
	
	| SQRT '(' E ')'	{$$ = sqrt($3);}
	
	| LOG '(' E ')'		{$$ = log10($3);}
	
	| LN '(' E ')'		{$$ = log($3);}

	| EXP '(' E ')'		{$$ = exp($3); }
	
	| LGU '(' E ')'		{$$ = floor($3); }
	
	| UGU '(' E ')'		{$$ = ceil($3); }

	| ABS '(' E ')'		{$$ = fabs($3); }
	
	| PI		{$$ = M_PI;}

	| NUMBER	{$$ = $1;}
	
	|VARIABLE		{
	$$ = sym[(int)$1];}
	;

%%

//driver code
void main()
{
	printf("\nCacultaor\n Now supported functions: + - * /  (modulo) ^ round brackets sin() cos() tan() sqrt() log() ln() exp() ceil() floor() abs() pi\n also support variable ex: this = 1\n");
	yyparse();
}



void yyerror (char const *s)
{
	fprintf (stderr, "%s\n", s);
	noError=0;
}