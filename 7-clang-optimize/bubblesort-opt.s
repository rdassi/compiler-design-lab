	.text
	.file	"bubblesort-opt.c"
	.globl	swap                    # -- Begin function swap
	.p2align	4, 0x90
	.type	swap,@function
swap:                                   # @swap
	.cfi_startproc
# %bb.0:
	movl	(%rdi), %eax
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	movl	%eax, (%rsi)
	retq
.Lfunc_end0:
	.size	swap, .Lfunc_end0-swap
	.cfi_endproc
                                        # -- End function
	.globl	bubbleSort              # -- Begin function bubbleSort
	.p2align	4, 0x90
	.type	bubbleSort,@function
bubbleSort:                             # @bubbleSort
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpl	$2, %esi
	jl	.LBB1_9
# %bb.1:
	addl	$-1, %esi
	xorl	%r10d, %r10d
	movl	%esi, %r8d
	.p2align	4, 0x90
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	movl	%esi, %r9d
	subl	%r10d, %r9d
	testl	%r9d, %r9d
	jle	.LBB1_8
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	(%rdi), %ecx
	cmpl	$1, %r9d
	jne	.LBB1_10
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	testb	$1, %r9b
	jne	.LBB1_6
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r8d, %r11d
	movl	%r8d, %eax
	andl	$1, %eax
	subq	%rax, %r11
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_11:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rdi,%rax,4), %edx
	cmpl	%edx, %ecx
	jle	.LBB1_12
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=2
	movl	%edx, (%rdi,%rax,4)
	movl	%ecx, 4(%rdi,%rax,4)
	leaq	2(%rax), %rdx
	movl	8(%rdi,%rax,4), %ebx
	cmpl	%ebx, %ecx
	jg	.LBB1_16
.LBB1_15:                               #   in Loop: Header=BB1_11 Depth=2
	movl	%ebx, %ecx
	movq	%rdx, %rax
	cmpq	%rdx, %r11
	jne	.LBB1_11
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_11 Depth=2
	movl	%edx, %ecx
	leaq	2(%rax), %rdx
	movl	8(%rdi,%rax,4), %ebx
	cmpl	%ebx, %ecx
	jle	.LBB1_15
.LBB1_16:                               #   in Loop: Header=BB1_11 Depth=2
	movl	%ebx, 4(%rdi,%rax,4)
	movl	%ecx, 8(%rdi,%rax,4)
	movq	%rdx, %rax
	cmpq	%rdx, %r11
	jne	.LBB1_11
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r9b
	je	.LBB1_8
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	4(%rdi,%rdx,4), %eax
	cmpl	%eax, %ecx
	jle	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, (%rdi,%rdx,4)
	movl	%ecx, 4(%rdi,%rdx,4)
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %r10d
	addl	$-1, %r8d
	cmpl	%esi, %r10d
	jne	.LBB1_2
.LBB1_9:
	popq	%rbx
	retq
.Lfunc_end1:
	.size	bubbleSort, .Lfunc_end1-bubbleSort
	.cfi_endproc
                                        # -- End function
	.globl	printArray              # -- Begin function printArray
	.p2align	4, 0x90
	.type	printArray,@function
printArray:                             # @printArray
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testl	%esi, %esi
	jle	.LBB2_3
# %bb.1:
	movl	%esi, %r14d
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$4, %rbx
	addq	$-1, %r14
	jne	.LBB2_2
.LBB2_3:
	movl	$10, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	putchar                 # TAILCALL
.Lfunc_end2:
	.size	printArray, .Lfunc_end2-printArray
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movaps	.Lmain.arr(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movups	.Lmain.arr+12(%rip), %xmm0
	movups	%xmm0, 12(%rsp)
	movl	4(%rsp), %eax
	cmpl	$63, %eax
	jg	.LBB3_2
# %bb.1:
	movl	%eax, (%rsp)
	movl	$64, 4(%rsp)
	movl	$64, %eax
.LBB3_2:
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_3
# %bb.43:
	movl	%ecx, 4(%rsp)
	movl	%eax, 8(%rsp)
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_46
.LBB3_45:
	movl	%ecx, %eax
	movl	16(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_49
.LBB3_48:
	movl	%ecx, %eax
	movl	20(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_52
.LBB3_51:
	movl	%ecx, %eax
	movl	24(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_54
	jmp	.LBB3_55
.LBB3_3:
	movl	%ecx, %eax
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_45
.LBB3_46:
	movl	%ecx, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	16(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_48
.LBB3_49:
	movl	%ecx, 12(%rsp)
	movl	%eax, 16(%rsp)
	movl	20(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_51
.LBB3_52:
	movl	%ecx, 16(%rsp)
	movl	%eax, 20(%rsp)
	movl	24(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_55
.LBB3_54:
	movl	%ecx, 20(%rsp)
	movl	%eax, 24(%rsp)
.LBB3_55:
	movl	(%rsp), %eax
	movl	4(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_56
# %bb.4:
	movl	%ecx, (%rsp)
	movl	%eax, 4(%rsp)
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_32
.LBB3_6:
	movl	%ecx, %eax
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_35
.LBB3_34:
	movl	%ecx, %eax
	movl	16(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_38
.LBB3_37:
	movl	%ecx, %eax
	movl	20(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_40
	jmp	.LBB3_41
.LBB3_56:
	movl	%ecx, %eax
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_6
.LBB3_32:
	movl	%ecx, 4(%rsp)
	movl	%eax, 8(%rsp)
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_34
.LBB3_35:
	movl	%ecx, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	16(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_37
.LBB3_38:
	movl	%ecx, 12(%rsp)
	movl	%eax, 16(%rsp)
	movl	20(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_41
.LBB3_40:
	movl	%ecx, 16(%rsp)
	movl	%eax, 20(%rsp)
.LBB3_41:
	movl	(%rsp), %eax
	movl	4(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_42
# %bb.7:
	movl	%ecx, (%rsp)
	movl	%eax, 4(%rsp)
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_24
.LBB3_9:
	movl	%ecx, %eax
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_27
.LBB3_26:
	movl	%ecx, %eax
	movl	16(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_29
	jmp	.LBB3_30
.LBB3_42:
	movl	%ecx, %eax
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_9
.LBB3_24:
	movl	%ecx, 4(%rsp)
	movl	%eax, 8(%rsp)
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_26
.LBB3_27:
	movl	%ecx, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	16(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_30
.LBB3_29:
	movl	%ecx, 12(%rsp)
	movl	%eax, 16(%rsp)
.LBB3_30:
	movl	(%rsp), %eax
	movl	4(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_31
# %bb.10:
	movl	%ecx, (%rsp)
	movl	%eax, 4(%rsp)
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_19
.LBB3_12:
	movl	%ecx, %eax
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_21
	jmp	.LBB3_22
.LBB3_31:
	movl	%ecx, %eax
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_12
.LBB3_19:
	movl	%ecx, 4(%rsp)
	movl	%eax, 8(%rsp)
	movl	12(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_22
.LBB3_21:
	movl	%ecx, 8(%rsp)
	movl	%eax, 12(%rsp)
.LBB3_22:
	movl	(%rsp), %eax
	movl	4(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_23
# %bb.13:
	movl	%ecx, (%rsp)
	movl	%eax, 4(%rsp)
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_15
	jmp	.LBB3_16
.LBB3_23:
	movl	%ecx, %eax
	movl	8(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_16
.LBB3_15:
	movl	%ecx, 4(%rsp)
	movl	%eax, 8(%rsp)
.LBB3_16:
	movl	(%rsp), %eax
	movl	4(%rsp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_18
# %bb.17:
	movl	%ecx, (%rsp)
	movl	%eax, 4(%rsp)
.LBB3_18:
	movl	$.Lstr, %edi
	callq	puts
	movl	(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	4(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	8(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	12(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	16(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	20(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	24(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$10, %edi
	callq	putchar
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.type	.Lmain.arr,@object      # @main.arr
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.arr:
	.long	64                      # 0x40
	.long	34                      # 0x22
	.long	25                      # 0x19
	.long	12                      # 0xc
	.long	22                      # 0x16
	.long	11                      # 0xb
	.long	90                      # 0x5a
	.size	.Lmain.arr, 28

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Sorted array: "
	.size	.Lstr, 15


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
