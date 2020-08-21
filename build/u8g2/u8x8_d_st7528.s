	.file	"u8x8_d_st7528.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7528_nhd_c160100,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_st7528_8to32_dest_buf
	.literal .LC4, u8x8_st7528_160x100_display_info
	.literal .LC5, .L5
	.literal .LC6, u8x8_d_st7528_nhd_c160100_init_seq
	.literal .LC7, u8x8_d_st7528_powersave0_seq
	.literal .LC8, u8x8_d_st7528_powersave1_seq
	.literal .LC9, u8x8_d_st7528_flip0_seq
	.literal .LC10, u8x8_d_st7528_flip1_seq
	.align	4
	.global	u8x8_d_st7528_nhd_c160100
	.type	u8x8_d_st7528_nhd_c160100, @function
u8x8_d_st7528_nhd_c160100:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7528.c"
	.loc 1 304 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 304 0
	extui	a3, a3, 0, 8
	.loc 1 305 0
	movi.n	a6, 9
	.loc 1 304 0
	extui	a4, a4, 0, 8
	.loc 1 305 0
	bne	a3, a6, .L2
	.loc 1 307 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL1:
	j	.L28
.L2:
.LVL2:
.LBB6:
.LBB7:
	.loc 1 201 0
	addi	a3, a3, -10
.LVL3:
	extui	a3, a3, 0, 8
.LVL4:
	bgeui	a3, 6, .L18
	l32r	a6, .LC5
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7528_nhd_c160100,"a",@progbits
	.align	4
	.align	4
.L5:
	.word	.L4
	.word	.L6
	.word	.L18
	.word	.L7
	.word	.L8
	.word	.L9
	.section	.text.u8x8_d_st7528_nhd_c160100
.L4:
	.loc 1 209 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL5:
	.loc 1 210 0
	l32r	a11, .LC6
	j	.L29
.L6:
	.loc 1 214 0
	l32r	a11, .LC7
	.loc 1 213 0
	beqz.n	a4, .L29
.L10:
	.loc 1 216 0
	l32r	a11, .LC8
.L29:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL6:
	j	.L28
.L7:
	.loc 1 219 0
	bnez.n	a4, .L11
	.loc 1 221 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL7:
	.loc 1 222 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L30
.L11:
	.loc 1 226 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL8:
	.loc 1 227 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L30:
	s8i	a3, a2, 34
	j	.L28
.L8:
	.loc 1 232 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL9:
	.loc 1 233 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL10:
	.loc 1 234 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL11:
	j	.L27
.L9:
	.loc 1 239 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL12:
	.loc 1 240 0
	l8ui	a3, a5, 5
.LVL13:
	.loc 1 243 0
	l8ui	a6, a5, 6
	.loc 1 241 0
	slli	a3, a3, 2
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 0
.LVL14:
	.loc 1 254 0
	movi	a3, 0xb0
	or	a3, a6, a3
	s32i.n	a3, sp, 8
.LVL15:
.L17:
	.loc 1 249 0
	l8ui	a3, a5, 4
	.loc 1 250 0
	l32i.n	a7, a5, 0
	.loc 1 249 0
	s32i.n	a3, sp, 4
.LVL16:
	mov.n	a6, a3
	.loc 1 250 0
	l32i.n	a3, sp, 0
.LVL17:
.L16:
	.loc 1 254 0
	l32i.n	a11, sp, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 255 0
	movi.n	a8, 0x10
	srli	a11, a3, 4
	or	a11, a11, a8
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL19:
	.loc 1 256 0
	extui	a11, a3, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL20:
	mov.n	a10, a7
	movi.n	a9, 0
.LVL21:
.L15:
	l32r	a11, .LC3
.LBB8:
.LBB9:
	.loc 1 183 0
	movi.n	a12, 8
	.loc 1 175 0
	l8ui	a14, a10, 0
	.loc 1 177 0
	l8ui	a13, a10, 1
	add.n	a15, a9, a11
.LVL22:
	addi.n	a10, a10, 2
.LVL23:
	.loc 1 183 0
	s32i.n	a12, sp, 16
.LVL24:
.L14:
	.loc 1 182 0
	extui	a8, a14, 0, 1
	movi	a11, 0xf0
	movi.n	a12, 0
	moveqz	a11, a12, a8
	s32i.n	a11, sp, 12
.LVL25:
	.loc 1 183 0
	bbc	a13, a12, .L13
	movi.n	a12, 0xf
	or	a8, a11, a12
	extui	a8, a8, 0, 8
	s32i.n	a8, sp, 12
.LVL26:
.L13:
	.loc 1 187 0
	l32i.n	a11, sp, 16
	.loc 1 184 0
	l32i.n	a8, sp, 12
	.loc 1 187 0
	addi.n	a11, a11, -1
	.loc 1 184 0
	s8i	a8, a15, 0
	.loc 1 187 0
	s32i.n	a11, sp, 16
	.loc 1 185 0
	addi.n	a15, a15, 4
.LVL27:
	.loc 1 186 0
	srli	a14, a14, 1
.LVL28:
	.loc 1 187 0
	srli	a13, a13, 1
.LVL29:
	bnez.n	a11, .L14
.LVL30:
	addi.n	a9, a9, 1
.LVL31:
	.loc 1 171 0
	bnei	a9, 4, .L15
.LBE9:
.LBE8:
	.loc 1 258 0
	l32r	a12, .LC3
	.loc 1 262 0
	addi.n	a6, a6, -1
.LVL32:
	.loc 1 258 0
	movi.n	a11, 0x20
	mov.n	a10, a2
.LVL33:
	.loc 1 261 0
	addi.n	a3, a3, 4
.LVL34:
	.loc 1 262 0
	extui	a6, a6, 0, 8
.LVL35:
	.loc 1 258 0
	call8	u8x8_cad_SendData
.LVL36:
	.loc 1 260 0
	addi.n	a7, a7, 8
.LVL37:
	.loc 1 261 0
	extui	a3, a3, 0, 8
.LVL38:
	.loc 1 263 0
	bnez.n	a6, .L16
	l32i.n	a8, sp, 0
	l32i.n	a6, sp, 4
.LVL39:
	.loc 1 266 0
	addi.n	a4, a4, -1
.LVL40:
	addx4	a3, a6, a8
.LVL41:
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 0
	extui	a4, a4, 0, 8
.LVL42:
	.loc 1 267 0
	bnez.n	a4, .L17
.LVL43:
.L27:
	.loc 1 269 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL44:
.L28:
	.loc 1 274 0
	movi.n	a2, 1
.LVL45:
	retw.n
.LVL46:
.L18:
	.loc 1 272 0
	movi.n	a2, 0
.LVL47:
.LBE7:
.LBE6:
	.loc 1 311 0
	retw.n
.LFE2:
	.size	u8x8_d_st7528_nhd_c160100, .-u8x8_d_st7528_nhd_c160100
	.section	.rodata.u8x8_st7528_160x100_display_info,"a",@progbits
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
	.section	.rodata.u8x8_d_st7528_flip1_seq,"a",@progbits
	.type	u8x8_d_st7528_flip1_seq, @object
	.size	u8x8_d_st7528_flip1_seq, 3
u8x8_d_st7528_flip1_seq:
	.byte	24
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7528_flip0_seq,"a",@progbits
	.type	u8x8_d_st7528_flip0_seq, @object
	.size	u8x8_d_st7528_flip0_seq, 3
u8x8_d_st7528_flip0_seq:
	.byte	24
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7528_powersave1_seq,"a",@progbits
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
	.section	.rodata.u8x8_d_st7528_powersave0_seq,"a",@progbits
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
	.section	.rodata.u8x8_d_st7528_nhd_c160100_init_seq,"a",@progbits
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7f5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
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
	.byte	0x12
	.4byte	0x37
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
	.byte	0x16
	.4byte	0x50
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
	.byte	0x1a
	.4byte	0x69
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc3
	.4byte	0xac
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.4byte	0x1b1
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x148
	.4byte	0x35e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x149
	.4byte	0x333
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2fe
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2fe
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2fe
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2fe
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14e
	.4byte	0x94
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14f
	.4byte	0x369
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x150
	.4byte	0x89
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x151
	.4byte	0x7e
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x152
	.4byte	0x7e
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x153
	.4byte	0x7e
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x156
	.4byte	0x7e
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x158
	.4byte	0x7e
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x159
	.4byte	0x7e
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x15a
	.4byte	0x7e
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x15b
	.4byte	0x7e
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15c
	.4byte	0x7e
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x15d
	.4byte	0x7e
	.byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0xc4
	.4byte	0x1bc
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.4byte	0x2b6
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0xe1
	.4byte	0x7e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0xe2
	.4byte	0x7e
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0xe4
	.4byte	0x7e
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0xe5
	.4byte	0x7e
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe6
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe7
	.4byte	0x7e
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xee
	.4byte	0x7e
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xf2
	.4byte	0x7e
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xf5
	.4byte	0x94
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0xff
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x102
	.4byte	0x7e
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x108
	.4byte	0x7e
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x10a
	.4byte	0x7e
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x10d
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x10e
	.4byte	0x7e
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x110
	.4byte	0x7e
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x111
	.4byte	0x7e
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x119
	.4byte	0x89
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x11a
	.4byte	0x89
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0xc5
	.4byte	0x2c1
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4
	.byte	0xd4
	.4byte	0x2fe
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd6
	.4byte	0x358
	.byte	0
	.uleb128 0xa
	.string	"cnt"
	.byte	0x4
	.byte	0xd7
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x4
	.byte	0xd8
	.4byte	0x7e
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.byte	0xd9
	.4byte	0x7e
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc7
	.4byte	0x309
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30f
	.uleb128 0xc
	.4byte	0x7e
	.4byte	0x32d
	.uleb128 0xd
	.4byte	0x32d
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc8
	.4byte	0x33e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x344
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x358
	.uleb128 0xd
	.4byte	0x32d
	.uleb128 0xd
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x364
	.uleb128 0xe
	.4byte	0x1b1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x36f
	.uleb128 0xe
	.4byte	0x7e
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa4
	.4byte	0x358
	.byte	0x1
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa4
	.4byte	0x32d
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0xa4
	.4byte	0x358
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0xa6
	.4byte	0x7e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0xa7
	.4byte	0x7e
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0xa7
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0xa8
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa9
	.4byte	0x358
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0xc5
	.4byte	0x7e
	.byte	0x1
	.4byte	0x436
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc5
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0xc5
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0xc5
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0xc5
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0xc7
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0xc7
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xc7
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0xc8
	.4byte	0x358
	.byte	0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x12f
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bf
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x12f
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x12f
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x12f
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	0x3d3
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.2byte	0x136
	.4byte	0x6a5
	.uleb128 0x19
	.4byte	0x404
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	0x3f9
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	0x3ee
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	0x3e3
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1b
	.4byte	0x40f
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	0x418
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x421
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	0x42a
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	0x374
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x102
	.4byte	0x55a
	.uleb128 0x19
	.4byte	0x384
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	0x38f
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1b
	.4byte	0x39a
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	0x3a3
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	0x3ac
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	0x3b5
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	0x3be
	.4byte	.LLST17
	.uleb128 0x1b
	.4byte	0x3c7
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL5
	.4byte	0x798
	.4byte	0x56e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL6
	.4byte	0x7a4
	.4byte	0x582
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL7
	.4byte	0x7a4
	.4byte	0x59f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip0_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL8
	.4byte	0x7a4
	.4byte	0x5bc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip1_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL9
	.4byte	0x7b0
	.4byte	0x5d0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL10
	.4byte	0x7bc
	.4byte	0x5ea
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x7c8
	.4byte	0x604
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL12
	.4byte	0x7b0
	.4byte	0x618
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL18
	.4byte	0x7bc
	.4byte	0x633
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x7bc
	.4byte	0x654
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x40
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0x7bc
	.4byte	0x670
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL36
	.4byte	0x7d4
	.4byte	0x693
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_8to32_dest_buf
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL44
	.4byte	0x7e0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL1
	.4byte	0x7ec
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_160x100_display_info
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x7e
	.4byte	0x6d0
	.uleb128 0x20
	.4byte	0x6d0
	.2byte	0x136
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF68
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2d
	.4byte	0x6e8
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_nhd_c160100_init_seq
	.uleb128 0xe
	.4byte	0x6bf
	.uleb128 0x1f
	.4byte	0x7e
	.4byte	0x6fd
	.uleb128 0x22
	.4byte	0x6d0
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7e
	.4byte	0x70e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_powersave0_seq
	.uleb128 0xe
	.4byte	0x6ed
	.uleb128 0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0x86
	.4byte	0x724
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_powersave1_seq
	.uleb128 0xe
	.4byte	0x6ed
	.uleb128 0x1f
	.4byte	0x7e
	.4byte	0x739
	.uleb128 0x22
	.4byte	0x6d0
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x1
	.byte	0x8e
	.4byte	0x74a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip0_seq
	.uleb128 0xe
	.4byte	0x729
	.uleb128 0x21
	.4byte	.LASF73
	.byte	0x1
	.byte	0x94
	.4byte	0x760
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7528_flip1_seq
	.uleb128 0xe
	.4byte	0x729
	.uleb128 0x1f
	.4byte	0x7e
	.4byte	0x775
	.uleb128 0x22
	.4byte	0x6d0
	.byte	0x1f
	.byte	0
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa2
	.4byte	0x765
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_8to32_dest_buf
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x116
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7528_160x100_display_info
	.uleb128 0x24
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x24
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x278
	.uleb128 0x24
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x259
	.uleb128 0x24
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x255
	.uleb128 0x24
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x256
	.uleb128 0x24
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x258
	.uleb128 0x24
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x24
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x1a4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
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
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
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
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL17
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x7a
	.sleb128 -2
	.4byte	.LVL24
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x7a
	.sleb128 1
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL24
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36-1
	.2byte	0x3
	.byte	0x79
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_st7528_8to32_dest_buf
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL36-1
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
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF63:
	.string	"dest"
.LASF45:
	.string	"spi_mode"
.LASF67:
	.string	"arg_ptr"
.LASF36:
	.string	"chip_enable_level"
.LASF21:
	.string	"font"
.LASF32:
	.string	"debounce_result_msg"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF49:
	.string	"tile_width"
.LASF68:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF70:
	.string	"u8x8_d_st7528_powersave0_seq"
.LASF75:
	.string	"u8x8_st7528_160x100_display_info"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF65:
	.string	"u8x8_d_st7528_generic"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7528.c"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF62:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF66:
	.string	"arg_int"
.LASF81:
	.string	"u8x8_cad_SendData"
.LASF20:
	.string	"bus_clock"
.LASF51:
	.string	"default_x_offset"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"gpio_result"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF79:
	.string	"u8x8_cad_SendCmd"
.LASF76:
	.string	"u8x8_d_helper_display_init"
.LASF82:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF64:
	.string	"u8x8_st7528_8to32"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF47:
	.string	"data_setup_time_ns"
.LASF50:
	.string	"tile_height"
.LASF71:
	.string	"u8x8_d_st7528_powersave1_seq"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF78:
	.string	"u8x8_cad_StartTransfer"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF44:
	.string	"sck_clock_hz"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF80:
	.string	"u8x8_cad_SendArg"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF69:
	.string	"u8x8_d_st7528_nhd_c160100_init_seq"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF77:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF87:
	.string	"u8x8_d_st7528_nhd_c160100"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF73:
	.string	"u8x8_d_st7528_flip1_seq"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF74:
	.string	"u8x8_st7528_8to32_dest_buf"
.LASF26:
	.string	"i2c_started"
.LASF83:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF86:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF72:
	.string	"u8x8_d_st7528_flip0_seq"
.LASF84:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
