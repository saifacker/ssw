%{
#include "y.tab.h"
extern yylval;
%}

%%
[0-9]+ {yylval=atoi(yytext);return num;}
[\+\-\*\/] {return yytext[0];}
[)]	{return yytext[0];}
[(]	{return yytext[0];}
. {;}
\n {return 0;}
%%

gedit lab1b.l
gedit lab1b.y
lex lab1b.l
yacc -d lab1b.y
cc lex.yy.c y.tab.c -ll
./a.out
