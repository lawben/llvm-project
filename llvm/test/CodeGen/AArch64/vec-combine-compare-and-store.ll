; RUN: llc -mtriple=aarch64-apple-darwin -mattr=+neon -verify-machineinstrs < %s | FileCheck %s

define void @store_16_elements(<16 x i8> %vec, ptr %out) {
; Bits used in mask
; CHECK-LABEL: lCPI0_0
; CHECK-NEXT: .byte	1
; CHECK-NEXT: .byte	2
; CHECK-NEXT: .byte	4
; CHECK-NEXT: .byte	8
; CHECK-NEXT: .byte	16
; CHECK-NEXT: .byte	32
; CHECK-NEXT: .byte	64
; CHECK-NEXT: .byte	128
; CHECK-NEXT: .byte	1
; CHECK-NEXT: .byte	2
; CHECK-NEXT: .byte	4
; CHECK-NEXT: .byte	8
; CHECK-NEXT: .byte	16
; CHECK-NEXT: .byte	32
; CHECK-NEXT: .byte	64
; CHECK-NEXT: .byte	128

; Actual conversion
; CHECK-LABEL: store_16_elements
; CHECK: adrp	x8, lCPI0_0@PAGE
; CHECK: cmeq.16b	v0, v0, #0
; CHECK: ldr	q1, [x8, lCPI0_0@PAGEOFF]
; CHECK: bic.16b	v0, v1, v0
; CHECK: ext.16b	v1, v0, v0, #8
; CHECK: addv.8b	b0, v0
; CHECK: addv.8b	b1, v1
; CHECK: fmov	w9, s0
; CHECK: fmov	w8, s1
; CHECK: orr	w8, w9, w8, lsl #8
; CHECK; strh	w8, [x0]
; CHECK: ret

  %cmp_result = icmp ne <16 x i8> %vec, zeroinitializer
  store <16 x i1> %cmp_result, ptr %out
  ret void
}

define void @store_8_elements(<8 x i16> %vec, ptr %out) {
; CHECK-LABEL: lCPI1_0:
; CHECK-NEXT: .short	1
; CHECK-NEXT: .short	2
; CHECK-NEXT: .short	4
; CHECK-NEXT: .short	8
; CHECK-NEXT: .short	16
; CHECK-NEXT: .short	32
; CHECK-NEXT: .short	64
; CHECK-NEXT: .short	128

; CHECK: adrp	x8, lCPI1_0@PAGE
; CHECK: cmeq.8h	v0, v0, #0
; CHECK: ldr	q1, [x8, lCPI1_0@PAGEOFF]
; CHECK: bic.16b	v0, v1, v0
; CHECK: addv.8h	h0, v0
; CHECK: fmov	w8, s0
; CHECK: strb	w8, [x0]
; CHECK: ret

  %cmp_result = icmp ne <8 x i16> %vec, zeroinitializer
  store <8 x i1> %cmp_result, ptr %out
  ret void
}

define void @store_4_elements(<4 x i32> %vec, ptr %out) {
; CHECK-LABEL: lCPI2_0:
; CHECK: .long	1
; CHECK: .long	2
; CHECK: .long	4
; CHECK: .long	8

; CHECK: adrp	x8, lCPI2_0@PAGE
; CHECK: cmeq.4s	v0, v0, #0
; CHECK: Lloh5:
; CHECK: ldr	q1, [x8, lCPI2_0@PAGEOFF]
; CHECK: bic.16b	v0, v1, v0
; CHECK: addv.4s	s0, v0
; CHECK: fmov	w8, s0
; CHECK: strb	w8, [x0]
; CHECK: ret

  %cmp_result = icmp ne <4 x i32> %vec, zeroinitializer
  store <4 x i1> %cmp_result, ptr %out
  ret void
}

define void @store_2_elements(<2 x i64> %vec, ptr %out) {
; CHECK-LABEL: lCPI3_0:
; CHECK-NEXT: .quad	1
; CHECK-NEXT: .quad	2

; CHECK: adrp	x8, lCPI3_0@PAGE
; CHECK: cmeq.2d	v0, v0, #0
; CHECK: Lloh7:
; CHECK: ldr	q1, [x8, lCPI3_0@PAGEOFF]
; CHECK: bic.16b	v0, v1, v0
; CHECK: addp.2d	d0, v0
; CHECK: fmov	x8, d0
; CHECK: strb	w8, [x0]
; CHECK: ret

  %cmp_result = icmp ne <2 x i64> %vec, zeroinitializer
  store <2 x i1> %cmp_result, ptr %out
  ret void
}

define void @no_combine_without_truncate(<16 x i8> %vec, ptr %out) {
; CHECK-LABEL: no_combine_without_truncate
; CHECK:     cmtst.16b v0, v0, v0
; CHECK-NOT: addv.8b	b0, v0

  %cmp_result = icmp ne <16 x i8> %vec, zeroinitializer
  %extended_result = sext <16 x i1> %cmp_result to <16 x i8>
  store <16 x i8> %extended_result, ptr %out
  ret void
}

define void @no_combine_without_compare(<16 x i8> %vec, ptr %out) {
; CHECK-LABEL: no_combine_without_compare
; CHECK:     umov.b w8, v0[0]
; CHECK-NOT: addv.8b	b0, v0

  %trunc = trunc <16 x i8> %vec to <16 x i1>
  store <16 x i1> %trunc, ptr %out
  ret void
}
