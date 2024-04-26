%{
#include<stdio.h>
%}
L [a-zA-Z]
D [0-9]
%%
"//" {printf("Token Found for single line\n");}
"int" {printf("Token Found for Keyword\n %s",yytext);}
{L}({L}|{D})* {printf("Token Found for Identifier \n %s",yytext);}
%%
int main()
{ yylex();
return 0;
}
