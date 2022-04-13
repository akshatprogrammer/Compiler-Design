/*Check whether a String is Valid indentifier or Not Using File Handling*/
%{
#include<stdio.h>
%}
%%
[a-zA-Z | _][a-zA-Z|0-9|_]+ {fprintf(yyout,"\nValid");}
.+	{fprintf(yyout,"Invalid");}
%%
int yywrap(){}
int main(){
extern FILE *yyin,*yyout;
yyin = fopen("input.txt","r");
yyout = fopen("output.txt","w");
yylex();
}
