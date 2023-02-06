	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function _Z15shuffle_convertDv16_h
lCPI0_0:
	.byte	1                               ; 0x1
	.byte	2                               ; 0x2
	.byte	4                               ; 0x4
	.byte	8                               ; 0x8
	.byte	16                              ; 0x10
	.byte	32                              ; 0x20
	.byte	64                              ; 0x40
	.byte	128                             ; 0x80
	.byte	1                               ; 0x1
	.byte	2                               ; 0x2
	.byte	4                               ; 0x4
	.byte	8                               ; 0x8
	.byte	16                              ; 0x10
	.byte	32                              ; 0x20
	.byte	64                              ; 0x40
	.byte	128                             ; 0x80
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z15shuffle_convertDv16_h
	.p2align	2
__Z15shuffle_convertDv16_h:             ; @_Z15shuffle_convertDv16_h
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	cmeq.16b	v0, v0, #0
Lloh0:
	adrp	x8, lCPI0_0@PAGE
Lloh1:
	ldr	q1, [x8, lCPI0_0@PAGEOFF]
	bic.16b	v0, v1, v0
	addv.8b	b1, v0
	fmov	w8, s1
	ext.16b	v0, v0, v0, #8
	addv.8b	b0, v0
	fmov	w9, s0
	orr	w8, w8, w9, lsl #8
	and	w0, w8, #0xffff
	add	sp, sp, #16
	ret
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
