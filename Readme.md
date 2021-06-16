# Compiler Design Lab (18CS63)

## PROGRAMS

1. Writing a scanner, writing predictive parser for a language construct
2. Experiment with scanner (lex/flex) and parser (yacc/byson) generators
3. Writing scanner-parse specification for a simple language constructs
4. Translation of the language constructs to an intermediate form (e.g. three-address code)
5. Generation of target code (in assembly language) using compiler construction tools
6. Code improvement and optimization using LLVM compiler

## Running the Code

- **Lex**

 1. Write the lex program in a file and save it as filename.l
 2. Open the terminal and navigate to the directory where you have saved filename.l
 3. Type the following commands in the terminal:

    ```c
    lex filename.l
    cc lex.yy.c -lfl
    ./a.out
    ```

- **Yacc**

 1. Write the lex program in a file and save it as lexfilename.l and yacc program in yaccfilename.y
 2. Open the terminal and navigate to the directory where you have saved filename.l
 3. Type the following commands in the terminal:

    ```c
    lex filename.l
    yacc -d filename.y
    cc lex.yy.c y.tab.c -ll
    ./a.out
    ```
