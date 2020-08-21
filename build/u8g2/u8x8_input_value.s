	.file	"u8x8_input_value.c"
	.text
.Ltext0:
	.section	.text.u8x8_UserInterfaceInputValue,"ax",@progbits
	.align	4
	.global	u8x8_UserInterfaceInputValue
	.type	u8x8_UserInterfaceInputValue, @function
u8x8_UserInterfaceInputValue:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_input_value.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 45 0
	s32i.n	a5, sp, 0
	.loc 1 50 0
	l32i.n	a8, sp, 0
	.loc 1 45 0
	extui	a5, a7, 0, 8
.LVL1:
	extui	a6, a6, 0, 8
	.loc 1 56 0
	mov.n	a10, a3
	.loc 1 45 0
	s32i.n	a6, sp, 4
	s32i.n	a5, sp, 8
	l8ui	a6, sp, 48
.LVL2:
	.loc 1 50 0
	l8ui	a5, a8, 0
.LVL3:
	.loc 1 56 0
	call8	u8x8_GetStringLineCnt
.LVL4:
	.loc 1 60 0
	l32i.n	a7, a2, 0
.LVL5:
	.loc 1 56 0
	addi.n	a10, a10, 1
	.loc 1 60 0
	l8ui	a8, a7, 17
	.loc 1 56 0
	extui	a10, a10, 0, 8
.LVL6:
	.loc 1 45 0
	.loc 1 59 0
	movi.n	a7, 0
	.loc 1 60 0
	bgeu	a10, a8, .L2
.LVL7:
	.loc 1 63 0
	sub	a7, a8, a10
.LVL8:
	.loc 1 64 0
	extui	a7, a7, 1, 7
.LVL9:
.L2:
	.loc 1 69 0
	mov.n	a11, a4
	mov.n	a10, a2
.LVL10:
	call8	u8x8_GetUTF8Len
.LVL11:
	.loc 1 71 0
	l32i.n	a11, sp, 52
	.loc 1 69 0
	mov.n	a8, a10
.LVL12:
	.loc 1 71 0
	mov.n	a10, a2
	s32i.n	a8, sp, 12
	call8	u8x8_GetUTF8Len
.LVL13:
	l32i.n	a8, sp, 12
	add.n	a10, a8, a10
	.loc 1 72 0
	l32i.n	a8, a2, 0
	.loc 1 71 0
	add.n	a10, a10, a6
	.loc 1 72 0
	l8ui	a9, a8, 16
	.loc 1 71 0
	extui	a10, a10, 0, 8
.LVL14:
	.loc 1 68 0
	movi.n	a8, 0
	.loc 1 72 0
	bgeu	a10, a9, .L3
.LVL15:
	.loc 1 75 0
	sub	a10, a9, a10
.LVL16:
	.loc 1 76 0
	extui	a8, a10, 1, 7
.LVL17:
.L3:
	.loc 1 80 0
	mov.n	a10, a2
	s32i.n	a8, sp, 12
	call8	u8x8_ClearDisplay
.LVL18:
	.loc 1 81 0
	movi.n	a9, 0
	s8i	a9, a2, 35
	.loc 1 82 0
	l32i.n	a9, a2, 0
	mov.n	a14, a3
	l8ui	a13, a9, 16
	mov.n	a12, a7
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_DrawUTF8Lines
.LVL19:
	.loc 1 83 0
	add.n	a10, a7, a10
.LVL20:
	l32i.n	a8, sp, 12
	extui	a3, a10, 0, 8
.LVL21:
	mov.n	a13, a4
	mov.n	a11, a8
	mov.n	a12, a3
	mov.n	a10, a2
	call8	u8x8_DrawUTF8
.LVL22:
	l32i.n	a8, sp, 12
	.loc 1 84 0
	l32i.n	a13, sp, 52
	.loc 1 83 0
	add.n	a10, a8, a10
	extui	a4, a10, 0, 8
.LVL23:
	.loc 1 84 0
	add.n	a11, a6, a4
	mov.n	a12, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
.LVL24:
	call8	u8x8_DrawUTF8
.LVL25:
	.loc 1 85 0
	movi.n	a7, 1
	s8i	a7, a2, 35
	.loc 1 88 0
	mov.n	a11, a6
	mov.n	a10, a5
	call8	u8x8_u8toa
.LVL26:
	mov.n	a13, a10
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_DrawUTF8
.LVL27:
	.loc 1 92 0
	movi.n	a7, 0x50
.LVL28:
.L4:
	.loc 1 91 0
	mov.n	a10, a2
	call8	u8x8_GetMenuEvent
.LVL29:
	.loc 1 92 0
	bne	a10, a7, .L5
	.loc 1 94 0
	l32i.n	a3, sp, 0
	.loc 1 95 0
	movi.n	a8, 1
	.loc 1 94 0
	s8i	a5, a3, 0
.LVL30:
	.loc 1 96 0
	j	.L6
.LVL31:
.L5:
	.loc 1 98 0
	movi.n	a9, 0x53
	movi.n	a8, 0
	beq	a10, a9, .L6
	.loc 1 103 0
	addi	a9, a10, -81
	movi.n	a11, 1
	moveqz	a8, a11, a9
	extui	a8, a8, 0, 8
	bnez.n	a8, .L18
	addi	a9, a10, -84
	moveqz	a8, a11, a9
	beqz.n	a8, .L7
.L18:
	.loc 1 105 0
	l32i.n	a8, sp, 8
	bgeu	a5, a8, .L16
	.loc 1 108 0
	addi.n	a5, a5, 1
.LVL32:
	j	.L23
.LVL33:
.L16:
	.loc 1 106 0
	l32i.n	a5, sp, 4
.LVL34:
	j	.L12
.L7:
	.loc 1 111 0
	addi	a9, a10, -82
	moveqz	a8, a11, a9
	mov.n	a9, a8
	bnez.n	a8, .L19
	addi	a8, a10, -85
	mov.n	a10, a11
.LVL35:
	movnez	a10, a9, a8
	beqz.n	a10, .L4
.LVL36:
.L19:
	.loc 1 113 0
	l32i.n	a8, sp, 4
	bgeu	a8, a5, .L17
	.loc 1 116 0
	addi.n	a5, a5, -1
.LVL37:
.L23:
	extui	a5, a5, 0, 8
.LVL38:
	j	.L12
.L17:
	.loc 1 114 0
	l32i.n	a5, sp, 8
.LVL39:
.L12:
	.loc 1 117 0
	mov.n	a11, a6
	mov.n	a10, a5
	call8	u8x8_u8toa
.LVL40:
	mov.n	a13, a10
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_DrawUTF8
.LVL41:
	j	.L4
.LVL42:
.L6:
	.loc 1 121 0
	movi.n	a3, 0
	s8i	a3, a2, 35
	.loc 1 123 0
	mov.n	a2, a8
.LVL43:
	retw.n
.LFE0:
	.size	u8x8_UserInterfaceInputValue, .-u8x8_UserInterfaceInputValue
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5d3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.LASF76
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
	.4byte	0x316
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x149
	.4byte	0x2eb
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2b6
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2b6
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2b6
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2b6
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
	.4byte	0x321
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
	.byte	0xc7
	.4byte	0x2c1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c7
	.uleb128 0xb
	.4byte	0x7e
	.4byte	0x2e5
	.uleb128 0xc
	.4byte	0x2e5
	.uleb128 0xc
	.4byte	0x7e
	.uleb128 0xc
	.4byte	0x7e
	.uleb128 0xc
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x4
	.byte	0xc8
	.4byte	0x2f6
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2fc
	.uleb128 0xb
	.4byte	0x89
	.4byte	0x310
	.uleb128 0xc
	.4byte	0x2e5
	.uleb128 0xc
	.4byte	0x7e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xa
	.byte	0x4
	.4byte	0x31c
	.uleb128 0xd
	.4byte	0x1b1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x327
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2c
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x570
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x2c
	.4byte	0x2e5
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2c
	.4byte	0x570
	.4byte	.LLST1
	.uleb128 0x10
	.string	"pre"
	.byte	0x1
	.byte	0x2c
	.4byte	0x570
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2c
	.4byte	0x310
	.4byte	.LLST3
	.uleb128 0x10
	.string	"lo"
	.byte	0x1
	.byte	0x2c
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x10
	.string	"hi"
	.byte	0x1
	.byte	0x2c
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2c
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x2c
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2e
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.byte	0x2f
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x30
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x31
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0x32
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x34
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LVL4
	.4byte	0x582
	.4byte	0x430
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x58e
	.4byte	0x44a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0x58e
	.4byte	0x465
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LVL18
	.4byte	0x59a
	.4byte	0x479
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0x5a6
	.4byte	0x49e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x5b2
	.4byte	0x4be
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0x5b2
	.4byte	0x4eb
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LVL26
	.4byte	0x5be
	.4byte	0x505
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x5b2
	.4byte	0x525
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL29
	.4byte	0x5ca
	.4byte	0x539
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL40
	.4byte	0x5be
	.4byte	0x553
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL41
	.4byte	0x5b2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF66
	.uleb128 0xd
	.4byte	0x576
	.uleb128 0x17
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x3d0
	.uleb128 0x17
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x3c3
	.uleb128 0x17
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x22f
	.uleb128 0x17
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x3d6
	.uleb128 0x17
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x3be
	.uleb128 0x17
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x3c8
	.uleb128 0x17
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x2fe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4-1
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL4-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0x78
	.sleb128 85
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
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
.LASF61:
	.string	"post"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF45:
	.string	"spi_mode"
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
.LASF77:
	.string	"u8x8_UserInterfaceInputValue"
.LASF75:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_input_value.c"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF65:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF59:
	.string	"value"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF58:
	.string	"title"
.LASF57:
	.string	"u8x8"
.LASF64:
	.string	"local_value"
.LASF67:
	.string	"u8x8_GetStringLineCnt"
.LASF63:
	.string	"width"
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
.LASF72:
	.string	"u8x8_u8toa"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF60:
	.string	"digits"
.LASF47:
	.string	"data_setup_time_ns"
.LASF68:
	.string	"u8x8_GetUTF8Len"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF62:
	.string	"height"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
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
.LASF56:
	.string	"u8x8_char_cb"
.LASF66:
	.string	"char"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF70:
	.string	"u8x8_DrawUTF8Lines"
.LASF69:
	.string	"u8x8_ClearDisplay"
.LASF73:
	.string	"u8x8_GetMenuEvent"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF26:
	.string	"i2c_started"
.LASF17:
	.string	"cad_cb"
.LASF76:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF74:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF55:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF71:
	.string	"u8x8_DrawUTF8"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
