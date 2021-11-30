	.file	"heapexec2.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu heapexec2.c -mtune=generic
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
# heapexec2.c:11: 	return 3.14 ;
	movsd	.LC0(%rip), %xmm0	#, _1
# heapexec2.c:12: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func, .-func
	.globl	allow_execution
	.type	allow_execution, @function
allow_execution:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# addr, addr
# heapexec2.c:16: 	long pagesize = (int)sysconf(_SC_PAGESIZE) ;
	movl	$30, %edi	#,
	call	sysconf@PLT	#
# heapexec2.c:16: 	long pagesize = (int)sysconf(_SC_PAGESIZE) ;
	cltq
	movq	%rax, -16(%rbp)	# tmp89, pagesize
# heapexec2.c:17: 	char *p = (char *)((long)addr & ~(pagesize - 1)) ;
	movq	-16(%rbp), %rax	# pagesize, tmp90
	negq	%rax	# tmp90
	movq	%rax, %rdx	# tmp90, _3
# heapexec2.c:17: 	char *p = (char *)((long)addr & ~(pagesize - 1)) ;
	movq	-24(%rbp), %rax	# addr, addr.0_4
# heapexec2.c:17: 	char *p = (char *)((long)addr & ~(pagesize - 1)) ;
	andq	%rdx, %rax	# _3, _5
# heapexec2.c:17: 	char *p = (char *)((long)addr & ~(pagesize - 1)) ;
	movq	%rax, -8(%rbp)	# _5, p
# heapexec2.c:18: 	mprotect(p, pagesize * 10L, PROT_READ | PROT_WRITE | PROT_EXEC) ;
	movq	-16(%rbp), %rdx	# pagesize, tmp91
	movq	%rdx, %rax	# tmp91, tmp92
	salq	$2, %rax	#, tmp92
	addq	%rdx, %rax	# tmp91, tmp92
	addq	%rax, %rax	# tmp93
# heapexec2.c:18: 	mprotect(p, pagesize * 10L, PROT_READ | PROT_WRITE | PROT_EXEC) ;
	movq	%rax, %rcx	# _6, _7
	movq	-8(%rbp), %rax	# p, tmp94
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# _7,
	movq	%rax, %rdi	# tmp94,
	call	mprotect@PLT	#
# heapexec2.c:19: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	allow_execution, .-allow_execution
	.section	.rodata
.LC1:
	.string	"PI equals to %g\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# heapexec2.c:23: 	void *p = malloc(1000);
	movl	$1000, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp86, p
# heapexec2.c:24: 	memcpy(p, func, 1000);
	movq	-8(%rbp), %rax	# p, tmp87
	movl	$1000, %edx	#,
	leaq	func(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp87,
	call	memcpy@PLT	#
# heapexec2.c:25: 	allow_execution(p);
	movq	-8(%rbp), %rax	# p, tmp88
	movq	%rax, %rdi	# tmp88,
	call	allow_execution	#
# heapexec2.c:26: 	printf("PI equals to %g\n", ((double(*)(void))p)()) ; 
	movq	-8(%rbp), %rax	# p, p.1_1
# heapexec2.c:26: 	printf("PI equals to %g\n", ((double(*)(void))p)()) ; 
	call	*%rax	# p.1_1
	leaq	.LC1(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# heapexec2.c:27: 	return 0 ;
	movl	$0, %eax	#, _10
# heapexec2.c:28: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	1374389535
	.long	1074339512
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
