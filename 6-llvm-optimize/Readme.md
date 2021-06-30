# Experiment 6

## Code improvement and optimization using LLVM compiler.

- **Step 1-** Take the source code of Binary Search sort in C language program (or any searching algorithm).
- **Step 2-** Run it through LLVM Compiler.
- **Step 3-** Print the unoptimized assembly code.
- **Step 4-** Apply optimization techniques and print the optimized assembly code.
- **Step 5-** Justify the optimized code.

## Steps to Run

``` C
$clang --help
$clang binarysearch.c -fsyntax-only
$clang binarysearch.c -S -emit-llvm-o //unoptimized code in a .s file
$clang binarysearch-opt.c -S -emit-llvm-o -O3 //optimized code in a .s file
$clang binarysearch.c -S -O3 -o //output native machine code
```

## Output

![6-output](6-llvm-op.png)