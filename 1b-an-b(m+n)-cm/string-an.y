%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
S: A B
 ;
A: 'a' A 'b'
 |
;
B: 'b' B 'c'
 |
;
%%

int main()
{
yyparse();
printf("Valid String\n");
}

int yyerror()
{
printf("Invalid String\n");
exit(0);
}
