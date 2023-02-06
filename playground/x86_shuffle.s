	.text
	.file	"neon_shuffle.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z15shuffle_builtinDv16_hS_
.LCPI0_0:
	.zero	16,15
	.text
	.globl	_Z15shuffle_builtinDv16_hS_
	.p2align	4, 0x90
	.type	_Z15shuffle_builtinDv16_hS_,@function
_Z15shuffle_builtinDv16_hS_:            # @_Z15shuffle_builtinDv16_hS_
	.cfi_startproc
# %bb.0:
	vpand	.LCPI0_0(%rip), %xmm1, %xmm1
	vpshufb	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	_Z15shuffle_builtinDv16_hS_, .Lfunc_end0-_Z15shuffle_builtinDv16_hS_
	.cfi_endproc
                                        # -- End function
	.section	".linker-options","e",@llvm_linker_options
	.ident	"clang version 16.0.0 (git@github.com:llvm/llvm-project.git 2140260d9154ea3b7dd905b72805004dd182b1a3)"
	.section	".note.GNU-stack","",@progbits
