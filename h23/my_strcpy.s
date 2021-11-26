	.file	"my_strcpy.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu my_strcpy.c -mtune=generic
# -march=x86-64 -Wall -fverbose-asm -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat-security -fstack-clash-protection
# -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop
# -fstack-clash-protection -fstack-protector-strong -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.type	strcpy, @function
strcpy:
.LFB0:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# dest, dest
	movq	%rsi, -32(%rbp)	# src, src
# my_strcpy.c:7: 	__asm__ __volatile__(
	movq	-32(%rbp), %rax	# src, tmp87
	movq	-24(%rbp), %rdx	# dest, tmp88
	movq	%rax, %rsi	# tmp87, tmp87
	movq	%rdx, %rdi	# tmp88, tmp88
#APP
# 7 "my_strcpy.c" 1
	1:	lodsb
	stosb
	testb %al,%al
	jne 1b
# 0 "" 2
#NO_APP
	movl	%edi, %edx	# tmp88, d1
	movl	%esi, %ecx	# tmp87, d0
	movl	%ecx, -12(%rbp)	# d0, d0
	movl	%edx, -8(%rbp)	# d1, d1
	movl	%eax, -4(%rbp)	# d2, d2
# my_strcpy.c:14: 	return dest ;
	movq	-24(%rbp), %rax	# dest, _8
# my_strcpy.c:15: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	strcpy, .-strcpy
	.section	.rodata
.LC0:
	.string	"copied sring by my_strcpy"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
# my_strcpy.c:18: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp87
	movq	%rax, -8(%rbp)	# tmp87, D.2334
	xorl	%eax, %eax	# tmp87
# my_strcpy.c:20: 	strcpy( buf, "copied sring by my_strcpy" ) ;
	leaq	-112(%rbp), %rax	#, tmp84
	leaq	.LC0(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp84,
	call	strcpy	#
# my_strcpy.c:21: 	printf( "%s\n", buf ) ; 
	leaq	-112(%rbp), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	puts@PLT	#
# my_strcpy.c:22: 	return 0 ;
	movl	$0, %eax	#, _4
# my_strcpy.c:23: }
	movq	-8(%rbp), %rdx	# D.2334, tmp88
	xorq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
