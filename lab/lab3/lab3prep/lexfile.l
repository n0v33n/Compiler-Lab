
%{
#include<stdio.h>
int count=0;
%}

%%
"while"|"if"|"else"|"int"|"float" {++count; printf("\nKeyword : %s",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {++count; printf("I\ndentifier : %s",yytext);}
"<="|"=="|"="|"++"|"--"|"-"|"*"|"+"|"("|")"|"," {++count; printf("\nOperator : %s",yytext);}
"{"|"}"|";" {++count; printf("\nSeperators : %s",yytext);}
-?[0-9]+"."[0-9]+ {++count; printf("\n Float : %s",yytext);}
-?[0-9]+ {++count; printf("\nInteger : %s",yytext);}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter Input : ");
    yylex();

    printf("\nTotal Number of Tokens = %d\n",count);

    return 0;
}
