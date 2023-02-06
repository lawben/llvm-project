	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	movi.2d	v0, #0xff00ff00ff00ff
	bl	__Z15shuffle_convertDv16_h
	mov	x19, x0
Lloh0:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #6
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w8, w19
	str	x8, [sp]
	mov	x1, sp
	bl	__ZNSt3__1lsIcNS_11char_traitsIcEELm16EEERNS_13basic_ostreamIT_T0_EES7_RKNS_6bitsetIXT1_EEE
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #8
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
Lloh4:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh5:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
; %bb.1:                                ; %_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp2:
	mov	w1, #10
	blr	x8
Ltmp3:
; %bb.2:                                ; %_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_.exit
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	w0, #0
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB0_3:
	.cfi_restore_state
Ltmp4:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0                    ;   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp3               ;   Call between Ltmp3 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsIcNS_11char_traitsIcEELm16EEERNS_13basic_ostreamIT_T0_EES7_RKNS_6bitsetIXT1_EEE ; -- Begin function _ZNSt3__1lsIcNS_11char_traitsIcEELm16EEERNS_13basic_ostreamIT_T0_EES7_RKNS_6bitsetIXT1_EEE
	.weak_def_can_be_hidden	__ZNSt3__1lsIcNS_11char_traitsIcEELm16EEERNS_13basic_ostreamIT_T0_EES7_RKNS_6bitsetIXT1_EEE
	.p2align	2
__ZNSt3__1lsIcNS_11char_traitsIcEELm16EEERNS_13basic_ostreamIT_T0_EES7_RKNS_6bitsetIXT1_EEE: ; @_ZNSt3__1lsIcNS_11char_traitsIcEELm16EEERNS_13basic_ostreamIT_T0_EES7_RKNS_6bitsetIXT1_EEE
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_remember_state
	mov	x20, x1
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #16
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp5:
Lloh6:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh7:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #16
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp6:
; %bb.1:                                ; %_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE.exit
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp7:
	mov	w1, #48
	blr	x8
Ltmp8:
; %bb.2:                                ; %_ZNKSt3__15ctypeIcE5widenB6v15007Ec.exit
	mov	x21, x0
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp10:
	add	x8, sp, #8
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp11:
; %bb.3:
Ltmp13:
Lloh8:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh9:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp14:
; %bb.4:                                ; %_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE.exit11
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp15:
	mov	w1, #49
	blr	x8
Ltmp16:
; %bb.5:                                ; %_ZNKSt3__15ctypeIcE5widenB6v15007Ec.exit12
	mov	w8, #16
	strb	w8, [sp, #47]
	and	x8, x21, #0xff
	mov	x9, #72340172838076673
	mul	x8, x8, x9
	stp	x8, x8, [sp, #24]
	strb	wzr, [sp, #40]
	ldr	x8, [x20]
	tbnz	w8, #0, LBB1_26
; %bb.6:
	tbnz	w8, #1, LBB1_27
LBB1_7:
	tbnz	w8, #2, LBB1_28
LBB1_8:
	tbnz	w8, #3, LBB1_29
LBB1_9:
	tbnz	w8, #4, LBB1_30
LBB1_10:
	tbnz	w8, #5, LBB1_31
LBB1_11:
	tbnz	w8, #6, LBB1_32
LBB1_12:
	tbnz	w8, #7, LBB1_33
LBB1_13:
	tbnz	w8, #8, LBB1_34
LBB1_14:
	tbnz	w8, #9, LBB1_35
LBB1_15:
	tbnz	w8, #10, LBB1_36
LBB1_16:
	tbnz	w8, #11, LBB1_37
LBB1_17:
	tbnz	w8, #12, LBB1_38
LBB1_18:
	tbnz	w8, #13, LBB1_39
LBB1_19:
	tbnz	w8, #14, LBB1_40
LBB1_20:
	tbz	w8, #15, LBB1_22
LBB1_21:
	strb	w0, [sp, #24]
LBB1_22:                                ; %_ZNKSt3__16bitsetILm16EE9to_stringIcNS_11char_traitsIcEEEENS_12basic_stringIT_T0_NS_9allocatorIS6_EEEES6_S6_.exit
Ltmp18:
	add	x1, sp, #24
	mov	x0, x19
	mov	w2, #16
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp19:
; %bb.23:                               ; %_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit
	mov	x19, x0
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB1_25
; %bb.24:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
LBB1_25:                                ; %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	add	x0, sp, #16
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
LBB1_26:
	.cfi_restore_state
	strb	w0, [sp, #39]
	tbz	w8, #1, LBB1_7
LBB1_27:
	strb	w0, [sp, #38]
	tbz	w8, #2, LBB1_8
LBB1_28:
	strb	w0, [sp, #37]
	tbz	w8, #3, LBB1_9
LBB1_29:
	strb	w0, [sp, #36]
	tbz	w8, #4, LBB1_10
LBB1_30:
	strb	w0, [sp, #35]
	tbz	w8, #5, LBB1_11
LBB1_31:
	strb	w0, [sp, #34]
	tbz	w8, #6, LBB1_12
LBB1_32:
	strb	w0, [sp, #33]
	tbz	w8, #7, LBB1_13
LBB1_33:
	strb	w0, [sp, #32]
	tbz	w8, #8, LBB1_14
LBB1_34:
	strb	w0, [sp, #31]
	tbz	w8, #9, LBB1_15
LBB1_35:
	strb	w0, [sp, #30]
	tbz	w8, #10, LBB1_16
LBB1_36:
	strb	w0, [sp, #29]
	tbz	w8, #11, LBB1_17
LBB1_37:
	strb	w0, [sp, #28]
	tbz	w8, #12, LBB1_18
LBB1_38:
	strb	w0, [sp, #27]
	tbz	w8, #13, LBB1_19
LBB1_39:
	strb	w0, [sp, #26]
	tbz	w8, #14, LBB1_20
LBB1_40:
	strb	w0, [sp, #25]
	tbnz	w8, #15, LBB1_21
	b	LBB1_22
LBB1_41:
Ltmp20:
	mov	x19, x0
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB1_45
; %bb.42:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
	b	LBB1_45
LBB1_43:
Ltmp12:
	b	LBB1_47
LBB1_44:
Ltmp17:
	mov	x19, x0
LBB1_45:                                ; %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit13
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_48
LBB1_46:
Ltmp9:
LBB1_47:
	mov	x19, x0
LBB1_48:
	add	x0, sp, #16
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh8, Lloh9
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp5-Lfunc_begin1             ;   Call between Lfunc_begin1 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp8-Ltmp5                    ;   Call between Ltmp5 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin1             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin1            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp16-Ltmp13                  ;   Call between Ltmp13 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin1            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin1            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Lfunc_end1-Ltmp19              ;   Call between Ltmp19 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_remember_state
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp21:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp22:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB2_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB2_7
; %bb.3:
Ltmp24:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp25:
; %bb.4:                                ; %.noexc
Ltmp26:
Lloh10:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh11:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp27:
; %bb.5:                                ; %_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp28:
	mov	w1, #32
	blr	x8
Ltmp29:
; %bb.6:                                ; %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec.exit.i
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB2_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp31:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp32:
; %bb.8:
	cbnz	x0, LBB2_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp34:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp35:
LBB2_10:                                ; %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej.exit
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB2_11:
	mov	x0, x19
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	ret
LBB2_12:
	.cfi_restore_state
Ltmp36:
	b	LBB2_15
LBB2_13:
Ltmp30:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB2_16
LBB2_14:
Ltmp33:
LBB2_15:                                ; %.body
	mov	x20, x0
LBB2_16:                                ; %.body
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB2_18
LBB2_17:
Ltmp23:
	mov	x20, x0
LBB2_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp37:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp38:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB2_11
LBB2_20:
Ltmp39:
	mov	x19, x0
Ltmp40:
	bl	___cxa_end_catch
Ltmp41:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_22:
Ltmp42:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh10, Lloh11
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp21-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin2            ;     jumps to Ltmp23
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp24-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp33-Lfunc_begin2            ;     jumps to Ltmp33
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp26-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp29-Ltmp26                  ;   Call between Ltmp26 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin2            ;     jumps to Ltmp30
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp31-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp32-Ltmp31                  ;   Call between Ltmp31 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin2            ;     jumps to Ltmp33
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp34-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Ltmp35-Ltmp34                  ;   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin2            ;     jumps to Ltmp36
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp35-Lfunc_begin2            ; >> Call Site 6 <<
	.uleb128 Ltmp37-Ltmp35                  ;   Call between Ltmp35 and Ltmp37
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin2            ; >> Call Site 7 <<
	.uleb128 Ltmp38-Ltmp37                  ;   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin2            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin2            ; >> Call Site 8 <<
	.uleb128 Ltmp40-Ltmp38                  ;   Call between Ltmp38 and Ltmp40
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin2            ; >> Call Site 9 <<
	.uleb128 Ltmp41-Ltmp40                  ;   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin2            ;     jumps to Ltmp42
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp41-Lfunc_begin2            ; >> Call Site 10 <<
	.uleb128 Lfunc_end2-Ltmp41              ;   Call between Ltmp41 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_remember_state
	mov	x19, x0
	cbz	x0, LBB3_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB3_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB3_15
LBB3_3:
	cmp	x23, #1
	b.lt	LBB3_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB3_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB3_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB3_8
LBB3_7:                                 ; %.thread.i.i.i
	add	x8, x23, #16
	and	x26, x8, #0xfffffffffffffff0
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB3_8:                                 ; %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Emc.exit
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp43:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp44:
; %bb.9:                                ; %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl.exit
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB3_11
; %bb.10:                               ; %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
	cmp	x24, x23
	b.ne	LBB3_15
	b	LBB3_12
LBB3_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB3_15
LBB3_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB3_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB3_15
LBB3_14:
	str	xzr, [x20, #24]
	b	LBB3_16
LBB3_15:
	mov	x19, #0
LBB3_16:
	mov	x0, x19
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	ret
LBB3_17:
	.cfi_restore_state
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev
LBB3_18:
Ltmp45:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB3_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB3_20:                                ; %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit43
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp43-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp43
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin3            ;     jumps to Ltmp45
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp44              ;   Call between Ltmp44 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh12:
	adrp	x0, l_.str.1@PAGE
Lloh13:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB6v15007EPKc
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB6v15007EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB6v15007EPKc
	.globl	__ZNSt3__120__throw_length_errorB6v15007EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB6v15007EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB6v15007EPKc: ; @_ZNSt3__120__throw_length_errorB6v15007EPKc
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp46:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B6v15007EPKc
Ltmp47:
; %bb.1:
Lloh14:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh15:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh16:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh17:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB6_2:
Ltmp48:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh14, Lloh15
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp46-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp46
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin4            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp47              ;   Call between Ltmp47 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B6v15007EPKc ; -- Begin function _ZNSt12length_errorC1B6v15007EPKc
	.globl	__ZNSt12length_errorC1B6v15007EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B6v15007EPKc
	.p2align	2
__ZNSt12length_errorC1B6v15007EPKc:     ; @_ZNSt12length_errorC1B6v15007EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh18:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh19:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.loh AdrpLdrGot	Lloh18, Lloh19
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"mask: "

l_.str.1:                               ; @.str.1
	.asciz	"basic_string"

.subsections_via_symbols
