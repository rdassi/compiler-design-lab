	.text
	.file	"binarysearch.c"
	.globl	binarySearch            # -- Begin function binarySearch
	.p2align	4, 0x90
	.type	binarySearch,@function
binarySearch:                           # @binarySearch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-24(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jl	.LBB0_6
# %bb.1:
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	-20(%rbp), %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-32(%rbp), %r8
	movl	(%rdi,%r8,4), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB0_3
# %bb.2:
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_3:
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	cmpl	-28(%rbp), %edx
	jle	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, %edx
	callq	binarySearch
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_5:
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	%eax, %esi
	callq	binarySearch
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	$-1, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	binarySearch, .Lfunc_end0-binarySearch
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%esi, %esi
	leaq	-32(%rbp), %rdi
	movl	$0, -4(%rbp)
	movq	.Lmain.arr, %rax
	movq	%rax, -32(%rbp)
	movq	.Lmain.arr+8, %rax
	movq	%rax, -24(%rbp)
	movl	.Lmain.arr+16, %ecx
	movl	%ecx, -16(%rbp)
	movl	$5, -36(%rbp)
	movl	$10, -40(%rbp)
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	-40(%rbp), %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	callq	binarySearch
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	jne	.LBB1_2
# %bb.1:
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:
	movabsq	$.L.str.1, %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB1_3:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.Lmain.arr,@object      # @main.arr
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.arr:
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	10                      # 0xa
	.long	40                      # 0x28
	.size	.Lmain.arr, 20

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Element is not present in array"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Element is present at index %d"
	.size	.L.str.1, 31


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
