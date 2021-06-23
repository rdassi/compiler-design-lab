# Compiler Design Lab (18CS63)

## PROGRAMS

1. Writing a scanner, writing predictive parser for a language construct
2. Experiment with scanner (lex/flex) and parser (yacc/byson) generators
3. Writing scanner-parse specification for a simple language constructs
4. Translation of the language constructs to an intermediate form (e.g. three-address code)
5. Generation of target code (in assembly language) using compiler construction tools
6. Code improvement and optimization using LLVM compiler
7. Code improvement and optimization using CLANG compiler.
8. Loop Unrolling using LLVM Compiler [For the given loop apply loop unrolling optimization technique in LLVM and write
down the output in assembly code.]

## Running the Code

### **Lex**

1. Write the lex program in a file and save it as `lexfile.l`.
2. Open the terminal and navigate to the directory where you have saved `lexfile.l`.
3. Type the following commands in the terminal:

   ``` 
   lex lexfile.l
   cc lex.yy.c -lfl
   ./a.out
   ```

### **Yacc**

1. Write the lex program in a file and save it as `lexfile.l` and yacc program in `yaccfile.y`.
2. Open the terminal and navigate to the directory where you have saved `lexfile.l`.
3. Type the following commands in the terminal:

   ``` 
   lex lexfile.l
   yacc -d yaccfile.y
   cc lex.yy.c y.tab.c -ll
   ./a.out
   ```
