/*Identify the String that starts with "ab" and ends with "ba" and count Valid*/

%{
#include<stdio.h>
int v=0;
%}
%%
[aA][bB][a-zA-Z|0-9|_]+[bB][Aa] {printf("\nValid");v++;}
.+	{printf("\nInvalid");}
%%
int yywrap(){}
int main(){
yylex();
printf("\n Total Valids = %d",v);
}
