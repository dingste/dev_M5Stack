	.file	"u8x8_d_ssd1327.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1327_96x96_generic,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_ssd1327_96x96_powersave0_seq
	.literal .LC1, u8x8_d_ssd1327_96x96_powersave1_seq
	.literal .LC2, u8x8_ssd1327_8to32_dest_buf
	.align	4
	.type	u8x8_d_ssd1327_96x96_generic, @function
u8x8_d_ssd1327_96x96_generic:
.LVL0:
.LFB1:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_ssd1327.c"
	.loc 1 131 1 view -0
	.loc 1 131 1 is_stmt 0 view .LVU1
	entry	sp, 64
.LCFI0:
	.loc 1 132 3 is_stmt 1 view .LVU2
	.loc 1 133 3 view .LVU3
	.loc 1 134 3 view .LVU4
	movi.n	a6, 0xe
	beq	a3, a6, .L2
	movi.n	a6, 0xf
	beq	a3, a6, .L3
	movi.n	a6, 0xb
	.loc 1 200 14 is_stmt 0 view .LVU5
	movi.n	a5, 0
.LVL1:
	.loc 1 200 14 view .LVU6
	bne	a3, a6, .L4
	.loc 1 148 7 is_stmt 1 view .LVU7
	.loc 1 149 2 is_stmt 0 view .LVU8
	l32r	a11, .LC0
	.loc 1 148 10 view .LVU9
	beq	a4, a5, .L23
.L5:
	.loc 1 151 2 is_stmt 1 view .LVU10
	l32r	a11, .LC1
.L23:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L21
.LVL3:
.L2:
	.loc 1 155 7 view .LVU11
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 156 7 view .LVU12
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 157 7 view .LVU13
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
	.loc 1 158 7 view .LVU14
	j	.L22
.L3:
.LVL7:
.LBB6:
.LBB7:
	.loc 1 162 7 view .LVU15
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL8:
	.loc 1 163 7 view .LVU16
	.loc 1 163 9 is_stmt 0 view .LVU17
	l8ui	a6, a5, 5
.LVL9:
	.loc 1 164 7 is_stmt 1 view .LVU18
	.loc 1 165 8 is_stmt 0 view .LVU19
	l8ui	a7, a2, 34
	.loc 1 164 9 view .LVU20
	slli	a6, a6, 2
.LVL10:
	.loc 1 165 7 is_stmt 1 view .LVU21
	.loc 1 165 8 is_stmt 0 view .LVU22
	srli	a7, a7, 1
	add.n	a6, a6, a7
.LVL11:
	.loc 1 167 9 view .LVU23
	l8ui	a7, a5, 6
	.loc 1 170 7 view .LVU24
	movi	a11, 0x75
	.loc 1 168 9 view .LVU25
	slli	a7, a7, 3
	.loc 1 170 7 view .LVU26
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL12:
	.loc 1 168 9 view .LVU27
	extui	a7, a7, 0, 8
	.loc 1 171 7 view .LVU28
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL13:
	.loc 1 172 31 view .LVU29
	addi.n	a11, a7, 7
	.loc 1 172 7 view .LVU30
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 165 8 view .LVU31
	extui	a6, a6, 0, 8
.LVL14:
	.loc 1 167 7 is_stmt 1 view .LVU32
	.loc 1 168 7 view .LVU33
	.loc 1 170 7 view .LVU34
	.loc 1 171 7 view .LVU35
	.loc 1 172 7 view .LVU36
	call8	u8x8_cad_SendArg
.LVL15:
.L11:
	.loc 1 175 7 view .LVU37
	.loc 1 177 2 view .LVU38
	.loc 1 177 4 is_stmt 0 view .LVU39
	l8ui	a3, a5, 4
	.loc 1 178 6 view .LVU40
	l32i.n	a8, a5, 0
	.loc 1 177 4 view .LVU41
	s32i.n	a3, sp, 0
.LVL16:
	.loc 1 178 2 is_stmt 1 view .LVU42
	.loc 1 178 6 is_stmt 0 view .LVU43
	mov.n	a7, a6
.LVL17:
.L10:
	.loc 1 180 2 is_stmt 1 view .LVU44
	.loc 1 182 4 view .LVU45
	movi.n	a11, 0x15
	mov.n	a10, a2
	s32i.n	a8, sp, 4
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 183 4 view .LVU46
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL19:
	.loc 1 184 4 view .LVU47
	addi.n	a11, a7, 3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL20:
	.loc 1 187 4 view .LVU48
.LBB8:
.LBI8:
	.loc 1 97 17 view .LVU49
	.loc 1 97 17 is_stmt 0 view .LVU50
.LBE8:
	.loc 1 184 4 view .LVU51
	l32i.n	a8, sp, 4
	l32r	a11, .LC2
.LBB10:
.LBB9:
	.loc 1 104 3 view .LVU52
	addi.n	a9, a8, 8
	s32i.n	a9, sp, 12
.LVL21:
.L9:
	.loc 1 106 5 is_stmt 1 view .LVU53
	.loc 1 107 5 view .LVU54
	.loc 1 112 5 is_stmt 0 view .LVU55
	movi.n	a10, 8
	.loc 1 108 7 view .LVU56
	l8ui	a14, a8, 0
	.loc 1 110 7 view .LVU57
	l8ui	a13, a8, 1
	.loc 1 107 10 view .LVU58
	mov.n	a15, a11
.LVL22:
	.loc 1 108 5 is_stmt 1 view .LVU59
	.loc 1 109 5 view .LVU60
	.loc 1 110 5 view .LVU61
	.loc 1 111 5 view .LVU62
	addi.n	a8, a8, 2
.LVL23:
	.loc 1 112 5 view .LVU63
	.loc 1 112 5 is_stmt 0 view .LVU64
	s32i.n	a10, sp, 16
.LVL24:
.L8:
	.loc 1 114 7 is_stmt 1 view .LVU65
	.loc 1 115 7 view .LVU66
	.loc 1 115 10 is_stmt 0 view .LVU67
	extui	a12, a14, 0, 1
	.loc 1 115 20 view .LVU68
	movi	a9, 0xf0
	movi.n	a10, 0
	moveqz	a9, a10, a12
	s32i.n	a9, sp, 8
.LVL25:
	.loc 1 116 7 is_stmt 1 view .LVU69
	.loc 1 116 10 is_stmt 0 view .LVU70
	bbc	a13, a10, .L7
	.loc 1 116 18 is_stmt 1 view .LVU71
	.loc 1 116 20 is_stmt 0 view .LVU72
	movi.n	a12, 0xf
	or	a9, a9, a12
	s32i.n	a9, sp, 8
.LVL26:
.L7:
	.loc 1 117 7 is_stmt 1 view .LVU73
	.loc 1 120 9 is_stmt 0 view .LVU74
	l32i.n	a10, sp, 16
	.loc 1 117 13 view .LVU75
	l32i.n	a9, sp, 8
	.loc 1 120 9 view .LVU76
	addi.n	a10, a10, -1
	.loc 1 117 13 view .LVU77
	s8i	a9, a15, 0
	.loc 1 118 7 is_stmt 1 view .LVU78
	.loc 1 120 9 is_stmt 0 view .LVU79
	s32i.n	a10, sp, 16
	.loc 1 118 11 view .LVU80
	addi.n	a15, a15, 4
.LVL27:
	.loc 1 119 7 is_stmt 1 view .LVU81
	.loc 1 119 9 is_stmt 0 view .LVU82
	srli	a14, a14, 1
.LVL28:
	.loc 1 120 7 is_stmt 1 view .LVU83
	.loc 1 120 9 is_stmt 0 view .LVU84
	srli	a13, a13, 1
.LVL29:
	.loc 1 120 9 view .LVU85
	bnez.n	a10, .L8
.LVL30:
	.loc 1 104 3 view .LVU86
	l32i.n	a12, sp, 12
	addi.n	a11, a11, 1
.LVL31:
	.loc 1 104 3 view .LVU87
	bne	a8, a12, .L9
	.loc 1 124 3 is_stmt 1 view .LVU88
.LVL32:
	.loc 1 124 3 is_stmt 0 view .LVU89
.LBE9:
.LBE10:
	.loc 1 187 4 view .LVU90
	l32r	a12, .LC2
	movi.n	a11, 0x20
	mov.n	a10, a2
	s32i.n	a8, sp, 4
	call8	u8x8_cad_SendData
.LVL33:
	.loc 1 188 4 is_stmt 1 view .LVU91
	.loc 1 190 5 is_stmt 0 view .LVU92
	addi.n	a9, a3, -1
	.loc 1 189 6 view .LVU93
	addi.n	a7, a7, 4
.LVL34:
	.loc 1 190 5 view .LVU94
	extui	a3, a9, 0, 8
.LVL35:
	.loc 1 188 8 view .LVU95
	l32i.n	a8, sp, 4
.LVL36:
	.loc 1 189 4 is_stmt 1 view .LVU96
	.loc 1 189 6 is_stmt 0 view .LVU97
	extui	a7, a7, 0, 8
.LVL37:
	.loc 1 190 4 is_stmt 1 view .LVU98
	.loc 1 191 2 is_stmt 0 view .LVU99
	bnez.n	a3, .L10
	l32i.n	a8, sp, 0
.LVL38:
	.loc 1 194 9 view .LVU100
	addi.n	a4, a4, -1
.LVL39:
	.loc 1 194 9 view .LVU101
	addi	a3, a8, 64
	slli	a3, a3, 2
	add.n	a6, a6, a3
	extui	a4, a4, 0, 8
.LVL40:
	.loc 1 194 9 view .LVU102
	extui	a6, a6, 0, 8
	.loc 1 194 2 is_stmt 1 view .LVU103
.LVL41:
	.loc 1 195 7 is_stmt 0 view .LVU104
	bnez.n	a4, .L11
.LVL42:
.L22:
	.loc 1 197 7 is_stmt 1 view .LVU105
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL43:
.L21:
	.loc 1 198 7 view .LVU106
	.loc 1 197 7 is_stmt 0 view .LVU107
	movi.n	a5, 1
.L4:
.LBE7:
.LBE6:
	.loc 1 203 1 view .LVU108
	mov.n	a2, a5
.LVL44:
	.loc 1 203 1 view .LVU109
	retw.n
.LFE1:
	.size	u8x8_d_ssd1327_96x96_generic, .-u8x8_d_ssd1327_96x96_generic
	.section	.text.u8x8_d_ssd1327_ws_96x64,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_ssd1327_winstar_96x64_display_info
	.literal .LC4, u8x8_d_ssd1327_winstar_96x64_init_seq
	.literal .LC5, u8x8_d_ssd1327_winstar_96x64_flip0_seq
	.literal .LC6, u8x8_d_ssd1327_winstar_96x64_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_ws_96x64
	.type	u8x8_d_ssd1327_ws_96x64, @function
u8x8_d_ssd1327_ws_96x64:
.LVL45:
.LFB2:
	.loc 1 306 1 is_stmt 1 view -0
	.loc 1 306 1 is_stmt 0 view .LVU111
	entry	sp, 32
.LCFI1:
	.loc 1 307 3 is_stmt 1 view .LVU112
	.loc 1 306 1 is_stmt 0 view .LVU113
	extui	a3, a3, 0, 8
	.loc 1 306 1 view .LVU114
	extui	a4, a4, 0, 8
	.loc 1 307 8 view .LVU115
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL46:
	.loc 1 307 6 view .LVU116
	bnez.n	a10, .L29
	.loc 1 309 3 is_stmt 1 view .LVU117
	.loc 1 309 6 is_stmt 0 view .LVU118
	movi.n	a8, 9
	bne	a3, a8, .L26
	.loc 1 311 5 is_stmt 1 view .LVU119
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL47:
	.loc 1 312 5 view .LVU120
	j	.L29
.L26:
	.loc 1 314 8 view .LVU121
	.loc 1 314 11 is_stmt 0 view .LVU122
	bnei	a3, 10, .L27
	.loc 1 316 5 is_stmt 1 view .LVU123
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL48:
	.loc 1 317 5 view .LVU124
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL49:
	.loc 1 318 5 view .LVU125
	j	.L29
.L27:
	.loc 1 320 8 view .LVU126
	.loc 1 320 11 is_stmt 0 view .LVU127
	movi.n	a8, 0xd
	bne	a3, a8, .L25
	.loc 1 322 5 is_stmt 1 view .LVU128
	.loc 1 322 8 is_stmt 0 view .LVU129
	bnez.n	a4, .L28
	.loc 1 324 7 is_stmt 1 view .LVU130
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL50:
	.loc 1 325 7 view .LVU131
	.loc 1 325 42 is_stmt 0 view .LVU132
	l32i.n	a3, a2, 0
.LVL51:
	.loc 1 325 22 view .LVU133
	l8ui	a3, a3, 18
	j	.L30
.L28:
	.loc 1 329 7 is_stmt 1 view .LVU134
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL52:
	.loc 1 330 7 view .LVU135
	.loc 1 330 42 is_stmt 0 view .LVU136
	l32i.n	a3, a2, 0
	.loc 1 330 22 view .LVU137
	l8ui	a3, a3, 19
.L30:
	.loc 1 330 22 view .LVU138
	s8i	a3, a2, 34
.L29:
	.loc 1 308 12 view .LVU139
	movi.n	a10, 1
.L25:
	.loc 1 335 1 view .LVU140
	mov.n	a2, a10
.LVL53:
	.loc 1 335 1 view .LVU141
	retw.n
.LFE2:
	.size	u8x8_d_ssd1327_ws_96x64, .-u8x8_d_ssd1327_ws_96x64
	.section	.text.u8x8_d_ssd1327_seeed_96x96,"ax",@progbits
	.literal_position
	.literal .LC7, u8x8_ssd1327_96x96_display_info
	.literal .LC8, u8x8_d_ssd1327_96x96_init_seq
	.literal .LC9, u8x8_d_ssd1327_seeed_96x96_flip0_seq
	.literal .LC10, u8x8_d_ssd1327_seeed_96x96_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_seeed_96x96
	.type	u8x8_d_ssd1327_seeed_96x96, @function
u8x8_d_ssd1327_seeed_96x96:
.LVL54:
.LFB3:
	.loc 1 429 1 is_stmt 1 view -0
	.loc 1 429 1 is_stmt 0 view .LVU143
	entry	sp, 32
.LCFI2:
	.loc 1 430 3 is_stmt 1 view .LVU144
	.loc 1 429 1 is_stmt 0 view .LVU145
	extui	a3, a3, 0, 8
	.loc 1 429 1 view .LVU146
	extui	a4, a4, 0, 8
	.loc 1 430 8 view .LVU147
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL55:
	.loc 1 430 6 view .LVU148
	bnez.n	a10, .L36
	.loc 1 432 3 is_stmt 1 view .LVU149
	.loc 1 432 6 is_stmt 0 view .LVU150
	movi.n	a8, 9
	bne	a3, a8, .L33
	.loc 1 434 5 is_stmt 1 view .LVU151
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL56:
	.loc 1 435 5 view .LVU152
	j	.L36
.L33:
	.loc 1 437 8 view .LVU153
	.loc 1 437 11 is_stmt 0 view .LVU154
	bnei	a3, 10, .L34
	.loc 1 439 5 is_stmt 1 view .LVU155
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL57:
	.loc 1 440 5 view .LVU156
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL58:
	.loc 1 441 5 view .LVU157
	j	.L36
.L34:
	.loc 1 443 8 view .LVU158
	.loc 1 443 11 is_stmt 0 view .LVU159
	movi.n	a8, 0xd
	bne	a3, a8, .L32
	.loc 1 445 5 is_stmt 1 view .LVU160
	.loc 1 445 8 is_stmt 0 view .LVU161
	bnez.n	a4, .L35
	.loc 1 447 7 is_stmt 1 view .LVU162
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL59:
	.loc 1 448 7 view .LVU163
	.loc 1 448 42 is_stmt 0 view .LVU164
	l32i.n	a3, a2, 0
.LVL60:
	.loc 1 448 22 view .LVU165
	l8ui	a3, a3, 18
	j	.L37
.L35:
	.loc 1 452 7 is_stmt 1 view .LVU166
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL61:
	.loc 1 453 7 view .LVU167
	.loc 1 453 42 is_stmt 0 view .LVU168
	l32i.n	a3, a2, 0
	.loc 1 453 22 view .LVU169
	l8ui	a3, a3, 19
.L37:
	.loc 1 453 22 view .LVU170
	s8i	a3, a2, 34
.L36:
	.loc 1 431 12 view .LVU171
	movi.n	a10, 1
.L32:
	.loc 1 458 1 view .LVU172
	mov.n	a2, a10
.LVL62:
	.loc 1 458 1 view .LVU173
	retw.n
.LFE3:
	.size	u8x8_d_ssd1327_seeed_96x96, .-u8x8_d_ssd1327_seeed_96x96
	.section	.text.u8x8_d_ssd1327_ea_w128128,"ax",@progbits
	.literal_position
	.literal .LC11, u8x8_ssd1327_ea_w128128_display_info
	.literal .LC12, u8x8_d_ssd1327_ea_w128128_init_seq
	.literal .LC13, u8x8_d_ssd1327_ea_w128128_flip0_seq
	.literal .LC14, u8x8_d_ssd1327_ea_w128128_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_ea_w128128
	.type	u8x8_d_ssd1327_ea_w128128, @function
u8x8_d_ssd1327_ea_w128128:
.LVL63:
.LFB4:
	.loc 1 550 1 is_stmt 1 view -0
	.loc 1 550 1 is_stmt 0 view .LVU175
	entry	sp, 32
.LCFI3:
	.loc 1 551 3 is_stmt 1 view .LVU176
	.loc 1 550 1 is_stmt 0 view .LVU177
	extui	a3, a3, 0, 8
	.loc 1 550 1 view .LVU178
	extui	a4, a4, 0, 8
	.loc 1 551 8 view .LVU179
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL64:
	.loc 1 551 6 view .LVU180
	bnez.n	a10, .L43
	.loc 1 553 3 is_stmt 1 view .LVU181
	.loc 1 553 6 is_stmt 0 view .LVU182
	movi.n	a8, 9
	bne	a3, a8, .L40
	.loc 1 555 5 is_stmt 1 view .LVU183
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL65:
	.loc 1 556 5 view .LVU184
	j	.L43
.L40:
	.loc 1 558 8 view .LVU185
	.loc 1 558 11 is_stmt 0 view .LVU186
	bnei	a3, 10, .L41
	.loc 1 560 5 is_stmt 1 view .LVU187
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL66:
	.loc 1 561 5 view .LVU188
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL67:
	.loc 1 562 5 view .LVU189
	j	.L43
.L41:
	.loc 1 564 8 view .LVU190
	.loc 1 564 11 is_stmt 0 view .LVU191
	movi.n	a8, 0xd
	bne	a3, a8, .L39
	.loc 1 566 5 is_stmt 1 view .LVU192
	.loc 1 566 8 is_stmt 0 view .LVU193
	bnez.n	a4, .L42
	.loc 1 568 7 is_stmt 1 view .LVU194
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL68:
	.loc 1 569 7 view .LVU195
	.loc 1 569 42 is_stmt 0 view .LVU196
	l32i.n	a3, a2, 0
.LVL69:
	.loc 1 569 22 view .LVU197
	l8ui	a3, a3, 18
	j	.L44
.L42:
	.loc 1 573 7 is_stmt 1 view .LVU198
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL70:
	.loc 1 574 7 view .LVU199
	.loc 1 574 42 is_stmt 0 view .LVU200
	l32i.n	a3, a2, 0
	.loc 1 574 22 view .LVU201
	l8ui	a3, a3, 19
.L44:
	.loc 1 574 22 view .LVU202
	s8i	a3, a2, 34
.L43:
	.loc 1 552 12 view .LVU203
	movi.n	a10, 1
.L39:
	.loc 1 579 1 view .LVU204
	mov.n	a2, a10
.LVL71:
	.loc 1 579 1 view .LVU205
	retw.n
.LFE4:
	.size	u8x8_d_ssd1327_ea_w128128, .-u8x8_d_ssd1327_ea_w128128
	.section	.text.u8x8_d_ssd1327_midas_128x128,"ax",@progbits
	.literal_position
	.literal .LC15, u8x8_ssd1327_128x128_display_info
	.literal .LC16, u8x8_d_ssd1327_128x128_init_seq
	.literal .LC17, u8x8_d_ssd1327_128x128_flip0_seq
	.literal .LC18, u8x8_d_ssd1327_128x128_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_midas_128x128
	.type	u8x8_d_ssd1327_midas_128x128, @function
u8x8_d_ssd1327_midas_128x128:
.LVL72:
.LFB5:
	.loc 1 690 1 is_stmt 1 view -0
	.loc 1 690 1 is_stmt 0 view .LVU207
	entry	sp, 32
.LCFI4:
	.loc 1 692 3 is_stmt 1 view .LVU208
	.loc 1 690 1 is_stmt 0 view .LVU209
	extui	a3, a3, 0, 8
	.loc 1 690 1 view .LVU210
	extui	a4, a4, 0, 8
	.loc 1 692 8 view .LVU211
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL73:
	.loc 1 692 6 view .LVU212
	bnez.n	a10, .L50
	.loc 1 694 3 is_stmt 1 view .LVU213
	.loc 1 694 6 is_stmt 0 view .LVU214
	movi.n	a8, 9
	bne	a3, a8, .L47
	.loc 1 696 5 is_stmt 1 view .LVU215
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL74:
	.loc 1 697 5 view .LVU216
	j	.L50
.L47:
	.loc 1 699 8 view .LVU217
	.loc 1 699 11 is_stmt 0 view .LVU218
	bnei	a3, 10, .L48
	.loc 1 701 5 is_stmt 1 view .LVU219
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL75:
	.loc 1 702 5 view .LVU220
	l32r	a11, .LC16
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL76:
	.loc 1 703 5 view .LVU221
	j	.L50
.L48:
	.loc 1 705 8 view .LVU222
	.loc 1 705 11 is_stmt 0 view .LVU223
	movi.n	a8, 0xd
	bne	a3, a8, .L46
	.loc 1 707 5 is_stmt 1 view .LVU224
	.loc 1 707 8 is_stmt 0 view .LVU225
	bnez.n	a4, .L49
	.loc 1 709 7 is_stmt 1 view .LVU226
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL77:
	.loc 1 710 7 view .LVU227
	.loc 1 710 42 is_stmt 0 view .LVU228
	l32i.n	a3, a2, 0
.LVL78:
	.loc 1 710 22 view .LVU229
	l8ui	a3, a3, 18
	j	.L51
.L49:
	.loc 1 714 7 is_stmt 1 view .LVU230
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL79:
	.loc 1 715 7 view .LVU231
	.loc 1 715 42 is_stmt 0 view .LVU232
	l32i.n	a3, a2, 0
	.loc 1 715 22 view .LVU233
	l8ui	a3, a3, 19
.L51:
	.loc 1 715 22 view .LVU234
	s8i	a3, a2, 34
.L50:
	.loc 1 693 12 view .LVU235
	movi.n	a10, 1
.L46:
	.loc 1 720 1 view .LVU236
	mov.n	a2, a10
.LVL80:
	.loc 1 720 1 view .LVU237
	retw.n
.LFE5:
	.size	u8x8_d_ssd1327_midas_128x128, .-u8x8_d_ssd1327_midas_128x128
	.section	.text.u8x8_d_ssd1327_ws_128x128,"ax",@progbits
	.literal_position
	.literal .LC19, u8x8_ssd1327_ea_w128128_display_info
	.literal .LC20, u8x8_d_ssd1327_ws_128x128_init_seq
	.literal .LC21, u8x8_d_ssd1327_ea_w128128_flip0_seq
	.literal .LC22, u8x8_d_ssd1327_ea_w128128_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_ws_128x128
	.type	u8x8_d_ssd1327_ws_128x128, @function
u8x8_d_ssd1327_ws_128x128:
.LVL81:
.LFB6:
	.loc 1 776 1 is_stmt 1 view -0
	.loc 1 776 1 is_stmt 0 view .LVU239
	entry	sp, 32
.LCFI5:
	.loc 1 778 3 is_stmt 1 view .LVU240
	.loc 1 776 1 is_stmt 0 view .LVU241
	extui	a3, a3, 0, 8
	.loc 1 776 1 view .LVU242
	extui	a4, a4, 0, 8
	.loc 1 778 8 view .LVU243
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL82:
	.loc 1 778 6 view .LVU244
	bnez.n	a10, .L57
	.loc 1 780 3 is_stmt 1 view .LVU245
	.loc 1 780 6 is_stmt 0 view .LVU246
	movi.n	a8, 9
	bne	a3, a8, .L54
	.loc 1 782 5 is_stmt 1 view .LVU247
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL83:
	.loc 1 783 5 view .LVU248
	j	.L57
.L54:
	.loc 1 785 8 view .LVU249
	.loc 1 785 11 is_stmt 0 view .LVU250
	bnei	a3, 10, .L55
	.loc 1 787 5 is_stmt 1 view .LVU251
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL84:
	.loc 1 788 5 view .LVU252
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL85:
	.loc 1 789 5 view .LVU253
	j	.L57
.L55:
	.loc 1 791 8 view .LVU254
	.loc 1 791 11 is_stmt 0 view .LVU255
	movi.n	a8, 0xd
	bne	a3, a8, .L53
	.loc 1 793 5 is_stmt 1 view .LVU256
	.loc 1 793 8 is_stmt 0 view .LVU257
	bnez.n	a4, .L56
	.loc 1 795 7 is_stmt 1 view .LVU258
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL86:
	.loc 1 796 7 view .LVU259
	.loc 1 796 42 is_stmt 0 view .LVU260
	l32i.n	a3, a2, 0
.LVL87:
	.loc 1 796 22 view .LVU261
	l8ui	a3, a3, 18
	j	.L58
.L56:
	.loc 1 800 7 is_stmt 1 view .LVU262
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL88:
	.loc 1 801 7 view .LVU263
	.loc 1 801 42 is_stmt 0 view .LVU264
	l32i.n	a3, a2, 0
	.loc 1 801 22 view .LVU265
	l8ui	a3, a3, 19
.L58:
	.loc 1 801 22 view .LVU266
	s8i	a3, a2, 34
.L57:
	.loc 1 779 12 view .LVU267
	movi.n	a10, 1
.L53:
	.loc 1 806 1 view .LVU268
	mov.n	a2, a10
.LVL89:
	.loc 1 806 1 view .LVU269
	retw.n
.LFE6:
	.size	u8x8_d_ssd1327_ws_128x128, .-u8x8_d_ssd1327_ws_128x128
	.section	.text.u8x8_d_ssd1327_visionox_128x96,"ax",@progbits
	.literal_position
	.literal .LC23, u8x8_ssd1327_128x96_display_info
	.literal .LC24, u8x8_d_ssd1327_128x96_init_seq
	.literal .LC25, u8x8_d_ssd1327_128x96_flip0_seq
	.literal .LC26, u8x8_d_ssd1327_128x96_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_visionox_128x96
	.type	u8x8_d_ssd1327_visionox_128x96, @function
u8x8_d_ssd1327_visionox_128x96:
.LVL90:
.LFB7:
	.loc 1 921 1 is_stmt 1 view -0
	.loc 1 921 1 is_stmt 0 view .LVU271
	entry	sp, 32
.LCFI6:
	.loc 1 923 3 is_stmt 1 view .LVU272
	.loc 1 921 1 is_stmt 0 view .LVU273
	extui	a3, a3, 0, 8
	.loc 1 921 1 view .LVU274
	extui	a4, a4, 0, 8
	.loc 1 923 8 view .LVU275
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL91:
	.loc 1 923 6 view .LVU276
	bnez.n	a10, .L64
	.loc 1 925 3 is_stmt 1 view .LVU277
	.loc 1 925 6 is_stmt 0 view .LVU278
	movi.n	a8, 9
	bne	a3, a8, .L61
	.loc 1 927 5 is_stmt 1 view .LVU279
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL92:
	.loc 1 928 5 view .LVU280
	j	.L64
.L61:
	.loc 1 930 8 view .LVU281
	.loc 1 930 11 is_stmt 0 view .LVU282
	bnei	a3, 10, .L62
	.loc 1 932 5 is_stmt 1 view .LVU283
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL93:
	.loc 1 933 5 view .LVU284
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL94:
	.loc 1 934 5 view .LVU285
	j	.L64
.L62:
	.loc 1 936 8 view .LVU286
	.loc 1 936 11 is_stmt 0 view .LVU287
	movi.n	a8, 0xd
	bne	a3, a8, .L60
	.loc 1 938 5 is_stmt 1 view .LVU288
	.loc 1 938 8 is_stmt 0 view .LVU289
	bnez.n	a4, .L63
	.loc 1 940 7 is_stmt 1 view .LVU290
	l32r	a11, .LC25
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL95:
	.loc 1 941 7 view .LVU291
	.loc 1 941 42 is_stmt 0 view .LVU292
	l32i.n	a3, a2, 0
.LVL96:
	.loc 1 941 22 view .LVU293
	l8ui	a3, a3, 18
	j	.L65
.L63:
	.loc 1 945 7 is_stmt 1 view .LVU294
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL97:
	.loc 1 946 7 view .LVU295
	.loc 1 946 42 is_stmt 0 view .LVU296
	l32i.n	a3, a2, 0
	.loc 1 946 22 view .LVU297
	l8ui	a3, a3, 19
.L65:
	.loc 1 946 22 view .LVU298
	s8i	a3, a2, 34
.L64:
	.loc 1 924 12 view .LVU299
	movi.n	a10, 1
.L60:
	.loc 1 951 1 view .LVU300
	mov.n	a2, a10
.LVL98:
	.loc 1 951 1 view .LVU301
	retw.n
.LFE7:
	.size	u8x8_d_ssd1327_visionox_128x96, .-u8x8_d_ssd1327_visionox_128x96
	.section	.rodata.u8x8_d_ssd1327_128x96_flip1_seq,"a"
	.type	u8x8_d_ssd1327_128x96_flip1_seq, @object
	.size	u8x8_d_ssd1327_128x96_flip1_seq, 11
u8x8_d_ssd1327_128x96_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	96
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x96_flip0_seq,"a"
	.type	u8x8_d_ssd1327_128x96_flip0_seq, @object
	.size	u8x8_d_ssd1327_128x96_flip0_seq, 11
u8x8_d_ssd1327_128x96_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x96_init_seq,"a"
	.type	u8x8_d_ssd1327_128x96_init_seq, @object
	.size	u8x8_d_ssd1327_128x96_init_seq, 61
u8x8_d_ssd1327_128x96_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	-33
	.byte	21
	.byte	-79
	.byte	22
	.byte	34
	.byte	21
	.byte	-77
	.byte	22
	.byte	80
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	16
	.byte	21
	.byte	-66
	.byte	22
	.byte	5
	.byte	21
	.byte	-74
	.byte	22
	.byte	10
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_128x96_display_info,"a"
	.align	4
	.type	u8x8_ssd1327_128x96_display_info, @object
	.size	u8x8_ssd1327_128x96_display_info, 24
u8x8_ssd1327_128x96_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	1
	.byte	40
	.byte	60
	.byte	16
	.byte	12
	.byte	0
	.byte	0
	.short	128
	.short	96
	.section	.rodata.u8x8_d_ssd1327_ws_128x128_init_seq,"a"
	.type	u8x8_d_ssd1327_ws_128x128_init_seq, @object
	.size	u8x8_d_ssd1327_ws_128x128_init_seq, 71
u8x8_d_ssd1327_ws_128x128_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	21
	.byte	-127
	.byte	22
	.byte	-128
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-92
	.byte	22
	.byte	-88
	.byte	22
	.byte	127
	.byte	21
	.byte	-79
	.byte	22
	.byte	-15
	.byte	21
	.byte	-77
	.byte	22
	.byte	0
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-74
	.byte	22
	.byte	15
	.byte	21
	.byte	-66
	.byte	22
	.byte	15
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x128_flip1_seq,"a"
	.type	u8x8_d_ssd1327_128x128_flip1_seq, @object
	.size	u8x8_d_ssd1327_128x128_flip1_seq, 11
u8x8_d_ssd1327_128x128_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x128_flip0_seq,"a"
	.type	u8x8_d_ssd1327_128x128_flip0_seq, @object
	.size	u8x8_d_ssd1327_128x128_flip0_seq, 11
u8x8_d_ssd1327_128x128_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x128_init_seq,"a"
	.type	u8x8_d_ssd1327_128x128_init_seq, @object
	.size	u8x8_d_ssd1327_128x128_init_seq, 61
u8x8_d_ssd1327_128x128_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	127
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	81
	.byte	21
	.byte	-77
	.byte	22
	.byte	1
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	1
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_128x128_display_info,"a"
	.align	4
	.type	u8x8_ssd1327_128x128_display_info, @object
	.size	u8x8_ssd1327_128x128_display_info, 24
u8x8_ssd1327_128x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	1
	.byte	40
	.byte	60
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
	.section	.rodata.u8x8_d_ssd1327_ea_w128128_flip1_seq,"a"
	.type	u8x8_d_ssd1327_ea_w128128_flip1_seq, @object
	.size	u8x8_d_ssd1327_ea_w128128_flip1_seq, 11
u8x8_d_ssd1327_ea_w128128_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_ea_w128128_flip0_seq,"a"
	.type	u8x8_d_ssd1327_ea_w128128_flip0_seq, @object
	.size	u8x8_d_ssd1327_ea_w128128_flip0_seq, 11
u8x8_d_ssd1327_ea_w128128_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_ea_w128128_init_seq,"a"
	.type	u8x8_d_ssd1327_ea_w128128_init_seq, @object
	.size	u8x8_d_ssd1327_ea_w128128_init_seq, 61
u8x8_d_ssd1327_ea_w128128_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	16
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	81
	.byte	21
	.byte	-77
	.byte	22
	.byte	1
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	1
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_ea_w128128_display_info,"a"
	.align	4
	.type	u8x8_ssd1327_ea_w128128_display_info, @object
	.size	u8x8_ssd1327_ea_w128128_display_info, 24
u8x8_ssd1327_ea_w128128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	1
	.byte	40
	.byte	60
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
	.section	.rodata.u8x8_d_ssd1327_96x96_init_seq,"a"
	.type	u8x8_d_ssd1327_96x96_init_seq, @object
	.size	u8x8_d_ssd1327_96x96_init_seq, 61
u8x8_d_ssd1327_96x96_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	81
	.byte	21
	.byte	-77
	.byte	22
	.byte	1
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	1
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_96x96_display_info,"a"
	.align	4
	.type	u8x8_ssd1327_96x96_display_info, @object
	.size	u8x8_ssd1327_96x96_display_info, 24
u8x8_ssd1327_96x96_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	1
	.byte	40
	.byte	60
	.byte	12
	.byte	12
	.byte	16
	.byte	16
	.short	96
	.short	96
	.section	.rodata.u8x8_d_ssd1327_winstar_96x64_init_seq,"a"
	.type	u8x8_d_ssd1327_winstar_96x64_init_seq, @object
	.size	u8x8_d_ssd1327_winstar_96x64_init_seq, 65
u8x8_d_ssd1327_winstar_96x64_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-39
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-88
	.byte	22
	.byte	99
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	71
	.byte	21
	.byte	-77
	.byte	22
	.byte	0
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	7
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	4
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_winstar_96x64_display_info,"a"
	.align	4
	.type	u8x8_ssd1327_winstar_96x64_display_info, @object
	.size	u8x8_ssd1327_winstar_96x64_display_info, 24
u8x8_ssd1327_winstar_96x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	1
	.byte	40
	.byte	60
	.byte	12
	.byte	8
	.byte	16
	.byte	16
	.short	96
	.short	64
	.section	.bss.u8x8_ssd1327_8to32_dest_buf,"aw",@nobits
	.type	u8x8_ssd1327_8to32_dest_buf, @object
	.size	u8x8_ssd1327_8to32_dest_buf, 32
u8x8_ssd1327_8to32_dest_buf:
	.zero	32
	.section	.rodata.u8x8_d_ssd1327_winstar_96x64_flip1_seq,"a"
	.type	u8x8_d_ssd1327_winstar_96x64_flip1_seq, @object
	.size	u8x8_d_ssd1327_winstar_96x64_flip1_seq, 11
u8x8_d_ssd1327_winstar_96x64_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-94
	.byte	22
	.byte	64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_winstar_96x64_flip0_seq,"a"
	.type	u8x8_d_ssd1327_winstar_96x64_flip0_seq, @object
	.size	u8x8_d_ssd1327_winstar_96x64_flip0_seq, 11
u8x8_d_ssd1327_winstar_96x64_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_seeed_96x96_flip1_seq,"a"
	.type	u8x8_d_ssd1327_seeed_96x96_flip1_seq, @object
	.size	u8x8_d_ssd1327_seeed_96x96_flip1_seq, 11
u8x8_d_ssd1327_seeed_96x96_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	96
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_seeed_96x96_flip0_seq,"a"
	.type	u8x8_d_ssd1327_seeed_96x96_flip0_seq, @object
	.size	u8x8_d_ssd1327_seeed_96x96_flip0_seq, 11
u8x8_d_ssd1327_seeed_96x96_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_96x96_powersave1_seq,"a"
	.type	u8x8_d_ssd1327_96x96_powersave1_seq, @object
	.size	u8x8_d_ssd1327_96x96_powersave1_seq, 5
u8x8_d_ssd1327_96x96_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_96x96_powersave0_seq,"a"
	.type	u8x8_d_ssd1327_96x96_powersave0_seq, @object
	.size	u8x8_d_ssd1327_96x96_powersave0_seq, 5
u8x8_d_ssd1327_96x96_powersave0_seq:
	.byte	24
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x40
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
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
	.4byte	0x16d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF237
	.byte	0xc
	.4byte	.LASF238
	.4byte	.LASF239
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x28
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_96x96_powersave0_seq
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x2f
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_96x96_powersave1_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xaac
	.uleb128 0x12
	.4byte	0x6c
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	0xa9c
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x37
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip0_seq
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x3f
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip1_seq
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0x48
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip0_seq
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0x50
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip1_seq
	.uleb128 0xf
	.4byte	0x81
	.4byte	0xb09
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	0xaf9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x1
	.byte	0xd5
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_winstar_96x64_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb3d
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.4byte	0xb2d
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x10e
	.byte	0x16
	.4byte	0xb3d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_init_seq
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x155
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_96x96_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb78
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.4byte	0xb68
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x17e
	.byte	0x16
	.4byte	0xb78
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_96x96_init_seq
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1d1
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_ea_w128128_display_info
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1ea
	.byte	0x16
	.4byte	0xb78
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_init_seq
	.uleb128 0x14
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x215
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip0_seq
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x21d
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip1_seq
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x249
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_128x128_display_info
	.uleb128 0x14
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x272
	.byte	0x16
	.4byte	0xb78
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_init_seq
	.uleb128 0x14
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x2a0
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_flip0_seq
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x2a8
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_flip1_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xc38
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x46
	.byte	0
	.uleb128 0x5
	.4byte	0xc28
	.uleb128 0x14
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x2ed
	.byte	0x16
	.4byte	0xc38
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ws_128x128_init_seq
	.uleb128 0x14
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x333
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_128x96_display_info
	.uleb128 0x14
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x35d
	.byte	0x16
	.4byte	0xb78
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_init_seq
	.uleb128 0x14
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x387
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_flip0_seq
	.uleb128 0x14
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x38f
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_flip1_seq
	.uleb128 0x15
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x398
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdaa
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x398
	.byte	0x30
	.4byte	0x36e
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x398
	.byte	0x3e
	.4byte	0x81
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x398
	.byte	0x4b
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x398
	.byte	0x5a
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL91
	.4byte	0x12f0
	.4byte	0xd25
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
	.4byte	.LVL92
	.4byte	0x166c
	.4byte	0xd42
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
	.4byte	u8x8_ssd1327_128x96_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL93
	.4byte	0x1679
	.4byte	0xd56
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL94
	.4byte	0x1686
	.4byte	0xd73
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
	.4byte	u8x8_d_ssd1327_128x96_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0x1686
	.4byte	0xd90
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
	.4byte	u8x8_d_ssd1327_128x96_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL97
	.4byte	0x1686
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
	.4byte	u8x8_d_ssd1327_128x96_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x307
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb8
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x307
	.byte	0x2b
	.4byte	0x36e
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x307
	.byte	0x39
	.4byte	0x81
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x307
	.byte	0x46
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x307
	.byte	0x55
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0x12f0
	.4byte	0xe33
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
	.4byte	.LVL83
	.4byte	0x166c
	.4byte	0xe50
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
	.4byte	u8x8_ssd1327_ea_w128128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0x1679
	.4byte	0xe64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL85
	.4byte	0x1686
	.4byte	0xe81
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
	.4byte	u8x8_d_ssd1327_ws_128x128_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL86
	.4byte	0x1686
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
	.4byte	u8x8_d_ssd1327_ea_w128128_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL88
	.4byte	0x1686
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
	.4byte	u8x8_d_ssd1327_ea_w128128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x2b1
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc6
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x2b1
	.byte	0x2e
	.4byte	0x36e
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x2b1
	.byte	0x3c
	.4byte	0x81
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x2b1
	.byte	0x49
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x2b1
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL73
	.4byte	0x12f0
	.4byte	0xf41
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
	.4byte	.LVL74
	.4byte	0x166c
	.4byte	0xf5e
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
	.4byte	u8x8_ssd1327_128x128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0x1679
	.4byte	0xf72
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0x1686
	.4byte	0xf8f
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
	.4byte	u8x8_d_ssd1327_128x128_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0x1686
	.4byte	0xfac
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
	.4byte	u8x8_d_ssd1327_128x128_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL79
	.4byte	0x1686
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
	.4byte	u8x8_d_ssd1327_128x128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x225
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d4
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x225
	.byte	0x2b
	.4byte	0x36e
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x225
	.byte	0x39
	.4byte	0x81
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x225
	.byte	0x46
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x225
	.byte	0x55
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0x12f0
	.4byte	0x104f
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
	.4byte	.LVL65
	.4byte	0x166c
	.4byte	0x106c
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
	.4byte	u8x8_ssd1327_ea_w128128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0x1679
	.4byte	0x1080
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL67
	.4byte	0x1686
	.4byte	0x109d
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
	.4byte	u8x8_d_ssd1327_ea_w128128_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0x1686
	.4byte	0x10ba
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
	.4byte	u8x8_d_ssd1327_ea_w128128_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0x1686
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
	.4byte	u8x8_d_ssd1327_ea_w128128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x1ac
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e2
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1ac
	.byte	0x2c
	.4byte	0x36e
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1ac
	.byte	0x3a
	.4byte	0x81
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1ac
	.byte	0x47
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x1ac
	.byte	0x56
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x12f0
	.4byte	0x115d
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
	.4byte	.LVL56
	.4byte	0x166c
	.4byte	0x117a
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
	.4byte	u8x8_ssd1327_96x96_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0x1679
	.4byte	0x118e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x1686
	.4byte	0x11ab
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
	.4byte	u8x8_d_ssd1327_96x96_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0x1686
	.4byte	0x11c8
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
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0x1686
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
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x131
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f0
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x131
	.byte	0x29
	.4byte	0x36e
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x131
	.byte	0x37
	.4byte	0x81
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x131
	.byte	0x44
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x131
	.byte	0x53
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0x12f0
	.4byte	0x126b
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
	.4byte	.LVL47
	.4byte	0x166c
	.4byte	0x1288
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
	.4byte	u8x8_ssd1327_winstar_96x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0x1679
	.4byte	0x129c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0x1686
	.4byte	0x12b9
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
	.4byte	u8x8_d_ssd1327_winstar_96x64_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0x1686
	.4byte	0x12d6
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
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL52
	.4byte	0x1686
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
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.byte	0x82
	.byte	0x10
	.4byte	0x81
	.byte	0x1
	.4byte	0x135c
	.uleb128 0x1d
	.4byte	.LASF217
	.byte	0x1
	.byte	0x82
	.byte	0x35
	.4byte	0x36e
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0x82
	.byte	0x43
	.4byte	0x81
	.uleb128 0x1d
	.4byte	.LASF218
	.byte	0x1
	.byte	0x82
	.byte	0x50
	.4byte	0x81
	.uleb128 0x1d
	.4byte	.LASF219
	.byte	0x1
	.byte	0x82
	.byte	0x5f
	.4byte	0xaa
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0x84
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.byte	0x84
	.byte	0xe
	.4byte	0x81
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x84
	.byte	0x11
	.4byte	0x81
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.byte	0x85
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF227
	.byte	0x1
	.byte	0x61
	.byte	0x11
	.4byte	0x39a
	.byte	0x1
	.4byte	0x13c4
	.uleb128 0x1d
	.4byte	.LASF217
	.byte	0x1
	.byte	0x61
	.byte	0x44
	.4byte	0x36e
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x61
	.byte	0x53
	.4byte	0x39a
	.uleb128 0x1f
	.string	"v"
	.byte	0x1
	.byte	0x63
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"a"
	.byte	0x1
	.byte	0x64
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.4byte	0x81
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x65
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0x65
	.byte	0xe
	.4byte	0x81
	.uleb128 0x20
	.4byte	.LASF228
	.byte	0x1
	.byte	0x66
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x21
	.4byte	0x12f0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x166c
	.uleb128 0x22
	.4byte	0x1301
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x22
	.4byte	0x130d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	0x1319
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	0x1325
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	0x1331
	.uleb128 0x23
	.4byte	0x133b
	.uleb128 0x23
	.4byte	0x1345
	.uleb128 0x23
	.4byte	0x134f
	.uleb128 0x24
	.4byte	0x12f0
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1613
	.uleb128 0x22
	.4byte	0x130d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	0x1325
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x22
	.4byte	0x1319
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x22
	.4byte	0x1301
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x25
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x26
	.4byte	0x1331
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	0x133b
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	0x1345
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x26
	.4byte	0x134f
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x27
	.4byte	0x135c
	.4byte	.LBI8
	.byte	.LVU49
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xbb
	.byte	0x4
	.4byte	0x1529
	.uleb128 0x22
	.4byte	0x136d
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x22
	.4byte	0x1379
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x25
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x26
	.4byte	0x1385
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x26
	.4byte	0x138f
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x26
	.4byte	0x1399
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x26
	.4byte	0x13a3
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x26
	.4byte	0x13ad
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x26
	.4byte	0x13b7
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x1693
	.4byte	0x153d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x16a0
	.4byte	0x1557
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
	.byte	0x75
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x16ad
	.4byte	0x1571
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
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x16ad
	.4byte	0x158e
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
	.byte	0x77
	.sleb128 7
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0x16a0
	.4byte	0x15a7
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
	.byte	0x45
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0x16ad
	.4byte	0x15c1
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
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x16ad
	.4byte	0x15de
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
	.byte	0x77
	.sleb128 3
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x16ba
	.4byte	0x1601
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
	.byte	0x20
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL43
	.4byte	0x16c7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x1686
	.4byte	0x1627
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x1693
	.4byte	0x163b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x16a0
	.4byte	0x1655
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
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0x16ad
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
	.byte	0
	.uleb128 0x28
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x28
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x28
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x28
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x28
	.4byte	.LASF236
	.4byte	.LASF236
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 0
.LLST30:
	.4byte	.LVL90
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 0
.LLST31:
	.4byte	.LVL90
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 0
.LLST28:
	.4byte	.LVL81
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 0
.LLST29:
	.4byte	.LVL81
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
.LVUS26:
	.uleb128 0
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST26:
	.4byte	.LVL72
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
.LVUS27:
	.uleb128 0
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST27:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 0
.LLST25:
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
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
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 0
.LLST22:
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST23:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 0
.LLST21:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE1
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU106
	.uleb128 .LVU106
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
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU15
	.uleb128 .LVU105
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU15
	.uleb128 .LVU105
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU15
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 .LVU105
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU15
	.uleb128 .LVU105
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU18
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU27
	.uleb128 .LVU32
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU105
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL17
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU34
	.uleb128 .LVU37
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU105
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL17
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU43
	.uleb128 .LVU46
	.uleb128 .LVU96
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU105
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU50
	.uleb128 .LVU105
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU49
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU89
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU66
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU89
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU60
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU89
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x78
	.sleb128 -2
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU89
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x78
	.sleb128 1
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x78
	.sleb128 -1
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU64
	.uleb128 .LVU65
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU50
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU89
.LLST18:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0xb
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xb
	.byte	0x7b
	.sleb128 -1
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU54
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU89
.LLST19:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF198:
	.string	"u8x8_d_ssd1327_winstar_96x64_flip1_seq"
.LASF210:
	.string	"u8x8_d_ssd1327_128x128_flip0_seq"
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
.LASF218:
	.string	"arg_int"
.LASF239:
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
.LASF24:
	.string	"is_font_inverse_mode"
.LASF123:
	.string	"u8x8_font_torussansbold8_n"
.LASF202:
	.string	"u8x8_ssd1327_96x96_display_info"
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
.LASF220:
	.string	"u8x8_d_ssd1327_visionox_128x96"
.LASF199:
	.string	"u8x8_ssd1327_8to32_dest_buf"
.LASF130:
	.string	"u8x8_font_victoriamedium8_u"
.LASF235:
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
.LASF196:
	.string	"u8x8_d_ssd1327_seeed_96x96_flip1_seq"
.LASF174:
	.string	"u8x8_font_pcsenior_u"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF160:
	.string	"u8x8_font_inb21_2x4_n"
.LASF204:
	.string	"u8x8_ssd1327_ea_w128128_display_info"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF229:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF238:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_ssd1327.c"
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
.LASF232:
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
.LASF225:
	.string	"u8x8_d_ssd1327_ws_96x64"
.LASF92:
	.string	"u8x8_font_open_iconic_embedded_2x2"
.LASF77:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF175:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF197:
	.string	"u8x8_d_ssd1327_winstar_96x64_flip0_seq"
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
.LASF216:
	.string	"u8x8_d_ssd1327_128x96_flip1_seq"
.LASF96:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF195:
	.string	"u8x8_d_ssd1327_seeed_96x96_flip0_seq"
.LASF161:
	.string	"u8x8_font_inb33_3x6_f"
.LASF14:
	.string	"display_info"
.LASF222:
	.string	"u8x8_d_ssd1327_midas_128x128"
.LASF227:
	.string	"u8x8_ssd1327_8to32"
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
.LASF203:
	.string	"u8x8_d_ssd1327_96x96_init_seq"
.LASF101:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF221:
	.string	"u8x8_d_ssd1327_ws_128x128"
.LASF155:
	.string	"u8x8_font_inr46_4x8_f"
.LASF193:
	.string	"u8x8_d_ssd1327_96x96_powersave0_seq"
.LASF194:
	.string	"u8x8_d_ssd1327_96x96_powersave1_seq"
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
.LASF224:
	.string	"u8x8_d_ssd1327_seeed_96x96"
.LASF226:
	.string	"u8x8_d_ssd1327_96x96_generic"
.LASF212:
	.string	"u8x8_d_ssd1327_ws_128x128_init_seq"
.LASF209:
	.string	"u8x8_d_ssd1327_128x128_init_seq"
.LASF189:
	.string	"u8x8_font_px437wyse700a_2x2_n"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF201:
	.string	"u8x8_d_ssd1327_winstar_96x64_init_seq"
.LASF181:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF23:
	.string	"x_offset"
.LASF230:
	.string	"u8x8_d_helper_display_init"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF50:
	.string	"tile_height"
.LASF214:
	.string	"u8x8_d_ssd1327_128x96_init_seq"
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
.LASF200:
	.string	"u8x8_ssd1327_winstar_96x64_display_info"
.LASF2:
	.string	"short int"
.LASF217:
	.string	"u8x8"
.LASF86:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF215:
	.string	"u8x8_d_ssd1327_128x96_flip0_seq"
.LASF228:
	.string	"dest"
.LASF152:
	.string	"u8x8_font_inr33_3x6_f"
.LASF102:
	.string	"u8x8_font_open_iconic_arrow_8x8"
.LASF149:
	.string	"u8x8_font_inr21_2x4_f"
.LASF223:
	.string	"u8x8_d_ssd1327_ea_w128128"
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
.LASF206:
	.string	"u8x8_d_ssd1327_ea_w128128_flip0_seq"
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
.LASF236:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF237:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF58:
	.string	"x_pos"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF205:
	.string	"u8x8_d_ssd1327_ea_w128128_init_seq"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF211:
	.string	"u8x8_d_ssd1327_128x128_flip1_seq"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF219:
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
.LASF213:
	.string	"u8x8_ssd1327_128x96_display_info"
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
.LASF233:
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
.LASF207:
	.string	"u8x8_d_ssd1327_ea_w128128_flip1_seq"
.LASF208:
	.string	"u8x8_ssd1327_128x128_display_info"
.LASF234:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF231:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
