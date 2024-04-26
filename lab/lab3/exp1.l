%{
#include<stdio.h>
%}
%option noyywrap
L [A-Za-z]
D [0-9]
DO [0-7]
HX [A-Fa-f0-9]

%%
int|if|else|return|float|char|const|static|while|do|void {printf("Keyword found \n");return 1;}
(0X){HX}+ {printf("Hexadecimal found \n");return 1;}
{L}({L}|{D})* {printf("ID found \n");return 1;}
0{DO}+ {printf("Octal found \n"); return 1;}
{D}+ {printf("Integer found \n");return 1;} 
{D}+\.{D}+ {printf("Decimal found \n");return 1;}
"<"|"<="|">"|">="|"=="|"!=" {printf("Relop \n");return 1;}
"%"|"*"|"/" {printf("MULTIPLICATIVE operator \n"); return 1;}
"+"|"-" {printf("arithmetic operator \n"); return 1;}
"<<"|">>" {printf("bitwise operator \n"); return 1;}
"="|"+="|"-=" {printf("Assiglop \n"); return 1;}
"("|"["|"{" {printf("Leftpar found \n"); return 1;}
")"|"]"|"}" {printf("Rightpar found \n"); return 1;}
";"|"," {printf("Delimiter found \n"); return 1;}

%%

int main()
{ 
	while(yylex());
}
