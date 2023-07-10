%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
[ \t];
int|char|bool|float|void|for|do|while|if|else|return|void {printf("keyword is %s\n",yytext);return KEY;}
[a-zA-Z0-9]+ {printf("identifier is %s\n",yytext);return ID;}
[+|-|*|/|=|<|>] {printf("operator is %s\n",yytext);return OP;}

. ;
%%
int yywrap()
{
return 1;
}
