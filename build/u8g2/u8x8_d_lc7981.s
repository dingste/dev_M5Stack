	.file	"u8x8_d_lc7981.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_lc7981_common$part$0,"ax",@progbits
	.align	4
	.type	u8x8_d_lc7981_common$part$0, @function
u8x8_d_lc7981_common$part$0:
.LVL0:
.LFB6:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_lc7981.c"
	.loc 1 84 16 view -0
	.loc 1 84 16 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 92 7 is_stmt 1 view .LVU2
	.loc 1 93 7 view .LVU3
	.loc 1 94 7 view .LVU4
	.loc 1 94 29 is_stmt 0 view .LVU5
	l32i.n	a4, a2, 0
	.loc 1 92 9 view .LVU6
	l8ui	a5, a3, 6
	.loc 1 94 29 view .LVU7
	l8ui	a4, a4, 16
	.loc 1 96 7 view .LVU8
	mov.n	a10, a2
	mull	a4, a4, a5
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 94 8 view .LVU9
	slli	a4, a4, 3
	.loc 1 107 9 view .LVU10
	l8ui	a5, a3, 4
.LVL3:
	.loc 1 108 11 view .LVU11
	l32i.n	a3, a3, 0
.LVL4:
	.loc 1 94 8 view .LVU12
	extui	a4, a4, 0, 16
.LVL5:
	.loc 1 96 7 is_stmt 1 view .LVU13
	.loc 1 107 7 view .LVU14
	.loc 1 108 7 view .LVU15
	.loc 1 109 7 view .LVU16
	.loc 1 108 11 is_stmt 0 view .LVU17
	movi.n	a6, 8
.LVL6:
.L4:
	.loc 1 111 2 is_stmt 1 view .LVU18
	movi.n	a11, 0xa
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL7:
	.loc 1 112 2 view .LVU19
	extui	a11, a4, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL8:
	.loc 1 113 2 view .LVU20
	movi.n	a11, 0xb
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL9:
	.loc 1 114 2 view .LVU21
	srli	a11, a4, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL10:
	.loc 1 116 2 view .LVU22
	movi.n	a11, 0xc
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL11:
	.loc 1 125 2 view .LVU23
	.loc 1 116 2 is_stmt 0 view .LVU24
	movi.n	a7, 0
	j	.L2
.LVL12:
.L3:
	.loc 1 126 4 is_stmt 1 view .LVU25
	.loc 1 126 40 is_stmt 0 view .LVU26
	add.n	a8, a3, a7
	l8ui	a10, a8, 0
.LVL13:
.LBB12:
.LBI12:
	.loc 1 70 16 is_stmt 1 view .LVU27
.LBB13:
	.loc 1 75 5 view .LVU28
	.loc 1 75 19 is_stmt 0 view .LVU29
	movi.n	a9, 0x55
	srli	a8, a10, 1
.LVL14:
	.loc 1 75 43 view .LVU30
	movi	a11, -0x56
	slli	a10, a10, 1
	and	a10, a10, a11
	.loc 1 75 19 view .LVU31
	and	a8, a8, a9
	.loc 1 75 28 view .LVU32
	or	a8, a8, a10
	.loc 1 75 7 view .LVU33
	extui	a8, a8, 0, 8
.LVL15:
	.loc 1 77 5 is_stmt 1 view .LVU34
	.loc 1 77 19 is_stmt 0 view .LVU35
	srli	a11, a8, 2
	movi.n	a10, 0x33
	and	a11, a11, a10
	.loc 1 77 43 view .LVU36
	slli	a8, a8, 2
.LVL16:
	.loc 1 77 43 view .LVU37
	movi	a10, -0x34
	and	a8, a8, a10
	.loc 1 77 28 view .LVU38
	or	a8, a11, a8
	.loc 1 77 7 view .LVU39
	extui	a8, a8, 0, 8
.LVL17:
	.loc 1 79 5 is_stmt 1 view .LVU40
	.loc 1 79 28 is_stmt 0 view .LVU41
	srli	a11, a8, 4
	.loc 1 79 43 view .LVU42
	slli	a8, a8, 4
.LVL18:
	.loc 1 79 28 view .LVU43
	or	a11, a11, a8
.LVL19:
	.loc 1 81 3 is_stmt 1 view .LVU44
	.loc 1 81 3 is_stmt 0 view .LVU45
.LBE13:
.LBE12:
	.loc 1 126 4 view .LVU46
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL20:
	.loc 1 126 4 view .LVU47
	addi.n	a7, a7, 1
.LVL21:
.L2:
	.loc 1 125 2 view .LVU48
	extui	a8, a7, 0, 8
	bltu	a8, a5, .L3
	.loc 1 131 25 view .LVU49
	l32i.n	a7, a2, 0
.LVL22:
	.loc 1 131 25 view .LVU50
	addi.n	a6, a6, -1
.LVL23:
	.loc 1 131 25 view .LVU51
	l8ui	a7, a7, 16
	extui	a6, a6, 0, 8
.LVL24:
	.loc 1 131 4 view .LVU52
	add.n	a4, a4, a7
.LVL25:
	.loc 1 131 4 view .LVU53
	add.n	a3, a3, a5
	.loc 1 131 2 is_stmt 1 view .LVU54
	.loc 1 131 4 is_stmt 0 view .LVU55
	extui	a4, a4, 0, 16
.LVL26:
	.loc 1 109 7 view .LVU56
	bnez.n	a6, .L4
	.loc 1 134 7 is_stmt 1 view .LVU57
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL27:
	.loc 1 135 7 view .LVU58
	.loc 1 180 3 view .LVU59
	.loc 1 181 1 is_stmt 0 view .LVU60
	movi.n	a2, 1
.LVL28:
	.loc 1 181 1 view .LVU61
	retw.n
.LFE6:
	.size	u8x8_d_lc7981_common$part$0, .-u8x8_d_lc7981_common$part$0
	.section	.text.u8x8_d_lc7981_160x80,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_lc7981_160x80_display_info
	.literal .LC1, u8x8_d_lc7981_160x80_init_seq
	.align	4
	.global	u8x8_d_lc7981_160x80
	.type	u8x8_d_lc7981_160x80, @function
u8x8_d_lc7981_160x80:
.LVL29:
.LFB2:
	.loc 1 233 1 is_stmt 1 view -0
	.loc 1 233 1 is_stmt 0 view .LVU63
	entry	sp, 32
.LCFI1:
	.loc 1 235 3 is_stmt 1 view .LVU64
.LVL30:
	.loc 1 233 1 is_stmt 0 view .LVU65
	extui	a3, a3, 0, 8
.LVL31:
.LBB14:
.LBI14:
	.loc 1 84 16 is_stmt 1 view .LVU66
.LBB15:
	.loc 1 86 3 view .LVU67
	.loc 1 87 3 view .LVU68
	.loc 1 88 3 view .LVU69
	.loc 1 89 3 view .LVU70
	movi.n	a8, 0xf
.LBE15:
.LBE14:
	.loc 1 233 1 is_stmt 0 view .LVU71
	mov.n	a11, a5
.LBB17:
.LBB16:
	.loc 1 89 3 view .LVU72
	bne	a3, a8, .L7
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL32:
	.loc 1 89 3 view .LVU73
.LBE16:
.LBE17:
	.loc 1 235 6 view .LVU74
	movi.n	a3, 1
.LVL33:
	.loc 1 235 6 view .LVU75
	movi.n	a2, 0
.LVL34:
	.loc 1 235 6 view .LVU76
	movnez	a2, a3, a10
	.loc 1 248 9 view .LVU77
	extui	a2, a2, 0, 8
	.loc 1 250 3 view .LVU78
	j	.L8
.LVL35:
.L7:
	.loc 1 238 5 is_stmt 1 view .LVU79
	movi.n	a8, 9
	beq	a3, a8, .L9
	beqi	a3, 10, .L10
	.loc 1 248 9 is_stmt 0 view .LVU80
	movi.n	a2, 0
.LVL36:
	.loc 1 248 9 view .LVU81
	j	.L8
.LVL37:
.L9:
	.loc 1 241 2 is_stmt 1 view .LVU82
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL38:
	.loc 1 242 2 view .LVU83
	j	.L11
.L10:
	.loc 1 244 2 view .LVU84
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL39:
	.loc 1 245 2 view .LVU85
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL40:
.L11:
	.loc 1 246 2 view .LVU86
	.loc 1 251 10 is_stmt 0 view .LVU87
	movi.n	a2, 1
.LVL41:
.L8:
	.loc 1 252 1 view .LVU88
	retw.n
.LFE2:
	.size	u8x8_d_lc7981_160x80, .-u8x8_d_lc7981_160x80
	.section	.text.u8x8_d_lc7981_160x160,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_lc7981_160x160_display_info
	.literal .LC3, u8x8_d_lc7981_160x160_init_seq
	.align	4
	.global	u8x8_d_lc7981_160x160
	.type	u8x8_d_lc7981_160x160, @function
u8x8_d_lc7981_160x160:
.LVL42:
.LFB3:
	.loc 1 305 1 is_stmt 1 view -0
	.loc 1 305 1 is_stmt 0 view .LVU90
	entry	sp, 32
.LCFI2:
	.loc 1 307 3 is_stmt 1 view .LVU91
.LVL43:
	.loc 1 305 1 is_stmt 0 view .LVU92
	extui	a3, a3, 0, 8
.LVL44:
.LBB18:
.LBI18:
	.loc 1 84 16 is_stmt 1 view .LVU93
.LBB19:
	.loc 1 86 3 view .LVU94
	.loc 1 87 3 view .LVU95
	.loc 1 88 3 view .LVU96
	.loc 1 89 3 view .LVU97
	movi.n	a8, 0xf
.LBE19:
.LBE18:
	.loc 1 305 1 is_stmt 0 view .LVU98
	mov.n	a11, a5
.LBB21:
.LBB20:
	.loc 1 89 3 view .LVU99
	bne	a3, a8, .L13
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL45:
	.loc 1 89 3 view .LVU100
.LBE20:
.LBE21:
	.loc 1 307 6 view .LVU101
	movi.n	a3, 1
.LVL46:
	.loc 1 307 6 view .LVU102
	movi.n	a2, 0
.LVL47:
	.loc 1 307 6 view .LVU103
	movnez	a2, a3, a10
	.loc 1 320 9 view .LVU104
	extui	a2, a2, 0, 8
	.loc 1 322 3 view .LVU105
	j	.L14
.LVL48:
.L13:
	.loc 1 310 5 is_stmt 1 view .LVU106
	movi.n	a8, 9
	beq	a3, a8, .L15
	beqi	a3, 10, .L16
	.loc 1 320 9 is_stmt 0 view .LVU107
	movi.n	a2, 0
.LVL49:
	.loc 1 320 9 view .LVU108
	j	.L14
.LVL50:
.L15:
	.loc 1 313 2 is_stmt 1 view .LVU109
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL51:
	.loc 1 314 2 view .LVU110
	j	.L17
.L16:
	.loc 1 316 2 view .LVU111
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL52:
	.loc 1 317 2 view .LVU112
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL53:
.L17:
	.loc 1 318 2 view .LVU113
	.loc 1 323 10 is_stmt 0 view .LVU114
	movi.n	a2, 1
.LVL54:
.L14:
	.loc 1 324 1 view .LVU115
	retw.n
.LFE3:
	.size	u8x8_d_lc7981_160x160, .-u8x8_d_lc7981_160x160
	.section	.text.u8x8_d_lc7981_240x128,"ax",@progbits
	.literal_position
	.literal .LC4, u8x8_lc7981_240x128_display_info
	.literal .LC5, u8x8_d_lc7981_240x128_init_seq
	.align	4
	.global	u8x8_d_lc7981_240x128
	.type	u8x8_d_lc7981_240x128, @function
u8x8_d_lc7981_240x128:
.LVL55:
.LFB4:
	.loc 1 377 1 is_stmt 1 view -0
	.loc 1 377 1 is_stmt 0 view .LVU117
	entry	sp, 32
.LCFI3:
	.loc 1 379 3 is_stmt 1 view .LVU118
.LVL56:
	.loc 1 377 1 is_stmt 0 view .LVU119
	extui	a3, a3, 0, 8
.LVL57:
.LBB22:
.LBI22:
	.loc 1 84 16 is_stmt 1 view .LVU120
.LBB23:
	.loc 1 86 3 view .LVU121
	.loc 1 87 3 view .LVU122
	.loc 1 88 3 view .LVU123
	.loc 1 89 3 view .LVU124
	movi.n	a8, 0xf
.LBE23:
.LBE22:
	.loc 1 377 1 is_stmt 0 view .LVU125
	mov.n	a11, a5
.LBB25:
.LBB24:
	.loc 1 89 3 view .LVU126
	bne	a3, a8, .L19
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL58:
	.loc 1 89 3 view .LVU127
.LBE24:
.LBE25:
	.loc 1 379 6 view .LVU128
	movi.n	a3, 1
.LVL59:
	.loc 1 379 6 view .LVU129
	movi.n	a2, 0
.LVL60:
	.loc 1 379 6 view .LVU130
	movnez	a2, a3, a10
	.loc 1 392 9 view .LVU131
	extui	a2, a2, 0, 8
	.loc 1 394 3 view .LVU132
	j	.L20
.LVL61:
.L19:
	.loc 1 382 5 is_stmt 1 view .LVU133
	movi.n	a8, 9
	beq	a3, a8, .L21
	beqi	a3, 10, .L22
	.loc 1 392 9 is_stmt 0 view .LVU134
	movi.n	a2, 0
.LVL62:
	.loc 1 392 9 view .LVU135
	j	.L20
.LVL63:
.L21:
	.loc 1 385 2 is_stmt 1 view .LVU136
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL64:
	.loc 1 386 2 view .LVU137
	j	.L23
.L22:
	.loc 1 388 2 view .LVU138
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL65:
	.loc 1 389 2 view .LVU139
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL66:
.L23:
	.loc 1 390 2 view .LVU140
	.loc 1 395 10 is_stmt 0 view .LVU141
	movi.n	a2, 1
.LVL67:
.L20:
	.loc 1 396 1 view .LVU142
	retw.n
.LFE4:
	.size	u8x8_d_lc7981_240x128, .-u8x8_d_lc7981_240x128
	.section	.text.u8x8_d_lc7981_240x64,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_lc7981_240x64_display_info
	.literal .LC7, u8x8_d_lc7981_240x64_init_seq
	.align	4
	.global	u8x8_d_lc7981_240x64
	.type	u8x8_d_lc7981_240x64, @function
u8x8_d_lc7981_240x64:
.LVL68:
.LFB5:
	.loc 1 450 1 is_stmt 1 view -0
	.loc 1 450 1 is_stmt 0 view .LVU144
	entry	sp, 32
.LCFI4:
	.loc 1 452 3 is_stmt 1 view .LVU145
.LVL69:
	.loc 1 450 1 is_stmt 0 view .LVU146
	extui	a3, a3, 0, 8
.LVL70:
.LBB26:
.LBI26:
	.loc 1 84 16 is_stmt 1 view .LVU147
.LBB27:
	.loc 1 86 3 view .LVU148
	.loc 1 87 3 view .LVU149
	.loc 1 88 3 view .LVU150
	.loc 1 89 3 view .LVU151
	movi.n	a8, 0xf
.LBE27:
.LBE26:
	.loc 1 450 1 is_stmt 0 view .LVU152
	mov.n	a11, a5
.LBB29:
.LBB28:
	.loc 1 89 3 view .LVU153
	bne	a3, a8, .L25
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL71:
	.loc 1 89 3 view .LVU154
.LBE28:
.LBE29:
	.loc 1 452 6 view .LVU155
	movi.n	a3, 1
.LVL72:
	.loc 1 452 6 view .LVU156
	movi.n	a2, 0
.LVL73:
	.loc 1 452 6 view .LVU157
	movnez	a2, a3, a10
	.loc 1 465 9 view .LVU158
	extui	a2, a2, 0, 8
	.loc 1 467 3 view .LVU159
	j	.L26
.LVL74:
.L25:
	.loc 1 455 5 is_stmt 1 view .LVU160
	movi.n	a8, 9
	beq	a3, a8, .L27
	beqi	a3, 10, .L28
	.loc 1 465 9 is_stmt 0 view .LVU161
	movi.n	a2, 0
.LVL75:
	.loc 1 465 9 view .LVU162
	j	.L26
.LVL76:
.L27:
	.loc 1 458 2 is_stmt 1 view .LVU163
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL77:
	.loc 1 459 2 view .LVU164
	j	.L29
.L28:
	.loc 1 461 2 view .LVU165
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL78:
	.loc 1 462 2 view .LVU166
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL79:
.L29:
	.loc 1 463 2 view .LVU167
	.loc 1 468 10 is_stmt 0 view .LVU168
	movi.n	a2, 1
.LVL80:
.L26:
	.loc 1 469 1 view .LVU169
	retw.n
.LFE5:
	.size	u8x8_d_lc7981_240x64, .-u8x8_d_lc7981_240x64
	.section	.rodata.u8x8_d_lc7981_240x64_init_seq,"a"
	.type	u8x8_d_lc7981_240x64_init_seq, @object
	.size	u8x8_d_lc7981_240x64_init_seq, 31
u8x8_d_lc7981_240x64_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	29
	.byte	21
	.byte	3
	.byte	22
	.byte	127
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_240x64_display_info,"a"
	.align	4
	.type	u8x8_lc7981_240x64_display_info, @object
	.size	u8x8_lc7981_240x64_display_info, 24
u8x8_lc7981_240x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	30
	.byte	8
	.byte	0
	.byte	0
	.short	240
	.short	64
	.section	.rodata.u8x8_d_lc7981_240x128_init_seq,"a"
	.type	u8x8_d_lc7981_240x128_init_seq, @object
	.size	u8x8_d_lc7981_240x128_init_seq, 31
u8x8_d_lc7981_240x128_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	29
	.byte	21
	.byte	3
	.byte	22
	.byte	127
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_240x128_display_info,"a"
	.align	4
	.type	u8x8_lc7981_240x128_display_info, @object
	.size	u8x8_lc7981_240x128_display_info, 24
u8x8_lc7981_240x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	30
	.byte	16
	.byte	0
	.byte	0
	.short	240
	.short	128
	.section	.rodata.u8x8_d_lc7981_160x160_init_seq,"a"
	.type	u8x8_d_lc7981_160x160_init_seq, @object
	.size	u8x8_d_lc7981_160x160_init_seq, 31
u8x8_d_lc7981_160x160_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	19
	.byte	21
	.byte	3
	.byte	22
	.byte	-97
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_160x160_display_info,"a"
	.align	4
	.type	u8x8_lc7981_160x160_display_info, @object
	.size	u8x8_lc7981_160x160_display_info, 24
u8x8_lc7981_160x160_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	20
	.byte	20
	.byte	0
	.byte	0
	.short	160
	.short	160
	.section	.rodata.u8x8_d_lc7981_160x80_init_seq,"a"
	.type	u8x8_d_lc7981_160x80_init_seq, @object
	.size	u8x8_d_lc7981_160x80_init_seq, 31
u8x8_d_lc7981_160x80_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	19
	.byte	21
	.byte	3
	.byte	22
	.byte	80
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_160x80_display_info,"a"
	.align	4
	.type	u8x8_lc7981_160x80_display_info, @object
	.size	u8x8_lc7981_160x80_display_info, 24
u8x8_lc7981_160x80_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	20
	.byte	10
	.byte	0
	.byte	0
	.short	160
	.short	80
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
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
	.4byte	0x1256
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0xc
	.4byte	.LASF218
	.4byte	.LASF219
	.4byte	.Ldebug_ranges0+0x60
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
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0x1
	.byte	0xba
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x80_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xa85
	.uleb128 0x13
	.4byte	0x6c
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.4byte	0xa75
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0x1
	.byte	0xd5
	.byte	0x16
	.4byte	0xa85
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x80_init_seq
	.uleb128 0x14
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x102
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x160_display_info
	.uleb128 0x14
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x11d
	.byte	0x16
	.4byte	0xa85
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x160_init_seq
	.uleb128 0x14
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x14a
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x128_display_info
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x165
	.byte	0x16
	.4byte	0xa85
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x128_init_seq
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x193
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x64_display_info
	.uleb128 0x14
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1ae
	.byte	0x16
	.4byte	0xa85
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x64_init_seq
	.uleb128 0x15
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4c
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1c1
	.byte	0x26
	.4byte	0x36e
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1c1
	.byte	0x34
	.4byte	0x81
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x1c1
	.byte	0x41
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1c1
	.byte	0x50
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	0x1000
	.4byte	.LBI26
	.byte	.LVU147
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x1c4
	.byte	0x8
	.4byte	0xc01
	.uleb128 0x1a
	.4byte	0x1035
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x1a
	.4byte	0x1029
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x1a
	.4byte	0x101d
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x1a
	.4byte	0x1011
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1c
	.4byte	0x1041
	.uleb128 0x1c
	.4byte	0x104b
	.uleb128 0x1c
	.4byte	0x1055
	.uleb128 0x1c
	.4byte	0x105f
	.uleb128 0x1c
	.4byte	0x1069
	.uleb128 0x1d
	.4byte	.LVL71
	.4byte	0x1092
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.4byte	0x101d
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x1f
	.4byte	0x1029
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL77
	.4byte	0x11fe
	.4byte	0xc1e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x64_display_info
	.byte	0
	.uleb128 0x20
	.4byte	.LVL78
	.4byte	0x120b
	.4byte	0xc32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL79
	.4byte	0x1218
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x64_init_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x178
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8a
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x178
	.byte	0x27
	.4byte	0x36e
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x178
	.byte	0x35
	.4byte	0x81
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x178
	.byte	0x42
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x178
	.byte	0x51
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	0x1000
	.4byte	.LBI22
	.byte	.LVU120
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x17b
	.byte	0x8
	.4byte	0xd3f
	.uleb128 0x1a
	.4byte	0x1035
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x1a
	.4byte	0x1029
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x1a
	.4byte	0x101d
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x1a
	.4byte	0x1011
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1c
	.4byte	0x1041
	.uleb128 0x1c
	.4byte	0x104b
	.uleb128 0x1c
	.4byte	0x1055
	.uleb128 0x1c
	.4byte	0x105f
	.uleb128 0x1c
	.4byte	0x1069
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0x1092
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.4byte	0x101d
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x1f
	.4byte	0x1029
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL64
	.4byte	0x11fe
	.4byte	0xd5c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x128_display_info
	.byte	0
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0x120b
	.4byte	0xd70
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL66
	.4byte	0x1218
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x128_init_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x130
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec8
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x130
	.byte	0x27
	.4byte	0x36e
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x130
	.byte	0x35
	.4byte	0x81
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x130
	.byte	0x42
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x130
	.byte	0x51
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	0x1000
	.4byte	.LBI18
	.byte	.LVU93
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x133
	.byte	0x8
	.4byte	0xe7d
	.uleb128 0x1a
	.4byte	0x1035
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1a
	.4byte	0x1029
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x1a
	.4byte	0x101d
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x1a
	.4byte	0x1011
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1c
	.4byte	0x1041
	.uleb128 0x1c
	.4byte	0x104b
	.uleb128 0x1c
	.4byte	0x1055
	.uleb128 0x1c
	.4byte	0x105f
	.uleb128 0x1c
	.4byte	0x1069
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0x1092
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.4byte	0x101d
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x1f
	.4byte	0x1029
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL51
	.4byte	0x11fe
	.4byte	0xe9a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x160_display_info
	.byte	0
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0x120b
	.4byte	0xeae
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL53
	.4byte	0x1218
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x160_init_seq
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF207
	.byte	0x1
	.byte	0xe8
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1000
	.uleb128 0x22
	.4byte	.LASF201
	.byte	0x1
	.byte	0xe8
	.byte	0x26
	.4byte	0x36e
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.byte	0xe8
	.byte	0x34
	.4byte	0x81
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x24
	.4byte	.LASF202
	.byte	0x1
	.byte	0xe8
	.byte	0x41
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x1
	.byte	0xe8
	.byte	0x50
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	0x1000
	.4byte	.LBI14
	.byte	.LVU66
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xeb
	.byte	0x8
	.4byte	0xfb5
	.uleb128 0x1a
	.4byte	0x1035
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1a
	.4byte	0x1029
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1a
	.4byte	0x101d
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1a
	.4byte	0x1011
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1c
	.4byte	0x1041
	.uleb128 0x1c
	.4byte	0x104b
	.uleb128 0x1c
	.4byte	0x1055
	.uleb128 0x1c
	.4byte	0x105f
	.uleb128 0x1c
	.4byte	0x1069
	.uleb128 0x1d
	.4byte	.LVL32
	.4byte	0x1092
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.4byte	0x101d
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x1f
	.4byte	0x1029
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL38
	.4byte	0x11fe
	.4byte	0xfd2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x80_display_info
	.byte	0
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0x120b
	.4byte	0xfe6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL40
	.4byte	0x1218
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x80_init_seq
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF208
	.byte	0x1
	.byte	0x54
	.byte	0x10
	.4byte	0x81
	.byte	0x1
	.4byte	0x1076
	.uleb128 0x27
	.4byte	.LASF201
	.byte	0x1
	.byte	0x54
	.byte	0x2d
	.4byte	0x36e
	.uleb128 0x28
	.string	"msg"
	.byte	0x1
	.byte	0x54
	.byte	0x3b
	.4byte	0x81
	.uleb128 0x27
	.4byte	.LASF202
	.byte	0x1
	.byte	0x54
	.byte	0x60
	.4byte	0x81
	.uleb128 0x27
	.4byte	.LASF203
	.byte	0x1
	.byte	0x54
	.byte	0x6f
	.4byte	0xaa
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.byte	0x56
	.byte	0xb
	.4byte	0x81
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x56
	.byte	0xe
	.4byte	0x81
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.byte	0x56
	.byte	0x11
	.4byte	0x81
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x92
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.byte	0x58
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x26
	.4byte	.LASF209
	.byte	0x1
	.byte	0x46
	.byte	0x10
	.4byte	0x81
	.byte	0x1
	.4byte	0x1092
	.uleb128 0x28
	.string	"v"
	.byte	0x1
	.byte	0x46
	.byte	0x25
	.4byte	0x81
	.byte	0
	.uleb128 0x2a
	.4byte	0x1000
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11fe
	.uleb128 0x1a
	.4byte	0x1011
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1a
	.4byte	0x1035
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2b
	.4byte	0x1041
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2b
	.4byte	0x104b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2b
	.4byte	0x1055
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2b
	.4byte	0x105f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2b
	.4byte	0x1069
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1a
	.4byte	0x1029
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1a
	.4byte	0x101d
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2c
	.4byte	0x1076
	.4byte	.LBI12
	.byte	.LVU27
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x7e
	.byte	0x1b
	.4byte	0x1141
	.uleb128 0x1a
	.4byte	0x1087
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x1225
	.4byte	0x1155
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x1232
	.4byte	0x116e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x123f
	.4byte	0x118b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0x1232
	.4byte	0x11a4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x123f
	.4byte	0x11c0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0x1232
	.4byte	0x11d9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0x123f
	.4byte	0x11ed
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x124c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x2d
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x2d
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x2d
	.4byte	.LASF216
	.4byte	.LASF216
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST28:
	.4byte	.LVL68
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
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 0
.LLST29:
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU147
	.uleb128 .LVU154
	.uleb128 .LVU160
	.uleb128 .LVU169
.LLST30:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU147
	.uleb128 .LVU154
	.uleb128 .LVU160
	.uleb128 .LVU169
.LLST31:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU147
	.uleb128 .LVU154
	.uleb128 .LVU160
	.uleb128 .LVU169
.LLST32:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU146
	.uleb128 .LVU154
	.uleb128 .LVU160
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU169
.LLST33:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU120
	.uleb128 .LVU127
	.uleb128 .LVU133
	.uleb128 .LVU142
.LLST24:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU120
	.uleb128 .LVU127
	.uleb128 .LVU133
	.uleb128 .LVU142
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU120
	.uleb128 .LVU127
	.uleb128 .LVU133
	.uleb128 .LVU142
.LLST26:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU119
	.uleb128 .LVU127
	.uleb128 .LVU133
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU142
.LLST27:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU93
	.uleb128 .LVU100
	.uleb128 .LVU106
	.uleb128 .LVU115
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU93
	.uleb128 .LVU100
	.uleb128 .LVU106
	.uleb128 .LVU115
.LLST19:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU93
	.uleb128 .LVU100
	.uleb128 .LVU106
	.uleb128 .LVU115
.LLST20:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU92
	.uleb128 .LVU100
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU115
.LLST21:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU66
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU88
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU66
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU88
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU66
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU88
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU65
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU88
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE6
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU15
	.uleb128 0
.LLST2:
	.4byte	.LVL5
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL23
	.2byte	0x5
	.byte	0x38
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x38
	.byte	0x76
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU50
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU3
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU53
	.uleb128 .LVU56
	.uleb128 0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL1
	.2byte	0x8
	.byte	0x73
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0xa
	.byte	0x73
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL2-1
	.4byte	.LVL3
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU25
	.uleb128 .LVU26
	.uleb128 .LVU48
	.uleb128 .LVU56
	.uleb128 0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU2
	.uleb128 0
.LLST7:
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x6
	.byte	0xfa
	.4byte	0x1029
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU2
	.uleb128 0
.LLST8:
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x6
	.byte	0xfa
	.4byte	0x101d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU27
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU37
	.uleb128 .LVU40
	.uleb128 .LVU43
	.uleb128 .LVU44
	.uleb128 .LVU45
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
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
.LASF202:
	.string	"arg_int"
.LASF219:
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
.LASF206:
	.string	"u8x8_d_lc7981_160x160"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF9:
	.string	"long long unsigned int"
.LASF185:
	.string	"u8x8_font_pxplustandynewtv_n"
.LASF165:
	.string	"u8x8_font_inb46_4x8_r"
.LASF198:
	.string	"u8x8_d_lc7981_240x128_init_seq"
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
.LASF197:
	.string	"u8x8_lc7981_240x128_display_info"
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
.LASF207:
	.string	"u8x8_d_lc7981_160x80"
.LASF128:
	.string	"u8x8_font_victoriamedium8_r"
.LASF130:
	.string	"u8x8_font_victoriamedium8_u"
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
.LASF196:
	.string	"u8x8_d_lc7981_160x160_init_seq"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF210:
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
.LASF209:
	.string	"reverse_byte"
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF159:
	.string	"u8x8_font_inb21_2x4_r"
.LASF142:
	.string	"u8x8_font_courR24_3x4_n"
.LASF213:
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
.LASF199:
	.string	"u8x8_lc7981_240x64_display_info"
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
.LASF96:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF195:
	.string	"u8x8_lc7981_160x160_display_info"
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
.LASF211:
	.string	"u8x8_d_helper_display_init"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF50:
	.string	"tile_height"
.LASF93:
	.string	"u8x8_font_open_iconic_play_2x2"
.LASF148:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF72:
	.string	"u8x8_font_8x13_1x2_f"
.LASF108:
	.string	"u8x8_font_profont29_2x3_f"
.LASF114:
	.string	"u8x8_font_artosserif8_r"
.LASF194:
	.string	"u8x8_d_lc7981_160x80_init_seq"
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
.LASF201:
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
.LASF218:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_lc7981.c"
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
.LASF208:
	.string	"u8x8_d_lc7981_common"
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
.LASF216:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF217:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
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
.LASF200:
	.string	"u8x8_d_lc7981_240x64_init_seq"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF215:
	.string	"u8x8_cad_SendArg"
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
.LASF214:
	.string	"u8x8_cad_SendCmd"
.LASF68:
	.string	"u8x8_font_5x7_n"
.LASF193:
	.string	"u8x8_lc7981_160x80_display_info"
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
.LASF205:
	.string	"u8x8_d_lc7981_240x128"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF204:
	.string	"u8x8_d_lc7981_240x64"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF203:
	.string	"arg_ptr"
.LASF54:
	.string	"pixel_height"
.LASF212:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
