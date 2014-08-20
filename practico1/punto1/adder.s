	.file	"adder.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 10
_UI00000000:
	.byte	97
	.byte	100
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
.globl work__adder__a__OT__STB
	.align 4
	.type	work__adder__a__OT__STB, @object
	.size	work__adder__a__OT__STB, 16
work__adder__a__OT__STB:
	.long	31
	.long	0
	.byte	1
	.zero	3
	.long	32
.globl work__adder__y__OT__STB
	.align 4
	.type	work__adder__y__OT__STB, @object
	.size	work__adder__y__OT__STB, 16
work__adder__y__OT__STB:
	.long	31
	.long	0
	.byte	1
	.zero	3
	.long	32
.globl work__adder__a__OT__RTI
	.align 4
	.type	work__adder__a__OT__RTI, @object
	.size	work__adder__a__OT__RTI, 24
work__adder__a__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__adder__a__OT__STB
	.long	32
	.long	128
	.type	work__adder__a__RTISTR, @object
	.size	work__adder__a__RTISTR, 2
work__adder__a__RTISTR:
	.byte	97
	.byte	0
.globl work__adder__a__RTI
	.align 4
	.type	work__adder__a__RTI, @object
	.size	work__adder__a__RTI, 16
work__adder__a__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__adder__a__RTISTR
	.long	8
	.long	work__adder__a__OT__RTI
	.type	work__adder__b__RTISTR, @object
	.size	work__adder__b__RTISTR, 2
work__adder__b__RTISTR:
	.byte	98
	.byte	0
.globl work__adder__b__RTI
	.align 4
	.type	work__adder__b__RTI, @object
	.size	work__adder__b__RTI, 16
work__adder__b__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__adder__b__RTISTR
	.long	136
	.long	work__adder__a__OT__RTI
.globl work__adder__y__OT__RTI
	.align 4
	.type	work__adder__y__OT__RTI, @object
	.size	work__adder__y__OT__RTI, 24
work__adder__y__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__adder__y__OT__STB
	.long	32
	.long	128
	.type	work__adder__y__RTISTR, @object
	.size	work__adder__y__RTISTR, 2
work__adder__y__RTISTR:
	.byte	121
	.byte	0
.globl work__adder__y__RTI
	.align 4
	.type	work__adder__y__RTI, @object
	.size	work__adder__y__RTI, 16
work__adder__y__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__adder__y__RTISTR
	.long	264
	.long	work__adder__y__OT__RTI
	.type	work__adder__RTISTR, @object
	.size	work__adder__RTISTR, 6
work__adder__RTISTR:
	.byte	97
	.byte	100
	.byte	100
	.byte	101
	.byte	114
	.byte	0
	.align 4
	.type	work__adder__RTIARRAY, @object
	.size	work__adder__RTIARRAY, 16
work__adder__RTIARRAY:
	.long	work__adder__a__RTI
	.long	work__adder__b__RTI
	.long	work__adder__y__RTI
	.long	0
.globl work__adder__RTI
	.align 4
	.type	work__adder__RTI, @object
	.size	work__adder__RTI, 28
work__adder__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__adder__RTISTR
	.long	0
	.long	work__RTI
	.long	392
	.long	3
	.long	work__adder__RTIARRAY
	.text
.globl work__adder__ELAB
	.type	work__adder__ELAB, @function
work__adder__ELAB:
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
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L5:
	cmpl	$32, -24(%ebp)
	jae	.L4
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__adder__a__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -24(%ebp)
	jmp	.L5
.L4:
	movl	8(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L7:
	cmpl	$32, -16(%ebp)
	jae	.L6
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__adder__b__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -16(%ebp)
	jmp	.L7
.L6:
	movl	8(%ebp), %eax
	addl	$264, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L9:
	cmpl	$32, -8(%ebp)
	jae	.L10
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
	movl	$work__adder__y__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -8(%ebp)
	jmp	.L9
.L10:
	leave
	ret
	.size	work__adder__ELAB, .-work__adder__ELAB
.globl work__adder__ARCH__adder_log__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__adder__ARCH__adder_log__INSTSIZE, @object
	.size	work__adder__ARCH__adder_log__INSTSIZE, 4
work__adder__ARCH__adder_log__INSTSIZE:
	.long	424
	.type	work__adder__ARCH__adder_log__P0__RTISTR, @object
	.size	work__adder__ARCH__adder_log__P0__RTISTR, 3
work__adder__ARCH__adder_log__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__adder__ARCH__adder_log__P0__RTIARRAY, @object
	.size	work__adder__ARCH__adder_log__P0__RTIARRAY, 4
work__adder__ARCH__adder_log__P0__RTIARRAY:
	.zero	4
.globl work__adder__ARCH__adder_log__P0__RTI
	.align 4
	.type	work__adder__ARCH__adder_log__P0__RTI, @object
	.size	work__adder__ARCH__adder_log__P0__RTI, 28
work__adder__ARCH__adder_log__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__adder__ARCH__adder_log__P0__RTISTR
	.long	392
	.long	work__adder__ARCH__adder_log__RTI
	.long	32
	.long	0
	.long	work__adder__ARCH__adder_log__P0__RTIARRAY
	.type	work__adder__ARCH__adder_log__RTISTR, @object
	.size	work__adder__ARCH__adder_log__RTISTR, 10
work__adder__ARCH__adder_log__RTISTR:
	.byte	97
	.byte	100
	.byte	100
	.byte	101
	.byte	114
	.byte	95
	.byte	108
	.byte	111
	.byte	103
	.byte	0
	.align 4
	.type	work__adder__ARCH__adder_log__RTIARRAY, @object
	.size	work__adder__ARCH__adder_log__RTIARRAY, 8
work__adder__ARCH__adder_log__RTIARRAY:
	.long	work__adder__ARCH__adder_log__P0__RTI
	.long	0
.globl work__adder__ARCH__adder_log__RTI
	.align 4
	.type	work__adder__ARCH__adder_log__RTI, @object
	.size	work__adder__ARCH__adder_log__RTI, 28
work__adder__ARCH__adder_log__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__adder__ARCH__adder_log__RTISTR
	.long	0
	.long	work__adder__RTI
	.long	424
	.long	1
	.long	work__adder__ARCH__adder_log__RTIARRAY
	.text
	.type	work__adder__ARCH__adder_log__P0__PROC, @function
work__adder__ARCH__adder_log__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$264, %esp
	call	__ghdl_stack2_mark
	movl	%eax, -92(%ebp)
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -84(%ebp)
	movl	$0, -80(%ebp)
.L13:
	cmpl	$32, -80(%ebp)
	jae	.L12
	movl	-80(%ebp), %ecx
	movl	-80(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -204(%ebp,%ecx)
	addl	$1, -80(%ebp)
	jmp	.L13
.L12:
	leal	-108(%ebp), %eax
	movl	%eax, -76(%ebp)
	leal	-204(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -108(%ebp)
	leal	-124(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	$work__adder__a__OT__STB, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, (%eax)
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-68(%ebp), %eax
	movb	%dl, 8(%eax)
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -60(%ebp)
	movl	$0, -56(%ebp)
.L15:
	cmpl	$32, -56(%ebp)
	jae	.L14
	movl	-56(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -236(%ebp,%ecx)
	addl	$1, -56(%ebp)
	jmp	.L15
.L14:
	leal	-132(%ebp), %eax
	movl	%eax, -52(%ebp)
	leal	-236(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-148(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	$work__adder__a__OT__STB, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, (%eax)
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-44(%ebp), %eax
	movb	%dl, 8(%eax)
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
	leal	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__numeric_std__OPPlO1
	leal	-156(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	leal	-172(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movb	%dl, 8(%eax)
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	leal	-156(%ebp), %eax
	movl	%eax, -88(%ebp)
.L18:
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	cmpl	$32, %eax
	jne	.L16
	movl	8(%ebp), %eax
	addl	$264, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L17
.L16:
	movl	$_UI00000000, %eax
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_bound_check_failed_l1
	jmp	.L18
.L17:
	cmpl	$32, -16(%ebp)
	jae	.L19
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$392, %eax
	addl	-16(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-88(%ebp), %eax
	movl	(%eax), %edx
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
	jmp	.L17
.L19:
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__ghdl_stack2_release
	leave
	ret
	.size	work__adder__ARCH__adder_log__P0__PROC, .-work__adder__ARCH__adder_log__P0__PROC
.globl work__adder__ARCH__adder_log__ELAB
	.type	work__adder__ARCH__adder_log__ELAB, @function
work__adder__ARCH__adder_log__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	$work__adder__ARCH__adder_log__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__adder__ELAB
	movl	-28(%ebp), %eax
	addl	$392, %eax
	movl	$work__adder__ARCH__adder_log__P0__PROC, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__adder__ARCH__adder_log__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-28(%ebp), %eax
	addl	$264, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
.L26:
	cmpl	$32, -20(%ebp)
	jae	.L25
	movl	-28(%ebp), %eax
	addl	$392, %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -20(%ebp)
	jmp	.L26
.L25:
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
.L28:
	cmpl	$32, -12(%ebp)
	jae	.L27
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -12(%ebp)
	jmp	.L28
.L27:
	movl	-28(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L30:
	cmpl	$32, -4(%ebp)
	jae	.L31
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -4(%ebp)
	jmp	.L30
.L31:
	leave
	ret
	.size	work__adder__ARCH__adder_log__ELAB, .-work__adder__ARCH__adder_log__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits
