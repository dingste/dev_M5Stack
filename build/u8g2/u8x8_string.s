	.file	"u8x8_string.c"
	.text
.Ltext0:
	.section	.text.u8x8_GetStringLineCnt,"ax",@progbits
	.literal_position
	.align	4
	.global	u8x8_GetStringLineCnt
	.type	u8x8_GetStringLineCnt, @function
u8x8_GetStringLineCnt:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_string.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 45 0
	mov.n	a8, a2
	.loc 1 44 0
	beqz.n	a2, .L2
	movi.n	a8, 1
.LVL2:
.L3:
	.loc 1 48 0
	l8ui	a9, a2, 0
.LVL3:
	.loc 1 49 0
	beqz.n	a9, .L2
	.loc 1 51 0
	addi.n	a2, a2, 1
.LVL4:
	.loc 1 52 0
	bnei	a9, 10, .L3
	.loc 1 53 0
	addi.n	a8, a8, 1
.LVL5:
	extui	a8, a8, 0, 8
.LVL6:
	j	.L3
.LVL7:
.L2:
	.loc 1 56 0
	mov.n	a2, a8
.LVL8:
	retw.n
.LFE0:
	.size	u8x8_GetStringLineCnt, .-u8x8_GetStringLineCnt
	.section	.text.u8x8_GetStringLineStart,"ax",@progbits
	.align	4
	.global	u8x8_GetStringLineStart
	.type	u8x8_GetStringLineStart, @function
u8x8_GetStringLineStart:
.LFB1:
	.loc 1 67 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 67 0
	extui	a9, a2, 0, 8
	.loc 1 72 0
	mov.n	a2, a3
.LVL11:
	.loc 1 71 0
	beqz.n	a9, .L8
	movi.n	a8, 1
.LVL12:
.L9:
.LBB4:
.LBB5:
	.loc 1 76 0
	l8ui	a2, a3, 0
.LVL13:
	.loc 1 77 0
	beqz.n	a2, .L8
	.loc 1 79 0
	addi.n	a3, a3, 1
.LVL14:
	.loc 1 80 0
	bnei	a2, 10, .L9
	.loc 1 82 0
	beq	a9, a8, .L13
	.loc 1 84 0
	addi.n	a8, a8, 1
.LVL15:
	extui	a8, a8, 0, 8
.LVL16:
	j	.L9
.L13:
	.loc 1 79 0
	mov.n	a2, a3
.LVL17:
.L8:
.LBE5:
.LBE4:
	.loc 1 88 0
	retw.n
.LFE1:
	.size	u8x8_GetStringLineStart, .-u8x8_GetStringLineStart
	.section	.text.u8x8_CopyStringLine,"ax",@progbits
	.align	4
	.global	u8x8_CopyStringLine
	.type	u8x8_CopyStringLine, @function
u8x8_CopyStringLine:
.LFB2:
	.loc 1 94 0
.LVL18:
	entry	sp, 32
.LCFI2:
	.loc 1 94 0
	mov.n	a11, a4
	extui	a10, a3, 0, 8
	.loc 1 95 0
	beqz.n	a2, .L15
	.loc 1 97 0
	call8	u8x8_GetStringLineStart
.LVL19:
	.loc 1 98 0
	beqz.n	a10, .L17
	.loc 1 102 0
	movi.n	a11, 1
	movi.n	a12, 0
.LVL20:
.L18:
	l8ui	a9, a10, 0
	mov.n	a3, a12
	addi	a8, a9, -10
	moveqz	a3, a11, a8
	extui	a8, a3, 0, 8
	bnez.n	a8, .L17
	moveqz	a8, a11, a9
	bnez.n	a8, .L17
	.loc 1 104 0
	s8i	a9, a2, 0
	.loc 1 106 0
	addi.n	a10, a10, 1
.LVL21:
	.loc 1 105 0
	addi.n	a2, a2, 1
.LVL22:
	.loc 1 107 0
	j	.L18
.L17:
	.loc 1 109 0
	movi.n	a8, 0
	s8i	a8, a2, 0
.LVL23:
.L15:
	retw.n
.LFE2:
	.size	u8x8_CopyStringLine, .-u8x8_CopyStringLine
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	" "
	.section	.text.u8x8_DrawUTF8Line,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.align	4
	.global	u8x8_DrawUTF8Line
	.type	u8x8_DrawUTF8Line, @function
u8x8_DrawUTF8Line:
.LFB3:
	.loc 1 120 0
.LVL24:
	entry	sp, 48
.LCFI3:
.LVL25:
	.loc 1 126 0
	mov.n	a11, a6
	mov.n	a10, a2
	.loc 1 120 0
	extui	a5, a5, 0, 8
	.loc 1 126 0
	call8	u8x8_GetUTF8Len
.LVL26:
	.loc 1 120 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 124 0
	movi.n	a7, 0
	.loc 1 127 0
	bgeu	a10, a5, .L26
.LVL27:
	.loc 1 130 0
	sub	a10, a5, a10
.LVL28:
	.loc 1 131 0
	extui	a7, a10, 1, 7
.LVL29:
.L26:
	.loc 1 135 0
	add.n	a7, a7, a3
.LVL30:
	extui	a8, a7, 0, 8
.LVL31:
	.loc 1 134 0
	mov.n	a7, a3
.LVL32:
	.loc 1 136 0
	j	.L27
.LVL33:
.L28:
	.loc 1 138 0
	l32r	a13, .LC3
	mov.n	a11, a7
	mov.n	a12, a4
	mov.n	a10, a2
	s32i.n	a8, sp, 0
	call8	u8x8_DrawUTF8
.LVL34:
	.loc 1 139 0
	addi.n	a7, a7, 1
.LVL35:
	l32i.n	a8, sp, 0
	extui	a7, a7, 0, 8
.LVL36:
.L27:
	.loc 1 136 0
	bltu	a7, a8, .L28
	.loc 1 141 0
	mov.n	a13, a6
	mov.n	a11, a7
	mov.n	a12, a4
	mov.n	a10, a2
	call8	u8x8_DrawUTF8
.LVL37:
	add.n	a10, a7, a10
	.loc 1 142 0
	add.n	a5, a5, a3
.LVL38:
	.loc 1 141 0
	extui	a7, a10, 0, 8
.LVL39:
	.loc 1 142 0
	extui	a5, a5, 0, 8
.LVL40:
	.loc 1 145 0
	l32r	a6, .LC3
.LVL41:
	.loc 1 143 0
	j	.L29
.LVL42:
.L30:
	.loc 1 145 0
	mov.n	a11, a7
	mov.n	a13, a6
	mov.n	a12, a4
	mov.n	a10, a2
	.loc 1 146 0
	addi.n	a7, a7, 1
.LVL43:
	.loc 1 145 0
	call8	u8x8_DrawUTF8
.LVL44:
	.loc 1 146 0
	extui	a7, a7, 0, 8
.LVL45:
.L29:
	.loc 1 143 0
	bltu	a7, a5, .L30
.LVL46:
	.loc 1 149 0
	sub	a2, a7, a3
.LVL47:
	.loc 1 150 0
	extui	a2, a2, 0, 8
	retw.n
.LFE3:
	.size	u8x8_DrawUTF8Line, .-u8x8_DrawUTF8Line
	.section	.text.u8x8_DrawUTF8Lines,"ax",@progbits
	.align	4
	.global	u8x8_DrawUTF8Lines
	.type	u8x8_DrawUTF8Lines, @function
u8x8_DrawUTF8Lines:
.LFB4:
	.loc 1 160 0
.LVL48:
	entry	sp, 48
.LCFI4:
	.loc 1 163 0
	mov.n	a10, a6
	call8	u8x8_GetStringLineCnt
.LVL49:
	.loc 1 160 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
	.loc 1 163 0
	mov.n	a8, a10
.LVL50:
	.loc 1 164 0
	movi.n	a7, 0
	j	.L33
.LVL51:
.L34:
	.loc 1 166 0 discriminator 3
	mov.n	a11, a6
	mov.n	a10, a7
	s32i.n	a8, sp, 4
	s32i.n	a12, sp, 0
	call8	u8x8_GetStringLineStart
.LVL52:
	l32i.n	a12, sp, 0
	mov.n	a14, a10
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_DrawUTF8Line
.LVL53:
	l32i.n	a8, sp, 4
	addi.n	a7, a7, 1
.LVL54:
.L33:
	extui	a9, a7, 0, 8
	add.n	a12, a4, a9
	extui	a12, a12, 0, 8
.LVL55:
	.loc 1 164 0 discriminator 1
	bltu	a9, a8, .L34
	.loc 1 170 0
	mov.n	a2, a8
.LVL56:
	retw.n
.LFE4:
	.size	u8x8_DrawUTF8Lines, .-u8x8_DrawUTF8Lines
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x66c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
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
	.4byte	0x310
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
	.4byte	0x31b
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
	.4byte	0x316
	.uleb128 0xd
	.4byte	0x1b1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x321
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x1
	.byte	0x42
	.4byte	0x361
	.byte	0x1
	.4byte	0x361
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x42
	.4byte	0x7e
	.uleb128 0x10
	.string	"str"
	.byte	0x1
	.byte	0x42
	.4byte	0x361
	.uleb128 0x11
	.string	"e"
	.byte	0x1
	.byte	0x44
	.4byte	0x367
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x36e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF59
	.uleb128 0xd
	.4byte	0x367
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x28
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b8
	.uleb128 0x14
	.string	"str"
	.byte	0x1
	.byte	0x28
	.4byte	0x361
	.4byte	.LLST0
	.uleb128 0x15
	.string	"e"
	.byte	0x1
	.byte	0x2a
	.4byte	0x367
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2b
	.4byte	0x7e
	.4byte	.LLST2
	.byte	0
	.uleb128 0x17
	.4byte	0x326
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41d
	.uleb128 0x18
	.4byte	0x336
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	0x341
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	0x34c
	.uleb128 0x1a
	.4byte	0x355
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x18
	.4byte	0x341
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	0x336
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1d
	.4byte	0x34c
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	0x355
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x479
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5d
	.4byte	0x479
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LASF57
	.byte	0x1
	.byte	0x5d
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x14
	.string	"str"
	.byte	0x1
	.byte	0x5d
	.4byte	0x361
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0x326
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x367
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x77
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59a
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0x77
	.4byte	0x2e5
	.4byte	.LLST11
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.byte	0x77
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.byte	0x77
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.byte	0x77
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x77
	.4byte	0x361
	.4byte	.LLST13
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.byte	0x79
	.4byte	0x7e
	.4byte	.LLST14
	.uleb128 0x15
	.string	"lw"
	.byte	0x1
	.byte	0x79
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x15
	.string	"cx"
	.byte	0x1
	.byte	0x7a
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x15
	.string	"dx"
	.byte	0x1
	.byte	0x7a
	.4byte	0x7e
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	.LVL26
	.4byte	0x657
	.4byte	0x528
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x663
	.4byte	0x551
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x23
	.4byte	.LVL37
	.4byte	0x663
	.4byte	0x577
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL44
	.4byte	0x663
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9f
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x657
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9f
	.4byte	0x2e5
	.4byte	.LLST18
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.byte	0x9f
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"y"
	.byte	0x1
	.byte	0x9f
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x22
	.string	"w"
	.byte	0x1
	.byte	0x9f
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0x9f
	.4byte	0x361
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.4byte	0x7e
	.4byte	.LLST20
	.uleb128 0x15
	.string	"cnt"
	.byte	0x1
	.byte	0xa2
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x373
	.4byte	0x620
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL52
	.4byte	0x326
	.4byte	0x63a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL53
	.4byte	0x47f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x3c3
	.uleb128 0x24
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x3be
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x72
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44-1
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46
	.4byte	.LFE3
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52-1
	.4byte	.LVL53
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF60:
	.string	"dest"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF21:
	.string	"font"
.LASF32:
	.string	"debounce_result_msg"
.LASF71:
	.string	"u8x8_CopyStringLine"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF49:
	.string	"tile_width"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF70:
	.string	"u8x8_GetStringLineStart"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF63:
	.string	"u8x8"
.LASF61:
	.string	"u8x8_GetStringLineCnt"
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
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF65:
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
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF57:
	.string	"line_idx"
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
.LASF59:
	.string	"char"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF64:
	.string	"u8x8_DrawUTF8Lines"
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
.LASF66:
	.string	"u8x8_DrawUTF8"
.LASF26:
	.string	"i2c_started"
.LASF17:
	.string	"cad_cb"
.LASF58:
	.string	"line_cnt"
.LASF69:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF67:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF55:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF68:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_string.c"
.LASF62:
	.string	"u8x8_DrawUTF8Line"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
