	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
	.globl	__Z15shuffle_builtinDv16_hS_    ; -- Begin function _Z15shuffle_builtinDv16_hS_
	.p2align	2
__Z15shuffle_builtinDv16_hS_:           ; @_Z15shuffle_builtinDv16_hS_
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	umov.b	w10, v1[0]
	mov	x8, sp
	mov	x9, sp
	bfxil	x9, x10, #0, #4
	umov.b	w11, v1[1]
	mov	x10, sp
	bfxil	x10, x11, #0, #4
	umov.b	w12, v1[2]
	mov	x11, sp
	bfxil	x11, x12, #0, #4
	umov.b	w12, v1[3]
	mov	x13, sp
	bfxil	x13, x12, #0, #4
	umov.b	w12, v1[4]
	mov	x14, sp
	bfxil	x14, x12, #0, #4
	umov.b	w12, v1[5]
	mov	x15, sp
	bfxil	x15, x12, #0, #4
	umov.b	w12, v1[6]
	mov	x16, sp
	bfxil	x16, x12, #0, #4
	umov.b	w12, v1[7]
	mov	x17, sp
	bfxil	x17, x12, #0, #4
	umov.b	w12, v1[8]
	mov	x0, sp
	bfxil	x0, x12, #0, #4
	umov.b	w12, v1[9]
	mov	x1, sp
	bfxil	x1, x12, #0, #4
	umov.b	w12, v1[10]
	mov	x2, sp
	bfxil	x2, x12, #0, #4
	umov.b	w12, v1[11]
	mov	x3, sp
	bfxil	x3, x12, #0, #4
	umov.b	w12, v1[12]
	mov	x4, sp
	bfxil	x4, x12, #0, #4
	umov.b	w12, v1[13]
	mov	x5, sp
	bfxil	x5, x12, #0, #4
	umov.b	w12, v1[14]
	mov	x6, sp
	bfxil	x6, x12, #0, #4
	umov.b	w12, v1[15]
	str	q0, [sp]
	ldr	b0, [x9]
	ld1.b	{ v0 }[1], [x10]
	ld1.b	{ v0 }[2], [x11]
	ld1.b	{ v0 }[3], [x13]
	ld1.b	{ v0 }[4], [x14]
	ld1.b	{ v0 }[5], [x15]
	ld1.b	{ v0 }[6], [x16]
	ld1.b	{ v0 }[7], [x17]
	ld1.b	{ v0 }[8], [x0]
	ld1.b	{ v0 }[9], [x1]
	ld1.b	{ v0 }[10], [x2]
	ld1.b	{ v0 }[11], [x3]
	ld1.b	{ v0 }[12], [x4]
	ld1.b	{ v0 }[13], [x5]
	bfxil	x8, x12, #0, #4
	ld1.b	{ v0 }[14], [x6]
	ld1.b	{ v0 }[15], [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
