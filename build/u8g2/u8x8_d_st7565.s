	.file	"u8x8_d_st7565.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7565_common,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_st7565_powersave0_seq
	.literal .LC1, u8x8_d_st7565_powersave1_seq
	.align	4
	.global	u8x8_d_st7565_common
	.type	u8x8_d_st7565_common, @function
u8x8_d_st7565_common:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st7565.c"
	.loc 1 116 1 view -0
	.loc 1 116 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 117 3 is_stmt 1 view .LVU2
	.loc 1 118 3 view .LVU3
	.loc 1 119 3 view .LVU4
	.loc 1 116 1 is_stmt 0 view .LVU5
	extui	a3, a3, 0, 8
	.loc 1 116 1 view .LVU6
	movi.n	a6, 0xe
	extui	a4, a4, 0, 8
	.loc 1 116 1 view .LVU7
	beq	a3, a6, .L2
	movi.n	a6, 0xf
	beq	a3, a6, .L3
	movi.n	a5, 0xb
.LVL1:
	.loc 1 116 1 view .LVU8
	beq	a3, a5, .L4
	.loc 1 176 14 view .LVU9
	movi.n	a2, 0
.LVL2:
	.loc 1 176 14 view .LVU10
	j	.L5
.LVL3:
.L3:
.LBB4:
.LBB5:
	.loc 1 122 7 is_stmt 1 view .LVU11
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 124 7 view .LVU12
	.loc 1 124 9 is_stmt 0 view .LVU13
	l8ui	a3, a5, 5
.LVL5:
	.loc 1 125 7 is_stmt 1 view .LVU14
	.loc 1 126 9 is_stmt 0 view .LVU15
	l8ui	a6, a2, 34
	.loc 1 125 9 view .LVU16
	slli	a3, a3, 3
.LVL6:
	.loc 1 126 7 is_stmt 1 view .LVU17
	.loc 1 126 9 is_stmt 0 view .LVU18
	add.n	a3, a3, a6
.LVL7:
	.loc 1 126 9 view .LVU19
	extui	a6, a3, 0, 8
.LVL8:
	.loc 1 127 7 is_stmt 1 view .LVU20
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL9:
	.loc 1 127 7 is_stmt 0 view .LVU21
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL10:
	.loc 1 128 7 is_stmt 1 view .LVU22
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL11:
	.loc 1 129 7 view .LVU23
	l8ui	a3, a5, 6
	movi	a11, 0xb0
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL12:
	.loc 1 131 7 view .LVU24
	.loc 1 131 9 is_stmt 0 view .LVU25
	l8ui	a3, a5, 4
.LVL13:
	.loc 1 132 7 is_stmt 1 view .LVU26
	.loc 1 139 10 is_stmt 0 view .LVU27
	movi	a9, 0x84
	.loc 1 132 9 view .LVU28
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL14:
	.loc 1 133 7 is_stmt 1 view .LVU29
	.loc 1 139 14 is_stmt 0 view .LVU30
	add.n	a8, a6, a3
	.loc 1 133 11 view .LVU31
	l32i.n	a5, a5, 0
.LVL15:
	.loc 1 139 7 is_stmt 1 view .LVU32
	.loc 1 139 10 is_stmt 0 view .LVU33
	bge	a9, a8, .L7
	.loc 1 141 2 is_stmt 1 view .LVU34
.LVL16:
	.loc 1 142 2 view .LVU35
	.loc 1 142 4 is_stmt 0 view .LVU36
	movi	a3, -0x7c
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL17:
.L7:
	.loc 1 144 7 is_stmt 1 view .LVU37
	.loc 1 146 2 view .LVU38
	.loc 1 147 9 is_stmt 0 view .LVU39
	addi.n	a4, a4, -1
.LVL18:
	.loc 1 146 2 view .LVU40
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 147 9 view .LVU41
	extui	a4, a4, 0, 8
.LVL19:
	.loc 1 146 2 view .LVU42
	call8	u8x8_cad_SendData
.LVL20:
	.loc 1 147 2 is_stmt 1 view .LVU43
	.loc 1 148 7 is_stmt 0 view .LVU44
	bnez.n	a4, .L7
	.loc 1 150 7 is_stmt 1 view .LVU45
	j	.L11
.LVL21:
.L4:
	.loc 1 150 7 is_stmt 0 view .LVU46
.LBE5:
.LBE4:
	.loc 1 162 7 is_stmt 1 view .LVU47
	.loc 1 163 2 is_stmt 0 view .LVU48
	l32r	a11, .LC0
	.loc 1 162 10 view .LVU49
	beqz.n	a4, .L12
.L8:
	.loc 1 165 2 is_stmt 1 view .LVU50
	l32r	a11, .LC1
.L12:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL22:
	j	.L10
.LVL23:
.L2:
	.loc 1 169 7 view .LVU51
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL24:
	.loc 1 170 7 view .LVU52
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL25:
	.loc 1 171 7 view .LVU53
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL26:
.L11:
	.loc 1 172 7 view .LVU54
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL27:
.L10:
	.loc 1 173 7 view .LVU55
	.loc 1 178 10 is_stmt 0 view .LVU56
	movi.n	a2, 1
.LVL28:
.L5:
	.loc 1 179 1 view .LVU57
	retw.n
.LFE0:
	.size	u8x8_d_st7565_common, .-u8x8_d_st7565_common
	.section	.text.u8x8_d_st7565_ea_dogm128,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_st7565_128x64_display_info
	.literal .LC3, u8x8_d_st7565_dogm128_init_seq
	.literal .LC4, u8x8_d_st7565_flip0_seq
	.literal .LC5, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_ea_dogm128
	.type	u8x8_d_st7565_ea_dogm128, @function
u8x8_d_st7565_ea_dogm128:
.LVL29:
.LFB1:
	.loc 1 213 1 is_stmt 1 view -0
	.loc 1 213 1 is_stmt 0 view .LVU59
	entry	sp, 32
.LCFI1:
	.loc 1 215 3 is_stmt 1 view .LVU60
	.loc 1 213 1 is_stmt 0 view .LVU61
	extui	a3, a3, 0, 8
	.loc 1 213 1 view .LVU62
	extui	a4, a4, 0, 8
	.loc 1 215 8 view .LVU63
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL30:
	.loc 1 215 6 view .LVU64
	bnez.n	a10, .L18
	.loc 1 218 5 is_stmt 1 view .LVU65
	beqi	a3, 10, .L15
	movi.n	a8, 0xd
	beq	a3, a8, .L16
	movi.n	a4, 9
.LVL31:
	.loc 1 218 5 is_stmt 0 view .LVU66
	bne	a3, a4, .L14
	.loc 1 221 2 is_stmt 1 view .LVU67
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL32:
	.loc 1 222 2 view .LVU68
	j	.L18
.L15:
	.loc 1 224 2 view .LVU69
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL33:
	.loc 1 225 2 view .LVU70
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL34:
	.loc 1 226 2 view .LVU71
	j	.L18
.L16:
	.loc 1 228 2 view .LVU72
	.loc 1 228 5 is_stmt 0 view .LVU73
	bnez.n	a4, .L17
	.loc 1 230 4 is_stmt 1 view .LVU74
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL35:
	.loc 1 231 4 view .LVU75
	.loc 1 231 39 is_stmt 0 view .LVU76
	l32i.n	a3, a2, 0
.LVL36:
	.loc 1 231 19 view .LVU77
	l8ui	a3, a3, 18
	j	.L19
.L17:
	.loc 1 235 4 is_stmt 1 view .LVU78
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL37:
	.loc 1 236 4 view .LVU79
	.loc 1 236 39 is_stmt 0 view .LVU80
	l32i.n	a3, a2, 0
	.loc 1 236 19 view .LVU81
	l8ui	a3, a3, 19
.L19:
	.loc 1 236 19 view .LVU82
	s8i	a3, a2, 34
.L18:
	.loc 1 243 10 view .LVU83
	movi.n	a10, 1
.L14:
	.loc 1 244 1 view .LVU84
	mov.n	a2, a10
.LVL38:
	.loc 1 244 1 view .LVU85
	retw.n
.LFE1:
	.size	u8x8_d_st7565_ea_dogm128, .-u8x8_d_st7565_ea_dogm128
	.section	.text.u8x8_d_st7565_lm6063,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_st7565_128x64_display_info
	.literal .LC7, u8x8_d_st7565_lm6063_init_seq
	.literal .LC8, u8x8_d_st7565_flip0_seq
	.literal .LC9, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_lm6063
	.type	u8x8_d_st7565_lm6063, @function
u8x8_d_st7565_lm6063:
.LVL39:
.LFB2:
	.loc 1 280 1 is_stmt 1 view -0
	.loc 1 280 1 is_stmt 0 view .LVU87
	entry	sp, 32
.LCFI2:
	.loc 1 282 3 is_stmt 1 view .LVU88
	.loc 1 280 1 is_stmt 0 view .LVU89
	extui	a3, a3, 0, 8
	.loc 1 280 1 view .LVU90
	extui	a4, a4, 0, 8
	.loc 1 282 8 view .LVU91
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL40:
	.loc 1 282 6 view .LVU92
	bnez.n	a10, .L25
	.loc 1 285 5 is_stmt 1 view .LVU93
	beqi	a3, 10, .L22
	movi.n	a8, 0xd
	beq	a3, a8, .L23
	movi.n	a4, 9
.LVL41:
	.loc 1 285 5 is_stmt 0 view .LVU94
	bne	a3, a4, .L21
	.loc 1 288 2 is_stmt 1 view .LVU95
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL42:
	.loc 1 289 2 view .LVU96
	j	.L25
.L22:
	.loc 1 291 2 view .LVU97
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL43:
	.loc 1 292 2 view .LVU98
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL44:
	.loc 1 293 2 view .LVU99
	j	.L25
.L23:
	.loc 1 295 2 view .LVU100
	.loc 1 295 5 is_stmt 0 view .LVU101
	bnez.n	a4, .L24
	.loc 1 297 4 is_stmt 1 view .LVU102
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL45:
	.loc 1 298 4 view .LVU103
	.loc 1 298 39 is_stmt 0 view .LVU104
	l32i.n	a3, a2, 0
.LVL46:
	.loc 1 298 19 view .LVU105
	l8ui	a3, a3, 18
	j	.L26
.L24:
	.loc 1 302 4 is_stmt 1 view .LVU106
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL47:
	.loc 1 303 4 view .LVU107
	.loc 1 303 39 is_stmt 0 view .LVU108
	l32i.n	a3, a2, 0
	.loc 1 303 19 view .LVU109
	l8ui	a3, a3, 19
.L26:
	.loc 1 303 19 view .LVU110
	s8i	a3, a2, 34
.L25:
	.loc 1 310 10 view .LVU111
	movi.n	a10, 1
.L21:
	.loc 1 311 1 view .LVU112
	mov.n	a2, a10
.LVL48:
	.loc 1 311 1 view .LVU113
	retw.n
.LFE2:
	.size	u8x8_d_st7565_lm6063, .-u8x8_d_st7565_lm6063
	.section	.text.u8x8_d_st7565_64128n,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_st7565_64128n_display_info
	.literal .LC11, u8x8_d_st7565_64128n_init_seq
	.literal .LC12, u8x8_d_st7565_flip0_seq
	.literal .LC13, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_64128n
	.type	u8x8_d_st7565_64128n, @function
u8x8_d_st7565_64128n:
.LVL49:
.LFB3:
	.loc 1 404 1 is_stmt 1 view -0
	.loc 1 404 1 is_stmt 0 view .LVU115
	entry	sp, 32
.LCFI3:
	.loc 1 406 3 is_stmt 1 view .LVU116
	.loc 1 404 1 is_stmt 0 view .LVU117
	extui	a3, a3, 0, 8
	.loc 1 404 1 view .LVU118
	extui	a4, a4, 0, 8
	.loc 1 406 8 view .LVU119
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL50:
	.loc 1 406 6 view .LVU120
	bnez.n	a10, .L32
	.loc 1 409 5 is_stmt 1 view .LVU121
	beqi	a3, 10, .L29
	movi.n	a8, 0xd
	beq	a3, a8, .L30
	movi.n	a4, 9
.LVL51:
	.loc 1 409 5 is_stmt 0 view .LVU122
	bne	a3, a4, .L28
	.loc 1 412 2 is_stmt 1 view .LVU123
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL52:
	.loc 1 413 2 view .LVU124
	j	.L32
.L29:
	.loc 1 415 2 view .LVU125
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL53:
	.loc 1 416 2 view .LVU126
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL54:
	.loc 1 417 2 view .LVU127
	j	.L32
.L30:
	.loc 1 419 2 view .LVU128
	.loc 1 419 5 is_stmt 0 view .LVU129
	bnez.n	a4, .L31
	.loc 1 421 4 is_stmt 1 view .LVU130
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL55:
	.loc 1 422 4 view .LVU131
	.loc 1 422 39 is_stmt 0 view .LVU132
	l32i.n	a3, a2, 0
.LVL56:
	.loc 1 422 19 view .LVU133
	l8ui	a3, a3, 18
	j	.L33
.L31:
	.loc 1 426 4 is_stmt 1 view .LVU134
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL57:
	.loc 1 427 4 view .LVU135
	.loc 1 427 39 is_stmt 0 view .LVU136
	l32i.n	a3, a2, 0
	.loc 1 427 19 view .LVU137
	l8ui	a3, a3, 19
.L33:
	.loc 1 427 19 view .LVU138
	s8i	a3, a2, 34
.L32:
	.loc 1 434 10 view .LVU139
	movi.n	a10, 1
.L28:
	.loc 1 435 1 view .LVU140
	mov.n	a2, a10
.LVL58:
	.loc 1 435 1 view .LVU141
	retw.n
.LFE3:
	.size	u8x8_d_st7565_64128n, .-u8x8_d_st7565_64128n
	.section	.text.u8x8_d_st7565_zolen_128x64,"ax",@progbits
	.literal_position
	.literal .LC14, u8x8_st7565_128x64_display_info
	.literal .LC15, u8x8_d_st7565_zolen_128x64_init_seq
	.literal .LC16, u8x8_d_st7565_zflip0_seq
	.literal .LC17, u8x8_d_st7565_zflip1_seq
	.align	4
	.global	u8x8_d_st7565_zolen_128x64
	.type	u8x8_d_st7565_zolen_128x64, @function
u8x8_d_st7565_zolen_128x64:
.LVL59:
.LFB4:
	.loc 1 469 1 is_stmt 1 view -0
	.loc 1 469 1 is_stmt 0 view .LVU143
	entry	sp, 32
.LCFI4:
	.loc 1 471 3 is_stmt 1 view .LVU144
	.loc 1 469 1 is_stmt 0 view .LVU145
	extui	a3, a3, 0, 8
	.loc 1 469 1 view .LVU146
	extui	a4, a4, 0, 8
	.loc 1 471 8 view .LVU147
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL60:
	.loc 1 471 6 view .LVU148
	bnez.n	a10, .L39
	.loc 1 474 5 is_stmt 1 view .LVU149
	beqi	a3, 10, .L36
	movi.n	a8, 0xd
	beq	a3, a8, .L37
	movi.n	a4, 9
.LVL61:
	.loc 1 474 5 is_stmt 0 view .LVU150
	bne	a3, a4, .L35
	.loc 1 477 2 is_stmt 1 view .LVU151
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL62:
	.loc 1 478 2 view .LVU152
	j	.L39
.L36:
	.loc 1 480 2 view .LVU153
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL63:
	.loc 1 481 2 view .LVU154
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL64:
	.loc 1 482 2 view .LVU155
	j	.L39
.L37:
	.loc 1 484 2 view .LVU156
	.loc 1 484 5 is_stmt 0 view .LVU157
	bnez.n	a4, .L38
	.loc 1 486 4 is_stmt 1 view .LVU158
	l32r	a11, .LC16
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL65:
	.loc 1 487 4 view .LVU159
	.loc 1 487 39 is_stmt 0 view .LVU160
	l32i.n	a3, a2, 0
.LVL66:
	.loc 1 487 19 view .LVU161
	l8ui	a3, a3, 18
	j	.L40
.L38:
	.loc 1 491 4 is_stmt 1 view .LVU162
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL67:
	.loc 1 492 4 view .LVU163
	.loc 1 492 39 is_stmt 0 view .LVU164
	l32i.n	a3, a2, 0
	.loc 1 492 19 view .LVU165
	l8ui	a3, a3, 19
.L40:
	.loc 1 492 19 view .LVU166
	s8i	a3, a2, 34
.L39:
	.loc 1 499 10 view .LVU167
	movi.n	a10, 1
.L35:
	.loc 1 500 1 view .LVU168
	mov.n	a2, a10
.LVL68:
	.loc 1 500 1 view .LVU169
	retw.n
.LFE4:
	.size	u8x8_d_st7565_zolen_128x64, .-u8x8_d_st7565_zolen_128x64
	.section	.text.u8x8_d_st7565_nhd_c12832,"ax",@progbits
	.literal_position
	.literal .LC18, u8x8_st7565_128x32_display_info
	.literal .LC19, u8x8_d_st7565_nhd_c12832_init_seq
	.literal .LC20, u8x8_d_st7565_flip0_seq
	.literal .LC21, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_nhd_c12832
	.type	u8x8_d_st7565_nhd_c12832, @function
u8x8_d_st7565_nhd_c12832:
.LVL69:
.LFB5:
	.loc 1 561 1 is_stmt 1 view -0
	.loc 1 561 1 is_stmt 0 view .LVU171
	entry	sp, 32
.LCFI5:
	.loc 1 563 3 is_stmt 1 view .LVU172
	.loc 1 561 1 is_stmt 0 view .LVU173
	extui	a3, a3, 0, 8
	.loc 1 561 1 view .LVU174
	extui	a4, a4, 0, 8
	.loc 1 563 8 view .LVU175
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL70:
	.loc 1 563 6 view .LVU176
	bnez.n	a10, .L46
	.loc 1 566 5 is_stmt 1 view .LVU177
	beqi	a3, 10, .L43
	movi.n	a8, 0xd
	beq	a3, a8, .L44
	movi.n	a4, 9
.LVL71:
	.loc 1 566 5 is_stmt 0 view .LVU178
	bne	a3, a4, .L42
	.loc 1 569 2 is_stmt 1 view .LVU179
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL72:
	.loc 1 570 2 view .LVU180
	j	.L46
.L43:
	.loc 1 572 2 view .LVU181
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL73:
	.loc 1 573 2 view .LVU182
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL74:
	.loc 1 574 2 view .LVU183
	j	.L46
.L44:
	.loc 1 576 2 view .LVU184
	.loc 1 576 5 is_stmt 0 view .LVU185
	bnez.n	a4, .L45
	.loc 1 578 4 is_stmt 1 view .LVU186
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL75:
	.loc 1 579 4 view .LVU187
	.loc 1 579 39 is_stmt 0 view .LVU188
	l32i.n	a3, a2, 0
.LVL76:
	.loc 1 579 19 view .LVU189
	l8ui	a3, a3, 18
	j	.L47
.L45:
	.loc 1 583 4 is_stmt 1 view .LVU190
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL77:
	.loc 1 584 4 view .LVU191
	.loc 1 584 39 is_stmt 0 view .LVU192
	l32i.n	a3, a2, 0
	.loc 1 584 19 view .LVU193
	l8ui	a3, a3, 19
.L47:
	.loc 1 584 19 view .LVU194
	s8i	a3, a2, 34
.L46:
	.loc 1 591 10 view .LVU195
	movi.n	a10, 1
.L42:
	.loc 1 592 1 view .LVU196
	mov.n	a2, a10
.LVL78:
	.loc 1 592 1 view .LVU197
	retw.n
.LFE5:
	.size	u8x8_d_st7565_nhd_c12832, .-u8x8_d_st7565_nhd_c12832
	.section	.text.u8x8_d_st7565_nhd_c12864,"ax",@progbits
	.literal_position
	.literal .LC22, u8x8_st7565_nhd_c12864_display_info
	.literal .LC23, u8x8_d_st7565_nhd_c12864_init_seq
	.literal .LC24, u8x8_d_st7565_flip0_seq
	.literal .LC25, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_nhd_c12864
	.type	u8x8_d_st7565_nhd_c12864, @function
u8x8_d_st7565_nhd_c12864:
.LVL79:
.LFB6:
	.loc 1 651 1 is_stmt 1 view -0
	.loc 1 651 1 is_stmt 0 view .LVU199
	entry	sp, 32
.LCFI6:
	.loc 1 653 3 is_stmt 1 view .LVU200
	.loc 1 651 1 is_stmt 0 view .LVU201
	extui	a3, a3, 0, 8
	.loc 1 651 1 view .LVU202
	extui	a4, a4, 0, 8
	.loc 1 653 8 view .LVU203
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL80:
	.loc 1 653 6 view .LVU204
	bnez.n	a10, .L53
	.loc 1 656 5 is_stmt 1 view .LVU205
	beqi	a3, 10, .L50
	movi.n	a8, 0xd
	beq	a3, a8, .L51
	movi.n	a4, 9
.LVL81:
	.loc 1 656 5 is_stmt 0 view .LVU206
	bne	a3, a4, .L49
	.loc 1 659 2 is_stmt 1 view .LVU207
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL82:
	.loc 1 660 2 view .LVU208
	j	.L53
.L50:
	.loc 1 662 2 view .LVU209
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL83:
	.loc 1 663 2 view .LVU210
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL84:
	.loc 1 664 2 view .LVU211
	j	.L53
.L51:
	.loc 1 666 2 view .LVU212
	.loc 1 666 5 is_stmt 0 view .LVU213
	bnez.n	a4, .L52
.LVL85:
.LBB8:
.LBB9:
	.loc 1 668 4 is_stmt 1 view .LVU214
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL86:
	.loc 1 669 4 view .LVU215
	.loc 1 669 39 is_stmt 0 view .LVU216
	l32i.n	a3, a2, 0
.LVL87:
	.loc 1 669 19 view .LVU217
	l8ui	a3, a3, 18
	j	.L54
.LVL88:
.L52:
	.loc 1 669 19 view .LVU218
.LBE9:
.LBE8:
	.loc 1 673 4 is_stmt 1 view .LVU219
	l32r	a11, .LC25
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL89:
	.loc 1 674 4 view .LVU220
	.loc 1 674 39 is_stmt 0 view .LVU221
	l32i.n	a3, a2, 0
	.loc 1 674 19 view .LVU222
	l8ui	a3, a3, 19
.L54:
	.loc 1 674 19 view .LVU223
	s8i	a3, a2, 34
.L53:
	.loc 1 681 10 view .LVU224
	movi.n	a10, 1
.L49:
	.loc 1 682 1 view .LVU225
	mov.n	a2, a10
.LVL90:
	.loc 1 682 1 view .LVU226
	retw.n
.LFE6:
	.size	u8x8_d_st7565_nhd_c12864, .-u8x8_d_st7565_nhd_c12864
	.section	.text.u8x8_d_st7565_jlx12864,"ax",@progbits
	.align	4
	.global	u8x8_d_st7565_jlx12864
	.type	u8x8_d_st7565_jlx12864, @function
u8x8_d_st7565_jlx12864:
.LVL91:
.LFB7:
	.loc 1 687 1 is_stmt 1 view -0
	.loc 1 687 1 is_stmt 0 view .LVU228
	entry	sp, 32
.LCFI7:
	.loc 1 688 3 is_stmt 1 view .LVU229
	.loc 1 688 10 is_stmt 0 view .LVU230
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	u8x8_d_st7565_nhd_c12864
.LVL92:
	.loc 1 689 1 view .LVU231
	mov.n	a2, a10
.LVL93:
	.loc 1 689 1 view .LVU232
	retw.n
.LFE7:
	.size	u8x8_d_st7565_jlx12864, .-u8x8_d_st7565_jlx12864
	.section	.text.u8x8_d_st7565_lm6059,"ax",@progbits
	.literal_position
	.literal .LC26, u8x8_st7565_lm6059_display_info
	.literal .LC27, u8x8_d_st7565_lm6059_init_seq
	.literal .LC28, u8x8_d_st7565_flip1_seq
	.literal .LC29, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_lm6059
	.type	u8x8_d_st7565_lm6059, @function
u8x8_d_st7565_lm6059:
.LVL94:
.LFB8:
	.loc 1 750 1 is_stmt 1 view -0
	.loc 1 750 1 is_stmt 0 view .LVU234
	entry	sp, 32
.LCFI8:
	.loc 1 752 3 is_stmt 1 view .LVU235
	.loc 1 750 1 is_stmt 0 view .LVU236
	extui	a3, a3, 0, 8
	.loc 1 750 1 view .LVU237
	extui	a4, a4, 0, 8
	.loc 1 752 8 view .LVU238
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL95:
	.loc 1 752 6 view .LVU239
	bnez.n	a10, .L61
	.loc 1 755 5 is_stmt 1 view .LVU240
	beqi	a3, 10, .L58
	movi.n	a8, 0xd
	beq	a3, a8, .L59
	movi.n	a4, 9
.LVL96:
	.loc 1 755 5 is_stmt 0 view .LVU241
	bne	a3, a4, .L57
	.loc 1 758 2 is_stmt 1 view .LVU242
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL97:
	.loc 1 759 2 view .LVU243
	j	.L61
.L58:
	.loc 1 761 2 view .LVU244
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL98:
	.loc 1 762 2 view .LVU245
	l32r	a11, .LC27
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL99:
	.loc 1 763 2 view .LVU246
	j	.L61
.L59:
	.loc 1 765 2 view .LVU247
	.loc 1 765 5 is_stmt 0 view .LVU248
	bnez.n	a4, .L60
	.loc 1 767 4 is_stmt 1 view .LVU249
	l32r	a11, .LC28
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL100:
	.loc 1 768 4 view .LVU250
	.loc 1 768 39 is_stmt 0 view .LVU251
	l32i.n	a3, a2, 0
.LVL101:
	.loc 1 768 19 view .LVU252
	l8ui	a3, a3, 18
	j	.L62
.L60:
	.loc 1 772 4 is_stmt 1 view .LVU253
	l32r	a11, .LC29
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL102:
	.loc 1 773 4 view .LVU254
	.loc 1 773 39 is_stmt 0 view .LVU255
	l32i.n	a3, a2, 0
	.loc 1 773 19 view .LVU256
	l8ui	a3, a3, 19
.L62:
	.loc 1 773 19 view .LVU257
	s8i	a3, a2, 34
.L61:
	.loc 1 780 10 view .LVU258
	movi.n	a10, 1
.L57:
	.loc 1 781 1 view .LVU259
	mov.n	a2, a10
.LVL103:
	.loc 1 781 1 view .LVU260
	retw.n
.LFE8:
	.size	u8x8_d_st7565_lm6059, .-u8x8_d_st7565_lm6059
	.section	.text.u8x8_d_st7565_lx12864,"ax",@progbits
	.literal_position
	.literal .LC30, u8x8_st7565_lx12864_display_info
	.literal .LC31, u8x8_d_st7565_lx12864_init_seq
	.literal .LC32, u8x8_d_st7565_flip1_seq
	.literal .LC33, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_lx12864
	.type	u8x8_d_st7565_lx12864, @function
u8x8_d_st7565_lx12864:
.LVL104:
.LFB9:
	.loc 1 841 1 is_stmt 1 view -0
	.loc 1 841 1 is_stmt 0 view .LVU262
	entry	sp, 32
.LCFI9:
	.loc 1 843 3 is_stmt 1 view .LVU263
	.loc 1 841 1 is_stmt 0 view .LVU264
	extui	a3, a3, 0, 8
	.loc 1 841 1 view .LVU265
	extui	a4, a4, 0, 8
	.loc 1 843 8 view .LVU266
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL105:
	.loc 1 843 6 view .LVU267
	bnez.n	a10, .L68
	.loc 1 846 5 is_stmt 1 view .LVU268
	beqi	a3, 10, .L65
	movi.n	a8, 0xd
	beq	a3, a8, .L66
	movi.n	a4, 9
.LVL106:
	.loc 1 846 5 is_stmt 0 view .LVU269
	bne	a3, a4, .L64
	.loc 1 849 2 is_stmt 1 view .LVU270
	l32r	a11, .LC30
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL107:
	.loc 1 850 2 view .LVU271
	j	.L68
.L65:
	.loc 1 852 2 view .LVU272
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL108:
	.loc 1 853 2 view .LVU273
	l32r	a11, .LC31
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL109:
	.loc 1 854 2 view .LVU274
	j	.L68
.L66:
	.loc 1 856 2 view .LVU275
	.loc 1 856 5 is_stmt 0 view .LVU276
	bnez.n	a4, .L67
	.loc 1 858 4 is_stmt 1 view .LVU277
	l32r	a11, .LC32
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL110:
	.loc 1 859 4 view .LVU278
	.loc 1 859 39 is_stmt 0 view .LVU279
	l32i.n	a3, a2, 0
.LVL111:
	.loc 1 859 19 view .LVU280
	l8ui	a3, a3, 18
	j	.L69
.L67:
	.loc 1 863 4 is_stmt 1 view .LVU281
	l32r	a11, .LC33
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL112:
	.loc 1 864 4 view .LVU282
	.loc 1 864 39 is_stmt 0 view .LVU283
	l32i.n	a3, a2, 0
	.loc 1 864 19 view .LVU284
	l8ui	a3, a3, 19
.L69:
	.loc 1 864 19 view .LVU285
	s8i	a3, a2, 34
.L68:
	.loc 1 871 10 view .LVU286
	movi.n	a10, 1
.L64:
	.loc 1 872 1 view .LVU287
	mov.n	a2, a10
.LVL113:
	.loc 1 872 1 view .LVU288
	retw.n
.LFE9:
	.size	u8x8_d_st7565_lx12864, .-u8x8_d_st7565_lx12864
	.section	.text.u8x8_d_st7565_erc12864,"ax",@progbits
	.literal_position
	.literal .LC34, u8x8_st7565_erc12864_display_info
	.literal .LC35, u8x8_d_st7565_erc12864_init_seq
	.literal .LC36, u8x8_d_st7565_flip1_seq
	.literal .LC37, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_erc12864
	.type	u8x8_d_st7565_erc12864, @function
u8x8_d_st7565_erc12864:
.LVL114:
.LFB10:
	.loc 1 933 1 is_stmt 1 view -0
	.loc 1 933 1 is_stmt 0 view .LVU290
	entry	sp, 32
.LCFI10:
	.loc 1 935 3 is_stmt 1 view .LVU291
	.loc 1 933 1 is_stmt 0 view .LVU292
	extui	a3, a3, 0, 8
	.loc 1 933 1 view .LVU293
	extui	a4, a4, 0, 8
	.loc 1 935 8 view .LVU294
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL115:
	.loc 1 935 6 view .LVU295
	bnez.n	a10, .L75
	.loc 1 938 5 is_stmt 1 view .LVU296
	beqi	a3, 10, .L72
	movi.n	a8, 0xd
	beq	a3, a8, .L73
	movi.n	a4, 9
.LVL116:
	.loc 1 938 5 is_stmt 0 view .LVU297
	bne	a3, a4, .L71
	.loc 1 941 2 is_stmt 1 view .LVU298
	l32r	a11, .LC34
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL117:
	.loc 1 942 2 view .LVU299
	j	.L75
.L72:
	.loc 1 944 2 view .LVU300
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL118:
	.loc 1 945 2 view .LVU301
	l32r	a11, .LC35
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL119:
	.loc 1 946 2 view .LVU302
	j	.L75
.L73:
	.loc 1 948 2 view .LVU303
	.loc 1 948 5 is_stmt 0 view .LVU304
	bnez.n	a4, .L74
	.loc 1 950 4 is_stmt 1 view .LVU305
	l32r	a11, .LC36
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL120:
	.loc 1 951 4 view .LVU306
	.loc 1 951 39 is_stmt 0 view .LVU307
	l32i.n	a3, a2, 0
.LVL121:
	.loc 1 951 19 view .LVU308
	l8ui	a3, a3, 18
	j	.L76
.L74:
	.loc 1 955 4 is_stmt 1 view .LVU309
	l32r	a11, .LC37
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL122:
	.loc 1 956 4 view .LVU310
	.loc 1 956 39 is_stmt 0 view .LVU311
	l32i.n	a3, a2, 0
	.loc 1 956 19 view .LVU312
	l8ui	a3, a3, 19
.L76:
	.loc 1 956 19 view .LVU313
	s8i	a3, a2, 34
.L75:
	.loc 1 963 10 view .LVU314
	movi.n	a10, 1
.L71:
	.loc 1 964 1 view .LVU315
	mov.n	a2, a10
.LVL123:
	.loc 1 964 1 view .LVU316
	retw.n
.LFE10:
	.size	u8x8_d_st7565_erc12864, .-u8x8_d_st7565_erc12864
	.section	.text.u8x8_d_st7565_erc12864_alt,"ax",@progbits
	.literal_position
	.literal .LC38, u8x8_st7565_erc12864_display_info
	.literal .LC39, u8x8_d_st7565_erc12864_alt_init_seq
	.literal .LC40, u8x8_d_st7565_flip1_seq
	.literal .LC41, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_erc12864_alt
	.type	u8x8_d_st7565_erc12864_alt, @function
u8x8_d_st7565_erc12864_alt:
.LVL124:
.LFB11:
	.loc 1 1029 1 is_stmt 1 view -0
	.loc 1 1029 1 is_stmt 0 view .LVU318
	entry	sp, 32
.LCFI11:
	.loc 1 1031 3 is_stmt 1 view .LVU319
	.loc 1 1029 1 is_stmt 0 view .LVU320
	extui	a3, a3, 0, 8
	.loc 1 1029 1 view .LVU321
	extui	a4, a4, 0, 8
	.loc 1 1031 8 view .LVU322
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL125:
	.loc 1 1031 6 view .LVU323
	bnez.n	a10, .L82
	.loc 1 1034 5 is_stmt 1 view .LVU324
	beqi	a3, 10, .L79
	movi.n	a8, 0xd
	beq	a3, a8, .L80
	movi.n	a4, 9
.LVL126:
	.loc 1 1034 5 is_stmt 0 view .LVU325
	bne	a3, a4, .L78
	.loc 1 1037 2 is_stmt 1 view .LVU326
	l32r	a11, .LC38
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL127:
	.loc 1 1038 2 view .LVU327
	j	.L82
.L79:
	.loc 1 1040 2 view .LVU328
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL128:
	.loc 1 1041 2 view .LVU329
	l32r	a11, .LC39
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL129:
	.loc 1 1042 2 view .LVU330
	j	.L82
.L80:
	.loc 1 1044 2 view .LVU331
	.loc 1 1044 5 is_stmt 0 view .LVU332
	bnez.n	a4, .L81
	.loc 1 1046 4 is_stmt 1 view .LVU333
	l32r	a11, .LC40
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL130:
	.loc 1 1047 4 view .LVU334
	.loc 1 1047 39 is_stmt 0 view .LVU335
	l32i.n	a3, a2, 0
.LVL131:
	.loc 1 1047 19 view .LVU336
	l8ui	a3, a3, 18
	j	.L83
.L81:
	.loc 1 1051 4 is_stmt 1 view .LVU337
	l32r	a11, .LC41
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL132:
	.loc 1 1052 4 view .LVU338
	.loc 1 1052 39 is_stmt 0 view .LVU339
	l32i.n	a3, a2, 0
	.loc 1 1052 19 view .LVU340
	l8ui	a3, a3, 19
.L83:
	.loc 1 1052 19 view .LVU341
	s8i	a3, a2, 34
.L82:
	.loc 1 1059 10 view .LVU342
	movi.n	a10, 1
.L78:
	.loc 1 1060 1 view .LVU343
	mov.n	a2, a10
.LVL133:
	.loc 1 1060 1 view .LVU344
	retw.n
.LFE11:
	.size	u8x8_d_st7565_erc12864_alt, .-u8x8_d_st7565_erc12864_alt
	.section	.text.u8x8_d_nt7534_tg12864r,"ax",@progbits
	.literal_position
	.literal .LC42, u8x8_st7565_lm6059_display_info
	.literal .LC43, u8x8_d_nt7534_tg12864r_init_seq
	.literal .LC44, u8x8_d_st7565_flip1_seq
	.literal .LC45, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_nt7534_tg12864r
	.type	u8x8_d_nt7534_tg12864r, @function
u8x8_d_nt7534_tg12864r:
.LVL134:
.LFB12:
	.loc 1 1100 1 is_stmt 1 view -0
	.loc 1 1100 1 is_stmt 0 view .LVU346
	entry	sp, 32
.LCFI12:
	.loc 1 1102 3 is_stmt 1 view .LVU347
	.loc 1 1100 1 is_stmt 0 view .LVU348
	extui	a3, a3, 0, 8
	.loc 1 1100 1 view .LVU349
	extui	a4, a4, 0, 8
	.loc 1 1102 8 view .LVU350
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL135:
	.loc 1 1102 6 view .LVU351
	bnez.n	a10, .L89
	.loc 1 1105 5 is_stmt 1 view .LVU352
	beqi	a3, 10, .L86
	movi.n	a8, 0xd
	beq	a3, a8, .L87
	movi.n	a4, 9
.LVL136:
	.loc 1 1105 5 is_stmt 0 view .LVU353
	bne	a3, a4, .L85
	.loc 1 1109 2 is_stmt 1 view .LVU354
	l32r	a11, .LC42
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL137:
	.loc 1 1110 2 view .LVU355
	j	.L89
.L86:
	.loc 1 1112 2 view .LVU356
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL138:
	.loc 1 1115 2 view .LVU357
	l32r	a11, .LC43
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL139:
	.loc 1 1116 2 view .LVU358
	j	.L89
.L87:
	.loc 1 1118 2 view .LVU359
	.loc 1 1118 5 is_stmt 0 view .LVU360
	bnez.n	a4, .L88
	.loc 1 1120 4 is_stmt 1 view .LVU361
	l32r	a11, .LC44
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL140:
	.loc 1 1121 4 view .LVU362
	.loc 1 1121 39 is_stmt 0 view .LVU363
	l32i.n	a3, a2, 0
.LVL141:
	.loc 1 1121 19 view .LVU364
	l8ui	a3, a3, 18
	j	.L90
.L88:
	.loc 1 1125 4 is_stmt 1 view .LVU365
	l32r	a11, .LC45
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL142:
	.loc 1 1126 4 view .LVU366
	.loc 1 1126 39 is_stmt 0 view .LVU367
	l32i.n	a3, a2, 0
	.loc 1 1126 19 view .LVU368
	l8ui	a3, a3, 19
.L90:
	.loc 1 1126 19 view .LVU369
	s8i	a3, a2, 34
.L89:
	.loc 1 1133 10 view .LVU370
	movi.n	a10, 1
.L85:
	.loc 1 1134 1 view .LVU371
	mov.n	a2, a10
.LVL143:
	.loc 1 1134 1 view .LVU372
	retw.n
.LFE12:
	.size	u8x8_d_nt7534_tg12864r, .-u8x8_d_nt7534_tg12864r
	.section	.text.u8x8_d_st7565_ea_dogm132,"ax",@progbits
	.literal_position
	.literal .LC46, u8x8_st7565_dogm132_display_info
	.literal .LC47, u8x8_d_st7565_dogm132_init_seq
	.literal .LC48, u8x8_d_st7565_flip0_seq
	.literal .LC49, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_ea_dogm132
	.type	u8x8_d_st7565_ea_dogm132, @function
u8x8_d_st7565_ea_dogm132:
.LVL144:
.LFB13:
	.loc 1 1194 1 is_stmt 1 view -0
	.loc 1 1194 1 is_stmt 0 view .LVU374
	entry	sp, 32
.LCFI13:
	.loc 1 1196 3 is_stmt 1 view .LVU375
	.loc 1 1194 1 is_stmt 0 view .LVU376
	extui	a3, a3, 0, 8
	.loc 1 1194 1 view .LVU377
	extui	a4, a4, 0, 8
	.loc 1 1196 8 view .LVU378
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL145:
	.loc 1 1196 6 view .LVU379
	bnez.n	a10, .L96
	.loc 1 1199 5 is_stmt 1 view .LVU380
	beqi	a3, 10, .L93
	movi.n	a8, 0xd
	beq	a3, a8, .L94
	movi.n	a4, 9
.LVL146:
	.loc 1 1199 5 is_stmt 0 view .LVU381
	bne	a3, a4, .L92
	.loc 1 1202 2 is_stmt 1 view .LVU382
	l32r	a11, .LC46
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL147:
	.loc 1 1203 2 view .LVU383
	j	.L96
.L93:
	.loc 1 1205 2 view .LVU384
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL148:
	.loc 1 1206 2 view .LVU385
	l32r	a11, .LC47
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL149:
	.loc 1 1207 2 view .LVU386
	j	.L96
.L94:
	.loc 1 1209 2 view .LVU387
	.loc 1 1209 5 is_stmt 0 view .LVU388
	bnez.n	a4, .L95
	.loc 1 1211 4 is_stmt 1 view .LVU389
	l32r	a11, .LC48
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL150:
	.loc 1 1212 4 view .LVU390
	.loc 1 1212 39 is_stmt 0 view .LVU391
	l32i.n	a3, a2, 0
.LVL151:
	.loc 1 1212 19 view .LVU392
	l8ui	a3, a3, 18
	j	.L97
.L95:
	.loc 1 1216 4 is_stmt 1 view .LVU393
	l32r	a11, .LC49
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL152:
	.loc 1 1217 4 view .LVU394
	.loc 1 1217 39 is_stmt 0 view .LVU395
	l32i.n	a3, a2, 0
	.loc 1 1217 19 view .LVU396
	l8ui	a3, a3, 19
.L97:
	.loc 1 1217 19 view .LVU397
	s8i	a3, a2, 34
.L96:
	.loc 1 1224 10 view .LVU398
	movi.n	a10, 1
.L92:
	.loc 1 1225 1 view .LVU399
	mov.n	a2, a10
.LVL153:
	.loc 1 1225 1 view .LVU400
	retw.n
.LFE13:
	.size	u8x8_d_st7565_ea_dogm132, .-u8x8_d_st7565_ea_dogm132
	.section	.rodata.u8x8_d_st7565_dogm132_init_seq,"a"
	.type	u8x8_d_st7565_dogm132_init_seq, @object
	.size	u8x8_d_st7565_dogm132_init_seq, 33
u8x8_d_st7565_dogm132_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	31
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_dogm132_display_info,"a"
	.align	4
	.type	u8x8_st7565_dogm132_display_info, @object
	.size	u8x8_st7565_dogm132_display_info, 24
u8x8_st7565_dogm132_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	17
	.byte	4
	.byte	0
	.byte	0
	.short	132
	.short	32
	.section	.rodata.u8x8_d_nt7534_tg12864r_init_seq,"a"
	.type	u8x8_d_nt7534_tg12864r_init_seq, @object
	.size	u8x8_d_nt7534_tg12864r_init_seq, 29
u8x8_d_nt7534_tg12864r_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	96
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	9
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_erc12864_alt_init_seq,"a"
	.type	u8x8_d_st7565_erc12864_alt_init_seq, @object
	.size	u8x8_d_st7565_erc12864_alt_init_seq, 33
u8x8_d_st7565_erc12864_alt_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	5
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_erc12864_display_info,"a"
	.align	4
	.type	u8x8_st7565_erc12864_display_info, @object
	.size	u8x8_st7565_erc12864_display_info, 24
u8x8_st7565_erc12864_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	0
	.byte	4
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_erc12864_init_seq,"a"
	.type	u8x8_d_st7565_erc12864_init_seq, @object
	.size	u8x8_d_st7565_erc12864_init_seq, 33
u8x8_d_st7565_erc12864_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_lx12864_display_info,"a"
	.align	4
	.type	u8x8_st7565_lx12864_display_info, @object
	.size	u8x8_st7565_lx12864_display_info, 24
u8x8_st7565_lx12864_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	1
	.byte	3
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_lx12864_init_seq,"a"
	.type	u8x8_d_st7565_lx12864_init_seq, @object
	.size	u8x8_d_st7565_lx12864_init_seq, 33
u8x8_d_st7565_lx12864_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	96
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	8
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_lm6059_display_info,"a"
	.align	4
	.type	u8x8_st7565_lm6059_display_info, @object
	.size	u8x8_st7565_lm6059_display_info, 24
u8x8_st7565_lm6059_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	1
	.byte	3
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_lm6059_init_seq,"a"
	.type	u8x8_d_st7565_lm6059_init_seq, @object
	.size	u8x8_d_st7565_lm6059_init_seq, 33
u8x8_d_st7565_lm6059_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	96
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_nhd_c12864_init_seq,"a"
	.type	u8x8_d_st7565_nhd_c12864_init_seq, @object
	.size	u8x8_d_st7565_nhd_c12864_init_seq, 33
u8x8_d_st7565_nhd_c12864_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	-76
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_nhd_c12864_display_info,"a"
	.align	4
	.type	u8x8_st7565_nhd_c12864_display_info, @object
	.size	u8x8_st7565_nhd_c12864_display_info, 24
u8x8_st7565_nhd_c12864_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	4
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_nhd_c12832_init_seq,"a"
	.type	u8x8_d_st7565_nhd_c12832_init_seq, @object
	.size	u8x8_d_st7565_nhd_c12832_init_seq, 33
u8x8_d_st7565_nhd_c12832_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	10
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_128x32_display_info,"a"
	.align	4
	.type	u8x8_st7565_128x32_display_info, @object
	.size	u8x8_st7565_128x32_display_info, 24
u8x8_st7565_128x32_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	4
	.byte	4
	.byte	0
	.short	128
	.short	32
	.section	.rodata.u8x8_d_st7565_zolen_128x64_init_seq,"a"
	.type	u8x8_d_st7565_zolen_128x64_init_seq, @object
	.size	u8x8_d_st7565_zolen_128x64_init_seq, 33
u8x8_d_st7565_zolen_128x64_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	7
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_64128n_display_info,"a"
	.align	4
	.type	u8x8_st7565_64128n_display_info, @object
	.size	u8x8_st7565_64128n_display_info, 24
u8x8_st7565_64128n_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	4
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_64128n_init_seq,"a"
	.type	u8x8_d_st7565_64128n_init_seq, @object
	.size	u8x8_d_st7565_64128n_init_seq, 29
u8x8_d_st7565_64128n_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-94
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	64
	.byte	21
	.byte	44
	.byte	21
	.byte	46
	.byte	21
	.byte	47
	.byte	21
	.byte	16
	.byte	21
	.byte	-90
	.byte	21
	.byte	-127
	.byte	21
	.byte	30
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_lm6063_init_seq,"a"
	.type	u8x8_d_st7565_lm6063_init_seq, @object
	.size	u8x8_d_st7565_lm6063_init_seq, 33
u8x8_d_st7565_lm6063_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	12
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_dogm128_init_seq,"a"
	.type	u8x8_d_st7565_dogm128_init_seq, @object
	.size	u8x8_d_st7565_dogm128_init_seq, 33
u8x8_d_st7565_dogm128_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_128x64_display_info,"a"
	.align	4
	.type	u8x8_st7565_128x64_display_info, @object
	.size	u8x8_st7565_128x64_display_info, 24
u8x8_st7565_128x64_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	0
	.byte	4
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_zflip1_seq,"a"
	.type	u8x8_d_st7565_zflip1_seq, @object
	.size	u8x8_d_st7565_zflip1_seq, 7
u8x8_d_st7565_zflip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_zflip0_seq,"a"
	.type	u8x8_d_st7565_zflip0_seq, @object
	.size	u8x8_d_st7565_zflip0_seq, 7
u8x8_d_st7565_zflip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_flip1_seq,"a"
	.type	u8x8_d_st7565_flip1_seq, @object
	.size	u8x8_d_st7565_flip1_seq, 7
u8x8_d_st7565_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_flip0_seq,"a"
	.type	u8x8_d_st7565_flip0_seq, @object
	.size	u8x8_d_st7565_flip0_seq, 7
u8x8_d_st7565_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_powersave1_seq,"a"
	.type	u8x8_d_st7565_powersave1_seq, @object
	.size	u8x8_d_st7565_powersave1_seq, 7
u8x8_d_st7565_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_powersave0_seq,"a"
	.type	u8x8_d_st7565_powersave0_seq, @object
	.size	u8x8_d_st7565_powersave0_seq, 7
u8x8_d_st7565_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-92
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
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ce4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF244
	.byte	0xc
	.4byte	.LASF245
	.4byte	.LASF246
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
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0xa63
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2b
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_powersave0_seq
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_powersave1_seq
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x3b
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x43
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0x4b
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zflip0_seq
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0x53
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zflip1_seq
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x64_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb06
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xaf6
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x1
	.byte	0xb8
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_dogm128_init_seq
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x1
	.byte	0xfb
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lm6063_init_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb3f
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0xb2f
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x13d
	.byte	0x16
	.4byte	0xb3f
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_64128n_init_seq
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x17b
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_64128n_display_info
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1b8
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zolen_128x64_init_seq
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1fb
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x32_display_info
	.uleb128 0x14
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x214
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_nhd_c12832_init_seq
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x255
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_nhd_c12864_display_info
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x26e
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_nhd_c12864_init_seq
	.uleb128 0x14
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x2b7
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lm6059_init_seq
	.uleb128 0x14
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x2d5
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_lm6059_display_info
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x312
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lx12864_init_seq
	.uleb128 0x14
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x330
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_lx12864_display_info
	.uleb128 0x14
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x36e
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_erc12864_init_seq
	.uleb128 0x14
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x38c
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_erc12864_display_info
	.uleb128 0x14
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x3cc
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_erc12864_alt_init_seq
	.uleb128 0x14
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x42f
	.byte	0x16
	.4byte	0xb3f
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_nt7534_tg12864r_init_seq
	.uleb128 0x14
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x474
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_dogm132_display_info
	.uleb128 0x14
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x48d
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_dogm132_init_seq
	.uleb128 0x15
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x4a9
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9b
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x4a9
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x4a9
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x4a9
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x4a9
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL145
	.4byte	0x192b
	.4byte	0xd16
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
	.4byte	.LVL147
	.4byte	0x1c7f
	.4byte	0xd33
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
	.4byte	u8x8_st7565_dogm132_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL148
	.4byte	0x1c8c
	.4byte	0xd47
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL149
	.4byte	0x1c99
	.4byte	0xd64
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
	.4byte	u8x8_d_st7565_dogm132_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL150
	.4byte	0x1c99
	.4byte	0xd81
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL152
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x44b
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeaf
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x44b
	.byte	0x28
	.4byte	0x36e
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x44b
	.byte	0x36
	.4byte	0x81
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x44b
	.byte	0x43
	.4byte	0x81
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x44b
	.byte	0x52
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL135
	.4byte	0x192b
	.4byte	0xe2a
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
	.4byte	.LVL137
	.4byte	0x1c7f
	.4byte	0xe47
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
	.4byte	u8x8_st7565_lm6059_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL138
	.4byte	0x1c8c
	.4byte	0xe5b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL139
	.4byte	0x1c99
	.4byte	0xe78
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
	.4byte	u8x8_d_nt7534_tg12864r_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL140
	.4byte	0x1c99
	.4byte	0xe95
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL142
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x404
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc3
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x404
	.byte	0x2c
	.4byte	0x36e
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x404
	.byte	0x3a
	.4byte	0x81
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x404
	.byte	0x47
	.4byte	0x81
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x404
	.byte	0x56
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL125
	.4byte	0x192b
	.4byte	0xf3e
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
	.4byte	.LVL127
	.4byte	0x1c7f
	.4byte	0xf5b
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
	.4byte	u8x8_st7565_erc12864_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL128
	.4byte	0x1c8c
	.4byte	0xf6f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL129
	.4byte	0x1c99
	.4byte	0xf8c
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
	.4byte	u8x8_d_st7565_erc12864_alt_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL130
	.4byte	0x1c99
	.4byte	0xfa9
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL132
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x3a4
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d7
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x3a4
	.byte	0x28
	.4byte	0x36e
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x3a4
	.byte	0x36
	.4byte	0x81
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x3a4
	.byte	0x43
	.4byte	0x81
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x3a4
	.byte	0x52
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL115
	.4byte	0x192b
	.4byte	0x1052
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
	.4byte	.LVL117
	.4byte	0x1c7f
	.4byte	0x106f
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
	.4byte	u8x8_st7565_erc12864_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL118
	.4byte	0x1c8c
	.4byte	0x1083
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL119
	.4byte	0x1c99
	.4byte	0x10a0
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
	.4byte	u8x8_d_st7565_erc12864_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL120
	.4byte	0x1c99
	.4byte	0x10bd
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL122
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x348
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11eb
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x348
	.byte	0x27
	.4byte	0x36e
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x348
	.byte	0x35
	.4byte	0x81
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x348
	.byte	0x42
	.4byte	0x81
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x348
	.byte	0x51
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL105
	.4byte	0x192b
	.4byte	0x1166
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
	.4byte	.LVL107
	.4byte	0x1c7f
	.4byte	0x1183
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
	.4byte	u8x8_st7565_lx12864_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL108
	.4byte	0x1c8c
	.4byte	0x1197
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL109
	.4byte	0x1c99
	.4byte	0x11b4
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
	.4byte	u8x8_d_st7565_lx12864_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL110
	.4byte	0x1c99
	.4byte	0x11d1
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL112
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x2ed
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ff
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x2ed
	.byte	0x26
	.4byte	0x36e
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x2ed
	.byte	0x34
	.4byte	0x81
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x2ed
	.byte	0x41
	.4byte	0x81
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x2ed
	.byte	0x50
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0x192b
	.4byte	0x127a
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
	.4byte	.LVL97
	.4byte	0x1c7f
	.4byte	0x1297
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
	.4byte	u8x8_st7565_lm6059_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL98
	.4byte	0x1c8c
	.4byte	0x12ab
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL99
	.4byte	0x1c99
	.4byte	0x12c8
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
	.4byte	u8x8_d_st7565_lm6059_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL100
	.4byte	0x1c99
	.4byte	0x12e5
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL102
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x2ae
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1385
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x2ae
	.byte	0x28
	.4byte	0x36e
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.2byte	0x2ae
	.byte	0x36
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x2ae
	.byte	0x43
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x2ae
	.byte	0x52
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL92
	.4byte	0x1385
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
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x28a
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.4byte	0x13cc
	.uleb128 0x1e
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x28a
	.byte	0x2a
	.4byte	0x36e
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.2byte	0x28a
	.byte	0x38
	.4byte	0x81
	.uleb128 0x1e
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x28a
	.byte	0x45
	.4byte	0x81
	.uleb128 0x1e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x28a
	.byte	0x54
	.4byte	0xaa
	.byte	0
	.uleb128 0x15
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x230
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e0
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x230
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x230
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x230
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x230
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0x192b
	.4byte	0x145b
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
	.4byte	.LVL72
	.4byte	0x1c7f
	.4byte	0x1478
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
	.4byte	u8x8_st7565_128x32_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL73
	.4byte	0x1c8c
	.4byte	0x148c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL74
	.4byte	0x1c99
	.4byte	0x14a9
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
	.4byte	u8x8_d_st7565_nhd_c12832_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0x1c99
	.4byte	0x14c6
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL77
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1d4
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f4
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x1d4
	.byte	0x2c
	.4byte	0x36e
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1d4
	.byte	0x3a
	.4byte	0x81
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x1d4
	.byte	0x47
	.4byte	0x81
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x1d4
	.byte	0x56
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL60
	.4byte	0x192b
	.4byte	0x156f
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
	.4byte	.LVL62
	.4byte	0x1c7f
	.4byte	0x158c
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
	.4byte	u8x8_st7565_128x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL63
	.4byte	0x1c8c
	.4byte	0x15a0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0x1c99
	.4byte	0x15bd
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
	.4byte	u8x8_d_st7565_zolen_128x64_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL65
	.4byte	0x1c99
	.4byte	0x15da
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
	.4byte	u8x8_d_st7565_zflip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_zflip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x193
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1708
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x193
	.byte	0x26
	.4byte	0x36e
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x193
	.byte	0x34
	.4byte	0x81
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x193
	.byte	0x41
	.4byte	0x81
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x193
	.byte	0x50
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0x192b
	.4byte	0x1683
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
	.4byte	.LVL52
	.4byte	0x1c7f
	.4byte	0x16a0
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
	.4byte	u8x8_st7565_64128n_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL53
	.4byte	0x1c8c
	.4byte	0x16b4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL54
	.4byte	0x1c99
	.4byte	0x16d1
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
	.4byte	u8x8_d_st7565_64128n_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x1c99
	.4byte	0x16ee
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL57
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x117
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x181c
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x117
	.byte	0x26
	.4byte	0x36e
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x117
	.byte	0x34
	.4byte	0x81
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x117
	.byte	0x41
	.4byte	0x81
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x117
	.byte	0x50
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0x192b
	.4byte	0x1797
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
	.4byte	.LVL42
	.4byte	0x1c7f
	.4byte	0x17b4
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
	.4byte	u8x8_st7565_128x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x1c8c
	.4byte	0x17c8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL44
	.4byte	0x1c99
	.4byte	0x17e5
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
	.4byte	u8x8_d_st7565_lm6063_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0x1c99
	.4byte	0x1802
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL47
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF233
	.byte	0x1
	.byte	0xd4
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x192b
	.uleb128 0x21
	.4byte	.LASF219
	.byte	0x1
	.byte	0xd4
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.byte	0xd4
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x21
	.4byte	.LASF220
	.byte	0x1
	.byte	0xd4
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x23
	.4byte	.LASF223
	.byte	0x1
	.byte	0xd4
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0x192b
	.4byte	0x18a6
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
	.4byte	.LVL32
	.4byte	0x1c7f
	.4byte	0x18c3
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
	.4byte	u8x8_st7565_128x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x1c8c
	.4byte	0x18d7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0x1c99
	.4byte	0x18f4
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
	.4byte	u8x8_d_st7565_dogm128_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x1c99
	.4byte	0x1911
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF235
	.byte	0x1
	.byte	0x73
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.4byte	0x198d
	.uleb128 0x25
	.4byte	.LASF219
	.byte	0x1
	.byte	0x73
	.byte	0x26
	.4byte	0x36e
	.uleb128 0x26
	.string	"msg"
	.byte	0x1
	.byte	0x73
	.byte	0x34
	.4byte	0x81
	.uleb128 0x25
	.4byte	.LASF220
	.byte	0x1
	.byte	0x73
	.byte	0x41
	.4byte	0x81
	.uleb128 0x25
	.4byte	.LASF223
	.byte	0x1
	.byte	0x73
	.byte	0x50
	.4byte	0xaa
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0x75
	.byte	0xb
	.4byte	0x81
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.byte	0x75
	.byte	0xe
	.4byte	0x81
	.uleb128 0x27
	.string	"ptr"
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x28
	.4byte	0x192b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b51
	.uleb128 0x29
	.4byte	0x193c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x29
	.4byte	0x1948
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x29
	.4byte	0x1954
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x29
	.4byte	0x1960
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2a
	.4byte	0x196c
	.uleb128 0x2a
	.4byte	0x1976
	.uleb128 0x2a
	.4byte	0x1980
	.uleb128 0x2b
	.4byte	0x192b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1ae2
	.uleb128 0x29
	.4byte	0x1948
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x29
	.4byte	0x1960
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x29
	.4byte	0x1954
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.4byte	0x193c
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2d
	.4byte	0x196c
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2d
	.4byte	0x1976
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2d
	.4byte	0x1980
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x1ca6
	.4byte	0x1a6c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x1cb3
	.4byte	0x1a8b
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
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x1cb3
	.4byte	0x1aa7
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
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x1cb3
	.4byte	0x1ac4
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
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xb0
	.byte	0x21
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x1cc0
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
	.4byte	0x1c99
	.4byte	0x1af6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x1ca6
	.4byte	0x1b0a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0x1cb3
	.4byte	0x1b24
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
	.4byte	.LVL26
	.4byte	0x1ccd
	.4byte	0x1b40
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
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0x1cda
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x1385
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c7f
	.uleb128 0x29
	.4byte	0x1397
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x29
	.4byte	0x13a4
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x29
	.4byte	0x13b1
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x2e
	.4byte	0x13be
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	0x1385
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x1bf1
	.uleb128 0x29
	.4byte	0x13a4
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x29
	.4byte	0x13b1
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x29
	.4byte	0x13be
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x29
	.4byte	0x1397
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x1b
	.4byte	.LVL86
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL80
	.4byte	0x192b
	.4byte	0x1c17
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
	.4byte	.LVL82
	.4byte	0x1c7f
	.4byte	0x1c34
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
	.4byte	u8x8_st7565_nhd_c12864_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0x1c8c
	.4byte	0x1c48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0x1c99
	.4byte	0x1c65
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
	.4byte	u8x8_d_st7565_nhd_c12864_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL89
	.4byte	0x1c99
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
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x2f
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x2f
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x2f
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x2f
	.4byte	.LASF243
	.4byte	.LASF243
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
.LVUS49:
	.uleb128 0
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 0
.LLST49:
	.4byte	.LVL144
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 0
.LLST50:
	.4byte	.LVL144
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 0
.LLST51:
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 0
.LLST46:
	.4byte	.LVL134
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 0
.LLST47:
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST48:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 0
.LLST43:
	.4byte	.LVL124
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 0
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 0
.LLST44:
	.4byte	.LVL124
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 0
.LLST45:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 0
	.uleb128 .LVU316
	.uleb128 .LVU316
	.uleb128 0
.LLST40:
	.4byte	.LVL114
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST41:
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 0
.LLST42:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 0
.LLST37:
	.4byte	.LVL104
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 0
.LLST38:
	.4byte	.LVL104
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 0
.LLST39:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 0
.LLST34:
	.4byte	.LVL94
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 0
.LLST35:
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 0
.LLST36:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 0
.LLST33:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 0
.LLST23:
	.4byte	.LVL69
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST24:
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 0
.LLST25:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST21:
	.4byte	.LVL59
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 0
.LLST22:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST15:
	.4byte	.LVL39
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
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
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
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
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
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
	.uleb128 .LVU37
	.uleb128 .LVU37
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
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU54
	.uleb128 .LVU54
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU11
	.uleb128 .LVU46
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU11
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU46
.LLST5:
	.4byte	.LVL3
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
	.uleb128 .LVU11
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU46
.LLST6:
	.4byte	.LVL3
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
	.uleb128 .LVU11
	.uleb128 .LVU46
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU46
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
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
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU26
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU46
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU32
	.uleb128 .LVU46
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 0
.LLST26:
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 0
.LLST27:
	.4byte	.LVL79
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 0
.LLST28:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU214
	.uleb128 .LVU218
.LLST29:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU214
	.uleb128 .LVU218
.LLST30:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU214
	.uleb128 .LVU218
.LLST31:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU214
	.uleb128 .LVU218
.LLST32:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF229:
	.string	"u8x8_d_st7565_nhd_c12832"
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
.LASF220:
	.string	"arg_int"
.LASF246:
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
.LASF231:
	.string	"u8x8_d_st7565_64128n"
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
.LASF214:
	.string	"u8x8_st7565_erc12864_display_info"
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
.LASF199:
	.string	"u8x8_st7565_128x64_display_info"
.LASF27:
	.string	"utf8_state"
.LASF126:
	.string	"u8x8_font_victoriabold8_n"
.LASF196:
	.string	"u8x8_d_st7565_flip1_seq"
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
.LASF227:
	.string	"u8x8_d_st7565_lm6059"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF123:
	.string	"u8x8_font_torussansbold8_n"
.LASF16:
	.string	"display_cb"
.LASF122:
	.string	"u8x8_font_torussansbold8_r"
.LASF213:
	.string	"u8x8_d_st7565_erc12864_init_seq"
.LASF210:
	.string	"u8x8_st7565_lm6059_display_info"
.LASF124:
	.string	"u8x8_font_torussansbold8_u"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF128:
	.string	"u8x8_font_victoriamedium8_r"
.LASF203:
	.string	"u8x8_st7565_64128n_display_info"
.LASF194:
	.string	"u8x8_d_st7565_powersave1_seq"
.LASF130:
	.string	"u8x8_font_victoriamedium8_u"
.LASF241:
	.string	"u8x8_cad_SendData"
.LASF94:
	.string	"u8x8_font_open_iconic_thing_2x2"
.LASF112:
	.string	"u8x8_font_artossans8_n"
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
.LASF59:
	.string	"y_pos"
.LASF135:
	.string	"u8x8_font_courR18_2x3_r"
.LASF136:
	.string	"u8x8_font_courR18_2x3_n"
.LASF173:
	.string	"u8x8_font_pcsenior_n"
.LASF215:
	.string	"u8x8_d_st7565_erc12864_alt_init_seq"
.LASF172:
	.string	"u8x8_font_pcsenior_r"
.LASF174:
	.string	"u8x8_font_pcsenior_u"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF211:
	.string	"u8x8_d_st7565_lx12864_init_seq"
.LASF160:
	.string	"u8x8_font_inb21_2x4_n"
.LASF224:
	.string	"u8x8_d_st7565_erc12864_alt"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF236:
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
.LASF239:
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
.LASF198:
	.string	"u8x8_d_st7565_zflip1_seq"
.LASF218:
	.string	"u8x8_d_st7565_dogm132_init_seq"
.LASF77:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF202:
	.string	"u8x8_d_st7565_64128n_init_seq"
.LASF175:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF170:
	.string	"u8x8_font_pressstart2p_u"
.LASF177:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF232:
	.string	"u8x8_d_st7565_lm6063"
.LASF5:
	.string	"short unsigned int"
.LASF176:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF178:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF221:
	.string	"u8x8_d_st7565_ea_dogm132"
.LASF207:
	.string	"u8x8_st7565_nhd_c12864_display_info"
.LASF96:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF161:
	.string	"u8x8_font_inb33_3x6_f"
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
.LASF195:
	.string	"u8x8_d_st7565_flip0_seq"
.LASF155:
	.string	"u8x8_font_inr46_4x8_f"
.LASF234:
	.string	"u8x8_d_st7565_nhd_c12864"
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
.LASF204:
	.string	"u8x8_d_st7565_zolen_128x64_init_seq"
.LASF209:
	.string	"u8x8_d_st7565_lm6059_init_seq"
.LASF23:
	.string	"x_offset"
.LASF237:
	.string	"u8x8_d_helper_display_init"
.LASF208:
	.string	"u8x8_d_st7565_nhd_c12864_init_seq"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF50:
	.string	"tile_height"
.LASF148:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
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
.LASF206:
	.string	"u8x8_d_st7565_nhd_c12832_init_seq"
.LASF2:
	.string	"short int"
.LASF219:
	.string	"u8x8"
.LASF86:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF205:
	.string	"u8x8_st7565_128x32_display_info"
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
.LASF225:
	.string	"u8x8_d_st7565_erc12864"
.LASF47:
	.string	"data_setup_time_ns"
.LASF150:
	.string	"u8x8_font_inr21_2x4_r"
.LASF75:
	.string	"u8x8_font_8x13B_1x2_f"
.LASF235:
	.string	"u8x8_d_st7565_common"
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
.LASF193:
	.string	"u8x8_d_st7565_powersave0_seq"
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
.LASF233:
	.string	"u8x8_d_st7565_ea_dogm128"
.LASF168:
	.string	"u8x8_font_pressstart2p_r"
.LASF243:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF228:
	.string	"u8x8_d_st7565_jlx12864"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF244:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF200:
	.string	"u8x8_d_st7565_dogm128_init_seq"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF223:
	.string	"arg_ptr"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF230:
	.string	"u8x8_d_st7565_zolen_128x64"
.LASF87:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF212:
	.string	"u8x8_st7565_lx12864_display_info"
.LASF10:
	.string	"uint8_t"
.LASF89:
	.string	"u8x8_font_open_iconic_weather_1x1"
.LASF26:
	.string	"i2c_started"
.LASF197:
	.string	"u8x8_d_st7565_zflip0_seq"
.LASF53:
	.string	"pixel_width"
.LASF91:
	.string	"u8x8_font_open_iconic_check_2x2"
.LASF216:
	.string	"u8x8_d_nt7534_tg12864r_init_seq"
.LASF217:
	.string	"u8x8_st7565_dogm132_display_info"
.LASF49:
	.string	"tile_width"
.LASF66:
	.string	"u8x8_font_5x7_f"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF137:
	.string	"u8x8_font_courB24_3x4_f"
.LASF245:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st7565.c"
.LASF240:
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
.LASF222:
	.string	"u8x8_d_nt7534_tg12864r"
.LASF118:
	.string	"u8x8_font_chroma48medium8_n"
.LASF242:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF226:
	.string	"u8x8_d_st7565_lx12864"
.LASF54:
	.string	"pixel_height"
.LASF238:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF201:
	.string	"u8x8_d_st7565_lm6063_init_seq"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
