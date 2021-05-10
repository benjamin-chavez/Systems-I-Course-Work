[chaben@cdmcsczhprd01 hw4]$ more hw4.s
	.file	"hw4.c"
	.text
	.globl	decode
	.type	decode, @function
decode:
.LFB20:
	.cfi_startproc
	movq	%rdi, %rax
	imulq	%rsi, %rax
	addq	%rdx, %rsi
	subq	%rsi, %rax
	sarq	$3, %rax
	ret
  
  movq	%rdi, %rax
	imulq	%rsi, %rax
	addq	%rdx, %rsi
	subq	%rsi, %rax
	sarq	$3, %rax
	ret
  
  
  .cfi_endproc
.LFE20:
	.size	decode, .-decode
	.globl	loop
	.type	loop, @function
loop:
.LFB21:
	.cfi_startproc


	movl	$0, %edx
	movl	$0, %eax
	jmp	.L3
.L4:
	orq	%rdi, %rax
	addq	%rdi, %rdi
	addl	$1, %edx
.L3:
	cmpl	%esi, %edx
	jl	.L4
	rep ret



loop:
  movl	$0, %edx
  movl	$0, %eax
  jmp	.L3
.L4:
  orq	%rdi, %rax
  addq	%rdi, %rdi
  addl	$1, %edx
.L3:
  cmpl	%esi, %edx
  jl	.L4
  rep ret



	.cfi_endproc


  
.LFE21:
	.size	loop, .-loop
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44.0.3)"
	.section	.note.GNU-stack,"",@progbits
[chaben@cdmcsczhprd01 hw4]$ 


