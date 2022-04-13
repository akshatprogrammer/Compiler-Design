/*Check whether a String is Valid indentifier or Not*/

%{
#include<stdio.h>
%}
%%
[a-zA-Z | _][a-zA-Z|0-9|_]+ {printf("\nValid");}
.+	{printf("\nInvalid");}
%%
int yywrap(){}
int main(){
yylex();
}
