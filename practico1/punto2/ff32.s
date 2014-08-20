	.file	"ff32.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 9
_UI00000000:
	.byte	102
	.byte	102
	.byte	51
	.byte	50
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
.globl work__ff32__d__OT__STB
	.align 4
	.type	work__ff32__d__OT__STB, @object
	.size	work__ff32__d__OT__STB, 16
work__ff32__d__OT__STB:
	.long	31
	.long	0
	.byte	1
	.zero	3
	.long	32
.globl work__ff32__q__OT__STB
	.align 4
	.type	work__ff32__q__OT__STB, @object
	.size	work__ff32__q__OT__STB, 16
work__ff32__q__OT__STB:
	.long	31
	.long	0
	.byte	1
	.zero	3
	.long	32
.globl work__ff32__d__OT__RTI
	.align 4
	.type	work__ff32__d__OT__RTI, @object
	.size	work__ff32__d__OT__RTI, 24
work__ff32__d__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__ff32__d__OT__STB
	.long	32
	.long	128
	.type	work__ff32__d__RTISTR, @object
	.size	work__ff32__d__RTISTR, 2
work__ff32__d__RTISTR:
	.byte	100
	.byte	0
.globl work__ff32__d__RTI
	.align 4
	.type	work__ff32__d__RTI, @object
	.size	work__ff32__d__RTI, 16
work__ff32__d__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__ff32__d__RTISTR
	.long	8
	.long	work__ff32__d__OT__RTI
.globl work__ff32__q__OT__RTI
	.align 4
	.type	work__ff32__q__OT__RTI, @object
	.size	work__ff32__q__OT__RTI, 24
work__ff32__q__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__ff32__q__OT__STB
	.long	32
	.long	128
	.type	work__ff32__q__RTISTR, @object
	.size	work__ff32__q__RTISTR, 2
work__ff32__q__RTISTR:
	.byte	113
	.byte	0
.globl work__ff32__q__RTI
	.align 4
	.type	work__ff32__q__RTI, @object
	.size	work__ff32__q__RTI, 16
work__ff32__q__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__ff32__q__RTISTR
	.long	136
	.long	work__ff32__q__OT__RTI
	.type	work__ff32__reset__RTISTR, @object
	.size	work__ff32__reset__RTISTR, 6
work__ff32__reset__RTISTR:
	.byte	114
	.byte	101
	.byte	115
	.byte	101
	.byte	116
	.byte	0
.globl work__ff32__reset__RTI
	.align 4
	.type	work__ff32__reset__RTI, @object
	.size	work__ff32__reset__RTI, 16
work__ff32__reset__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__ff32__reset__RTISTR
	.long	264
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__ff32__clk__RTISTR, @object
	.size	work__ff32__clk__RTISTR, 4
work__ff32__clk__RTISTR:
	.byte	99
	.byte	108
	.byte	107
	.byte	0
.globl work__ff32__clk__RTI
	.align 4
	.type	work__ff32__clk__RTI, @object
	.size	work__ff32__clk__RTI, 16
work__ff32__clk__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__ff32__clk__RTISTR
	.long	268
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__ff32__RTISTR, @object
	.size	work__ff32__RTISTR, 5
work__ff32__RTISTR:
	.byte	102
	.byte	102
	.byte	51
	.byte	50
	.byte	0
	.align 4
	.type	work__ff32__RTIARRAY, @object
	.size	work__ff32__RTIARRAY, 20
work__ff32__RTIARRAY:
	.long	work__ff32__d__RTI
	.long	work__ff32__q__RTI
	.long	work__ff32__reset__RTI
	.long	work__ff32__clk__RTI
	.long	0
.globl work__ff32__RTI
	.align 4
	.type	work__ff32__RTI, @object
	.size	work__ff32__RTI, 28
work__ff32__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__ff32__RTISTR
	.long	0
	.long	work__RTI
	.long	272
	.long	4
	.long	work__ff32__RTIARRAY
	.text
.globl work__ff32__ELAB
	.type	work__ff32__ELAB, @function
work__ff32__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movzbl	ieee__std_logic_1164__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	call	ieee__std_logic_1164__ELAB_BODY
.L2:
	movzbl	ieee__numeric_std__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
	call	ieee__numeric_std__ELAB_BODY
.L3:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L5:
	cmpl	$32, -16(%ebp)
	jae	.L4
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__ff32__d__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -16(%ebp)
	jmp	.L5
.L4:
	movl	8(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L7:
	cmpl	$32, -8(%ebp)
	jae	.L6
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-4(%ebp), %eax
	movl	$work__ff32__q__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -8(%ebp)
	jmp	.L7
.L6:
	movl	8(%ebp), %eax
	movl	264(%eax), %eax
	movl	$work__ff32__reset__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	268(%eax), %eax
	movl	$work__ff32__clk__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	leave
	ret
	.size	work__ff32__ELAB, .-work__ff32__ELAB
.globl work__ff32__ARCH__ff_32_arch__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__ff32__ARCH__ff_32_arch__INSTSIZE, @object
	.size	work__ff32__ARCH__ff_32_arch__INSTSIZE, 4
work__ff32__ARCH__ff_32_arch__INSTSIZE:
	.long	304
	.type	work__ff32__ARCH__ff_32_arch__P0__RTISTR, @object
	.size	work__ff32__ARCH__ff_32_arch__P0__RTISTR, 3
work__ff32__ARCH__ff_32_arch__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__ff32__ARCH__ff_32_arch__P0__RTIARRAY, @object
	.size	work__ff32__ARCH__ff_32_arch__P0__RTIARRAY, 4
work__ff32__ARCH__ff_32_arch__P0__RTIARRAY:
	.zero	4
.globl work__ff32__ARCH__ff_32_arch__P0__RTI
	.align 4
	.type	work__ff32__ARCH__ff_32_arch__P0__RTI, @object
	.size	work__ff32__ARCH__ff_32_arch__P0__RTI, 28
work__ff32__ARCH__ff_32_arch__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__ff32__ARCH__ff_32_arch__P0__RTISTR
	.long	272
	.long	work__ff32__ARCH__ff_32_arch__RTI
	.long	32
	.long	0
	.long	work__ff32__ARCH__ff_32_arch__P0__RTIARRAY
	.type	work__ff32__ARCH__ff_32_arch__RTISTR, @object
	.size	work__ff32__ARCH__ff_32_arch__RTISTR, 11
work__ff32__ARCH__ff_32_arch__RTISTR:
	.byte	102
	.byte	102
	.byte	95
	.byte	51
	.byte	50
	.byte	95
	.byte	97
	.byte	114
	.byte	99
	.byte	104
	.byte	0
	.align 4
	.type	work__ff32__ARCH__ff_32_arch__RTIARRAY, @object
	.size	work__ff32__ARCH__ff_32_arch__RTIARRAY, 8
work__ff32__ARCH__ff_32_arch__RTIARRAY:
	.long	work__ff32__ARCH__ff_32_arch__P0__RTI
	.long	0
.globl work__ff32__ARCH__ff_32_arch__RTI
	.align 4
	.type	work__ff32__ARCH__ff_32_arch__RTI, @object
	.size	work__ff32__ARCH__ff_32_arch__RTI, 28
work__ff32__ARCH__ff_32_arch__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__ff32__ARCH__ff_32_arch__RTISTR
	.long	0
	.long	work__ff32__RTI
	.long	304
	.long	1
	.long	work__ff32__ARCH__ff_32_arch__RTIARRAY
	.align 32
	.type	_UI00000001.1972, @object
	.size	_UI00000001.1972, 32
_UI00000001.1972:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.text
	.type	work__ff32__ARCH__ff_32_arch__P0__PROC, @function
work__ff32__ARCH__ff_32_arch__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$96, %esp
	movl	8(%ebp), %eax
	movl	264(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L10
	movl	8(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
.L15:
	cmpl	$32, -48(%ebp)
	jae	.L24
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	addl	$272, %eax
	addl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$_UI00000001.1972, %edx
	movl	-48(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-36(%ebp), %eax
	movb	%dl, (%eax)
	movl	-44(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L12
	movb	$1, -37(%ebp)
	jmp	.L13
.L12:
	movl	-44(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -37(%ebp)
.L13:
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-37(%ebp), %al
	testb	%al, %al
	je	.L14
	movl	-44(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-44(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L14:
	addl	$1, -48(%ebp)
	jmp	.L15
.L10:
	movl	8(%ebp), %eax
	movl	268(%eax), %eax
	movzbl	44(%eax), %eax
	movb	%al, -29(%ebp)
	cmpb	$1, -29(%ebp)
	jne	.L17
	movl	8(%ebp), %eax
	movl	268(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	sete	%al
	movb	%al, -29(%ebp)
.L17:
	cmpb	$0, -29(%ebp)
	je	.L24
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L19:
	cmpl	$32, -24(%ebp)
	jae	.L18
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -84(%ebp,%ecx)
	addl	$1, -24(%ebp)
	jmp	.L19
.L18:
	movl	8(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L23:
	cmpl	$32, -16(%ebp)
	jae	.L24
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$272, %eax
	addl	-16(%ebp), %eax
	movl	%eax, -4(%ebp)
	leal	-84(%ebp), %edx
	movl	-16(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L20
	movb	$1, -5(%ebp)
	jmp	.L21
.L20:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L21:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L22
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L22:
	addl	$1, -16(%ebp)
	jmp	.L23
.L24:
	leave
	ret
	.size	work__ff32__ARCH__ff_32_arch__P0__PROC, .-work__ff32__ARCH__ff_32_arch__P0__PROC
.globl work__ff32__ARCH__ff_32_arch__ELAB
	.type	work__ff32__ARCH__ff_32_arch__ELAB, @function
work__ff32__ARCH__ff_32_arch__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	$work__ff32__ARCH__ff_32_arch__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__ff32__ELAB
	movl	-12(%ebp), %eax
	addl	$272, %eax
	movl	$work__ff32__ARCH__ff_32_arch__P0__PROC, %edx
	movl	-12(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__ff32__ARCH__ff_32_arch__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-12(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L27:
	cmpl	$32, -4(%ebp)
	jae	.L26
	movl	-12(%ebp), %eax
	addl	$272, %eax
	movl	%eax, %ecx
	addl	-4(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -4(%ebp)
	jmp	.L27
.L26:
	movl	-12(%ebp), %eax
	movl	264(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-12(%ebp), %eax
	movl	268(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	leave
	ret
	.size	work__ff32__ARCH__ff_32_arch__ELAB, .-work__ff32__ARCH__ff_32_arch__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits
