%{
#include<stdio.h>
int sl=0;
int ml=0;
%}
%%
"/*"[a-zA-Z0-9' '\t\n]+"*/"	ml++;
"//".*	sl++;
%%

main()
{
	yyin=fopen("f1.c","r");
	yyout=fopen("f2.c","w");
	yylex();
	fclose(yyin);
	fclose(yyout);
	printf("\n Number of single line comments are = %d\n",sl); printf("\nNumber of multiline comments are =%d\n",ml);
}

int yywrap()
{
return 1;
}

gedit lab6.l
cat > f1.c
#include<stdio.h>
int main()
{
//declaration
}
