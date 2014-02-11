	.file	"HelloCojac.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	longFromDouble, @function
longFromDouble:
.LFB0:
	.file 1 "HelloCojac.c"
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI1:
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	.loc 1 72 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	.loc 1 73 0
	leave
.LCFI2:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	longFromDouble, .-longFromDouble
	.type	doubleFromLong, @function
doubleFromLong:
.LFB1:
	.loc 1 74 0
	.cfi_startproc
	pushq	%rbp
.LCFI3:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI4:
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 75 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	.loc 1 76 0
	leave
.LCFI5:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	doubleFromLong, .-doubleFromLong
	.type	uintFromInt, @function
uintFromInt:
.LFB2:
	.loc 1 78 0
	.cfi_startproc
	pushq	%rbp
.LCFI6:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI7:
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 79 0
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	.loc 1 80 0
	leave
.LCFI8:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	uintFromInt, .-uintFromInt
	.type	intFromUInt, @function
intFromUInt:
.LFB3:
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp
.LCFI9:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI10:
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 82 0
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	.loc 1 83 0
	leave
.LCFI11:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	intFromUInt, .-intFromUInt
	.type	floatFromInt, @function
floatFromInt:
.LFB4:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp
.LCFI12:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI13:
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 85 0
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	.loc 1 86 0
	leave
.LCFI14:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	floatFromInt, .-floatFromInt
	.type	longFromTwoUInts, @function
longFromTwoUInts:
.LFB5:
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp
.LCFI15:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI16:
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 89 0
	mov	-20(%rbp), %eax
	movq	%rax, -8(%rbp)
	.loc 1 90 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	salq	$32, %rdx
	mov	-24(%rbp), %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 91 0
	movq	-8(%rbp), %rax
	.loc 1 92 0
	leave
.LCFI17:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	longFromTwoUInts, .-longFromTwoUInts
	.type	longFromTwoUInts_New, @function
longFromTwoUInts_New:
.LFB6:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp
.LCFI18:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI19:
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 94 0
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	.loc 1 95 0
	movq	-16(%rbp), %rax
	.loc 1 96 0
	leave
.LCFI20:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	longFromTwoUInts_New, .-longFromTwoUInts_New
	.type	longFromTwoInts, @function
longFromTwoInts:
.LFB7:
	.loc 1 98 0
	.cfi_startproc
	pushq	%rbp
.LCFI21:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI22:
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 99 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	.cfi_offset 3, -24
	call	uintFromInt
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	uintFromInt
	movl	%ebx, %esi
	movl	%eax, %edi
	call	longFromTwoUInts
	.loc 1 100 0
	addq	$24, %rsp
	popq	%rbx
	leave
.LCFI23:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	longFromTwoInts, .-longFromTwoInts
	.type	longToTwoUInts, @function
longToTwoUInts:
.LFB8:
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp
.LCFI24:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI25:
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 102 0
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 103 0
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 104 0
	leave
.LCFI26:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	longToTwoUInts, .-longToTwoUInts
	.type	longToTwoUInts_New, @function
longToTwoUInts_New:
.LFB9:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp
.LCFI27:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI28:
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 106 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 107 0
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 108 0
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 109 0
	leave
.LCFI29:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	longToTwoUInts_New, .-longToTwoUInts_New
	.type	longToTwoInts, @function
longToTwoInts:
.LFB10:
	.loc 1 111 0
	.cfi_startproc
	pushq	%rbp
.LCFI30:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI31:
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 113 0
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	longToTwoUInts
	.loc 1 114 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	intFromUInt
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 115 0
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	intFromUInt
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 116 0
	leave
.LCFI32:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	longToTwoInts, .-longToTwoInts
	.type	doubleFromTwoUInts, @function
doubleFromTwoUInts:
.LFB11:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp
.LCFI33:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI34:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 118 0
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	longFromTwoUInts
	movq	%rax, -8(%rbp)
	.loc 1 119 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	doubleFromLong
	.loc 1 120 0
	leave
.LCFI35:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	doubleFromTwoUInts, .-doubleFromTwoUInts
	.type	doubleFromTwoInts, @function
doubleFromTwoInts:
.LFB12:
	.loc 1 121 0
	.cfi_startproc
	pushq	%rbp
.LCFI36:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI37:
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 122 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	.cfi_offset 3, -24
	call	uintFromInt
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	uintFromInt
	movl	%ebx, %esi
	movl	%eax, %edi
	call	doubleFromTwoUInts
	.loc 1 123 0
	addq	$24, %rsp
	popq	%rbx
	leave
.LCFI38:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	doubleFromTwoInts, .-doubleFromTwoInts
	.type	doubleToTwoUInts, @function
doubleToTwoUInts:
.LFB13:
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp
.LCFI39:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI40:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	.loc 1 125 0
	movsd	-8(%rbp), %xmm0
	call	longFromDouble
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	longToTwoUInts
	.loc 1 126 0
	leave
.LCFI41:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	doubleToTwoUInts, .-doubleToTwoUInts
	.type	doubleToTwoInts, @function
doubleToTwoInts:
.LFB14:
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp
.LCFI42:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI43:
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movsd	%xmm0, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	.loc 1 129 0
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movsd	-24(%rbp), %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	doubleToTwoUInts
	.loc 1 130 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	intFromUInt
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 131 0
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	intFromUInt
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 132 0
	leave
.LCFI44:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	doubleToTwoInts, .-doubleToTwoInts
.globl shortFromInt
	.type	shortFromInt, @function
shortFromInt:
.LFB15:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp
.LCFI45:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI46:
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 136 0
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	.loc 1 137 0
	leave
.LCFI47:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	shortFromInt, .-shortFromInt
	.data
	.align 4
	.type	glob, @object
	.size	glob, 4
glob:
	.long	85
	.text
	.type	add32, @function
add32:
.LFB16:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp
.LCFI48:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI49:
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 149 0
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	leal	(%rdx,%rax), %eax
	.loc 1 150 0
	leave
.LCFI50:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	add32, .-add32
	.type	addU32, @function
addU32:
.LFB17:
	.loc 1 151 0
	.cfi_startproc
	pushq	%rbp
.LCFI51:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI52:
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 153 0
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	leal	(%rdx,%rax), %eax
	.loc 1 154 0
	leave
.LCFI53:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	addU32, .-addU32
	.type	add16, @function
add16:
.LFB18:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp
.LCFI54:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI55:
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	.loc 1 155 0
	movzwl	-4(%rbp), %edx
	movzwl	-8(%rbp), %eax
	leal	(%rdx,%rax), %eax
	leave
.LCFI56:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	add16, .-add16
	.type	cast32to16, @function
cast32to16:
.LFB19:
	.loc 1 156 0
	.cfi_startproc
	pushq	%rbp
.LCFI57:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI58:
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 156 0
	movl	-4(%rbp), %eax
	leave
.LCFI59:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	cast32to16, .-cast32to16
	.section	.rodata
.LC0:
	.string	"add64 %ld + %ld \n"
	.text
	.type	add64, @function
add64:
.LFB20:
	.loc 1 157 0
	.cfi_startproc
	pushq	%rbp
.LCFI60:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI61:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 158 0
	movl	$.LC0, %eax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	.loc 1 159 0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	.loc 1 160 0
	leave
.LCFI62:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	add64, .-add64
	.section	.rodata
.LC1:
	.string	"addU64 %lu + %lu \n"
	.text
	.type	addU64, @function
addU64:
.LFB21:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp
.LCFI63:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI64:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 162 0
	movl	$.LC1, %eax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	.loc 1 163 0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	.loc 1 164 0
	leave
.LCFI65:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	addU64, .-addU64
	.type	addFloat, @function
addFloat:
.LFB22:
	.loc 1 165 0
	.cfi_startproc
	pushq	%rbp
.LCFI66:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI67:
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	.loc 1 165 0
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC2(%rip), %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	cvtsi2ss	-4(%rbp), %xmm0
	leave
.LCFI68:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	addFloat, .-addFloat
	.type	addDouble, @function
addDouble:
.LFB23:
	.loc 1 166 0
	.cfi_startproc
	pushq	%rbp
.LCFI69:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI70:
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	.loc 1 174 0
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	.loc 1 175 0
	leave
.LCFI71:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	addDouble, .-addDouble
	.type	playWithDoubles, @function
playWithDoubles:
.LFB24:
	.loc 1 177 0
	.cfi_startproc
	pushq	%rbp
.LCFI72:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI73:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	.loc 1 178 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 179 0
	movl	$0, -4(%rbp)
	.loc 1 180 0
	movl	$0, -4(%rbp)
	jmp	.L26
.L27:
	.loc 1 181 0 discriminator 2
	movsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	-16(%rbp), %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	addDouble
	movsd	%xmm0, -16(%rbp)
	.loc 1 180 0 discriminator 2
	addl	$1, -4(%rbp)
.L26:
	.loc 1 180 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)
	jle	.L27
	.loc 1 183 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	.loc 1 184 0
	leave
.LCFI74:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	playWithDoubles, .-playWithDoubles
	.type	playWithFloats, @function
playWithFloats:
.LFB25:
	.loc 1 185 0
	.cfi_startproc
	pushq	%rbp
.LCFI75:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI76:
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)
	.loc 1 186 0
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 187 0
	movl	$0, -8(%rbp)
	.loc 1 188 0
	movl	$0, -8(%rbp)
	jmp	.L29
.L30:
	.loc 1 189 0 discriminator 2
	movss	-20(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 1 188 0 discriminator 2
	addl	$1, -8(%rbp)
.L29:
	.loc 1 188 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)
	jle	.L30
	.loc 1 191 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	.loc 1 192 0
	leave
.LCFI77:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	playWithFloats, .-playWithFloats
	.type	playWithLongs, @function
playWithLongs:
.LFB26:
	.loc 1 194 0
	.cfi_startproc
	pushq	%rbp
.LCFI78:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI79:
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 195 0
	movl	glob(%rip), %eax
	subl	$30579, %eax
	cltq
	addq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 196 0
	movl	$0, -4(%rbp)
	.loc 1 197 0
	movl	$0, -4(%rbp)
	jmp	.L32
.L33:
	.loc 1 198 0 discriminator 2
	movq	-24(%rbp), %rax
	imulq	-24(%rbp), %rax
	addq	%rax, -16(%rbp)
	.loc 1 197 0 discriminator 2
	addl	$1, -4(%rbp)
.L32:
	.loc 1 197 0 is_stmt 0 discriminator 1
	cmpl	$99, -4(%rbp)
	jle	.L33
	.loc 1 200 0 is_stmt 1
	movq	-16(%rbp), %rax
	.loc 1 201 0
	leave
.LCFI80:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	playWithLongs, .-playWithLongs
	.section	.rodata
	.align 8
.LC3:
	.string	"Error: %ld , should be %ld  %d / %d\n"
	.text
	.type	testLongFromUints, @function
testLongFromUints:
.LFB27:
	.loc 1 205 0
	.cfi_startproc
	pushq	%rbp
.LCFI81:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI82:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 206 0
	movl	$-1379351218, -16(%rbp)
	movl	$100, -12(%rbp)
	.loc 1 208 0
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	longToTwoUInts
	.loc 1 209 0
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	longFromTwoUInts
	movq	%rax, -24(%rbp)
	.loc 1 210 0
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L34
	.loc 1 211 0
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %ecx
	movl	$.LC3, %eax
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L34:
	.loc 1 212 0
	leave
.LCFI83:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	testLongFromUints, .-testLongFromUints
	.section	.rodata
	.align 8
.LC5:
	.string	"Error1: %f , should be %f  %d / %d\n"
	.align 8
.LC6:
	.string	"Error2: %f , should be %f  %d / %d\n"
.LC7:
	.string	"Error3:"
.LC8:
	.string	"Error4:"
	.text
	.type	testDoubleFromUint, @function
testDoubleFromUint:
.LFB28:
	.loc 1 213 0
	.cfi_startproc
	pushq	%rbp
.LCFI84:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI85:
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 214 0
	movabsq	$5377518902347826666, %rax
	movq	%rax, -24(%rbp)
	.loc 1 217 0
	leaq	-16(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movsd	-24(%rbp), %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	doubleToTwoInts
	.loc 1 218 0
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movsd	-24(%rbp), %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	doubleToTwoUInts
	.loc 1 219 0
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	doubleFromTwoInts
	movsd	%xmm0, -32(%rbp)
	.loc 1 220 0
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	doubleFromTwoUInts
	movsd	%xmm0, -40(%rbp)
	.loc 1 221 0
	movsd	-32(%rbp), %xmm0
	ucomisd	-24(%rbp), %xmm0
	jp	.L43
	movsd	-32(%rbp), %xmm0
	ucomisd	-24(%rbp), %xmm0
	je	.L37
.L43:
	.loc 1 222 0
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	$.LC5, %eax
	movsd	-24(%rbp), %xmm1
	movsd	-32(%rbp), %xmm0
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf
.L37:
	.loc 1 223 0
	movsd	-40(%rbp), %xmm0
	ucomisd	-24(%rbp), %xmm0
	jp	.L44
	movsd	-40(%rbp), %xmm0
	ucomisd	-24(%rbp), %xmm0
	je	.L39
.L44:
	.loc 1 224 0
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	$.LC6, %eax
	movsd	-24(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf
.L39:
	.loc 1 226 0
	movl	$-8730, -12(%rbp)
	.loc 1 227 0
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 1 228 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	uintFromInt
	movl	-12(%rbp), %edx
	cmpl	%edx, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	intFromUInt
	testl	%eax, %eax
	je	.L41
	.loc 1 229 0
	movl	$.LC7, %edi
	call	puts
.L41:
	.loc 1 230 0
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	intFromUInt
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	uintFromInt
	testl	%eax, %eax
	je	.L36
	.loc 1 231 0
	movl	$.LC8, %edi
	call	puts
.L36:
	.loc 1 233 0
	leave
.LCFI86:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	testDoubleFromUint, .-testDoubleFromUint
	.section	.rodata
.LC9:
	.string	"res2= %d"
.LC13:
	.string	"float: %f \n"
.LC15:
	.string	"double: %f \n"
.LC17:
	.string	"long: %ld \n"
	.text
.globl main1
	.type	main1, @function
main1:
.LFB29:
	.loc 1 235 0
	.cfi_startproc
	pushq	%rbp
.LCFI87:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI88:
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 237 0
	movl	$1685159, -8(%rbp)
	.loc 1 238 0
	movl	$0, -12(%rbp)
	.loc 1 239 0
	movb	$5, -1(%rbp)
	.loc 1 241 0
	movl	$0, -12(%rbp)
	jmp	.L46
.L47:
	.loc 1 242 0 discriminator 2
	movl	-8(%rbp), %eax
	imull	$119, %eax, %eax
	movl	%eax, -8(%rbp)
	.loc 1 243 0 discriminator 2
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	addl	%eax, -8(%rbp)
	.loc 1 241 0 discriminator 2
	addl	$1, -12(%rbp)
.L46:
	.loc 1 241 0 is_stmt 0 discriminator 1
	cmpl	$4, -12(%rbp)
	jle	.L47
	.loc 1 247 0 is_stmt 1
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 248 0
	movl	$715827882, -16(%rbp)
	.loc 1 249 0
	movl	$0, -12(%rbp)
	jmp	.L48
.L49:
	.loc 1 250 0 discriminator 2
	movl	-16(%rbp), %eax
	addl	%eax, -8(%rbp)
	.loc 1 249 0 discriminator 2
	addl	$1, -12(%rbp)
.L48:
	.loc 1 249 0 is_stmt 0 discriminator 1
	cmpl	$19, -12(%rbp)
	jle	.L49
	.loc 1 252 0 is_stmt 1
	movl	$145, %esi
	movl	$32759, %edi
	call	add16
	cwtl
	movl	%eax, -8(%rbp)
	.loc 1 253 0
	movl	$493447, %edi
	call	cast32to16
	movw	%ax, -4(%rbp)
	.loc 1 254 0
	movswl	-4(%rbp), %edx
	movl	$.LC9, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	.loc 1 256 0
	movl	$2147483643, -20(%rbp)
	movl	$8, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	add32
	movl	%eax, -24(%rbp)
	.loc 1 257 0
	movl	$-5, -40(%rbp)
	movl	$2147483647, -36(%rbp)
	movq	$8, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add64
	movq	%rax, -48(%rbp)
	.loc 1 258 0
	movl	$0x7f7fffff, %eax
	movl	%eax, -28(%rbp)
	movl	$0x7f7fffff, %eax
	movl	%eax, -32(%rbp)
	movss	-32(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	call	addFloat
	movss	%xmm0, -32(%rbp)
	.loc 1 260 0
	movss	-28(%rbp), %xmm0
	call	__isnanf
	testl	%eax, %eax
	je	.L50
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	$0x00000000, %eax
	movl	%eax, -28(%rbp)
.L50:
	.loc 1 262 0 is_stmt 1
	movss	.LC12(%rip), %xmm0
	call	playWithFloats
	movl	$.LC13, %eax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf
	.loc 1 263 0
	movsd	.LC14(%rip), %xmm0
	call	playWithDoubles
	movl	$.LC15, %eax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf
	.loc 1 264 0
	movsd	.LC16(%rip), %xmm0
	call	playWithDoubles
	movl	$.LC15, %eax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf
	.loc 1 265 0
	movl	$2, %edi
	call	playWithLongs
	movq	%rax, %rdx
	movl	$.LC17, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	.loc 1 267 0
	movl	$0, %eax
	.loc 1 268 0
	leave
.LCFI89:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	main1, .-main1
	.type	ulp, @function
ulp:
.LFB30:
	.loc 1 271 0
	.cfi_startproc
	pushq	%rbp
.LCFI90:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI91:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	.loc 1 272 0
	movsd	.LC18(%rip), %xmm1
	movsd	-8(%rbp), %xmm0
	call	nextafter
	subsd	-8(%rbp), %xmm0
	movsd	.LC19(%rip), %xmm1
	andpd	%xmm1, %xmm0
	.loc 1 273 0
	leave
.LCFI92:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ulp, .-ulp
	.type	ulpf, @function
ulpf:
.LFB31:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp
.LCFI93:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI94:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	.loc 1 275 0
	movss	-4(%rbp), %xmm0
	movss	.LC20(%rip), %xmm1
	call	nextafterf
	subss	-4(%rbp), %xmm0
	movss	.LC21(%rip), %xmm1
	andps	%xmm1, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	.loc 1 276 0
	leave
.LCFI95:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ulpf, .-ulpf
	.type	susp_comp_double, @function
susp_comp_double:
.LFB32:
	.loc 1 279 0
	.cfi_startproc
	pushq	%rbp
.LCFI96:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI97:
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.loc 1 280 0
	movabsq	$5281288228340972529, %rax
	movq	%rax, -8(%rbp)
	movabsq	$3954276820081169589, %rax
	movq	%rax, -16(%rbp)
	movabsq	$9218868437227405311, %rax
	movq	%rax, -24(%rbp)
	movabsq	$9218868437227405312, %rax
	movq	%rax, -32(%rbp)
	movabsq	$9221120237041090560, %rax
	movq	%rax, -40(%rbp)
	movl	$0, %eax
	movq	%rax, -48(%rbp)
	.loc 1 281 0
	movl	$0, %eax
	movq	%rax, -56(%rbp)
	.loc 1 282 0
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 283 0
	movsd	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 284 0
	movsd	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 285 0
	movsd	-32(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 286 0
	movsd	-8(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 287 0
	movsd	-16(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 288 0
	movsd	-48(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 289 0
	movsd	-8(%rbp), %xmm0
	call	ulp
	subsd	-8(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 290 0
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 1 291 0
	movabsq	$4614500768194494464, %rax
	movq	%rax, -56(%rbp)
	.loc 1 292 0
	leave
.LCFI98:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	susp_comp_double, .-susp_comp_double
	.type	susp_comp_float, @function
susp_comp_float:
.LFB33:
	.loc 1 294 0
	.cfi_startproc
	pushq	%rbp
.LCFI99:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI100:
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 295 0
	movl	$0x7f800000, %eax
	movl	%eax, -4(%rbp)
	movl	$0x00000010, %eax
	movl	%eax, -8(%rbp)
	movl	$0x7f7fffff, %eax
	movl	%eax, -12(%rbp)
	movl	$0x7f800000, %eax
	movl	%eax, -16(%rbp)
	movl	$0x7fc00000, %eax
	movl	%eax, -20(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -24(%rbp)
	.loc 1 296 0
	movl	$0x00000000, %eax
	movl	%eax, -28(%rbp)
	.loc 1 297 0
	movss	-4(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 298 0
	movss	-12(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 299 0
	movss	-4(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 300 0
	movss	-16(%rbp), %xmm0
	divss	-16(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 301 0
	movss	-4(%rbp), %xmm0
	divss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 302 0
	movss	-8(%rbp), %xmm0
	divss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 303 0
	movss	-24(%rbp), %xmm0
	divss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 304 0
	movss	-4(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC30(%rip), %xmm0
	xorps	%xmm1, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movss	-4(%rbp), %xmm0
	call	ulpf
	addsd	-48(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 305 0
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 1 306 0
	movl	$0x40500000, %eax
	movl	%eax, -28(%rbp)
	.loc 1 307 0
	leave
.LCFI101:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	susp_comp_float, .-susp_comp_float
	.type	susp_comp_int, @function
susp_comp_int:
.LFB34:
	.loc 1 309 0
	.cfi_startproc
	pushq	%rbp
.LCFI102:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI103:
	.cfi_def_cfa_register 6
	.loc 1 310 0
	movl	$2147483647, -4(%rbp)
	movl	$-2147483648, -8(%rbp)
	movl	$-1, -12(%rbp)
	.loc 1 311 0
	movl	$0, -16(%rbp)
	.loc 1 312 0
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -16(%rbp)
	.loc 1 313 0
	movl	-4(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	.loc 1 314 0
	movl	-8(%rbp), %eax
	negl	%eax
	movl	%eax, -16(%rbp)
	.loc 1 315 0
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	.loc 1 318 0
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%rbp)
	.loc 1 319 0
	leave
.LCFI104:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	susp_comp_int, .-susp_comp_int
	.type	susp_comp_Long, @function
susp_comp_Long:
.LFB35:
	.loc 1 321 0
	.cfi_startproc
	pushq	%rbp
.LCFI105:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI106:
	.cfi_def_cfa_register 6
	.loc 1 322 0
	movl	$-1, -8(%rbp)
	movl	$2147483647, -4(%rbp)
	movl	$0, -16(%rbp)
	movl	$-2147483648, -12(%rbp)
	movq	$-1, -24(%rbp)
	.loc 1 323 0
	movq	$0, -32(%rbp)
	.loc 1 324 0
	movq	-8(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	.loc 1 325 0
	movq	-8(%rbp), %rax
	imulq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 326 0
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -32(%rbp)
	.loc 1 327 0
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 328 0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc 1 329 0
	leave
.LCFI107:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	susp_comp_Long, .-susp_comp_Long
	.type	susp_comp_short, @function
susp_comp_short:
.LFB36:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp
.LCFI108:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI109:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 333 0
	movw	$32767, -2(%rbp)
	movw	$-32768, -4(%rbp)
	.loc 1 334 0
	movl	$0, -8(%rbp)
	.loc 1 335 0
	movswl	-2(%rbp), %edx
	movswl	-2(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	add16
	cwtl
	movl	%eax, -8(%rbp)
	.loc 1 336 0
	movswl	-2(%rbp), %edx
	movswl	-2(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 337 0
	movswl	-4(%rbp), %eax
	negl	%eax
	movl	%eax, -8(%rbp)
	.loc 1 338 0
	movswl	-2(%rbp), %edx
	movswl	-4(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 339 0
	leave
.LCFI110:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	susp_comp_short, .-susp_comp_short
	.type	suspecious_computations, @function
suspecious_computations:
.LFB37:
	.loc 1 341 0
	.cfi_startproc
	pushq	%rbp
.LCFI111:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI112:
	.cfi_def_cfa_register 6
	.loc 1 342 0
	movl	$0, %eax
	call	susp_comp_double
	.loc 1 343 0
	movl	$0, %eax
	call	susp_comp_float
	.loc 1 344 0
	movl	$0, %eax
	call	susp_comp_int
	.loc 1 345 0
	movl	$0, %eax
	call	susp_comp_Long
	.loc 1 346 0
	movl	$0, %eax
	call	susp_comp_short
	.loc 1 347 0
	leave
.LCFI113:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	suspecious_computations, .-suspecious_computations
	.type	norm_comp_double, @function
norm_comp_double:
.LFB38:
	.loc 1 350 0
	.cfi_startproc
	pushq	%rbp
.LCFI114:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI115:
	.cfi_def_cfa_register 6
	.loc 1 351 0
	movabsq	$5281288228340972529, %rax
	movq	%rax, -8(%rbp)
	movabsq	$3954276820081169589, %rax
	movq	%rax, -16(%rbp)
	movabsq	$9218868437227405311, %rax
	movq	%rax, -24(%rbp)
	movabsq	$9218868437227405312, %rax
	movq	%rax, -32(%rbp)
	movabsq	$9221120237041090560, %rax
	movq	%rax, -40(%rbp)
	movl	$0, %eax
	movq	%rax, -48(%rbp)
	movabsq	$4614253070214989087, %rax
	movq	%rax, -56(%rbp)
	.loc 1 352 0
	movl	$0, %eax
	movq	%rax, -64(%rbp)
	.loc 1 354 0
	movabsq	$4630544841867001856, %rax
	movq	%rax, -72(%rbp)
	movabsq	$4634837335261839360, %rax
	movq	%rax, -80(%rbp)
	.loc 1 355 0
	movsd	-72(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 356 0
	movsd	-72(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 357 0
	movsd	-72(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 358 0
	movsd	-72(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 360 0
	movsd	-8(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 361 0
	movsd	-16(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 362 0
	movsd	-24(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 363 0
	movsd	-24(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 364 0
	movsd	-56(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	.loc 1 365 0
	leave
.LCFI116:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	norm_comp_double, .-norm_comp_double
	.type	norm_comp_float, @function
norm_comp_float:
.LFB39:
	.loc 1 367 0
	.cfi_startproc
	pushq	%rbp
.LCFI117:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI118:
	.cfi_def_cfa_register 6
	.loc 1 368 0
	movl	$0x58886c99, %eax
	movl	%eax, -4(%rbp)
	movl	$0x28cf2a64, %eax
	movl	%eax, -8(%rbp)
	movl	$0x7f7fffff, %eax
	movl	%eax, -12(%rbp)
	movl	$0x7f800000, %eax
	movl	%eax, -16(%rbp)
	movl	$0x7fc00000, %eax
	movl	%eax, -20(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -24(%rbp)
	movl	$0x4048f5c3, %eax
	movl	%eax, -28(%rbp)
	.loc 1 369 0
	movl	$0x00000000, %eax
	movl	%eax, -32(%rbp)
	.loc 1 370 0
	movss	-4(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 1 371 0
	movss	-8(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 1 372 0
	movss	-12(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 1 373 0
	movss	-12(%rbp), %xmm0
	divss	-12(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 1 374 0
	movss	-28(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 1 375 0
	leave
.LCFI119:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	norm_comp_float, .-norm_comp_float
	.type	norm_comp_int, @function
norm_comp_int:
.LFB40:
	.loc 1 377 0
	.cfi_startproc
	pushq	%rbp
.LCFI120:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI121:
	.cfi_def_cfa_register 6
	.loc 1 379 0
	movl	$3, -4(%rbp)
	movl	$5, -8(%rbp)
	movl	$0, -12(%rbp)
	.loc 1 380 0
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 381 0
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 382 0
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%rbp)
	.loc 1 383 0
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-8(%rbp)
	movl	%eax, -12(%rbp)
	.loc 1 384 0
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 1 387 0
	movl	$3, -16(%rbp)
	movl	$5, -20(%rbp)
	movl	$0, -24(%rbp)
	.loc 1 388 0
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	.loc 1 389 0
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 390 0
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	.loc 1 391 0
	movl	-16(%rbp), %eax
	movl	$0, %edx
	divl	-20(%rbp)
	movl	%eax, -24(%rbp)
	.loc 1 392 0
	movl	-16(%rbp), %eax
	movl	$0, %edx
	divl	-20(%rbp)
	movl	%edx, -24(%rbp)
	.loc 1 393 0
	leave
.LCFI122:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	norm_comp_int, .-norm_comp_int
	.type	norm_comp_long, @function
norm_comp_long:
.LFB41:
	.loc 1 395 0
	.cfi_startproc
	pushq	%rbp
.LCFI123:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI124:
	.cfi_def_cfa_register 6
	.loc 1 397 0
	movq	$3, -8(%rbp)
	movq	$5, -16(%rbp)
	movq	$0, -24(%rbp)
	.loc 1 398 0
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 399 0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 400 0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 401 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	idivq	-16(%rbp)
	movq	%rax, -24(%rbp)
	.loc 1 402 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	idivq	-16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 405 0
	movq	$3, -32(%rbp)
	movq	$5, -40(%rbp)
	movq	$0, -48(%rbp)
	.loc 1 406 0
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 1 407 0
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 1 408 0
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -48(%rbp)
	.loc 1 409 0
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rax, -48(%rbp)
	.loc 1 410 0
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 1 412 0
	leave
.LCFI125:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	norm_comp_long, .-norm_comp_long
	.type	norm_comp_short, @function
norm_comp_short:
.LFB42:
	.loc 1 413 0
	.cfi_startproc
	pushq	%rbp
.LCFI126:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI127:
	.cfi_def_cfa_register 6
	.loc 1 415 0
	movw	$3, -2(%rbp)
	movw	$5, -4(%rbp)
	movw	$0, -6(%rbp)
	.loc 1 416 0
	movzwl	-2(%rbp), %edx
	movzwl	-4(%rbp), %eax
	imull	%edx, %eax
	movw	%ax, -6(%rbp)
	.loc 1 417 0
	movzwl	-2(%rbp), %edx
	movzwl	-4(%rbp), %eax
	leal	(%rdx,%rax), %eax
	movw	%ax, -6(%rbp)
	.loc 1 418 0
	movzwl	-2(%rbp), %edx
	movzwl	-4(%rbp), %eax
	movl	%edx, %ecx
	subw	%ax, %cx
	movl	%ecx, %eax
	movw	%ax, -6(%rbp)
	.loc 1 419 0
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %edx
	movl	%edx, -20(%rbp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-20(%rbp)
	movw	%ax, -6(%rbp)
	.loc 1 420 0
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	movw	%ax, -6(%rbp)
	.loc 1 423 0
	movw	$3, -8(%rbp)
	movw	$5, -10(%rbp)
	movw	$0, -12(%rbp)
	.loc 1 424 0
	movzwl	-8(%rbp), %eax
	imulw	-10(%rbp), %ax
	movw	%ax, -12(%rbp)
	.loc 1 425 0
	movzwl	-10(%rbp), %eax
	movzwl	-8(%rbp), %edx
	leal	(%rdx,%rax), %eax
	movw	%ax, -12(%rbp)
	.loc 1 426 0
	movzwl	-10(%rbp), %eax
	movzwl	-8(%rbp), %edx
	movl	%edx, %ecx
	subw	%ax, %cx
	movl	%ecx, %eax
	movw	%ax, -12(%rbp)
	.loc 1 427 0
	movzwl	-8(%rbp), %eax
	movl	$0, %edx
	divw	-10(%rbp)
	movw	%ax, -12(%rbp)
	.loc 1 428 0
	movzwl	-8(%rbp), %eax
	movl	$0, %edx
	divw	-10(%rbp)
	movw	%dx, -12(%rbp)
	.loc 1 429 0
	leave
.LCFI128:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	norm_comp_short, .-norm_comp_short
	.type	normal_computations, @function
normal_computations:
.LFB43:
	.loc 1 432 0
	.cfi_startproc
	pushq	%rbp
.LCFI129:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI130:
	.cfi_def_cfa_register 6
	.loc 1 433 0
	movl	$0, %eax
	call	norm_comp_double
	.loc 1 434 0
	movl	$0, %eax
	call	norm_comp_float
	.loc 1 435 0
	movl	$0, %eax
	call	norm_comp_int
	.loc 1 436 0
	movl	$0, %eax
	call	norm_comp_long
	.loc 1 437 0
	movl	$0, %eax
	call	norm_comp_short
	.loc 1 438 0
	leave
.LCFI131:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	normal_computations, .-normal_computations
.globl main
	.type	main, @function
main:
.LFB44:
	.loc 1 442 0
	.cfi_startproc
	pushq	%rbp
.LCFI132:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI133:
	.cfi_def_cfa_register 6
	.loc 1 443 0
	movl	$0, %eax
	call	suspecious_computations
	.loc 1 444 0
	movl	$0, %eax
	call	normal_computations
	.loc 1 445 0
	movl	$0, %eax
	.loc 1 446 0
	leave
.LCFI134:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.long	1190062592
	.align 4
.LC12:
	.long	1073741824
	.align 8
.LC14:
	.long	0
	.long	1073741824
	.align 8
.LC16:
	.long	343597384
	.long	1074349998
	.align 8
.LC18:
	.long	0
	.long	2146435072
	.align 16
.LC19:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 4
.LC20:
	.long	2139095040
	.align 16
.LC21:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 16
.LC30:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LFB0-.Ltext0
	.quad	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0-.Ltext0
	.quad	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1-.Ltext0
	.quad	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI2-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST1:
	.quad	.LFB1-.Ltext0
	.quad	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI3-.Ltext0
	.quad	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI4-.Ltext0
	.quad	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI5-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST2:
	.quad	.LFB2-.Ltext0
	.quad	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI6-.Ltext0
	.quad	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI7-.Ltext0
	.quad	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI8-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST3:
	.quad	.LFB3-.Ltext0
	.quad	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI9-.Ltext0
	.quad	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI10-.Ltext0
	.quad	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI11-.Ltext0
	.quad	.LFE3-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST4:
	.quad	.LFB4-.Ltext0
	.quad	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI12-.Ltext0
	.quad	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI13-.Ltext0
	.quad	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI14-.Ltext0
	.quad	.LFE4-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST5:
	.quad	.LFB5-.Ltext0
	.quad	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI15-.Ltext0
	.quad	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI16-.Ltext0
	.quad	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI17-.Ltext0
	.quad	.LFE5-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST6:
	.quad	.LFB6-.Ltext0
	.quad	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI18-.Ltext0
	.quad	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI19-.Ltext0
	.quad	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI20-.Ltext0
	.quad	.LFE6-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST7:
	.quad	.LFB7-.Ltext0
	.quad	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI21-.Ltext0
	.quad	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI22-.Ltext0
	.quad	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI23-.Ltext0
	.quad	.LFE7-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST8:
	.quad	.LFB8-.Ltext0
	.quad	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI24-.Ltext0
	.quad	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI25-.Ltext0
	.quad	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI26-.Ltext0
	.quad	.LFE8-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST9:
	.quad	.LFB9-.Ltext0
	.quad	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI27-.Ltext0
	.quad	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI28-.Ltext0
	.quad	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI29-.Ltext0
	.quad	.LFE9-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST10:
	.quad	.LFB10-.Ltext0
	.quad	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI30-.Ltext0
	.quad	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI31-.Ltext0
	.quad	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI32-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST11:
	.quad	.LFB11-.Ltext0
	.quad	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI33-.Ltext0
	.quad	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI34-.Ltext0
	.quad	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI35-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST12:
	.quad	.LFB12-.Ltext0
	.quad	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI36-.Ltext0
	.quad	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI37-.Ltext0
	.quad	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI38-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST13:
	.quad	.LFB13-.Ltext0
	.quad	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI39-.Ltext0
	.quad	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI40-.Ltext0
	.quad	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI41-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST14:
	.quad	.LFB14-.Ltext0
	.quad	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI42-.Ltext0
	.quad	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI43-.Ltext0
	.quad	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI44-.Ltext0
	.quad	.LFE14-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST15:
	.quad	.LFB15-.Ltext0
	.quad	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI45-.Ltext0
	.quad	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI46-.Ltext0
	.quad	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI47-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST16:
	.quad	.LFB16-.Ltext0
	.quad	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI48-.Ltext0
	.quad	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI49-.Ltext0
	.quad	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI50-.Ltext0
	.quad	.LFE16-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST17:
	.quad	.LFB17-.Ltext0
	.quad	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI51-.Ltext0
	.quad	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI52-.Ltext0
	.quad	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI53-.Ltext0
	.quad	.LFE17-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST18:
	.quad	.LFB18-.Ltext0
	.quad	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI54-.Ltext0
	.quad	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI55-.Ltext0
	.quad	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI56-.Ltext0
	.quad	.LFE18-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST19:
	.quad	.LFB19-.Ltext0
	.quad	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI57-.Ltext0
	.quad	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI58-.Ltext0
	.quad	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI59-.Ltext0
	.quad	.LFE19-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST20:
	.quad	.LFB20-.Ltext0
	.quad	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI60-.Ltext0
	.quad	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI61-.Ltext0
	.quad	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI62-.Ltext0
	.quad	.LFE20-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST21:
	.quad	.LFB21-.Ltext0
	.quad	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI63-.Ltext0
	.quad	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI64-.Ltext0
	.quad	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI65-.Ltext0
	.quad	.LFE21-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST22:
	.quad	.LFB22-.Ltext0
	.quad	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI66-.Ltext0
	.quad	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI67-.Ltext0
	.quad	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI68-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST23:
	.quad	.LFB23-.Ltext0
	.quad	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI69-.Ltext0
	.quad	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI70-.Ltext0
	.quad	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI71-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST24:
	.quad	.LFB24-.Ltext0
	.quad	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI72-.Ltext0
	.quad	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI73-.Ltext0
	.quad	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI74-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST25:
	.quad	.LFB25-.Ltext0
	.quad	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI75-.Ltext0
	.quad	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI76-.Ltext0
	.quad	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI77-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST26:
	.quad	.LFB26-.Ltext0
	.quad	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI78-.Ltext0
	.quad	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI79-.Ltext0
	.quad	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI80-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST27:
	.quad	.LFB27-.Ltext0
	.quad	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI81-.Ltext0
	.quad	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI82-.Ltext0
	.quad	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI83-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST28:
	.quad	.LFB28-.Ltext0
	.quad	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI84-.Ltext0
	.quad	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI85-.Ltext0
	.quad	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI86-.Ltext0
	.quad	.LFE28-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST29:
	.quad	.LFB29-.Ltext0
	.quad	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI87-.Ltext0
	.quad	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI88-.Ltext0
	.quad	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI89-.Ltext0
	.quad	.LFE29-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST30:
	.quad	.LFB30-.Ltext0
	.quad	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI90-.Ltext0
	.quad	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI91-.Ltext0
	.quad	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI92-.Ltext0
	.quad	.LFE30-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST31:
	.quad	.LFB31-.Ltext0
	.quad	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI93-.Ltext0
	.quad	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI94-.Ltext0
	.quad	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI95-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST32:
	.quad	.LFB32-.Ltext0
	.quad	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI96-.Ltext0
	.quad	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI97-.Ltext0
	.quad	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI98-.Ltext0
	.quad	.LFE32-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST33:
	.quad	.LFB33-.Ltext0
	.quad	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI99-.Ltext0
	.quad	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI100-.Ltext0
	.quad	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI101-.Ltext0
	.quad	.LFE33-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST34:
	.quad	.LFB34-.Ltext0
	.quad	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI102-.Ltext0
	.quad	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI103-.Ltext0
	.quad	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI104-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST35:
	.quad	.LFB35-.Ltext0
	.quad	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI105-.Ltext0
	.quad	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI106-.Ltext0
	.quad	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI107-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST36:
	.quad	.LFB36-.Ltext0
	.quad	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI108-.Ltext0
	.quad	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI109-.Ltext0
	.quad	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI110-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST37:
	.quad	.LFB37-.Ltext0
	.quad	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI111-.Ltext0
	.quad	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI112-.Ltext0
	.quad	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI113-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST38:
	.quad	.LFB38-.Ltext0
	.quad	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI114-.Ltext0
	.quad	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI115-.Ltext0
	.quad	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI116-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST39:
	.quad	.LFB39-.Ltext0
	.quad	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI117-.Ltext0
	.quad	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI118-.Ltext0
	.quad	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI119-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST40:
	.quad	.LFB40-.Ltext0
	.quad	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI120-.Ltext0
	.quad	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI121-.Ltext0
	.quad	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI122-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST41:
	.quad	.LFB41-.Ltext0
	.quad	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI123-.Ltext0
	.quad	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI124-.Ltext0
	.quad	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI125-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST42:
	.quad	.LFB42-.Ltext0
	.quad	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI126-.Ltext0
	.quad	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI127-.Ltext0
	.quad	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI128-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST43:
	.quad	.LFB43-.Ltext0
	.quad	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI129-.Ltext0
	.quad	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI130-.Ltext0
	.quad	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI131-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
.LLST44:
	.quad	.LFB44-.Ltext0
	.quad	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI132-.Ltext0
	.quad	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI133-.Ltext0
	.quad	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI134-.Ltext0
	.quad	.LFE44-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0x0
	.quad	0x0
	.file 2 "/usr/include/sys/types.h"
	.file 3 "/usr/include/stdint.h"
	.section	.debug_info
	.long	0x10c3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF93
	.byte	0x1
	.long	.LASF94
	.long	.LASF95
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x50
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0xc5
	.long	0x57
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0xc6
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x32
	.long	0x3b
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x34
	.long	0x42
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x38
	.long	0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF16
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF17
	.uleb128 0x4
	.long	.LASF18
	.byte	0x1
	.byte	0x16
	.long	0xc3
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0x17
	.long	0xbc
	.uleb128 0x4
	.long	.LASF20
	.byte	0x1
	.byte	0x18
	.long	0xb1
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x19
	.long	0x89
	.uleb128 0x4
	.long	.LASF22
	.byte	0x1
	.byte	0x1a
	.long	0xa6
	.uleb128 0x5
	.string	"Int"
	.byte	0x1
	.byte	0x1b
	.long	0x7e
	.uleb128 0x4
	.long	.LASF23
	.byte	0x1
	.byte	0x1c
	.long	0x9b
	.uleb128 0x4
	.long	.LASF24
	.byte	0x1
	.byte	0x1d
	.long	0x73
	.uleb128 0x4
	.long	.LASF25
	.byte	0x1
	.byte	0x1e
	.long	0x34
	.uleb128 0x4
	.long	.LASF26
	.byte	0x1
	.byte	0x1f
	.long	0x49
	.uleb128 0x6
	.byte	0x1
	.byte	0x1
	.byte	0x22
	.long	0x153
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x23
	.long	0x122
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x24
	.long	0x12d
	.byte	0x0
	.uleb128 0x4
	.long	.LASF27
	.byte	0x1
	.byte	0x25
	.long	0x138
	.uleb128 0x8
	.byte	0x2
	.byte	0x1
	.byte	0x2a
	.long	0x181
	.uleb128 0x9
	.string	"h2"
	.byte	0x1
	.byte	0x2b
	.long	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"h1"
	.byte	0x1
	.byte	0x2c
	.long	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x1
	.byte	0x27
	.long	0x1a7
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x28
	.long	0x10c
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x29
	.long	0x117
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x2d
	.long	0x15e
	.byte	0x0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x1
	.byte	0x2e
	.long	0x181
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0x34
	.long	0x1d5
	.uleb128 0x9
	.string	"h2"
	.byte	0x1
	.byte	0x35
	.long	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"h1"
	.byte	0x1
	.byte	0x36
	.long	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x30
	.long	0x204
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x31
	.long	0xf6
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x32
	.long	0x101
	.uleb128 0x7
	.string	"f"
	.byte	0x1
	.byte	0x33
	.long	0xd5
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x37
	.long	0x1b2
	.byte	0x0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x1
	.byte	0x38
	.long	0x1d5
	.uleb128 0x8
	.byte	0x8
	.byte	0x1
	.byte	0x3e
	.long	0x232
	.uleb128 0x9
	.string	"h2"
	.byte	0x1
	.byte	0x3f
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"h1"
	.byte	0x1
	.byte	0x40
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.byte	0x1
	.byte	0x3a
	.long	0x261
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x3b
	.long	0xe0
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x3c
	.long	0xeb
	.uleb128 0x7
	.string	"f"
	.byte	0x1
	.byte	0x3d
	.long	0xca
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x41
	.long	0x20f
	.byte	0x0
	.uleb128 0x4
	.long	.LASF31
	.byte	0x1
	.byte	0x42
	.long	0x232
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.long	0xe0
	.quad	.LFB0
	.quad	.LFE0
	.long	.LLST0
	.long	0x2a9
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x47
	.long	0xca
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x48
	.long	0x261
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0xc3
	.quad	.LFB1
	.quad	.LFE1
	.long	.LLST1
	.long	0x2e6
	.uleb128 0xc
	.string	"l"
	.byte	0x1
	.byte	0x4a
	.long	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x4b
	.long	0x261
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	0xf6
	.quad	.LFB2
	.quad	.LFE2
	.long	.LLST2
	.long	0x323
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x4e
	.long	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x4f
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x101
	.quad	.LFB3
	.quad	.LFE3
	.long	.LLST3
	.long	0x360
	.uleb128 0xc
	.string	"u"
	.byte	0x1
	.byte	0x51
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x52
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.long	0xd5
	.quad	.LFB4
	.quad	.LFE4
	.long	.LLST4
	.long	0x39d
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x54
	.long	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x55
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0xe0
	.quad	.LFB5
	.quad	.LFE5
	.long	.LLST5
	.long	0x3e6
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x58
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x58
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x59
	.long	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF38
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0xe0
	.quad	.LFB6
	.quad	.LFE6
	.long	.LLST6
	.long	0x42f
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x5d
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x5d
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x5e
	.long	0x261
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0xe0
	.quad	.LFB7
	.quad	.LFE7
	.long	.LLST7
	.long	0x46c
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x62
	.long	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x62
	.long	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8
	.long	.LLST8
	.long	0x4b1
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x65
	.long	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x65
	.long	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x65
	.long	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0xf
	.byte	0x8
	.long	0xf6
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.quad	.LFB9
	.quad	.LFE9
	.long	.LLST9
	.long	0x508
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x69
	.long	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x69
	.long	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x69
	.long	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x6a
	.long	0x261
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10
	.long	.LLST10
	.long	0x567
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x6f
	.long	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x6f
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x6f
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0x70
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0x70
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xf
	.byte	0x8
	.long	0x101
	.uleb128 0xb
	.long	.LASF43
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0xc3
	.quad	.LFB11
	.quad	.LFE11
	.long	.LLST11
	.long	0x5b6
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x75
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x75
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x76
	.long	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	0xc3
	.quad	.LFB12
	.quad	.LFE12
	.long	.LLST12
	.long	0x5f3
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x79
	.long	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x79
	.long	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.quad	.LFB13
	.quad	.LFE13
	.long	.LLST13
	.long	0x638
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x7c
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x7c
	.long	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x7c
	.long	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14
	.long	.LLST14
	.long	0x697
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x7f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x7f
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x7f
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0x80
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0x80
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0x117
	.quad	.LFB15
	.quad	.LFE15
	.long	.LLST15
	.long	0x6d5
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x87
	.long	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x88
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x57
	.quad	.LFB16
	.quad	.LFE16
	.long	.LLST16
	.long	0x712
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x93
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x93
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	0x42
	.quad	.LFB17
	.quad	.LFE17
	.long	.LLST17
	.long	0x74f
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x97
	.long	0x42
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x97
	.long	0x42
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x50
	.quad	.LFB18
	.quad	.LFE18
	.long	.LLST18
	.long	0x78c
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9b
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x9b
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x50
	.quad	.LFB19
	.quad	.LFE19
	.long	.LLST19
	.long	0x7bd
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x89
	.quad	.LFB20
	.quad	.LFE20
	.long	.LLST20
	.long	0x7fa
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9d
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.long	0xb1
	.quad	.LFB21
	.quad	.LFE21
	.long	.LLST21
	.long	0x837
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa1
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xa1
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0xbc
	.quad	.LFB22
	.quad	.LFE22
	.long	.LLST22
	.long	0x882
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa5
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xa5
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xa5
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0xc3
	.quad	.LFB23
	.quad	.LFE23
	.long	.LLST23
	.long	0x8bf
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xa6
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	0xc3
	.quad	.LFB24
	.quad	.LFE24
	.long	.LLST24
	.long	0x90a
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xb1
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xb2
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xb
	.long	.LASF56
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.long	0xc3
	.quad	.LFB25
	.quad	.LFE25
	.long	.LLST25
	.long	0x955
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xb9
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xba
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x89
	.quad	.LFB26
	.quad	.LFE26
	.long	.LLST26
	.long	0x9a0
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xc2
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xc3
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.byte	0xcd
	.quad	.LFB27
	.quad	.LFE27
	.long	.LLST27
	.long	0x9f3
	.uleb128 0xd
	.string	"l"
	.byte	0x1
	.byte	0xce
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0xcf
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0xcf
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"r1"
	.byte	0x1
	.byte	0xd1
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0xd5
	.quad	.LFB28
	.quad	.LFE28
	.long	.LLST28
	.long	0xa6b
	.uleb128 0xd
	.string	"d"
	.byte	0x1
	.byte	0xd6
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0xd7
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0xd7
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0xd8
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0xd8
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"r1"
	.byte	0x1
	.byte	0xdb
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"r2"
	.byte	0x1
	.byte	0xdc
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x57
	.quad	.LFB29
	.quad	.LFE29
	.long	.LLST29
	.long	0xb2b
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xed
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xee
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0xef
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xd
	.string	"inc"
	.byte	0x1
	.byte	0xf8
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.byte	0xfd
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"ia"
	.byte	0x1
	.value	0x100
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"ib"
	.byte	0x1
	.value	0x100
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"lla"
	.byte	0x1
	.value	0x101
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"llb"
	.byte	0x1
	.value	0x101
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"fla"
	.byte	0x1
	.value	0x102
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"flb"
	.byte	0x1
	.value	0x102
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x14
	.string	"ulp"
	.byte	0x1
	.value	0x10f
	.byte	0x1
	.long	0xc3
	.quad	.LFB30
	.quad	.LFE30
	.long	.LLST30
	.long	0xb5e
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x10f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0xc3
	.quad	.LFB31
	.quad	.LFE31
	.long	.LLST31
	.long	0xb91
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x112
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x117
	.quad	.LFB32
	.quad	.LFE32
	.long	.LLST32
	.long	0xc1a
	.uleb128 0x18
	.long	.LASF65
	.byte	0x1
	.value	0x118
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x118
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"max"
	.byte	0x1
	.value	0x118
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"inf"
	.byte	0x1
	.value	0x118
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"nan"
	.byte	0x1
	.value	0x118
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x118
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.value	0x119
	.long	0xc3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.value	0x126
	.quad	.LFB33
	.quad	.LFE33
	.long	.LLST33
	.long	0xca2
	.uleb128 0x18
	.long	.LASF65
	.byte	0x1
	.value	0x127
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x127
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"max"
	.byte	0x1
	.value	0x127
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"inf"
	.byte	0x1
	.value	0x127
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"nan"
	.byte	0x1
	.value	0x127
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x127
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.value	0x128
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.value	0x135
	.quad	.LFB34
	.quad	.LFE34
	.long	.LLST34
	.long	0xcfd
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0x136
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.value	0x136
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF72
	.byte	0x1
	.value	0x136
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x137
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.value	0x141
	.quad	.LFB35
	.quad	.LFE35
	.long	.LLST35
	.long	0xd58
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0x142
	.long	0xeb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.value	0x142
	.long	0xeb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF72
	.byte	0x1
	.value	0x142
	.long	0xeb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x143
	.long	0xeb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x14b
	.quad	.LFB36
	.quad	.LFE36
	.long	.LLST36
	.long	0xda4
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.value	0x14d
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0x14d
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x14e
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x19
	.long	.LASF90
	.byte	0x1
	.value	0x155
	.quad	.LFB37
	.quad	.LFE37
	.long	.LLST37
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.value	0x15e
	.quad	.LFB38
	.quad	.LFE38
	.long	.LLST38
	.long	0xe78
	.uleb128 0x18
	.long	.LASF65
	.byte	0x1
	.value	0x15f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x15f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"max"
	.byte	0x1
	.value	0x15f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"inf"
	.byte	0x1
	.value	0x15f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"nan"
	.byte	0x1
	.value	0x15f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x15f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"pi"
	.byte	0x1
	.value	0x15f
	.long	0xc3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.value	0x160
	.long	0xc3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF78
	.byte	0x1
	.value	0x162
	.long	0xc3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.value	0x162
	.long	0xc3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.value	0x16f
	.quad	.LFB39
	.quad	.LFE39
	.long	.LLST39
	.long	0xf0f
	.uleb128 0x18
	.long	.LASF81
	.byte	0x1
	.value	0x170
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x170
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.value	0x170
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.value	0x170
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF85
	.byte	0x1
	.value	0x170
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.value	0x170
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"pif"
	.byte	0x1
	.value	0x170
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"f"
	.byte	0x1
	.value	0x171
	.long	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x17
	.long	.LASF87
	.byte	0x1
	.value	0x179
	.quad	.LFB40
	.quad	.LFE40
	.long	.LLST40
	.long	0xf84
	.uleb128 0x13
	.string	"si"
	.byte	0x1
	.value	0x17b
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"sj"
	.byte	0x1
	.value	0x17b
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"sr"
	.byte	0x1
	.value	0x17b
	.long	0x7e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"ui"
	.byte	0x1
	.value	0x183
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"uj"
	.byte	0x1
	.value	0x183
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"ur"
	.byte	0x1
	.value	0x183
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0x18b
	.quad	.LFB41
	.quad	.LFE41
	.long	.LLST41
	.long	0xff9
	.uleb128 0x13
	.string	"si"
	.byte	0x1
	.value	0x18d
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"sj"
	.byte	0x1
	.value	0x18d
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"sr"
	.byte	0x1
	.value	0x18d
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"ui"
	.byte	0x1
	.value	0x195
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"uj"
	.byte	0x1
	.value	0x195
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"ur"
	.byte	0x1
	.value	0x195
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0x19d
	.quad	.LFB42
	.quad	.LFE42
	.long	.LLST42
	.long	0x1074
	.uleb128 0x13
	.string	"sis"
	.byte	0x1
	.value	0x19f
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x13
	.string	"sjs"
	.byte	0x1
	.value	0x19f
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"srs"
	.byte	0x1
	.value	0x19f
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x13
	.string	"uis"
	.byte	0x1
	.value	0x1a7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"ujs"
	.byte	0x1
	.value	0x1a7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x13
	.string	"urs"
	.byte	0x1
	.value	0x1a7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.value	0x1b0
	.quad	.LFB43
	.quad	.LFE43
	.long	.LLST43
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.value	0x1ba
	.long	0x57
	.quad	.LFB44
	.quad	.LFE44
	.long	.LLST44
	.uleb128 0x12
	.long	.LASF92
	.byte	0x1
	.byte	0x92
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	glob
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x32
	.value	0x2
	.long	.Ldebug_info0
	.long	0x10c7
	.long	0x697
	.string	"shortFromInt"
	.long	0xa6b
	.string	"main1"
	.long	0x1090
	.string	"main"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0xe9
	.value	0x2
	.long	.Ldebug_info0
	.long	0x10c7
	.long	0x73
	.string	"int16_t"
	.long	0x7e
	.string	"int32_t"
	.long	0x89
	.string	"int64_t"
	.long	0x9b
	.string	"uint16_t"
	.long	0xa6
	.string	"uint32_t"
	.long	0xb1
	.string	"uint64_t"
	.long	0xca
	.string	"Double"
	.long	0xd5
	.string	"Float"
	.long	0xe0
	.string	"ULong"
	.long	0xeb
	.string	"Long"
	.long	0xf6
	.string	"UInt"
	.long	0x101
	.string	"Int"
	.long	0x10c
	.string	"UShort"
	.long	0x117
	.string	"Short"
	.long	0x122
	.string	"UChar"
	.long	0x12d
	.string	"Char"
	.long	0x153
	.string	"mix8_t"
	.long	0x1a7
	.string	"mix16_t"
	.long	0x204
	.string	"mix32_t"
	.long	0x261
	.string	"mix64_t"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0x0
	.value	0x0
	.value	0x0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"mix16_t"
.LASF73:
	.string	"susp_comp_Long"
.LASF76:
	.string	"smin"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"longToTwoInts"
.LASF36:
	.string	"floatFromInt"
.LASF51:
	.string	"add64"
.LASF31:
	.string	"mix64_t"
.LASF82:
	.string	"smallf"
.LASF39:
	.string	"longFromTwoInts"
.LASF75:
	.string	"smax"
.LASF55:
	.string	"playWithDoubles"
.LASF86:
	.string	"zerof"
.LASF14:
	.string	"uint32_t"
.LASF92:
	.string	"glob"
.LASF48:
	.string	"addU32"
.LASF16:
	.string	"float"
.LASF74:
	.string	"susp_comp_short"
.LASF60:
	.string	"shortFromInt"
.LASF9:
	.string	"int16_t"
.LASF57:
	.string	"playWithLongs"
.LASF91:
	.string	"normal_computations"
.LASF12:
	.string	"long long unsigned int"
.LASF66:
	.string	"small"
.LASF11:
	.string	"int64_t"
.LASF72:
	.string	"minusOne"
.LASF65:
	.string	"large"
.LASF53:
	.string	"addFloat"
.LASF19:
	.string	"Float"
.LASF71:
	.string	"imin"
.LASF77:
	.string	"norm_comp_double"
.LASF79:
	.string	"seventythree"
.LASF81:
	.string	"largef"
.LASF7:
	.string	"char"
.LASF52:
	.string	"addU64"
.LASF93:
	.string	"GNU C 4.5.2"
.LASF33:
	.string	"doubleFromLong"
.LASF44:
	.string	"doubleFromTwoInts"
.LASF64:
	.string	"susp_comp_double"
.LASF38:
	.string	"longFromTwoUInts_New"
.LASF28:
	.string	"halves"
.LASF35:
	.string	"intFromUInt"
.LASF8:
	.string	"long long int"
.LASF67:
	.string	"zero"
.LASF32:
	.string	"longFromDouble"
.LASF37:
	.string	"longFromTwoUInts"
.LASF20:
	.string	"ULong"
.LASF59:
	.string	"testDoubleFromUint"
.LASF18:
	.string	"Double"
.LASF84:
	.string	"inff"
.LASF30:
	.string	"mix32_t"
.LASF43:
	.string	"doubleFromTwoUInts"
.LASF95:
	.string	"/home/fred/workspace/HelloCojac/src"
.LASF23:
	.string	"UShort"
.LASF58:
	.string	"testLongFromUints"
.LASF87:
	.string	"norm_comp_int"
.LASF90:
	.string	"suspecious_computations"
.LASF13:
	.string	"uint16_t"
.LASF46:
	.string	"doubleToTwoInts"
.LASF24:
	.string	"Short"
.LASF56:
	.string	"playWithFloats"
.LASF5:
	.string	"short int"
.LASF69:
	.string	"susp_comp_int"
.LASF6:
	.string	"long int"
.LASF88:
	.string	"norm_comp_long"
.LASF27:
	.string	"mix8_t"
.LASF34:
	.string	"uintFromInt"
.LASF41:
	.string	"longToTwoUInts_New"
.LASF25:
	.string	"UChar"
.LASF78:
	.string	"thirtyeight"
.LASF15:
	.string	"uint64_t"
.LASF50:
	.string	"cast32to16"
.LASF40:
	.string	"longToTwoUInts"
.LASF45:
	.string	"doubleToTwoUInts"
.LASF21:
	.string	"Long"
.LASF63:
	.string	"ulpf"
.LASF49:
	.string	"add16"
.LASF0:
	.string	"long unsigned int"
.LASF94:
	.string	"HelloCojac.c"
.LASF10:
	.string	"int32_t"
.LASF85:
	.string	"nanf"
.LASF80:
	.string	"norm_comp_float"
.LASF1:
	.string	"unsigned char"
.LASF61:
	.string	"main1"
.LASF70:
	.string	"imax"
.LASF62:
	.string	"res2"
.LASF22:
	.string	"UInt"
.LASF47:
	.string	"add32"
.LASF83:
	.string	"maxf"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF96:
	.string	"main"
.LASF17:
	.string	"double"
.LASF68:
	.string	"susp_comp_float"
.LASF26:
	.string	"Char"
.LASF54:
	.string	"addDouble"
.LASF89:
	.string	"norm_comp_short"
	.ident	"GCC: (Ubuntu/Linaro 4.5.2-8ubuntu4) 4.5.2"
	.section	.note.GNU-stack,"",@progbits
