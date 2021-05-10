	.file	"foo.c"
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$56, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-8(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	sarl	$3, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %edx
	andl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %edx
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	notl	%eax
	movl	%eax, -32(%rbp)
	leaq	-52(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$56, (%rax)
	leaq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$78, (%rax)
	movl	-32(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44.0.3)"
	.section	.note.GNU-stack,"",@progbits
