%{
#include <stdio.h>
#include <stdlib.h>
int id=0, key=0, op=0;
%}
%token ID KEY OP

%%
input:
ID input { id++; }
| KEY input { key++; }
| OP input {op++;}
| ID { id++; }
| KEY { key++; }
| OP { op++;}
;
%%

extern FILE* yyin;
int main(int argc ,char* argv[])
{
yyin = fopen(argv[1],"r";)
yyparse();
printf("OP = %d\n KEY %d\n ID %d\n",op,key,id);
}
int yyerror()
{
printf("error");
exit(0);
}


gedit lab6b.l
gedit lab6b.y 
lex lab6.l
yacc -d lab6.y
cc lex.yy.c y.tab.c -ll
./a.out
