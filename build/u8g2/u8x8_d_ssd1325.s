	.file	"u8x8_d_ssd1325.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1325_128x64_generic,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_ssd1325_128x64_nhd_powersave0_seq
	.literal .LC1, u8x8_d_ssd1325_128x64_nhd_powersave1_seq
	.literal .LC2, u8x8_ssd1325_8to32_dest_buf
	.align	4
	.type	u8x8_d_ssd1325_128x64_generic, @function
u8x8_d_ssd1325_128x64_generic:
.LVL0:
.LFB1:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_ssd1325.c"
	.loc 1 119 1 view -0
	.loc 1 119 1 is_stmt 0 view .LVU1
	entry	sp, 80
.LCFI0:
	.loc 1 120 3 is_stmt 1 view .LVU2
	.loc 1 121 3 view .LVU3
	.loc 1 122 3 view .LVU4
	movi.n	a6, 0xe
	beq	a3, a6, .L2
	movi.n	a6, 0xf
	beq	a3, a6, .L3
	movi.n	a6, 0xb
	.loc 1 221 14 is_stmt 0 view .LVU5
	movi.n	a5, 0
.LVL1:
	.loc 1 221 14 view .LVU6
	bne	a3, a6, .L4
	.loc 1 137 7 is_stmt 1 view .LVU7
	.loc 1 138 2 is_stmt 0 view .LVU8
	l32r	a11, .LC0
	.loc 1 137 10 view .LVU9
	beq	a4, a5, .L26
.L5:
	.loc 1 140 2 is_stmt 1 view .LVU10
	l32r	a11, .LC1
.L26:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L24
.LVL3:
.L2:
	.loc 1 159 7 view .LVU11
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 160 7 view .LVU12
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 161 7 view .LVU13
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
	.loc 1 162 7 view .LVU14
	j	.L25
.L3:
.LVL7:
.LBB6:
.LBB7:
	.loc 1 166 7 view .LVU15
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL8:
	.loc 1 167 7 view .LVU16
	.loc 1 167 9 is_stmt 0 view .LVU17
	l8ui	a3, a5, 5
.LVL9:
	.loc 1 168 7 is_stmt 1 view .LVU18
	.loc 1 172 9 is_stmt 0 view .LVU19
	l8ui	a6, a2, 34
	.loc 1 168 9 view .LVU20
	slli	a3, a3, 2
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 4
.LVL10:
	.loc 1 170 7 is_stmt 1 view .LVU21
	.loc 1 170 9 is_stmt 0 view .LVU22
	l8ui	a3, a5, 6
.LVL11:
	.loc 1 171 7 is_stmt 1 view .LVU23
	.loc 1 175 7 is_stmt 0 view .LVU24
	movi	a11, 0x75
	.loc 1 171 9 view .LVU25
	slli	a3, a3, 3
.LVL12:
	.loc 1 172 7 is_stmt 1 view .LVU26
	.loc 1 172 9 is_stmt 0 view .LVU27
	add.n	a3, a3, a6
.LVL13:
	.loc 1 172 9 view .LVU28
	extui	a3, a3, 0, 8
	.loc 1 175 7 view .LVU29
	mov.n	a10, a2
	.loc 1 172 9 view .LVU30
	s32i.n	a3, sp, 0
.LVL14:
	.loc 1 175 7 is_stmt 1 view .LVU31
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 176 7 view .LVU32
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL16:
	.loc 1 177 7 view .LVU33
	.loc 1 177 31 is_stmt 0 view .LVU34
	l32i.n	a6, sp, 0
	.loc 1 177 7 view .LVU35
	mov.n	a10, a2
	.loc 1 177 31 view .LVU36
	addi.n	a3, a6, 7
	.loc 1 177 7 view .LVU37
	extui	a3, a3, 0, 8
	mov.n	a11, a3
	s32i.n	a3, sp, 8
	call8	u8x8_cad_SendArg
.LVL17:
.L13:
	.loc 1 179 7 is_stmt 1 view .LVU38
	.loc 1 181 2 view .LVU39
	.loc 1 181 4 is_stmt 0 view .LVU40
	l8ui	a9, a5, 4
	.loc 1 182 6 view .LVU41
	l32i.n	a8, a5, 0
	l32i.n	a3, sp, 4
	.loc 1 181 4 view .LVU42
	s32i.n	a9, sp, 12
.LVL18:
	.loc 1 182 2 is_stmt 1 view .LVU43
	.loc 1 181 4 is_stmt 0 view .LVU44
	mov.n	a6, a9
.LVL19:
.L12:
	.loc 1 184 2 is_stmt 1 view .LVU45
	.loc 1 186 4 view .LVU46
	.loc 1 186 9 is_stmt 0 view .LVU47
	l8ui	a10, a8, 1
	l8ui	a9, a8, 0
	addi.n	a7, a3, 3
	or	a9, a9, a10
	l8ui	a10, a8, 2
	extui	a7, a7, 0, 8
	or	a9, a9, a10
	l8ui	a10, a8, 3
	or	a9, a9, a10
	l8ui	a10, a8, 4
	or	a9, a9, a10
	l8ui	a10, a8, 5
	or	a9, a9, a10
	l8ui	a10, a8, 6
	or	a9, a9, a10
	l8ui	a10, a8, 7
	.loc 1 186 7 view .LVU48
	or	a9, a9, a10
	beqz.n	a9, .L6
	.loc 1 189 6 is_stmt 1 view .LVU49
	movi.n	a11, 0x15
	mov.n	a10, a2
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendCmd
.LVL20:
	.loc 1 190 6 view .LVU50
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL21:
	.loc 1 191 6 view .LVU51
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL22:
	.loc 1 195 6 view .LVU52
.LBB8:
.LBI8:
	.loc 1 85 17 view .LVU53
	.loc 1 85 17 is_stmt 0 view .LVU54
.LBE8:
	.loc 1 191 6 view .LVU55
	l32i.n	a8, sp, 20
	l32r	a10, .LC2
.LBB11:
.LBB9:
	.loc 1 92 3 view .LVU56
	addi.n	a11, a8, 8
.LBE9:
.LBE11:
	.loc 1 191 6 view .LVU57
	mov.n	a7, a8
.LBB12:
.LBB10:
	.loc 1 92 3 view .LVU58
	s32i.n	a11, sp, 28
.LVL23:
.L10:
	.loc 1 94 5 is_stmt 1 view .LVU59
	.loc 1 95 5 view .LVU60
	.loc 1 100 5 is_stmt 0 view .LVU61
	movi.n	a15, 8
	.loc 1 96 7 view .LVU62
	l8ui	a13, a7, 0
	.loc 1 98 7 view .LVU63
	l8ui	a12, a7, 1
	.loc 1 95 10 view .LVU64
	mov.n	a14, a10
.LVL24:
	.loc 1 96 5 is_stmt 1 view .LVU65
	.loc 1 97 5 view .LVU66
	.loc 1 98 5 view .LVU67
	.loc 1 99 5 view .LVU68
	addi.n	a7, a7, 2
.LVL25:
	.loc 1 100 5 view .LVU69
	.loc 1 100 5 is_stmt 0 view .LVU70
	s32i.n	a15, sp, 32
.LVL26:
.L9:
	.loc 1 102 7 is_stmt 1 view .LVU71
	.loc 1 103 7 view .LVU72
	.loc 1 103 10 is_stmt 0 view .LVU73
	extui	a9, a13, 0, 1
	.loc 1 103 20 view .LVU74
	movi	a11, 0xf0
	movi.n	a15, 0
	moveqz	a11, a15, a9
	s32i.n	a11, sp, 24
.LVL27:
	.loc 1 104 7 is_stmt 1 view .LVU75
	.loc 1 104 10 is_stmt 0 view .LVU76
	bbc	a12, a15, .L8
	.loc 1 104 18 is_stmt 1 view .LVU77
	.loc 1 104 20 is_stmt 0 view .LVU78
	movi.n	a9, 0xf
	or	a11, a11, a9
	s32i.n	a11, sp, 24
.LVL28:
.L8:
	.loc 1 105 7 is_stmt 1 view .LVU79
	.loc 1 108 9 is_stmt 0 view .LVU80
	l32i.n	a15, sp, 32
	.loc 1 105 13 view .LVU81
	l32i.n	a11, sp, 24
	.loc 1 108 9 view .LVU82
	addi.n	a15, a15, -1
	.loc 1 105 13 view .LVU83
	s8i	a11, a14, 0
	.loc 1 106 7 is_stmt 1 view .LVU84
	.loc 1 108 9 is_stmt 0 view .LVU85
	s32i.n	a15, sp, 32
	.loc 1 106 11 view .LVU86
	addi.n	a14, a14, 4
.LVL29:
	.loc 1 107 7 is_stmt 1 view .LVU87
	.loc 1 107 9 is_stmt 0 view .LVU88
	srli	a13, a13, 1
.LVL30:
	.loc 1 108 7 is_stmt 1 view .LVU89
	.loc 1 108 9 is_stmt 0 view .LVU90
	srli	a12, a12, 1
.LVL31:
	.loc 1 108 9 view .LVU91
	bnez.n	a15, .L9
.LVL32:
	.loc 1 92 3 view .LVU92
	l32i.n	a9, sp, 28
	addi.n	a10, a10, 1
.LVL33:
	.loc 1 92 3 view .LVU93
	bne	a7, a9, .L10
	.loc 1 112 3 is_stmt 1 view .LVU94
.LVL34:
	.loc 1 112 3 is_stmt 0 view .LVU95
.LBE10:
.LBE12:
	.loc 1 195 6 view .LVU96
	l32r	a12, .LC2
	movi.n	a11, 0x20
	mov.n	a10, a2
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendData
.LVL35:
	j	.L23
.LVL36:
.L6:
	.loc 1 200 6 is_stmt 1 view .LVU97
	movi.n	a11, 0x24
	mov.n	a10, a2
	s32i.n	a9, sp, 16
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendCmd
.LVL37:
	.loc 1 201 6 view .LVU98
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL38:
	.loc 1 202 6 view .LVU99
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL39:
	.loc 1 203 6 view .LVU100
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL40:
	.loc 1 204 6 view .LVU101
	l32i.n	a11, sp, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL41:
	.loc 1 205 6 view .LVU102
	l32i.n	a9, sp, 16
	mov.n	a10, a2
	mov.n	a11, a9
	call8	u8x8_cad_SendArg
.LVL42:
.L23:
	.loc 1 205 6 is_stmt 0 view .LVU103
	l32i.n	a8, sp, 20
	.loc 1 207 4 is_stmt 1 view .LVU104
	.loc 1 209 5 is_stmt 0 view .LVU105
	addi.n	a6, a6, -1
.LVL43:
	.loc 1 208 6 view .LVU106
	addi.n	a3, a3, 4
.LVL44:
	.loc 1 209 5 view .LVU107
	extui	a6, a6, 0, 8
.LVL45:
	.loc 1 207 8 view .LVU108
	addi.n	a8, a8, 8
.LVL46:
	.loc 1 208 4 is_stmt 1 view .LVU109
	.loc 1 208 6 is_stmt 0 view .LVU110
	extui	a3, a3, 0, 8
.LVL47:
	.loc 1 209 4 is_stmt 1 view .LVU111
	.loc 1 210 2 is_stmt 0 view .LVU112
	bnez.n	a6, .L12
	l32i.n	a15, sp, 12
	l32i.n	a6, sp, 4
.LVL48:
	.loc 1 210 2 view .LVU113
	addi	a3, a15, 64
.LVL49:
	.loc 1 210 2 view .LVU114
	slli	a3, a3, 2
	add.n	a3, a6, a3
	extui	a3, a3, 0, 8
	.loc 1 213 9 view .LVU115
	addi.n	a4, a4, -1
.LVL50:
	.loc 1 213 9 view .LVU116
	s32i.n	a3, sp, 4
	.loc 1 213 2 is_stmt 1 view .LVU117
	.loc 1 213 9 is_stmt 0 view .LVU118
	extui	a4, a4, 0, 8
.LVL51:
	.loc 1 214 7 view .LVU119
	bnez.n	a4, .L13
	.loc 1 216 7 is_stmt 1 view .LVU120
	movi	a11, 0xe3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL52:
.L25:
	.loc 1 218 7 view .LVU121
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL53:
.L24:
	.loc 1 219 7 view .LVU122
	.loc 1 218 7 is_stmt 0 view .LVU123
	movi.n	a5, 1
.L4:
.LBE7:
.LBE6:
	.loc 1 224 1 view .LVU124
	mov.n	a2, a5
.LVL54:
	.loc 1 224 1 view .LVU125
	retw.n
.LFE1:
	.size	u8x8_d_ssd1325_128x64_generic, .-u8x8_d_ssd1325_128x64_generic
	.section	.text.u8x8_d_ssd1325_nhd_128x64,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_nhd_ssd1325_128x64_display_info
	.literal .LC4, u8x8_d_ssd1325_128x64_nhd_init_seq
	.literal .LC5, u8x8_d_ssd1325_128x64_nhd_flip0_seq
	.literal .LC6, u8x8_d_ssd1325_128x64_nhd_flip1_seq
	.align	4
	.global	u8x8_d_ssd1325_nhd_128x64
	.type	u8x8_d_ssd1325_nhd_128x64, @function
u8x8_d_ssd1325_nhd_128x64:
.LVL55:
.LFB2:
	.loc 1 293 1 is_stmt 1 view -0
	.loc 1 293 1 is_stmt 0 view .LVU127
	entry	sp, 32
.LCFI1:
	.loc 1 294 5 is_stmt 1 view .LVU128
	.loc 1 293 1 is_stmt 0 view .LVU129
	extui	a11, a3, 0, 8
	.loc 1 294 8 view .LVU130
	movi.n	a8, 9
	.loc 1 293 1 view .LVU131
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 294 8 view .LVU132
	bne	a11, a8, .L28
	.loc 1 296 7 is_stmt 1 view .LVU133
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL56:
	.loc 1 297 7 view .LVU134
	j	.L33
.L28:
	.loc 1 299 10 view .LVU135
	.loc 1 299 13 is_stmt 0 view .LVU136
	bnei	a11, 10, .L30
	.loc 1 301 7 is_stmt 1 view .LVU137
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL57:
	.loc 1 302 7 view .LVU138
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL58:
	.loc 1 303 7 view .LVU139
	j	.L33
.L30:
	.loc 1 305 10 view .LVU140
	.loc 1 305 13 is_stmt 0 view .LVU141
	movi.n	a8, 0xd
	bne	a11, a8, .L31
	.loc 1 307 7 is_stmt 1 view .LVU142
	.loc 1 307 10 is_stmt 0 view .LVU143
	bnez.n	a12, .L32
	.loc 1 309 2 is_stmt 1 view .LVU144
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL59:
	.loc 1 310 2 view .LVU145
	.loc 1 310 37 is_stmt 0 view .LVU146
	l32i.n	a8, a2, 0
	.loc 1 310 17 view .LVU147
	l8ui	a8, a8, 18
.L34:
	.loc 1 310 17 view .LVU148
	s8i	a8, a2, 34
.L33:
	.loc 1 317 14 view .LVU149
	movi.n	a2, 1
.LVL60:
	.loc 1 317 14 view .LVU150
	j	.L29
.LVL61:
.L32:
	.loc 1 314 2 is_stmt 1 view .LVU151
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL62:
	.loc 1 315 2 view .LVU152
	.loc 1 315 37 is_stmt 0 view .LVU153
	l32i.n	a8, a2, 0
	.loc 1 315 17 view .LVU154
	l8ui	a8, a8, 19
	j	.L34
.L31:
	.loc 1 319 5 is_stmt 1 view .LVU155
	.loc 1 319 12 is_stmt 0 view .LVU156
	mov.n	a10, a2
	call8	u8x8_d_ssd1325_128x64_generic
.LVL63:
	mov.n	a2, a10
.LVL64:
.L29:
	.loc 1 320 1 view .LVU157
	retw.n
.LFE2:
	.size	u8x8_d_ssd1325_nhd_128x64, .-u8x8_d_ssd1325_nhd_128x64
	.section	.text.u8x8_d_ssd0323_os128064,"ax",@progbits
	.literal_position
	.literal .LC7, u8x8_ssd0323_os128064_display_info
	.literal .LC8, u8x8_d_ssd0323_os128064_init_seq
	.literal .LC9, u8x8_d_ssd0323_os128064_flip0_seq
	.literal .LC10, u8x8_d_ssd0323_os128064_flip1_seq
	.align	4
	.global	u8x8_d_ssd0323_os128064
	.type	u8x8_d_ssd0323_os128064, @function
u8x8_d_ssd0323_os128064:
.LVL65:
.LFB3:
	.loc 1 405 1 is_stmt 1 view -0
	.loc 1 405 1 is_stmt 0 view .LVU159
	entry	sp, 32
.LCFI2:
	.loc 1 406 5 is_stmt 1 view .LVU160
	.loc 1 405 1 is_stmt 0 view .LVU161
	extui	a11, a3, 0, 8
	.loc 1 406 8 view .LVU162
	movi.n	a8, 9
	.loc 1 405 1 view .LVU163
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 406 8 view .LVU164
	bne	a11, a8, .L36
	.loc 1 408 7 is_stmt 1 view .LVU165
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL66:
	.loc 1 409 7 view .LVU166
	j	.L41
.L36:
	.loc 1 411 10 view .LVU167
	.loc 1 411 13 is_stmt 0 view .LVU168
	bnei	a11, 10, .L38
	.loc 1 413 7 is_stmt 1 view .LVU169
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL67:
	.loc 1 414 7 view .LVU170
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL68:
	.loc 1 415 7 view .LVU171
	j	.L41
.L38:
	.loc 1 417 10 view .LVU172
	.loc 1 417 13 is_stmt 0 view .LVU173
	movi.n	a8, 0xd
	bne	a11, a8, .L39
	.loc 1 419 7 is_stmt 1 view .LVU174
	.loc 1 419 10 is_stmt 0 view .LVU175
	bnez.n	a12, .L40
	.loc 1 421 2 is_stmt 1 view .LVU176
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL69:
	.loc 1 422 2 view .LVU177
	.loc 1 422 37 is_stmt 0 view .LVU178
	l32i.n	a8, a2, 0
	.loc 1 422 17 view .LVU179
	l8ui	a8, a8, 18
.L42:
	.loc 1 422 17 view .LVU180
	s8i	a8, a2, 34
.L41:
	.loc 1 429 14 view .LVU181
	movi.n	a2, 1
.LVL70:
	.loc 1 429 14 view .LVU182
	j	.L37
.LVL71:
.L40:
	.loc 1 426 2 is_stmt 1 view .LVU183
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL72:
	.loc 1 427 2 view .LVU184
	.loc 1 427 37 is_stmt 0 view .LVU185
	l32i.n	a8, a2, 0
	.loc 1 427 17 view .LVU186
	l8ui	a8, a8, 19
	j	.L42
.L39:
	.loc 1 431 5 is_stmt 1 view .LVU187
	.loc 1 431 12 is_stmt 0 view .LVU188
	mov.n	a10, a2
	call8	u8x8_d_ssd1325_128x64_generic
.LVL73:
	mov.n	a2, a10
.LVL74:
.L37:
	.loc 1 432 1 view .LVU189
	retw.n
.LFE3:
	.size	u8x8_d_ssd0323_os128064, .-u8x8_d_ssd0323_os128064
	.section	.rodata.u8x8_ssd0323_os128064_display_info,"a"
	.align	4
	.type	u8x8_ssd0323_os128064_display_info, @object
	.size	u8x8_ssd0323_os128064_display_info, 24
u8x8_ssd0323_os128064_display_info:
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
	.byte	4
	.byte	40
	.byte	60
	.byte	16
	.byte	8
	.byte	0
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_ssd0323_os128064_flip1_seq,"a"
	.type	u8x8_d_ssd0323_os128064_flip1_seq, @object
	.size	u8x8_d_ssd0323_os128064_flip1_seq, 11
u8x8_d_ssd0323_os128064_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	65
	.byte	21
	.byte	-94
	.byte	22
	.byte	80
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd0323_os128064_flip0_seq,"a"
	.type	u8x8_d_ssd0323_os128064_flip0_seq, @object
	.size	u8x8_d_ssd0323_os128064_flip0_seq, 11
u8x8_d_ssd0323_os128064_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	21
	.byte	-94
	.byte	22
	.byte	64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd0323_os128064_init_seq,"a"
	.type	u8x8_d_ssd0323_os128064_init_seq, @object
	.size	u8x8_d_ssd0323_os128064_init_seq, 87
u8x8_d_ssd0323_os128064_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-77
	.byte	22
	.byte	-111
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-94
	.byte	22
	.byte	64
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-83
	.byte	22
	.byte	2
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	21
	.byte	-122
	.byte	21
	.byte	-72
	.byte	22
	.byte	1
	.byte	22
	.byte	17
	.byte	22
	.byte	34
	.byte	22
	.byte	50
	.byte	22
	.byte	67
	.byte	22
	.byte	84
	.byte	22
	.byte	101
	.byte	22
	.byte	118
	.byte	21
	.byte	-127
	.byte	22
	.byte	112
	.byte	21
	.byte	-78
	.byte	22
	.byte	81
	.byte	21
	.byte	-79
	.byte	22
	.byte	85
	.byte	21
	.byte	-68
	.byte	22
	.byte	16
	.byte	21
	.byte	-76
	.byte	22
	.byte	2
	.byte	21
	.byte	-80
	.byte	22
	.byte	40
	.byte	21
	.byte	-66
	.byte	22
	.byte	28
	.byte	21
	.byte	-65
	.byte	22
	.byte	15
	.byte	21
	.byte	-92
	.byte	21
	.byte	35
	.byte	22
	.byte	3
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_nhd_ssd1325_128x64_display_info,"a"
	.align	4
	.type	u8x8_nhd_ssd1325_128x64_display_info, @object
	.size	u8x8_nhd_ssd1325_128x64_display_info, 24
u8x8_nhd_ssd1325_128x64_display_info:
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
	.byte	4
	.byte	40
	.byte	60
	.byte	16
	.byte	8
	.byte	0
	.byte	8
	.short	128
	.short	64
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_init_seq,"a"
	.type	u8x8_d_ssd1325_128x64_nhd_init_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_init_seq, 87
u8x8_d_ssd1325_128x64_nhd_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-77
	.byte	22
	.byte	-111
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-94
	.byte	22
	.byte	76
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-83
	.byte	22
	.byte	2
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	21
	.byte	-122
	.byte	21
	.byte	-72
	.byte	22
	.byte	1
	.byte	22
	.byte	17
	.byte	22
	.byte	34
	.byte	22
	.byte	50
	.byte	22
	.byte	67
	.byte	22
	.byte	84
	.byte	22
	.byte	101
	.byte	22
	.byte	118
	.byte	21
	.byte	-127
	.byte	22
	.byte	112
	.byte	21
	.byte	-78
	.byte	22
	.byte	81
	.byte	21
	.byte	-79
	.byte	22
	.byte	85
	.byte	21
	.byte	-68
	.byte	22
	.byte	16
	.byte	21
	.byte	-76
	.byte	22
	.byte	2
	.byte	21
	.byte	-80
	.byte	22
	.byte	40
	.byte	21
	.byte	-66
	.byte	22
	.byte	28
	.byte	21
	.byte	-65
	.byte	22
	.byte	15
	.byte	21
	.byte	-92
	.byte	21
	.byte	35
	.byte	22
	.byte	3
	.byte	25
	.byte	-1
	.section	.bss.u8x8_ssd1325_8to32_dest_buf,"aw",@nobits
	.type	u8x8_ssd1325_8to32_dest_buf, @object
	.size	u8x8_ssd1325_8to32_dest_buf, 32
u8x8_ssd1325_8to32_dest_buf:
	.zero	32
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_flip1_seq,"a"
	.type	u8x8_d_ssd1325_128x64_nhd_flip1_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_flip1_seq, 7
u8x8_d_ssd1325_128x64_nhd_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	65
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_flip0_seq,"a"
	.type	u8x8_d_ssd1325_128x64_nhd_flip0_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_flip0_seq, 7
u8x8_d_ssd1325_128x64_nhd_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_powersave1_seq,"a"
	.type	u8x8_d_ssd1325_128x64_nhd_powersave1_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_powersave1_seq, 5
u8x8_d_ssd1325_128x64_nhd_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_powersave0_seq,"a"
	.type	u8x8_d_ssd1325_128x64_nhd_powersave0_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_powersave0_seq, 5
u8x8_d_ssd1325_128x64_nhd_powersave0_seq:
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
	.uleb128 0x50
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x120b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0xc
	.4byte	.LASF221
	.4byte	.LASF222
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x2f
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_powersave0_seq
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x36
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_powersave1_seq
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
	.byte	0x3d
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip0_seq
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x44
	.byte	0x16
	.4byte	0xaac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip1_seq
	.uleb128 0xf
	.4byte	0x81
	.4byte	0xae5
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0x53
	.byte	0x10
	.4byte	0xad5
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb07
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x56
	.byte	0
	.uleb128 0x5
	.4byte	0xaf7
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0xe5
	.byte	0x16
	.4byte	0xb07
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_init_seq
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x10c
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_nhd_ssd1325_128x64_display_info
	.uleb128 0x14
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x146
	.byte	0x16
	.4byte	0xb07
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd0323_os128064_init_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb54
	.uleb128 0x12
	.4byte	0x6c
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	0xb44
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x16b
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd0323_os128064_flip0_seq
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x173
	.byte	0x16
	.4byte	0xb54
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd0323_os128064_flip1_seq
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x17c
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd0323_os128064_display_info
	.uleb128 0x15
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x194
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc88
	.uleb128 0x16
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x194
	.byte	0x29
	.4byte	0x36e
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x194
	.byte	0x37
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x194
	.byte	0x44
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x194
	.byte	0x53
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0x11a6
	.4byte	0xc0c
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
	.4byte	u8x8_ssd0323_os128064_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL67
	.4byte	0x11b3
	.4byte	0xc20
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0x11c0
	.4byte	0xc3d
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
	.4byte	u8x8_d_ssd0323_os128064_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL69
	.4byte	0x11c0
	.4byte	0xc5a
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
	.4byte	u8x8_d_ssd0323_os128064_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL72
	.4byte	0x11c0
	.4byte	0xc77
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
	.4byte	u8x8_d_ssd0323_os128064_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL73
	.4byte	0xd7e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x124
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7e
	.uleb128 0x16
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x124
	.byte	0x2b
	.4byte	0x36e
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x124
	.byte	0x39
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x124
	.byte	0x46
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x124
	.byte	0x55
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0x11a6
	.4byte	0xd02
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
	.4byte	u8x8_nhd_ssd1325_128x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0x11b3
	.4byte	0xd16
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x11c0
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
	.4byte	u8x8_d_ssd1325_128x64_nhd_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0x11c0
	.4byte	0xd50
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
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x11c0
	.4byte	0xd6d
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
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0xd7e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF209
	.byte	0x1
	.byte	0x76
	.byte	0x10
	.4byte	0x81
	.byte	0x1
	.4byte	0xdea
	.uleb128 0x1d
	.4byte	.LASF208
	.byte	0x1
	.byte	0x76
	.byte	0x36
	.4byte	0x36e
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0x76
	.byte	0x44
	.4byte	0x81
	.uleb128 0x1d
	.4byte	.LASF204
	.byte	0x1
	.byte	0x76
	.byte	0x51
	.4byte	0x81
	.uleb128 0x1d
	.4byte	.LASF205
	.byte	0x1
	.byte	0x76
	.byte	0x60
	.4byte	0xaa
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.byte	0x78
	.byte	0xe
	.4byte	0x81
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x78
	.byte	0x11
	.4byte	0x81
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.byte	0x79
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.byte	0x55
	.byte	0x11
	.4byte	0x39a
	.byte	0x1
	.4byte	0xe52
	.uleb128 0x1d
	.4byte	.LASF208
	.byte	0x1
	.byte	0x55
	.byte	0x44
	.4byte	0x36e
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x55
	.byte	0x53
	.4byte	0x39a
	.uleb128 0x1f
	.string	"v"
	.byte	0x1
	.byte	0x57
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"a"
	.byte	0x1
	.byte	0x58
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.byte	0x58
	.byte	0xd
	.4byte	0x81
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.4byte	0x81
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0x59
	.byte	0xe
	.4byte	0x81
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x21
	.4byte	0xd7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a6
	.uleb128 0x22
	.4byte	0xd8f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x22
	.4byte	0xd9b
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	0xda7
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	0xdb3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	0xdbf
	.uleb128 0x23
	.4byte	0xdc9
	.uleb128 0x23
	.4byte	0xdd3
	.uleb128 0x23
	.4byte	0xddd
	.uleb128 0x24
	.4byte	0xd7e
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x114d
	.uleb128 0x22
	.4byte	0xd9b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	0xdb3
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x22
	.4byte	0xda7
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x22
	.4byte	0xd8f
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x25
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x26
	.4byte	0xdbf
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	0xdc9
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	0xdd3
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x26
	.4byte	0xddd
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x27
	.4byte	0xdea
	.4byte	.LBI8
	.byte	.LVU53
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc3
	.byte	0x6
	.4byte	0xfb3
	.uleb128 0x22
	.4byte	0xdfb
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x22
	.4byte	0xe07
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x8
	.uleb128 0x26
	.4byte	0xe13
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x26
	.4byte	0xe1d
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x26
	.4byte	0xe27
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x26
	.4byte	0xe31
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x26
	.4byte	0xe3b
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x26
	.4byte	0xe45
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x11cd
	.4byte	0xfc7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x11da
	.4byte	0xfe1
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
	.4byte	.LVL16
	.4byte	0x11e7
	.4byte	0xffd
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
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x11e7
	.4byte	0x1017
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
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x11da
	.4byte	0x1030
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
	.4byte	.LVL21
	.4byte	0x11e7
	.4byte	0x104a
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
	.byte	0
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0x11e7
	.4byte	0x1064
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
	.4byte	.LVL35
	.4byte	0x11f4
	.4byte	0x1087
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
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.byte	0
	.uleb128 0x19
	.4byte	.LVL37
	.4byte	0x11da
	.4byte	0x10a1
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
	.byte	0x24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0x11e7
	.4byte	0x10bb
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
	.byte	0
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0x11e7
	.4byte	0x10d7
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
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0x11e7
	.4byte	0x10f1
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
	.4byte	.LVL41
	.4byte	0x11e7
	.4byte	0x110d
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
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0x11e7
	.4byte	0x1121
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0x11da
	.4byte	0x113b
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
	.byte	0xe3
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0x1201
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
	.4byte	0x11c0
	.4byte	0x1161
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x11cd
	.4byte	0x1175
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x11da
	.4byte	0x118f
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
	.4byte	0x11e7
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
	.uleb128 0x29
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF219
	.4byte	.LASF219
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
.LVUS21:
	.uleb128 0
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 0
.LLST20:
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
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
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
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
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
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
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
	.uleb128 .LVU122
	.uleb128 .LVU122
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
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
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
	.uleb128 .LVU121
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU15
	.uleb128 .LVU121
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU15
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU121
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU15
	.uleb128 .LVU121
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU18
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU114
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL19
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU23
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU121
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xd
	.byte	0x75
	.sleb128 6
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
	.4byte	.LVL14
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU43
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU112
	.uleb128 .LVU113
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL19
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU44
	.uleb128 .LVU50
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU109
	.uleb128 .LVU121
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU54
	.uleb128 .LVU97
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU53
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU95
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU72
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU95
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU66
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU95
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x77
	.sleb128 -2
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU95
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x77
	.sleb128 1
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x77
	.sleb128 -1
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU70
	.uleb128 .LVU71
.LLST17:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU54
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU95
.LLST18:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0xb
	.byte	0x7a
	.sleb128 -1
	.byte	0x3
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU60
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU95
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF115:
	.string	"u8x8_font_artosserif8_n"
.LASF199:
	.string	"u8x8_nhd_ssd1325_128x64_display_info"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF127:
	.string	"u8x8_font_victoriabold8_u"
.LASF200:
	.string	"u8x8_d_ssd0323_os128064_init_seq"
.LASF116:
	.string	"u8x8_font_artosserif8_u"
.LASF143:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_f"
.LASF129:
	.string	"u8x8_font_victoriamedium8_n"
.LASF204:
	.string	"arg_int"
.LASF222:
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
.LASF210:
	.string	"u8x8_ssd1325_8to32"
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
.LASF218:
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
.LASF212:
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
.LASF196:
	.string	"u8x8_d_ssd1325_128x64_nhd_flip1_seq"
.LASF215:
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
.LASF202:
	.string	"u8x8_d_ssd0323_os128064_flip1_seq"
.LASF177:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF198:
	.string	"u8x8_d_ssd1325_128x64_nhd_init_seq"
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
.LASF193:
	.string	"u8x8_d_ssd1325_128x64_nhd_powersave0_seq"
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
.LASF213:
	.string	"u8x8_d_helper_display_init"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF50:
	.string	"tile_height"
.LASF148:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF207:
	.string	"u8x8_d_ssd1325_nhd_128x64"
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
.LASF211:
	.string	"dest"
.LASF221:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_ssd1325.c"
.LASF2:
	.string	"short int"
.LASF208:
	.string	"u8x8"
.LASF209:
	.string	"u8x8_d_ssd1325_128x64_generic"
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
.LASF201:
	.string	"u8x8_d_ssd0323_os128064_flip0_seq"
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
.LASF168:
	.string	"u8x8_font_pressstart2p_r"
.LASF219:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF220:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF195:
	.string	"u8x8_d_ssd1325_128x64_nhd_flip0_seq"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF205:
	.string	"arg_ptr"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF194:
	.string	"u8x8_d_ssd1325_128x64_nhd_powersave1_seq"
.LASF87:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF203:
	.string	"u8x8_ssd0323_os128064_display_info"
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
.LASF216:
	.string	"u8x8_cad_SendCmd"
.LASF68:
	.string	"u8x8_font_5x7_n"
.LASF197:
	.string	"u8x8_ssd1325_8to32_dest_buf"
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
.LASF206:
	.string	"u8x8_d_ssd0323_os128064"
.LASF217:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF214:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
