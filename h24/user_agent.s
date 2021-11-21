	.file	"user_agent.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=62 --param ggc-min-heapsize=60847
# options passed:  -imultiarch x86_64-linux-gnu user_agent.c -mtune=generic
# -march=x86-64 -fverbose-asm -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat -Wformat-security
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
	.section	.rodata
.LC0:
	.string	"user_agent.c"
.LC1:
	.string	"hdr_value != NULL"
.LC2:
	.string	"User-Agent: "
.LC3:
	.string	"%s%s"
	.text
	.globl	get_user_agent_hdr
	.type	get_user_agent_hdr, @function
get_user_agent_hdr:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# hdr_value, hdr_value
# user_agent.c:11: 	assert(hdr_value != NULL);
	cmpq	$0, -40(%rbp)	#, hdr_value
	jne	.L2	#,
# user_agent.c:11: 	assert(hdr_value != NULL);
	leaq	__PRETTY_FUNCTION__.3029(%rip), %rcx	#,
	movl	$11, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L2:
# user_agent.c:12: 	const size_t name_len = strlen(USER_AGENT_HDR_NAME);
	movq	$12, -24(%rbp)	#, name_len
# user_agent.c:13: 	const size_t value_len = strlen(hdr_value);
	movq	-40(%rbp), %rax	# hdr_value, tmp86
	movq	%rax, %rdi	# tmp86,
	call	strlen@PLT	#
	movq	%rax, -16(%rbp)	# tmp87, value_len
# user_agent.c:14: 	char *hdr = malloc(sizeof(char) * (name_len + value_len + 1));
	movq	-24(%rbp), %rdx	# name_len, tmp88
	movq	-16(%rbp), %rax	# value_len, tmp89
	addq	%rdx, %rax	# tmp88, _1
# user_agent.c:14: 	char *hdr = malloc(sizeof(char) * (name_len + value_len + 1));
	addq	$1, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp90, hdr
# user_agent.c:16: 	if (hdr)
	cmpq	$0, -8(%rbp)	#, hdr
	je	.L3	#,
# user_agent.c:17: 		sprintf(hdr, "%s%s", USER_AGENT_HDR_NAME, hdr_value);
	movq	-40(%rbp), %rdx	# hdr_value, tmp91
	movq	-8(%rbp), %rax	# hdr, tmp92
	movq	%rdx, %rcx	# tmp91,
	leaq	.LC2(%rip), %rdx	#,
	leaq	.LC3(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L3:
# user_agent.c:18: 	return hdr;
	movq	-8(%rbp), %rax	# hdr, _12
# user_agent.c:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	get_user_agent_hdr, .-get_user_agent_hdr
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.3029, @object
	.size	__PRETTY_FUNCTION__.3029, 19
__PRETTY_FUNCTION__.3029:
	.string	"get_user_agent_hdr"
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
