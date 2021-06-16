%{

int p=0, n=0, nf=0, pf=0, z=0;
	
%}

%%

[0][.]?[0]* {z++;}
[+]?[0-9]+ {p++;}
[-][0-9]+ {n++;}
[+]?[0-9]+[.]?[0-9]* {pf++;}
[-][0-9]+[.]?[0-9]* {nf++;}
[-][0-9]+[.]?[0-9][/][-][0-9]+[.]?[0-9] {pf++;}
[0-9]+[.]?[0-9][/][0-9]+[.]?[0-9] {pf++;}
[-][0-9]+[.]?[0-9][/][0-9]+[.]?[0-9] {nf++;}
[0-9]+[.]?[0-9][/][-][0-9]+[.]?[0-9] {nf++;}
.;

%%

int main()
{

 printf("Enter the Numbers\n");
 yylex();
 printf("\nThe number of positive integers=%d\nThe number of negative inetegers=%d\nThe number of negative fractions=%d\nThe number of positive fractions=%d\nthe number of zeros=%d\n",p,n,nf,pf,z);
 return 0;
}