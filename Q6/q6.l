/*Count Number of Spaces, Tab, Lines and Characters Using File Handling*/

%{
#include<stdio.h>
int l=0,sp=0,tab=0,c=0;
%}
%%
\n l++;
[ ] sp++;
\t tab++;
. c++;
%%
int yywrap(){}
int main(){
extern FILE *yyout,*yyin;
yyin = fopen("input.txt","r");
yyout = fopen("output.txt","w");
yylex();
fprintf(yyout,"Space = %d\n",sp);
fprintf(yyout,"Tabs = %d\n",tab);
fprintf(yyout,"Lines = %d\n",l);
fprintf(yyout,"Characters = %d\n",c);
}
