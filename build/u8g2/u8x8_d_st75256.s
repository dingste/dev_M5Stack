	.file	"u8x8_d_st75256.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st75256_256x128_generic,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC1, u8x8_d_st75256_256x128_powersave1_seq
	.align	4
	.type	u8x8_d_st75256_256x128_generic, @function
u8x8_d_st75256_256x128_generic:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st75256.c"
	.loc 1 158 1 view -0
	.loc 1 158 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 159 3 is_stmt 1 view .LVU2
	.loc 1 160 3 view .LVU3
	.loc 1 161 3 view .LVU4
	movi.n	a6, 0xe
	beq	a3, a6, .L2
	movi.n	a6, 0xf
	beq	a3, a6, .L3
	movi.n	a6, 0xb
	.loc 1 229 14 is_stmt 0 view .LVU5
	movi.n	a5, 0
.LVL1:
	.loc 1 229 14 view .LVU6
	bne	a3, a6, .L4
	.loc 1 175 7 is_stmt 1 view .LVU7
	.loc 1 176 9 is_stmt 0 view .LVU8
	l32r	a11, .LC0
	.loc 1 175 10 view .LVU9
	beq	a4, a5, .L12
.L5:
	.loc 1 178 9 is_stmt 1 view .LVU10
	l32r	a11, .LC1
.L12:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L10
.LVL3:
.L2:
	.loc 1 184 7 view .LVU11
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 186 7 view .LVU12
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 187 7 view .LVU13
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL6:
	.loc 1 188 7 view .LVU14
	.loc 1 188 46 is_stmt 0 view .LVU15
	slli	a11, a4, 1
	.loc 1 188 7 view .LVU16
	movi.n	a3, 0x3e
.LVL7:
	.loc 1 188 7 view .LVU17
	and	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL8:
	.loc 1 189 7 is_stmt 1 view .LVU18
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL9:
	.loc 1 191 7 view .LVU19
	j	.L11
.LVL10:
.L3:
	.loc 1 196 7 view .LVU20
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL11:
	.loc 1 197 7 view .LVU21
	.loc 1 200 7 is_stmt 0 view .LVU22
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 197 9 view .LVU23
	l8ui	a3, a5, 5
.LVL12:
	.loc 1 198 7 is_stmt 1 view .LVU24
	.loc 1 200 7 view .LVU25
	call8	u8x8_cad_SendCmd
.LVL13:
	.loc 1 201 7 view .LVU26
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL14:
	.loc 1 202 7 view .LVU27
	.loc 1 202 45 is_stmt 0 view .LVU28
	l8ui	a11, a2, 34
	l8ui	a6, a5, 6
	.loc 1 202 7 view .LVU29
	mov.n	a10, a2
	.loc 1 202 45 view .LVU30
	add.n	a11, a11, a6
	.loc 1 202 7 view .LVU31
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL15:
	.loc 1 203 7 is_stmt 1 view .LVU32
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL16:
	.loc 1 205 7 view .LVU33
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL17:
	.loc 1 206 7 view .LVU34
	.loc 1 198 9 is_stmt 0 view .LVU35
	slli	a11, a3, 3
	.loc 1 206 7 view .LVU36
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL18:
	.loc 1 207 7 is_stmt 1 view .LVU37
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL19:
	.loc 1 208 7 view .LVU38
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL20:
	.loc 1 215 12 is_stmt 0 view .LVU39
	movi.n	a6, 0x1f
.LVL21:
.L7:
	.loc 1 210 7 is_stmt 1 view .LVU40
	.loc 1 212 9 view .LVU41
	.loc 1 212 11 is_stmt 0 view .LVU42
	l8ui	a3, a5, 4
.LVL22:
	.loc 1 213 9 is_stmt 1 view .LVU43
	.loc 1 213 13 is_stmt 0 view .LVU44
	l32i.n	a7, a5, 0
.LVL23:
	.loc 1 215 9 is_stmt 1 view .LVU45
	.loc 1 215 12 is_stmt 0 view .LVU46
	bgeu	a6, a3, .L6
	.loc 1 217 11 is_stmt 1 view .LVU47
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL24:
	.loc 1 218 11 view .LVU48
	.loc 1 218 14 is_stmt 0 view .LVU49
	movi	a8, 0xf8
	.loc 1 219 13 view .LVU50
	addi	a3, a3, -31
.LVL25:
	.loc 1 218 14 view .LVU51
	add.n	a7, a7, a8
.LVL26:
	.loc 1 219 11 is_stmt 1 view .LVU52
	.loc 1 219 13 is_stmt 0 view .LVU53
	extui	a3, a3, 0, 8
.LVL27:
.L6:
	.loc 1 222 9 is_stmt 1 view .LVU54
	slli	a11, a3, 3
	.loc 1 223 16 is_stmt 0 view .LVU55
	addi.n	a4, a4, -1
.LVL28:
	.loc 1 222 9 view .LVU56
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 223 16 view .LVU57
	extui	a4, a4, 0, 8
.LVL29:
	.loc 1 222 9 view .LVU58
	call8	u8x8_cad_SendData
.LVL30:
	.loc 1 223 9 is_stmt 1 view .LVU59
	.loc 1 224 7 is_stmt 0 view .LVU60
	bnez.n	a4, .L7
.LVL31:
.L11:
	.loc 1 226 7 is_stmt 1 view .LVU61
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL32:
.L10:
	.loc 1 227 7 view .LVU62
	.loc 1 231 10 is_stmt 0 view .LVU63
	movi.n	a5, 1
.L4:
	.loc 1 232 1 view .LVU64
	mov.n	a2, a5
.LVL33:
	.loc 1 232 1 view .LVU65
	retw.n
.LFE0:
	.size	u8x8_d_st75256_256x128_generic, .-u8x8_d_st75256_256x128_generic
	.section	.text.u8x8_d_st75256_jlx256128,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_st75256_256x128_display_info
	.literal .LC3, u8x8_d_st75256_256x128_init_seq
	.literal .LC4, u8x8_d_st75256_jlx256128_flip0_seq
	.literal .LC5, u8x8_d_st75256_jlx256128_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256128
	.type	u8x8_d_st75256_jlx256128, @function
u8x8_d_st75256_jlx256128:
.LVL34:
.LFB1:
	.loc 1 335 1 is_stmt 1 view -0
	.loc 1 335 1 is_stmt 0 view .LVU67
	entry	sp, 32
.LCFI1:
	.loc 1 336 3 is_stmt 1 view .LVU68
	.loc 1 335 1 is_stmt 0 view .LVU69
	extui	a3, a3, 0, 8
	.loc 1 335 1 view .LVU70
	extui	a4, a4, 0, 8
	.loc 1 336 8 view .LVU71
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st75256_256x128_generic
.LVL35:
	.loc 1 336 6 view .LVU72
	bnez.n	a10, .L18
	.loc 1 338 3 is_stmt 1 view .LVU73
	.loc 1 338 6 is_stmt 0 view .LVU74
	movi.n	a8, 9
	bne	a3, a8, .L15
	.loc 1 341 5 is_stmt 1 view .LVU75
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL36:
	.loc 1 342 5 view .LVU76
	j	.L18
.L15:
	.loc 1 344 8 view .LVU77
	.loc 1 344 11 is_stmt 0 view .LVU78
	bnei	a3, 10, .L16
	.loc 1 346 5 is_stmt 1 view .LVU79
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL37:
	.loc 1 347 5 view .LVU80
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL38:
	.loc 1 348 5 view .LVU81
	j	.L18
.L16:
	.loc 1 350 8 view .LVU82
	.loc 1 350 11 is_stmt 0 view .LVU83
	movi.n	a8, 0xd
	bne	a3, a8, .L14
	.loc 1 352 5 is_stmt 1 view .LVU84
	.loc 1 352 8 is_stmt 0 view .LVU85
	bnez.n	a4, .L17
	.loc 1 354 7 is_stmt 1 view .LVU86
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL39:
	.loc 1 355 7 view .LVU87
	.loc 1 355 42 is_stmt 0 view .LVU88
	l32i.n	a3, a2, 0
.LVL40:
	.loc 1 355 22 view .LVU89
	l8ui	a3, a3, 18
	j	.L19
.L17:
	.loc 1 359 7 is_stmt 1 view .LVU90
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL41:
	.loc 1 360 7 view .LVU91
	.loc 1 360 42 is_stmt 0 view .LVU92
	l32i.n	a3, a2, 0
	.loc 1 360 22 view .LVU93
	l8ui	a3, a3, 19
.L19:
	.loc 1 360 22 view .LVU94
	s8i	a3, a2, 34
.L18:
	.loc 1 337 12 view .LVU95
	movi.n	a10, 1
.L14:
	.loc 1 365 1 view .LVU96
	mov.n	a2, a10
.LVL42:
	.loc 1 365 1 view .LVU97
	retw.n
.LFE1:
	.size	u8x8_d_st75256_jlx256128, .-u8x8_d_st75256_jlx256128
	.section	.text.u8x8_d_st75256_wo256x128,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_st75256_wo256x128_display_info
	.literal .LC7, u8x8_d_st75256_wo256x128_init_seq
	.literal .LC8, u8x8_d_st75256_jlx172104_flip1_seq
	.literal .LC9, u8x8_d_st75256_jlx172104_flip0_seq
	.align	4
	.global	u8x8_d_st75256_wo256x128
	.type	u8x8_d_st75256_wo256x128, @function
u8x8_d_st75256_wo256x128:
.LVL43:
.LFB2:
	.loc 1 470 1 is_stmt 1 view -0
	.loc 1 470 1 is_stmt 0 view .LVU99
	entry	sp, 32
.LCFI2:
	.loc 1 471 3 is_stmt 1 view .LVU100
	.loc 1 470 1 is_stmt 0 view .LVU101
	extui	a3, a3, 0, 8
	.loc 1 470 1 view .LVU102
	extui	a4, a4, 0, 8
	.loc 1 471 8 view .LVU103
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st75256_256x128_generic
.LVL44:
	.loc 1 471 6 view .LVU104
	bnez.n	a10, .L25
	.loc 1 473 3 is_stmt 1 view .LVU105
	.loc 1 473 6 is_stmt 0 view .LVU106
	movi.n	a8, 9
	bne	a3, a8, .L22
	.loc 1 476 5 is_stmt 1 view .LVU107
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL45:
	.loc 1 477 5 view .LVU108
	j	.L25
.L22:
	.loc 1 479 8 view .LVU109
	.loc 1 479 11 is_stmt 0 view .LVU110
	bnei	a3, 10, .L23
	.loc 1 481 5 is_stmt 1 view .LVU111
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL46:
	.loc 1 482 5 view .LVU112
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL47:
	.loc 1 483 5 view .LVU113
	j	.L25
.L23:
	.loc 1 485 8 view .LVU114
	.loc 1 485 11 is_stmt 0 view .LVU115
	movi.n	a8, 0xd
	bne	a3, a8, .L21
	.loc 1 487 5 is_stmt 1 view .LVU116
	.loc 1 487 8 is_stmt 0 view .LVU117
	bnez.n	a4, .L24
	.loc 1 489 7 is_stmt 1 view .LVU118
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL48:
	.loc 1 490 7 view .LVU119
	.loc 1 490 42 is_stmt 0 view .LVU120
	l32i.n	a3, a2, 0
.LVL49:
	.loc 1 490 22 view .LVU121
	l8ui	a3, a3, 18
	j	.L26
.L24:
	.loc 1 494 7 is_stmt 1 view .LVU122
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL50:
	.loc 1 495 7 view .LVU123
	.loc 1 495 42 is_stmt 0 view .LVU124
	l32i.n	a3, a2, 0
	.loc 1 495 22 view .LVU125
	l8ui	a3, a3, 19
.L26:
	.loc 1 495 22 view .LVU126
	s8i	a3, a2, 34
.L25:
	.loc 1 472 12 view .LVU127
	movi.n	a10, 1
.L21:
	.loc 1 500 1 view .LVU128
	mov.n	a2, a10
.LVL51:
	.loc 1 500 1 view .LVU129
	retw.n
.LFE2:
	.size	u8x8_d_st75256_wo256x128, .-u8x8_d_st75256_wo256x128
	.section	.text.u8x8_d_st75256_jlx25664,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_st75256_256x64_display_info
	.literal .LC11, u8x8_d_st75256_256x64_init_seq
	.literal .LC12, u8x8_d_st75256_jlx256128_flip0_seq
	.literal .LC13, u8x8_d_st75256_jlx256128_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx25664
	.type	u8x8_d_st75256_jlx25664, @function
u8x8_d_st75256_jlx25664:
.LVL52:
.LFB3:
	.loc 1 604 1 is_stmt 1 view -0
	.loc 1 604 1 is_stmt 0 view .LVU131
	entry	sp, 32
.LCFI3:
	.loc 1 605 3 is_stmt 1 view .LVU132
	.loc 1 604 1 is_stmt 0 view .LVU133
	extui	a3, a3, 0, 8
	.loc 1 604 1 view .LVU134
	extui	a4, a4, 0, 8
	.loc 1 605 8 view .LVU135
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st75256_256x128_generic
.LVL53:
	.loc 1 605 6 view .LVU136
	bnez.n	a10, .L32
	.loc 1 607 3 is_stmt 1 view .LVU137
	.loc 1 607 6 is_stmt 0 view .LVU138
	movi.n	a8, 9
	bne	a3, a8, .L29
	.loc 1 610 5 is_stmt 1 view .LVU139
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL54:
	.loc 1 611 5 view .LVU140
	j	.L32
.L29:
	.loc 1 613 8 view .LVU141
	.loc 1 613 11 is_stmt 0 view .LVU142
	bnei	a3, 10, .L30
	.loc 1 615 5 is_stmt 1 view .LVU143
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL55:
	.loc 1 616 5 view .LVU144
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL56:
	.loc 1 617 5 view .LVU145
	j	.L32
.L30:
	.loc 1 619 8 view .LVU146
	.loc 1 619 11 is_stmt 0 view .LVU147
	movi.n	a8, 0xd
	bne	a3, a8, .L28
	.loc 1 621 5 is_stmt 1 view .LVU148
	.loc 1 621 8 is_stmt 0 view .LVU149
	bnez.n	a4, .L31
	.loc 1 623 7 is_stmt 1 view .LVU150
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL57:
	.loc 1 624 7 view .LVU151
	.loc 1 624 42 is_stmt 0 view .LVU152
	l32i.n	a3, a2, 0
.LVL58:
	.loc 1 624 22 view .LVU153
	l8ui	a3, a3, 18
	j	.L33
.L31:
	.loc 1 628 7 is_stmt 1 view .LVU154
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL59:
	.loc 1 629 7 view .LVU155
	.loc 1 629 42 is_stmt 0 view .LVU156
	l32i.n	a3, a2, 0
	.loc 1 629 22 view .LVU157
	l8ui	a3, a3, 19
.L33:
	.loc 1 629 22 view .LVU158
	s8i	a3, a2, 34
.L32:
	.loc 1 606 12 view .LVU159
	movi.n	a10, 1
.L28:
	.loc 1 634 1 view .LVU160
	mov.n	a2, a10
.LVL60:
	.loc 1 634 1 view .LVU161
	retw.n
.LFE3:
	.size	u8x8_d_st75256_jlx25664, .-u8x8_d_st75256_jlx25664
	.section	.text.u8x8_d_st75256_jlx172104,"ax",@progbits
	.literal_position
	.literal .LC14, .L37
	.literal .LC15, u8x8_st75256_172x104_display_info
	.literal .LC16, u8x8_d_st75256_jlx172104_init_seq
	.literal .LC17, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC18, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC19, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC20, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx172104
	.type	u8x8_d_st75256_jlx172104, @function
u8x8_d_st75256_jlx172104:
.LVL61:
.LFB4:
	.loc 1 737 1 is_stmt 1 view -0
	.loc 1 737 1 is_stmt 0 view .LVU163
	entry	sp, 32
.LCFI4:
	.loc 1 738 3 is_stmt 1 view .LVU164
	.loc 1 739 3 view .LVU165
	.loc 1 741 3 view .LVU166
	addi	a3, a3, -9
.LVL62:
	.loc 1 741 3 is_stmt 0 view .LVU167
	extui	a3, a3, 0, 8
	.loc 1 737 1 view .LVU168
	extui	a4, a4, 0, 8
	.loc 1 741 3 view .LVU169
	bgeui	a3, 7, .L49
	l32r	a6, .LC14
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx172104,"a",@progbits
	.align	4
	.align	4
.L37:
	.word	.L42
	.word	.L41
	.word	.L40
	.word	.L49
	.word	.L39
	.word	.L38
	.word	.L36
	.section	.text.u8x8_d_st75256_jlx172104
.L36:
	.loc 1 745 15 is_stmt 1 view .LVU170
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL63:
	.loc 1 746 15 view .LVU171
	.loc 1 749 15 is_stmt 0 view .LVU172
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 746 17 view .LVU173
	l8ui	a6, a5, 5
.LVL64:
	.loc 1 747 15 is_stmt 1 view .LVU174
	.loc 1 749 15 is_stmt 0 view .LVU175
	call8	u8x8_cad_SendCmd
.LVL65:
	.loc 1 750 15 view .LVU176
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL66:
	.loc 1 751 11 view .LVU177
	l8ui	a3, a2, 34
	.loc 1 747 17 view .LVU178
	slli	a6, a6, 3
.LVL67:
	.loc 1 747 17 view .LVU179
	extui	a6, a6, 0, 8
.LVL68:
	.loc 1 749 15 is_stmt 1 view .LVU180
	.loc 1 750 15 view .LVU181
	.loc 1 751 8 view .LVU182
	.loc 1 752 27 is_stmt 0 view .LVU183
	l8ui	a11, a5, 6
	.loc 1 751 11 view .LVU184
	bnez.n	a3, .L43
	.loc 1 752 3 is_stmt 1 view .LVU185
	.loc 1 752 27 is_stmt 0 view .LVU186
	addi.n	a11, a11, 8
	.loc 1 752 3 view .LVU187
	extui	a11, a11, 0, 8
.L43:
	.loc 1 754 3 is_stmt 1 view .LVU188
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL69:
	.loc 1 755 15 view .LVU189
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL70:
	.loc 1 757 15 view .LVU190
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL71:
	.loc 1 758 15 view .LVU191
	.loc 1 758 39 is_stmt 0 view .LVU192
	l8ui	a11, a2, 34
	.loc 1 758 15 view .LVU193
	mov.n	a10, a2
	.loc 1 758 39 view .LVU194
	add.n	a11, a6, a11
	.loc 1 758 15 view .LVU195
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL72:
	.loc 1 759 15 is_stmt 1 view .LVU196
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL73:
	.loc 1 760 15 view .LVU197
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL74:
	.loc 1 770 20 is_stmt 0 view .LVU198
	movi	a7, 0xac
.LVL75:
.L46:
	.loc 1 764 15 is_stmt 1 view .LVU199
	.loc 1 766 17 view .LVU200
	.loc 1 766 19 is_stmt 0 view .LVU201
	l8ui	a3, a5, 4
.LVL76:
	.loc 1 767 17 is_stmt 1 view .LVU202
	.loc 1 767 21 is_stmt 0 view .LVU203
	l32i.n	a12, a5, 0
.LVL77:
	.loc 1 768 17 is_stmt 1 view .LVU204
	.loc 1 768 19 is_stmt 0 view .LVU205
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL78:
	.loc 1 770 17 is_stmt 1 view .LVU206
	.loc 1 770 24 is_stmt 0 view .LVU207
	add.n	a8, a3, a6
	.loc 1 770 20 view .LVU208
	bge	a7, a8, .L45
	.loc 1 772 25 is_stmt 1 view .LVU209
.LVL79:
	.loc 1 773 25 view .LVU210
	.loc 1 773 27 is_stmt 0 view .LVU211
	movi	a3, -0x54
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL80:
.L45:
	.loc 1 776 17 is_stmt 1 view .LVU212
	.loc 1 778 24 is_stmt 0 view .LVU213
	addi.n	a4, a4, -1
.LVL81:
	.loc 1 776 17 view .LVU214
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 777 19 view .LVU215
	add.n	a6, a6, a3
.LVL82:
	.loc 1 778 24 view .LVU216
	extui	a4, a4, 0, 8
.LVL83:
	.loc 1 776 17 view .LVU217
	call8	u8x8_cad_SendData
.LVL84:
	.loc 1 777 17 is_stmt 1 view .LVU218
	.loc 1 777 19 is_stmt 0 view .LVU219
	extui	a6, a6, 0, 8
.LVL85:
	.loc 1 778 17 is_stmt 1 view .LVU220
	.loc 1 779 15 is_stmt 0 view .LVU221
	bnez.n	a4, .L46
	.loc 1 781 15 is_stmt 1 view .LVU222
	j	.L52
.LVL86:
.L42:
	.loc 1 785 13 view .LVU223
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL87:
	.loc 1 786 13 view .LVU224
	j	.L51
.L41:
	.loc 1 788 13 view .LVU225
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL88:
	.loc 1 789 13 view .LVU226
	l32r	a11, .LC16
	j	.L53
.L40:
	.loc 1 792 15 view .LVU227
	.loc 1 793 17 is_stmt 0 view .LVU228
	l32r	a11, .LC17
	.loc 1 792 18 view .LVU229
	beqz.n	a4, .L53
.L47:
	.loc 1 795 17 is_stmt 1 view .LVU230
	l32r	a11, .LC18
.L53:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL89:
	j	.L51
.L39:
	.loc 1 799 6 view .LVU231
	.loc 1 799 9 is_stmt 0 view .LVU232
	bnez.n	a4, .L48
	.loc 1 801 8 is_stmt 1 view .LVU233
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL90:
	.loc 1 802 8 view .LVU234
	.loc 1 802 43 is_stmt 0 view .LVU235
	l32i.n	a3, a2, 0
	.loc 1 802 23 view .LVU236
	l8ui	a3, a3, 18
	j	.L54
.L48:
	.loc 1 806 8 is_stmt 1 view .LVU237
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL91:
	.loc 1 807 8 view .LVU238
	.loc 1 807 43 is_stmt 0 view .LVU239
	l32i.n	a3, a2, 0
	.loc 1 807 23 view .LVU240
	l8ui	a3, a3, 19
.L54:
	.loc 1 807 23 view .LVU241
	s8i	a3, a2, 34
	j	.L51
.L38:
	.loc 1 814 15 is_stmt 1 view .LVU242
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL92:
	.loc 1 816 15 view .LVU243
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL93:
	.loc 1 817 15 view .LVU244
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL94:
	.loc 1 818 15 view .LVU245
	.loc 1 818 54 is_stmt 0 view .LVU246
	slli	a11, a4, 1
	.loc 1 818 15 view .LVU247
	movi.n	a3, 0x3e
	and	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL95:
	.loc 1 819 15 is_stmt 1 view .LVU248
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL96:
.L52:
	.loc 1 821 15 view .LVU249
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL97:
.L51:
	.loc 1 822 15 view .LVU250
	.loc 1 822 22 is_stmt 0 view .LVU251
	movi.n	a2, 1
.LVL98:
	.loc 1 822 22 view .LVU252
	j	.L35
.LVL99:
.L49:
	.loc 1 825 10 view .LVU253
	movi.n	a2, 0
.LVL100:
.L35:
	.loc 1 826 1 view .LVU254
	retw.n
.LFE4:
	.size	u8x8_d_st75256_jlx172104, .-u8x8_d_st75256_jlx172104
	.section	.text.u8x8_d_st75256_jlx240160,"ax",@progbits
	.literal_position
	.literal .LC21, .L58
	.literal .LC22, u8x8_st75256_240x160_display_info
	.literal .LC23, u8x8_d_st75256_240x160_init_seq
	.literal .LC24, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC25, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC26, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC27, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx240160
	.type	u8x8_d_st75256_jlx240160, @function
u8x8_d_st75256_jlx240160:
.LVL101:
.LFB5:
	.loc 1 929 1 is_stmt 1 view -0
	.loc 1 929 1 is_stmt 0 view .LVU256
	entry	sp, 32
.LCFI5:
	.loc 1 930 3 is_stmt 1 view .LVU257
	.loc 1 931 3 view .LVU258
	.loc 1 933 3 view .LVU259
	addi	a3, a3, -9
.LVL102:
	.loc 1 933 3 is_stmt 0 view .LVU260
	extui	a3, a3, 0, 8
	.loc 1 929 1 view .LVU261
	extui	a4, a4, 0, 8
	.loc 1 933 3 view .LVU262
	bgeui	a3, 7, .L70
	l32r	a6, .LC21
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx240160,"a",@progbits
	.align	4
	.align	4
.L58:
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L70
	.word	.L60
	.word	.L59
	.word	.L57
	.section	.text.u8x8_d_st75256_jlx240160
.L57:
	.loc 1 937 15 is_stmt 1 view .LVU263
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL103:
	.loc 1 938 15 view .LVU264
	.loc 1 941 15 is_stmt 0 view .LVU265
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 938 17 view .LVU266
	l8ui	a6, a5, 5
.LVL104:
	.loc 1 939 15 is_stmt 1 view .LVU267
	.loc 1 941 15 is_stmt 0 view .LVU268
	call8	u8x8_cad_SendCmd
.LVL105:
	.loc 1 942 15 view .LVU269
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL106:
	.loc 1 943 11 view .LVU270
	l8ui	a3, a2, 34
	.loc 1 939 17 view .LVU271
	slli	a6, a6, 3
.LVL107:
	.loc 1 939 17 view .LVU272
	extui	a6, a6, 0, 8
.LVL108:
	.loc 1 941 15 is_stmt 1 view .LVU273
	.loc 1 942 15 view .LVU274
	.loc 1 943 8 view .LVU275
	.loc 1 944 27 is_stmt 0 view .LVU276
	l8ui	a11, a5, 6
	.loc 1 943 11 view .LVU277
	bnez.n	a3, .L64
	.loc 1 944 3 is_stmt 1 view .LVU278
	.loc 1 944 27 is_stmt 0 view .LVU279
	addi.n	a11, a11, 1
	.loc 1 944 3 view .LVU280
	extui	a11, a11, 0, 8
.L64:
	.loc 1 946 3 is_stmt 1 view .LVU281
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL109:
	.loc 1 947 15 view .LVU282
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL110:
	.loc 1 949 15 view .LVU283
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL111:
	.loc 1 950 15 view .LVU284
	.loc 1 950 39 is_stmt 0 view .LVU285
	l8ui	a11, a2, 34
	.loc 1 950 15 view .LVU286
	mov.n	a10, a2
	.loc 1 950 39 view .LVU287
	add.n	a11, a6, a11
	.loc 1 950 15 view .LVU288
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL112:
	.loc 1 951 15 is_stmt 1 view .LVU289
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL113:
	.loc 1 952 15 view .LVU290
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL114:
	.loc 1 961 20 is_stmt 0 view .LVU291
	movi	a7, 0xf0
.LVL115:
.L67:
	.loc 1 955 15 is_stmt 1 view .LVU292
	.loc 1 957 17 view .LVU293
	.loc 1 957 19 is_stmt 0 view .LVU294
	l8ui	a3, a5, 4
.LVL116:
	.loc 1 958 17 is_stmt 1 view .LVU295
	.loc 1 958 21 is_stmt 0 view .LVU296
	l32i.n	a12, a5, 0
.LVL117:
	.loc 1 959 17 is_stmt 1 view .LVU297
	.loc 1 959 19 is_stmt 0 view .LVU298
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL118:
	.loc 1 961 17 is_stmt 1 view .LVU299
	.loc 1 961 24 is_stmt 0 view .LVU300
	add.n	a8, a3, a6
	.loc 1 961 20 view .LVU301
	bge	a7, a8, .L66
	.loc 1 963 25 is_stmt 1 view .LVU302
.LVL119:
	.loc 1 964 25 view .LVU303
	.loc 1 964 27 is_stmt 0 view .LVU304
	movi.n	a3, -0x10
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL120:
.L66:
	.loc 1 967 17 is_stmt 1 view .LVU305
	.loc 1 969 24 is_stmt 0 view .LVU306
	addi.n	a4, a4, -1
.LVL121:
	.loc 1 967 17 view .LVU307
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 968 19 view .LVU308
	add.n	a6, a6, a3
.LVL122:
	.loc 1 969 24 view .LVU309
	extui	a4, a4, 0, 8
.LVL123:
	.loc 1 967 17 view .LVU310
	call8	u8x8_cad_SendData
.LVL124:
	.loc 1 968 17 is_stmt 1 view .LVU311
	.loc 1 968 19 is_stmt 0 view .LVU312
	extui	a6, a6, 0, 8
.LVL125:
	.loc 1 969 17 is_stmt 1 view .LVU313
	.loc 1 970 15 is_stmt 0 view .LVU314
	bnez.n	a4, .L67
	.loc 1 972 15 is_stmt 1 view .LVU315
	j	.L73
.LVL126:
.L63:
	.loc 1 976 6 view .LVU316
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL127:
	.loc 1 977 13 view .LVU317
	j	.L72
.L62:
	.loc 1 979 6 view .LVU318
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL128:
	.loc 1 980 6 view .LVU319
	l32r	a11, .LC23
	j	.L74
.L61:
	.loc 1 983 15 view .LVU320
	.loc 1 984 17 is_stmt 0 view .LVU321
	l32r	a11, .LC24
	.loc 1 983 18 view .LVU322
	beqz.n	a4, .L74
.L68:
	.loc 1 986 17 is_stmt 1 view .LVU323
	l32r	a11, .LC25
.L74:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL129:
	j	.L72
.L60:
	.loc 1 990 6 view .LVU324
	.loc 1 990 9 is_stmt 0 view .LVU325
	bnez.n	a4, .L69
	.loc 1 992 8 is_stmt 1 view .LVU326
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL130:
	.loc 1 993 8 view .LVU327
	.loc 1 993 43 is_stmt 0 view .LVU328
	l32i.n	a3, a2, 0
	.loc 1 993 23 view .LVU329
	l8ui	a3, a3, 18
	j	.L75
.L69:
	.loc 1 997 8 is_stmt 1 view .LVU330
	l32r	a11, .LC27
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL131:
	.loc 1 998 8 view .LVU331
	.loc 1 998 43 is_stmt 0 view .LVU332
	l32i.n	a3, a2, 0
	.loc 1 998 23 view .LVU333
	l8ui	a3, a3, 19
.L75:
	.loc 1 998 23 view .LVU334
	s8i	a3, a2, 34
	j	.L72
.L59:
	.loc 1 1005 15 is_stmt 1 view .LVU335
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL132:
	.loc 1 1007 15 view .LVU336
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL133:
	.loc 1 1008 15 view .LVU337
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL134:
	.loc 1 1009 15 view .LVU338
	.loc 1 1009 54 is_stmt 0 view .LVU339
	slli	a11, a4, 1
	.loc 1 1009 15 view .LVU340
	movi.n	a3, 0x3e
	and	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL135:
	.loc 1 1010 15 is_stmt 1 view .LVU341
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL136:
.L73:
	.loc 1 1012 15 view .LVU342
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL137:
.L72:
	.loc 1 1013 15 view .LVU343
	.loc 1 1013 22 is_stmt 0 view .LVU344
	movi.n	a2, 1
.LVL138:
	.loc 1 1013 22 view .LVU345
	j	.L56
.LVL139:
.L70:
	.loc 1 1016 10 view .LVU346
	movi.n	a2, 0
.LVL140:
.L56:
	.loc 1 1020 1 view .LVU347
	retw.n
.LFE5:
	.size	u8x8_d_st75256_jlx240160, .-u8x8_d_st75256_jlx240160
	.section	.text.u8x8_d_st75256_jlx256160,"ax",@progbits
	.literal_position
	.literal .LC28, .L79
	.literal .LC29, u8x8_st75256_256x160_display_info
	.literal .LC30, u8x8_d_st75256_256x160_init_seq
	.literal .LC31, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC32, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC33, u8x8_d_st75256_jlx256160_flip0_seq
	.literal .LC34, u8x8_d_st75256_jlx256160_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256160
	.type	u8x8_d_st75256_jlx256160, @function
u8x8_d_st75256_jlx256160:
.LVL141:
.LFB6:
	.loc 1 1124 1 is_stmt 1 view -0
	.loc 1 1124 1 is_stmt 0 view .LVU349
	entry	sp, 32
.LCFI6:
	.loc 1 1125 3 is_stmt 1 view .LVU350
	.loc 1 1126 3 view .LVU351
	.loc 1 1128 3 view .LVU352
	addi	a3, a3, -9
.LVL142:
	.loc 1 1128 3 is_stmt 0 view .LVU353
	extui	a3, a3, 0, 8
	.loc 1 1124 1 view .LVU354
	extui	a4, a4, 0, 8
	.loc 1 1128 3 view .LVU355
	bgeui	a3, 7, .L91
	l32r	a6, .LC28
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx256160,"a",@progbits
	.align	4
	.align	4
.L79:
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L91
	.word	.L81
	.word	.L80
	.word	.L78
	.section	.text.u8x8_d_st75256_jlx256160
.L78:
	.loc 1 1132 15 is_stmt 1 view .LVU356
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL143:
	.loc 1 1133 15 view .LVU357
	.loc 1 1136 15 is_stmt 0 view .LVU358
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 1133 17 view .LVU359
	l8ui	a3, a5, 5
.LVL144:
	.loc 1 1134 15 is_stmt 1 view .LVU360
	.loc 1 1136 15 is_stmt 0 view .LVU361
	call8	u8x8_cad_SendCmd
.LVL145:
	.loc 1 1137 15 view .LVU362
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL146:
	.loc 1 1138 11 view .LVU363
	l8ui	a6, a2, 34
	.loc 1 1134 17 view .LVU364
	slli	a3, a3, 3
.LVL147:
	.loc 1 1134 17 view .LVU365
	extui	a3, a3, 0, 8
.LVL148:
	.loc 1 1136 15 is_stmt 1 view .LVU366
	.loc 1 1137 15 view .LVU367
	.loc 1 1138 8 view .LVU368
	.loc 1 1139 27 is_stmt 0 view .LVU369
	l8ui	a11, a5, 6
	.loc 1 1138 11 view .LVU370
	bnei	a6, 1, .L85
	.loc 1 1139 3 is_stmt 1 view .LVU371
	.loc 1 1139 27 is_stmt 0 view .LVU372
	addi.n	a11, a11, 1
	.loc 1 1139 3 view .LVU373
	extui	a11, a11, 0, 8
.L85:
	.loc 1 1141 3 is_stmt 1 view .LVU374
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL149:
	.loc 1 1142 15 view .LVU375
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL150:
	.loc 1 1144 15 view .LVU376
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL151:
	.loc 1 1145 15 view .LVU377
	.loc 1 1145 58 is_stmt 0 view .LVU378
	l32i.n	a6, a2, 0
	.loc 1 1145 15 view .LVU379
	mov.n	a10, a2
	.loc 1 1145 39 view .LVU380
	l8ui	a11, a6, 18
	.loc 1 1155 6 view .LVU381
	movi.n	a6, 0x1f
	.loc 1 1145 39 view .LVU382
	add.n	a11, a3, a11
	.loc 1 1145 15 view .LVU383
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL152:
	.loc 1 1146 15 is_stmt 1 view .LVU384
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL153:
	.loc 1 1147 15 view .LVU385
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL154:
.L88:
	.loc 1 1150 15 view .LVU386
	.loc 1 1152 17 view .LVU387
	.loc 1 1152 19 is_stmt 0 view .LVU388
	l8ui	a3, a5, 4
.LVL155:
	.loc 1 1153 17 is_stmt 1 view .LVU389
	.loc 1 1153 21 is_stmt 0 view .LVU390
	l32i.n	a7, a5, 0
.LVL156:
	.loc 1 1155 3 is_stmt 1 view .LVU391
	.loc 1 1155 6 is_stmt 0 view .LVU392
	bgeu	a6, a3, .L87
	.loc 1 1157 5 is_stmt 1 view .LVU393
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL157:
	.loc 1 1158 5 view .LVU394
	.loc 1 1158 8 is_stmt 0 view .LVU395
	movi	a8, 0xf8
	.loc 1 1159 7 view .LVU396
	addi	a3, a3, -31
.LVL158:
	.loc 1 1158 8 view .LVU397
	add.n	a7, a7, a8
.LVL159:
	.loc 1 1159 5 is_stmt 1 view .LVU398
	.loc 1 1159 7 is_stmt 0 view .LVU399
	extui	a3, a3, 0, 8
.LVL160:
.L87:
	.loc 1 1162 3 is_stmt 1 view .LVU400
	slli	a11, a3, 3
	.loc 1 1163 24 is_stmt 0 view .LVU401
	addi.n	a4, a4, -1
.LVL161:
	.loc 1 1162 3 view .LVU402
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 1163 24 view .LVU403
	extui	a4, a4, 0, 8
.LVL162:
	.loc 1 1162 3 view .LVU404
	call8	u8x8_cad_SendData
.LVL163:
	.loc 1 1163 17 is_stmt 1 view .LVU405
	.loc 1 1164 15 is_stmt 0 view .LVU406
	bnez.n	a4, .L88
	.loc 1 1166 15 is_stmt 1 view .LVU407
	j	.L94
.LVL164:
.L84:
	.loc 1 1170 6 view .LVU408
	l32r	a11, .LC29
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL165:
	.loc 1 1171 13 view .LVU409
	j	.L93
.L83:
	.loc 1 1173 6 view .LVU410
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL166:
	.loc 1 1174 6 view .LVU411
	l32r	a11, .LC30
	j	.L95
.L82:
	.loc 1 1177 15 view .LVU412
	.loc 1 1178 17 is_stmt 0 view .LVU413
	l32r	a11, .LC31
	.loc 1 1177 18 view .LVU414
	beqz.n	a4, .L95
.L89:
	.loc 1 1180 17 is_stmt 1 view .LVU415
	l32r	a11, .LC32
.L95:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL167:
	j	.L93
.L81:
	.loc 1 1184 6 view .LVU416
	.loc 1 1184 9 is_stmt 0 view .LVU417
	bnez.n	a4, .L90
	.loc 1 1186 8 is_stmt 1 view .LVU418
	l32r	a11, .LC33
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL168:
	.loc 1 1187 8 view .LVU419
	.loc 1 1187 43 is_stmt 0 view .LVU420
	l32i.n	a3, a2, 0
	.loc 1 1187 23 view .LVU421
	l8ui	a3, a3, 18
	j	.L96
.L90:
	.loc 1 1191 8 is_stmt 1 view .LVU422
	l32r	a11, .LC34
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL169:
	.loc 1 1192 8 view .LVU423
	.loc 1 1192 43 is_stmt 0 view .LVU424
	l32i.n	a3, a2, 0
	.loc 1 1192 23 view .LVU425
	l8ui	a3, a3, 19
.L96:
	.loc 1 1192 23 view .LVU426
	s8i	a3, a2, 34
	j	.L93
.L80:
	.loc 1 1199 15 is_stmt 1 view .LVU427
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL170:
	.loc 1 1201 15 view .LVU428
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL171:
	.loc 1 1202 15 view .LVU429
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL172:
	.loc 1 1203 15 view .LVU430
	.loc 1 1203 54 is_stmt 0 view .LVU431
	slli	a11, a4, 1
	.loc 1 1203 15 view .LVU432
	movi.n	a3, 0x3e
	and	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL173:
	.loc 1 1204 15 is_stmt 1 view .LVU433
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL174:
.L94:
	.loc 1 1206 15 view .LVU434
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL175:
.L93:
	.loc 1 1207 15 view .LVU435
	.loc 1 1207 22 is_stmt 0 view .LVU436
	movi.n	a2, 1
.LVL176:
	.loc 1 1207 22 view .LVU437
	j	.L77
.LVL177:
.L91:
	.loc 1 1210 10 view .LVU438
	movi.n	a2, 0
.LVL178:
.L77:
	.loc 1 1211 1 view .LVU439
	retw.n
.LFE6:
	.size	u8x8_d_st75256_jlx256160, .-u8x8_d_st75256_jlx256160
	.section	.text.u8x8_d_st75256_jlx256160m,"ax",@progbits
	.literal_position
	.literal .LC35, .L100
	.literal .LC36, u8x8_st75256_256x160_display_info
	.literal .LC37, u8x8_d_st75256_256x160m_init_seq
	.literal .LC38, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC39, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC40, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC41, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256160m
	.type	u8x8_d_st75256_jlx256160m, @function
u8x8_d_st75256_jlx256160m:
.LVL179:
.LFB7:
	.loc 1 1290 1 is_stmt 1 view -0
	.loc 1 1290 1 is_stmt 0 view .LVU441
	entry	sp, 32
.LCFI7:
	.loc 1 1291 3 is_stmt 1 view .LVU442
	.loc 1 1292 3 view .LVU443
	.loc 1 1294 3 view .LVU444
	addi	a3, a3, -9
.LVL180:
	.loc 1 1294 3 is_stmt 0 view .LVU445
	extui	a3, a3, 0, 8
	.loc 1 1290 1 view .LVU446
	extui	a4, a4, 0, 8
	.loc 1 1294 3 view .LVU447
	bgeui	a3, 7, .L112
	l32r	a6, .LC35
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx256160m,"a",@progbits
	.align	4
	.align	4
.L100:
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L112
	.word	.L102
	.word	.L101
	.word	.L99
	.section	.text.u8x8_d_st75256_jlx256160m
.L99:
	.loc 1 1298 15 is_stmt 1 view .LVU448
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL181:
	.loc 1 1299 15 view .LVU449
	.loc 1 1302 15 is_stmt 0 view .LVU450
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 1299 17 view .LVU451
	l8ui	a3, a5, 5
.LVL182:
	.loc 1 1300 15 is_stmt 1 view .LVU452
	.loc 1 1302 15 is_stmt 0 view .LVU453
	call8	u8x8_cad_SendCmd
.LVL183:
	.loc 1 1303 15 view .LVU454
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL184:
	.loc 1 1304 11 view .LVU455
	l8ui	a6, a2, 34
	.loc 1 1300 17 view .LVU456
	slli	a3, a3, 3
.LVL185:
	.loc 1 1300 17 view .LVU457
	extui	a3, a3, 0, 8
.LVL186:
	.loc 1 1302 15 is_stmt 1 view .LVU458
	.loc 1 1303 15 view .LVU459
	.loc 1 1304 8 view .LVU460
	.loc 1 1305 27 is_stmt 0 view .LVU461
	l8ui	a11, a5, 6
	.loc 1 1304 11 view .LVU462
	bnei	a6, 1, .L106
	.loc 1 1305 3 is_stmt 1 view .LVU463
	.loc 1 1305 27 is_stmt 0 view .LVU464
	addi.n	a11, a11, 1
	.loc 1 1305 3 view .LVU465
	extui	a11, a11, 0, 8
.L106:
	.loc 1 1307 3 is_stmt 1 view .LVU466
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL187:
	.loc 1 1308 15 view .LVU467
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL188:
	.loc 1 1310 15 view .LVU468
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL189:
	.loc 1 1311 15 view .LVU469
	.loc 1 1311 58 is_stmt 0 view .LVU470
	l32i.n	a6, a2, 0
	.loc 1 1311 15 view .LVU471
	mov.n	a10, a2
	.loc 1 1311 39 view .LVU472
	l8ui	a11, a6, 18
	.loc 1 1321 6 view .LVU473
	movi.n	a6, 0x1f
	.loc 1 1311 39 view .LVU474
	add.n	a11, a3, a11
	.loc 1 1311 15 view .LVU475
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL190:
	.loc 1 1312 15 is_stmt 1 view .LVU476
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL191:
	.loc 1 1313 15 view .LVU477
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL192:
.L109:
	.loc 1 1316 15 view .LVU478
	.loc 1 1318 17 view .LVU479
	.loc 1 1318 19 is_stmt 0 view .LVU480
	l8ui	a3, a5, 4
.LVL193:
	.loc 1 1319 17 is_stmt 1 view .LVU481
	.loc 1 1319 21 is_stmt 0 view .LVU482
	l32i.n	a7, a5, 0
.LVL194:
	.loc 1 1321 3 is_stmt 1 view .LVU483
	.loc 1 1321 6 is_stmt 0 view .LVU484
	bgeu	a6, a3, .L108
	.loc 1 1323 5 is_stmt 1 view .LVU485
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL195:
	.loc 1 1324 5 view .LVU486
	.loc 1 1324 8 is_stmt 0 view .LVU487
	movi	a8, 0xf8
	.loc 1 1325 7 view .LVU488
	addi	a3, a3, -31
.LVL196:
	.loc 1 1324 8 view .LVU489
	add.n	a7, a7, a8
.LVL197:
	.loc 1 1325 5 is_stmt 1 view .LVU490
	.loc 1 1325 7 is_stmt 0 view .LVU491
	extui	a3, a3, 0, 8
.LVL198:
.L108:
	.loc 1 1328 3 is_stmt 1 view .LVU492
	slli	a11, a3, 3
	.loc 1 1329 24 is_stmt 0 view .LVU493
	addi.n	a4, a4, -1
.LVL199:
	.loc 1 1328 3 view .LVU494
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 1329 24 view .LVU495
	extui	a4, a4, 0, 8
.LVL200:
	.loc 1 1328 3 view .LVU496
	call8	u8x8_cad_SendData
.LVL201:
	.loc 1 1329 17 is_stmt 1 view .LVU497
	.loc 1 1330 15 is_stmt 0 view .LVU498
	bnez.n	a4, .L109
	.loc 1 1332 15 is_stmt 1 view .LVU499
	j	.L115
.LVL202:
.L105:
	.loc 1 1336 6 view .LVU500
	l32r	a11, .LC36
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL203:
	.loc 1 1337 13 view .LVU501
	j	.L114
.L104:
	.loc 1 1339 6 view .LVU502
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL204:
	.loc 1 1340 6 view .LVU503
	l32r	a11, .LC37
	j	.L116
.L103:
	.loc 1 1343 15 view .LVU504
	.loc 1 1344 17 is_stmt 0 view .LVU505
	l32r	a11, .LC38
	.loc 1 1343 18 view .LVU506
	beqz.n	a4, .L116
.L110:
	.loc 1 1346 17 is_stmt 1 view .LVU507
	l32r	a11, .LC39
.L116:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL205:
	j	.L114
.L102:
	.loc 1 1350 6 view .LVU508
	.loc 1 1350 9 is_stmt 0 view .LVU509
	bnez.n	a4, .L111
	.loc 1 1352 8 is_stmt 1 view .LVU510
	l32r	a11, .LC40
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL206:
	.loc 1 1353 8 view .LVU511
	.loc 1 1353 43 is_stmt 0 view .LVU512
	l32i.n	a3, a2, 0
	.loc 1 1353 23 view .LVU513
	l8ui	a3, a3, 18
	j	.L117
.L111:
	.loc 1 1357 8 is_stmt 1 view .LVU514
	l32r	a11, .LC41
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL207:
	.loc 1 1358 8 view .LVU515
	.loc 1 1358 43 is_stmt 0 view .LVU516
	l32i.n	a3, a2, 0
	.loc 1 1358 23 view .LVU517
	l8ui	a3, a3, 19
.L117:
	.loc 1 1358 23 view .LVU518
	s8i	a3, a2, 34
	j	.L114
.L101:
	.loc 1 1365 15 is_stmt 1 view .LVU519
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL208:
	.loc 1 1367 15 view .LVU520
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL209:
	.loc 1 1368 15 view .LVU521
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL210:
	.loc 1 1369 15 view .LVU522
	.loc 1 1369 54 is_stmt 0 view .LVU523
	slli	a11, a4, 1
	.loc 1 1369 15 view .LVU524
	movi.n	a3, 0x3e
	and	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL211:
	.loc 1 1370 15 is_stmt 1 view .LVU525
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL212:
.L115:
	.loc 1 1372 15 view .LVU526
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL213:
.L114:
	.loc 1 1373 15 view .LVU527
	.loc 1 1373 22 is_stmt 0 view .LVU528
	movi.n	a2, 1
.LVL214:
	.loc 1 1373 22 view .LVU529
	j	.L98
.LVL215:
.L112:
	.loc 1 1376 10 view .LVU530
	movi.n	a2, 0
.LVL216:
.L98:
	.loc 1 1377 1 view .LVU531
	retw.n
.LFE7:
	.size	u8x8_d_st75256_jlx256160m, .-u8x8_d_st75256_jlx256160m
	.section	.text.u8x8_d_st75256_jlx256160_alt,"ax",@progbits
	.literal_position
	.literal .LC42, .L121
	.literal .LC43, u8x8_st75256_256x160_alt_display_info
	.literal .LC44, u8x8_d_st75256_256x160_alt_init_seq
	.literal .LC45, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC46, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC47, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC48, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256160_alt
	.type	u8x8_d_st75256_jlx256160_alt, @function
u8x8_d_st75256_jlx256160_alt:
.LVL217:
.LFB8:
	.loc 1 1483 1 is_stmt 1 view -0
	.loc 1 1483 1 is_stmt 0 view .LVU533
	entry	sp, 32
.LCFI8:
	.loc 1 1484 3 is_stmt 1 view .LVU534
	.loc 1 1485 3 view .LVU535
	.loc 1 1487 3 view .LVU536
	addi	a3, a3, -9
.LVL218:
	.loc 1 1487 3 is_stmt 0 view .LVU537
	extui	a3, a3, 0, 8
	.loc 1 1483 1 view .LVU538
	extui	a4, a4, 0, 8
	.loc 1 1487 3 view .LVU539
	bgeui	a3, 7, .L133
	l32r	a6, .LC42
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx256160_alt,"a",@progbits
	.align	4
	.align	4
.L121:
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L133
	.word	.L123
	.word	.L122
	.word	.L120
	.section	.text.u8x8_d_st75256_jlx256160_alt
.L120:
	.loc 1 1491 15 is_stmt 1 view .LVU540
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL219:
	.loc 1 1492 15 view .LVU541
	.loc 1 1495 15 is_stmt 0 view .LVU542
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 1492 17 view .LVU543
	l8ui	a3, a5, 5
.LVL220:
	.loc 1 1493 15 is_stmt 1 view .LVU544
	.loc 1 1495 15 is_stmt 0 view .LVU545
	call8	u8x8_cad_SendCmd
.LVL221:
	.loc 1 1496 15 view .LVU546
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL222:
	.loc 1 1497 11 view .LVU547
	l8ui	a6, a2, 34
	.loc 1 1493 17 view .LVU548
	slli	a3, a3, 3
.LVL223:
	.loc 1 1493 17 view .LVU549
	extui	a3, a3, 0, 8
.LVL224:
	.loc 1 1495 15 is_stmt 1 view .LVU550
	.loc 1 1496 15 view .LVU551
	.loc 1 1497 8 view .LVU552
	.loc 1 1498 27 is_stmt 0 view .LVU553
	l8ui	a11, a5, 6
	.loc 1 1497 11 view .LVU554
	bnez.n	a6, .L127
	.loc 1 1498 3 is_stmt 1 view .LVU555
	.loc 1 1498 27 is_stmt 0 view .LVU556
	addi.n	a11, a11, 1
	.loc 1 1498 3 view .LVU557
	extui	a11, a11, 0, 8
.L127:
	.loc 1 1500 3 is_stmt 1 view .LVU558
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL225:
	.loc 1 1501 15 view .LVU559
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL226:
	.loc 1 1503 15 view .LVU560
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL227:
	.loc 1 1504 15 view .LVU561
	.loc 1 1504 39 is_stmt 0 view .LVU562
	l8ui	a11, a2, 34
	.loc 1 1504 15 view .LVU563
	mov.n	a10, a2
	.loc 1 1504 39 view .LVU564
	add.n	a11, a3, a11
	.loc 1 1504 15 view .LVU565
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL228:
	.loc 1 1505 15 is_stmt 1 view .LVU566
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL229:
	.loc 1 1506 15 view .LVU567
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL230:
	.loc 1 1514 6 is_stmt 0 view .LVU568
	movi.n	a6, 0x1f
.LVL231:
.L130:
	.loc 1 1509 15 is_stmt 1 view .LVU569
	.loc 1 1511 17 view .LVU570
	.loc 1 1511 19 is_stmt 0 view .LVU571
	l8ui	a3, a5, 4
.LVL232:
	.loc 1 1512 17 is_stmt 1 view .LVU572
	.loc 1 1512 21 is_stmt 0 view .LVU573
	l32i.n	a7, a5, 0
.LVL233:
	.loc 1 1514 3 is_stmt 1 view .LVU574
	.loc 1 1514 6 is_stmt 0 view .LVU575
	bgeu	a6, a3, .L129
	.loc 1 1516 5 is_stmt 1 view .LVU576
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL234:
	.loc 1 1517 5 view .LVU577
	.loc 1 1517 8 is_stmt 0 view .LVU578
	movi	a8, 0xf8
	.loc 1 1518 7 view .LVU579
	addi	a3, a3, -31
.LVL235:
	.loc 1 1517 8 view .LVU580
	add.n	a7, a7, a8
.LVL236:
	.loc 1 1518 5 is_stmt 1 view .LVU581
	.loc 1 1518 7 is_stmt 0 view .LVU582
	extui	a3, a3, 0, 8
.LVL237:
.L129:
	.loc 1 1521 3 is_stmt 1 view .LVU583
	slli	a11, a3, 3
	.loc 1 1522 24 is_stmt 0 view .LVU584
	addi.n	a4, a4, -1
.LVL238:
	.loc 1 1521 3 view .LVU585
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 1522 24 view .LVU586
	extui	a4, a4, 0, 8
.LVL239:
	.loc 1 1521 3 view .LVU587
	call8	u8x8_cad_SendData
.LVL240:
	.loc 1 1522 17 is_stmt 1 view .LVU588
	.loc 1 1523 15 is_stmt 0 view .LVU589
	bnez.n	a4, .L130
	.loc 1 1525 15 is_stmt 1 view .LVU590
	j	.L136
.LVL241:
.L126:
	.loc 1 1529 6 view .LVU591
	l32r	a11, .LC43
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL242:
	.loc 1 1530 13 view .LVU592
	j	.L135
.L125:
	.loc 1 1532 6 view .LVU593
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL243:
	.loc 1 1533 6 view .LVU594
	l32r	a11, .LC44
	j	.L137
.L124:
	.loc 1 1536 15 view .LVU595
	.loc 1 1537 17 is_stmt 0 view .LVU596
	l32r	a11, .LC45
	.loc 1 1536 18 view .LVU597
	beqz.n	a4, .L137
.L131:
	.loc 1 1539 17 is_stmt 1 view .LVU598
	l32r	a11, .LC46
.L137:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL244:
	j	.L135
.L123:
	.loc 1 1543 6 view .LVU599
	.loc 1 1543 9 is_stmt 0 view .LVU600
	bnez.n	a4, .L132
	.loc 1 1545 8 is_stmt 1 view .LVU601
	l32r	a11, .LC47
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL245:
	.loc 1 1546 8 view .LVU602
	.loc 1 1546 43 is_stmt 0 view .LVU603
	l32i.n	a3, a2, 0
	.loc 1 1546 23 view .LVU604
	l8ui	a3, a3, 18
	j	.L138
.L132:
	.loc 1 1550 8 is_stmt 1 view .LVU605
	l32r	a11, .LC48
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL246:
	.loc 1 1551 8 view .LVU606
	.loc 1 1551 43 is_stmt 0 view .LVU607
	l32i.n	a3, a2, 0
	.loc 1 1551 23 view .LVU608
	l8ui	a3, a3, 19
.L138:
	.loc 1 1551 23 view .LVU609
	s8i	a3, a2, 34
	j	.L135
.L122:
	.loc 1 1558 15 is_stmt 1 view .LVU610
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL247:
	.loc 1 1560 15 view .LVU611
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL248:
	.loc 1 1561 15 view .LVU612
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL249:
	.loc 1 1562 15 view .LVU613
	.loc 1 1562 54 is_stmt 0 view .LVU614
	slli	a11, a4, 1
	.loc 1 1562 15 view .LVU615
	movi.n	a3, 0x3e
	and	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL250:
	.loc 1 1563 15 is_stmt 1 view .LVU616
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL251:
.L136:
	.loc 1 1565 15 view .LVU617
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL252:
.L135:
	.loc 1 1566 15 view .LVU618
	.loc 1 1566 22 is_stmt 0 view .LVU619
	movi.n	a2, 1
.LVL253:
	.loc 1 1566 22 view .LVU620
	j	.L119
.LVL254:
.L133:
	.loc 1 1569 10 view .LVU621
	movi.n	a2, 0
.LVL255:
.L119:
	.loc 1 1571 1 view .LVU622
	retw.n
.LFE8:
	.size	u8x8_d_st75256_jlx256160_alt, .-u8x8_d_st75256_jlx256160_alt
	.section	.text.u8x8_d_st75256_jlx19296,"ax",@progbits
	.literal_position
	.literal .LC49, .L142
	.literal .LC50, u8x8_st75256_192x96_display_info
	.literal .LC51, u8x8_d_st75256_jlx19296_init_seq
	.literal .LC52, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC53, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC54, u8x8_d_st75256_jlx256160_flip0_seq
	.literal .LC55, u8x8_d_st75256_jlx256160_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx19296
	.type	u8x8_d_st75256_jlx19296, @function
u8x8_d_st75256_jlx19296:
.LVL256:
.LFB9:
	.loc 1 1674 1 is_stmt 1 view -0
	.loc 1 1674 1 is_stmt 0 view .LVU624
	entry	sp, 32
.LCFI9:
	.loc 1 1675 3 is_stmt 1 view .LVU625
	.loc 1 1676 3 view .LVU626
	.loc 1 1678 3 view .LVU627
	addi	a3, a3, -9
.LVL257:
	.loc 1 1678 3 is_stmt 0 view .LVU628
	extui	a3, a3, 0, 8
	.loc 1 1674 1 view .LVU629
	extui	a4, a4, 0, 8
	.loc 1 1678 3 view .LVU630
	bgeui	a3, 7, .L154
	l32r	a6, .LC49
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx19296,"a",@progbits
	.align	4
	.align	4
.L142:
	.word	.L147
	.word	.L146
	.word	.L145
	.word	.L154
	.word	.L144
	.word	.L143
	.word	.L141
	.section	.text.u8x8_d_st75256_jlx19296
.L141:
	.loc 1 1682 15 is_stmt 1 view .LVU631
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL258:
	.loc 1 1683 15 view .LVU632
	.loc 1 1686 15 is_stmt 0 view .LVU633
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 1683 17 view .LVU634
	l8ui	a6, a5, 5
.LVL259:
	.loc 1 1684 15 is_stmt 1 view .LVU635
	.loc 1 1686 15 is_stmt 0 view .LVU636
	call8	u8x8_cad_SendCmd
.LVL260:
	.loc 1 1687 15 view .LVU637
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL261:
	.loc 1 1688 11 view .LVU638
	l8ui	a3, a2, 34
	.loc 1 1684 17 view .LVU639
	slli	a6, a6, 3
.LVL262:
	.loc 1 1684 17 view .LVU640
	extui	a6, a6, 0, 8
.LVL263:
	.loc 1 1686 15 is_stmt 1 view .LVU641
	.loc 1 1687 15 view .LVU642
	.loc 1 1688 8 view .LVU643
	l8ui	a11, a5, 6
	.loc 1 1688 11 is_stmt 0 view .LVU644
	bnez.n	a3, .L148
	.loc 1 1689 3 is_stmt 1 view .LVU645
	.loc 1 1689 27 is_stmt 0 view .LVU646
	addi.n	a11, a11, 8
	j	.L156
.L148:
	.loc 1 1691 3 is_stmt 1 view .LVU647
	.loc 1 1691 27 is_stmt 0 view .LVU648
	addi.n	a11, a11, 1
.L156:
	.loc 1 1691 3 view .LVU649
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL264:
	.loc 1 1692 15 is_stmt 1 view .LVU650
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL265:
	.loc 1 1694 15 view .LVU651
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL266:
	.loc 1 1695 15 view .LVU652
	.loc 1 1695 39 is_stmt 0 view .LVU653
	l8ui	a11, a2, 34
	.loc 1 1695 15 view .LVU654
	mov.n	a10, a2
	.loc 1 1695 39 view .LVU655
	add.n	a11, a6, a11
	.loc 1 1695 15 view .LVU656
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL267:
	.loc 1 1696 15 is_stmt 1 view .LVU657
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL268:
	.loc 1 1697 15 view .LVU658
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL269:
	.loc 1 1706 20 is_stmt 0 view .LVU659
	movi	a7, 0xc0
.LVL270:
.L151:
	.loc 1 1700 15 is_stmt 1 view .LVU660
	.loc 1 1702 17 view .LVU661
	.loc 1 1702 19 is_stmt 0 view .LVU662
	l8ui	a3, a5, 4
.LVL271:
	.loc 1 1703 17 is_stmt 1 view .LVU663
	.loc 1 1703 21 is_stmt 0 view .LVU664
	l32i.n	a12, a5, 0
.LVL272:
	.loc 1 1704 17 is_stmt 1 view .LVU665
	.loc 1 1704 19 is_stmt 0 view .LVU666
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL273:
	.loc 1 1706 17 is_stmt 1 view .LVU667
	.loc 1 1706 24 is_stmt 0 view .LVU668
	add.n	a8, a3, a6
	.loc 1 1706 20 view .LVU669
	bge	a7, a8, .L150
	.loc 1 1708 25 is_stmt 1 view .LVU670
.LVL274:
	.loc 1 1709 25 view .LVU671
	.loc 1 1709 27 is_stmt 0 view .LVU672
	movi	a3, -0x40
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL275:
.L150:
	.loc 1 1712 17 is_stmt 1 view .LVU673
	.loc 1 1714 24 is_stmt 0 view .LVU674
	addi.n	a4, a4, -1
.LVL276:
	.loc 1 1712 17 view .LVU675
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 1713 19 view .LVU676
	add.n	a6, a6, a3
.LVL277:
	.loc 1 1714 24 view .LVU677
	extui	a4, a4, 0, 8
.LVL278:
	.loc 1 1712 17 view .LVU678
	call8	u8x8_cad_SendData
.LVL279:
	.loc 1 1713 17 is_stmt 1 view .LVU679
	.loc 1 1713 19 is_stmt 0 view .LVU680
	extui	a6, a6, 0, 8
.LVL280:
	.loc 1 1714 17 is_stmt 1 view .LVU681
	.loc 1 1715 15 is_stmt 0 view .LVU682
	bnez.n	a4, .L151
	.loc 1 1717 15 is_stmt 1 view .LVU683
	j	.L158
.LVL281:
.L147:
	.loc 1 1721 13 view .LVU684
	l32r	a11, .LC50
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL282:
	.loc 1 1722 13 view .LVU685
	j	.L157
.L146:
	.loc 1 1724 13 view .LVU686
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL283:
	.loc 1 1725 13 view .LVU687
	l32r	a11, .LC51
	j	.L159
.L145:
	.loc 1 1728 15 view .LVU688
	.loc 1 1729 17 is_stmt 0 view .LVU689
	l32r	a11, .LC52
	.loc 1 1728 18 view .LVU690
	beqz.n	a4, .L159
.L152:
	.loc 1 1731 17 is_stmt 1 view .LVU691
	l32r	a11, .LC53
.L159:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL284:
	j	.L157
.L144:
	.loc 1 1735 6 view .LVU692
	.loc 1 1735 9 is_stmt 0 view .LVU693
	bnez.n	a4, .L153
	.loc 1 1737 8 is_stmt 1 view .LVU694
	l32r	a11, .LC54
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL285:
	.loc 1 1738 8 view .LVU695
	.loc 1 1738 43 is_stmt 0 view .LVU696
	l32i.n	a3, a2, 0
	.loc 1 1738 23 view .LVU697
	l8ui	a3, a3, 18
	j	.L160
.L153:
	.loc 1 1742 8 is_stmt 1 view .LVU698
	l32r	a11, .LC55
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL286:
	.loc 1 1743 8 view .LVU699
	.loc 1 1743 43 is_stmt 0 view .LVU700
	l32i.n	a3, a2, 0
	.loc 1 1743 23 view .LVU701
	l8ui	a3, a3, 19
.L160:
	.loc 1 1743 23 view .LVU702
	s8i	a3, a2, 34
	j	.L157
.L143:
	.loc 1 1763 15 is_stmt 1 view .LVU703
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL287:
	.loc 1 1765 15 view .LVU704
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL288:
	.loc 1 1766 15 view .LVU705
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL289:
	.loc 1 1767 15 view .LVU706
	.loc 1 1767 54 is_stmt 0 view .LVU707
	slli	a11, a4, 1
	.loc 1 1767 15 view .LVU708
	movi.n	a3, 0x3e
	and	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL290:
	.loc 1 1768 15 is_stmt 1 view .LVU709
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL291:
.L158:
	.loc 1 1770 15 view .LVU710
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL292:
.L157:
	.loc 1 1771 15 view .LVU711
	.loc 1 1771 22 is_stmt 0 view .LVU712
	movi.n	a2, 1
.LVL293:
	.loc 1 1771 22 view .LVU713
	j	.L140
.LVL294:
.L154:
	.loc 1 1774 10 view .LVU714
	movi.n	a2, 0
.LVL295:
.L140:
	.loc 1 1775 1 view .LVU715
	retw.n
.LFE9:
	.size	u8x8_d_st75256_jlx19296, .-u8x8_d_st75256_jlx19296
	.section	.rodata.u8x8_d_st75256_jlx19296_init_seq,"a"
	.type	u8x8_d_st75256_jlx19296_init_seq, @object
	.size	u8x8_d_st75256_jlx19296_init_seq, 105
u8x8_d_st75256_jlx19296_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	46
	.byte	22
	.byte	3
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_192x96_display_info,"a"
	.align	4
	.type	u8x8_st75256_192x96_display_info, @object
	.size	u8x8_st75256_192x96_display_info, 24
u8x8_st75256_192x96_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	24
	.byte	12
	.byte	0
	.byte	64
	.short	192
	.short	96
	.section	.rodata.u8x8_d_st75256_256x160_alt_init_seq,"a"
	.type	u8x8_d_st75256_256x160_alt_init_seq, @object
	.size	u8x8_d_st75256_256x160_alt_init_seq, 105
u8x8_d_st75256_256x160_alt_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x160_alt_display_info,"a"
	.align	4
	.type	u8x8_st75256_256x160_alt_display_info, @object
	.size	u8x8_st75256_256x160_alt_display_info, 24
u8x8_st75256_256x160_alt_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	20
	.byte	0
	.byte	0
	.short	256
	.short	160
	.section	.rodata.u8x8_d_st75256_256x160m_init_seq,"a"
	.type	u8x8_d_st75256_256x160m_init_seq, @object
	.size	u8x8_d_st75256_256x160m_init_seq, 105
u8x8_d_st75256_256x160m_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	40
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_256x160_init_seq,"a"
	.type	u8x8_d_st75256_256x160_init_seq, @object
	.size	u8x8_d_st75256_256x160_init_seq, 105
u8x8_d_st75256_256x160_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	40
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x160_display_info,"a"
	.align	4
	.type	u8x8_st75256_256x160_display_info, @object
	.size	u8x8_st75256_256x160_display_info, 24
u8x8_st75256_256x160_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	20
	.byte	0
	.byte	1
	.short	256
	.short	160
	.section	.rodata.u8x8_d_st75256_240x160_init_seq,"a"
	.type	u8x8_d_st75256_240x160_init_seq, @object
	.size	u8x8_d_st75256_240x160_init_seq, 105
u8x8_d_st75256_240x160_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-17
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_240x160_display_info,"a"
	.align	4
	.type	u8x8_st75256_240x160_display_info, @object
	.size	u8x8_st75256_240x160_display_info, 24
u8x8_st75256_240x160_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	30
	.byte	20
	.byte	16
	.byte	0
	.short	240
	.short	160
	.section	.rodata.u8x8_d_st75256_jlx172104_init_seq,"a"
	.type	u8x8_d_st75256_jlx172104_init_seq, @object
	.size	u8x8_d_st75256_jlx172104_init_seq, 105
u8x8_d_st75256_jlx172104_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	8
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_172x104_display_info,"a"
	.align	4
	.type	u8x8_st75256_172x104_display_info, @object
	.size	u8x8_st75256_172x104_display_info, 24
u8x8_st75256_172x104_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	22
	.byte	13
	.byte	84
	.byte	0
	.short	172
	.short	104
	.section	.rodata.u8x8_d_st75256_256x64_init_seq,"a"
	.type	u8x8_d_st75256_256x64_init_seq, @object
	.size	u8x8_d_st75256_256x64_init_seq, 105
u8x8_d_st75256_256x64_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	31
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	63
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	10
	.byte	22
	.byte	2
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x64_display_info,"a"
	.align	4
	.type	u8x8_st75256_256x64_display_info, @object
	.size	u8x8_st75256_256x64_display_info, 24
u8x8_st75256_256x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	8
	.byte	0
	.byte	13
	.short	256
	.short	64
	.section	.rodata.u8x8_d_st75256_wo256x128_init_seq,"a"
	.type	u8x8_d_st75256_wo256x128_init_seq, @object
	.size	u8x8_d_st75256_wo256x128_init_seq, 105
u8x8_d_st75256_wo256x128_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	1
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	54
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_wo256x128_display_info,"a"
	.align	4
	.type	u8x8_st75256_wo256x128_display_info, @object
	.size	u8x8_st75256_wo256x128_display_info, 24
u8x8_st75256_wo256x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	16
	.byte	5
	.byte	0
	.short	256
	.short	128
	.section	.rodata.u8x8_d_st75256_256x128_init_seq,"a"
	.type	u8x8_d_st75256_256x128_init_seq, @object
	.size	u8x8_d_st75256_256x128_init_seq, 105
u8x8_d_st75256_256x128_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	54
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x128_display_info,"a"
	.align	4
	.type	u8x8_st75256_256x128_display_info, @object
	.size	u8x8_st75256_256x128_display_info, 24
u8x8_st75256_256x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	16
	.byte	0
	.byte	5
	.short	256
	.short	128
	.section	.rodata.u8x8_d_st75256_jlx256160_flip1_seq,"a"
	.type	u8x8_d_st75256_jlx256160_flip1_seq, @object
	.size	u8x8_d_st75256_jlx256160_flip1_seq, 13
u8x8_d_st75256_jlx256160_flip1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	3
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx256160_flip0_seq,"a"
	.type	u8x8_d_st75256_jlx256160_flip0_seq, @object
	.size	u8x8_d_st75256_jlx256160_flip0_seq, 13
u8x8_d_st75256_jlx256160_flip0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx172104_flip1_seq,"a"
	.type	u8x8_d_st75256_jlx172104_flip1_seq, @object
	.size	u8x8_d_st75256_jlx172104_flip1_seq, 13
u8x8_d_st75256_jlx172104_flip1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	1
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx172104_flip0_seq,"a"
	.type	u8x8_d_st75256_jlx172104_flip0_seq, @object
	.size	u8x8_d_st75256_jlx172104_flip0_seq, 13
u8x8_d_st75256_jlx172104_flip0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx256128_flip1_seq,"a"
	.type	u8x8_d_st75256_jlx256128_flip1_seq, @object
	.size	u8x8_d_st75256_jlx256128_flip1_seq, 13
u8x8_d_st75256_jlx256128_flip1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	3
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx256128_flip0_seq,"a"
	.type	u8x8_d_st75256_jlx256128_flip0_seq, @object
	.size	u8x8_d_st75256_jlx256128_flip0_seq, 13
u8x8_d_st75256_jlx256128_flip0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_256x128_powersave1_seq,"a"
	.type	u8x8_d_st75256_256x128_powersave1_seq, @object
	.size	u8x8_d_st75256_256x128_powersave1_seq, 9
u8x8_d_st75256_256x128_powersave1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-82
	.byte	21
	.byte	-107
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_256x128_powersave0_seq,"a"
	.type	u8x8_d_st75256_256x128_powersave0_seq, @object
	.size	u8x8_d_st75256_256x128_powersave0_seq, 11
u8x8_d_st75256_256x128_powersave0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	-2
	.byte	10
	.byte	21
	.byte	-81
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
	.uleb128 0x20
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x22fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF238
	.byte	0xc
	.4byte	.LASF239
	.4byte	.LASF240
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
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	0xa63
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x1
	.byte	0x41
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x128_powersave0_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xa9a
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0xa8a
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x4b
	.byte	0x16
	.4byte	0xa9a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x128_powersave1_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xac1
	.uleb128 0x12
	.4byte	0x6c
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0xab1
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x54
	.byte	0x16
	.4byte	0xac1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip0_seq
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x60
	.byte	0x16
	.4byte	0xac1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip1_seq
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0x6c
	.byte	0x16
	.4byte	0xac1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0x78
	.byte	0x16
	.4byte	0xac1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.byte	0x84
	.byte	0x16
	.4byte	0xac1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip0_seq
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x1
	.byte	0x90
	.byte	0x16
	.4byte	0xac1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip1_seq
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x1
	.byte	0xed
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x128_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb54
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x68
	.byte	0
	.uleb128 0x5
	.4byte	0xb44
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x106
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x128_init_seq
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x174
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_wo256x128_display_info
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x18d
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_wo256x128_init_seq
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1fa
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x64_display_info
	.uleb128 0x14
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x213
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x64_init_seq
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x280
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_172x104_display_info
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x298
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_init_seq
	.uleb128 0x14
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x33f
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_240x160_display_info
	.uleb128 0x14
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x358
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_240x160_init_seq
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x402
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x160_display_info
	.uleb128 0x14
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x41b
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x160_init_seq
	.uleb128 0x14
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x4c2
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x160m_init_seq
	.uleb128 0x14
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x569
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x160_alt_display_info
	.uleb128 0x14
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x582
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x160_alt_init_seq
	.uleb128 0x14
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x629
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_192x96_display_info
	.uleb128 0x14
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x641
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx19296_init_seq
	.uleb128 0x15
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x689
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf31
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x689
	.byte	0x29
	.4byte	0x36e
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x689
	.byte	0x37
	.4byte	0x81
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x689
	.byte	0x44
	.4byte	0x81
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x689
	.byte	0x53
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.2byte	0x68b
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.2byte	0x68b
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.2byte	0x68c
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x1a
	.4byte	.LVL258
	.4byte	0x2295
	.4byte	0xd41
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL260
	.4byte	0x22a2
	.4byte	0xd5b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL261
	.4byte	0x22a2
	.4byte	0xd75
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL264
	.4byte	0x22af
	.4byte	0xd89
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL265
	.4byte	0x22af
	.4byte	0xda3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL266
	.4byte	0x22a2
	.4byte	0xdbc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL267
	.4byte	0x22af
	.4byte	0xdd0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL268
	.4byte	0x22af
	.4byte	0xdea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL269
	.4byte	0x22a2
	.4byte	0xe04
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL279
	.4byte	0x22bc
	.4byte	0xe1e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL282
	.4byte	0x22c9
	.4byte	0xe3b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_192x96_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL283
	.4byte	0x22d6
	.4byte	0xe4f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL284
	.4byte	0x22e3
	.4byte	0xe63
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL285
	.4byte	0x22e3
	.4byte	0xe80
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip0_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL286
	.4byte	0x22e3
	.4byte	0xe9d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip1_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL287
	.4byte	0x2295
	.4byte	0xeb1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL288
	.4byte	0x22a2
	.4byte	0xecb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL289
	.4byte	0x22a2
	.4byte	0xee5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL290
	.4byte	0x22af
	.4byte	0xf04
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL291
	.4byte	0x22af
	.4byte	0xf20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL292
	.4byte	0x22f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x5ca
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1204
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x5ca
	.byte	0x2e
	.4byte	0x36e
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x5ca
	.byte	0x3c
	.4byte	0x81
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x5ca
	.byte	0x49
	.4byte	0x81
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x5ca
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.2byte	0x5cc
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.2byte	0x5cc
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.2byte	0x5cd
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x1a
	.4byte	.LVL219
	.4byte	0x2295
	.4byte	0xfe9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL221
	.4byte	0x22a2
	.4byte	0x1003
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL222
	.4byte	0x22a2
	.4byte	0x101d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL225
	.4byte	0x22af
	.4byte	0x1031
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL226
	.4byte	0x22af
	.4byte	0x104b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL227
	.4byte	0x22a2
	.4byte	0x1064
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL228
	.4byte	0x22af
	.4byte	0x1078
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL229
	.4byte	0x22af
	.4byte	0x1092
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL230
	.4byte	0x22a2
	.4byte	0x10ac
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL234
	.4byte	0x22bc
	.4byte	0x10cc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL240
	.4byte	0x22bc
	.4byte	0x10f1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL242
	.4byte	0x22c9
	.4byte	0x110e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x160_alt_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL243
	.4byte	0x22d6
	.4byte	0x1122
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL244
	.4byte	0x22e3
	.4byte	0x1136
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL245
	.4byte	0x22e3
	.4byte	0x1153
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL246
	.4byte	0x22e3
	.4byte	0x1170
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL247
	.4byte	0x2295
	.4byte	0x1184
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL248
	.4byte	0x22a2
	.4byte	0x119e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL249
	.4byte	0x22a2
	.4byte	0x11b8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL250
	.4byte	0x22af
	.4byte	0x11d7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL251
	.4byte	0x22af
	.4byte	0x11f3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL252
	.4byte	0x22f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x509
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d7
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x509
	.byte	0x2b
	.4byte	0x36e
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x509
	.byte	0x39
	.4byte	0x81
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x509
	.byte	0x46
	.4byte	0x81
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x509
	.byte	0x55
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.2byte	0x50b
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.2byte	0x50b
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.2byte	0x50c
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x1a
	.4byte	.LVL181
	.4byte	0x2295
	.4byte	0x12bc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL183
	.4byte	0x22a2
	.4byte	0x12d6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL184
	.4byte	0x22a2
	.4byte	0x12f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL187
	.4byte	0x22af
	.4byte	0x1304
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL188
	.4byte	0x22af
	.4byte	0x131e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL189
	.4byte	0x22a2
	.4byte	0x1337
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL190
	.4byte	0x22af
	.4byte	0x134b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL191
	.4byte	0x22af
	.4byte	0x1365
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL192
	.4byte	0x22a2
	.4byte	0x137f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL195
	.4byte	0x22bc
	.4byte	0x139f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL201
	.4byte	0x22bc
	.4byte	0x13c4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL203
	.4byte	0x22c9
	.4byte	0x13e1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x160_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL204
	.4byte	0x22d6
	.4byte	0x13f5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL205
	.4byte	0x22e3
	.4byte	0x1409
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL206
	.4byte	0x22e3
	.4byte	0x1426
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL207
	.4byte	0x22e3
	.4byte	0x1443
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL208
	.4byte	0x2295
	.4byte	0x1457
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL209
	.4byte	0x22a2
	.4byte	0x1471
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL210
	.4byte	0x22a2
	.4byte	0x148b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL211
	.4byte	0x22af
	.4byte	0x14aa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL212
	.4byte	0x22af
	.4byte	0x14c6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL213
	.4byte	0x22f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x463
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17aa
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x463
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x463
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x463
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x463
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.2byte	0x465
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.2byte	0x465
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.2byte	0x466
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x1a
	.4byte	.LVL143
	.4byte	0x2295
	.4byte	0x158f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL145
	.4byte	0x22a2
	.4byte	0x15a9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL146
	.4byte	0x22a2
	.4byte	0x15c3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL149
	.4byte	0x22af
	.4byte	0x15d7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL150
	.4byte	0x22af
	.4byte	0x15f1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL151
	.4byte	0x22a2
	.4byte	0x160a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL152
	.4byte	0x22af
	.4byte	0x161e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL153
	.4byte	0x22af
	.4byte	0x1638
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL154
	.4byte	0x22a2
	.4byte	0x1652
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL157
	.4byte	0x22bc
	.4byte	0x1672
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL163
	.4byte	0x22bc
	.4byte	0x1697
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL165
	.4byte	0x22c9
	.4byte	0x16b4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x160_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL166
	.4byte	0x22d6
	.4byte	0x16c8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL167
	.4byte	0x22e3
	.4byte	0x16dc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL168
	.4byte	0x22e3
	.4byte	0x16f9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip0_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL169
	.4byte	0x22e3
	.4byte	0x1716
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip1_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL170
	.4byte	0x2295
	.4byte	0x172a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL171
	.4byte	0x22a2
	.4byte	0x1744
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL172
	.4byte	0x22a2
	.4byte	0x175e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL173
	.4byte	0x22af
	.4byte	0x177d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL174
	.4byte	0x22af
	.4byte	0x1799
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL175
	.4byte	0x22f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x3a0
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a52
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x3a0
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x3a0
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x3a0
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x3a0
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.2byte	0x3a2
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.2byte	0x3a2
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.2byte	0x3a3
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x1a
	.4byte	.LVL103
	.4byte	0x2295
	.4byte	0x1862
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL105
	.4byte	0x22a2
	.4byte	0x187c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL106
	.4byte	0x22a2
	.4byte	0x1896
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL109
	.4byte	0x22af
	.4byte	0x18aa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL110
	.4byte	0x22af
	.4byte	0x18c4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL111
	.4byte	0x22a2
	.4byte	0x18dd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL112
	.4byte	0x22af
	.4byte	0x18f1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL113
	.4byte	0x22af
	.4byte	0x190b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL114
	.4byte	0x22a2
	.4byte	0x1925
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL124
	.4byte	0x22bc
	.4byte	0x193f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL127
	.4byte	0x22c9
	.4byte	0x195c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_240x160_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL128
	.4byte	0x22d6
	.4byte	0x1970
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL129
	.4byte	0x22e3
	.4byte	0x1984
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL130
	.4byte	0x22e3
	.4byte	0x19a1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL131
	.4byte	0x22e3
	.4byte	0x19be
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL132
	.4byte	0x2295
	.4byte	0x19d2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL133
	.4byte	0x22a2
	.4byte	0x19ec
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL134
	.4byte	0x22a2
	.4byte	0x1a06
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL135
	.4byte	0x22af
	.4byte	0x1a25
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL136
	.4byte	0x22af
	.4byte	0x1a41
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL137
	.4byte	0x22f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x2e0
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cfa
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x2e0
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x2e0
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x2e0
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x2e0
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.2byte	0x2e2
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.2byte	0x2e2
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.2byte	0x2e3
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1a
	.4byte	.LVL63
	.4byte	0x2295
	.4byte	0x1b0a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL65
	.4byte	0x22a2
	.4byte	0x1b24
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL66
	.4byte	0x22a2
	.4byte	0x1b3e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL69
	.4byte	0x22af
	.4byte	0x1b52
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL70
	.4byte	0x22af
	.4byte	0x1b6c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL71
	.4byte	0x22a2
	.4byte	0x1b85
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x22af
	.4byte	0x1b99
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL73
	.4byte	0x22af
	.4byte	0x1bb3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0x22a2
	.4byte	0x1bcd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL84
	.4byte	0x22bc
	.4byte	0x1be7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL87
	.4byte	0x22c9
	.4byte	0x1c04
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_172x104_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL88
	.4byte	0x22d6
	.4byte	0x1c18
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL89
	.4byte	0x22e3
	.4byte	0x1c2c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL90
	.4byte	0x22e3
	.4byte	0x1c49
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL91
	.4byte	0x22e3
	.4byte	0x1c66
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL92
	.4byte	0x2295
	.4byte	0x1c7a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL93
	.4byte	0x22a2
	.4byte	0x1c94
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL94
	.4byte	0x22a2
	.4byte	0x1cae
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL95
	.4byte	0x22af
	.4byte	0x1ccd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL96
	.4byte	0x22af
	.4byte	0x1ce9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL97
	.4byte	0x22f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x25b
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e08
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x25b
	.byte	0x29
	.4byte	0x36e
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x25b
	.byte	0x37
	.4byte	0x81
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x25b
	.byte	0x44
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x25b
	.byte	0x53
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0x2024
	.4byte	0x1d83
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL54
	.4byte	0x22c9
	.4byte	0x1da0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x64_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0x22d6
	.4byte	0x1db4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0x22e3
	.4byte	0x1dd1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x64_init_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL57
	.4byte	0x22e3
	.4byte	0x1dee
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip0_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL59
	.4byte	0x22e3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x1d5
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f16
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1d5
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1d5
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x1d5
	.byte	0x45
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1d5
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LVL44
	.4byte	0x2024
	.4byte	0x1e91
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL45
	.4byte	0x22c9
	.4byte	0x1eae
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_wo256x128_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL46
	.4byte	0x22d6
	.4byte	0x1ec2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL47
	.4byte	0x22e3
	.4byte	0x1edf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_wo256x128_init_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0x22e3
	.4byte	0x1efc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL50
	.4byte	0x22e3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x14e
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2024
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x14e
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x14e
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x14e
	.byte	0x45
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x14e
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x2024
	.4byte	0x1f9f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL36
	.4byte	0x22c9
	.4byte	0x1fbc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x128_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0x22d6
	.4byte	0x1fd0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL38
	.4byte	0x22e3
	.4byte	0x1fed
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x128_init_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x22e3
	.4byte	0x200a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip0_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL41
	.4byte	0x22e3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF241
	.byte	0x1
	.byte	0x9d
	.byte	0x10
	.4byte	0x81
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2295
	.uleb128 0x1e
	.4byte	.LASF218
	.byte	0x1
	.byte	0x9d
	.byte	0x37
	.4byte	0x36e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0x9d
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1e
	.4byte	.LASF219
	.byte	0x1
	.byte	0x9d
	.byte	0x52
	.4byte	0x81
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1e
	.4byte	.LASF222
	.byte	0x1
	.byte	0x9d
	.byte	0x61
	.4byte	0xaa
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0x9f
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x9f
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.byte	0xa0
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x22e3
	.4byte	0x20da
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0x2295
	.4byte	0x20ee
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x22a2
	.4byte	0x2108
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x22a2
	.4byte	0x2122
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x22af
	.4byte	0x2141
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x22af
	.4byte	0x215d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x2295
	.4byte	0x2171
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x22a2
	.4byte	0x218b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x22a2
	.4byte	0x21a5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x22af
	.4byte	0x21b9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x22af
	.4byte	0x21d3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x22a2
	.4byte	0x21ec
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x22af
	.4byte	0x220b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x22af
	.4byte	0x2225
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x22a2
	.4byte	0x223f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL24
	.4byte	0x22bc
	.4byte	0x225f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL30
	.4byte	0x22bc
	.4byte	0x2284
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL32
	.4byte	0x22f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x21
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x21
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x21
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x21
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x21
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x21
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x21
	.4byte	.LASF237
	.4byte	.LASF237
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
.LVUS43:
	.uleb128 0
	.uleb128 .LVU713
	.uleb128 .LVU713
	.uleb128 .LVU714
	.uleb128 .LVU714
	.uleb128 .LVU715
	.uleb128 .LVU715
	.uleb128 0
.LLST43:
	.4byte	.LVL256
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL295
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 0
	.uleb128 .LVU628
	.uleb128 .LVU628
	.uleb128 0
.LLST44:
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU660
	.uleb128 .LVU660
	.uleb128 .LVU675
	.uleb128 .LVU675
	.uleb128 .LVU678
	.uleb128 .LVU682
	.uleb128 .LVU710
	.uleb128 .LVU714
	.uleb128 .LVU715
.LLST45:
	.4byte	.LVL256
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL270
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL276
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU635
	.uleb128 .LVU637
	.uleb128 .LVU637
	.uleb128 .LVU640
	.uleb128 .LVU641
	.uleb128 .LVU677
	.uleb128 .LVU681
	.uleb128 .LVU684
.LLST46:
	.4byte	.LVL259
	.4byte	.LVL260-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL260-1
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL263
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU663
	.uleb128 .LVU667
	.uleb128 .LVU667
	.uleb128 .LVU671
	.uleb128 .LVU671
	.uleb128 .LVU673
	.uleb128 .LVU673
	.uleb128 .LVU684
.LLST47:
	.4byte	.LVL271
	.4byte	.LVL273
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x3
	.byte	0x9
	.byte	0xc0
	.byte	0x9f
	.4byte	.LVL275
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU665
	.uleb128 .LVU679
.LLST48:
	.4byte	.LVL272
	.4byte	.LVL279-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU620
	.uleb128 .LVU620
	.uleb128 .LVU621
	.uleb128 .LVU621
	.uleb128 .LVU622
	.uleb128 .LVU622
	.uleb128 0
.LLST37:
	.4byte	.LVL217
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL255
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU537
	.uleb128 .LVU537
	.uleb128 0
.LLST38:
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU569
	.uleb128 .LVU569
	.uleb128 .LVU585
	.uleb128 .LVU585
	.uleb128 .LVU587
	.uleb128 .LVU589
	.uleb128 .LVU617
	.uleb128 .LVU621
	.uleb128 .LVU622
.LLST39:
	.4byte	.LVL217
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL231
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU544
	.uleb128 .LVU546
	.uleb128 .LVU546
	.uleb128 .LVU549
	.uleb128 .LVU550
	.uleb128 .LVU569
.LLST40:
	.4byte	.LVL220
	.4byte	.LVL221-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL221-1
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU572
	.uleb128 .LVU577
	.uleb128 .LVU577
	.uleb128 .LVU580
	.uleb128 .LVU580
	.uleb128 .LVU583
	.uleb128 .LVU583
	.uleb128 .LVU591
.LLST41:
	.4byte	.LVL232
	.4byte	.LVL234-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL234-1
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL235
	.4byte	.LVL237
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU574
	.uleb128 .LVU591
.LLST42:
	.4byte	.LVL233
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU529
	.uleb128 .LVU529
	.uleb128 .LVU530
	.uleb128 .LVU530
	.uleb128 .LVU531
	.uleb128 .LVU531
	.uleb128 0
.LLST31:
	.4byte	.LVL179
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU445
	.uleb128 .LVU445
	.uleb128 0
.LLST32:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU478
	.uleb128 .LVU478
	.uleb128 .LVU494
	.uleb128 .LVU494
	.uleb128 .LVU496
	.uleb128 .LVU498
	.uleb128 .LVU526
	.uleb128 .LVU530
	.uleb128 .LVU531
.LLST33:
	.4byte	.LVL179
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL192
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU452
	.uleb128 .LVU454
	.uleb128 .LVU454
	.uleb128 .LVU457
	.uleb128 .LVU458
	.uleb128 .LVU478
.LLST34:
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL183-1
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU481
	.uleb128 .LVU486
	.uleb128 .LVU486
	.uleb128 .LVU489
	.uleb128 .LVU489
	.uleb128 .LVU492
	.uleb128 .LVU492
	.uleb128 .LVU500
.LLST35:
	.4byte	.LVL193
	.4byte	.LVL195-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL195-1
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU483
	.uleb128 .LVU500
.LLST36:
	.4byte	.LVL194
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU437
	.uleb128 .LVU437
	.uleb128 .LVU438
	.uleb128 .LVU438
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 0
.LLST25:
	.4byte	.LVL141
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST26:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU386
	.uleb128 .LVU386
	.uleb128 .LVU402
	.uleb128 .LVU402
	.uleb128 .LVU404
	.uleb128 .LVU406
	.uleb128 .LVU434
	.uleb128 .LVU438
	.uleb128 .LVU439
.LLST27:
	.4byte	.LVL141
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU360
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 .LVU365
	.uleb128 .LVU366
	.uleb128 .LVU386
.LLST28:
	.4byte	.LVL144
	.4byte	.LVL145-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL145-1
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU389
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU397
	.uleb128 .LVU397
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 .LVU408
.LLST29:
	.4byte	.LVL155
	.4byte	.LVL157-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL157-1
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU391
	.uleb128 .LVU408
.LLST30:
	.4byte	.LVL156
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU345
	.uleb128 .LVU345
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 0
.LLST19:
	.4byte	.LVL101
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 0
.LLST20:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU310
	.uleb128 .LVU314
	.uleb128 .LVU342
	.uleb128 .LVU346
	.uleb128 .LVU347
.LLST21:
	.4byte	.LVL101
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU267
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU272
	.uleb128 .LVU273
	.uleb128 .LVU309
	.uleb128 .LVU313
	.uleb128 .LVU316
.LLST22:
	.4byte	.LVL104
	.4byte	.LVL105-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL105-1
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL108
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU295
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU316
.LLST23:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU297
	.uleb128 .LVU311
.LLST24:
	.4byte	.LVL117
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 0
.LLST13:
	.4byte	.LVL61
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST14:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU217
	.uleb128 .LVU221
	.uleb128 .LVU249
	.uleb128 .LVU253
	.uleb128 .LVU254
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU174
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU179
	.uleb128 .LVU180
	.uleb128 .LVU216
	.uleb128 .LVU220
	.uleb128 .LVU223
.LLST16:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL65-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU202
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU223
.LLST17:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x9
	.byte	0xac
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU204
	.uleb128 .LVU218
.LLST18:
	.4byte	.LVL77
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
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
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
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
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU61
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU40
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU43
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU61
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL24-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU45
	.uleb128 .LVU61
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF215:
	.string	"u8x8_d_st75256_256x160_alt_init_seq"
.LASF115:
	.string	"u8x8_font_artosserif8_n"
.LASF226:
	.string	"u8x8_d_st75256_jlx172104"
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
.LASF219:
	.string	"arg_int"
.LASF240:
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
.LASF235:
	.string	"u8x8_d_helper_display_init"
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
.LASF27:
	.string	"utf8_state"
.LASF126:
	.string	"u8x8_font_victoriabold8_n"
.LASF210:
	.string	"u8x8_d_st75256_240x160_init_seq"
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
.LASF130:
	.string	"u8x8_font_victoriamedium8_u"
.LASF233:
	.string	"u8x8_cad_SendData"
.LASF94:
	.string	"u8x8_font_open_iconic_thing_2x2"
.LASF203:
	.string	"u8x8_st75256_wo256x128_display_info"
.LASF112:
	.string	"u8x8_font_artossans8_n"
.LASF134:
	.string	"u8x8_font_courR18_2x3_f"
.LASF111:
	.string	"u8x8_font_artossans8_r"
.LASF224:
	.string	"u8x8_d_st75256_jlx256160"
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
.LASF234:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF58:
	.string	"x_pos"
.LASF193:
	.string	"u8x8_d_st75256_256x128_powersave0_seq"
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
.LASF230:
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
.LASF99:
	.string	"u8x8_font_open_iconic_play_4x4"
.LASF92:
	.string	"u8x8_font_open_iconic_embedded_2x2"
.LASF194:
	.string	"u8x8_d_st75256_256x128_powersave1_seq"
.LASF208:
	.string	"u8x8_d_st75256_jlx172104_init_seq"
.LASF77:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF175:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF170:
	.string	"u8x8_font_pressstart2p_u"
.LASF227:
	.string	"u8x8_d_st75256_jlx25664"
.LASF212:
	.string	"u8x8_d_st75256_256x160_init_seq"
.LASF177:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF195:
	.string	"u8x8_d_st75256_jlx256128_flip0_seq"
.LASF5:
	.string	"short unsigned int"
.LASF176:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF178:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF96:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF201:
	.string	"u8x8_st75256_256x128_display_info"
.LASF161:
	.string	"u8x8_font_inb33_3x6_f"
.LASF209:
	.string	"u8x8_st75256_240x160_display_info"
.LASF14:
	.string	"display_info"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF34:
	.string	"u8x8_struct"
.LASF88:
	.string	"u8x8_font_open_iconic_thing_1x1"
.LASF98:
	.string	"u8x8_font_open_iconic_embedded_4x4"
.LASF211:
	.string	"u8x8_st75256_256x160_display_info"
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
.LASF101:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF198:
	.string	"u8x8_d_st75256_jlx172104_flip1_seq"
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
.LASF228:
	.string	"u8x8_d_st75256_wo256x128"
.LASF189:
	.string	"u8x8_font_px437wyse700a_2x2_n"
.LASF196:
	.string	"u8x8_d_st75256_jlx256128_flip1_seq"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF181:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF23:
	.string	"x_offset"
.LASF204:
	.string	"u8x8_d_st75256_wo256x128_init_seq"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF213:
	.string	"u8x8_d_st75256_256x160m_init_seq"
.LASF50:
	.string	"tile_height"
.LASF148:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF72:
	.string	"u8x8_font_8x13_1x2_f"
.LASF108:
	.string	"u8x8_font_profont29_2x3_f"
.LASF214:
	.string	"u8x8_st75256_256x160_alt_display_info"
.LASF114:
	.string	"u8x8_font_artosserif8_r"
.LASF74:
	.string	"u8x8_font_8x13_1x2_n"
.LASF110:
	.string	"u8x8_font_profont29_2x3_n"
.LASF147:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_r"
.LASF202:
	.string	"u8x8_d_st75256_256x128_init_seq"
.LASF73:
	.string	"u8x8_font_8x13_1x2_r"
.LASF109:
	.string	"u8x8_font_profont29_2x3_r"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF105:
	.string	"u8x8_font_open_iconic_play_8x8"
.LASF241:
	.string	"u8x8_d_st75256_256x128_generic"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF218:
	.string	"u8x8"
.LASF216:
	.string	"u8x8_st75256_192x96_display_info"
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
.LASF229:
	.string	"u8x8_d_st75256_jlx256128"
.LASF47:
	.string	"data_setup_time_ns"
.LASF150:
	.string	"u8x8_font_inr21_2x4_r"
.LASF220:
	.string	"u8x8_d_st75256_jlx19296"
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
.LASF205:
	.string	"u8x8_st75256_256x64_display_info"
.LASF168:
	.string	"u8x8_font_pressstart2p_r"
.LASF237:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF200:
	.string	"u8x8_d_st75256_jlx256160_flip1_seq"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF238:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF225:
	.string	"u8x8_d_st75256_jlx240160"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF217:
	.string	"u8x8_d_st75256_jlx19296_init_seq"
.LASF197:
	.string	"u8x8_d_st75256_jlx172104_flip0_seq"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF223:
	.string	"u8x8_d_st75256_jlx256160m"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF222:
	.string	"arg_ptr"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF221:
	.string	"u8x8_d_st75256_jlx256160_alt"
.LASF21:
	.string	"font"
.LASF87:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF206:
	.string	"u8x8_d_st75256_256x64_init_seq"
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
.LASF231:
	.string	"u8x8_cad_SendCmd"
.LASF68:
	.string	"u8x8_font_5x7_n"
.LASF239:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st75256.c"
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
.LASF207:
	.string	"u8x8_st75256_172x104_display_info"
.LASF232:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF199:
	.string	"u8x8_d_st75256_jlx256160_flip0_seq"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF236:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
