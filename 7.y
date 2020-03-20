%{
#include<stdio.h>
#include<stdlib.h>
%}
%token dt
%token id
%token num
%token r
%%
S:ST {printf("Function accepted\n");exit(0);}
;
ST:dt id'('')''{'A'}'
;
A:A A|B|C|r id';'
;
B:dt D
;
D:id','D
|id';'
;
C:id'='K
;
K: id O K|id O id';'| num';'
;
O:'+'|'-'|'*'|'/'
;
%%
int main(){
printf("Enter the function:\n");
yyparse();
}
int yyerror(){
printf("Invalid function definition\n");
exit(0);
}
