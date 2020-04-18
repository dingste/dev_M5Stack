	.file	"u8x8_d_st7567.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7567_enh_dg128064_generic,"ax",@progbits
	.literal_position
	.literal .LC0, .L4
	.literal .LC1, u8x8_st7567_enh_dg128064_display_info
	.literal .LC2, u8x8_st7567_enh_dg128064_init_seq
	.literal .LC3, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC4, u8x8_d_st7567_132x64_powersave1_seq
	.align	4
	.type	u8x8_d_st7567_enh_dg128064_generic, @function
u8x8_d_st7567_enh_dg128064_generic:
.LVL0:
.LFB2:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st7567.c"
	.loc 1 462 1 view -0
	.loc 1 462 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 463 3 is_stmt 1 view .LVU2
	.loc 1 464 3 view .LVU3
	.loc 1 465 3 view .LVU4
	addi	a3, a3, -9
.LVL1:
	.loc 1 465 3 is_stmt 0 view .LVU5
	extui	a3, a3, 0, 8
	bgeui	a3, 7, .L12
	l32r	a6, .LC0
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_enh_dg128064_generic,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L12
	.word	.L12
	.word	.L5
	.word	.L3
	.section	.text.u8x8_d_st7567_enh_dg128064_generic
.L8:
	.loc 1 468 7 is_stmt 1 view .LVU6
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL2:
	.loc 1 469 7 view .LVU7
	j	.L14
.L7:
	.loc 1 471 7 view .LVU8
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL3:
	.loc 1 472 7 view .LVU9
	l32r	a11, .LC2
	j	.L16
.L6:
	.loc 1 475 7 view .LVU10
	.loc 1 476 2 is_stmt 0 view .LVU11
	l32r	a11, .LC3
	.loc 1 475 10 view .LVU12
	beqz.n	a4, .L16
.L9:
	.loc 1 478 2 is_stmt 1 view .LVU13
	l32r	a11, .LC4
.L16:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL4:
	j	.L14
.L5:
	.loc 1 482 7 view .LVU14
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL5:
	.loc 1 483 7 view .LVU15
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL6:
	.loc 1 484 7 view .LVU16
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL7:
.L15:
	.loc 1 485 7 view .LVU17
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL8:
.L14:
	.loc 1 486 7 view .LVU18
	.loc 1 522 10 is_stmt 0 view .LVU19
	movi.n	a2, 1
.LVL9:
	.loc 1 486 7 view .LVU20
	j	.L2
.LVL10:
.L3:
	.loc 1 489 7 is_stmt 1 view .LVU21
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL11:
	.loc 1 491 7 view .LVU22
	.loc 1 491 9 is_stmt 0 view .LVU23
	l8ui	a3, a5, 5
.LVL12:
	.loc 1 492 7 is_stmt 1 view .LVU24
	.loc 1 493 9 is_stmt 0 view .LVU25
	l8ui	a6, a2, 34
	.loc 1 492 9 view .LVU26
	slli	a3, a3, 3
.LVL13:
	.loc 1 493 7 is_stmt 1 view .LVU27
	.loc 1 493 9 is_stmt 0 view .LVU28
	add.n	a3, a3, a6
.LVL14:
	.loc 1 493 9 view .LVU29
	extui	a6, a3, 0, 8
.LVL15:
	.loc 1 494 7 is_stmt 1 view .LVU30
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL16:
	.loc 1 494 7 is_stmt 0 view .LVU31
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL17:
	.loc 1 495 7 is_stmt 1 view .LVU32
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 496 7 view .LVU33
	l8ui	a3, a5, 6
	movi	a11, 0xb0
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL19:
	.loc 1 498 7 view .LVU34
	.loc 1 498 9 is_stmt 0 view .LVU35
	l8ui	a3, a5, 4
.LVL20:
	.loc 1 499 7 is_stmt 1 view .LVU36
	.loc 1 506 10 is_stmt 0 view .LVU37
	movi	a9, 0x84
	.loc 1 499 9 view .LVU38
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL21:
	.loc 1 500 7 is_stmt 1 view .LVU39
	.loc 1 506 14 is_stmt 0 view .LVU40
	add.n	a8, a6, a3
	.loc 1 500 11 view .LVU41
	l32i.n	a5, a5, 0
.LVL22:
	.loc 1 506 7 is_stmt 1 view .LVU42
	.loc 1 506 10 is_stmt 0 view .LVU43
	bge	a9, a8, .L11
	.loc 1 508 2 is_stmt 1 view .LVU44
.LVL23:
	.loc 1 509 2 view .LVU45
	.loc 1 509 4 is_stmt 0 view .LVU46
	movi	a3, -0x7c
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL24:
.L11:
	.loc 1 511 7 is_stmt 1 discriminator 1 view .LVU47
	.loc 1 513 2 discriminator 1 view .LVU48
	.loc 1 514 9 is_stmt 0 discriminator 1 view .LVU49
	addi.n	a4, a4, -1
.LVL25:
	.loc 1 513 2 discriminator 1 view .LVU50
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 514 9 discriminator 1 view .LVU51
	extui	a4, a4, 0, 8
.LVL26:
	.loc 1 513 2 discriminator 1 view .LVU52
	call8	u8x8_cad_SendData
.LVL27:
	.loc 1 514 2 is_stmt 1 discriminator 1 view .LVU53
	.loc 1 515 7 is_stmt 0 discriminator 1 view .LVU54
	bnez.n	a4, .L11
	.loc 1 517 7 is_stmt 1 view .LVU55
	j	.L15
.LVL28:
.L12:
	.loc 1 520 14 is_stmt 0 view .LVU56
	movi.n	a2, 0
.LVL29:
.L2:
	.loc 1 523 1 view .LVU57
	retw.n
.LFE2:
	.size	u8x8_d_st7567_enh_dg128064_generic, .-u8x8_d_st7567_enh_dg128064_generic
	.section	.text.u8x8_d_st7567_pi_132x64,"ax",@progbits
	.literal_position
	.literal .LC5, .L20
	.literal .LC6, u8x8_st7567_132x64_display_info
	.literal .LC7, u8x8_d_st7567_132x64_init_seq
	.literal .LC8, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC9, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC10, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC11, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_pi_132x64
	.type	u8x8_d_st7567_pi_132x64, @function
u8x8_d_st7567_pi_132x64:
.LVL30:
.LFB0:
	.loc 1 154 1 is_stmt 1 view -0
	.loc 1 154 1 is_stmt 0 view .LVU59
	entry	sp, 32
.LCFI1:
	.loc 1 155 3 is_stmt 1 view .LVU60
	.loc 1 156 3 view .LVU61
	.loc 1 157 3 view .LVU62
	addi	a3, a3, -9
.LVL31:
	.loc 1 157 3 is_stmt 0 view .LVU63
	extui	a3, a3, 0, 8
	.loc 1 154 1 view .LVU64
	extui	a4, a4, 0, 8
	.loc 1 157 3 view .LVU65
	bgeui	a3, 7, .L30
	l32r	a6, .LC5
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_pi_132x64,"a",@progbits
	.align	4
	.align	4
.L20:
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L30
	.word	.L22
	.word	.L21
	.word	.L19
	.section	.text.u8x8_d_st7567_pi_132x64
.L25:
	.loc 1 160 7 is_stmt 1 view .LVU66
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL32:
	.loc 1 161 7 view .LVU67
	j	.L32
.L24:
	.loc 1 163 7 view .LVU68
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL33:
	.loc 1 164 7 view .LVU69
	l32r	a11, .LC7
	j	.L34
.L23:
	.loc 1 167 7 view .LVU70
	.loc 1 168 2 is_stmt 0 view .LVU71
	l32r	a11, .LC8
	.loc 1 167 10 view .LVU72
	beqz.n	a4, .L34
.L26:
	.loc 1 170 2 is_stmt 1 view .LVU73
	l32r	a11, .LC9
.L34:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL34:
	j	.L32
.L22:
	.loc 1 173 7 view .LVU74
	.loc 1 173 10 is_stmt 0 view .LVU75
	bnez.n	a4, .L27
	.loc 1 175 2 is_stmt 1 view .LVU76
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL35:
	.loc 1 176 2 view .LVU77
	.loc 1 176 37 is_stmt 0 view .LVU78
	l32i.n	a3, a2, 0
	.loc 1 176 17 view .LVU79
	l8ui	a3, a3, 18
	j	.L35
.L27:
	.loc 1 180 2 is_stmt 1 view .LVU80
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL36:
	.loc 1 181 2 view .LVU81
	.loc 1 181 37 is_stmt 0 view .LVU82
	l32i.n	a3, a2, 0
	.loc 1 181 17 view .LVU83
	l8ui	a3, a3, 19
.L35:
	.loc 1 181 17 view .LVU84
	s8i	a3, a2, 34
	j	.L32
.L21:
	.loc 1 186 7 is_stmt 1 view .LVU85
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL37:
	.loc 1 187 7 view .LVU86
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL38:
	.loc 1 188 7 view .LVU87
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL39:
.L33:
	.loc 1 189 7 view .LVU88
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL40:
.L32:
	.loc 1 190 7 view .LVU89
	.loc 1 226 10 is_stmt 0 view .LVU90
	movi.n	a2, 1
.LVL41:
	.loc 1 190 7 view .LVU91
	j	.L18
.LVL42:
.L19:
	.loc 1 193 7 is_stmt 1 view .LVU92
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL43:
	.loc 1 195 7 view .LVU93
	.loc 1 195 9 is_stmt 0 view .LVU94
	l8ui	a3, a5, 5
.LVL44:
	.loc 1 196 7 is_stmt 1 view .LVU95
	.loc 1 197 9 is_stmt 0 view .LVU96
	l8ui	a6, a2, 34
	.loc 1 196 9 view .LVU97
	slli	a3, a3, 3
.LVL45:
	.loc 1 197 7 is_stmt 1 view .LVU98
	.loc 1 197 9 is_stmt 0 view .LVU99
	add.n	a3, a3, a6
.LVL46:
	.loc 1 197 9 view .LVU100
	extui	a6, a3, 0, 8
.LVL47:
	.loc 1 198 7 is_stmt 1 view .LVU101
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL48:
	.loc 1 198 7 is_stmt 0 view .LVU102
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL49:
	.loc 1 199 7 is_stmt 1 view .LVU103
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL50:
	.loc 1 200 7 view .LVU104
	l8ui	a3, a5, 6
	movi	a11, 0xb0
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL51:
	.loc 1 202 7 view .LVU105
	.loc 1 202 9 is_stmt 0 view .LVU106
	l8ui	a3, a5, 4
.LVL52:
	.loc 1 203 7 is_stmt 1 view .LVU107
	.loc 1 210 10 is_stmt 0 view .LVU108
	movi	a9, 0x84
	.loc 1 203 9 view .LVU109
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL53:
	.loc 1 204 7 is_stmt 1 view .LVU110
	.loc 1 210 14 is_stmt 0 view .LVU111
	add.n	a8, a6, a3
	.loc 1 204 11 view .LVU112
	l32i.n	a5, a5, 0
.LVL54:
	.loc 1 210 7 is_stmt 1 view .LVU113
	.loc 1 210 10 is_stmt 0 view .LVU114
	bge	a9, a8, .L29
	.loc 1 212 2 is_stmt 1 view .LVU115
.LVL55:
	.loc 1 213 2 view .LVU116
	.loc 1 213 4 is_stmt 0 view .LVU117
	movi	a3, -0x7c
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL56:
.L29:
	.loc 1 215 7 is_stmt 1 discriminator 1 view .LVU118
	.loc 1 217 2 discriminator 1 view .LVU119
	.loc 1 218 9 is_stmt 0 discriminator 1 view .LVU120
	addi.n	a4, a4, -1
.LVL57:
	.loc 1 217 2 discriminator 1 view .LVU121
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 218 9 discriminator 1 view .LVU122
	extui	a4, a4, 0, 8
.LVL58:
	.loc 1 217 2 discriminator 1 view .LVU123
	call8	u8x8_cad_SendData
.LVL59:
	.loc 1 218 2 is_stmt 1 discriminator 1 view .LVU124
	.loc 1 219 7 is_stmt 0 discriminator 1 view .LVU125
	bnez.n	a4, .L29
	.loc 1 221 7 is_stmt 1 view .LVU126
	j	.L33
.LVL60:
.L30:
	.loc 1 224 14 is_stmt 0 view .LVU127
	movi.n	a2, 0
.LVL61:
.L18:
	.loc 1 227 1 view .LVU128
	retw.n
.LFE0:
	.size	u8x8_d_st7567_pi_132x64, .-u8x8_d_st7567_pi_132x64
	.section	.text.u8x8_d_st7567_jlx12864,"ax",@progbits
	.literal_position
	.literal .LC12, .L39
	.literal .LC13, u8x8_st7567_jlx12864_display_info
	.literal .LC14, u8x8_st7567_jlx12864_init_seq
	.literal .LC15, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC16, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC17, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC18, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_jlx12864
	.type	u8x8_d_st7567_jlx12864, @function
u8x8_d_st7567_jlx12864:
.LVL62:
.LFB1:
	.loc 1 298 1 is_stmt 1 view -0
	.loc 1 298 1 is_stmt 0 view .LVU130
	entry	sp, 32
.LCFI2:
	.loc 1 299 3 is_stmt 1 view .LVU131
	.loc 1 300 3 view .LVU132
	.loc 1 301 3 view .LVU133
	addi	a3, a3, -9
.LVL63:
	.loc 1 301 3 is_stmt 0 view .LVU134
	extui	a3, a3, 0, 8
	.loc 1 298 1 view .LVU135
	extui	a4, a4, 0, 8
	.loc 1 301 3 view .LVU136
	bgeui	a3, 7, .L49
	l32r	a6, .LC12
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_jlx12864,"a",@progbits
	.align	4
	.align	4
.L39:
	.word	.L44
	.word	.L43
	.word	.L42
	.word	.L49
	.word	.L41
	.word	.L40
	.word	.L38
	.section	.text.u8x8_d_st7567_jlx12864
.L44:
	.loc 1 304 7 is_stmt 1 view .LVU137
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL64:
	.loc 1 305 7 view .LVU138
	j	.L51
.L43:
	.loc 1 307 7 view .LVU139
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL65:
	.loc 1 308 7 view .LVU140
	l32r	a11, .LC14
	j	.L53
.L42:
	.loc 1 311 7 view .LVU141
	.loc 1 312 2 is_stmt 0 view .LVU142
	l32r	a11, .LC15
	.loc 1 311 10 view .LVU143
	beqz.n	a4, .L53
.L45:
	.loc 1 314 2 is_stmt 1 view .LVU144
	l32r	a11, .LC16
.L53:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL66:
	j	.L51
.L41:
	.loc 1 317 7 view .LVU145
	.loc 1 317 10 is_stmt 0 view .LVU146
	bnez.n	a4, .L46
	.loc 1 319 2 is_stmt 1 view .LVU147
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL67:
	.loc 1 320 2 view .LVU148
	.loc 1 320 37 is_stmt 0 view .LVU149
	l32i.n	a3, a2, 0
	.loc 1 320 17 view .LVU150
	l8ui	a3, a3, 18
	j	.L54
.L46:
	.loc 1 324 2 is_stmt 1 view .LVU151
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL68:
	.loc 1 325 2 view .LVU152
	.loc 1 325 37 is_stmt 0 view .LVU153
	l32i.n	a3, a2, 0
	.loc 1 325 17 view .LVU154
	l8ui	a3, a3, 19
.L54:
	.loc 1 325 17 view .LVU155
	s8i	a3, a2, 34
	j	.L51
.L40:
	.loc 1 330 7 is_stmt 1 view .LVU156
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL69:
	.loc 1 331 7 view .LVU157
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL70:
	.loc 1 332 7 view .LVU158
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL71:
.L52:
	.loc 1 333 7 view .LVU159
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL72:
.L51:
	.loc 1 334 7 view .LVU160
	.loc 1 370 10 is_stmt 0 view .LVU161
	movi.n	a2, 1
.LVL73:
	.loc 1 334 7 view .LVU162
	j	.L37
.LVL74:
.L38:
	.loc 1 337 7 is_stmt 1 view .LVU163
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL75:
	.loc 1 339 7 view .LVU164
	.loc 1 339 9 is_stmt 0 view .LVU165
	l8ui	a3, a5, 5
.LVL76:
	.loc 1 340 7 is_stmt 1 view .LVU166
	.loc 1 341 9 is_stmt 0 view .LVU167
	l8ui	a6, a2, 34
	.loc 1 340 9 view .LVU168
	slli	a3, a3, 3
.LVL77:
	.loc 1 341 7 is_stmt 1 view .LVU169
	.loc 1 341 9 is_stmt 0 view .LVU170
	add.n	a3, a3, a6
.LVL78:
	.loc 1 341 9 view .LVU171
	extui	a6, a3, 0, 8
.LVL79:
	.loc 1 342 7 is_stmt 1 view .LVU172
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL80:
	.loc 1 342 7 is_stmt 0 view .LVU173
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL81:
	.loc 1 343 7 is_stmt 1 view .LVU174
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL82:
	.loc 1 344 7 view .LVU175
	l8ui	a3, a5, 6
	movi	a11, 0xb0
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL83:
	.loc 1 346 7 view .LVU176
	.loc 1 346 9 is_stmt 0 view .LVU177
	l8ui	a3, a5, 4
.LVL84:
	.loc 1 347 7 is_stmt 1 view .LVU178
	.loc 1 354 10 is_stmt 0 view .LVU179
	movi	a9, 0x84
	.loc 1 347 9 view .LVU180
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL85:
	.loc 1 348 7 is_stmt 1 view .LVU181
	.loc 1 354 14 is_stmt 0 view .LVU182
	add.n	a8, a6, a3
	.loc 1 348 11 view .LVU183
	l32i.n	a5, a5, 0
.LVL86:
	.loc 1 354 7 is_stmt 1 view .LVU184
	.loc 1 354 10 is_stmt 0 view .LVU185
	bge	a9, a8, .L48
	.loc 1 356 2 is_stmt 1 view .LVU186
.LVL87:
	.loc 1 357 2 view .LVU187
	.loc 1 357 4 is_stmt 0 view .LVU188
	movi	a3, -0x7c
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL88:
.L48:
	.loc 1 359 7 is_stmt 1 discriminator 1 view .LVU189
	.loc 1 361 2 discriminator 1 view .LVU190
	.loc 1 362 9 is_stmt 0 discriminator 1 view .LVU191
	addi.n	a4, a4, -1
.LVL89:
	.loc 1 361 2 discriminator 1 view .LVU192
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 362 9 discriminator 1 view .LVU193
	extui	a4, a4, 0, 8
.LVL90:
	.loc 1 361 2 discriminator 1 view .LVU194
	call8	u8x8_cad_SendData
.LVL91:
	.loc 1 362 2 is_stmt 1 discriminator 1 view .LVU195
	.loc 1 363 7 is_stmt 0 discriminator 1 view .LVU196
	bnez.n	a4, .L48
	.loc 1 365 7 is_stmt 1 view .LVU197
	j	.L52
.LVL92:
.L49:
	.loc 1 368 14 is_stmt 0 view .LVU198
	movi.n	a2, 0
.LVL93:
.L37:
	.loc 1 371 1 view .LVU199
	retw.n
.LFE1:
	.size	u8x8_d_st7567_jlx12864, .-u8x8_d_st7567_jlx12864
	.section	.text.u8x8_d_st7567_enh_dg128064,"ax",@progbits
	.literal_position
	.literal .LC19, u8x8_st7567_enh_dg128064_display_info
	.literal .LC20, u8x8_d_st7567_n_flip0_seq
	.literal .LC21, u8x8_d_st7567_n_flip1_seq
	.align	4
	.global	u8x8_d_st7567_enh_dg128064
	.type	u8x8_d_st7567_enh_dg128064, @function
u8x8_d_st7567_enh_dg128064:
.LVL94:
.LFB3:
	.loc 1 526 1 is_stmt 1 view -0
	.loc 1 526 1 is_stmt 0 view .LVU201
	entry	sp, 32
.LCFI3:
	.loc 1 527 3 is_stmt 1 view .LVU202
	.loc 1 526 1 is_stmt 0 view .LVU203
	extui	a11, a3, 0, 8
	movi.n	a8, 9
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	beq	a11, a8, .L56
	movi.n	a8, 0xd
	beq	a11, a8, .L57
	j	.L61
.L56:
	.loc 1 530 7 is_stmt 1 view .LVU204
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL95:
	.loc 1 531 7 view .LVU205
	j	.L63
.L57:
	.loc 1 533 7 view .LVU206
	.loc 1 533 10 is_stmt 0 view .LVU207
	bnez.n	a12, .L60
	.loc 1 535 2 is_stmt 1 view .LVU208
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL96:
	.loc 1 536 2 view .LVU209
	.loc 1 536 37 is_stmt 0 view .LVU210
	l32i.n	a8, a2, 0
	.loc 1 536 17 view .LVU211
	l8ui	a8, a8, 18
	j	.L62
.L60:
	.loc 1 540 2 is_stmt 1 view .LVU212
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL97:
	.loc 1 541 2 view .LVU213
	.loc 1 541 37 is_stmt 0 view .LVU214
	l32i.n	a8, a2, 0
	.loc 1 541 17 view .LVU215
	l8ui	a8, a8, 19
.L62:
	.loc 1 541 17 view .LVU216
	s8i	a8, a2, 34
.L63:
	.loc 1 547 10 view .LVU217
	movi.n	a2, 1
.LVL98:
	.loc 1 547 10 view .LVU218
	j	.L59
.LVL99:
.L61:
	.loc 1 545 7 is_stmt 1 view .LVU219
	.loc 1 545 14 is_stmt 0 view .LVU220
	mov.n	a10, a2
	call8	u8x8_d_st7567_enh_dg128064_generic
.LVL100:
	mov.n	a2, a10
.LVL101:
.L59:
	.loc 1 548 1 view .LVU221
	retw.n
.LFE3:
	.size	u8x8_d_st7567_enh_dg128064, .-u8x8_d_st7567_enh_dg128064
	.section	.text.u8x8_d_st7567_enh_dg128064i,"ax",@progbits
	.literal_position
	.literal .LC22, u8x8_st7567_enh_dg128064i_display_info
	.literal .LC23, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC24, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_enh_dg128064i
	.type	u8x8_d_st7567_enh_dg128064i, @function
u8x8_d_st7567_enh_dg128064i:
.LVL102:
.LFB4:
	.loc 1 551 1 is_stmt 1 view -0
	.loc 1 551 1 is_stmt 0 view .LVU223
	entry	sp, 32
.LCFI4:
	.loc 1 552 3 is_stmt 1 view .LVU224
	.loc 1 551 1 is_stmt 0 view .LVU225
	extui	a11, a3, 0, 8
	movi.n	a8, 9
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	beq	a11, a8, .L65
	movi.n	a8, 0xd
	beq	a11, a8, .L66
	j	.L70
.L65:
	.loc 1 555 7 is_stmt 1 view .LVU226
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL103:
	.loc 1 556 7 view .LVU227
	j	.L72
.L66:
	.loc 1 558 7 view .LVU228
	.loc 1 558 10 is_stmt 0 view .LVU229
	bnez.n	a12, .L69
	.loc 1 560 2 is_stmt 1 view .LVU230
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL104:
	.loc 1 561 2 view .LVU231
	.loc 1 561 37 is_stmt 0 view .LVU232
	l32i.n	a8, a2, 0
	.loc 1 561 17 view .LVU233
	l8ui	a8, a8, 18
	j	.L71
.L69:
	.loc 1 565 2 is_stmt 1 view .LVU234
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL105:
	.loc 1 566 2 view .LVU235
	.loc 1 566 37 is_stmt 0 view .LVU236
	l32i.n	a8, a2, 0
	.loc 1 566 17 view .LVU237
	l8ui	a8, a8, 19
.L71:
	.loc 1 566 17 view .LVU238
	s8i	a8, a2, 34
.L72:
	.loc 1 572 10 view .LVU239
	movi.n	a2, 1
.LVL106:
	.loc 1 572 10 view .LVU240
	j	.L68
.LVL107:
.L70:
	.loc 1 570 7 is_stmt 1 view .LVU241
	.loc 1 570 14 is_stmt 0 view .LVU242
	mov.n	a10, a2
	call8	u8x8_d_st7567_enh_dg128064_generic
.LVL108:
	mov.n	a2, a10
.LVL109:
.L68:
	.loc 1 573 1 view .LVU243
	retw.n
.LFE4:
	.size	u8x8_d_st7567_enh_dg128064i, .-u8x8_d_st7567_enh_dg128064i
	.section	.text.u8x8_d_st7567_64x32,"ax",@progbits
	.literal_position
	.literal .LC25, .L76
	.literal .LC26, u8x8_st7567_64x32_display_info
	.literal .LC27, u8x8_st7567_64x32_init_seq
	.literal .LC28, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC29, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC30, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC31, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_64x32
	.type	u8x8_d_st7567_64x32, @function
u8x8_d_st7567_64x32:
.LVL110:
.LFB5:
	.loc 1 638 1 is_stmt 1 view -0
	.loc 1 638 1 is_stmt 0 view .LVU245
	entry	sp, 32
.LCFI5:
	.loc 1 639 3 is_stmt 1 view .LVU246
	.loc 1 640 3 view .LVU247
	.loc 1 641 3 view .LVU248
	addi	a3, a3, -9
.LVL111:
	.loc 1 641 3 is_stmt 0 view .LVU249
	extui	a3, a3, 0, 8
	.loc 1 638 1 view .LVU250
	extui	a4, a4, 0, 8
	.loc 1 641 3 view .LVU251
	bgeui	a3, 7, .L86
	l32r	a6, .LC25
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_64x32,"a",@progbits
	.align	4
	.align	4
.L76:
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L86
	.word	.L78
	.word	.L77
	.word	.L75
	.section	.text.u8x8_d_st7567_64x32
.L81:
	.loc 1 644 7 is_stmt 1 view .LVU252
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL112:
	.loc 1 645 7 view .LVU253
	j	.L88
.L80:
	.loc 1 647 7 view .LVU254
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL113:
	.loc 1 648 7 view .LVU255
	l32r	a11, .LC27
	j	.L90
.L79:
	.loc 1 651 7 view .LVU256
	.loc 1 652 2 is_stmt 0 view .LVU257
	l32r	a11, .LC28
	.loc 1 651 10 view .LVU258
	beqz.n	a4, .L90
.L82:
	.loc 1 654 2 is_stmt 1 view .LVU259
	l32r	a11, .LC29
.L90:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL114:
	j	.L88
.L78:
	.loc 1 657 7 view .LVU260
	.loc 1 657 10 is_stmt 0 view .LVU261
	bnez.n	a4, .L83
	.loc 1 659 2 is_stmt 1 view .LVU262
	l32r	a11, .LC30
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL115:
	.loc 1 660 2 view .LVU263
	.loc 1 660 37 is_stmt 0 view .LVU264
	l32i.n	a3, a2, 0
	.loc 1 660 17 view .LVU265
	l8ui	a3, a3, 18
	j	.L91
.L83:
	.loc 1 664 2 is_stmt 1 view .LVU266
	l32r	a11, .LC31
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL116:
	.loc 1 665 2 view .LVU267
	.loc 1 665 37 is_stmt 0 view .LVU268
	l32i.n	a3, a2, 0
	.loc 1 665 17 view .LVU269
	l8ui	a3, a3, 19
.L91:
	.loc 1 665 17 view .LVU270
	s8i	a3, a2, 34
	j	.L88
.L77:
	.loc 1 670 7 is_stmt 1 view .LVU271
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL117:
	.loc 1 671 7 view .LVU272
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL118:
	.loc 1 672 7 view .LVU273
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL119:
.L89:
	.loc 1 673 7 view .LVU274
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL120:
.L88:
	.loc 1 674 7 view .LVU275
	.loc 1 710 10 is_stmt 0 view .LVU276
	movi.n	a2, 1
.LVL121:
	.loc 1 674 7 view .LVU277
	j	.L74
.LVL122:
.L75:
	.loc 1 677 7 is_stmt 1 view .LVU278
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL123:
	.loc 1 679 7 view .LVU279
	.loc 1 679 9 is_stmt 0 view .LVU280
	l8ui	a3, a5, 5
.LVL124:
	.loc 1 680 7 is_stmt 1 view .LVU281
	.loc 1 681 9 is_stmt 0 view .LVU282
	l8ui	a6, a2, 34
	.loc 1 680 9 view .LVU283
	slli	a3, a3, 3
.LVL125:
	.loc 1 681 7 is_stmt 1 view .LVU284
	.loc 1 681 9 is_stmt 0 view .LVU285
	add.n	a3, a3, a6
.LVL126:
	.loc 1 681 9 view .LVU286
	extui	a6, a3, 0, 8
.LVL127:
	.loc 1 682 7 is_stmt 1 view .LVU287
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL128:
	.loc 1 682 7 is_stmt 0 view .LVU288
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL129:
	.loc 1 683 7 is_stmt 1 view .LVU289
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL130:
	.loc 1 684 7 view .LVU290
	l8ui	a3, a5, 6
	movi	a11, 0xb0
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL131:
	.loc 1 686 7 view .LVU291
	.loc 1 686 9 is_stmt 0 view .LVU292
	l8ui	a3, a5, 4
.LVL132:
	.loc 1 687 7 is_stmt 1 view .LVU293
	.loc 1 694 10 is_stmt 0 view .LVU294
	movi	a9, 0x84
	.loc 1 687 9 view .LVU295
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL133:
	.loc 1 688 7 is_stmt 1 view .LVU296
	.loc 1 694 14 is_stmt 0 view .LVU297
	add.n	a8, a6, a3
	.loc 1 688 11 view .LVU298
	l32i.n	a5, a5, 0
.LVL134:
	.loc 1 694 7 is_stmt 1 view .LVU299
	.loc 1 694 10 is_stmt 0 view .LVU300
	bge	a9, a8, .L85
	.loc 1 696 2 is_stmt 1 view .LVU301
.LVL135:
	.loc 1 697 2 view .LVU302
	.loc 1 697 4 is_stmt 0 view .LVU303
	movi	a3, -0x7c
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL136:
.L85:
	.loc 1 699 7 is_stmt 1 discriminator 1 view .LVU304
	.loc 1 701 2 discriminator 1 view .LVU305
	.loc 1 702 9 is_stmt 0 discriminator 1 view .LVU306
	addi.n	a4, a4, -1
.LVL137:
	.loc 1 701 2 discriminator 1 view .LVU307
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 702 9 discriminator 1 view .LVU308
	extui	a4, a4, 0, 8
.LVL138:
	.loc 1 701 2 discriminator 1 view .LVU309
	call8	u8x8_cad_SendData
.LVL139:
	.loc 1 702 2 is_stmt 1 discriminator 1 view .LVU310
	.loc 1 703 7 is_stmt 0 discriminator 1 view .LVU311
	bnez.n	a4, .L85
	.loc 1 705 7 is_stmt 1 view .LVU312
	j	.L89
.LVL140:
.L86:
	.loc 1 708 14 is_stmt 0 view .LVU313
	movi.n	a2, 0
.LVL141:
.L74:
	.loc 1 711 1 view .LVU314
	retw.n
.LFE5:
	.size	u8x8_d_st7567_64x32, .-u8x8_d_st7567_64x32
	.section	.text.u8x8_d_st7567_os12864,"ax",@progbits
	.literal_position
	.literal .LC32, .L95
	.literal .LC33, u8x8_st7567_os12864_display_info
	.literal .LC34, u8x8_st7567_os12864_init_seq
	.literal .LC35, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC36, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC37, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC38, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_os12864
	.type	u8x8_d_st7567_os12864, @function
u8x8_d_st7567_os12864:
.LVL142:
.LFB6:
	.loc 1 784 1 is_stmt 1 view -0
	.loc 1 784 1 is_stmt 0 view .LVU316
	entry	sp, 32
.LCFI6:
	.loc 1 785 3 is_stmt 1 view .LVU317
	.loc 1 786 3 view .LVU318
	.loc 1 787 3 view .LVU319
	addi	a3, a3, -9
.LVL143:
	.loc 1 787 3 is_stmt 0 view .LVU320
	extui	a3, a3, 0, 8
	.loc 1 784 1 view .LVU321
	extui	a4, a4, 0, 8
	.loc 1 787 3 view .LVU322
	bgeui	a3, 7, .L105
	l32r	a6, .LC32
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_os12864,"a",@progbits
	.align	4
	.align	4
.L95:
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L105
	.word	.L97
	.word	.L96
	.word	.L94
	.section	.text.u8x8_d_st7567_os12864
.L100:
	.loc 1 790 7 is_stmt 1 view .LVU323
	l32r	a11, .LC33
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL144:
	.loc 1 791 7 view .LVU324
	j	.L107
.L99:
	.loc 1 793 7 view .LVU325
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL145:
	.loc 1 794 7 view .LVU326
	l32r	a11, .LC34
	j	.L109
.L98:
	.loc 1 797 7 view .LVU327
	.loc 1 798 2 is_stmt 0 view .LVU328
	l32r	a11, .LC35
	.loc 1 797 10 view .LVU329
	beqz.n	a4, .L109
.L101:
	.loc 1 800 2 is_stmt 1 view .LVU330
	l32r	a11, .LC36
.L109:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL146:
	j	.L107
.L97:
	.loc 1 803 7 view .LVU331
	.loc 1 803 10 is_stmt 0 view .LVU332
	bnez.n	a4, .L102
	.loc 1 805 2 is_stmt 1 view .LVU333
	l32r	a11, .LC37
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL147:
	.loc 1 806 2 view .LVU334
	.loc 1 806 37 is_stmt 0 view .LVU335
	l32i.n	a3, a2, 0
	.loc 1 806 17 view .LVU336
	l8ui	a3, a3, 18
	j	.L110
.L102:
	.loc 1 810 2 is_stmt 1 view .LVU337
	l32r	a11, .LC38
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL148:
	.loc 1 811 2 view .LVU338
	.loc 1 811 37 is_stmt 0 view .LVU339
	l32i.n	a3, a2, 0
	.loc 1 811 17 view .LVU340
	l8ui	a3, a3, 19
.L110:
	.loc 1 811 17 view .LVU341
	s8i	a3, a2, 34
	j	.L107
.L96:
	.loc 1 816 7 is_stmt 1 view .LVU342
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL149:
	.loc 1 817 7 view .LVU343
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL150:
	.loc 1 818 7 view .LVU344
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL151:
.L108:
	.loc 1 819 7 view .LVU345
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL152:
.L107:
	.loc 1 820 7 view .LVU346
	.loc 1 856 10 is_stmt 0 view .LVU347
	movi.n	a2, 1
.LVL153:
	.loc 1 820 7 view .LVU348
	j	.L93
.LVL154:
.L94:
	.loc 1 823 7 is_stmt 1 view .LVU349
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL155:
	.loc 1 825 7 view .LVU350
	.loc 1 825 9 is_stmt 0 view .LVU351
	l8ui	a3, a5, 5
.LVL156:
	.loc 1 826 7 is_stmt 1 view .LVU352
	.loc 1 827 9 is_stmt 0 view .LVU353
	l8ui	a6, a2, 34
	.loc 1 826 9 view .LVU354
	slli	a3, a3, 3
.LVL157:
	.loc 1 827 7 is_stmt 1 view .LVU355
	.loc 1 827 9 is_stmt 0 view .LVU356
	add.n	a3, a3, a6
.LVL158:
	.loc 1 827 9 view .LVU357
	extui	a6, a3, 0, 8
.LVL159:
	.loc 1 828 7 is_stmt 1 view .LVU358
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL160:
	.loc 1 828 7 is_stmt 0 view .LVU359
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL161:
	.loc 1 829 7 is_stmt 1 view .LVU360
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL162:
	.loc 1 830 7 view .LVU361
	l8ui	a3, a5, 6
	movi	a11, 0xb0
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL163:
	.loc 1 832 7 view .LVU362
	.loc 1 832 9 is_stmt 0 view .LVU363
	l8ui	a3, a5, 4
.LVL164:
	.loc 1 833 7 is_stmt 1 view .LVU364
	.loc 1 840 10 is_stmt 0 view .LVU365
	movi	a9, 0x84
	.loc 1 833 9 view .LVU366
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL165:
	.loc 1 834 7 is_stmt 1 view .LVU367
	.loc 1 840 14 is_stmt 0 view .LVU368
	add.n	a8, a6, a3
	.loc 1 834 11 view .LVU369
	l32i.n	a5, a5, 0
.LVL166:
	.loc 1 840 7 is_stmt 1 view .LVU370
	.loc 1 840 10 is_stmt 0 view .LVU371
	bge	a9, a8, .L104
	.loc 1 842 2 is_stmt 1 view .LVU372
.LVL167:
	.loc 1 843 2 view .LVU373
	.loc 1 843 4 is_stmt 0 view .LVU374
	movi	a3, -0x7c
	sub	a3, a3, a6
	extui	a3, a3, 0, 8
.LVL168:
.L104:
	.loc 1 845 7 is_stmt 1 discriminator 1 view .LVU375
	.loc 1 847 2 discriminator 1 view .LVU376
	.loc 1 848 9 is_stmt 0 discriminator 1 view .LVU377
	addi.n	a4, a4, -1
.LVL169:
	.loc 1 847 2 discriminator 1 view .LVU378
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 848 9 discriminator 1 view .LVU379
	extui	a4, a4, 0, 8
.LVL170:
	.loc 1 847 2 discriminator 1 view .LVU380
	call8	u8x8_cad_SendData
.LVL171:
	.loc 1 848 2 is_stmt 1 discriminator 1 view .LVU381
	.loc 1 849 7 is_stmt 0 discriminator 1 view .LVU382
	bnez.n	a4, .L104
	.loc 1 851 7 is_stmt 1 view .LVU383
	j	.L108
.LVL172:
.L105:
	.loc 1 854 14 is_stmt 0 view .LVU384
	movi.n	a2, 0
.LVL173:
.L93:
	.loc 1 857 1 view .LVU385
	retw.n
.LFE6:
	.size	u8x8_d_st7567_os12864, .-u8x8_d_st7567_os12864
	.section	.rodata.u8x8_st7567_os12864_init_seq,"a"
	.type	u8x8_st7567_os12864_init_seq, @object
	.size	u8x8_st7567_os12864_init_seq, 39
u8x8_st7567_os12864_init_seq:
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
	.byte	-93
	.byte	21
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	38
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
	.section	.rodata.u8x8_st7567_os12864_display_info,"a"
	.align	4
	.type	u8x8_st7567_os12864_display_info, @object
	.size	u8x8_st7567_os12864_display_info, 24
u8x8_st7567_os12864_display_info:
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
	.section	.rodata.u8x8_st7567_64x32_init_seq,"a"
	.type	u8x8_st7567_64x32_init_seq, @object
	.size	u8x8_st7567_64x32_init_seq, 39
u8x8_st7567_64x32_init_seq:
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
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	36
	.byte	21
	.byte	-127
	.byte	22
	.byte	-128
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7567_64x32_display_info,"a"
	.align	4
	.type	u8x8_st7567_64x32_display_info, @object
	.size	u8x8_st7567_64x32_display_info, 24
u8x8_st7567_64x32_display_info:
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
	.byte	8
	.byte	4
	.byte	32
	.byte	32
	.short	64
	.short	32
	.section	.rodata.u8x8_st7567_enh_dg128064_init_seq,"a"
	.type	u8x8_st7567_enh_dg128064_init_seq, @object
	.size	u8x8_st7567_enh_dg128064_init_seq, 39
u8x8_st7567_enh_dg128064_init_seq:
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
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	50
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7567_enh_dg128064i_display_info,"a"
	.align	4
	.type	u8x8_st7567_enh_dg128064i_display_info, @object
	.size	u8x8_st7567_enh_dg128064i_display_info, 24
u8x8_st7567_enh_dg128064i_display_info:
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
	.section	.rodata.u8x8_st7567_enh_dg128064_display_info,"a"
	.align	4
	.type	u8x8_st7567_enh_dg128064_display_info, @object
	.size	u8x8_st7567_enh_dg128064_display_info, 24
u8x8_st7567_enh_dg128064_display_info:
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
	.section	.rodata.u8x8_st7567_jlx12864_init_seq,"a"
	.type	u8x8_st7567_jlx12864_init_seq, @object
	.size	u8x8_st7567_jlx12864_init_seq, 39
u8x8_st7567_jlx12864_init_seq:
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
	.byte	-93
	.byte	21
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
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
	.section	.rodata.u8x8_st7567_jlx12864_display_info,"a"
	.align	4
	.type	u8x8_st7567_jlx12864_display_info, @object
	.size	u8x8_st7567_jlx12864_display_info, 24
u8x8_st7567_jlx12864_display_info:
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
	.section	.rodata.u8x8_d_st7567_132x64_init_seq,"a"
	.type	u8x8_d_st7567_132x64_init_seq, @object
	.size	u8x8_d_st7567_132x64_init_seq, 39
u8x8_d_st7567_132x64_init_seq:
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
	.byte	-93
	.byte	21
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	38
	.byte	21
	.byte	-127
	.byte	22
	.byte	39
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7567_132x64_display_info,"a"
	.align	4
	.type	u8x8_st7567_132x64_display_info, @object
	.size	u8x8_st7567_132x64_display_info, 24
u8x8_st7567_132x64_display_info:
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
	.byte	8
	.byte	0
	.byte	0
	.short	132
	.short	64
	.section	.rodata.u8x8_d_st7567_n_flip1_seq,"a"
	.type	u8x8_d_st7567_n_flip1_seq, @object
	.size	u8x8_d_st7567_n_flip1_seq, 7
u8x8_d_st7567_n_flip1_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_n_flip0_seq,"a"
	.type	u8x8_d_st7567_n_flip0_seq, @object
	.size	u8x8_d_st7567_n_flip0_seq, 7
u8x8_d_st7567_n_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_flip1_seq,"a"
	.type	u8x8_d_st7567_132x64_flip1_seq, @object
	.size	u8x8_d_st7567_132x64_flip1_seq, 7
u8x8_d_st7567_132x64_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_flip0_seq,"a"
	.type	u8x8_d_st7567_132x64_flip0_seq, @object
	.size	u8x8_d_st7567_132x64_flip0_seq, 7
u8x8_d_st7567_132x64_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_powersave1_seq,"a"
	.type	u8x8_d_st7567_132x64_powersave1_seq, @object
	.size	u8x8_d_st7567_132x64_powersave1_seq, 7
u8x8_d_st7567_132x64_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_powersave0_seq,"a"
	.type	u8x8_d_st7567_132x64_powersave0_seq, @object
	.size	u8x8_d_st7567_132x64_powersave0_seq, 7
u8x8_d_st7567_132x64_powersave0_seq:
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF227
	.byte	0xc
	.4byte	.LASF228
	.4byte	.LASF229
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
	.byte	0x29
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_powersave0_seq
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_powersave1_seq
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x39
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x41
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0x49
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_n_flip0_seq
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0x51
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_n_flip1_seq
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.byte	0x5e
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_132x64_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb06
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x26
	.byte	0
	.uleb128 0x5
	.4byte	0xaf6
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x1
	.byte	0x76
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_init_seq
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x1
	.byte	0xee
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_jlx12864_display_info
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x106
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_jlx12864_init_seq
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x17a
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_enh_dg128064_display_info
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x192
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_enh_dg128064i_display_info
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1aa
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_enh_dg128064_init_seq
	.uleb128 0x14
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x243
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_64x32_display_info
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x25b
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_64x32_init_seq
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x2d4
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_os12864_display_info
	.uleb128 0x14
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x2ec
	.byte	0x16
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_os12864_init_seq
	.uleb128 0x15
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x30f
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd7
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x30f
	.byte	0x27
	.4byte	0x36e
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x30f
	.byte	0x35
	.4byte	0x81
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x16
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x30f
	.byte	0x42
	.4byte	0x81
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x30f
	.byte	0x51
	.4byte	0xaa
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.2byte	0x311
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.2byte	0x311
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.2byte	0x312
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x19
	.4byte	.LVL144
	.4byte	0x175f
	.4byte	0xc8e
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
	.4byte	u8x8_st7567_os12864_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL145
	.4byte	0x176c
	.4byte	0xca2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL146
	.4byte	0x1779
	.4byte	0xcb6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL147
	.4byte	0x1779
	.4byte	0xcd3
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL148
	.4byte	0x1779
	.4byte	0xcf0
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL149
	.4byte	0x1786
	.4byte	0xd04
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL150
	.4byte	0x1793
	.4byte	0xd1e
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
	.4byte	.LVL151
	.4byte	0x17a0
	.4byte	0xd3a
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
	.uleb128 0x19
	.4byte	.LVL152
	.4byte	0x17ad
	.4byte	0xd4e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL155
	.4byte	0x1786
	.4byte	0xd62
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL161
	.4byte	0x1793
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
	.4byte	.LVL162
	.4byte	0x1793
	.4byte	0xd9d
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
	.4byte	.LVL163
	.4byte	0x1793
	.4byte	0xdba
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
	.4byte	.LVL171
	.4byte	0x17ba
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
	.uleb128 0x15
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x27d
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe7
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x27d
	.byte	0x25
	.4byte	0x36e
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x27d
	.byte	0x33
	.4byte	0x81
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x16
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x27d
	.byte	0x40
	.4byte	0x81
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x27d
	.byte	0x4f
	.4byte	0xaa
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.2byte	0x27f
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.2byte	0x27f
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.2byte	0x280
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x19
	.4byte	.LVL112
	.4byte	0x175f
	.4byte	0xe9e
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
	.4byte	u8x8_st7567_64x32_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL113
	.4byte	0x176c
	.4byte	0xeb2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL114
	.4byte	0x1779
	.4byte	0xec6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL115
	.4byte	0x1779
	.4byte	0xee3
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL116
	.4byte	0x1779
	.4byte	0xf00
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL117
	.4byte	0x1786
	.4byte	0xf14
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL118
	.4byte	0x1793
	.4byte	0xf2e
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
	.4byte	.LVL119
	.4byte	0x17a0
	.4byte	0xf4a
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
	.uleb128 0x19
	.4byte	.LVL120
	.4byte	0x17ad
	.4byte	0xf5e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL123
	.4byte	0x1786
	.4byte	0xf72
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL129
	.4byte	0x1793
	.4byte	0xf91
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
	.4byte	.LVL130
	.4byte	0x1793
	.4byte	0xfad
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
	.4byte	.LVL131
	.4byte	0x1793
	.4byte	0xfca
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
	.4byte	.LVL139
	.4byte	0x17ba
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
	.uleb128 0x15
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x226
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ac
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x226
	.byte	0x2d
	.4byte	0x36e
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.2byte	0x226
	.byte	0x3b
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x226
	.byte	0x48
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x226
	.byte	0x57
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL103
	.4byte	0x175f
	.4byte	0x1061
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
	.4byte	u8x8_st7567_enh_dg128064i_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL104
	.4byte	0x1779
	.4byte	0x107e
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL105
	.4byte	0x1779
	.4byte	0x109b
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL108
	.4byte	0x1171
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x20d
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1171
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x20d
	.byte	0x2c
	.4byte	0x36e
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.2byte	0x20d
	.byte	0x3a
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x20d
	.byte	0x47
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x20d
	.byte	0x56
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0x175f
	.4byte	0x1126
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
	.4byte	u8x8_st7567_enh_dg128064_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL96
	.4byte	0x1779
	.4byte	0x1143
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
	.4byte	u8x8_d_st7567_n_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL97
	.4byte	0x1779
	.4byte	0x1160
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
	.4byte	u8x8_d_st7567_n_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL100
	.4byte	0x1171
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1cd
	.byte	0x10
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1347
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1cd
	.byte	0x3b
	.4byte	0x36e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1cd
	.byte	0x49
	.4byte	0x81
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x16
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x1cd
	.byte	0x56
	.4byte	0x81
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x1cd
	.byte	0x65
	.4byte	0xaa
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.2byte	0x1cf
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.2byte	0x1d0
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x175f
	.4byte	0x1238
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
	.4byte	u8x8_st7567_enh_dg128064_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x176c
	.4byte	0x124c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x1779
	.4byte	0x1260
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x1786
	.4byte	0x1274
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x1793
	.4byte	0x128e
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
	.4byte	.LVL7
	.4byte	0x17a0
	.4byte	0x12aa
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
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x17ad
	.4byte	0x12be
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x1786
	.4byte	0x12d2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x1793
	.4byte	0x12f1
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
	.4byte	.LVL18
	.4byte	0x1793
	.4byte	0x130d
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
	.4byte	.LVL19
	.4byte	0x1793
	.4byte	0x132a
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
	.4byte	.LVL27
	.4byte	0x17ba
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
	.uleb128 0x15
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x129
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1557
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x129
	.byte	0x28
	.4byte	0x36e
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x129
	.byte	0x36
	.4byte	0x81
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x16
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x129
	.byte	0x43
	.4byte	0x81
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x129
	.byte	0x52
	.4byte	0xaa
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.2byte	0x12b
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.2byte	0x12b
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.2byte	0x12c
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0x175f
	.4byte	0x140e
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
	.4byte	u8x8_st7567_jlx12864_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL65
	.4byte	0x176c
	.4byte	0x1422
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0x1779
	.4byte	0x1436
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL67
	.4byte	0x1779
	.4byte	0x1453
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0x1779
	.4byte	0x1470
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL69
	.4byte	0x1786
	.4byte	0x1484
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0x1793
	.4byte	0x149e
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
	.4byte	.LVL71
	.4byte	0x17a0
	.4byte	0x14ba
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
	.uleb128 0x19
	.4byte	.LVL72
	.4byte	0x17ad
	.4byte	0x14ce
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0x1786
	.4byte	0x14e2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0x1793
	.4byte	0x1501
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
	.4byte	.LVL82
	.4byte	0x1793
	.4byte	0x151d
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
	.4byte	.LVL83
	.4byte	0x1793
	.4byte	0x153a
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
	.4byte	.LVL91
	.4byte	0x17ba
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
	.uleb128 0x1f
	.4byte	.LASF218
	.byte	0x1
	.byte	0x99
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x175f
	.uleb128 0x20
	.4byte	.LASF210
	.byte	0x1
	.byte	0x99
	.byte	0x29
	.4byte	0x36e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.byte	0x99
	.byte	0x37
	.4byte	0x81
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0x1
	.byte	0x99
	.byte	0x44
	.4byte	0x81
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x20
	.4byte	.LASF212
	.byte	0x1
	.byte	0x99
	.byte	0x53
	.4byte	0xaa
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.byte	0x9b
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0x9b
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x22
	.string	"ptr"
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x175f
	.4byte	0x1616
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
	.4byte	u8x8_st7567_132x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x176c
	.4byte	0x162a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0x1779
	.4byte	0x163e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x1779
	.4byte	0x165b
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0x1779
	.4byte	0x1678
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL37
	.4byte	0x1786
	.4byte	0x168c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0x1793
	.4byte	0x16a6
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
	.4byte	.LVL39
	.4byte	0x17a0
	.4byte	0x16c2
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
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0x17ad
	.4byte	0x16d6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x1786
	.4byte	0x16ea
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0x1793
	.4byte	0x1709
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
	.4byte	.LVL50
	.4byte	0x1793
	.4byte	0x1725
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
	.4byte	.LVL51
	.4byte	0x1793
	.4byte	0x1742
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
	.4byte	.LVL59
	.4byte	0x17ba
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
	.uleb128 0x23
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x23
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x23
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x23
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x23
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x23
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x23
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x4
	.2byte	0x25a
	.byte	0x9
	.uleb128 0x23
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x4
	.2byte	0x258
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
.LVUS30:
	.uleb128 0
	.uleb128 .LVU348
	.uleb128 .LVU348
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 0
.LLST30:
	.4byte	.LVL142
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST31:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU345
	.uleb128 .LVU349
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU380
	.uleb128 .LVU382
	.uleb128 .LVU385
.LLST32:
	.4byte	.LVL142
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU345
	.uleb128 .LVU345
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 0
.LLST33:
	.4byte	.LVL142
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL166
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL173
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU352
	.uleb128 .LVU355
	.uleb128 .LVU355
	.uleb128 .LVU357
	.uleb128 .LVU357
	.uleb128 .LVU358
	.uleb128 .LVU358
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU384
.LLST34:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
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
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU364
	.uleb128 .LVU367
	.uleb128 .LVU367
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU384
.LLST35:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU370
	.uleb128 .LVU384
.LLST36:
	.4byte	.LVL166
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 0
.LLST23:
	.4byte	.LVL110
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
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
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 0
.LLST24:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
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
	.uleb128 .LVU274
	.uleb128 .LVU278
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU309
	.uleb128 .LVU311
	.uleb128 .LVU314
.LLST25:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL122
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 0
.LLST26:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL134
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL141
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU281
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU313
.LLST27:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
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
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU293
	.uleb128 .LVU296
	.uleb128 .LVU296
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU313
.LLST28:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU299
	.uleb128 .LVU313
.LLST29:
	.4byte	.LVL134
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST22:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
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
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST21:
	.4byte	.LVL94
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
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 .LVU54
	.uleb128 .LVU57
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU56
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
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
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU36
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU56
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU42
	.uleb128 .LVU56
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST15:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU159
	.uleb128 .LVU163
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU194
	.uleb128 .LVU196
	.uleb128 .LVU199
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST17:
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL93
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU166
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU198
.LLST18:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
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
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU178
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU198
.LLST19:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU184
	.uleb128 .LVU198
.LLST20:
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU123
	.uleb128 .LVU125
	.uleb128 .LVU128
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL61
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU95
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU127
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
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
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU107
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU127
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU113
	.uleb128 .LVU127
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF208:
	.string	"u8x8_st7567_os12864_display_info"
.LASF115:
	.string	"u8x8_font_artosserif8_n"
.LASF202:
	.string	"u8x8_st7567_jlx12864_init_seq"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF127:
	.string	"u8x8_font_victoriabold8_u"
.LASF116:
	.string	"u8x8_font_artosserif8_u"
.LASF143:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_f"
.LASF230:
	.string	"u8x8_d_st7567_enh_dg128064_generic"
.LASF129:
	.string	"u8x8_font_victoriamedium8_n"
.LASF200:
	.string	"u8x8_d_st7567_132x64_init_seq"
.LASF229:
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
.LASF184:
	.string	"u8x8_font_pxplustandynewtv_r"
.LASF186:
	.string	"u8x8_font_pxplustandynewtv_u"
.LASF194:
	.string	"u8x8_d_st7567_132x64_powersave1_seq"
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
.LASF209:
	.string	"u8x8_st7567_os12864_init_seq"
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
.LASF196:
	.string	"u8x8_d_st7567_132x64_flip1_seq"
.LASF226:
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
.LASF219:
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
.LASF222:
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
.LASF77:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF175:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF170:
	.string	"u8x8_font_pressstart2p_u"
.LASF177:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF5:
	.string	"short unsigned int"
.LASF176:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF178:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF211:
	.string	"arg_int"
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
.LASF193:
	.string	"u8x8_d_st7567_132x64_powersave0_seq"
.LASF195:
	.string	"u8x8_d_st7567_132x64_flip0_seq"
.LASF101:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF155:
	.string	"u8x8_font_inr46_4x8_f"
.LASF216:
	.string	"u8x8_d_st7567_enh_dg128064"
.LASF107:
	.string	"u8x8_font_open_iconic_weather_8x8"
.LASF157:
	.string	"u8x8_font_inr46_4x8_n"
.LASF198:
	.string	"u8x8_d_st7567_n_flip1_seq"
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
.LASF218:
	.string	"u8x8_d_st7567_pi_132x64"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF181:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF228:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st7567.c"
.LASF23:
	.string	"x_offset"
.LASF220:
	.string	"u8x8_d_helper_display_init"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF204:
	.string	"u8x8_st7567_enh_dg128064i_display_info"
.LASF50:
	.string	"tile_height"
.LASF148:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF72:
	.string	"u8x8_font_8x13_1x2_f"
.LASF108:
	.string	"u8x8_font_profont29_2x3_f"
.LASF201:
	.string	"u8x8_st7567_jlx12864_display_info"
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
.LASF210:
	.string	"u8x8"
.LASF86:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF152:
	.string	"u8x8_font_inr33_3x6_f"
.LASF102:
	.string	"u8x8_font_open_iconic_arrow_8x8"
.LASF214:
	.string	"u8x8_d_st7567_64x32"
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
.LASF205:
	.string	"u8x8_st7567_enh_dg128064_init_seq"
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
.LASF206:
	.string	"u8x8_st7567_64x32_display_info"
.LASF168:
	.string	"u8x8_font_pressstart2p_r"
.LASF207:
	.string	"u8x8_st7567_64x32_init_seq"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF203:
	.string	"u8x8_st7567_enh_dg128064_display_info"
.LASF217:
	.string	"u8x8_d_st7567_jlx12864"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF227:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
.LASF225:
	.string	"u8x8_cad_EndTransfer"
.LASF20:
	.string	"bus_clock"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF212:
	.string	"arg_ptr"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF87:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF197:
	.string	"u8x8_d_st7567_n_flip0_seq"
.LASF213:
	.string	"u8x8_d_st7567_os12864"
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
.LASF223:
	.string	"u8x8_cad_SendCmd"
.LASF68:
	.string	"u8x8_font_5x7_n"
.LASF84:
	.string	"u8x8_font_open_iconic_arrow_1x1"
.LASF67:
	.string	"u8x8_font_5x7_r"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF199:
	.string	"u8x8_st7567_132x64_display_info"
.LASF138:
	.string	"u8x8_font_courB24_3x4_r"
.LASF118:
	.string	"u8x8_font_chroma48medium8_n"
.LASF224:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF215:
	.string	"u8x8_d_st7567_enh_dg128064i"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF221:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
