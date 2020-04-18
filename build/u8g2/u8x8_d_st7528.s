	.file	"u8x8_d_st7528.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7528_nhd_c160100,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_st7528_160x100_display_info
	.literal .LC1, .L5
	.literal .LC2, u8x8_d_st7528_nhd_c160100_init_seq
	.literal .LC3, u8x8_d_st7528_powersave0_seq
	.literal .LC4, u8x8_d_st7528_powersave1_seq
	.literal .LC5, u8x8_d_st7528_flip0_seq
	.literal .LC6, u8x8_d_st7528_flip1_seq
	.literal .LC7, u8x8_st7528_8to32_dest_buf
	.align	4
	.global	u8x8_d_st7528_nhd_c160100
	.type	u8x8_d_st7528_nhd_c160100, @function
u8x8_d_st7528_nhd_c160100:
.LVL0:
.LFB2:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st7528.c"
	.loc 1 304 1 view -0
	.loc 1 304 1 is_stmt 0 view .LVU1
	entry	sp, 64
.LCFI0:
	.loc 1 305 5 is_stmt 1 view .LVU2
	.loc 1 304 1 is_stmt 0 view .LVU3
	extui	a3, a3, 0, 8
	.loc 1 305 8 view .LVU4
	movi.n	a6, 9
	.loc 1 304 1 view .LVU5
	extui	a4, a4, 0, 8
	.loc 1 305 8 view .LVU6
	bne	a3, a6, .L2
	.loc 1 307 7 is_stmt 1 view .LVU7
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL1:
	.loc 1 308 7 view .LVU8
	j	.L28
.L2:
	.loc 1 310 5 view .LVU9
.LVL2:
.LBB6:
.LBI6:
	.loc 1 197 16 view .LVU10
.LBB7:
	.loc 1 199 3 view .LVU11
	.loc 1 200 3 view .LVU12
	.loc 1 201 3 view .LVU13
	addi	a3, a3, -10
.LVL3:
	.loc 1 201 3 is_stmt 0 view .LVU14
	extui	a3, a3, 0, 8
.LVL4:
	.loc 1 201 3 view .LVU15
	bgeui	a3, 6, .L18
	l32r	a6, .LC1
	slli	a3, a3, 2
	add.n	a3, a6, a3
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7528_nhd_c160100,"a",@progbits
	.align	4
	.align	4
.L5:
	.word	.L9
	.word	.L8
	.word	.L18
	.word	.L7
	.word	.L6
	.word	.L4
	.section	.text.u8x8_d_st7528_nhd_c160100
.L9:
	.loc 1 209 7 is_stmt 1 view .LVU16
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL5:
	.loc 1 210 7 view .LVU17
	l32r	a11, .LC2
	j	.L29
.L8:
	.loc 1 213 7 view .LVU18
	.loc 1 214 2 is_stmt 0 view .LVU19
	l32r	a11, .LC3
	.loc 1 213 10 view .LVU20
	beqz.n	a4, .L29
.L10:
	.loc 1 216 2 is_stmt 1 view .LVU21
	l32r	a11, .LC4
.L29:
	.loc 1 216 2 is_stmt 0 view .LVU22
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL6:
	j	.L28
.L7:
	.loc 1 219 7 is_stmt 1 view .LVU23
	.loc 1 219 10 is_stmt 0 view .LVU24
	bnez.n	a4, .L11
	.loc 1 221 2 is_stmt 1 view .LVU25
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL7:
	.loc 1 222 2 view .LVU26
	.loc 1 222 37 is_stmt 0 view .LVU27
	l32i.n	a3, a2, 0
	.loc 1 222 17 view .LVU28
	l8ui	a3, a3, 18
	j	.L30
.L11:
	.loc 1 226 2 is_stmt 1 view .LVU29
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL8:
	.loc 1 227 2 view .LVU30
	.loc 1 227 37 is_stmt 0 view .LVU31
	l32i.n	a3, a2, 0
	.loc 1 227 17 view .LVU32
	l8ui	a3, a3, 19
.L30:
	.loc 1 227 17 view .LVU33
	s8i	a3, a2, 34
	j	.L28
.L6:
	.loc 1 232 7 is_stmt 1 view .LVU34
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL9:
	.loc 1 233 7 view .LVU35
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL10:
	.loc 1 234 7 view .LVU36
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL11:
	.loc 1 235 7 view .LVU37
	j	.L27
.L4:
	.loc 1 239 7 view .LVU38
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL12:
	.loc 1 240 7 view .LVU39
	.loc 1 240 9 is_stmt 0 view .LVU40
	l8ui	a8, a5, 5
.LVL13:
	.loc 1 241 7 is_stmt 1 view .LVU41
	.loc 1 243 9 is_stmt 0 view .LVU42
	l8ui	a6, a5, 6
	.loc 1 241 9 view .LVU43
	slli	a8, a8, 2
	.loc 1 254 11 view .LVU44
	movi	a3, 0xb0
	.loc 1 241 9 view .LVU45
	extui	a8, a8, 0, 8
	.loc 1 254 11 view .LVU46
	or	a3, a6, a3
	.loc 1 241 9 view .LVU47
	s32i.n	a8, sp, 0
.LVL14:
	.loc 1 243 7 is_stmt 1 view .LVU48
	.loc 1 254 11 is_stmt 0 view .LVU49
	s32i.n	a3, sp, 8
.LVL15:
.L17:
	.loc 1 247 7 is_stmt 1 view .LVU50
	.loc 1 249 2 view .LVU51
	.loc 1 249 4 is_stmt 0 view .LVU52
	l8ui	a3, a5, 4
	.loc 1 250 6 view .LVU53
	l32i.n	a7, sp, 0
	.loc 1 249 4 view .LVU54
	s32i.n	a3, sp, 4
.LVL16:
	.loc 1 250 2 is_stmt 1 view .LVU55
	.loc 1 249 4 is_stmt 0 view .LVU56
	l32i.n	a6, sp, 4
	.loc 1 250 6 view .LVU57
	l32i.n	a3, a5, 0
.LVL17:
.L16:
	.loc 1 252 2 is_stmt 1 view .LVU58
	.loc 1 254 11 view .LVU59
	l32i.n	a11, sp, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 255 11 view .LVU60
	movi.n	a8, 0x10
	extui	a11, a7, 4, 8
	or	a11, a11, a8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL19:
	.loc 1 256 11 view .LVU61
	extui	a11, a7, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL20:
	.loc 1 258 11 view .LVU62
.LBB8:
.LBI8:
	.loc 1 164 17 view .LVU63
.LBB9:
	.loc 1 171 3 is_stmt 0 view .LVU64
	addi.n	a9, a3, 8
	l32r	a11, .LC7
	s32i.n	a9, sp, 16
.LVL21:
.L15:
	.loc 1 173 5 is_stmt 1 view .LVU65
	.loc 1 174 5 view .LVU66
	.loc 1 175 7 is_stmt 0 view .LVU67
	l8ui	a14, a3, 0
	.loc 1 177 7 view .LVU68
	l8ui	a13, a3, 1
	.loc 1 174 10 view .LVU69
	mov.n	a15, a11
.LVL22:
	.loc 1 175 5 is_stmt 1 view .LVU70
	.loc 1 176 5 view .LVU71
	.loc 1 177 5 view .LVU72
	.loc 1 178 5 view .LVU73
	addi.n	a3, a3, 2
.LVL23:
	.loc 1 179 5 view .LVU74
	.loc 1 179 5 is_stmt 0 view .LVU75
	movi.n	a12, 8
	loop	a12, .L14_LEND
.LVL24:
.L14:
	.loc 1 181 7 is_stmt 1 view .LVU76
	.loc 1 182 7 view .LVU77
	.loc 1 182 10 is_stmt 0 view .LVU78
	extui	a10, a14, 0, 1
	.loc 1 182 20 view .LVU79
	movi	a8, 0xf0
	movi.n	a9, 0
	moveqz	a8, a9, a10
	s32i.n	a8, sp, 12
.LVL25:
	.loc 1 183 7 is_stmt 1 view .LVU80
	.loc 1 183 10 is_stmt 0 view .LVU81
	bbc	a13, a9, .L13
	.loc 1 183 18 is_stmt 1 view .LVU82
	.loc 1 183 20 is_stmt 0 view .LVU83
	movi.n	a10, 0xf
	or	a8, a8, a10
	s32i.n	a8, sp, 12
.LVL26:
.L13:
	.loc 1 184 7 is_stmt 1 view .LVU84
	.loc 1 184 13 is_stmt 0 view .LVU85
	l32i.n	a8, sp, 12
	.loc 1 186 9 view .LVU86
	srli	a14, a14, 1
.LVL27:
	.loc 1 184 13 view .LVU87
	s8i	a8, a15, 0
	.loc 1 185 7 is_stmt 1 view .LVU88
	.loc 1 187 9 is_stmt 0 view .LVU89
	srli	a13, a13, 1
.LVL28:
	.loc 1 185 11 view .LVU90
	addi.n	a15, a15, 4
.LVL29:
	.loc 1 186 7 is_stmt 1 view .LVU91
	.loc 1 187 7 view .LVU92
	.loc 1 187 9 is_stmt 0 view .LVU93
	.L14_LEND:
.LVL30:
	.loc 1 171 3 view .LVU94
	l32i.n	a9, sp, 16
	addi.n	a11, a11, 1
.LVL31:
	.loc 1 171 3 view .LVU95
	bne	a3, a9, .L15
	.loc 1 191 3 is_stmt 1 view .LVU96
.LVL32:
	.loc 1 191 3 is_stmt 0 view .LVU97
.LBE9:
.LBE8:
	.loc 1 258 11 view .LVU98
	l32r	a12, .LC7
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL33:
	.loc 1 260 4 is_stmt 1 view .LVU99
	.loc 1 261 4 view .LVU100
	.loc 1 262 5 is_stmt 0 view .LVU101
	addi.n	a9, a6, -1
	.loc 1 261 6 view .LVU102
	addi.n	a7, a7, 4
.LVL34:
	.loc 1 262 5 view .LVU103
	extui	a6, a9, 0, 8
.LVL35:
	.loc 1 261 6 view .LVU104
	extui	a7, a7, 0, 8
.LVL36:
	.loc 1 262 4 is_stmt 1 view .LVU105
	.loc 1 263 2 is_stmt 0 view .LVU106
	bnez.n	a6, .L16
	l32i.n	a3, sp, 4
.LVL37:
	.loc 1 263 2 view .LVU107
	l32i.n	a9, sp, 0
.LVL38:
	.loc 1 263 2 view .LVU108
	addi	a6, a3, 64
.LVL39:
	.loc 1 263 2 view .LVU109
	slli	a6, a6, 2
	add.n	a8, a9, a6
	extui	a8, a8, 0, 8
	.loc 1 266 9 view .LVU110
	addi.n	a4, a4, -1
.LVL40:
	.loc 1 266 9 view .LVU111
	s32i.n	a8, sp, 0
	.loc 1 266 2 is_stmt 1 view .LVU112
	.loc 1 266 9 is_stmt 0 view .LVU113
	extui	a4, a4, 0, 8
.LVL41:
	.loc 1 267 7 view .LVU114
	bnez.n	a4, .L17
.LVL42:
.L27:
	.loc 1 269 7 is_stmt 1 view .LVU115
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL43:
.L28:
	.loc 1 270 7 view .LVU116
	.loc 1 274 10 is_stmt 0 view .LVU117
	movi.n	a2, 1
.LVL44:
	.loc 1 274 10 view .LVU118
	j	.L3
.LVL45:
.L18:
	.loc 1 272 14 view .LVU119
	movi.n	a2, 0
.LVL46:
.L3:
	.loc 1 272 14 view .LVU120
.LBE7:
.LBE6:
	.loc 1 311 1 view .LVU121
	retw.n
.LFE2:
	.size	u8x8_d_st7528_nhd_c160100, .-u8x8_d_st7528_nhd_c160100
	.section	.rodata.u8x8_st7528_160x100_display_info,"a"
	.align	4
	.type	u8x8_st7528_160x100_display_info, @object
	.size	u8x8_st7528_160x100_display_info, 24
u8x8_st7528_160x100_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	25
	.word	8000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	20
	.byte	13
	.byte	0
	.byte	0
	.short	160
	.short	100
	.section	.bss.u8x8_st7528_8to32_dest_buf,"aw",@nobits
	.type	u8x8_st7528_8to32_dest_buf, @object
	.size	u8x8_st7528_8to32_dest_buf, 32
u8x8_st7528_8to32_dest_buf:
	.zero	32
	.section	.rodata.u8x8_d_st7528_flip1_seq,"a"
	.type	u8x8_d_st7528_flip1_seq, @object
	.size	u8x8_d_st7528_flip1_seq, 3
u8x8_d_st7528_flip1_seq:
	.byte	24
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7528_flip0_seq,"a"
	.type	u8x8_d_st7528_flip0_seq, @object
	.size	u8x8_d_st7528_flip0_seq, 3
u8x8_d_st7528_flip0_seq:
	.byte	24
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7528_powersave1_seq,"a"
	.type	u8x8_d_st7528_powersave1_seq, @object
	.size	u8x8_d_st7528_powersave1_seq, 9
u8x8_d_st7528_powersave1_seq:
	.byte	24
	.byte	21
	.byte	56
	.byte	22
	.byte	116
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7528_powersave0_seq,"a"
	.type	u8x8_d_st7528_powersave0_seq, @object
	.size	u8x8_d_st7528_powersave0_seq, 9
u8x8_d_st7528_powersave0_seq:
	.byte	24
	.byte	21
	.byte	56
	.byte	22
	.byte	116
	.byte	21
	.byte	-81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7528_nhd_c160100_init_seq,"a"
	.type	u8x8_d_st7528_nhd_c160100_init_seq, @object
	.size	u8x8_d_st7528_nhd_c160100_init_seq, 311
u8x8_d_st7528_nhd_c160100_init_seq:
	.byte	24
	.byte	21
	.byte	72
	.byte	22
	.byte	100
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	21
	.byte	-85
	.byte	21
	.byte	38
	.byte	21
	.byte	-127
	.byte	22
	.byte	21
	.byte	21
	.byte	86
	.byte	21
	.byte	100
	.byte	-2
	.byte	2
	.byte	21
	.byte	44
	.byte	21
	.byte	102
	.byte	-2
	.byte	2
	.byte	21
	.byte	46
	.byte	-2
	.byte	2
	.byte	21
	.byte	47
	.byte	21
	.byte	-13
	.byte	22
	.byte	0
	.byte	21
	.byte	-106
	.byte	21
	.byte	56
	.byte	22
	.byte	117
	.byte	21
	.byte	-128
	.byte	22
	.byte	0
	.byte	21
	.byte	-127
	.byte	22
	.byte	0
	.byte	21
	.byte	-126
	.byte	22
	.byte	0
	.byte	21
	.byte	-125
	.byte	22
	.byte	0
	.byte	21
	.byte	-124
	.byte	22
	.byte	6
	.byte	21
	.byte	-123
	.byte	22
	.byte	6
	.byte	21
	.byte	-122
	.byte	22
	.byte	6
	.byte	21
	.byte	-121
	.byte	22
	.byte	6
	.byte	21
	.byte	-120
	.byte	22
	.byte	11
	.byte	21
	.byte	-119
	.byte	22
	.byte	11
	.byte	21
	.byte	-118
	.byte	22
	.byte	11
	.byte	21
	.byte	-117
	.byte	22
	.byte	11
	.byte	21
	.byte	-116
	.byte	22
	.byte	16
	.byte	21
	.byte	-115
	.byte	22
	.byte	16
	.byte	21
	.byte	-114
	.byte	22
	.byte	16
	.byte	21
	.byte	-113
	.byte	22
	.byte	16
	.byte	21
	.byte	-112
	.byte	22
	.byte	21
	.byte	21
	.byte	-111
	.byte	22
	.byte	21
	.byte	21
	.byte	-110
	.byte	22
	.byte	21
	.byte	21
	.byte	-109
	.byte	22
	.byte	21
	.byte	21
	.byte	-108
	.byte	22
	.byte	26
	.byte	21
	.byte	-107
	.byte	22
	.byte	26
	.byte	21
	.byte	-106
	.byte	22
	.byte	26
	.byte	21
	.byte	-105
	.byte	22
	.byte	26
	.byte	21
	.byte	-104
	.byte	22
	.byte	30
	.byte	21
	.byte	-103
	.byte	22
	.byte	30
	.byte	21
	.byte	-102
	.byte	22
	.byte	30
	.byte	21
	.byte	-101
	.byte	22
	.byte	30
	.byte	21
	.byte	-100
	.byte	22
	.byte	35
	.byte	21
	.byte	-99
	.byte	22
	.byte	35
	.byte	21
	.byte	-98
	.byte	22
	.byte	35
	.byte	21
	.byte	-97
	.byte	22
	.byte	35
	.byte	21
	.byte	-96
	.byte	22
	.byte	39
	.byte	21
	.byte	-95
	.byte	22
	.byte	39
	.byte	21
	.byte	-94
	.byte	22
	.byte	39
	.byte	21
	.byte	-93
	.byte	22
	.byte	39
	.byte	21
	.byte	-92
	.byte	22
	.byte	43
	.byte	21
	.byte	-91
	.byte	22
	.byte	43
	.byte	21
	.byte	-90
	.byte	22
	.byte	43
	.byte	21
	.byte	-89
	.byte	22
	.byte	43
	.byte	21
	.byte	-88
	.byte	22
	.byte	47
	.byte	21
	.byte	-87
	.byte	22
	.byte	47
	.byte	21
	.byte	-86
	.byte	22
	.byte	47
	.byte	21
	.byte	-85
	.byte	22
	.byte	47
	.byte	21
	.byte	-84
	.byte	22
	.byte	50
	.byte	21
	.byte	-83
	.byte	22
	.byte	50
	.byte	21
	.byte	-82
	.byte	22
	.byte	50
	.byte	21
	.byte	-81
	.byte	22
	.byte	50
	.byte	21
	.byte	-80
	.byte	22
	.byte	53
	.byte	21
	.byte	-79
	.byte	22
	.byte	53
	.byte	21
	.byte	-78
	.byte	22
	.byte	53
	.byte	21
	.byte	-77
	.byte	22
	.byte	53
	.byte	21
	.byte	-76
	.byte	22
	.byte	56
	.byte	21
	.byte	-75
	.byte	22
	.byte	56
	.byte	21
	.byte	-74
	.byte	22
	.byte	56
	.byte	21
	.byte	-73
	.byte	22
	.byte	56
	.byte	21
	.byte	-72
	.byte	22
	.byte	58
	.byte	21
	.byte	-71
	.byte	22
	.byte	58
	.byte	21
	.byte	-70
	.byte	22
	.byte	58
	.byte	21
	.byte	-69
	.byte	22
	.byte	58
	.byte	21
	.byte	-68
	.byte	22
	.byte	60
	.byte	21
	.byte	-67
	.byte	22
	.byte	60
	.byte	21
	.byte	-66
	.byte	22
	.byte	60
	.byte	21
	.byte	-65
	.byte	22
	.byte	60
	.byte	21
	.byte	56
	.byte	22
	.byte	116
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
	.uleb128 0x40
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf52
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0xc
	.4byte	.LASF215
	.4byte	.LASF216
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
	.4byte	0xa74
	.uleb128 0x12
	.4byte	0x6c
	.2byte	0x136
	.byte	0
	.uleb128 0x5
	.4byte	0xa63
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2d
	.byte	0x16
	.4byte	0xa74
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_nhd_c160100_init_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xa9b
	.uleb128 0x14
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0xa8b
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x7e
	.byte	0x16
	.4byte	0xa9b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_powersave0_seq
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x86
	.byte	0x16
	.4byte	0xa9b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_powersave1_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xad4
	.uleb128 0x14
	.4byte	0x6c
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0xac4
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x8e
	.byte	0x16
	.4byte	0xad4
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip0_seq
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0x94
	.byte	0x16
	.4byte	0xad4
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip1_seq
	.uleb128 0xf
	.4byte	0x81
	.4byte	0xb0d
	.uleb128 0x14
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0xa2
	.byte	0x10
	.4byte	0xafd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_8to32_dest_buf
	.uleb128 0x15
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x116
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_160x100_display_info
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x12f
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe19
	.uleb128 0x17
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x12f
	.byte	0x2b
	.4byte	0x36e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x12f
	.byte	0x39
	.4byte	0x81
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x17
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x12f
	.byte	0x46
	.4byte	0x81
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x19
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x12f
	.byte	0x55
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	0xe19
	.4byte	.LBI6
	.byte	.LVU10
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.2byte	0x136
	.byte	0xc
	.4byte	0xdff
	.uleb128 0x1b
	.4byte	0xe4e
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1b
	.4byte	0xe42
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1b
	.4byte	0xe36
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1b
	.4byte	0xe2a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1c
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1d
	.4byte	0xe5a
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1d
	.4byte	0xe64
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1d
	.4byte	0xe6e
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x1d
	.4byte	0xe78
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x1a
	.4byte	0xe85
	.4byte	.LBI8
	.byte	.LVU63
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x102
	.byte	0xb
	.4byte	0xcb3
	.uleb128 0x1b
	.4byte	0xe96
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1b
	.4byte	0xea2
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1d
	.4byte	0xeae
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1d
	.4byte	0xeb8
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1d
	.4byte	0xec2
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1d
	.4byte	0xecc
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x1d
	.4byte	0xed6
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1d
	.4byte	0xee0
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL5
	.4byte	0xeed
	.4byte	0xcc7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0xefa
	.4byte	0xcdb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0xefa
	.4byte	0xcf8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip0_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0xefa
	.4byte	0xd15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip1_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL9
	.4byte	0xf07
	.4byte	0xd29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL10
	.4byte	0xf14
	.4byte	0xd43
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0xf21
	.4byte	0xd5d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL12
	.4byte	0xf07
	.4byte	0xd71
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL18
	.4byte	0xf14
	.4byte	0xd8c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0xf14
	.4byte	0xdae
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x77
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x40
	.byte	0x21
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL20
	.4byte	0xf14
	.4byte	0xdca
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x77
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL33
	.4byte	0xf2e
	.4byte	0xded
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_8to32_dest_buf
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0xf3b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL1
	.4byte	0xf48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_160x100_display_info
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF203
	.byte	0x1
	.byte	0xc5
	.byte	0x10
	.4byte	0x81
	.byte	0x1
	.4byte	0xe85
	.uleb128 0x22
	.4byte	.LASF200
	.byte	0x1
	.byte	0xc5
	.byte	0x2e
	.4byte	0x36e
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.byte	0xc5
	.byte	0x3c
	.4byte	0x81
	.uleb128 0x22
	.4byte	.LASF201
	.byte	0x1
	.byte	0xc5
	.byte	0x49
	.4byte	0x81
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0x1
	.byte	0xc5
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0xc7
	.byte	0xb
	.4byte	0x81
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0x81
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.byte	0xc7
	.byte	0x11
	.4byte	0x81
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.byte	0xc8
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x21
	.4byte	.LASF204
	.byte	0x1
	.byte	0xa4
	.byte	0x11
	.4byte	0x39a
	.byte	0x1
	.4byte	0xeed
	.uleb128 0x22
	.4byte	.LASF200
	.byte	0x1
	.byte	0xa4
	.byte	0x43
	.4byte	0x36e
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0xa4
	.byte	0x52
	.4byte	0x39a
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.byte	0xa6
	.byte	0xb
	.4byte	0x81
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.byte	0xa7
	.byte	0xb
	.4byte	0x81
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.byte	0xa7
	.byte	0xd
	.4byte	0x81
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.byte	0xb
	.4byte	0x81
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.byte	0xa8
	.byte	0xe
	.4byte	0x81
	.uleb128 0x25
	.4byte	.LASF205
	.byte	0x1
	.byte	0xa9
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0x26
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x26
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x26
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x26
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x26
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x26
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x26
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x4
	.2byte	0x25a
	.byte	0x9
	.uleb128 0x26
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
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
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
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
.LVUS1:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x73
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL4
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
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU10
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU10
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU10
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x73
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU10
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU41
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU115
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL17
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU49
	.uleb128 .LVU50
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU55
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU109
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL17
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU58
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU107
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU64
	.uleb128 .LVU115
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU63
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU97
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU97
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU71
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU87
	.uleb128 .LVU92
	.uleb128 .LVU97
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x73
	.sleb128 -2
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU90
	.uleb128 .LVU93
	.uleb128 .LVU97
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x73
	.sleb128 1
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU75
	.uleb128 .LVU76
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU64
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU97
.LLST17:
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
	.4byte	u8x8_st7528_8to32_dest_buf
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0xb
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_st7528_8to32_dest_buf
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
	.4byte	u8x8_st7528_8to32_dest_buf
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU66
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU97
.LLST18:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_st7528_8to32_dest_buf
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
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF195:
	.string	"u8x8_d_st7528_powersave1_seq"
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
.LASF201:
	.string	"arg_int"
.LASF216:
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
.LASF217:
	.string	"u8x8_d_st7528_nhd_c160100"
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
.LASF199:
	.string	"u8x8_st7528_160x100_display_info"
.LASF130:
	.string	"u8x8_font_victoriamedium8_u"
.LASF198:
	.string	"u8x8_st7528_8to32_dest_buf"
.LASF211:
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
.LASF213:
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
.LASF208:
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
.LASF96:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF161:
	.string	"u8x8_font_inb33_3x6_f"
.LASF203:
	.string	"u8x8_d_st7528_generic"
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
.LASF206:
	.string	"u8x8_d_helper_display_init"
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
.LASF197:
	.string	"u8x8_d_st7528_flip1_seq"
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
.LASF205:
	.string	"dest"
.LASF2:
	.string	"short int"
.LASF200:
	.string	"u8x8"
.LASF86:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF196:
	.string	"u8x8_d_st7528_flip0_seq"
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
.LASF212:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF214:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF215:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_st7528.c"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF202:
	.string	"arg_ptr"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF204:
	.string	"u8x8_st7528_8to32"
.LASF87:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF194:
	.string	"u8x8_d_st7528_powersave0_seq"
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
.LASF209:
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
.LASF210:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF193:
	.string	"u8x8_d_st7528_nhd_c160100_init_seq"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF207:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
