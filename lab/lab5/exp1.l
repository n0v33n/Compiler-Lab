%{
#include<stdio.h>
int a=1;
%}
%option noyywrap
L [A-Za-z]
D [0-9]
%%
".file" { printf("C Source File%s",yytext);return 1;}
".text+^.startup"|".section"|".p2align"|".globl"|".type"|".align"|".long"|".size"|".ident"|".cfi" { printf("Assembler Directive: %s",yytext);a++; return 1;}
.L({L}|{D})* { printf("Label : %s",yytext);return 1;}
"main" { printf("Identifier : %s",yytext);return 1;}
.string { printf("Format String : %s",yytext);return 1;}
 %rip|%rsp|%rbp|%rax|%rdi|%rsi|%rdx|%rbx|"%"{D} { printf("register of 64 bit operand : %s",yytext);return 1;}
 %esp|%ebp|%eax|%edi|%esi|%edx|%ebx { printf("register of 32 bit operand : %s",yytext);return 1;}
 .{L}({L})* { printf("Assembler Directive: %s",yytext);a++; return 1;}
%%

int main()
{ 
	while(yylex());
		printf(" No of Assembler Directive: %d \n",a);
}

