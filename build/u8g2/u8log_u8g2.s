	.file	"u8log_u8g2.c"
	.text
.Ltext0:
	.section	.text.u8g2_DrawLog,"ax",@progbits
	.align	4
	.global	u8g2_DrawLog
	.type	u8g2_DrawLog, @function
u8g2_DrawLog:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8log_u8g2.c"
	.loc 1 52 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 58 0
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 52 0
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 16
.LVL1:
	.loc 1 58 0
	call8	u8g2_SetFontDirection
.LVL2:
	.loc 1 59 0
	movi.n	a7, 0
	j	.L2
.LVL3:
.L3:
	.loc 1 64 0 discriminator 3
	l32i.n	a10, a5, 12
	mul16u	a8, a7, a8
.LVL4:
	add.n	a10, a10, a6
	add.n	a8, a10, a8
	.loc 1 65 0 discriminator 3
	l8ui	a13, a8, 0
	mov.n	a11, a9
	mov.n	a12, a4
	mov.n	a10, a2
	s32i.n	a9, sp, 0
.LVL5:
	call8	u8g2_DrawGlyph
.LVL6:
	l32i.n	a9, sp, 0
	.loc 1 62 0 discriminator 3
	addi.n	a6, a6, 1
.LVL7:
	.loc 1 65 0 discriminator 3
	add.n	a10, a9, a10
	extui	a9, a10, 0, 16
.LVL8:
	.loc 1 62 0 discriminator 3
	extui	a6, a6, 0, 8
.LVL9:
.L5:
	.loc 1 62 0 is_stmt 0 discriminator 1
	l8ui	a8, a5, 4
	bltu	a6, a8, .L3
.LVL10:
	.loc 1 68 0 is_stmt 1 discriminator 2
	l8ui	a9, a2, 142
.LVL11:
	l8ui	a8, a2, 143
	sext	a10, a9, 7
	sext	a8, a8, 7
	sub	a9, a10, a8
	l8ui	a8, a5, 17
	.loc 1 59 0 discriminator 2
	addi.n	a7, a7, 1
.LVL12:
	.loc 1 68 0 discriminator 2
	sext	a8, a8, 7
	add.n	a8, a8, a9
	add.n	a4, a4, a8
.LVL13:
	extui	a4, a4, 0, 16
.LVL14:
	.loc 1 59 0 discriminator 2
	extui	a7, a7, 0, 8
.LVL15:
.L2:
	.loc 1 59 0 is_stmt 0 discriminator 1
	l8ui	a6, a5, 5
	bgeu	a7, a6, .L1
	mov.n	a9, a3
	movi.n	a6, 0
	j	.L5
.L1:
	retw.n
.LFE0:
	.size	u8g2_DrawLog, .-u8g2_DrawLog
	.section	.text.u8log_u8g2_cb,"ax",@progbits
	.literal_position
	.literal .LC0, 16776960
	.align	4
	.global	u8log_u8g2_cb
	.type	u8log_u8g2_cb, @function
u8log_u8g2_cb:
.LFB1:
	.loc 1 86 0 is_stmt 1
.LVL16:
	entry	sp, 32
.LCFI1:
.LVL17:
	.loc 1 88 0
	l32i.n	a8, a2, 20
	l32r	a3, .LC0
	bnone	a8, a3, .L6
	.loc 1 87 0
	l32i.n	a3, a2, 0
	.loc 1 90 0
	mov.n	a10, a3
	call8	u8g2_FirstPage
.LVL18:
.L8:
	.loc 1 93 0 discriminator 1
	l8ui	a12, a3, 142
	mov.n	a10, a3
	sext	a12, a12, 7
	mov.n	a13, a2
	extui	a12, a12, 0, 16
	movi.n	a11, 0
	call8	u8g2_DrawLog
.LVL19:
	.loc 1 95 0 discriminator 1
	mov.n	a10, a3
	call8	u8g2_NextPage
.LVL20:
	bnez.n	a10, .L8
.LVL21:
.L6:
	retw.n
.LFE1:
	.size	u8log_u8g2_cb, .-u8log_u8g2_cb
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
	.uleb128 0x30
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.file 5 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9db
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0xc
	.4byte	.LASF161
	.4byte	.LASF162
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0xc3
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.4byte	0x1c7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x148
	.4byte	0x32c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x149
	.4byte	0x301
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2cc
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2cc
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2cc
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2cc
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x14e
	.4byte	0xaa
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x14f
	.4byte	0x337
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x150
	.4byte	0x9f
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x151
	.4byte	0x94
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x152
	.4byte	0x94
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x153
	.4byte	0x94
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x156
	.4byte	0x94
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x158
	.4byte	0x94
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x159
	.4byte	0x94
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15a
	.4byte	0x94
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x15b
	.4byte	0x94
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x15c
	.4byte	0x94
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x15d
	.4byte	0x94
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x4
	.byte	0xc4
	.4byte	0x1d2
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.4byte	0x2cc
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0xe1
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0xe2
	.4byte	0x94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe4
	.4byte	0x94
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe5
	.4byte	0x94
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xe6
	.4byte	0x94
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xe7
	.4byte	0x94
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xee
	.4byte	0x94
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0xf2
	.4byte	0x94
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0xf5
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.byte	0xff
	.4byte	0x94
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x102
	.4byte	0x94
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x108
	.4byte	0x94
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x10a
	.4byte	0x94
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x10d
	.4byte	0x94
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x10e
	.4byte	0x94
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x110
	.4byte	0x94
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x111
	.4byte	0x94
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x119
	.4byte	0x9f
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x11a
	.4byte	0x9f
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x4
	.byte	0xc7
	.4byte	0x2d7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2dd
	.uleb128 0xb
	.4byte	0x94
	.4byte	0x2fb
	.uleb128 0xc
	.4byte	0x2fb
	.uleb128 0xc
	.4byte	0x94
	.uleb128 0xc
	.4byte	0x94
	.uleb128 0xc
	.4byte	0xb5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x4
	.byte	0xc8
	.4byte	0x30c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x312
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x326
	.uleb128 0xc
	.4byte	0x2fb
	.uleb128 0xc
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x332
	.uleb128 0xd
	.4byte	0x1c7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33d
	.uleb128 0xd
	.4byte	0x94
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x187
	.4byte	0x34e
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x18
	.byte	0x4
	.2byte	0x18d
	.4byte	0x404
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x190
	.4byte	0xb5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x191
	.4byte	0x94
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x191
	.4byte	0x94
	.byte	0x5
	.uleb128 0xf
	.string	"cb"
	.byte	0x4
	.2byte	0x192
	.4byte	0x404
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x193
	.4byte	0x326
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x194
	.4byte	0x94
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x195
	.4byte	0x89
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x199
	.4byte	0x94
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x199
	.4byte	0x94
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x19a
	.4byte	0x94
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x19b
	.4byte	0x94
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x19c
	.4byte	0x94
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x19d
	.4byte	0x94
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x18b
	.4byte	0x410
	.uleb128 0xa
	.byte	0x4
	.4byte	0x416
	.uleb128 0x10
	.4byte	0x421
	.uleb128 0xc
	.4byte	0x421
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x342
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x5
	.byte	0xb2
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x5
	.byte	0xbc
	.4byte	0x43d
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x94
	.byte	0x5
	.2byte	0x11b
	.4byte	0x5f7
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x11d
	.4byte	0xb7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x11e
	.4byte	0x694
	.byte	0x2c
	.uleb128 0xf
	.string	"cb"
	.byte	0x5
	.2byte	0x11f
	.4byte	0x86e
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x122
	.4byte	0x326
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x123
	.4byte	0x94
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x124
	.4byte	0x94
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x127
	.4byte	0x427
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x128
	.4byte	0x427
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x129
	.4byte	0x427
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x12f
	.4byte	0x427
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x130
	.4byte	0x427
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x133
	.4byte	0x427
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x134
	.4byte	0x427
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x139
	.4byte	0x427
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x13a
	.4byte	0x427
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x13b
	.4byte	0x427
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x13c
	.4byte	0x427
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x140
	.4byte	0x427
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x141
	.4byte	0x427
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x142
	.4byte	0x427
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x143
	.4byte	0x427
	.byte	0x56
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x148
	.4byte	0x337
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x14c
	.4byte	0x84d
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x14d
	.4byte	0x841
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x14e
	.4byte	0x79c
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x152
	.4byte	0x94
	.byte	0x8c
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x155
	.4byte	0x94
	.byte	0x8d
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x156
	.4byte	0x89
	.byte	0x8e
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x157
	.4byte	0x89
	.byte	0x8f
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x159
	.4byte	0x89
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15b
	.4byte	0x94
	.byte	0x91
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x15d
	.4byte	0x94
	.byte	0x92
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x161
	.4byte	0x94
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x5
	.byte	0xbd
	.4byte	0x602
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0xc
	.byte	0x5
	.2byte	0x111
	.4byte	0x637
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x113
	.4byte	0x637
	.byte	0
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x114
	.4byte	0x659
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x115
	.4byte	0x664
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x5
	.byte	0xbf
	.4byte	0x642
	.uleb128 0xa
	.byte	0x4
	.4byte	0x648
	.uleb128 0x10
	.4byte	0x653
	.uleb128 0xc
	.4byte	0x653
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x432
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x5
	.byte	0xc0
	.4byte	0x642
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x5
	.byte	0xc1
	.4byte	0x66f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x675
	.uleb128 0x10
	.4byte	0x694
	.uleb128 0xc
	.4byte	0x653
	.uleb128 0xc
	.4byte	0x427
	.uleb128 0xc
	.4byte	0x427
	.uleb128 0xc
	.4byte	0x427
	.uleb128 0xc
	.4byte	0x94
	.byte	0
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.byte	0xc2
	.4byte	0x66f
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x18
	.byte	0x5
	.byte	0xc8
	.4byte	0x79c
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.byte	0xcb
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x5
	.byte	0xcc
	.4byte	0x94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x5
	.byte	0xcd
	.4byte	0x94
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x5
	.byte	0xce
	.4byte	0x94
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x5
	.byte	0xd1
	.4byte	0x94
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x5
	.byte	0xd2
	.4byte	0x94
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x5
	.byte	0xd3
	.4byte	0x94
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x5
	.byte	0xd4
	.4byte	0x94
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x5
	.byte	0xd5
	.4byte	0x94
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x5
	.byte	0xd8
	.4byte	0x89
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x5
	.byte	0xd9
	.4byte	0x89
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0xda
	.4byte	0x89
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.byte	0xdb
	.4byte	0x89
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x5
	.byte	0xde
	.4byte	0x89
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x5
	.byte	0xdf
	.4byte	0x89
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x5
	.byte	0xe0
	.4byte	0x89
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x5
	.byte	0xe1
	.4byte	0x89
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x5
	.byte	0xe4
	.4byte	0x9f
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x5
	.byte	0xe5
	.4byte	0x9f
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x5
	.byte	0xe9
	.4byte	0x9f
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x5
	.byte	0xec
	.4byte	0x69f
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x14
	.byte	0x5
	.byte	0xef
	.4byte	0x841
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x5
	.byte	0xf1
	.4byte	0x337
	.byte	0
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x5
	.byte	0xf3
	.4byte	0x427
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x5
	.byte	0xf4
	.4byte	0x427
	.byte	0x6
	.uleb128 0x11
	.string	"x"
	.byte	0x5
	.byte	0xf6
	.4byte	0x89
	.byte	0x8
	.uleb128 0x11
	.string	"y"
	.byte	0x5
	.byte	0xf7
	.4byte	0x89
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x5
	.byte	0xf8
	.4byte	0x89
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x5
	.byte	0xf9
	.4byte	0x89
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x5
	.byte	0xfb
	.4byte	0x94
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x5
	.byte	0xfc
	.4byte	0x94
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x5
	.byte	0xfd
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x5
	.byte	0xfe
	.4byte	0x94
	.byte	0xf
	.uleb128 0xf
	.string	"dir"
	.byte	0x5
	.2byte	0x100
	.4byte	0x94
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x103
	.4byte	0x7a7
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x118
	.4byte	0x859
	.uleb128 0xa
	.byte	0x4
	.4byte	0x85f
	.uleb128 0xb
	.4byte	0x427
	.4byte	0x86e
	.uleb128 0xc
	.4byte	0x653
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x874
	.uleb128 0xd
	.4byte	0x5f7
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0x1
	.byte	0x33
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x939
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0x1
	.byte	0x33
	.4byte	0x653
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x33
	.4byte	0x427
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.byte	0x33
	.4byte	0x427
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x1
	.byte	0x33
	.4byte	0x421
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF150
	.byte	0x1
	.byte	0x35
	.4byte	0x427
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF151
	.byte	0x1
	.byte	0x35
	.4byte	0x427
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF152
	.byte	0x1
	.byte	0x36
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF153
	.byte	0x1
	.byte	0x36
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0x37
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0x9ae
	.4byte	0x922
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x9ba
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0x1
	.byte	0x55
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ae
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x1
	.byte	0x55
	.4byte	0x421
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF148
	.byte	0x1
	.byte	0x57
	.4byte	0x653
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x9c6
	.4byte	0x97e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x879
	.4byte	0x99d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x9d2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x533
	.uleb128 0x1b
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x5
	.2byte	0x530
	.uleb128 0x1b
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x5
	.2byte	0x4ad
	.uleb128 0x1b
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x5
	.2byte	0x4ae
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
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x17
	.byte	0x72
	.sleb128 142
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x72
	.sleb128 143
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x15
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x75
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x17
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x75
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL18-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF125:
	.string	"max_char_width"
.LASF94:
	.string	"clip_y1"
.LASF134:
	.string	"start_pos_unicode"
.LASF42:
	.string	"reset_pulse_width_ms"
.LASF112:
	.string	"u8g2_update_page_win_cb"
.LASF79:
	.string	"tile_buf_ptr"
.LASF1:
	.string	"__uint8_t"
.LASF20:
	.string	"byte_cb"
.LASF146:
	.string	"u8g2_font_decode_t"
.LASF66:
	.string	"line_height_offset"
.LASF116:
	.string	"glyph_cnt"
.LASF108:
	.string	"update_dimension"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF43:
	.string	"post_reset_wait_ms"
.LASF117:
	.string	"bbx_mode"
.LASF29:
	.string	"utf8_state"
.LASF127:
	.string	"y_offset"
.LASF30:
	.string	"gpio_result"
.LASF122:
	.string	"bits_per_char_x"
.LASF123:
	.string	"bits_per_char_y"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF74:
	.string	"u8g2_uint_t"
.LASF26:
	.string	"is_font_inverse_mode"
.LASF157:
	.string	"u8g2_DrawGlyph"
.LASF18:
	.string	"display_cb"
.LASF130:
	.string	"ascent_para"
.LASF102:
	.string	"glyph_x_offset"
.LASF41:
	.string	"pre_chip_disable_wait_ns"
.LASF132:
	.string	"start_pos_upper_A"
.LASF59:
	.string	"u8log_t"
.LASF109:
	.string	"update_page_win"
.LASF126:
	.string	"max_char_height"
.LASF13:
	.string	"uint16_t"
.LASF17:
	.string	"next_cb"
.LASF58:
	.string	"u8x8_char_cb"
.LASF21:
	.string	"gpio_and_delay_cb"
.LASF135:
	.string	"u8g2_font_info_t"
.LASF150:
	.string	"disp_x"
.LASF101:
	.string	"font_ref_descent"
.LASF151:
	.string	"disp_y"
.LASF35:
	.string	"u8x8_display_info_t"
.LASF7:
	.string	"__uint32_t"
.LASF118:
	.string	"bits_per_0"
.LASF95:
	.string	"font_calc_vref"
.LASF100:
	.string	"font_ref_ascent"
.LASF44:
	.string	"sda_setup_time_ns"
.LASF114:
	.string	"u8g2_draw_ll_hvline_cb"
.LASF129:
	.string	"descent_g"
.LASF120:
	.string	"bits_per_char_width"
.LASF34:
	.string	"debounce_result_msg"
.LASF8:
	.string	"unsigned int"
.LASF64:
	.string	"screen_buffer"
.LASF83:
	.string	"pixel_buf_height"
.LASF84:
	.string	"pixel_curr_row"
.LASF143:
	.string	"is_transparent"
.LASF27:
	.string	"i2c_address"
.LASF61:
	.string	"aux_data"
.LASF75:
	.string	"u8g2_t"
.LASF160:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF137:
	.string	"decode_ptr"
.LASF62:
	.string	"width"
.LASF80:
	.string	"tile_buf_height"
.LASF6:
	.string	"short unsigned int"
.LASF98:
	.string	"is_page_clip_window_intersection"
.LASF103:
	.string	"bitmap_transparency"
.LASF91:
	.string	"clip_x0"
.LASF92:
	.string	"clip_x1"
.LASF110:
	.string	"draw_l90"
.LASF32:
	.string	"debounce_last_pin_state"
.LASF148:
	.string	"u8g2"
.LASF131:
	.string	"descent_para"
.LASF16:
	.string	"display_info"
.LASF97:
	.string	"font_info"
.LASF45:
	.string	"sck_pulse_width_ns"
.LASF36:
	.string	"u8x8_struct"
.LASF152:
	.string	"buf_x"
.LASF153:
	.string	"buf_y"
.LASF53:
	.string	"default_x_offset"
.LASF149:
	.string	"u8log"
.LASF24:
	.string	"encoding"
.LASF99:
	.string	"font_height_mode"
.LASF70:
	.string	"is_redraw_line"
.LASF54:
	.string	"flipmode_x_offset"
.LASF119:
	.string	"bits_per_1"
.LASF124:
	.string	"bits_per_delta_x"
.LASF142:
	.string	"decode_bit_pos"
.LASF141:
	.string	"glyph_height"
.LASF69:
	.string	"redraw_line"
.LASF19:
	.string	"cad_cb"
.LASF93:
	.string	"clip_y0"
.LASF67:
	.string	"cursor_x"
.LASF68:
	.string	"cursor_y"
.LASF89:
	.string	"user_y0"
.LASF72:
	.string	"is_redraw_all_required_for_next_nl"
.LASF73:
	.string	"u8log_cb"
.LASF50:
	.string	"write_pulse_width_ns"
.LASF85:
	.string	"buf_y0"
.LASF86:
	.string	"buf_y1"
.LASF65:
	.string	"is_redraw_line_for_each_char"
.LASF25:
	.string	"x_offset"
.LASF52:
	.string	"tile_height"
.LASF78:
	.string	"ll_hvline"
.LASF154:
	.string	"u8g2_DrawLog"
.LASF144:
	.string	"fg_color"
.LASF158:
	.string	"u8g2_FirstPage"
.LASF57:
	.string	"u8x8_msg_cb"
.LASF107:
	.string	"u8g2_cb_struct"
.LASF140:
	.string	"glyph_width"
.LASF3:
	.string	"unsigned char"
.LASF128:
	.string	"ascent_A"
.LASF105:
	.string	"is_auto_page_clear"
.LASF82:
	.string	"pixel_buf_width"
.LASF4:
	.string	"short int"
.LASF77:
	.string	"u8x8"
.LASF87:
	.string	"user_x0"
.LASF88:
	.string	"user_x1"
.LASF159:
	.string	"u8g2_NextPage"
.LASF49:
	.string	"data_setup_time_ns"
.LASF76:
	.string	"u8g2_struct"
.LASF113:
	.string	"u8g2_draw_l90_cb"
.LASF48:
	.string	"i2c_bus_clock_100kHz"
.LASF14:
	.string	"uint32_t"
.LASF115:
	.string	"_u8g2_font_info_t"
.LASF81:
	.string	"tile_curr_row"
.LASF106:
	.string	"u8g2_cb_t"
.LASF47:
	.string	"spi_mode"
.LASF38:
	.string	"chip_enable_level"
.LASF96:
	.string	"font_decode"
.LASF121:
	.string	"bits_per_char_height"
.LASF5:
	.string	"__uint16_t"
.LASF104:
	.string	"draw_color"
.LASF60:
	.string	"u8log_struct"
.LASF40:
	.string	"post_chip_enable_wait_ns"
.LASF162:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF111:
	.string	"u8g2_update_dimension_cb"
.LASF138:
	.string	"target_x"
.LASF139:
	.string	"target_y"
.LASF15:
	.string	"u8x8_t"
.LASF22:
	.string	"bus_clock"
.LASF90:
	.string	"user_y1"
.LASF136:
	.string	"_u8g2_font_decode_t"
.LASF11:
	.string	"int8_t"
.LASF33:
	.string	"debounce_state"
.LASF161:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8log_u8g2.c"
.LASF39:
	.string	"chip_disable_level"
.LASF23:
	.string	"font"
.LASF133:
	.string	"start_pos_lower_a"
.LASF12:
	.string	"uint8_t"
.LASF147:
	.string	"u8g2_font_calc_vref_fnptr"
.LASF28:
	.string	"i2c_started"
.LASF55:
	.string	"pixel_width"
.LASF145:
	.string	"bg_color"
.LASF51:
	.string	"tile_width"
.LASF31:
	.string	"debounce_default_pin_state"
.LASF37:
	.string	"u8x8_display_info_struct"
.LASF155:
	.string	"u8log_u8g2_cb"
.LASF63:
	.string	"height"
.LASF156:
	.string	"u8g2_SetFontDirection"
.LASF56:
	.string	"pixel_height"
.LASF71:
	.string	"is_redraw_all"
.LASF46:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
