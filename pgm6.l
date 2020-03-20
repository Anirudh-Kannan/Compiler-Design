%{
#include "y.tab.h"
extern char yyval;
%}
%%
[0-9]+ {yylval.sym = (char)yytext[0]; return NUMBER;}
[a-zA-Z]+ {yylval.sym = (char)yytext[0]; return LETTER;}
\n
. {return yytext[0];}
%%