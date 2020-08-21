	.file	"u8g2_line.c"
	.text
.Ltext0:
	.section	.text.u8g2_DrawLine,"ax",@progbits
	.literal_position
	.literal .LC0, 65534
	.literal .LC1, 65535
	.align	4
	.global	u8g2_DrawLine
	.type	u8g2_DrawLine, @function
u8g2_DrawLine:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_line.c"
	.loc 1 40 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 40 0
	extui	a3, a3, 0, 16
.LVL1:
	extui	a5, a5, 0, 16
	.loc 1 51 0
	sub	a7, a5, a3
	.loc 1 40 0
	extui	a4, a4, 0, 16
	extui	a6, a6, 0, 16
	.loc 1 51 0
	extui	a7, a7, 0, 16
	bgeu	a5, a3, .L3
	.loc 1 51 0 is_stmt 0 discriminator 1
	sub	a7, a3, a5
	extui	a7, a7, 0, 16
.LVL2:
.L3:
	.loc 1 52 0 is_stmt 1
	bgeu	a6, a4, .L4
	.loc 1 52 0 is_stmt 0 discriminator 1
	sub	a8, a4, a6
	extui	a8, a8, 0, 16
.LVL3:
	.loc 1 54 0 is_stmt 1 discriminator 1
	bltu	a7, a8, .L17
	j	.L20
.LVL4:
.L4:
	.loc 1 52 0 discriminator 2
	sub	a8, a6, a4
	extui	a8, a8, 0, 16
.LVL5:
	.loc 1 54 0 discriminator 2
	bgeu	a7, a8, .L7
	.loc 1 54 0 is_stmt 0
	mov.n	a9, a7
	mov.n	a7, a8
.LVL6:
	mov.n	a8, a9
.LVL7:
	mov.n	a9, a5
.LVL8:
	mov.n	a5, a6
.LVL9:
	mov.n	a6, a9
.LVL10:
	mov.n	a9, a3
.LVL11:
	mov.n	a3, a4
.LVL12:
	mov.n	a4, a9
.LVL13:
	j	.L23
.LVL14:
.L17:
	mov.n	a9, a7
	mov.n	a7, a8
.LVL15:
	mov.n	a8, a9
.LVL16:
	mov.n	a9, a4
.LVL17:
	mov.n	a4, a5
.LVL18:
	mov.n	a5, a9
.LVL19:
	mov.n	a9, a3
.LVL20:
	mov.n	a3, a6
.LVL21:
	mov.n	a6, a9
.LVL22:
.L23:
	.loc 1 56 0 is_stmt 1
	movi.n	a13, 1
.LVL23:
.L5:
	.loc 1 66 0
	srli	a9, a7, 1
	sext	a9, a9, 15
.LVL24:
	.loc 1 67 0
	movi.n	a14, 1
	bltu	a4, a6, .L8
.LVL25:
.L24:
	movi.n	a14, -1
.L8:
.LVL26:
	.loc 1 74 0
	l32r	a6, .LC1
	.loc 1 75 0
	l32r	a10, .LC0
	sub	a6, a5, a6
	moveqz	a5, a10, a6
.LVL27:
	.loc 1 84 0
	extui	a6, a8, 0, 8
	.loc 1 78 0
	j	.L10
.LVL28:
.L14:
	.loc 1 80 0
	bnez.n	a13, .L11
	.loc 1 81 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	s32i.n	a9, sp, 0
	s32i.n	a13, sp, 8
	s32i.n	a14, sp, 4
	call8	u8g2_DrawPixel
.LVL29:
	l32i.n	a9, sp, 0
	l32i.n	a13, sp, 8
	l32i.n	a14, sp, 4
	j	.L12
.LVL30:
.L11:
	.loc 1 83 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	s32i.n	a9, sp, 0
	s32i.n	a13, sp, 8
	s32i.n	a14, sp, 4
	call8	u8g2_DrawPixel
.LVL31:
	l32i.n	a14, sp, 4
	l32i.n	a13, sp, 8
	l32i.n	a9, sp, 0
.L12:
	.loc 1 84 0
	sub	a9, a9, a6
	extui	a8, a9, 0, 16
	sext	a9, a8, 15
.LVL32:
	.loc 1 85 0
	bgez	a9, .L13
	.loc 1 87 0
	add.n	a4, a4, a14
.LVL33:
	.loc 1 88 0
	add.n	a9, a8, a7
	.loc 1 87 0
	extui	a4, a4, 0, 16
.LVL34:
	.loc 1 88 0
	sext	a9, a9, 15
.LVL35:
.L13:
	.loc 1 78 0 discriminator 2
	addi.n	a3, a3, 1
.LVL36:
	extui	a3, a3, 0, 16
.LVL37:
.L10:
	.loc 1 78 0 is_stmt 0 discriminator 1
	bgeu	a5, a3, .L14
	retw.n
.LVL38:
.L15:
	.loc 1 66 0 is_stmt 1
	srli	a9, a7, 1
	mov.n	a4, a6
.LVL39:
	mov.n	a6, a3
.LVL40:
	sext	a9, a9, 15
.LVL41:
	mov.n	a3, a5
.LVL42:
	movi.n	a13, 0
	mov.n	a5, a6
.LVL43:
	.loc 1 67 0
	movi.n	a14, 1
	j	.L8
.LVL44:
.L20:
	.loc 1 61 0
	bltu	a5, a3, .L15
	j	.L22
.L16:
.LVL45:
	.loc 1 66 0
	srli	a9, a7, 1
	mov.n	a4, a6
.LVL46:
	mov.n	a6, a3
.LVL47:
	sext	a9, a9, 15
.LVL48:
	mov.n	a3, a5
.LVL49:
	movi.n	a13, 0
	mov.n	a5, a6
.LVL50:
	j	.L24
.LVL51:
.L7:
	.loc 1 61 0
	bltu	a5, a3, .L16
.LVL52:
.L22:
	movi.n	a13, 0
	j	.L5
.LFE0:
	.size	u8g2_DrawLine, .-u8g2_DrawLine
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.file 5 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8c0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xc
	.4byte	.LASF142
	.4byte	.LASF143
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x15
	.4byte	0x54
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x20
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0xc3
	.4byte	0xd8
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.4byte	0x1dd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x148
	.4byte	0x342
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x149
	.4byte	0x317
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2e2
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2e2
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2e2
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2e2
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x14e
	.4byte	0xc0
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x14f
	.4byte	0x34d
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x150
	.4byte	0xb5
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x151
	.4byte	0x9f
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x152
	.4byte	0x9f
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x153
	.4byte	0x9f
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x156
	.4byte	0x9f
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x158
	.4byte	0x9f
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x159
	.4byte	0x9f
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x15a
	.4byte	0x9f
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x15b
	.4byte	0x9f
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x15c
	.4byte	0x9f
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x15d
	.4byte	0x9f
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x4
	.byte	0xc4
	.4byte	0x1e8
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.4byte	0x2e2
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe1
	.4byte	0x9f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe2
	.4byte	0x9f
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xe4
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xe5
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xe6
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0xe7
	.4byte	0x9f
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0xee
	.4byte	0x9f
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.byte	0xf2
	.4byte	0x9f
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.byte	0xf5
	.4byte	0xc0
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.byte	0xff
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x102
	.4byte	0x9f
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x108
	.4byte	0x9f
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x10a
	.4byte	0x9f
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x10d
	.4byte	0x9f
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x10e
	.4byte	0x9f
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x110
	.4byte	0x9f
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x111
	.4byte	0x9f
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x119
	.4byte	0xb5
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x11a
	.4byte	0xb5
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x4
	.byte	0xc7
	.4byte	0x2ed
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x311
	.uleb128 0xc
	.4byte	0x311
	.uleb128 0xc
	.4byte	0x9f
	.uleb128 0xc
	.4byte	0x9f
	.uleb128 0xc
	.4byte	0xcb
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc8
	.4byte	0x322
	.uleb128 0xa
	.byte	0x4
	.4byte	0x328
	.uleb128 0xb
	.4byte	0xb5
	.4byte	0x33c
	.uleb128 0xc
	.4byte	0x311
	.uleb128 0xc
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x9f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x348
	.uleb128 0xd
	.4byte	0x1dd
	.uleb128 0xa
	.byte	0x4
	.4byte	0x353
	.uleb128 0xd
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x5
	.byte	0xb2
	.4byte	0xb5
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x5
	.byte	0xb3
	.4byte	0xaa
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x5
	.byte	0xbc
	.4byte	0x379
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x94
	.byte	0x5
	.2byte	0x11b
	.4byte	0x533
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x11d
	.4byte	0xcd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x11e
	.4byte	0x5d0
	.byte	0x2c
	.uleb128 0xe
	.string	"cb"
	.byte	0x5
	.2byte	0x11f
	.4byte	0x7aa
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x122
	.4byte	0x33c
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x123
	.4byte	0x9f
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x124
	.4byte	0x9f
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x127
	.4byte	0x358
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x128
	.4byte	0x358
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x129
	.4byte	0x358
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x12f
	.4byte	0x358
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x130
	.4byte	0x358
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x133
	.4byte	0x358
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x134
	.4byte	0x358
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x139
	.4byte	0x358
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x13a
	.4byte	0x358
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x13b
	.4byte	0x358
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x13c
	.4byte	0x358
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x140
	.4byte	0x358
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x141
	.4byte	0x358
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x142
	.4byte	0x358
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x143
	.4byte	0x358
	.byte	0x56
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x148
	.4byte	0x34d
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x14c
	.4byte	0x789
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x14d
	.4byte	0x77d
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x14e
	.4byte	0x6d8
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x152
	.4byte	0x9f
	.byte	0x8c
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x155
	.4byte	0x9f
	.byte	0x8d
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x156
	.4byte	0x94
	.byte	0x8e
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x157
	.4byte	0x94
	.byte	0x8f
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x159
	.4byte	0x94
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x15b
	.4byte	0x9f
	.byte	0x91
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x15d
	.4byte	0x9f
	.byte	0x92
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x161
	.4byte	0x9f
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x5
	.byte	0xbd
	.4byte	0x53e
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0xc
	.byte	0x5
	.2byte	0x111
	.4byte	0x573
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x113
	.4byte	0x573
	.byte	0
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x114
	.4byte	0x595
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x115
	.4byte	0x5a0
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x5
	.byte	0xbf
	.4byte	0x57e
	.uleb128 0xa
	.byte	0x4
	.4byte	0x584
	.uleb128 0xf
	.4byte	0x58f
	.uleb128 0xc
	.4byte	0x58f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x36e
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x5
	.byte	0xc0
	.4byte	0x57e
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x5
	.byte	0xc1
	.4byte	0x5ab
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5b1
	.uleb128 0xf
	.4byte	0x5d0
	.uleb128 0xc
	.4byte	0x58f
	.uleb128 0xc
	.4byte	0x358
	.uleb128 0xc
	.4byte	0x358
	.uleb128 0xc
	.4byte	0x358
	.uleb128 0xc
	.4byte	0x9f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x5
	.byte	0xc2
	.4byte	0x5ab
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x18
	.byte	0x5
	.byte	0xc8
	.4byte	0x6d8
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x5
	.byte	0xcb
	.4byte	0x9f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x5
	.byte	0xcc
	.4byte	0x9f
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x5
	.byte	0xcd
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.byte	0xce
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x5
	.byte	0xd1
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x5
	.byte	0xd2
	.4byte	0x9f
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x5
	.byte	0xd3
	.4byte	0x9f
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x5
	.byte	0xd4
	.4byte	0x9f
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x5
	.byte	0xd5
	.4byte	0x9f
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x5
	.byte	0xd8
	.4byte	0x94
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.byte	0xd9
	.4byte	0x94
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0xda
	.4byte	0x94
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x5
	.byte	0xdb
	.4byte	0x94
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x5
	.byte	0xde
	.4byte	0x94
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x5
	.byte	0xdf
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x5
	.byte	0xe0
	.4byte	0x94
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x5
	.byte	0xe1
	.4byte	0x94
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x5
	.byte	0xe4
	.4byte	0xb5
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x5
	.byte	0xe5
	.4byte	0xb5
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x5
	.byte	0xe9
	.4byte	0xb5
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x5
	.byte	0xec
	.4byte	0x5db
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x14
	.byte	0x5
	.byte	0xef
	.4byte	0x77d
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.byte	0xf1
	.4byte	0x34d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x5
	.byte	0xf3
	.4byte	0x358
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x5
	.byte	0xf4
	.4byte	0x358
	.byte	0x6
	.uleb128 0x10
	.string	"x"
	.byte	0x5
	.byte	0xf6
	.4byte	0x94
	.byte	0x8
	.uleb128 0x10
	.string	"y"
	.byte	0x5
	.byte	0xf7
	.4byte	0x94
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x5
	.byte	0xf8
	.4byte	0x94
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x5
	.byte	0xf9
	.4byte	0x94
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x5
	.byte	0xfb
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x5
	.byte	0xfc
	.4byte	0x9f
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x5
	.byte	0xfd
	.4byte	0x9f
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x5
	.byte	0xfe
	.4byte	0x9f
	.byte	0xf
	.uleb128 0xe
	.string	"dir"
	.byte	0x5
	.2byte	0x100
	.4byte	0x9f
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x5
	.2byte	0x103
	.4byte	0x6e3
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x118
	.4byte	0x795
	.uleb128 0xa
	.byte	0x4
	.4byte	0x79b
	.uleb128 0xb
	.4byte	0x358
	.4byte	0x7aa
	.uleb128 0xc
	.4byte	0x58f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7b0
	.uleb128 0xd
	.4byte	0x533
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0x1
	.byte	0x27
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b7
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x1
	.byte	0x27
	.4byte	0x58f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"x1"
	.byte	0x1
	.byte	0x27
	.4byte	0x358
	.4byte	.LLST0
	.uleb128 0x14
	.string	"y1"
	.byte	0x1
	.byte	0x27
	.4byte	0x358
	.4byte	.LLST1
	.uleb128 0x14
	.string	"x2"
	.byte	0x1
	.byte	0x27
	.4byte	0x358
	.4byte	.LLST2
	.uleb128 0x14
	.string	"y2"
	.byte	0x1
	.byte	0x27
	.4byte	0x358
	.4byte	.LLST3
	.uleb128 0x15
	.string	"tmp"
	.byte	0x1
	.byte	0x29
	.4byte	0x358
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x2a
	.4byte	0x358
	.4byte	.LLST4
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x2a
	.4byte	0x358
	.4byte	.LLST5
	.uleb128 0x16
	.string	"dx"
	.byte	0x1
	.byte	0x2b
	.4byte	0x358
	.4byte	.LLST6
	.uleb128 0x16
	.string	"dy"
	.byte	0x1
	.byte	0x2b
	.4byte	0x358
	.4byte	.LLST7
	.uleb128 0x16
	.string	"err"
	.byte	0x1
	.byte	0x2c
	.4byte	0x363
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0x1
	.byte	0x2d
	.4byte	0x363
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0x1
	.byte	0x2f
	.4byte	0x9f
	.byte	0
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x8b7
	.4byte	0x89a
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0x8b7
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x5
	.2byte	0x4e0
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL38
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"bits_per_char_x"
.LASF144:
	.string	"u8g2_DrawLine"
.LASF85:
	.string	"font_calc_vref"
.LASF124:
	.string	"start_pos_unicode"
.LASF44:
	.string	"reset_pulse_width_ms"
.LASF102:
	.string	"u8g2_update_page_win_cb"
.LASF67:
	.string	"tile_buf_ptr"
.LASF1:
	.string	"__uint8_t"
.LASF22:
	.string	"byte_cb"
.LASF142:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_line.c"
.LASF106:
	.string	"glyph_cnt"
.LASF98:
	.string	"update_dimension"
.LASF11:
	.string	"long long unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF45:
	.string	"post_reset_wait_ms"
.LASF107:
	.string	"bbx_mode"
.LASF31:
	.string	"utf8_state"
.LASF117:
	.string	"y_offset"
.LASF32:
	.string	"gpio_result"
.LASF14:
	.string	"int16_t"
.LASF113:
	.string	"bits_per_char_y"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF61:
	.string	"u8g2_uint_t"
.LASF28:
	.string	"is_font_inverse_mode"
.LASF20:
	.string	"display_cb"
.LASF120:
	.string	"ascent_para"
.LASF92:
	.string	"glyph_x_offset"
.LASF43:
	.string	"pre_chip_disable_wait_ns"
.LASF99:
	.string	"update_page_win"
.LASF116:
	.string	"max_char_height"
.LASF15:
	.string	"uint16_t"
.LASF19:
	.string	"next_cb"
.LASF60:
	.string	"u8x8_char_cb"
.LASF23:
	.string	"gpio_and_delay_cb"
.LASF125:
	.string	"u8g2_font_info_t"
.LASF91:
	.string	"font_ref_descent"
.LASF37:
	.string	"u8x8_display_info_t"
.LASF8:
	.string	"__uint32_t"
.LASF108:
	.string	"bits_per_0"
.LASF46:
	.string	"sda_setup_time_ns"
.LASF90:
	.string	"font_ref_ascent"
.LASF4:
	.string	"__int16_t"
.LASF104:
	.string	"u8g2_draw_ll_hvline_cb"
.LASF119:
	.string	"descent_g"
.LASF110:
	.string	"bits_per_char_width"
.LASF36:
	.string	"debounce_result_msg"
.LASF9:
	.string	"unsigned int"
.LASF71:
	.string	"pixel_buf_height"
.LASF133:
	.string	"is_transparent"
.LASF29:
	.string	"i2c_address"
.LASF63:
	.string	"u8g2_t"
.LASF141:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF127:
	.string	"decode_ptr"
.LASF75:
	.string	"width"
.LASF68:
	.string	"tile_buf_height"
.LASF7:
	.string	"short unsigned int"
.LASF88:
	.string	"is_page_clip_window_intersection"
.LASF93:
	.string	"bitmap_transparency"
.LASF81:
	.string	"clip_x0"
.LASF82:
	.string	"clip_x1"
.LASF100:
	.string	"draw_l90"
.LASF34:
	.string	"debounce_last_pin_state"
.LASF138:
	.string	"u8g2"
.LASF121:
	.string	"descent_para"
.LASF18:
	.string	"display_info"
.LASF87:
	.string	"font_info"
.LASF47:
	.string	"sck_pulse_width_ns"
.LASF38:
	.string	"u8x8_struct"
.LASF55:
	.string	"default_x_offset"
.LASF26:
	.string	"encoding"
.LASF89:
	.string	"font_height_mode"
.LASF122:
	.string	"start_pos_upper_A"
.LASF56:
	.string	"flipmode_x_offset"
.LASF109:
	.string	"bits_per_1"
.LASF114:
	.string	"bits_per_delta_x"
.LASF132:
	.string	"decode_bit_pos"
.LASF131:
	.string	"glyph_height"
.LASF72:
	.string	"pixel_curr_row"
.LASF21:
	.string	"cad_cb"
.LASF83:
	.string	"clip_y0"
.LASF84:
	.string	"clip_y1"
.LASF115:
	.string	"max_char_width"
.LASF79:
	.string	"user_y0"
.LASF52:
	.string	"write_pulse_width_ns"
.LASF73:
	.string	"buf_y0"
.LASF74:
	.string	"buf_y1"
.LASF27:
	.string	"x_offset"
.LASF54:
	.string	"tile_height"
.LASF66:
	.string	"ll_hvline"
.LASF134:
	.string	"fg_color"
.LASF59:
	.string	"u8x8_msg_cb"
.LASF97:
	.string	"u8g2_cb_struct"
.LASF130:
	.string	"glyph_width"
.LASF3:
	.string	"unsigned char"
.LASF118:
	.string	"ascent_A"
.LASF95:
	.string	"is_auto_page_clear"
.LASF70:
	.string	"pixel_buf_width"
.LASF5:
	.string	"short int"
.LASF65:
	.string	"u8x8"
.LASF62:
	.string	"u8g2_int_t"
.LASF139:
	.string	"ystep"
.LASF77:
	.string	"user_x0"
.LASF78:
	.string	"user_x1"
.LASF136:
	.string	"u8g2_font_decode_t"
.LASF51:
	.string	"data_setup_time_ns"
.LASF64:
	.string	"u8g2_struct"
.LASF103:
	.string	"u8g2_draw_l90_cb"
.LASF50:
	.string	"i2c_bus_clock_100kHz"
.LASF16:
	.string	"uint32_t"
.LASF105:
	.string	"_u8g2_font_info_t"
.LASF69:
	.string	"tile_curr_row"
.LASF96:
	.string	"u8g2_cb_t"
.LASF49:
	.string	"spi_mode"
.LASF40:
	.string	"chip_enable_level"
.LASF86:
	.string	"font_decode"
.LASF111:
	.string	"bits_per_char_height"
.LASF6:
	.string	"__uint16_t"
.LASF94:
	.string	"draw_color"
.LASF42:
	.string	"post_chip_enable_wait_ns"
.LASF143:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF101:
	.string	"u8g2_update_dimension_cb"
.LASF128:
	.string	"target_x"
.LASF129:
	.string	"target_y"
.LASF17:
	.string	"u8x8_t"
.LASF24:
	.string	"bus_clock"
.LASF80:
	.string	"user_y1"
.LASF126:
	.string	"_u8g2_font_decode_t"
.LASF12:
	.string	"int8_t"
.LASF35:
	.string	"debounce_state"
.LASF41:
	.string	"chip_disable_level"
.LASF25:
	.string	"font"
.LASF123:
	.string	"start_pos_lower_a"
.LASF145:
	.string	"u8g2_DrawPixel"
.LASF140:
	.string	"swapxy"
.LASF13:
	.string	"uint8_t"
.LASF137:
	.string	"u8g2_font_calc_vref_fnptr"
.LASF30:
	.string	"i2c_started"
.LASF57:
	.string	"pixel_width"
.LASF135:
	.string	"bg_color"
.LASF53:
	.string	"tile_width"
.LASF33:
	.string	"debounce_default_pin_state"
.LASF39:
	.string	"u8x8_display_info_struct"
.LASF76:
	.string	"height"
.LASF58:
	.string	"pixel_height"
.LASF48:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
