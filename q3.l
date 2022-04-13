/*Check whether a String is Decimal or Not*/
%{
#include<stdio.h>
%}
%%
[0-9]+['.'][0-9]+ {printf("\nDecimal");}
.+	{printf("\nInteger");}
%%
int yywrap(){}
int main(){
yylex();
}
