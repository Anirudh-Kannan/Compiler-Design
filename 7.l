%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
"int"|"char"|"float" return dt;
"return" return r;
[A-Z|a-z][A-Z|a-z|0-9]* return id;
[0-9]+ return num;
\n ;
" " ;
. return yytext[0];
%%
int yywrap(){
   return 1;
}

