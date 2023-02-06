	.text
	.file	"neon_bitcast.cpp"
	.globl	_Z15shuffle_convertDv16_h       # -- Begin function _Z15shuffle_convertDv16_h
	.p2align	4, 0x90
	.type	_Z15shuffle_convertDv16_h,@function
_Z15shuffle_convertDv16_h:              # @_Z15shuffle_convertDv16_h
	.cfi_startproc
# %bb.0:
	vptestmb	%xmm0, %xmm0, %k0
	kmovd	%k0, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end0:
	.size	_Z15shuffle_convertDv16_h, .Lfunc_end0-_Z15shuffle_convertDv16_h
	.cfi_endproc
                                        # -- End function
	.section	".linker-options","e",@llvm_linker_options
	.ident	"clang version 16.0.0 (git@github.com:llvm/llvm-project.git 2140260d9154ea3b7dd905b72805004dd182b1a3)"
	.section	".note.GNU-stack","",@progbits
