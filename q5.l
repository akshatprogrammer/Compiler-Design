/*Identify the String that starts with a number and ends with alphabet and count Valid*/

%{
#include<stdio.h>
int v=0;
%}
%%
[0-9].+[a-zA-Z] {printf("\nValid");v++;}
.+	{printf("\nInvalid");}
%%
int yywrap(){}
int main(){
yylex();
printf("\n Total Valids = %d",v);
}
