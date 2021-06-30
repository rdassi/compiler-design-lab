	.text
	.file	"binarysearch-opt.c"
	.globl	binarySearch            # -- Begin function binarySearch
	.p2align	4, 0x90
	.type	binarySearch,@function
binarySearch:                           # @binarySearch
	.cfi_startproc
# %bb.0:
	movl	$-1, %eax
	cmpl	%esi, %edx
	jl	.LBB0_6
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, %r9d
	subl	%esi, %r9d
	movl	%r9d, %r8d
	shrl	$31, %r8d
	addl	%r9d, %r8d
	sarl	%r8d
	addl	%esi, %r8d
	movslq	%r8d, %r10
	cmpl	%ecx, (%rdi,%r10,4)
	je	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	jle	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	addl	$-1, %r8d
	movl	%r8d, %edx
	cmpl	$2, %r9d
	jge	.LBB0_1
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	leal	1(%r8), %esi
	cmpl	%r8d, %edx
	jg	.LBB0_1
.LBB0_6:
	retq
.LBB0_2:
	movl	%r8d, %eax
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	movl	$4, %eax
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	subl	%ecx, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	addl	%esi, %edx
	sarl	%edx
	addl	%ecx, %edx
	cmpl	$4, %edx
	jne	.LBB1_2
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$3, %eax
	cmpl	$2, %esi
	jge	.LBB1_1
	jmp	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	cmpl	$3, %edx
	je	.LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rdx), %ecx
	cmpl	%edx, %eax
	jg	.LBB1_1
.LBB1_4:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
	retq
.LBB1_5:
	movl	$.L.str.1, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
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
