	.file	"u8log_u8x8.c"
	.text
.Ltext0:
	.section	.text.u8x8_DrawLogLine,"ax",@progbits
	.align	4
	.type	u8x8_DrawLogLine, @function
u8x8_DrawLogLine:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8log_u8x8.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 44 0
	movi.n	a7, 0
	j	.L2
.LVL2:
.L3:
	.loc 1 46 0 discriminator 3
	l32i.n	a9, a6, 12
	mul16u	a8, a5, a8
.LVL3:
	add.n	a9, a9, a7
	add.n	a8, a9, a8
	.loc 1 47 0 discriminator 3
	l8ui	a13, a8, 0
	mov.n	a12, a4
	mov.n	a10, a2
	.loc 1 44 0 discriminator 3
	addi.n	a7, a7, 1
.LVL4:
	.loc 1 47 0 discriminator 3
	call8	u8x8_DrawGlyph
.LVL5:
	.loc 1 44 0 discriminator 3
	extui	a7, a7, 0, 8
.LVL6:
.L2:
	.loc 1 44 0 is_stmt 0 discriminator 1
	l8ui	a8, a6, 4
	add.n	a11, a7, a3
	extui	a11, a11, 0, 8
.LVL7:
	bltu	a7, a8, .L3
	.loc 1 50 0 is_stmt 1
	retw.n
.LFE0:
	.size	u8x8_DrawLogLine, .-u8x8_DrawLogLine
	.section	.text.u8x8_DrawLog,"ax",@progbits
	.align	4
	.global	u8x8_DrawLog
	.type	u8x8_DrawLog, @function
u8x8_DrawLog:
.LFB1:
	.loc 1 53 0
.LVL8:
	entry	sp, 32
.LCFI1:
.LVL9:
	.loc 1 53 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 55 0
	movi.n	a6, 0
	j	.L5
.LVL10:
.L6:
	.loc 1 57 0 discriminator 3
	mov.n	a13, a6
	mov.n	a14, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 55 0 discriminator 3
	addi.n	a6, a6, 1
.LVL11:
	.loc 1 57 0 discriminator 3
	call8	u8x8_DrawLogLine
.LVL12:
	.loc 1 55 0 discriminator 3
	extui	a6, a6, 0, 8
.LVL13:
.L5:
	.loc 1 55 0 is_stmt 0 discriminator 1
	l8ui	a8, a5, 5
	add.n	a12, a6, a4
	extui	a12, a12, 0, 8
.LVL14:
	bltu	a6, a8, .L6
	.loc 1 60 0 is_stmt 1
	retw.n
.LFE1:
	.size	u8x8_DrawLog, .-u8x8_DrawLog
	.section	.text.u8log_u8x8_cb,"ax",@progbits
	.align	4
	.global	u8log_u8x8_cb
	.type	u8log_u8x8_cb, @function
u8log_u8x8_cb:
.LFB2:
	.loc 1 64 0
.LVL15:
	entry	sp, 32
.LCFI2:
	.loc 1 66 0
	l8ui	a11, a2, 22
	.loc 1 64 0
	mov.n	a13, a2
	.loc 1 65 0
	l32i.n	a10, a2, 0
.LVL16:
	.loc 1 66 0
	beqz.n	a11, .L8
	.loc 1 68 0
	movi.n	a12, 0
	mov.n	a11, a12
	call8	u8x8_DrawLog
.LVL17:
	retw.n
.LVL18:
.L8:
	.loc 1 70 0
	l8ui	a8, a2, 21
	beqz.n	a8, .L7
	.loc 1 72 0
	l8ui	a12, a2, 20
	mov.n	a14, a2
	mov.n	a13, a12
	call8	u8x8_DrawLogLine
.LVL19:
.L7:
	retw.n
.LFE2:
	.size	u8log_u8x8_cb, .-u8log_u8x8_cb
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x594
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
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
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x1
	.byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b2
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x1
	.byte	0x28
	.4byte	0x2fb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.byte	0x28
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x1
	.byte	0x28
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0x28
	.4byte	0x94
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.byte	0x28
	.4byte	0x421
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2a
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0x2b
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x58b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0x34
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52b
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x1
	.byte	0x34
	.4byte	0x2fb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x34
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"y"
	.byte	0x1
	.byte	0x34
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.byte	0x34
	.4byte	0x421
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x36
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0x427
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 -1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58b
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.byte	0x3f
	.4byte	0x421
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x41
	.4byte	0x2fb
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0x4b2
	.4byte	0x57a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x427
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x3ba
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
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x15
	.byte	0x75
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
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x76
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x17
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x76
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x17
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x77
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x76
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"aux_data"
.LASF25:
	.string	"x_offset"
.LASF26:
	.string	"is_font_inverse_mode"
.LASF47:
	.string	"spi_mode"
.LASF11:
	.string	"int8_t"
.LASF38:
	.string	"chip_enable_level"
.LASF23:
	.string	"font"
.LASF34:
	.string	"debounce_result_msg"
.LASF4:
	.string	"short int"
.LASF21:
	.string	"gpio_and_delay_cb"
.LASF51:
	.string	"tile_width"
.LASF44:
	.string	"sda_setup_time_ns"
.LASF67:
	.string	"cursor_x"
.LASF68:
	.string	"cursor_y"
.LASF64:
	.string	"screen_buffer"
.LASF43:
	.string	"post_reset_wait_ms"
.LASF59:
	.string	"u8log_t"
.LASF7:
	.string	"__uint32_t"
.LASF85:
	.string	"u8x8_DrawLogLine"
.LASF5:
	.string	"__uint16_t"
.LASF69:
	.string	"redraw_line"
.LASF50:
	.string	"write_pulse_width_ns"
.LASF65:
	.string	"is_redraw_line_for_each_char"
.LASF12:
	.string	"uint8_t"
.LASF40:
	.string	"post_chip_enable_wait_ns"
.LASF74:
	.string	"u8x8"
.LASF75:
	.string	"disp_x"
.LASF62:
	.string	"width"
.LASF22:
	.string	"bus_clock"
.LASF53:
	.string	"default_x_offset"
.LASF35:
	.string	"u8x8_display_info_t"
.LASF32:
	.string	"debounce_last_pin_state"
.LASF9:
	.string	"long long int"
.LASF30:
	.string	"gpio_result"
.LASF45:
	.string	"sck_pulse_width_ns"
.LASF81:
	.string	"u8log_u8x8_cb"
.LASF1:
	.string	"__uint8_t"
.LASF18:
	.string	"display_cb"
.LASF49:
	.string	"data_setup_time_ns"
.LASF60:
	.string	"u8log_struct"
.LASF76:
	.string	"disp_y"
.LASF52:
	.string	"tile_height"
.LASF73:
	.string	"u8log_cb"
.LASF3:
	.string	"unsigned char"
.LASF86:
	.string	"u8x8_DrawGlyph"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF63:
	.string	"height"
.LASF83:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8log_u8x8.c"
.LASF13:
	.string	"uint16_t"
.LASF37:
	.string	"u8x8_display_info_struct"
.LASF42:
	.string	"reset_pulse_width_ms"
.LASF15:
	.string	"u8x8_t"
.LASF48:
	.string	"i2c_bus_clock_100kHz"
.LASF46:
	.string	"sck_clock_hz"
.LASF6:
	.string	"short unsigned int"
.LASF58:
	.string	"u8x8_char_cb"
.LASF0:
	.string	"__int8_t"
.LASF78:
	.string	"u8log"
.LASF16:
	.string	"display_info"
.LASF56:
	.string	"pixel_height"
.LASF80:
	.string	"u8x8_DrawLog"
.LASF55:
	.string	"pixel_width"
.LASF29:
	.string	"utf8_state"
.LASF36:
	.string	"u8x8_struct"
.LASF72:
	.string	"is_redraw_all_required_for_next_nl"
.LASF33:
	.string	"debounce_state"
.LASF71:
	.string	"is_redraw_all"
.LASF79:
	.string	"buf_x"
.LASF77:
	.string	"buf_y"
.LASF20:
	.string	"byte_cb"
.LASF39:
	.string	"chip_disable_level"
.LASF70:
	.string	"is_redraw_line"
.LASF27:
	.string	"i2c_address"
.LASF54:
	.string	"flipmode_x_offset"
.LASF24:
	.string	"encoding"
.LASF28:
	.string	"i2c_started"
.LASF19:
	.string	"cad_cb"
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF8:
	.string	"unsigned int"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"debounce_default_pin_state"
.LASF57:
	.string	"u8x8_msg_cb"
.LASF66:
	.string	"line_height_offset"
.LASF17:
	.string	"next_cb"
.LASF41:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
