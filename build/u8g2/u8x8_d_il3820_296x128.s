	.file	"u8x8_d_il3820_296x128.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_il3820_first_init,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_il3820_exec_1000dly_seq
	.align	4
	.type	u8x8_d_il3820_first_init, @function
u8x8_d_il3820_first_init:
.LVL0:
.LFB2:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_il3820_296x128.c"
	.loc 1 241 1 view -0
	.loc 1 241 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 242 7 is_stmt 1 view .LVU2
	mov.n	a10, a2
	call8	u8x8_ClearDisplay
.LVL1:
	.loc 1 244 7 view .LVU3
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 245 7 view .LVU4
	movi.n	a11, 0x32
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL3:
	.loc 1 246 7 view .LVU5
	movi.n	a12, 0x55
	movi.n	a11, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL4:
	.loc 1 247 7 view .LVU6
	movi	a12, 0xaa
	movi.n	a11, 0xc
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL5:
	.loc 1 248 7 view .LVU7
	movi.n	a12, 0x22
	movi.n	a11, 0xa
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL6:
	.loc 1 249 7 view .LVU8
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL7:
	.loc 1 251 1 is_stmt 0 view .LVU9
	retw.n
.LFE2:
	.size	u8x8_d_il3820_first_init, .-u8x8_d_il3820_first_init
	.section	.text.u8x8_d_il3820_draw_tile,"ax",@progbits
	.literal_position
	.literal .LC1, buf$2822
	.align	4
	.type	u8x8_d_il3820_draw_tile, @function
u8x8_d_il3820_draw_tile:
.LVL8:
.LFB1:
	.loc 1 182 1 is_stmt 1 view -0
	.loc 1 182 1 is_stmt 0 view .LVU11
	entry	sp, 32
.LCFI1:
	.loc 1 183 3 is_stmt 1 view .LVU12
	.loc 1 184 3 view .LVU13
	.loc 1 185 3 view .LVU14
	.loc 1 186 3 view .LVU15
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL9:
	.loc 1 188 3 view .LVU16
	.loc 1 188 8 is_stmt 0 view .LVU17
	l32i.n	a5, a2, 0
	.loc 1 190 8 view .LVU18
	l8ui	a7, a4, 6
	.loc 1 188 8 view .LVU19
	l8ui	a6, a5, 17
.LVL10:
	.loc 1 189 3 is_stmt 1 view .LVU20
	.loc 1 190 3 view .LVU21
	.loc 1 190 8 is_stmt 0 view .LVU22
	movi.n	a5, -1
	xor	a5, a5, a7
	add.n	a6, a6, a5
.LVL11:
	.loc 1 192 5 view .LVU23
	l8ui	a5, a4, 5
	.loc 1 194 12 view .LVU24
	l8ui	a7, a2, 34
	.loc 1 199 3 view .LVU25
	movi.n	a11, 0x4f
	.loc 1 193 5 view .LVU26
	slli	a5, a5, 3
	.loc 1 199 3 view .LVU27
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL12:
	.loc 1 194 5 view .LVU28
	add.n	a5, a5, a7
	.loc 1 200 3 view .LVU29
	extui	a11, a5, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL13:
	.loc 1 201 3 view .LVU30
	srli	a11, a5, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL14:
	.loc 1 203 3 view .LVU31
	movi.n	a11, 0x4e
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 190 8 view .LVU32
	extui	a6, a6, 0, 8
.LVL16:
	.loc 1 192 3 is_stmt 1 view .LVU33
	.loc 1 193 3 view .LVU34
	.loc 1 194 3 view .LVU35
	.loc 1 199 3 view .LVU36
	.loc 1 200 3 view .LVU37
	.loc 1 201 3 view .LVU38
	.loc 1 203 3 view .LVU39
	.loc 1 204 3 view .LVU40
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL17:
	.loc 1 206 3 view .LVU41
	movi.n	a11, 0x24
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL18:
.L5:
	.loc 1 208 3 view .LVU42
	.loc 1 210 5 view .LVU43
	.loc 1 210 7 is_stmt 0 view .LVU44
	l8ui	a5, a4, 4
.LVL19:
	.loc 1 211 5 is_stmt 1 view .LVU45
	.loc 1 211 9 is_stmt 0 view .LVU46
	l32i.n	a7, a4, 0
.LVL20:
.L4:
	.loc 1 212 5 is_stmt 1 discriminator 1 view .LVU47
	.loc 1 214 7 discriminator 1 view .LVU48
.LBB4:
.LBI4:
	.loc 1 167 17 discriminator 1 view .LVU49
.LBB5:
	.loc 1 169 3 discriminator 1 view .LVU50
	.loc 1 170 3 discriminator 1 view .LVU51
	.loc 1 171 3 discriminator 1 view .LVU52
	.loc 1 173 3 discriminator 1 view .LVU53
	.loc 1 173 3 is_stmt 0 discriminator 1 view .LVU54
.LBE5:
.LBE4:
	.loc 1 182 1 discriminator 1 view .LVU55
	movi.n	a6, 0
.LBB7:
.LBB6:
	.loc 1 175 13 discriminator 1 view .LVU56
	movi.n	a11, -1
	movi.n	a8, 8
	loop	a8, .L3_LEND
.LVL21:
.L3:
	.loc 1 175 5 is_stmt 1 view .LVU57
	.loc 1 175 13 is_stmt 0 view .LVU58
	l32r	a9, .LC1
	add.n	a10, a6, a9
	.loc 1 175 17 view .LVU59
	add.n	a9, a7, a6
	.loc 1 175 13 view .LVU60
	l8ui	a9, a9, 0
	addi.n	a6, a6, 1
.LVL22:
	.loc 1 175 13 view .LVU61
	xor	a9, a11, a9
	s8i	a9, a10, 0
.LVL23:
	.loc 1 175 13 view .LVU62
	.L3_LEND:
	.loc 1 177 3 is_stmt 1 view .LVU63
.LVL24:
	.loc 1 177 3 is_stmt 0 view .LVU64
.LBE6:
.LBE7:
	.loc 1 214 7 view .LVU65
	l32r	a12, .LC1
	.loc 1 217 8 view .LVU66
	addi.n	a5, a5, -1
.LVL25:
	.loc 1 214 7 view .LVU67
	movi.n	a11, 8
	mov.n	a10, a2
	.loc 1 217 8 view .LVU68
	extui	a5, a5, 0, 8
.LVL26:
	.loc 1 214 7 view .LVU69
	call8	u8x8_cad_SendData
.LVL27:
	.loc 1 215 7 is_stmt 1 view .LVU70
	.loc 1 215 11 is_stmt 0 view .LVU71
	addi.n	a7, a7, 8
.LVL28:
	.loc 1 216 7 is_stmt 1 view .LVU72
	.loc 1 217 7 view .LVU73
	.loc 1 218 5 is_stmt 0 view .LVU74
	bnez.n	a5, .L4
	.loc 1 220 5 is_stmt 1 view .LVU75
	.loc 1 220 12 is_stmt 0 view .LVU76
	addi.n	a3, a3, -1
.LVL29:
	.loc 1 220 12 view .LVU77
	extui	a3, a3, 0, 8
.LVL30:
	.loc 1 221 3 view .LVU78
	bnez.n	a3, .L5
	.loc 1 223 3 is_stmt 1 view .LVU79
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL31:
	.loc 1 224 1 is_stmt 0 view .LVU80
	retw.n
.LFE1:
	.size	u8x8_d_il3820_draw_tile, .-u8x8_d_il3820_draw_tile
	.section	.text.u8x8_d_il3820_296x128,"ax",@progbits
	.literal_position
	.literal .LC2, .L12
	.literal .LC3, u8x8_il3820_296x128_display_info
	.literal .LC4, u8x8_d_il3820_296x128_init_seq
	.literal .LC5, u8x8_d_il3820_296x128_powersave0_seq
	.literal .LC6, u8x8_d_il3820_296x128_powersave1_seq
	.literal .LC7, u8x8_d_il3820_to_display_seq
	.align	4
	.global	u8x8_d_il3820_296x128
	.type	u8x8_d_il3820_296x128, @function
u8x8_d_il3820_296x128:
.LVL32:
.LFB3:
	.loc 1 374 1 is_stmt 1 view -0
	.loc 1 374 1 is_stmt 0 view .LVU82
	entry	sp, 32
.LCFI2:
	.loc 1 375 3 is_stmt 1 view .LVU83
	addi	a3, a3, -9
.LVL33:
	.loc 1 375 3 is_stmt 0 view .LVU84
	extui	a3, a3, 0, 8
	.loc 1 374 1 view .LVU85
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 375 3 view .LVU86
	bgeui	a3, 8, .L18
	l32r	a8, .LC2
	slli	a3, a3, 2
	add.n	a3, a8, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_il3820_296x128,"a",@progbits
	.align	4
	.align	4
.L12:
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L18
	.word	.L18
	.word	.L18
	.word	.L13
	.word	.L11
	.section	.text.u8x8_d_il3820_296x128
.L16:
	.loc 1 378 7 is_stmt 1 view .LVU87
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL34:
	.loc 1 379 7 view .LVU88
	j	.L19
.L15:
	.loc 1 382 7 view .LVU89
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL35:
	.loc 1 383 7 view .LVU90
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL36:
	.loc 1 385 7 view .LVU91
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL37:
	.loc 1 386 7 view .LVU92
	mov.n	a10, a2
	call8	u8x8_d_il3820_first_init
.LVL38:
	.loc 1 392 7 view .LVU93
	j	.L19
.L14:
	.loc 1 394 7 view .LVU94
	.loc 1 394 10 is_stmt 0 view .LVU95
	bnez.n	a11, .L17
	.loc 1 395 2 is_stmt 1 view .LVU96
	l32r	a11, .LC5
	j	.L20
.L17:
	.loc 1 397 2 view .LVU97
	l32r	a11, .LC6
	j	.L20
.L13:
	.loc 1 400 7 view .LVU98
	mov.n	a10, a2
	call8	u8x8_d_il3820_draw_tile
.LVL39:
.L19:
	.loc 1 401 7 view .LVU99
	.loc 1 408 10 is_stmt 0 view .LVU100
	movi.n	a2, 1
.LVL40:
	.loc 1 401 7 view .LVU101
	j	.L10
.LVL41:
.L11:
	.loc 1 403 7 is_stmt 1 view .LVU102
	l32r	a11, .LC7
.L20:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL42:
	.loc 1 404 7 view .LVU103
	j	.L19
.L18:
	.loc 1 406 14 is_stmt 0 view .LVU104
	movi.n	a2, 0
.LVL43:
.L10:
	.loc 1 409 1 view .LVU105
	retw.n
.LFE3:
	.size	u8x8_d_il3820_296x128, .-u8x8_d_il3820_296x128
	.section	.text.u8x8_d_il3820_v2_296x128,"ax",@progbits
	.literal_position
	.literal .LC8, .L24
	.literal .LC9, u8x8_il3820_296x128_display_info
	.literal .LC10, u8x8_d_il3820_v2_296x128_init_seq
	.literal .LC11, u8x8_d_il3820_296x128_powersave0_seq
	.literal .LC12, u8x8_d_il3820_296x128_powersave1_seq
	.literal .LC13, u8x8_d_il3820_v2_to_display_seq
	.align	4
	.global	u8x8_d_il3820_v2_296x128
	.type	u8x8_d_il3820_v2_296x128, @function
u8x8_d_il3820_v2_296x128:
.LVL44:
.LFB4:
	.loc 1 512 1 is_stmt 1 view -0
	.loc 1 512 1 is_stmt 0 view .LVU107
	entry	sp, 32
.LCFI3:
	.loc 1 513 3 is_stmt 1 view .LVU108
	addi	a3, a3, -9
.LVL45:
	.loc 1 513 3 is_stmt 0 view .LVU109
	extui	a3, a3, 0, 8
	.loc 1 512 1 view .LVU110
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 513 3 view .LVU111
	bgeui	a3, 8, .L30
	l32r	a8, .LC8
	slli	a3, a3, 2
	add.n	a3, a8, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_il3820_v2_296x128,"a",@progbits
	.align	4
	.align	4
.L24:
	.word	.L28
	.word	.L27
	.word	.L26
	.word	.L30
	.word	.L30
	.word	.L30
	.word	.L25
	.word	.L23
	.section	.text.u8x8_d_il3820_v2_296x128
.L28:
	.loc 1 516 7 is_stmt 1 view .LVU112
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL46:
	.loc 1 517 7 view .LVU113
	j	.L31
.L27:
	.loc 1 520 7 view .LVU114
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL47:
	.loc 1 522 7 view .LVU115
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL48:
	.loc 1 524 7 view .LVU116
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL49:
	.loc 1 525 7 view .LVU117
	mov.n	a10, a2
	call8	u8x8_d_il3820_first_init
.LVL50:
	.loc 1 532 7 view .LVU118
	j	.L31
.L26:
	.loc 1 534 7 view .LVU119
	.loc 1 534 10 is_stmt 0 view .LVU120
	bnez.n	a11, .L29
	.loc 1 535 2 is_stmt 1 view .LVU121
	l32r	a11, .LC11
	j	.L32
.L29:
	.loc 1 537 2 view .LVU122
	l32r	a11, .LC12
	j	.L32
.L25:
	.loc 1 540 7 view .LVU123
	mov.n	a10, a2
	call8	u8x8_d_il3820_draw_tile
.LVL51:
.L31:
	.loc 1 541 7 view .LVU124
	.loc 1 548 10 is_stmt 0 view .LVU125
	movi.n	a2, 1
.LVL52:
	.loc 1 541 7 view .LVU126
	j	.L22
.LVL53:
.L23:
	.loc 1 543 7 is_stmt 1 view .LVU127
	l32r	a11, .LC13
.L32:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL54:
	.loc 1 544 7 view .LVU128
	j	.L31
.L30:
	.loc 1 546 14 is_stmt 0 view .LVU129
	movi.n	a2, 0
.LVL55:
.L22:
	.loc 1 549 1 view .LVU130
	retw.n
.LFE4:
	.size	u8x8_d_il3820_v2_296x128, .-u8x8_d_il3820_v2_296x128
	.section	.bss.buf$2822,"aw",@nobits
	.type	buf$2822, @object
	.size	buf$2822, 8
buf$2822:
	.zero	8
	.section	.rodata.u8x8_d_il3820_v2_to_display_seq,"a"
	.type	u8x8_d_il3820_v2_to_display_seq, @object
	.size	u8x8_d_il3820_v2_to_display_seq, 83
u8x8_d_il3820_v2_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	-86
	.byte	22
	.byte	9
	.byte	22
	.byte	9
	.byte	22
	.byte	25
	.byte	22
	.byte	25
	.byte	22
	.byte	17
	.byte	22
	.byte	17
	.byte	22
	.byte	17
	.byte	22
	.byte	17
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	117
	.byte	22
	.byte	119
	.byte	22
	.byte	119
	.byte	22
	.byte	119
	.byte	22
	.byte	7
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-106
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_v2_296x128_init_seq,"a"
	.type	u8x8_d_il3820_v2_296x128_init_seq, @object
	.size	u8x8_d_il3820_v2_296x128_init_seq, 59
u8x8_d_il3820_v2_296x128_init_seq:
	.byte	24
	.byte	21
	.byte	1
	.byte	22
	.byte	39
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	3
	.byte	22
	.byte	117
	.byte	21
	.byte	4
	.byte	22
	.byte	10
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	44
	.byte	22
	.byte	-88
	.byte	21
	.byte	58
	.byte	22
	.byte	22
	.byte	21
	.byte	59
	.byte	22
	.byte	8
	.byte	21
	.byte	60
	.byte	22
	.byte	51
	.byte	21
	.byte	17
	.byte	22
	.byte	7
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	22
	.byte	29
	.byte	21
	.byte	69
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	39
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_to_display_seq,"a"
	.type	u8x8_d_il3820_to_display_seq, @object
	.size	u8x8_d_il3820_to_display_seq, 85
u8x8_d_il3820_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	80
	.byte	22
	.byte	-86
	.byte	22
	.byte	85
	.byte	22
	.byte	-86
	.byte	22
	.byte	17
	.byte	22
	.byte	17
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	22
	.byte	-1
	.byte	22
	.byte	63
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	120
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_296x128_init_seq,"a"
	.type	u8x8_d_il3820_296x128_init_seq, @object
	.size	u8x8_d_il3820_296x128_init_seq, 59
u8x8_d_il3820_296x128_init_seq:
	.byte	24
	.byte	21
	.byte	16
	.byte	22
	.byte	0
	.byte	21
	.byte	1
	.byte	22
	.byte	39
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	3
	.byte	22
	.byte	0
	.byte	21
	.byte	4
	.byte	22
	.byte	10
	.byte	21
	.byte	44
	.byte	22
	.byte	-88
	.byte	21
	.byte	58
	.byte	22
	.byte	22
	.byte	21
	.byte	59
	.byte	22
	.byte	8
	.byte	21
	.byte	60
	.byte	22
	.byte	51
	.byte	21
	.byte	17
	.byte	22
	.byte	7
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	22
	.byte	29
	.byte	21
	.byte	69
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	39
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_exec_1000dly_seq,"a"
	.type	u8x8_d_il3820_exec_1000dly_seq, @object
	.size	u8x8_d_il3820_exec_1000dly_seq, 16
u8x8_d_il3820_exec_1000dly_seq:
	.byte	21
	.byte	34
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_il3820_296x128_display_info,"a"
	.align	4
	.type	u8x8_il3820_296x128_display_info, @object
	.size	u8x8_il3820_296x128_display_info, 24
u8x8_il3820_296x128_display_info:
	.byte	0
	.byte	1
	.byte	120
	.byte	60
	.byte	100
	.byte	100
	.byte	50
	.byte	125
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	37
	.byte	16
	.byte	0
	.byte	0
	.short	296
	.short	128
	.section	.rodata.u8x8_d_il3820_296x128_powersave1_seq,"a"
	.type	u8x8_d_il3820_296x128_powersave1_seq, @object
	.size	u8x8_d_il3820_296x128_powersave1_seq, 11
u8x8_d_il3820_296x128_powersave1_seq:
	.byte	24
	.byte	21
	.byte	34
	.byte	22
	.byte	2
	.byte	21
	.byte	32
	.byte	-2
	.byte	20
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_296x128_powersave0_seq,"a"
	.type	u8x8_d_il3820_296x128_powersave0_seq, @object
	.size	u8x8_d_il3820_296x128_powersave0_seq, 13
u8x8_d_il3820_296x128_powersave0_seq:
	.byte	24
	.byte	21
	.byte	34
	.byte	22
	.byte	-64
	.byte	21
	.byte	32
	.byte	-2
	.byte	-56
	.byte	-2
	.byte	100
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10f0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0xc
	.4byte	.LASF221
	.4byte	.LASF222
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
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0xa63
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x1
	.byte	0x6d
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_296x128_powersave0_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xa9a
	.uleb128 0x12
	.4byte	0x6c
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	0xa8a
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x77
	.byte	0x16
	.4byte	0xa9a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_296x128_powersave1_seq
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x8e
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_il3820_296x128_display_info
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xad3
	.uleb128 0x12
	.4byte	0x6c
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0xac3
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0xe4
	.byte	0x16
	.4byte	0xad3
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_exec_1000dly_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xafa
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x3a
	.byte	0
	.uleb128 0x5
	.4byte	0xaea
	.uleb128 0x14
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x112
	.byte	0x16
	.4byte	0xafa
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_296x128_init_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb22
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.4byte	0xb12
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x136
	.byte	0x16
	.4byte	0xb22
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_to_display_seq
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1a0
	.byte	0x16
	.4byte	0xafa
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_v2_296x128_init_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb5d
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.4byte	0xb4d
	.uleb128 0x14
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1bc
	.byte	0x16
	.4byte	0xb5d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_v2_to_display_seq
	.uleb128 0x15
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1ff
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7c
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1ff
	.byte	0x2a
	.4byte	0x36e
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1ff
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x1ff
	.byte	0x45
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1ff
	.byte	0x54
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0x1071
	.4byte	0xbf5
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
	.4byte	u8x8_il3820_296x128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL47
	.4byte	0x107e
	.4byte	0xc09
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0x108b
	.4byte	0xc26
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
	.4byte	u8x8_d_il3820_v2_296x128_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0x108b
	.4byte	0xc43
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
	.4byte	u8x8_d_il3820_296x128_powersave0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0xd83
	.4byte	0xc57
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL51
	.4byte	0xe60
	.4byte	0xc6b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL54
	.4byte	0x108b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x175
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd83
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x175
	.byte	0x27
	.4byte	0x36e
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x175
	.byte	0x35
	.4byte	0x81
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x175
	.byte	0x42
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x175
	.byte	0x51
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0x1071
	.4byte	0xcfc
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
	.4byte	u8x8_il3820_296x128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x107e
	.4byte	0xd10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0x108b
	.4byte	0xd2d
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
	.4byte	u8x8_d_il3820_296x128_init_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL37
	.4byte	0x108b
	.4byte	0xd4a
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
	.4byte	u8x8_d_il3820_296x128_powersave0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0xd83
	.4byte	0xd5e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0xe60
	.4byte	0xd72
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL42
	.4byte	0x108b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF206
	.byte	0x1
	.byte	0xf0
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe60
	.uleb128 0x1d
	.4byte	.LASF201
	.byte	0x1
	.byte	0xf0
	.byte	0x2e
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0x1098
	.4byte	0xdbb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x10a5
	.4byte	0xdcf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x10b2
	.4byte	0xde9
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
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x10bf
	.4byte	0xe08
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
	.byte	0x38
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x10bf
	.4byte	0xe27
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
	.byte	0x3c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xaa
	.byte	0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x10bf
	.4byte	0xe46
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
	.byte	0x3a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x108b
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
	.4byte	u8x8_d_il3820_exec_1000dly_seq
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF207
	.byte	0x1
	.byte	0xb5
	.byte	0xd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101d
	.uleb128 0x1d
	.4byte	.LASF201
	.byte	0x1
	.byte	0xb5
	.byte	0x2d
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb5
	.byte	0x3b
	.4byte	0x81
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1d
	.4byte	.LASF203
	.byte	0x1
	.byte	0xb5
	.byte	0x4a
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0xb7
	.byte	0xc
	.4byte	0x92
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0xb8
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x20
	.4byte	.LASF208
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.byte	0xb9
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x21
	.4byte	0x101d
	.4byte	.LBI4
	.byte	.LVU49
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd6
	.byte	0x7
	.4byte	0xf35
	.uleb128 0x22
	.4byte	0x102e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x24
	.4byte	0x1038
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x24
	.4byte	0x1054
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0x10a5
	.4byte	0xf49
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x10b2
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
	.byte	0x4f
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x10cc
	.4byte	0xf80
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
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x10cc
	.4byte	0xf9c
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
	.byte	0x75
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x10b2
	.4byte	0xfb6
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
	.byte	0x4e
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x10cc
	.4byte	0xfd0
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
	.4byte	.LVL18
	.4byte	0x10b2
	.4byte	0xfea
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
	.4byte	.LVL27
	.4byte	0x10d9
	.4byte	0x100c
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
	.byte	0x38
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2822
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0x10e6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF223
	.byte	0x1
	.byte	0xa7
	.byte	0x11
	.4byte	0x39a
	.byte	0x1
	.4byte	0x1061
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.byte	0xa7
	.byte	0x37
	.4byte	0x39a
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.byte	0xb
	.4byte	0x81
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.byte	0xaa
	.byte	0x12
	.4byte	0x1061
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2822
	.uleb128 0x29
	.4byte	.LASF209
	.byte	0x1
	.byte	0xab
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0xf
	.4byte	0x81
	.4byte	0x1071
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x7
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x4
	.2byte	0x22f
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x2a
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x2a
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x4
	.2byte	0x257
	.byte	0x9
	.uleb128 0x2a
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x2a
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST0:
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU36
	.uleb128 .LVU42
.LLST1:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU69
	.uleb128 .LVU74
	.uleb128 0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU28
	.uleb128 .LVU33
	.uleb128 .LVU42
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x75
	.sleb128 17
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU47
	.uleb128 0
.LLST4:
	.4byte	.LVL20
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU49
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU64
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL21
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU54
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU53
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU64
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x3
	.4byte	buf$2822
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL21
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	buf$2822
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	buf$2822+1
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	buf$2822
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF206:
	.string	"u8x8_d_il3820_first_init"
.LASF196:
	.string	"u8x8_d_il3820_exec_1000dly_seq"
.LASF115:
	.string	"u8x8_font_artosserif8_n"
.LASF209:
	.string	"pbuf"
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
.LASF221:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_il3820_296x128.c"
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
.LASF16:
	.string	"display_cb"
.LASF122:
	.string	"u8x8_font_torussansbold8_r"
.LASF124:
	.string	"u8x8_font_torussansbold8_u"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF213:
	.string	"u8x8_ClearDisplay"
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
.LASF199:
	.string	"u8x8_d_il3820_v2_296x128_init_seq"
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
.LASF200:
	.string	"u8x8_d_il3820_v2_to_display_seq"
.LASF6:
	.string	"__uint32_t"
.LASF160:
	.string	"u8x8_font_inb21_2x4_n"
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
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF159:
	.string	"u8x8_font_inb21_2x4_r"
.LASF142:
	.string	"u8x8_font_courR24_3x4_n"
.LASF214:
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
.LASF208:
	.string	"page"
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
.LASF161:
	.string	"u8x8_font_inb33_3x6_f"
.LASF195:
	.string	"u8x8_il3820_296x128_display_info"
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
.LASF197:
	.string	"u8x8_d_il3820_296x128_init_seq"
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
.LASF194:
	.string	"u8x8_d_il3820_296x128_powersave1_seq"
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
.LASF205:
	.string	"u8x8_d_il3820_296x128"
.LASF223:
	.string	"u8x8_convert_tile_for_il3820"
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
.LASF198:
	.string	"u8x8_d_il3820_to_display_seq"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF220:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF207:
	.string	"u8x8_d_il3820_draw_tile"
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
.LASF203:
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
	.string	"u8x8_cad_SendMultipleArg"
.LASF215:
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
.LASF217:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF193:
	.string	"u8x8_d_il3820_296x128_powersave0_seq"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF212:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF204:
	.string	"u8x8_d_il3820_v2_296x128"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
