%{
    #include <stdio.h>
    int characters=0,words=0,lines=0,numbers=0,whitespace=0;
%}

%%
"exit" return 0;
[a-zA-Z]+ {words++; characters+=yyleng;}
[0-9]+ numbers++;
[' '] whitespace++;
\n lines++;
%%

int main()
{
    printf("Enter String\n");
    yylex();
    printf("Number of characters=%d\nWords=%d\nWhite Spaces=%d\nLines=%d\n",characters,words,numbers,whitespace,lines);
}

// %{
// #include<stdio.h>
// int words = 0;
// int letters = 0;
// int spaces = 0;
// int tabcount=0;
// int linecount=0;
// %}
// %%
// [' ']+ {spaces++;}
// \n {linecount++;}
// [a-zA-Z0-9]+ {words++;letters+=yyleng;}
// %%
// int main(int argc, char* argv[])
// {
//     printf("Enter the string : ");
//     int ret = yylex();
//     printf("\nLex returned %d\n",ret);
//     printf("Number of letters : %d.\n", letters);
//     printf("Number of spaces : %d.\n", spaces);
//     printf("Number of words : %d.\n", words);
//     printf("Number of lines : %d.\n", linecount);
// }
