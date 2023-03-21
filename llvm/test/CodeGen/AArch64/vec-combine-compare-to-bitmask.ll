; RUN: llc -mtriple=aarch64-apple-darwin -mattr=+neon -verify-machineinstrs < %s | FileCheck %s

; Basic tests from input vector to bitmask
; IR generated from clang for:
; __builtin_convertvector + reinterpret_cast<uint16&>

define i16 @convert_to_bitmask16(<16 x i8> %vec) {
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
; CHECK-LABEL: convert_to_bitmask16
; CHECK: adrp	x8, lCPI0_0@PAGE
; CHECK: cmeq.16b	v0, v0, #0
; CHECK: ldr	q1, [x8, lCPI0_0@PAGEOFF]
; CHECK: bic.16b	v0, v1, v0
; CHECK: ext.16b	v1, v0, v0, #8
; CHECK: addv.8b	b0, v0
; CHECK: addv.8b	b1, v1
; CHECK: fmov	w9, s0
; CHECK: fmov	w8, s1
; CHECK: orr	w0, w9, w8, lsl #8
; CHECK: ret

  %cmp_result = icmp ne <16 x i8> %vec, zeroinitializer
  %bitmask = bitcast <16 x i1> %cmp_result to i16
  ret i16 %bitmask
}

define i16 @convert_to_bitmask8(<8 x i16> %vec) {
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
; CHECK: and	w0, w8, #0xff
; CHECK: ret

  %cmp_result = icmp ne <8 x i16> %vec, zeroinitializer
  %bitmask = bitcast <8 x i1> %cmp_result to i8
  %extended_bitmask = zext i8 %bitmask to i16
  ret i16 %extended_bitmask
}

define i16 @convert_to_bitmask4(<4 x i32> %vec) {
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
; CHECK: and	w0, w8, #0xff
; CHECK: ret

  %cmp_result = icmp ne <4 x i32> %vec, zeroinitializer
  %vector_pad = shufflevector <4 x i1> %cmp_result, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %bitmask = bitcast <8 x i1> %vector_pad to i8
  %extended_bitmask = zext i8 %bitmask to i16
  ret i16 %extended_bitmask
}

define i16 @convert_to_bitmask2(<2 x i64> %vec) {
; CHECK-LABEL: lCPI3_0:
; CHECK-NEXXT: .quad	1
; CHECK-NEXXT: .quad	2

; CHECK: adrp	x8, lCPI3_0@PAGE
; CHECK: cmeq.2d	v0, v0, #0
; CHECK: Lloh7:
; CHECK: ldr	q1, [x8, lCPI3_0@PAGEOFF]
; CHECK: bic.16b	v0, v1, v0
; CHECK: addp.2d	d0, v0
; CHECK: fmov	x8, d0
; CHECK: and	w0, w8, #0xff
; CHECK: ret

  %cmp_result = icmp ne <2 x i64> %vec, zeroinitializer
  %vector_pad = shufflevector <2 x i1> %cmp_result, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bitmask = bitcast <8 x i1> %vector_pad to i8
  %extended_bitmask = zext i8 %bitmask to i16
  ret i16 %extended_bitmask
}


define i16 @no_convert_bad_concat(<4 x i32> %vec) {
; CHECK-LABEL: no_convert_bad_concat:
; CHECK:     cmtst.4s v0, v0, v0
; CHECK-NOT: addv.4s	s0, v0

  %cmp_result = icmp ne <4 x i32> %vec, zeroinitializer
  %vector_pad = shufflevector <4 x i1> poison, <4 x i1> %cmp_result, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 4, i32 5, i32 6, i32 7>
  %bitmask = bitcast <8 x i1> %vector_pad to i8
  %extended_bitmask = zext i8 %bitmask to i16
  ret i16 %extended_bitmask
}

define <8 x i1> @no_convert_without_direct_bitcast(<8 x i16> %vec) {
; CHECK-LABEL: no_convert_without_direct_bitcast:
; CHECK:     cmtst.8h v0, v0, v0
; CHECK-NOT: addv.4s	s0, v0

   %cmp_result = icmp ne <8 x i16> %vec, zeroinitializer
   ret <8 x i1> %cmp_result
}

