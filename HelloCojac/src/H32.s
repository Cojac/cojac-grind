	.file	"HelloCojac.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.type	longFromDouble, @function
longFromDouble:
.LFB0:
	.file 1 "HelloCojac.c"
	.loc 1 71 0
	.cfi_startproc
	pushl	%ebp
.LCFI0:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI1:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 72 0
	fldl	-24(%ebp)
	fstpl	-8(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	.loc 1 73 0
	leave
	.cfi_restore 5
.LCFI2:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	longFromDouble, .-longFromDouble
	.type	doubleFromLong, @function
doubleFromLong:
.LFB1:
	.loc 1 74 0
	.cfi_startproc
	pushl	%ebp
.LCFI3:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI4:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 75 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -8(%ebp)
	movl	%edx, -4(%ebp)
	fldl	-8(%ebp)
	.loc 1 76 0
	leave
	.cfi_restore 5
.LCFI5:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	doubleFromLong, .-doubleFromLong
	.type	uintFromInt, @function
uintFromInt:
.LFB2:
	.loc 1 78 0
	.cfi_startproc
	pushl	%ebp
.LCFI6:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI7:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 79 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	.loc 1 80 0
	leave
	.cfi_restore 5
.LCFI8:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	uintFromInt, .-uintFromInt
	.type	intFromUInt, @function
intFromUInt:
.LFB3:
	.loc 1 81 0
	.cfi_startproc
	pushl	%ebp
.LCFI9:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI10:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 82 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	.loc 1 83 0
	leave
	.cfi_restore 5
.LCFI11:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	intFromUInt, .-intFromUInt
	.type	floatFromInt, @function
floatFromInt:
.LFB4:
	.loc 1 84 0
	.cfi_startproc
	pushl	%ebp
.LCFI12:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI13:
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 85 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	flds	-20(%ebp)
	.loc 1 86 0
	leave
	.cfi_restore 5
.LCFI14:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	floatFromInt, .-floatFromInt
	.type	longFromTwoUInts, @function
longFromTwoUInts:
.LFB5:
	.loc 1 88 0
	.cfi_startproc
	pushl	%ebp
.LCFI15:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI16:
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 90 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%ecx, %ebx
	movl	$0, %ecx
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	orl	%eax, %esi
	movl	%esi, -16(%ebp)
	movl	%ebx, %eax
	orl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 91 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	.loc 1 92 0
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
.LCFI17:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	longFromTwoUInts, .-longFromTwoUInts
	.type	longFromTwoUInts_New, @function
longFromTwoUInts_New:
.LFB6:
	.loc 1 93 0
	.cfi_startproc
	pushl	%ebp
.LCFI18:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI19:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 94 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 95 0
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	.loc 1 96 0
	leave
	.cfi_restore 5
.LCFI20:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	longFromTwoUInts_New, .-longFromTwoUInts_New
	.type	longFromTwoInts, @function
longFromTwoInts:
.LFB7:
	.loc 1 98 0
	.cfi_startproc
	pushl	%ebp
.LCFI21:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI22:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.loc 1 99 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	uintFromInt
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uintFromInt
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	longFromTwoUInts
	.loc 1 100 0
	addl	$12, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
.LCFI23:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	longFromTwoInts, .-longFromTwoInts
	.type	longToTwoUInts, @function
longToTwoUInts:
.LFB8:
	.loc 1 101 0
	.cfi_startproc
	pushl	%ebp
.LCFI24:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI25:
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 102 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 103 0
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 104 0
	leave
	.cfi_restore 5
.LCFI26:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	longToTwoUInts, .-longToTwoUInts
	.type	longToTwoUInts_New, @function
longToTwoUInts_New:
.LFB9:
	.loc 1 105 0
	.cfi_startproc
	pushl	%ebp
.LCFI27:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI28:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 106 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -8(%ebp)
	movl	%edx, -4(%ebp)
	.loc 1 107 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 108 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 109 0
	leave
	.cfi_restore 5
.LCFI29:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	longToTwoUInts_New, .-longToTwoUInts_New
	.type	longToTwoInts, @function
longToTwoInts:
.LFB10:
	.loc 1 111 0
	.cfi_startproc
	pushl	%ebp
.LCFI30:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI31:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 113 0
	leal	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	longToTwoUInts
	.loc 1 114 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	intFromUInt
	movl	16(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 115 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	intFromUInt
	movl	20(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 116 0
	leave
	.cfi_restore 5
.LCFI32:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	longToTwoInts, .-longToTwoInts
	.type	doubleFromTwoUInts, @function
doubleFromTwoUInts:
.LFB11:
	.loc 1 117 0
	.cfi_startproc
	pushl	%ebp
.LCFI33:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI34:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 118 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	longFromTwoUInts
	movl	%eax, -8(%ebp)
	movl	%edx, -4(%ebp)
	.loc 1 119 0
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	doubleFromLong
	.loc 1 120 0
	leave
	.cfi_restore 5
.LCFI35:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	doubleFromTwoUInts, .-doubleFromTwoUInts
	.type	doubleFromTwoInts, @function
doubleFromTwoInts:
.LFB12:
	.loc 1 121 0
	.cfi_startproc
	pushl	%ebp
.LCFI36:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI37:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.loc 1 122 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	uintFromInt
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uintFromInt
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	doubleFromTwoUInts
	.loc 1 123 0
	addl	$12, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
.LCFI38:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	doubleFromTwoInts, .-doubleFromTwoInts
	.type	doubleToTwoUInts, @function
doubleToTwoUInts:
.LFB13:
	.loc 1 124 0
	.cfi_startproc
	pushl	%ebp
.LCFI39:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI40:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 125 0
	fldl	-8(%ebp)
	fstpl	(%esp)
	call	longFromDouble
	movl	20(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	longToTwoUInts
	.loc 1 126 0
	leave
	.cfi_restore 5
.LCFI41:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	doubleToTwoUInts, .-doubleToTwoUInts
	.type	doubleToTwoInts, @function
doubleToTwoInts:
.LFB14:
	.loc 1 127 0
	.cfi_startproc
	pushl	%ebp
.LCFI42:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI43:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 129 0
	leal	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	doubleToTwoUInts
	.loc 1 130 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	intFromUInt
	movl	16(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 131 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	intFromUInt
	movl	20(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 132 0
	leave
	.cfi_restore 5
.LCFI44:
	.cfi_def_cfa 4, 4
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
	pushl	%ebp
.LCFI45:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI46:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 136 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movzwl	-2(%ebp), %eax
	.loc 1 137 0
	leave
	.cfi_restore 5
.LCFI47:
	.cfi_def_cfa 4, 4
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
	pushl	%ebp
.LCFI48:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI49:
	.cfi_def_cfa_register 5
	.loc 1 149 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	.loc 1 150 0
	popl	%ebp
	.cfi_restore 5
.LCFI50:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	add32, .-add32
	.type	addU32, @function
addU32:
.LFB17:
	.loc 1 151 0
	.cfi_startproc
	pushl	%ebp
.LCFI51:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI52:
	.cfi_def_cfa_register 5
	.loc 1 153 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	.loc 1 154 0
	popl	%ebp
	.cfi_restore 5
.LCFI53:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	addU32, .-addU32
	.type	add16, @function
add16:
.LFB18:
	.loc 1 155 0
	.cfi_startproc
	pushl	%ebp
.LCFI54:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI55:
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movw	%dx, -4(%ebp)
	movw	%ax, -8(%ebp)
	.loc 1 155 0
	movzwl	-4(%ebp), %edx
	movzwl	-8(%ebp), %eax
	leal	(%edx,%eax), %eax
	leave
	.cfi_restore 5
.LCFI56:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	add16, .-add16
	.type	cast32to16, @function
cast32to16:
.LFB19:
	.loc 1 156 0
	.cfi_startproc
	pushl	%ebp
.LCFI57:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI58:
	.cfi_def_cfa_register 5
	.loc 1 156 0
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
.LCFI59:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	cast32to16, .-cast32to16
	.section	.rodata
.LC1:
	.string	"add64 %lld + %lld \n"
	.text
	.type	add64, @function
add64:
.LFB20:
	.loc 1 157 0
	.cfi_startproc
	pushl	%ebp
.LCFI60:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI61:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 158 0
	movl	$.LC1, %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	.cfi_offset 3, -12
	call	printf
	.loc 1 159 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	.loc 1 160 0
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
.LCFI62:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	add64, .-add64
	.section	.rodata
.LC2:
	.string	"addU64 %llu + %llu \n"
	.text
	.type	addU64, @function
addU64:
.LFB21:
	.loc 1 161 0
	.cfi_startproc
	pushl	%ebp
.LCFI63:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI64:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 162 0
	movl	$.LC2, %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	.cfi_offset 3, -12
	call	printf
	.loc 1 163 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	.loc 1 164 0
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
.LCFI65:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	addU64, .-addU64
	.type	addFloat, @function
addFloat:
.LFB22:
	.loc 1 165 0
	.cfi_startproc
	pushl	%ebp
.LCFI66:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI67:
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 165 0
	flds	8(%ebp)
	fadds	12(%ebp)
	flds	.LC3
	faddp	%st, %st(1)
	fnstcw	-18(%ebp)
	movzwl	-18(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -20(%ebp)
	fldcw	-20(%ebp)
	fistpl	-4(%ebp)
	fldcw	-18(%ebp)
	fildl	-4(%ebp)
	leave
	.cfi_restore 5
.LCFI68:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	addFloat, .-addFloat
	.type	addDouble, @function
addDouble:
.LFB23:
	.loc 1 166 0
	.cfi_startproc
	pushl	%ebp
.LCFI69:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI70:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 174 0
	fldl	-8(%ebp)
	faddl	-16(%ebp)
	.loc 1 175 0
	leave
	.cfi_restore 5
.LCFI71:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	addDouble, .-addDouble
	.type	playWithDoubles, @function
playWithDoubles:
.LFB24:
	.loc 1 177 0
	.cfi_startproc
	pushl	%ebp
.LCFI72:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI73:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 178 0
	fldl	-24(%ebp)
	fstpl	-16(%ebp)
	.loc 1 179 0
	movl	$0, -4(%ebp)
	.loc 1 180 0
	movl	$0, -4(%ebp)
	jmp	.L26
.L27:
	.loc 1 181 0 discriminator 2
	fldl	-24(%ebp)
	fmull	-24(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	addDouble
	fstpl	-16(%ebp)
	.loc 1 180 0 discriminator 2
	addl	$1, -4(%ebp)
.L26:
	.loc 1 180 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%ebp)
	jle	.L27
	.loc 1 183 0 is_stmt 1
	fldl	-16(%ebp)
	.loc 1 184 0
	leave
	.cfi_restore 5
.LCFI74:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	playWithDoubles, .-playWithDoubles
	.type	playWithFloats, @function
playWithFloats:
.LFB25:
	.loc 1 185 0
	.cfi_startproc
	pushl	%ebp
.LCFI75:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI76:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 187 0
	movl	$0, -8(%ebp)
	.loc 1 188 0
	movl	$0, -8(%ebp)
	jmp	.L29
.L30:
	.loc 1 189 0 discriminator 2
	flds	8(%ebp)
	fmuls	8(%ebp)
	flds	-4(%ebp)
	faddp	%st, %st(1)
	fstps	-4(%ebp)
	.loc 1 188 0 discriminator 2
	addl	$1, -8(%ebp)
.L29:
	.loc 1 188 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%ebp)
	jle	.L30
	.loc 1 191 0 is_stmt 1
	flds	-4(%ebp)
	.loc 1 192 0
	leave
	.cfi_restore 5
.LCFI77:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	playWithFloats, .-playWithFloats
	.type	playWithLongs, @function
playWithLongs:
.LFB26:
	.loc 1 194 0
	.cfi_startproc
	pushl	%ebp
.LCFI78:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI79:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 195 0
	movl	glob, %eax
	subl	$30579, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	-24(%ebp), %eax
	adcl	-20(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 196 0
	movl	$0, -4(%ebp)
	.loc 1 197 0
	movl	$0, -4(%ebp)
	jmp	.L32
.L33:
	.loc 1 198 0 discriminator 2
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	imull	-24(%ebp), %ecx
	movl	-20(%ebp), %eax
	imull	-24(%ebp), %eax
	addl	%eax, %ecx
	movl	-24(%ebp), %eax
	mull	-24(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	addl	%eax, -16(%ebp)
	adcl	%edx, -12(%ebp)
	.loc 1 197 0 discriminator 2
	addl	$1, -4(%ebp)
.L32:
	.loc 1 197 0 is_stmt 0 discriminator 1
	cmpl	$99, -4(%ebp)
	jle	.L33
	.loc 1 200 0 is_stmt 1
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	.loc 1 201 0
	leave
	.cfi_restore 5
.LCFI80:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	playWithLongs, .-playWithLongs
	.section	.rodata
	.align 4
.LC4:
	.string	"Error: %lld , should be %lld  %d / %d\n"
	.text
	.type	testLongFromUints, @function
testLongFromUints:
.LFB27:
	.loc 1 205 0
	.cfi_startproc
	pushl	%ebp
.LCFI81:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI82:
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 1 206 0
	movl	$-1379351218, -24(%ebp)
	movl	$100, -20(%ebp)
	.loc 1 208 0
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	longToTwoUInts
	.loc 1 209 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	longFromTwoUInts
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 210 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L34
	.loc 1 211 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	$.LC4, %ecx
	movl	%edx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	printf
.L34:
	.loc 1 212 0
	leave
	.cfi_restore 5
.LCFI83:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	testLongFromUints, .-testLongFromUints
	.section	.rodata
	.align 4
.LC6:
	.string	"Error1: %f , should be %f  %d / %d\n"
	.align 4
.LC7:
	.string	"Error2: %f , should be %f  %d / %d\n"
.LC8:
	.string	"Error3:"
.LC9:
	.string	"Error4:"
	.text
	.type	testDoubleFromUint, @function
testDoubleFromUint:
.LFB28:
	.loc 1 213 0
	.cfi_startproc
	pushl	%ebp
.LCFI84:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI85:
	.cfi_def_cfa_register 5
	subl	$88, %esp
	.loc 1 214 0
	fldl	.LC5
	fstpl	-32(%ebp)
	.loc 1 217 0
	leal	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	doubleToTwoInts
	.loc 1 218 0
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	doubleToTwoUInts
	.loc 1 219 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	doubleFromTwoInts
	fstpl	-40(%ebp)
	.loc 1 220 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	doubleFromTwoUInts
	fstpl	-48(%ebp)
	.loc 1 221 0
	fldl	-40(%ebp)
	fldl	-32(%ebp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L43
	fldl	-40(%ebp)
	fldl	-32(%ebp)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L37
.L43:
	.loc 1 222 0
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	$.LC6, %eax
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	fldl	-32(%ebp)
	fstpl	12(%esp)
	fldl	-40(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
.L37:
	.loc 1 223 0
	fldl	-48(%ebp)
	fldl	-32(%ebp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L44
	fldl	-48(%ebp)
	fldl	-32(%ebp)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L39
.L44:
	.loc 1 224 0
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	$.LC7, %eax
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	fldl	-32(%ebp)
	fstpl	12(%esp)
	fldl	-48(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
.L39:
	.loc 1 226 0
	movl	$-8730, -20(%ebp)
	.loc 1 227 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 228 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	uintFromInt
	movl	-20(%ebp), %edx
	cmpl	%edx, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	intFromUInt
	testl	%eax, %eax
	je	.L41
	.loc 1 229 0
	movl	$.LC8, (%esp)
	call	puts
.L41:
	.loc 1 230 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	intFromUInt
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	uintFromInt
	testl	%eax, %eax
	je	.L36
	.loc 1 231 0
	movl	$.LC9, (%esp)
	call	puts
.L36:
	.loc 1 233 0
	leave
	.cfi_restore 5
.LCFI86:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	testDoubleFromUint, .-testDoubleFromUint
	.section	.rodata
.LC10:
	.string	"res2= %d"
.LC14:
	.string	"float: %f \n"
.LC16:
	.string	"double: %f \n"
.LC18:
	.string	"long: %lld \n"
	.text
.globl main1
	.type	main1, @function
main1:
.LFB29:
	.loc 1 235 0
	.cfi_startproc
	pushl	%ebp
.LCFI87:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI88:
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 1 237 0
	movl	$1685159, -16(%ebp)
	.loc 1 238 0
	movl	$0, -20(%ebp)
	.loc 1 239 0
	movb	$5, -9(%ebp)
	.loc 1 241 0
	movl	$0, -20(%ebp)
	jmp	.L46
.L47:
	.loc 1 242 0 discriminator 2
	movl	-16(%ebp), %eax
	imull	$119, %eax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 243 0 discriminator 2
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	addl	%eax, -16(%ebp)
	.loc 1 241 0 discriminator 2
	addl	$1, -20(%ebp)
.L46:
	.loc 1 241 0 is_stmt 0 discriminator 1
	cmpl	$4, -20(%ebp)
	jle	.L47
	.loc 1 247 0 is_stmt 1
	movsbl	-9(%ebp), %eax
	movl	-16(%ebp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 248 0
	movl	$715827882, -24(%ebp)
	.loc 1 249 0
	movl	$0, -20(%ebp)
	jmp	.L48
.L49:
	.loc 1 250 0 discriminator 2
	movl	-24(%ebp), %eax
	addl	%eax, -16(%ebp)
	.loc 1 249 0 discriminator 2
	addl	$1, -20(%ebp)
.L48:
	.loc 1 249 0 is_stmt 0 discriminator 1
	cmpl	$19, -20(%ebp)
	jle	.L49
	.loc 1 252 0 is_stmt 1
	movl	$145, 4(%esp)
	movl	$32759, (%esp)
	call	add16
	cwtl
	movl	%eax, -16(%ebp)
	.loc 1 253 0
	movl	$493447, (%esp)
	call	cast32to16
	movw	%ax, -12(%ebp)
	.loc 1 254 0
	movswl	-12(%ebp), %edx
	movl	$.LC10, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	.loc 1 256 0
	movl	$2147483643, -28(%ebp)
	movl	$8, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	add32
	movl	%eax, -32(%ebp)
	.loc 1 257 0
	movl	$-5, -48(%ebp)
	movl	$2147483647, -44(%ebp)
	movl	$8, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add64
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 258 0
	movl	$0x7f7fffff, %eax
	movl	%eax, -36(%ebp)
	movl	$0x7f7fffff, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	addFloat
	fstps	-40(%ebp)
	.loc 1 260 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	__isnanf
	testl	%eax, %eax
	je	.L50
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	$0x00000000, %eax
	movl	%eax, -36(%ebp)
.L50:
	.loc 1 262 0 is_stmt 1
	movl	$0x40000000, %eax
	movl	%eax, (%esp)
	call	playWithFloats
	movl	$.LC14, %eax
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
	.loc 1 263 0
	fldl	.LC15
	fstpl	(%esp)
	call	playWithDoubles
	movl	$.LC16, %eax
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
	.loc 1 264 0
	fldl	.LC17
	fstpl	(%esp)
	call	playWithDoubles
	movl	$.LC16, %eax
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
	.loc 1 265 0
	movl	$2, (%esp)
	movl	$0, 4(%esp)
	call	playWithLongs
	movl	$.LC18, %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	printf
	.loc 1 267 0
	movl	$0, %eax
	.loc 1 268 0
	leave
	.cfi_restore 5
.LCFI89:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	main1, .-main1
	.type	ulp, @function
ulp:
.LFB30:
	.loc 1 271 0
	.cfi_startproc
	pushl	%ebp
.LCFI90:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI91:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 272 0
	fldl	.LC19
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	nextafter
	fsubl	-16(%ebp)
	fabs
	.loc 1 273 0
	leave
	.cfi_restore 5
.LCFI92:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	ulp, .-ulp
	.type	ulpf, @function
ulpf:
.LFB31:
	.loc 1 274 0
	.cfi_startproc
	pushl	%ebp
.LCFI93:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI94:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 275 0
	movl	$0x7f800000, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	nextafterf
	fsubs	8(%ebp)
	fabs
	.loc 1 276 0
	leave
	.cfi_restore 5
.LCFI95:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	ulpf, .-ulpf
	.type	susp_comp_double, @function
susp_comp_double:
.LFB32:
	.loc 1 279 0
	.cfi_startproc
	pushl	%ebp
.LCFI96:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI97:
	.cfi_def_cfa_register 5
	subl	$88, %esp
	.loc 1 280 0
	fldl	.LC21
	fstpl	-16(%ebp)
	fldl	.LC22
	fstpl	-24(%ebp)
	fldl	.LC23
	fstpl	-32(%ebp)
	fldl	.LC19
	fstpl	-40(%ebp)
	fldl	.LC24
	fstpl	-48(%ebp)
	fldz
	fstpl	-56(%ebp)
	.loc 1 281 0
	fldz
	fstpl	-64(%ebp)
	.loc 1 282 0
	fldl	-16(%ebp)
	faddl	-24(%ebp)
	fstpl	-64(%ebp)
	.loc 1 283 0
	fldl	-32(%ebp)
	fadd	%st(0), %st
	fstpl	-64(%ebp)
	.loc 1 284 0
	fldl	-16(%ebp)
	fsubl	-24(%ebp)
	fstpl	-64(%ebp)
	.loc 1 285 0
	fldl	-40(%ebp)
	fdivl	-40(%ebp)
	fstpl	-64(%ebp)
	.loc 1 286 0
	fldl	-16(%ebp)
	fdivl	-56(%ebp)
	fstpl	-64(%ebp)
	.loc 1 287 0
	fldl	-24(%ebp)
	fdivl	-56(%ebp)
	fstpl	-64(%ebp)
	.loc 1 288 0
	fldl	-56(%ebp)
	fdivl	-56(%ebp)
	fstpl	-64(%ebp)
	.loc 1 289 0
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	ulp
	fsubl	-16(%ebp)
	faddl	-16(%ebp)
	fstpl	-64(%ebp)
	.loc 1 290 0
	fldl	-16(%ebp)
	fstpl	-64(%ebp)
	.loc 1 291 0
	fldl	.LC26
	fstpl	-64(%ebp)
	.loc 1 292 0
	leave
	.cfi_restore 5
.LCFI98:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	susp_comp_double, .-susp_comp_double
	.type	susp_comp_float, @function
susp_comp_float:
.LFB33:
	.loc 1 294 0
	.cfi_startproc
	pushl	%ebp
.LCFI99:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI100:
	.cfi_def_cfa_register 5
	subl	$88, %esp
	.loc 1 295 0
	movl	$0x7f800000, %eax
	movl	%eax, -12(%ebp)
	movl	$0x00000010, %eax
	movl	%eax, -16(%ebp)
	movl	$0x7f7fffff, %eax
	movl	%eax, -20(%ebp)
	movl	$0x7f800000, %eax
	movl	%eax, -24(%ebp)
	movl	$0x7fc00000, %eax
	movl	%eax, -28(%ebp)
	movl	$0x00000000, %eax
	movl	%eax, -32(%ebp)
	.loc 1 296 0
	movl	$0x00000000, %eax
	movl	%eax, -36(%ebp)
	.loc 1 297 0
	flds	-12(%ebp)
	fadds	-16(%ebp)
	fstps	-36(%ebp)
	.loc 1 298 0
	flds	-20(%ebp)
	fadd	%st(0), %st
	fstps	-36(%ebp)
	.loc 1 299 0
	flds	-12(%ebp)
	fsubs	-16(%ebp)
	fstps	-36(%ebp)
	.loc 1 300 0
	flds	-24(%ebp)
	fdivs	-24(%ebp)
	fstps	-36(%ebp)
	.loc 1 301 0
	flds	-12(%ebp)
	fdivs	-32(%ebp)
	fstps	-36(%ebp)
	.loc 1 302 0
	flds	-16(%ebp)
	fdivs	-32(%ebp)
	fstps	-36(%ebp)
	.loc 1 303 0
	flds	-32(%ebp)
	fdivs	-32(%ebp)
	fstps	-36(%ebp)
	.loc 1 304 0
	flds	-12(%ebp)
	fstpl	-56(%ebp)
	flds	-12(%ebp)
	fchs
	fstpl	-64(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ulpf
	faddl	-64(%ebp)
	faddl	-56(%ebp)
	fstps	-36(%ebp)
	.loc 1 305 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 306 0
	movl	$0x40500000, %eax
	movl	%eax, -36(%ebp)
	.loc 1 307 0
	leave
	.cfi_restore 5
.LCFI101:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	susp_comp_float, .-susp_comp_float
	.type	susp_comp_int, @function
susp_comp_int:
.LFB34:
	.loc 1 309 0
	.cfi_startproc
	pushl	%ebp
.LCFI102:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI103:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 310 0
	movl	$2147483647, -4(%ebp)
	movl	$-2147483648, -8(%ebp)
	movl	$-1, -12(%ebp)
	.loc 1 311 0
	movl	$0, -16(%ebp)
	.loc 1 312 0
	movl	-4(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 313 0
	movl	-4(%ebp), %eax
	imull	-4(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 314 0
	movl	-8(%ebp), %eax
	negl	%eax
	movl	%eax, -16(%ebp)
	.loc 1 315 0
	movl	-8(%ebp), %eax
	imull	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 318 0
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 319 0
	leave
	.cfi_restore 5
.LCFI104:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	susp_comp_int, .-susp_comp_int
	.type	susp_comp_Long, @function
susp_comp_Long:
.LFB35:
	.loc 1 321 0
	.cfi_startproc
	pushl	%ebp
.LCFI105:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI106:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.loc 1 322 0
	movl	$2147483647, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$-2147483648, -24(%ebp)
	movl	$-1, -20(%ebp)
	movl	$-1, -32(%ebp)
	movl	$-1, -28(%ebp)
	.loc 1 323 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 324 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	%eax, %eax
	adcl	%edx, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 325 0
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	imull	-16(%ebp), %ecx
	movl	-12(%ebp), %eax
	imull	-16(%ebp), %eax
	addl	%eax, %ecx
	movl	-16(%ebp), %eax
	mull	-16(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 326 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 327 0
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	imull	-32(%ebp), %ecx
	movl	-28(%ebp), %eax
	imull	-24(%ebp), %eax
	addl	%eax, %ecx
	movl	-32(%ebp), %eax
	mull	-24(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 328 0
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	.cfi_offset 3, -12
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 329 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
.LCFI107:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	susp_comp_Long, .-susp_comp_Long
	.type	susp_comp_short, @function
susp_comp_short:
.LFB36:
	.loc 1 331 0
	.cfi_startproc
	pushl	%ebp
.LCFI108:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI109:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 333 0
	movw	$32767, -2(%ebp)
	movw	$-32768, -4(%ebp)
	.loc 1 334 0
	movl	$0, -8(%ebp)
	.loc 1 335 0
	movswl	-2(%ebp), %edx
	movswl	-2(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	add16
	cwtl
	movl	%eax, -8(%ebp)
	.loc 1 336 0
	movswl	-2(%ebp), %edx
	movswl	-2(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 337 0
	movswl	-4(%ebp), %eax
	negl	%eax
	movl	%eax, -8(%ebp)
	.loc 1 338 0
	movswl	-2(%ebp), %edx
	movswl	-4(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 339 0
	leave
	.cfi_restore 5
.LCFI110:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	susp_comp_short, .-susp_comp_short
	.type	suspecious_computations, @function
suspecious_computations:
.LFB37:
	.loc 1 341 0
	.cfi_startproc
	pushl	%ebp
.LCFI111:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI112:
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 342 0
	call	susp_comp_double
	.loc 1 343 0
	call	susp_comp_float
	.loc 1 344 0
	call	susp_comp_int
	.loc 1 345 0
	call	susp_comp_Long
	.loc 1 346 0
	call	susp_comp_short
	.loc 1 347 0
	leave
	.cfi_restore 5
.LCFI113:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	suspecious_computations, .-suspecious_computations
	.type	norm_comp_double, @function
norm_comp_double:
.LFB38:
	.loc 1 350 0
	.cfi_startproc
	pushl	%ebp
.LCFI114:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI115:
	.cfi_def_cfa_register 5
	subl	$80, %esp
	.loc 1 351 0
	fldl	.LC21
	fstpl	-8(%ebp)
	fldl	.LC22
	fstpl	-16(%ebp)
	fldl	.LC23
	fstpl	-24(%ebp)
	fldl	.LC19
	fstpl	-32(%ebp)
	fldl	.LC24
	fstpl	-40(%ebp)
	fldz
	fstpl	-48(%ebp)
	fldl	.LC29
	fstpl	-56(%ebp)
	.loc 1 352 0
	fldz
	fstpl	-64(%ebp)
	.loc 1 354 0
	fldl	.LC30
	fstpl	-72(%ebp)
	fldl	.LC31
	fstpl	-80(%ebp)
	.loc 1 355 0
	fldl	-72(%ebp)
	fmull	-80(%ebp)
	fstpl	-64(%ebp)
	.loc 1 356 0
	fldl	-72(%ebp)
	fsubl	-80(%ebp)
	fstpl	-64(%ebp)
	.loc 1 357 0
	fldl	-72(%ebp)
	faddl	-80(%ebp)
	fstpl	-64(%ebp)
	.loc 1 358 0
	fldl	-72(%ebp)
	fdivl	-80(%ebp)
	fstpl	-64(%ebp)
	.loc 1 360 0
	fldl	-8(%ebp)
	fadd	%st(0), %st
	fstpl	-64(%ebp)
	.loc 1 361 0
	fldl	-16(%ebp)
	fadd	%st(0), %st
	fstpl	-64(%ebp)
	.loc 1 362 0
	fldl	-24(%ebp)
	fsubl	-24(%ebp)
	fstpl	-64(%ebp)
	.loc 1 363 0
	fldl	-24(%ebp)
	fdivl	-24(%ebp)
	fstpl	-64(%ebp)
	.loc 1 364 0
	fldl	-56(%ebp)
	fmull	-56(%ebp)
	fstpl	-64(%ebp)
	.loc 1 365 0
	leave
	.cfi_restore 5
.LCFI116:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	norm_comp_double, .-norm_comp_double
	.type	norm_comp_float, @function
norm_comp_float:
.LFB39:
	.loc 1 367 0
	.cfi_startproc
	pushl	%ebp
.LCFI117:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI118:
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 368 0
	movl	$0x58886c99, %eax
	movl	%eax, -4(%ebp)
	movl	$0x28cf2a64, %eax
	movl	%eax, -8(%ebp)
	movl	$0x7f7fffff, %eax
	movl	%eax, -12(%ebp)
	movl	$0x7f800000, %eax
	movl	%eax, -16(%ebp)
	movl	$0x7fc00000, %eax
	movl	%eax, -20(%ebp)
	movl	$0x00000000, %eax
	movl	%eax, -24(%ebp)
	movl	$0x4048f5c3, %eax
	movl	%eax, -28(%ebp)
	.loc 1 369 0
	movl	$0x00000000, %eax
	movl	%eax, -32(%ebp)
	.loc 1 370 0
	flds	-4(%ebp)
	fadd	%st(0), %st
	fstps	-32(%ebp)
	.loc 1 371 0
	flds	-8(%ebp)
	fadd	%st(0), %st
	fstps	-32(%ebp)
	.loc 1 372 0
	flds	-12(%ebp)
	fsubs	-12(%ebp)
	fstps	-32(%ebp)
	.loc 1 373 0
	flds	-12(%ebp)
	fdivs	-12(%ebp)
	fstps	-32(%ebp)
	.loc 1 374 0
	flds	-28(%ebp)
	fmuls	-28(%ebp)
	fstps	-32(%ebp)
	.loc 1 375 0
	leave
	.cfi_restore 5
.LCFI119:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	norm_comp_float, .-norm_comp_float
	.type	norm_comp_int, @function
norm_comp_int:
.LFB40:
	.loc 1 377 0
	.cfi_startproc
	pushl	%ebp
.LCFI120:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI121:
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 379 0
	movl	$3, -4(%ebp)
	movl	$5, -8(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 380 0
	movl	-4(%ebp), %eax
	imull	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 381 0
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 382 0
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 383 0
	movl	-4(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-8(%ebp)
	movl	%eax, -12(%ebp)
	.loc 1 384 0
	movl	-4(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-8(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 387 0
	movl	$3, -16(%ebp)
	movl	$5, -20(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 388 0
	movl	-16(%ebp), %eax
	imull	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 389 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 390 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 391 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	divl	-20(%ebp)
	movl	%eax, -24(%ebp)
	.loc 1 392 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	divl	-20(%ebp)
	movl	%edx, -24(%ebp)
	.loc 1 393 0
	leave
	.cfi_restore 5
.LCFI122:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	norm_comp_int, .-norm_comp_int
.globl __divdi3
.globl __moddi3
.globl __udivdi3
.globl __umoddi3
	.type	norm_comp_long, @function
norm_comp_long:
.LFB41:
	.loc 1 395 0
	.cfi_startproc
	pushl	%ebp
.LCFI123:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI124:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.loc 1 397 0
	movl	$3, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$5, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 398 0
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	imull	-24(%ebp), %ecx
	movl	-20(%ebp), %eax
	imull	-16(%ebp), %eax
	addl	%eax, %ecx
	movl	-24(%ebp), %eax
	mull	-16(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 399 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %ebx
	.cfi_offset 3, -12
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 400 0
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 401 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 402 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__moddi3
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 405 0
	movl	$3, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$5, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 1 406 0
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	imull	-48(%ebp), %ecx
	movl	-44(%ebp), %eax
	imull	-40(%ebp), %eax
	addl	%eax, %ecx
	movl	-48(%ebp), %eax
	mull	-40(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 407 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 408 0
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %ebx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 409 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 410 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 412 0
	addl	$68, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
.LCFI125:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	norm_comp_long, .-norm_comp_long
	.type	norm_comp_short, @function
norm_comp_short:
.LFB42:
	.loc 1 413 0
	.cfi_startproc
	pushl	%ebp
.LCFI126:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI127:
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 415 0
	movw	$3, -2(%ebp)
	movw	$5, -4(%ebp)
	movw	$0, -6(%ebp)
	.loc 1 416 0
	movzwl	-2(%ebp), %edx
	movzwl	-4(%ebp), %eax
	imull	%edx, %eax
	movw	%ax, -6(%ebp)
	.loc 1 417 0
	movzwl	-2(%ebp), %edx
	movzwl	-4(%ebp), %eax
	leal	(%edx,%eax), %eax
	movw	%ax, -6(%ebp)
	.loc 1 418 0
	movzwl	-2(%ebp), %edx
	movzwl	-4(%ebp), %eax
	movl	%edx, %ecx
	subw	%ax, %cx
	movl	%ecx, %eax
	movw	%ax, -6(%ebp)
	.loc 1 419 0
	movswl	-2(%ebp), %eax
	movswl	-4(%ebp), %edx
	movl	%edx, -20(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-20(%ebp)
	movw	%ax, -6(%ebp)
	.loc 1 420 0
	movswl	-2(%ebp), %eax
	movswl	-4(%ebp), %ecx
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	movw	%ax, -6(%ebp)
	.loc 1 423 0
	movw	$3, -8(%ebp)
	movw	$5, -10(%ebp)
	movw	$0, -12(%ebp)
	.loc 1 424 0
	movzwl	-8(%ebp), %eax
	imulw	-10(%ebp), %ax
	movw	%ax, -12(%ebp)
	.loc 1 425 0
	movzwl	-10(%ebp), %eax
	movzwl	-8(%ebp), %edx
	leal	(%edx,%eax), %eax
	movw	%ax, -12(%ebp)
	.loc 1 426 0
	movzwl	-10(%ebp), %eax
	movzwl	-8(%ebp), %edx
	movl	%edx, %ecx
	subw	%ax, %cx
	movl	%ecx, %eax
	movw	%ax, -12(%ebp)
	.loc 1 427 0
	movzwl	-8(%ebp), %eax
	movl	$0, %edx
	divw	-10(%ebp)
	movw	%ax, -12(%ebp)
	.loc 1 428 0
	movzwl	-8(%ebp), %eax
	movl	$0, %edx
	divw	-10(%ebp)
	movw	%dx, -12(%ebp)
	.loc 1 429 0
	leave
	.cfi_restore 5
.LCFI128:
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	norm_comp_short, .-norm_comp_short
	.type	normal_computations, @function
normal_computations:
.LFB43:
	.loc 1 432 0
	.cfi_startproc
	pushl	%ebp
.LCFI129:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI130:
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 433 0
	call	norm_comp_double
	.loc 1 434 0
	call	norm_comp_float
	.loc 1 435 0
	call	norm_comp_int
	.loc 1 436 0
	call	norm_comp_long
	.loc 1 437 0
	call	norm_comp_short
	.loc 1 438 0
	leave
	.cfi_restore 5
.LCFI131:
	.cfi_def_cfa 4, 4
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
	pushl	%ebp
.LCFI132:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI133:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	.loc 1 443 0
	call	suspecious_computations
	.loc 1 444 0
	call	normal_computations
	.loc 1 445 0
	movl	$0, %eax
	.loc 1 446 0
	movl	%ebp, %esp
.LCFI134:
	.cfi_def_cfa_register 4
	popl	%ebp
	.cfi_restore 5
.LCFI135:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC3:
	.long	1190062592
	.align 8
.LC5:
	.long	1264846314
	.long	1252051187
	.align 8
.LC15:
	.long	0
	.long	1073741824
	.align 8
.LC17:
	.long	343597384
	.long	1074349998
	.align 8
.LC19:
	.long	0
	.long	2146435072
	.align 8
.LC21:
	.long	2260155377
	.long	1229645737
	.align 8
.LC22:
	.long	880792757
	.long	920676817
	.align 8
.LC23:
	.long	4294967295
	.long	2146435071
	.align 8
.LC24:
	.long	0
	.long	2146959360
	.align 8
.LC26:
	.long	0
	.long	1074397184
	.align 8
.LC29:
	.long	1374389535
	.long	1074339512
	.align 8
.LC30:
	.long	0
	.long	1078132736
	.align 8
.LC31:
	.long	0
	.long	1079132160
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB0-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI2-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB1-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI5-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB2-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB3-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI11-.Ltext0
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB4-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI14-.Ltext0
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB5-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI17-.Ltext0
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB6-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB7-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI21-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI22-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI23-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB8-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI26-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB9-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB10-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB11-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB12-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI36-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB13-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI41-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB14-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI44-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB15-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI47-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB16-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI50-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB17-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI53-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB18-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI56-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB19-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB20-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB21-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI63-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI64-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI65-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB22-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI66-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI68-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB23-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI69-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI70-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI71-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB24-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI74-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB25-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI77-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB26-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI79-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI80-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB27-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI83-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB28-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI86-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB29-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI89-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB30-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI90-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB31-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI94-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI95-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB32-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI98-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB33-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI99-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB34-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI102-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI104-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB35-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB36-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI108-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI109-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI110-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB37-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI112-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI113-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB38-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI116-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB39-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI117-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI119-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB40-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI122-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB41-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB42-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI128-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB43-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI130-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI131-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB44-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI132-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI134-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI135-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
	.file 2 "/usr/include/sys/types.h"
	.file 3 "/usr/include/stdint.h"
	.section	.debug_info
	.long	0xf55
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF94
	.byte	0x1
	.long	.LASF95
	.long	.LASF96
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
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
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0xc4
	.long	0x48
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.long	0x4f
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0xc6
	.long	0x56
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x32
	.long	0x33
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x34
	.long	0x25
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x3b
	.long	0x5d
	.uleb128 0x2
	.byte	0xc
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
	.long	0xbb
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0x17
	.long	0xd8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF20
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x18
	.long	0xa9
	.uleb128 0x4
	.long	.LASF22
	.byte	0x1
	.byte	0x19
	.long	0x88
	.uleb128 0x4
	.long	.LASF23
	.byte	0x1
	.byte	0x1a
	.long	0x9e
	.uleb128 0x5
	.string	"Int"
	.byte	0x1
	.byte	0x1b
	.long	0x7d
	.uleb128 0x4
	.long	.LASF24
	.byte	0x1
	.byte	0x1c
	.long	0x93
	.uleb128 0x4
	.long	.LASF25
	.byte	0x1
	.byte	0x1d
	.long	0x72
	.uleb128 0x4
	.long	.LASF26
	.byte	0x1
	.byte	0x1e
	.long	0x2c
	.uleb128 0x4
	.long	.LASF27
	.byte	0x1
	.byte	0x1f
	.long	0x41
	.uleb128 0x6
	.byte	0x1
	.byte	0x1
	.byte	0x22
	.long	0x152
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x23
	.long	0x121
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x24
	.long	0x12c
	.byte	0x0
	.uleb128 0x4
	.long	.LASF28
	.byte	0x1
	.byte	0x25
	.long	0x137
	.uleb128 0x8
	.byte	0x2
	.byte	0x1
	.byte	0x2a
	.long	0x180
	.uleb128 0x9
	.string	"h2"
	.byte	0x1
	.byte	0x2b
	.long	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"h1"
	.byte	0x1
	.byte	0x2c
	.long	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x1
	.byte	0x27
	.long	0x1a6
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x28
	.long	0x10b
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x29
	.long	0x116
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x2d
	.long	0x15d
	.byte	0x0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x1
	.byte	0x2e
	.long	0x180
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0x34
	.long	0x1d4
	.uleb128 0x9
	.string	"h2"
	.byte	0x1
	.byte	0x35
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"h1"
	.byte	0x1
	.byte	0x36
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x30
	.long	0x203
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x31
	.long	0xf5
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x32
	.long	0x100
	.uleb128 0x7
	.string	"f"
	.byte	0x1
	.byte	0x33
	.long	0xcd
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x37
	.long	0x1b1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF31
	.byte	0x1
	.byte	0x38
	.long	0x1d4
	.uleb128 0x8
	.byte	0x8
	.byte	0x1
	.byte	0x3e
	.long	0x231
	.uleb128 0x9
	.string	"h2"
	.byte	0x1
	.byte	0x3f
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"h1"
	.byte	0x1
	.byte	0x40
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.byte	0x1
	.byte	0x3a
	.long	0x260
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x3b
	.long	0xdf
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x3c
	.long	0xea
	.uleb128 0x7
	.string	"f"
	.byte	0x1
	.byte	0x3d
	.long	0xc2
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x41
	.long	0x20e
	.byte	0x0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x1
	.byte	0x42
	.long	0x231
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.long	0xdf
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.long	0x2a0
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x47
	.long	0xc2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x48
	.long	0x260
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0xbb
	.long	.LFB1
	.long	.LFE1
	.long	.LLST1
	.long	0x2d5
	.uleb128 0xc
	.string	"l"
	.byte	0x1
	.byte	0x4a
	.long	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x4b
	.long	0x260
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	0xf5
	.long	.LFB2
	.long	.LFE2
	.long	.LLST2
	.long	0x30a
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x4e
	.long	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x4f
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x100
	.long	.LFB3
	.long	.LFE3
	.long	.LLST3
	.long	0x33f
	.uleb128 0xc
	.string	"u"
	.byte	0x1
	.byte	0x51
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x52
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.long	0xcd
	.long	.LFB4
	.long	.LFE4
	.long	.LLST4
	.long	0x374
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x54
	.long	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x55
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xb
	.long	.LASF38
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0xdf
	.long	.LFB5
	.long	.LFE5
	.long	.LLST5
	.long	0x3b5
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x58
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x58
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x59
	.long	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0xdf
	.long	.LFB6
	.long	.LFE6
	.long	.LLST6
	.long	0x3f6
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x5d
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x5d
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x5e
	.long	0x260
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0xdf
	.long	.LFB7
	.long	.LFE7
	.long	.LLST7
	.long	0x42b
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x62
	.long	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x62
	.long	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST8
	.long	0x468
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x65
	.long	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x65
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x65
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.long	0xf5
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST9
	.long	0x4b7
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x69
	.long	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x69
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x69
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x6a
	.long	0x260
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST10
	.long	0x50e
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x6f
	.long	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x6f
	.long	0x50e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x6f
	.long	0x50e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0x70
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0x70
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.long	0x100
	.uleb128 0xb
	.long	.LASF44
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0xbb
	.long	.LFB11
	.long	.LFE11
	.long	.LLST11
	.long	0x555
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x75
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x75
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x76
	.long	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	0xbb
	.long	.LFB12
	.long	.LFE12
	.long	.LLST12
	.long	0x58a
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x79
	.long	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x79
	.long	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST13
	.long	0x5c7
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x7c
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x7c
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x7c
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST14
	.long	0x61e
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x7f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x7f
	.long	0x50e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x7f
	.long	0x50e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0x80
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0x80
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0x116
	.long	.LFB15
	.long	.LFE15
	.long	.LLST15
	.long	0x654
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x87
	.long	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x88
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x4f
	.long	.LFB16
	.long	.LFE16
	.long	.LLST16
	.long	0x689
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x93
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x93
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	0x25
	.long	.LFB17
	.long	.LFE17
	.long	.LLST17
	.long	0x6be
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x97
	.long	0x25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x97
	.long	0x25
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x48
	.long	.LFB18
	.long	.LFE18
	.long	.LLST18
	.long	0x6f3
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9b
	.long	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x9b
	.long	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x48
	.long	.LFB19
	.long	.LFE19
	.long	.LLST19
	.long	0x71c
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x88
	.long	.LFB20
	.long	.LFE20
	.long	.LLST20
	.long	0x751
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9d
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.long	0xa9
	.long	.LFB21
	.long	.LFE21
	.long	.LLST21
	.long	0x786
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa1
	.long	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xa1
	.long	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0xd8
	.long	.LFB22
	.long	.LFE22
	.long	.LLST22
	.long	0x7c9
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa5
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xa5
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xa5
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0xbb
	.long	.LFB23
	.long	.LFE23
	.long	.LLST23
	.long	0x7fe
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xa6
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	.LASF56
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	0xbb
	.long	.LFB24
	.long	.LFE24
	.long	.LLST24
	.long	0x841
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xb1
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xb2
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.long	0xbb
	.long	.LFB25
	.long	.LFE25
	.long	.LLST25
	.long	0x884
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xb9
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xba
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	.LASF58
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x88
	.long	.LFB26
	.long	.LFE26
	.long	.LLST26
	.long	0x8c7
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xc2
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xc3
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0xcd
	.long	.LFB27
	.long	.LFE27
	.long	.LLST27
	.long	0x912
	.uleb128 0xd
	.string	"l"
	.byte	0x1
	.byte	0xce
	.long	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0xcf
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0xcf
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"r1"
	.byte	0x1
	.byte	0xd1
	.long	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0xd5
	.long	.LFB28
	.long	.LFE28
	.long	.LLST28
	.long	0x982
	.uleb128 0xd
	.string	"d"
	.byte	0x1
	.byte	0xd6
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"ua"
	.byte	0x1
	.byte	0xd7
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"ub"
	.byte	0x1
	.byte	0xd7
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0xd8
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0xd8
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"r1"
	.byte	0x1
	.byte	0xdb
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"r2"
	.byte	0x1
	.byte	0xdc
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x4f
	.long	.LFB29
	.long	.LFE29
	.long	.LLST29
	.long	0xa3a
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0xed
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xee
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0xef
	.long	0x6b
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xd
	.string	"inc"
	.byte	0x1
	.byte	0xf8
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.byte	0xfd
	.long	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"ia"
	.byte	0x1
	.value	0x100
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"ib"
	.byte	0x1
	.value	0x100
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"lla"
	.byte	0x1
	.value	0x101
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"llb"
	.byte	0x1
	.value	0x101
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"fla"
	.byte	0x1
	.value	0x102
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"flb"
	.byte	0x1
	.value	0x102
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x14
	.string	"ulp"
	.byte	0x1
	.value	0x10f
	.byte	0x1
	.long	0xbb
	.long	.LFB30
	.long	.LFE30
	.long	.LLST30
	.long	0xa65
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x10f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0xbb
	.long	.LFB31
	.long	.LFE31
	.long	.LLST31
	.long	0xa90
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x112
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x117
	.long	.LFB32
	.long	.LFE32
	.long	.LLST32
	.long	0xb11
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x118
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x118
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"max"
	.byte	0x1
	.value	0x118
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"inf"
	.byte	0x1
	.value	0x118
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"nan"
	.byte	0x1
	.value	0x118
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.value	0x118
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.value	0x119
	.long	0xbb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.value	0x126
	.long	.LFB33
	.long	.LFE33
	.long	.LLST33
	.long	0xb91
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x127
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x127
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"max"
	.byte	0x1
	.value	0x127
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"inf"
	.byte	0x1
	.value	0x127
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"nan"
	.byte	0x1
	.value	0x127
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.value	0x127
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.value	0x128
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x135
	.long	.LFB34
	.long	.LFE34
	.long	.LLST34
	.long	0xbe4
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.value	0x136
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.long	.LASF72
	.byte	0x1
	.value	0x136
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1
	.value	0x136
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x137
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x141
	.long	.LFB35
	.long	.LFE35
	.long	.LLST35
	.long	0xc37
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.value	0x142
	.long	0xea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF72
	.byte	0x1
	.value	0x142
	.long	0xea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1
	.value	0x142
	.long	0xea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x143
	.long	0xea
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x17
	.long	.LASF75
	.byte	0x1
	.value	0x14b
	.long	.LFB36
	.long	.LFE36
	.long	.LLST36
	.long	0xc7b
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0x14d
	.long	0x72
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x18
	.long	.LASF77
	.byte	0x1
	.value	0x14d
	.long	0x72
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x14e
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.value	0x155
	.long	.LFB37
	.long	.LFE37
	.long	.LLST37
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.value	0x15e
	.long	.LFB38
	.long	.LFE38
	.long	.LLST38
	.long	0xd3e
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x15f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x15f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"max"
	.byte	0x1
	.value	0x15f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"inf"
	.byte	0x1
	.value	0x15f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"nan"
	.byte	0x1
	.value	0x15f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.value	0x15f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"pi"
	.byte	0x1
	.value	0x15f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.value	0x160
	.long	0xbb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.value	0x162
	.long	0xbb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF80
	.byte	0x1
	.value	0x162
	.long	0xbb
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x16f
	.long	.LFB39
	.long	.LFE39
	.long	.LLST39
	.long	0xdcd
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x170
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.value	0x170
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.value	0x170
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF85
	.byte	0x1
	.value	0x170
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.value	0x170
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.value	0x170
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"pif"
	.byte	0x1
	.value	0x170
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"f"
	.byte	0x1
	.value	0x171
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0x179
	.long	.LFB40
	.long	.LFE40
	.long	.LLST40
	.long	0xe3a
	.uleb128 0x13
	.string	"si"
	.byte	0x1
	.value	0x17b
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.string	"sj"
	.byte	0x1
	.value	0x17b
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.string	"sr"
	.byte	0x1
	.value	0x17b
	.long	0x7d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"ui"
	.byte	0x1
	.value	0x183
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"uj"
	.byte	0x1
	.value	0x183
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"ur"
	.byte	0x1
	.value	0x183
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0x18b
	.long	.LFB41
	.long	.LFE41
	.long	.LLST41
	.long	0xea7
	.uleb128 0x13
	.string	"si"
	.byte	0x1
	.value	0x18d
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"sj"
	.byte	0x1
	.value	0x18d
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"sr"
	.byte	0x1
	.value	0x18d
	.long	0x88
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"ui"
	.byte	0x1
	.value	0x195
	.long	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"uj"
	.byte	0x1
	.value	0x195
	.long	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"ur"
	.byte	0x1
	.value	0x195
	.long	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x19d
	.long	.LFB42
	.long	.LFE42
	.long	.LLST42
	.long	0xf1a
	.uleb128 0x13
	.string	"sis"
	.byte	0x1
	.value	0x19f
	.long	0x72
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x13
	.string	"sjs"
	.byte	0x1
	.value	0x19f
	.long	0x72
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.string	"srs"
	.byte	0x1
	.value	0x19f
	.long	0x72
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x13
	.string	"uis"
	.byte	0x1
	.value	0x1a7
	.long	0x93
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.string	"ujs"
	.byte	0x1
	.value	0x1a7
	.long	0x93
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x13
	.string	"urs"
	.byte	0x1
	.value	0x1a7
	.long	0x93
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.value	0x1b0
	.long	.LFB43
	.long	.LFE43
	.long	.LLST43
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.value	0x1ba
	.long	0x4f
	.long	.LFB44
	.long	.LFE44
	.long	.LLST44
	.uleb128 0x12
	.long	.LASF93
	.byte	0x1
	.byte	0x92
	.long	0x4f
	.byte	0x5
	.byte	0x3
	.long	glob
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
	.long	0xf59
	.long	0x61e
	.string	"shortFromInt"
	.long	0x982
	.string	"main1"
	.long	0xf2e
	.string	"main"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0xe9
	.value	0x2
	.long	.Ldebug_info0
	.long	0xf59
	.long	0x72
	.string	"int16_t"
	.long	0x7d
	.string	"int32_t"
	.long	0x88
	.string	"int64_t"
	.long	0x93
	.string	"uint16_t"
	.long	0x9e
	.string	"uint32_t"
	.long	0xa9
	.string	"uint64_t"
	.long	0xc2
	.string	"Double"
	.long	0xcd
	.string	"Float"
	.long	0xdf
	.string	"ULong"
	.long	0xea
	.string	"Long"
	.long	0xf5
	.string	"UInt"
	.long	0x100
	.string	"Int"
	.long	0x10b
	.string	"UShort"
	.long	0x116
	.string	"Short"
	.long	0x121
	.string	"UChar"
	.long	0x12c
	.string	"Char"
	.long	0x152
	.string	"mix8_t"
	.long	0x1a6
	.string	"mix16_t"
	.long	0x203
	.string	"mix32_t"
	.long	0x260
	.string	"mix64_t"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"mix16_t"
.LASF74:
	.string	"susp_comp_Long"
.LASF77:
	.string	"smin"
.LASF0:
	.string	"unsigned int"
.LASF43:
	.string	"longToTwoInts"
.LASF37:
	.string	"floatFromInt"
.LASF52:
	.string	"add64"
.LASF32:
	.string	"mix64_t"
.LASF83:
	.string	"smallf"
.LASF40:
	.string	"longFromTwoInts"
.LASF76:
	.string	"smax"
.LASF56:
	.string	"playWithDoubles"
.LASF87:
	.string	"zerof"
.LASF14:
	.string	"uint32_t"
.LASF93:
	.string	"glob"
.LASF49:
	.string	"addU32"
.LASF20:
	.string	"float"
.LASF75:
	.string	"susp_comp_short"
.LASF61:
	.string	"shortFromInt"
.LASF10:
	.string	"int16_t"
.LASF58:
	.string	"playWithLongs"
.LASF92:
	.string	"normal_computations"
.LASF7:
	.string	"long long unsigned int"
.LASF67:
	.string	"small"
.LASF12:
	.string	"int64_t"
.LASF73:
	.string	"minusOne"
.LASF66:
	.string	"large"
.LASF54:
	.string	"addFloat"
.LASF19:
	.string	"Float"
.LASF72:
	.string	"imin"
.LASF78:
	.string	"norm_comp_double"
.LASF80:
	.string	"seventythree"
.LASF82:
	.string	"largef"
.LASF9:
	.string	"char"
.LASF53:
	.string	"addU64"
.LASF94:
	.string	"GNU C 4.5.2"
.LASF34:
	.string	"doubleFromLong"
.LASF45:
	.string	"doubleFromTwoInts"
.LASF65:
	.string	"susp_comp_double"
.LASF39:
	.string	"longFromTwoUInts_New"
.LASF29:
	.string	"halves"
.LASF36:
	.string	"intFromUInt"
.LASF6:
	.string	"long long int"
.LASF68:
	.string	"zero"
.LASF33:
	.string	"longFromDouble"
.LASF38:
	.string	"longFromTwoUInts"
.LASF21:
	.string	"ULong"
.LASF60:
	.string	"testDoubleFromUint"
.LASF18:
	.string	"Double"
.LASF85:
	.string	"inff"
.LASF31:
	.string	"mix32_t"
.LASF44:
	.string	"doubleFromTwoUInts"
.LASF96:
	.string	"/home/fred/workspace/HelloCojac/src"
.LASF24:
	.string	"UShort"
.LASF59:
	.string	"testLongFromUints"
.LASF88:
	.string	"norm_comp_int"
.LASF16:
	.string	"long double"
.LASF91:
	.string	"suspecious_computations"
.LASF13:
	.string	"uint16_t"
.LASF47:
	.string	"doubleToTwoInts"
.LASF25:
	.string	"Short"
.LASF57:
	.string	"playWithFloats"
.LASF5:
	.string	"short int"
.LASF70:
	.string	"susp_comp_int"
.LASF8:
	.string	"long int"
.LASF89:
	.string	"norm_comp_long"
.LASF28:
	.string	"mix8_t"
.LASF35:
	.string	"uintFromInt"
.LASF42:
	.string	"longToTwoUInts_New"
.LASF26:
	.string	"UChar"
.LASF79:
	.string	"thirtyeight"
.LASF15:
	.string	"uint64_t"
.LASF51:
	.string	"cast32to16"
.LASF41:
	.string	"longToTwoUInts"
.LASF46:
	.string	"doubleToTwoUInts"
.LASF22:
	.string	"Long"
.LASF64:
	.string	"ulpf"
.LASF50:
	.string	"add16"
.LASF3:
	.string	"long unsigned int"
.LASF95:
	.string	"HelloCojac.c"
.LASF11:
	.string	"int32_t"
.LASF86:
	.string	"nanf"
.LASF81:
	.string	"norm_comp_float"
.LASF1:
	.string	"unsigned char"
.LASF62:
	.string	"main1"
.LASF71:
	.string	"imax"
.LASF63:
	.string	"res2"
.LASF23:
	.string	"UInt"
.LASF48:
	.string	"add32"
.LASF84:
	.string	"maxf"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF97:
	.string	"main"
.LASF17:
	.string	"double"
.LASF69:
	.string	"susp_comp_float"
.LASF27:
	.string	"Char"
.LASF55:
	.string	"addDouble"
.LASF90:
	.string	"norm_comp_short"
	.ident	"GCC: (Ubuntu/Linaro 4.5.2-8ubuntu4) 4.5.2"
	.section	.note.GNU-stack,"",@progbits
