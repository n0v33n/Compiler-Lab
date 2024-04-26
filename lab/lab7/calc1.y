%{

#include<stdio.h>
int yylex(void);
void yyerror(char *);
extern int yylineno, yychar ;

%}

%token NUM

%%
EL: EL E {$$=$2;}
 |
 ;
E : E '+' T 	{$$ = $1 + $3 ; printf("Rule 1 : E -> E + T\n"); printf("Value after E + T : %d\n", $$);}
	| T     {printf("Rule 2 : E  x-> T \n");}
	;
     
T : T '*' F 	{$$ = $1 + $3 ; printf("Rule 3 : T -> T * F \n"); printf("Value after T * F : %d\n", $$);}
	| F 	{printf("Rule 4 : T -> F \n");}
	; 

F: NUM 		{$$=$1;printf("Rule 5 : F -> NUM \n"); printf("Value after T * F : %d\n", $$);}
	;

%%
void yyerror(char *s)
     {printf(" %s  Line number : %d near symbol %c \n", s, yylineno, (char)yychar); }

int main(){
yyparse();
return 0;
}
