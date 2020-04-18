	.file	"u8x8_d_uc1611.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_uc1611_common,"ax",@progbits
	.align	4
	.global	u8x8_d_uc1611_common
	.type	u8x8_d_uc1611_common, @function
u8x8_d_uc1611_common:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_uc1611.c"
	.loc 1 85 1 view -0
	.loc 1 85 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 86 3 is_stmt 1 view .LVU2
	.loc 1 87 3 view .LVU3
	.loc 1 88 3 view .LVU4
	.loc 1 85 1 is_stmt 0 view .LVU5
	extui	a3, a3, 0, 8
	.loc 1 85 1 view .LVU6
	movi.n	a8, 0xe
	extui	a4, a4, 0, 8
	.loc 1 85 1 view .LVU7
	beq	a3, a8, .L2
	movi.n	a9, 0xf
	.loc 1 133 14 view .LVU8
	movi.n	a8, 0
	bne	a3, a9, .L3
.LVL1:
.LBB4:
.LBB5:
	.loc 1 91 7 is_stmt 1 view .LVU9
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 93 7 view .LVU10
	.loc 1 93 9 is_stmt 0 view .LVU11
	l8ui	a3, a5, 5
.LVL3:
	.loc 1 94 7 is_stmt 1 view .LVU12
	.loc 1 95 9 is_stmt 0 view .LVU13
	l8ui	a11, a2, 34
	.loc 1 94 9 view .LVU14
	slli	a3, a3, 3
.LVL4:
	.loc 1 95 7 is_stmt 1 view .LVU15
	.loc 1 95 9 is_stmt 0 view .LVU16
	add.n	a3, a3, a11
.LVL5:
	.loc 1 95 9 view .LVU17
	extui	a3, a3, 0, 8
.LVL6:
	.loc 1 97 7 is_stmt 1 view .LVU18
	extui	a11, a3, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL7:
	.loc 1 98 7 view .LVU19
	srli	a3, a3, 4
.LVL8:
	.loc 1 98 7 is_stmt 0 view .LVU20
	movi.n	a11, 0x10
	or	a11, a3, a11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL9:
	.loc 1 100 7 is_stmt 1 view .LVU21
	.loc 1 100 9 is_stmt 0 view .LVU22
	l8ui	a3, a5, 6
.LVL10:
	.loc 1 101 7 is_stmt 1 view .LVU23
	movi	a8, 0x60
	.loc 1 101 40 is_stmt 0 view .LVU24
	extui	a11, a3, 0, 4
	.loc 1 101 7 view .LVU25
	or	a11, a11, a8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL11:
	.loc 1 102 7 is_stmt 1 view .LVU26
	srli	a3, a3, 4
.LVL12:
	.loc 1 102 7 is_stmt 0 view .LVU27
	movi	a11, 0x70
	or	a11, a3, a11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL13:
	.loc 1 104 7 is_stmt 1 view .LVU28
	.loc 1 104 9 is_stmt 0 view .LVU29
	l8ui	a3, a5, 4
.LVL14:
	.loc 1 105 7 is_stmt 1 view .LVU30
	.loc 1 106 11 is_stmt 0 view .LVU31
	l32i.n	a5, a5, 0
.LVL15:
	.loc 1 105 9 view .LVU32
	slli	a3, a3, 3
.LVL16:
	.loc 1 105 9 view .LVU33
	extui	a3, a3, 0, 8
.LVL17:
	.loc 1 106 7 is_stmt 1 view .LVU34
.L4:
	.loc 1 107 7 view .LVU35
	.loc 1 109 2 view .LVU36
	.loc 1 110 9 is_stmt 0 view .LVU37
	addi.n	a4, a4, -1
.LVL18:
	.loc 1 109 2 view .LVU38
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 110 9 view .LVU39
	extui	a4, a4, 0, 8
.LVL19:
	.loc 1 109 2 view .LVU40
	call8	u8x8_cad_SendData
.LVL20:
	.loc 1 110 2 is_stmt 1 view .LVU41
	.loc 1 111 7 is_stmt 0 view .LVU42
	bnez.n	a4, .L4
	.loc 1 113 7 is_stmt 1 view .LVU43
	j	.L7
.LVL21:
.L2:
	.loc 1 113 7 is_stmt 0 view .LVU44
.LBE5:
.LBE4:
	.loc 1 126 7 is_stmt 1 view .LVU45
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL22:
	.loc 1 127 7 view .LVU46
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL23:
	.loc 1 128 7 view .LVU47
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL24:
.L7:
	.loc 1 129 7 view .LVU48
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL25:
	.loc 1 130 7 view .LVU49
	.loc 1 135 10 is_stmt 0 view .LVU50
	movi.n	a8, 1
.L3:
	.loc 1 136 1 view .LVU51
	mov.n	a2, a8
.LVL26:
	.loc 1 136 1 view .LVU52
	retw.n
.LFE0:
	.size	u8x8_d_uc1611_common, .-u8x8_d_uc1611_common
	.section	.text.u8x8_d_uc1611_ea_dogm240,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_uc1611_240x64_display_info
	.literal .LC1, u8x8_d_uc1611_ea_dogm240_init_seq
	.literal .LC2, u8x8_d_uc1611s_powersave0_seq
	.literal .LC3, u8x8_d_uc1611s_powersave1_seq
	.literal .LC4, u8x8_d_uc1611s_flip0_seq
	.literal .LC5, u8x8_d_uc1611s_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_ea_dogm240
	.type	u8x8_d_uc1611_ea_dogm240, @function
u8x8_d_uc1611_ea_dogm240:
.LVL27:
.LFB1:
	.loc 1 199 1 is_stmt 1 view -0
	.loc 1 199 1 is_stmt 0 view .LVU54
	entry	sp, 32
.LCFI1:
	.loc 1 201 3 is_stmt 1 view .LVU55
	.loc 1 199 1 is_stmt 0 view .LVU56
	extui	a3, a3, 0, 8
	.loc 1 199 1 view .LVU57
	extui	a4, a4, 0, 8
	.loc 1 201 8 view .LVU58
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1611_common
.LVL28:
	.loc 1 201 6 view .LVU59
	bnez.n	a10, .L17
	.loc 1 204 5 is_stmt 1 view .LVU60
	beqi	a3, 10, .L10
	movi.n	a8, 0xa
	bltu	a8, a3, .L11
	movi.n	a4, 9
.LVL29:
	.loc 1 204 5 is_stmt 0 view .LVU61
	beq	a3, a4, .L12
	j	.L9
.L11:
	movi.n	a8, 0xb
	beq	a3, a8, .L13
	movi.n	a8, 0xd
	beq	a3, a8, .L14
	j	.L9
.L12:
	.loc 1 207 2 is_stmt 1 view .LVU62
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL30:
	.loc 1 208 2 view .LVU63
	j	.L17
.L10:
	.loc 1 210 2 view .LVU64
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL31:
	.loc 1 211 2 view .LVU65
	l32r	a11, .LC1
	j	.L19
.L13:
	.loc 1 214 2 view .LVU66
	.loc 1 217 4 is_stmt 0 view .LVU67
	l32r	a11, .LC3
	.loc 1 214 5 view .LVU68
	bnez.n	a4, .L19
	.loc 1 215 4 is_stmt 1 view .LVU69
	l32r	a11, .LC2
.L19:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL32:
	j	.L17
.L14:
	.loc 1 220 2 view .LVU70
	.loc 1 220 5 is_stmt 0 view .LVU71
	bnez.n	a4, .L16
	.loc 1 222 4 is_stmt 1 view .LVU72
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL33:
	.loc 1 223 4 view .LVU73
	.loc 1 223 39 is_stmt 0 view .LVU74
	l32i.n	a3, a2, 0
.LVL34:
	.loc 1 223 19 view .LVU75
	l8ui	a3, a3, 18
	j	.L18
.L16:
	.loc 1 227 4 is_stmt 1 view .LVU76
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL35:
	.loc 1 228 4 view .LVU77
	.loc 1 228 39 is_stmt 0 view .LVU78
	l32i.n	a3, a2, 0
	.loc 1 228 19 view .LVU79
	l8ui	a3, a3, 19
.L18:
	.loc 1 228 19 view .LVU80
	s8i	a3, a2, 34
.L17:
	.loc 1 235 10 view .LVU81
	movi.n	a10, 1
.L9:
	.loc 1 236 1 view .LVU82
	mov.n	a2, a10
.LVL36:
	.loc 1 236 1 view .LVU83
	retw.n
.LFE1:
	.size	u8x8_d_uc1611_ea_dogm240, .-u8x8_d_uc1611_ea_dogm240
	.section	.text.u8x8_d_uc1611_ea_dogxl240,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_uc1611_240x128_display_info
	.literal .LC7, u8x8_d_uc1611_ea_dogxl240_init_seq
	.literal .LC8, u8x8_d_uc1611s_powersave0_seq
	.literal .LC9, u8x8_d_uc1611s_powersave1_seq
	.literal .LC10, u8x8_d_uc1611s_flip0_seq
	.literal .LC11, u8x8_d_uc1611s_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_ea_dogxl240
	.type	u8x8_d_uc1611_ea_dogxl240, @function
u8x8_d_uc1611_ea_dogxl240:
.LVL37:
.LFB2:
	.loc 1 292 1 is_stmt 1 view -0
	.loc 1 292 1 is_stmt 0 view .LVU85
	entry	sp, 32
.LCFI2:
	.loc 1 294 3 is_stmt 1 view .LVU86
	.loc 1 292 1 is_stmt 0 view .LVU87
	extui	a3, a3, 0, 8
	.loc 1 292 1 view .LVU88
	extui	a4, a4, 0, 8
	.loc 1 294 8 view .LVU89
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1611_common
.LVL38:
	.loc 1 294 6 view .LVU90
	bnez.n	a10, .L29
	.loc 1 297 5 is_stmt 1 view .LVU91
	beqi	a3, 10, .L22
	movi.n	a8, 0xa
	bltu	a8, a3, .L23
	movi.n	a4, 9
.LVL39:
	.loc 1 297 5 is_stmt 0 view .LVU92
	beq	a3, a4, .L24
	j	.L21
.L23:
	movi.n	a8, 0xb
	beq	a3, a8, .L25
	movi.n	a8, 0xd
	beq	a3, a8, .L26
	j	.L21
.L24:
	.loc 1 300 2 is_stmt 1 view .LVU93
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL40:
	.loc 1 301 2 view .LVU94
	j	.L29
.L22:
	.loc 1 303 2 view .LVU95
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL41:
	.loc 1 304 2 view .LVU96
	l32r	a11, .LC7
	j	.L31
.L25:
	.loc 1 307 2 view .LVU97
	.loc 1 310 4 is_stmt 0 view .LVU98
	l32r	a11, .LC9
	.loc 1 307 5 view .LVU99
	bnez.n	a4, .L31
	.loc 1 308 4 is_stmt 1 view .LVU100
	l32r	a11, .LC8
.L31:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL42:
	j	.L29
.L26:
	.loc 1 313 2 view .LVU101
	.loc 1 313 5 is_stmt 0 view .LVU102
	bnez.n	a4, .L28
	.loc 1 315 4 is_stmt 1 view .LVU103
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL43:
	.loc 1 316 4 view .LVU104
	.loc 1 316 39 is_stmt 0 view .LVU105
	l32i.n	a3, a2, 0
.LVL44:
	.loc 1 316 19 view .LVU106
	l8ui	a3, a3, 18
	j	.L30
.L28:
	.loc 1 320 4 is_stmt 1 view .LVU107
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL45:
	.loc 1 321 4 view .LVU108
	.loc 1 321 39 is_stmt 0 view .LVU109
	l32i.n	a3, a2, 0
	.loc 1 321 19 view .LVU110
	l8ui	a3, a3, 19
.L30:
	.loc 1 321 19 view .LVU111
	s8i	a3, a2, 34
.L29:
	.loc 1 328 10 view .LVU112
	movi.n	a10, 1
.L21:
	.loc 1 329 1 view .LVU113
	mov.n	a2, a10
.LVL46:
	.loc 1 329 1 view .LVU114
	retw.n
.LFE2:
	.size	u8x8_d_uc1611_ea_dogxl240, .-u8x8_d_uc1611_ea_dogxl240
	.section	.text.u8x8_d_uc1611_ew50850,"ax",@progbits
	.literal_position
	.literal .LC12, .L35
	.literal .LC13, u8x8_uc1611_ew50850_display_info
	.literal .LC14, u8x8_d_uc1611_ew50850_init_seq
	.literal .LC15, u8x8_d_uc1611_powersave0_seq
	.literal .LC16, u8x8_d_uc1611_powersave1_seq
	.literal .LC17, u8x8_d_uc1611_alt_flip0_seq
	.literal .LC18, u8x8_d_uc1611_alt_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_ew50850
	.type	u8x8_d_uc1611_ew50850, @function
u8x8_d_uc1611_ew50850:
.LVL47:
.LFB3:
	.loc 1 414 1 is_stmt 1 view -0
	.loc 1 414 1 is_stmt 0 view .LVU116
	entry	sp, 80
.LCFI3:
	.loc 1 415 3 is_stmt 1 view .LVU117
	.loc 1 416 3 view .LVU118
	.loc 1 418 3 view .LVU119
	addi	a3, a3, -9
.LVL48:
	.loc 1 418 3 is_stmt 0 view .LVU120
	extui	a3, a3, 0, 8
	.loc 1 414 1 view .LVU121
	extui	a4, a4, 0, 8
	.loc 1 418 3 view .LVU122
	bgeui	a3, 7, .L49
	l32r	a6, .LC12
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_uc1611_ew50850,"a",@progbits
	.align	4
	.align	4
.L35:
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L49
	.word	.L37
	.word	.L36
	.word	.L34
	.section	.text.u8x8_d_uc1611_ew50850
.L34:
	.loc 1 421 7 is_stmt 1 view .LVU123
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL49:
	.loc 1 423 7 view .LVU124
	.loc 1 423 9 is_stmt 0 view .LVU125
	l8ui	a6, a5, 5
.LVL50:
	.loc 1 424 7 is_stmt 1 view .LVU126
	.loc 1 425 9 is_stmt 0 view .LVU127
	l8ui	a3, a2, 34
	.loc 1 424 9 view .LVU128
	slli	a6, a6, 3
.LVL51:
	.loc 1 425 7 is_stmt 1 view .LVU129
	.loc 1 425 9 is_stmt 0 view .LVU130
	add.n	a6, a6, a3
.LVL52:
	.loc 1 427 9 view .LVU131
	l8ui	a3, a5, 6
	.loc 1 425 9 view .LVU132
	extui	a6, a6, 0, 8
.LVL53:
	.loc 1 427 7 is_stmt 1 view .LVU133
	.loc 1 428 7 view .LVU134
	.loc 1 428 8 is_stmt 0 view .LVU135
	slli	a3, a3, 2
	.loc 1 434 9 view .LVU136
	srli	a8, a6, 4
	movi.n	a7, 0x10
	.loc 1 428 8 view .LVU137
	extui	a3, a3, 0, 8
.LVL54:
	.loc 1 429 7 is_stmt 1 view .LVU138
	.loc 1 430 7 view .LVU139
	.loc 1 431 7 view .LVU140
	.loc 1 434 9 is_stmt 0 view .LVU141
	or	a8, a8, a7
	addi.n	a7, a3, 4
	s32i.n	a8, sp, 16
	extui	a8, a7, 0, 8
	s32i.n	a8, sp, 20
	.loc 1 429 10 view .LVU142
	movi.n	a9, 1
	.loc 1 430 10 view .LVU143
	movi.n	a8, 2
	.loc 1 433 9 view .LVU144
	extui	a6, a6, 0, 4
.LVL55:
.L46:
	.loc 1 433 9 is_stmt 1 view .LVU145
	mov.n	a11, a6
	mov.n	a10, a2
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	call8	u8x8_cad_SendCmd
.LVL56:
	.loc 1 434 9 view .LVU146
	l32i.n	a11, sp, 16
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL57:
	.loc 1 436 2 view .LVU147
	movi	a7, 0x60
	.loc 1 436 35 is_stmt 0 view .LVU148
	extui	a11, a3, 0, 4
	.loc 1 436 2 view .LVU149
	or	a11, a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL58:
	.loc 1 437 2 is_stmt 1 view .LVU150
	srli	a11, a3, 4
	movi	a7, 0x70
	or	a11, a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL59:
	.loc 1 439 2 view .LVU151
	.loc 1 447 8 is_stmt 0 view .LVU152
	l32i.n	a9, sp, 36
	l32i.n	a8, sp, 40
	.loc 1 439 5 view .LVU153
	mov.n	a13, a4
	.loc 1 447 8 view .LVU154
	movi.n	a15, 0
.LVL60:
.L45:
	.loc 1 440 2 is_stmt 1 view .LVU155
	.loc 1 442 4 view .LVU156
	.loc 1 442 6 is_stmt 0 view .LVU157
	l8ui	a7, a5, 4
.LVL61:
	.loc 1 443 4 is_stmt 1 view .LVU158
	.loc 1 444 8 is_stmt 0 view .LVU159
	l32i.n	a14, a5, 0
	.loc 1 443 6 view .LVU160
	slli	a7, a7, 3
	extui	a7, a7, 0, 8
.LVL62:
	.loc 1 444 4 is_stmt 1 view .LVU161
	.loc 1 445 4 view .LVU162
	.loc 1 445 9 is_stmt 0 view .LVU163
	j	.L41
.LVL63:
.L44:
	.loc 1 447 6 is_stmt 1 view .LVU164
	.loc 1 447 8 is_stmt 0 view .LVU165
	s8i	a15, sp, 0
	.loc 1 448 6 is_stmt 1 view .LVU166
	.loc 1 448 11 is_stmt 0 view .LVU167
	l8ui	a10, a14, 0
	.loc 1 448 9 view .LVU168
	bnone	a9, a10, .L42
	.loc 1 449 8 is_stmt 1 view .LVU169
	.loc 1 449 9 is_stmt 0 view .LVU170
	movi.n	a10, 0xf
	s8i	a10, sp, 0
.L42:
	.loc 1 450 6 is_stmt 1 view .LVU171
	.loc 1 450 11 is_stmt 0 view .LVU172
	l8ui	a10, a14, 0
	.loc 1 450 9 view .LVU173
	bnone	a8, a10, .L43
	.loc 1 451 8 is_stmt 1 view .LVU174
	.loc 1 451 9 is_stmt 0 view .LVU175
	l8ui	a10, sp, 0
	movi.n	a11, -0x10
	or	a10, a10, a11
	s8i	a10, sp, 0
.L43:
	.loc 1 452 6 is_stmt 1 view .LVU176
	mov.n	a12, sp
	movi.n	a11, 1
	mov.n	a10, a2
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	s32i.n	a13, sp, 24
	s32i.n	a14, sp, 28
	s32i.n	a15, sp, 32
	call8	u8x8_cad_SendData
.LVL64:
	.loc 1 453 6 view .LVU177
	.loc 1 454 16 is_stmt 0 view .LVU178
	l32i.n	a14, sp, 28
	.loc 1 453 7 view .LVU179
	addi.n	a7, a7, -1
.LVL65:
	.loc 1 454 16 view .LVU180
	l32i.n	a15, sp, 32
	l32i.n	a13, sp, 24
	l32i.n	a9, sp, 36
	l32i.n	a8, sp, 40
	.loc 1 453 7 view .LVU181
	extui	a7, a7, 0, 8
.LVL66:
	.loc 1 454 13 is_stmt 1 view .LVU182
	.loc 1 454 16 is_stmt 0 view .LVU183
	addi.n	a14, a14, 1
.LVL67:
.L41:
	.loc 1 445 9 view .LVU184
	bnez.n	a7, .L44
	.loc 1 456 4 is_stmt 1 view .LVU185
	.loc 1 456 6 is_stmt 0 view .LVU186
	addi.n	a13, a13, -1
	extui	a13, a13, 0, 8
.LVL68:
	.loc 1 457 2 view .LVU187
	bnez.n	a13, .L45
	.loc 1 459 2 is_stmt 1 discriminator 2 view .LVU188
	.loc 1 461 3 is_stmt 0 discriminator 2 view .LVU189
	addi.n	a3, a3, 1
.LVL69:
	.loc 1 431 7 discriminator 2 view .LVU190
	l32i.n	a10, sp, 20
	.loc 1 459 5 discriminator 2 view .LVU191
	slli	a9, a9, 2
	.loc 1 460 5 discriminator 2 view .LVU192
	slli	a8, a8, 2
	.loc 1 461 3 discriminator 2 view .LVU193
	extui	a3, a3, 0, 8
.LVL70:
	.loc 1 459 5 discriminator 2 view .LVU194
	extui	a9, a9, 0, 8
.LVL71:
	.loc 1 460 2 is_stmt 1 discriminator 2 view .LVU195
	.loc 1 460 5 is_stmt 0 discriminator 2 view .LVU196
	extui	a8, a8, 0, 8
.LVL72:
	.loc 1 461 2 is_stmt 1 discriminator 2 view .LVU197
	.loc 1 431 7 is_stmt 0 discriminator 2 view .LVU198
	bne	a3, a10, .L46
	.loc 1 463 7 is_stmt 1 view .LVU199
	j	.L61
.LVL73:
.L40:
	.loc 1 466 7 view .LVU200
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL74:
	.loc 1 467 7 view .LVU201
	j	.L58
.L39:
	.loc 1 469 7 view .LVU202
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL75:
	.loc 1 470 7 view .LVU203
	l32r	a11, .LC14
	j	.L60
.L38:
	.loc 1 473 7 view .LVU204
	.loc 1 474 2 is_stmt 0 view .LVU205
	l32r	a11, .LC15
	.loc 1 473 10 view .LVU206
	beqz.n	a4, .L60
.L47:
	.loc 1 476 2 is_stmt 1 view .LVU207
	l32r	a11, .LC16
.L60:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL76:
	j	.L58
.L37:
	.loc 1 479 7 view .LVU208
	.loc 1 479 10 is_stmt 0 view .LVU209
	bnez.n	a4, .L48
	.loc 1 481 2 is_stmt 1 view .LVU210
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL77:
	.loc 1 482 2 view .LVU211
	.loc 1 482 37 is_stmt 0 view .LVU212
	l32i.n	a3, a2, 0
	.loc 1 482 17 view .LVU213
	l8ui	a3, a3, 18
	j	.L59
.L48:
	.loc 1 486 2 is_stmt 1 view .LVU214
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL78:
	.loc 1 487 2 view .LVU215
	.loc 1 487 37 is_stmt 0 view .LVU216
	l32i.n	a3, a2, 0
	.loc 1 487 17 view .LVU217
	l8ui	a3, a3, 19
.L59:
	.loc 1 487 17 view .LVU218
	s8i	a3, a2, 34
.L58:
	.loc 1 501 10 view .LVU219
	movi.n	a2, 1
.LVL79:
	.loc 1 501 10 view .LVU220
	j	.L33
.LVL80:
.L36:
	.loc 1 492 5 is_stmt 1 view .LVU221
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL81:
	.loc 1 493 5 view .LVU222
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL82:
	.loc 1 494 5 view .LVU223
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL83:
.L61:
	.loc 1 495 5 view .LVU224
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL84:
	.loc 1 496 5 view .LVU225
	j	.L58
.L49:
	.loc 1 499 14 is_stmt 0 view .LVU226
	movi.n	a2, 0
.LVL85:
.L33:
	.loc 1 502 1 view .LVU227
	retw.n
.LFE3:
	.size	u8x8_d_uc1611_ew50850, .-u8x8_d_uc1611_ew50850
	.section	.text.u8x8_d_uc1611_cg160160,"ax",@progbits
	.literal_position
	.literal .LC19, u8x8_uc1611_cg160160_display_info
	.literal .LC20, u8x8_d_uc1611_cg160160_init_seq
	.literal .LC21, u8x8_d_uc1611s_powersave0_seq
	.literal .LC22, u8x8_d_uc1611s_powersave1_seq
	.literal .LC23, u8x8_d_uc1611s_flip0_seq
	.literal .LC24, u8x8_d_uc1611s_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_cg160160
	.type	u8x8_d_uc1611_cg160160, @function
u8x8_d_uc1611_cg160160:
.LVL86:
.LFB4:
	.loc 1 596 1 is_stmt 1 view -0
	.loc 1 596 1 is_stmt 0 view .LVU229
	entry	sp, 32
.LCFI4:
	.loc 1 598 3 is_stmt 1 view .LVU230
	.loc 1 596 1 is_stmt 0 view .LVU231
	extui	a3, a3, 0, 8
	.loc 1 596 1 view .LVU232
	extui	a4, a4, 0, 8
	.loc 1 598 8 view .LVU233
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1611_common
.LVL87:
	.loc 1 598 6 view .LVU234
	bnez.n	a10, .L71
	.loc 1 601 5 is_stmt 1 view .LVU235
	beqi	a3, 10, .L64
	movi.n	a8, 0xa
	bltu	a8, a3, .L65
	movi.n	a4, 9
.LVL88:
	.loc 1 601 5 is_stmt 0 view .LVU236
	beq	a3, a4, .L66
	j	.L63
.L65:
	movi.n	a8, 0xb
	beq	a3, a8, .L67
	movi.n	a8, 0xd
	beq	a3, a8, .L68
	j	.L63
.L66:
	.loc 1 604 2 is_stmt 1 view .LVU237
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL89:
	.loc 1 605 2 view .LVU238
	j	.L71
.L64:
	.loc 1 607 2 view .LVU239
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL90:
	.loc 1 608 2 view .LVU240
	l32r	a11, .LC20
	j	.L73
.L67:
	.loc 1 611 2 view .LVU241
	.loc 1 614 4 is_stmt 0 view .LVU242
	l32r	a11, .LC22
	.loc 1 611 5 view .LVU243
	bnez.n	a4, .L73
	.loc 1 612 4 is_stmt 1 view .LVU244
	l32r	a11, .LC21
.L73:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL91:
	j	.L71
.L68:
	.loc 1 617 2 view .LVU245
	.loc 1 617 5 is_stmt 0 view .LVU246
	bnez.n	a4, .L70
	.loc 1 619 4 is_stmt 1 view .LVU247
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL92:
	.loc 1 620 4 view .LVU248
	.loc 1 620 39 is_stmt 0 view .LVU249
	l32i.n	a3, a2, 0
.LVL93:
	.loc 1 620 19 view .LVU250
	l8ui	a3, a3, 18
	j	.L72
.L70:
	.loc 1 624 4 is_stmt 1 view .LVU251
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL94:
	.loc 1 625 4 view .LVU252
	.loc 1 625 39 is_stmt 0 view .LVU253
	l32i.n	a3, a2, 0
	.loc 1 625 19 view .LVU254
	l8ui	a3, a3, 19
.L72:
	.loc 1 625 19 view .LVU255
	s8i	a3, a2, 34
.L71:
	.loc 1 632 10 view .LVU256
	movi.n	a10, 1
.L63:
	.loc 1 633 1 view .LVU257
	mov.n	a2, a10
.LVL95:
	.loc 1 633 1 view .LVU258
	retw.n
.LFE4:
	.size	u8x8_d_uc1611_cg160160, .-u8x8_d_uc1611_cg160160
	.section	.rodata.u8x8_d_uc1611_cg160160_init_seq,"a"
	.type	u8x8_d_uc1611_cg160160_init_seq, @object
	.size	u8x8_d_uc1611_cg160160_init_seq, 47
u8x8_d_uc1611_cg160160_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	-2
	.byte	2
	.byte	21
	.byte	36
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	-126
	.byte	22
	.byte	19
	.byte	22
	.byte	1
	.byte	21
	.byte	-126
	.byte	22
	.byte	20
	.byte	22
	.byte	0
	.byte	21
	.byte	-22
	.byte	21
	.byte	-127
	.byte	22
	.byte	-112
	.byte	21
	.byte	-119
	.byte	21
	.byte	-47
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_cg160160_display_info,"a"
	.align	4
	.type	u8x8_uc1611_cg160160_display_info, @object
	.size	u8x8_uc1611_cg160160_display_info, 24
u8x8_uc1611_cg160160_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	20
	.byte	20
	.byte	0
	.byte	0
	.short	160
	.short	160
	.section	.rodata.u8x8_d_uc1611_powersave1_seq,"a"
	.type	u8x8_d_uc1611_powersave1_seq, @object
	.size	u8x8_d_uc1611_powersave1_seq, 5
u8x8_d_uc1611_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-88
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_powersave0_seq,"a"
	.type	u8x8_d_uc1611_powersave0_seq, @object
	.size	u8x8_d_uc1611_powersave0_seq, 5
u8x8_d_uc1611_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_alt_flip1_seq,"a"
	.type	u8x8_d_uc1611_alt_flip1_seq, @object
	.size	u8x8_d_uc1611_alt_flip1_seq, 5
u8x8_d_uc1611_alt_flip1_seq:
	.byte	24
	.byte	21
	.byte	-58
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_alt_flip0_seq,"a"
	.type	u8x8_d_uc1611_alt_flip0_seq, @object
	.size	u8x8_d_uc1611_alt_flip0_seq, 5
u8x8_d_uc1611_alt_flip0_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_ew50850_display_info,"a"
	.align	4
	.type	u8x8_uc1611_ew50850_display_info, @object
	.size	u8x8_uc1611_ew50850_display_info, 24
u8x8_uc1611_ew50850_display_info:
	.byte	1
	.byte	0
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	30
	.byte	20
	.byte	0
	.byte	0
	.short	240
	.short	160
	.section	.rodata.u8x8_d_uc1611_ew50850_init_seq,"a"
	.type	u8x8_d_uc1611_ew50850_init_seq, @object
	.size	u8x8_d_uc1611_ew50850_init_seq, 37
u8x8_d_uc1611_ew50850_init_seq:
	.byte	24
	.byte	21
	.byte	47
	.byte	21
	.byte	-15
	.byte	22
	.byte	-97
	.byte	21
	.byte	-14
	.byte	22
	.byte	0
	.byte	21
	.byte	-13
	.byte	22
	.byte	-97
	.byte	21
	.byte	-93
	.byte	21
	.byte	-127
	.byte	22
	.byte	75
	.byte	21
	.byte	-46
	.byte	21
	.byte	-119
	.byte	21
	.byte	-64
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_240x128_display_info,"a"
	.align	4
	.type	u8x8_uc1611_240x128_display_info, @object
	.size	u8x8_uc1611_240x128_display_info, 24
u8x8_uc1611_240x128_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	30
	.byte	16
	.byte	0
	.byte	0
	.short	240
	.short	128
	.section	.rodata.u8x8_d_uc1611_ea_dogxl240_init_seq,"a"
	.type	u8x8_d_uc1611_ea_dogxl240_init_seq, @object
	.size	u8x8_d_uc1611_ea_dogxl240_init_seq, 39
u8x8_d_uc1611_ea_dogxl240_init_seq:
	.byte	24
	.byte	21
	.byte	47
	.byte	21
	.byte	-15
	.byte	22
	.byte	127
	.byte	21
	.byte	-14
	.byte	22
	.byte	0
	.byte	21
	.byte	-13
	.byte	22
	.byte	127
	.byte	21
	.byte	-93
	.byte	21
	.byte	-127
	.byte	22
	.byte	-113
	.byte	21
	.byte	-47
	.byte	21
	.byte	-119
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_ea_dogm240_init_seq,"a"
	.type	u8x8_d_uc1611_ea_dogm240_init_seq, @object
	.size	u8x8_d_uc1611_ea_dogm240_init_seq, 39
u8x8_d_uc1611_ea_dogm240_init_seq:
	.byte	24
	.byte	21
	.byte	47
	.byte	21
	.byte	-15
	.byte	22
	.byte	63
	.byte	21
	.byte	-14
	.byte	22
	.byte	0
	.byte	21
	.byte	-13
	.byte	22
	.byte	63
	.byte	21
	.byte	-93
	.byte	21
	.byte	-127
	.byte	22
	.byte	-92
	.byte	21
	.byte	-47
	.byte	21
	.byte	-119
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_240x64_display_info,"a"
	.align	4
	.type	u8x8_uc1611_240x64_display_info, @object
	.size	u8x8_uc1611_240x64_display_info, 24
u8x8_uc1611_240x64_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	30
	.byte	8
	.byte	0
	.byte	0
	.short	240
	.short	64
	.section	.rodata.u8x8_d_uc1611s_flip1_seq,"a"
	.type	u8x8_d_uc1611s_flip1_seq, @object
	.size	u8x8_d_uc1611s_flip1_seq, 7
u8x8_d_uc1611s_flip1_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	22
	.byte	2
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611s_flip0_seq,"a"
	.type	u8x8_d_uc1611s_flip0_seq, @object
	.size	u8x8_d_uc1611s_flip0_seq, 7
u8x8_d_uc1611s_flip0_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611s_powersave1_seq,"a"
	.type	u8x8_d_uc1611s_powersave1_seq, @object
	.size	u8x8_d_uc1611s_powersave1_seq, 5
u8x8_d_uc1611s_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-88
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611s_powersave0_seq,"a"
	.type	u8x8_d_uc1611s_powersave0_seq, @object
	.size	u8x8_d_uc1611s_powersave0_seq, 5
u8x8_d_uc1611s_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-87
	.byte	25
	.byte	-1
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1430
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0xc
	.4byte	.LASF225
	.4byte	.LASF226
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc3
	.byte	0x1c
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.byte	0x8
	.4byte	0x1d1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x148
	.byte	0x1e
	.4byte	0x3a0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x149
	.byte	0x10
	.4byte	0x374
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x14a
	.byte	0xf
	.4byte	0x33e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x14b
	.byte	0xf
	.4byte	0x33e
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14c
	.byte	0xf
	.4byte	0x33e
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14d
	.byte	0xf
	.4byte	0x33e
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14e
	.byte	0xc
	.4byte	0x9e
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14f
	.byte	0x12
	.4byte	0x3a6
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x150
	.byte	0xc
	.4byte	0x92
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x151
	.byte	0xb
	.4byte	0x81
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x152
	.byte	0xb
	.4byte	0x81
	.byte	0x23
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x153
	.byte	0xb
	.4byte	0x81
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x156
	.byte	0xb
	.4byte	0x81
	.byte	0x25
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x158
	.byte	0xb
	.4byte	0x81
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x159
	.byte	0xb
	.4byte	0x81
	.byte	0x27
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x15a
	.byte	0xb
	.4byte	0x81
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x15b
	.byte	0xb
	.4byte	0x81
	.byte	0x29
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15c
	.byte	0xb
	.4byte	0x81
	.byte	0x2a
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x15d
	.byte	0xb
	.4byte	0x81
	.byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0xc4
	.byte	0x29
	.4byte	0x1e2
	.uleb128 0x5
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.byte	0x8
	.4byte	0x2f0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0xe1
	.byte	0xb
	.4byte	0x81
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0xe2
	.byte	0xb
	.4byte	0x81
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0xe4
	.byte	0xb
	.4byte	0x81
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0xe5
	.byte	0xb
	.4byte	0x81
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe6
	.byte	0xb
	.4byte	0x81
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe7
	.byte	0xb
	.4byte	0x81
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0xee
	.byte	0xb
	.4byte	0x81
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0xf2
	.byte	0xb
	.4byte	0x81
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xf5
	.byte	0xc
	.4byte	0x9e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0xff
	.byte	0xb
	.4byte	0x81
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x102
	.byte	0xb
	.4byte	0x81
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x108
	.byte	0xb
	.4byte	0x81
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x10a
	.byte	0xb
	.4byte	0x81
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x10d
	.byte	0xb
	.4byte	0x81
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x10e
	.byte	0xb
	.4byte	0x81
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x110
	.byte	0xb
	.4byte	0x81
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x111
	.byte	0xb
	.4byte	0x81
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x119
	.byte	0xc
	.4byte	0x92
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x11a
	.byte	0xc
	.4byte	0x92
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0xc5
	.byte	0x21
	.4byte	0x2fc
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4
	.byte	0xd4
	.byte	0x8
	.4byte	0x33e
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd6
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0xb
	.string	"cnt"
	.byte	0x4
	.byte	0xd7
	.byte	0xb
	.4byte	0x81
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0xd8
	.byte	0xb
	.4byte	0x81
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0xd9
	.byte	0xb
	.4byte	0x81
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc7
	.byte	0x13
	.4byte	0x34a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x350
	.uleb128 0xd
	.4byte	0x81
	.4byte	0x36e
	.uleb128 0xe
	.4byte	0x36e
	.uleb128 0xe
	.4byte	0x81
	.uleb128 0xe
	.4byte	0x81
	.uleb128 0xe
	.4byte	0xaa
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xac
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc8
	.byte	0x14
	.4byte	0x380
	.uleb128 0xc
	.byte	0x4
	.4byte	0x386
	.uleb128 0xd
	.4byte	0x92
	.4byte	0x39a
	.uleb128 0xe
	.4byte	0x36e
	.uleb128 0xe
	.4byte	0x81
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x81
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0x3b7
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x3ac
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x420
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x421
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x422
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x423
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x424
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x425
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x426
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x427
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x428
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x429
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x42a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x42b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x42c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x42d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x42e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x42f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x430
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x431
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x432
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x433
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x434
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x435
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x436
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x437
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x438
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x439
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x43a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x43b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x43c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x43d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x43e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x43f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x440
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x441
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x442
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x443
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x444
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x445
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x446
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x447
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x448
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x449
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x44a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x44b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x44c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x44d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x44e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x44f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x450
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x451
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x452
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x453
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x454
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x455
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x456
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x457
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x458
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x459
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x45a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x45b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x45c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x45d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x45e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x45f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x460
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x461
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x462
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x463
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x464
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x465
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x466
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x467
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x468
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x469
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x46a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x46b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x46c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x46d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x46e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x46f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x470
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x471
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x472
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x473
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x474
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x475
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x476
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0x4
	.2byte	0x477
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0x4
	.2byte	0x478
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x479
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x47a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0x4
	.2byte	0x47b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0x4
	.2byte	0x47c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0x4
	.2byte	0x47d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x4
	.2byte	0x47e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0x4
	.2byte	0x47f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x4
	.2byte	0x480
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x481
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x482
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x4
	.2byte	0x483
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0x4
	.2byte	0x484
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x4
	.2byte	0x485
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x4
	.2byte	0x486
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0x4
	.2byte	0x487
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0x4
	.2byte	0x488
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0x4
	.2byte	0x489
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0x4
	.2byte	0x48a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0x4
	.2byte	0x48b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0x4
	.2byte	0x48c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0x4
	.2byte	0x48d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0x4
	.2byte	0x48e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0x4
	.2byte	0x48f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x4
	.2byte	0x490
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0x4
	.2byte	0x491
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x4
	.2byte	0x492
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0x4
	.2byte	0x493
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x4
	.2byte	0x494
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x4
	.2byte	0x495
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x4
	.2byte	0x496
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x4
	.2byte	0x497
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x4
	.2byte	0x498
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x4
	.2byte	0x499
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x4
	.2byte	0x49a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0x4
	.2byte	0x49b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0x4
	.2byte	0x49c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0x4
	.2byte	0x49d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0x4
	.2byte	0x49e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0x4
	.2byte	0x49f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0x4
	.2byte	0x4a0
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0x4
	.2byte	0x4a1
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0x4
	.2byte	0x4a2
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xa73
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xa63
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x1
	.byte	0x38
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_powersave0_seq
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x3f
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_powersave1_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xaac
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0xa9c
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x46
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip0_seq
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x4d
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip1_seq
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0x94
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_240x64_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xaf7
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x26
	.byte	0
	.uleb128 0x5
	.4byte	0xae7
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0xac
	.byte	0x16
	.4byte	0xaf7
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_ea_dogm240_init_seq
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.byte	0xf1
	.byte	0x16
	.4byte	0xaf7
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_ea_dogxl240_init_seq
	.uleb128 0x14
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x10a
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_240x128_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb43
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.4byte	0xb33
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x14f
	.byte	0x16
	.4byte	0xb43
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_ew50850_init_seq
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x167
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_ew50850_display_info
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x17f
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_alt_flip0_seq
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x186
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_alt_flip1_seq
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x18d
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_powersave0_seq
	.uleb128 0x14
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x194
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_powersave1_seq
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x204
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_cg160160_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xbdd
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x2e
	.byte	0
	.uleb128 0x5
	.4byte	0xbcd
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x232
	.byte	0x16
	.4byte	0xbdd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_cg160160_init_seq
	.uleb128 0x15
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x253
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd00
	.uleb128 0x16
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x253
	.byte	0x28
	.4byte	0x36e
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x253
	.byte	0x36
	.4byte	0x81
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x253
	.byte	0x43
	.4byte	0x81
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x18
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x253
	.byte	0x52
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL87
	.4byte	0x119f
	.4byte	0xc84
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL89
	.4byte	0x13cb
	.4byte	0xca1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_cg160160_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL90
	.4byte	0x13d8
	.4byte	0xcb5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL91
	.4byte	0x13e5
	.4byte	0xcc9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL92
	.4byte	0x13e5
	.4byte	0xce6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL94
	.4byte	0x13e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x19d
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8e
	.uleb128 0x16
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x19d
	.byte	0x27
	.4byte	0x36e
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x19d
	.byte	0x35
	.4byte	0x81
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x18
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x19d
	.byte	0x42
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x19d
	.byte	0x51
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.2byte	0x19f
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.2byte	0x19f
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.2byte	0x19f
	.byte	0x11
	.4byte	0x81
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x19f
	.byte	0x14
	.4byte	0x81
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x1d
	.string	"v"
	.byte	0x1
	.2byte	0x19f
	.byte	0x17
	.4byte	0x81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"m0"
	.byte	0x1
	.2byte	0x19f
	.byte	0x1a
	.4byte	0x81
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x1c
	.string	"m1"
	.byte	0x1
	.2byte	0x19f
	.byte	0x1e
	.4byte	0x81
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x1c
	.string	"ai"
	.byte	0x1
	.2byte	0x19f
	.byte	0x22
	.4byte	0x81
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x1c
	.string	"ptr"
	.byte	0x1
	.2byte	0x1a0
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0x13f2
	.4byte	0xe23
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0x13ff
	.4byte	0xe3d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0x13ff
	.4byte	0xe58
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x13ff
	.4byte	0xe77
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x77
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0x13ff
	.4byte	0xe96
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x77
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0x140c
	.4byte	0xeb6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x19
	.4byte	.LVL74
	.4byte	0x13cb
	.4byte	0xed3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_ew50850_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0x13d8
	.4byte	0xee7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0x13e5
	.4byte	0xefb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0x13e5
	.4byte	0xf18
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_alt_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0x13e5
	.4byte	0xf35
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_alt_flip1_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0x13f2
	.4byte	0xf49
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0x13ff
	.4byte	0xf63
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0x1419
	.4byte	0xf7d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL84
	.4byte	0x1426
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x123
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1099
	.uleb128 0x16
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x123
	.byte	0x2b
	.4byte	0x36e
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x123
	.byte	0x39
	.4byte	0x81
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x123
	.byte	0x46
	.4byte	0x81
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x18
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x123
	.byte	0x55
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0x119f
	.4byte	0x101d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0x13cb
	.4byte	0x103a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_240x128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0x13d8
	.4byte	0x104e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0x13e5
	.4byte	0x1062
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x13e5
	.4byte	0x107f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0x13e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF215
	.byte	0x1
	.byte	0xc6
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119f
	.uleb128 0x1f
	.4byte	.LASF209
	.byte	0x1
	.byte	0xc6
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.byte	0xc6
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1f
	.4byte	.LASF210
	.byte	0x1
	.byte	0xc6
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x21
	.4byte	.LASF213
	.byte	0x1
	.byte	0xc6
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0x119f
	.4byte	0x1123
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0x13cb
	.4byte	0x1140
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_240x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0x13d8
	.4byte	0x1154
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x13e5
	.4byte	0x1168
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x13e5
	.4byte	0x1185
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL35
	.4byte	0x13e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF227
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.4byte	0x120b
	.uleb128 0x23
	.4byte	.LASF209
	.byte	0x1
	.byte	0x54
	.byte	0x26
	.4byte	0x36e
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.byte	0x54
	.byte	0x34
	.4byte	0x81
	.uleb128 0x23
	.4byte	.LASF210
	.byte	0x1
	.byte	0x54
	.byte	0x41
	.4byte	0x81
	.uleb128 0x23
	.4byte	.LASF213
	.byte	0x1
	.byte	0x54
	.byte	0x50
	.4byte	0xaa
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x56
	.byte	0xb
	.4byte	0x81
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x56
	.byte	0xe
	.4byte	0x81
	.uleb128 0x25
	.string	"c"
	.byte	0x1
	.byte	0x56
	.byte	0x11
	.4byte	0x81
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x26
	.4byte	0x119f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13cb
	.uleb128 0x27
	.4byte	0x11b0
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x27
	.4byte	0x11bc
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x27
	.4byte	0x11c8
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x27
	.4byte	0x11d4
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.4byte	0x11e0
	.uleb128 0x28
	.4byte	0x11ea
	.uleb128 0x28
	.4byte	0x11f4
	.uleb128 0x28
	.4byte	0x11fe
	.uleb128 0x29
	.4byte	0x119f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1372
	.uleb128 0x27
	.4byte	0x11bc
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x27
	.4byte	0x11d4
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x27
	.4byte	0x11c8
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x27
	.4byte	0x11b0
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2b
	.4byte	0x11e0
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2b
	.4byte	0x11ea
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2b
	.4byte	0x11f4
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2b
	.4byte	0x11fe
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x13f2
	.4byte	0x12fc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0x13ff
	.4byte	0x1318
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0x13ff
	.4byte	0x132c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x13ff
	.4byte	0x1340
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x13ff
	.4byte	0x1354
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x140c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0x13f2
	.4byte	0x1386
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x13ff
	.4byte	0x13a0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x1419
	.4byte	0x13ba
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL25
	.4byte	0x1426
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x2c
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x2c
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x2c
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x2c
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x4
	.2byte	0x25a
	.byte	0x9
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS28:
	.uleb128 0
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 0
.LLST28:
	.4byte	.LVL86
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 0
.LLST29:
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 0
.LLST30:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 0
.LLST18:
	.4byte	.LVL47
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST19:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU126
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU145
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU134
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU194
	.uleb128 .LVU198
	.uleb128 .LVU200
.LLST21:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL54
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU158
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU200
.LLST22:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU141
	.uleb128 .LVU200
.LLST23:
	.4byte	.LVL54
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU139
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU195
	.uleb128 .LVU200
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU140
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU197
	.uleb128 .LVU200
.LLST25:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU152
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU164
	.uleb128 .LVU187
	.uleb128 .LVU200
.LLST26:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU162
	.uleb128 .LVU177
	.uleb128 .LVU184
	.uleb128 .LVU200
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 0
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU9
	.uleb128 .LVU44
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU9
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU44
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU9
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU44
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU9
	.uleb128 .LVU44
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU12
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU20
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU23
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL11-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU30
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU44
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU35
	.uleb128 .LVU44
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF115:
	.string	"u8x8_font_artosserif8_n"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF127:
	.string	"u8x8_font_victoriabold8_u"
.LASF116:
	.string	"u8x8_font_artosserif8_u"
.LASF143:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_f"
.LASF129:
	.string	"u8x8_font_victoriamedium8_n"
.LASF210:
	.string	"arg_int"
.LASF226:
	.string	"/home/dieter/Development/ProjektEi/build/u8g2"
.LASF3:
	.string	"__uint8_t"
.LASF145:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_n"
.LASF18:
	.string	"byte_cb"
.LASF85:
	.string	"u8x8_font_open_iconic_check_1x1"
.LASF192:
	.string	"u8x8_font_px437wyse700b_2x2_n"
.LASF144:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_r"
.LASF76:
	.string	"u8x8_font_8x13B_1x2_r"
.LASF125:
	.string	"u8x8_font_victoriabold8_r"
.LASF199:
	.string	"u8x8_d_uc1611_ea_dogxl240_init_seq"
.LASF183:
	.string	"u8x8_font_pxplustandynewtv_f"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF9:
	.string	"long long unsigned int"
.LASF185:
	.string	"u8x8_font_pxplustandynewtv_n"
.LASF165:
	.string	"u8x8_font_inb46_4x8_r"
.LASF184:
	.string	"u8x8_font_pxplustandynewtv_r"
.LASF186:
	.string	"u8x8_font_pxplustandynewtv_u"
.LASF164:
	.string	"u8x8_font_inb46_4x8_f"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF78:
	.string	"u8x8_font_7x14_1x2_f"
.LASF202:
	.string	"u8x8_uc1611_ew50850_display_info"
.LASF27:
	.string	"utf8_state"
.LASF126:
	.string	"u8x8_font_victoriabold8_n"
.LASF166:
	.string	"u8x8_font_inb46_4x8_n"
.LASF28:
	.string	"gpio_result"
.LASF80:
	.string	"u8x8_font_7x14_1x2_n"
.LASF106:
	.string	"u8x8_font_open_iconic_thing_8x8"
.LASF79:
	.string	"u8x8_font_7x14_1x2_r"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF203:
	.string	"u8x8_d_uc1611_alt_flip0_seq"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF123:
	.string	"u8x8_font_torussansbold8_n"
.LASF16:
	.string	"display_cb"
.LASF122:
	.string	"u8x8_font_torussansbold8_r"
.LASF124:
	.string	"u8x8_font_torussansbold8_u"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF128:
	.string	"u8x8_font_victoriamedium8_r"
.LASF193:
	.string	"u8x8_d_uc1611s_powersave0_seq"
.LASF130:
	.string	"u8x8_font_victoriamedium8_u"
.LASF221:
	.string	"u8x8_cad_SendData"
.LASF94:
	.string	"u8x8_font_open_iconic_thing_2x2"
.LASF112:
	.string	"u8x8_font_artossans8_n"
.LASF200:
	.string	"u8x8_uc1611_240x128_display_info"
.LASF134:
	.string	"u8x8_font_courR18_2x3_f"
.LASF111:
	.string	"u8x8_font_artossans8_r"
.LASF113:
	.string	"u8x8_font_artossans8_u"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF61:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF171:
	.string	"u8x8_font_pcsenior_f"
.LASF136:
	.string	"u8x8_font_courR18_2x3_n"
.LASF135:
	.string	"u8x8_font_courR18_2x3_r"
.LASF173:
	.string	"u8x8_font_pcsenior_n"
.LASF172:
	.string	"u8x8_font_pcsenior_r"
.LASF174:
	.string	"u8x8_font_pcsenior_u"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF160:
	.string	"u8x8_font_inb21_2x4_n"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF216:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF58:
	.string	"x_pos"
.LASF55:
	.string	"u8x8_tile_t"
.LASF158:
	.string	"u8x8_font_inb21_2x4_f"
.LASF140:
	.string	"u8x8_font_courR24_3x4_f"
.LASF179:
	.string	"u8x8_font_pxplusibmcga_f"
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF159:
	.string	"u8x8_font_inb21_2x4_r"
.LASF142:
	.string	"u8x8_font_courR24_3x4_n"
.LASF219:
	.string	"u8x8_cad_StartTransfer"
.LASF90:
	.string	"u8x8_font_open_iconic_arrow_2x2"
.LASF141:
	.string	"u8x8_font_courR24_3x4_r"
.LASF188:
	.string	"u8x8_font_px437wyse700a_2x2_r"
.LASF25:
	.string	"i2c_address"
.LASF169:
	.string	"u8x8_font_pressstart2p_n"
.LASF206:
	.string	"u8x8_d_uc1611_powersave1_seq"
.LASF99:
	.string	"u8x8_font_open_iconic_play_4x4"
.LASF92:
	.string	"u8x8_font_open_iconic_embedded_2x2"
.LASF77:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF175:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF204:
	.string	"u8x8_d_uc1611_alt_flip1_seq"
.LASF170:
	.string	"u8x8_font_pressstart2p_u"
.LASF201:
	.string	"u8x8_d_uc1611_ew50850_init_seq"
.LASF177:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF5:
	.string	"short unsigned int"
.LASF176:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF196:
	.string	"u8x8_d_uc1611s_flip1_seq"
.LASF178:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF214:
	.string	"u8x8_d_uc1611_ea_dogxl240"
.LASF96:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF197:
	.string	"u8x8_uc1611_240x64_display_info"
.LASF161:
	.string	"u8x8_font_inb33_3x6_f"
.LASF215:
	.string	"u8x8_d_uc1611_ea_dogm240"
.LASF14:
	.string	"display_info"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF212:
	.string	"u8x8_d_uc1611_ew50850"
.LASF34:
	.string	"u8x8_struct"
.LASF88:
	.string	"u8x8_font_open_iconic_thing_1x1"
.LASF98:
	.string	"u8x8_font_open_iconic_embedded_4x4"
.LASF120:
	.string	"u8x8_font_saikyosansbold8_n"
.LASF51:
	.string	"default_x_offset"
.LASF162:
	.string	"u8x8_font_inb33_3x6_r"
.LASF22:
	.string	"encoding"
.LASF121:
	.string	"u8x8_font_saikyosansbold8_u"
.LASF190:
	.string	"u8x8_font_px437wyse700b_2x2_f"
.LASF52:
	.string	"flipmode_x_offset"
.LASF205:
	.string	"u8x8_d_uc1611_powersave0_seq"
.LASF101:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF155:
	.string	"u8x8_font_inr46_4x8_f"
.LASF107:
	.string	"u8x8_font_open_iconic_weather_8x8"
.LASF157:
	.string	"u8x8_font_inr46_4x8_n"
.LASF97:
	.string	"u8x8_font_open_iconic_check_4x4"
.LASF191:
	.string	"u8x8_font_px437wyse700b_2x2_r"
.LASF156:
	.string	"u8x8_font_inr46_4x8_r"
.LASF187:
	.string	"u8x8_font_px437wyse700a_2x2_f"
.LASF139:
	.string	"u8x8_font_courB24_3x4_n"
.LASF17:
	.string	"cad_cb"
.LASF189:
	.string	"u8x8_font_px437wyse700a_2x2_n"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF181:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF23:
	.string	"x_offset"
.LASF217:
	.string	"u8x8_d_helper_display_init"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF50:
	.string	"tile_height"
.LASF148:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF208:
	.string	"u8x8_d_uc1611_cg160160_init_seq"
.LASF72:
	.string	"u8x8_font_8x13_1x2_f"
.LASF108:
	.string	"u8x8_font_profont29_2x3_f"
.LASF114:
	.string	"u8x8_font_artosserif8_r"
.LASF74:
	.string	"u8x8_font_8x13_1x2_n"
.LASF110:
	.string	"u8x8_font_profont29_2x3_n"
.LASF147:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_r"
.LASF73:
	.string	"u8x8_font_8x13_1x2_r"
.LASF109:
	.string	"u8x8_font_profont29_2x3_r"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF105:
	.string	"u8x8_font_open_iconic_play_8x8"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF209:
	.string	"u8x8"
.LASF86:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF152:
	.string	"u8x8_font_inr33_3x6_f"
.LASF102:
	.string	"u8x8_font_open_iconic_arrow_8x8"
.LASF149:
	.string	"u8x8_font_inr21_2x4_f"
.LASF154:
	.string	"u8x8_font_inr33_3x6_n"
.LASF93:
	.string	"u8x8_font_open_iconic_play_2x2"
.LASF151:
	.string	"u8x8_font_inr21_2x4_n"
.LASF153:
	.string	"u8x8_font_inr33_3x6_r"
.LASF47:
	.string	"data_setup_time_ns"
.LASF150:
	.string	"u8x8_font_inr21_2x4_r"
.LASF75:
	.string	"u8x8_font_8x13B_1x2_f"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF12:
	.string	"uint32_t"
.LASF104:
	.string	"u8x8_font_open_iconic_embedded_8x8"
.LASF62:
	.string	"u8x8_font_amstrad_cpc_extended_f"
.LASF69:
	.string	"u8x8_font_5x8_f"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF64:
	.string	"u8x8_font_amstrad_cpc_extended_n"
.LASF71:
	.string	"u8x8_font_5x8_n"
.LASF167:
	.string	"u8x8_font_pressstart2p_f"
.LASF194:
	.string	"u8x8_d_uc1611s_powersave1_seq"
.LASF63:
	.string	"u8x8_font_amstrad_cpc_extended_r"
.LASF70:
	.string	"u8x8_font_5x8_r"
.LASF65:
	.string	"u8x8_font_amstrad_cpc_extended_u"
.LASF180:
	.string	"u8x8_font_pxplusibmcga_r"
.LASF57:
	.string	"tile_ptr"
.LASF4:
	.string	"__uint16_t"
.LASF182:
	.string	"u8x8_font_pxplusibmcga_u"
.LASF168:
	.string	"u8x8_font_pressstart2p_r"
.LASF223:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF207:
	.string	"u8x8_uc1611_cg160160_display_info"
.LASF195:
	.string	"u8x8_d_uc1611s_flip0_seq"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF224:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF225:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_uc1611.c"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF227:
	.string	"u8x8_d_uc1611_common"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF213:
	.string	"arg_ptr"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF211:
	.string	"u8x8_d_uc1611_cg160160"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF198:
	.string	"u8x8_d_uc1611_ea_dogm240_init_seq"
.LASF21:
	.string	"font"
.LASF87:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF10:
	.string	"uint8_t"
.LASF89:
	.string	"u8x8_font_open_iconic_weather_1x1"
.LASF26:
	.string	"i2c_started"
.LASF53:
	.string	"pixel_width"
.LASF91:
	.string	"u8x8_font_open_iconic_check_2x2"
.LASF49:
	.string	"tile_width"
.LASF66:
	.string	"u8x8_font_5x7_f"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF137:
	.string	"u8x8_font_courB24_3x4_f"
.LASF59:
	.string	"y_pos"
.LASF220:
	.string	"u8x8_cad_SendCmd"
.LASF68:
	.string	"u8x8_font_5x7_n"
.LASF84:
	.string	"u8x8_font_open_iconic_arrow_1x1"
.LASF67:
	.string	"u8x8_font_5x7_r"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF138:
	.string	"u8x8_font_courB24_3x4_r"
.LASF118:
	.string	"u8x8_font_chroma48medium8_n"
.LASF222:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF218:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
