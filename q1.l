/*Count Number of Spaces, Tab, Lines and Characters*/

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
yylex();
printf("\nSpace = %d\n",sp);
printf("\nTabs = %d\n",tab);
printf("\nLines = %d\n",l);
printf("\nCharacters = %d\n",c);
}
