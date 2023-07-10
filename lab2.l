%{
#include "y.tab.h"
%}
%%
a {return A;}
b {return B;}
[\n] return '\n';
%%


gedit lab2.l
gedit lab2.y 
lex lab2.l
yacc -d lab2.y
cc lex.yy.c y.tab.c -ll
./a.out
