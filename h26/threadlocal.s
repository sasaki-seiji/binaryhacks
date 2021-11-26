	.file	"threadlocal.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu threadlocal.c
# -mtune=generic -march=x86-64 -Wall -fverbose-asm
# -fasynchronous-unwind-tables -fstack-protector-strong -Wformat-security
# -fstack-clash-protection -fcf-protection
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
	.globl	tls
	.section	.tbss,"awT",@nobits
	.align 4
	.type	tls, @object
	.size	tls, 4
tls:
	.zero	4
	.comm	global,4,4
	.section	.rodata
.LC0:
	.string	"Thread=%d tls=%d global=%d\n"
	.text
	.globl	func
	.type	func, @function
func:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg, arg
# threadlocal.c:14: 	int num = (int)(intptr_t)arg ;
	movq	-24(%rbp), %rax	# arg, arg.0_1
# threadlocal.c:14: 	int num = (int)(intptr_t)arg ;
	movl	%eax, -4(%rbp)	# arg.0_1, num
# threadlocal.c:15: 	tls = num ;
	movl	-4(%rbp), %eax	# num, tmp87
	movl	%eax, %fs:tls@tpoff	# tmp87, tls
# threadlocal.c:16: 	global = num ;
	movl	-4(%rbp), %eax	# num, tmp88
	movl	%eax, global(%rip)	# tmp88, global
# threadlocal.c:17: 	sleep(1) ;
	movl	$1, %edi	#,
	call	sleep@PLT	#
# threadlocal.c:18: 	printf( "Thread=%d tls=%d global=%d\n", num, tls, global ) ;
	movl	global(%rip), %ecx	# global, global.1_2
	movl	%fs:tls@tpoff, %edx	# tls, tls.2_3
	movl	-4(%rbp), %eax	# num, tmp89
	movl	%eax, %esi	# tmp89,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# threadlocal.c:20: 	return NULL ;
	movl	$0, %eax	#, _11
# threadlocal.c:21: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func, .-func
	.section	.rodata
.LC1:
	.string	"error pthread_create"
.LC2:
	.string	"error pthread_join"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# threadlocal.c:24: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	movq	%rax, -8(%rbp)	# tmp98, D.3991
	xorl	%eax, %eax	# tmp98
# threadlocal.c:29: 	for( num = 0 ; num < THREADS ; num++ ) {
	movl	$0, -40(%rbp)	#, num
# threadlocal.c:29: 	for( num = 0 ; num < THREADS ; num++ ) {
	jmp	.L4	#
.L6:
# threadlocal.c:31: 								(void*)(intptr_t)num ) ;
	movl	-40(%rbp), %eax	# num, tmp88
	cltq
# threadlocal.c:30: 		ret = pthread_create( &thread[num], NULL, &func, 
	movq	%rax, %rcx	# _1, _2
	leaq	-32(%rbp), %rax	#, tmp89
	movl	-40(%rbp), %edx	# num, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	salq	$3, %rdx	#, tmp92
	addq	%rdx, %rax	# tmp92, _3
	leaq	func(%rip), %rdx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _3,
	call	pthread_create@PLT	#
	movl	%eax, -36(%rbp)	# tmp93, ret
# threadlocal.c:32: 		if( ret ) {
	cmpl	$0, -36(%rbp)	#, ret
	je	.L5	#,
# threadlocal.c:33: 			printf( "error pthread_create\n" ) ;
	leaq	.LC1(%rip), %rdi	#,
	call	puts@PLT	#
# threadlocal.c:34: 			exit( 1 ) ;
	movl	$1, %edi	#,
	call	exit@PLT	#
.L5:
# threadlocal.c:29: 	for( num = 0 ; num < THREADS ; num++ ) {
	addl	$1, -40(%rbp)	#, num
.L4:
# threadlocal.c:29: 	for( num = 0 ; num < THREADS ; num++ ) {
	cmpl	$2, -40(%rbp)	#, num
	jle	.L6	#,
# threadlocal.c:38: 	for( num = 0 ; num < THREADS ; num++ ) {
	movl	$0, -40(%rbp)	#, num
# threadlocal.c:38: 	for( num = 0 ; num < THREADS ; num++ ) {
	jmp	.L7	#
.L9:
# threadlocal.c:39: 		ret = pthread_join( thread[num], NULL ) ;
	movl	-40(%rbp), %eax	# num, tmp95
	cltq
	movq	-32(%rbp,%rax,8), %rax	# thread, _4
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _4,
	call	pthread_join@PLT	#
	movl	%eax, -36(%rbp)	# tmp96, ret
# threadlocal.c:40: 		if( ret ) {
	cmpl	$0, -36(%rbp)	#, ret
	je	.L8	#,
# threadlocal.c:41: 			printf( "error pthread_join\n" ) ;
	leaq	.LC2(%rip), %rdi	#,
	call	puts@PLT	#
# threadlocal.c:42: 			exit( 1 ) ;
	movl	$1, %edi	#,
	call	exit@PLT	#
.L8:
# threadlocal.c:38: 	for( num = 0 ; num < THREADS ; num++ ) {
	addl	$1, -40(%rbp)	#, num
.L7:
# threadlocal.c:38: 	for( num = 0 ; num < THREADS ; num++ ) {
	cmpl	$2, -40(%rbp)	#, num
	jle	.L9	#,
# threadlocal.c:46: 	return 0 ;
	movl	$0, %eax	#, _12
# threadlocal.c:47: } 
	movq	-8(%rbp), %rsi	# D.3991, tmp99
	xorq	%fs:40, %rsi	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
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
