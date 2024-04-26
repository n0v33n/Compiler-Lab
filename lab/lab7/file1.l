%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

%%

"+" {return '+';}
"*" {return '*';}
%%

int main(){
while(yylex());
}

