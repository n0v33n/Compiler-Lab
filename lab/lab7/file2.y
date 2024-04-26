%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
extern int yylineno, yychar;
int declcnt=0;
%}
%%
E : E '+' T
{$$ =$1+$3; printf("Value of E +T :%d\n",$$);}
T : T '*' F
{$$ =$1+; printf("Value after T * F :%d\n",$$);}
%token NUM
F : NUM {$$ =$1;printf("NUMBER : %d\n",$$)}

%%
int main(){
yyparse();
return 0;
}
