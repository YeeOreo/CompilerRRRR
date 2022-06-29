%{
#include <stdio.h>
int noErr = 1;
%}

%token NUMBER
%token ADD SUB MUL DIV ABS LB RB
%token EOL

%%

calclist:/**/
  |calclist exp EOL{if(noErr)printf ("=%d\n",$2);}
  ;
  
exp:factor {$$ = $1;}
  |exp ADD factor{$$=$1+$3;}
  |exp SUB factor{$$=$1-$3;}
  ;
factor:brkets {$$=$1;}
  |factor MUL brkets{$$=$1*$3;}
  |factor DIV brkets{
					if($3==0) yyerror("Div 0");
					else $$=$1/$3;
					}
  ;
  
brkets:term {$$=$1;}
  |LB factor RB {$$=$2;}
  |LB exp RB {$$=$2;}
  
term:NUMBER {$$=$1;}
  |ABS term {$$=$2>=0?$2:-$2;}
  ;
%%

main(int argc,char **argv){
	yyparse();
}

yyerror(char *s)
{
 noErr = 0;
 fprintf(stderr,"error:%s\n",s);
}
