	.file	"u8g2_message.c"
	.text
.Ltext0:
	.section	.text.u8g2_draw_button_line,"ax",@progbits
	.align	4
	.global	u8g2_draw_button_line
	.type	u8g2_draw_button_line, @function
u8g2_draw_button_line:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_message.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 42 0
	extui	a3, a3, 0, 16
	.loc 1 52 0
	mov.n	a10, a6
	.loc 1 42 0
	s32i.n	a3, sp, 16
	.loc 1 52 0
	call8	u8x8_GetStringLineCnt
.LVL1:
	.loc 1 57 0
	movi.n	a9, 0
	.loc 1 42 0
	extui	a4, a4, 0, 16
	extui	a5, a5, 0, 8
	.loc 1 52 0
	mov.n	a7, a10
.LVL2:
	.loc 1 56 0
	mov.n	a3, a9
.LVL3:
	.loc 1 57 0
	j	.L2
.LVL4:
.L3:
	.loc 1 59 0 discriminator 3
	mov.n	a10, a9
	mov.n	a11, a6
	s32i.n	a9, sp, 28
	call8	u8x8_GetStringLineStart
.LVL5:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	u8g2_GetUTF8Width
.LVL6:
	l32i.n	a9, sp, 28
	add.n	a10, a3, a10
	extui	a3, a10, 0, 16
.LVL7:
	addi.n	a9, a9, 1
.LVL8:
.L2:
	.loc 1 57 0 discriminator 1
	extui	a10, a9, 0, 8
	bltu	a10, a7, .L3
	.loc 1 61 0
	addi.n	a10, a7, -1
	addx2	a10, a10, a10
	addx2	a10, a10, a3
	extui	a10, a10, 0, 16
.LVL9:
	.loc 1 64 0
	movi.n	a3, 0
	.loc 1 65 0
	bgeu	a10, a4, .L4
.LVL10:
	.loc 1 69 0
	sub	a4, a4, a10
.LVL11:
	extui	a3, a4, 1, 15
.LVL12:
.L4:
	.loc 1 64 0 discriminator 1
	movi.n	a4, 0
	.loc 1 77 0 discriminator 1
	movi.n	a9, 1
.LVL13:
	j	.L5
.LVL14:
.L6:
	.loc 1 77 0 is_stmt 0
	movi.n	a13, 0
	sub	a12, a5, a10
	mov.n	a8, a13
	moveqz	a8, a9, a12
	extui	a12, a8, 0, 8
.LVL15:
	.loc 1 80 0 is_stmt 1
	mov.n	a11, a6
	mov.n	a10, a4
	s32i.n	a9, sp, 28
	s32i.n	a12, sp, 20
	s32i.n	a13, sp, 24
	call8	u8x8_GetStringLineStart
.LVL16:
	l32i.n	a12, sp, 20
	l32i.n	a13, sp, 24
	s32i.n	a12, sp, 0
	l32i.n	a12, sp, 16
	mov.n	a14, a10
	movi.n	a15, 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8g2_DrawUTF8Line
.LVL17:
	.loc 1 81 0
	mov.n	a11, a6
	mov.n	a10, a4
	call8	u8x8_GetStringLineStart
.LVL18:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	u8g2_GetUTF8Width
.LVL19:
	.loc 1 82 0
	addi.n	a10, a10, 6
.LVL20:
	add.n	a8, a3, a10
	l32i.n	a9, sp, 28
	extui	a3, a8, 0, 16
.LVL21:
	addi.n	a4, a4, 1
.LVL22:
.L5:
	extui	a10, a4, 0, 8
	.loc 1 74 0 discriminator 1
	bltu	a10, a7, .L6
	.loc 1 87 0
	mov.n	a2, a7
.LVL23:
	retw.n
.LFE0:
	.size	u8g2_draw_button_line, .-u8g2_draw_button_line
	.section	.text.u8g2_UserInterfaceMessage,"ax",@progbits
	.align	4
	.global	u8g2_UserInterfaceMessage
	.type	u8g2_UserInterfaceMessage, @function
u8g2_UserInterfaceMessage:
.LFB1:
	.loc 1 100 0
.LVL24:
	entry	sp, 80
.LCFI1:
.LVL25:
	.loc 1 111 0
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 100 0
	s32i.n	a6, sp, 28
	s32i.n	a3, sp, 24
	.loc 1 111 0
	call8	u8g2_SetFontDirection
.LVL26:
	.loc 1 114 0
	mov.n	a10, a2
	call8	u8g2_SetFontPosBaseline
.LVL27:
	.loc 1 100 0
	mov.n	a7, a2
	.loc 1 123 0
	l32i.n	a10, sp, 24
	.loc 1 118 0
	l8ui	a2, a2, 142
.LVL28:
	.loc 1 119 0
	l8ui	a6, a7, 143
.LVL29:
	.loc 1 123 0
	call8	u8x8_GetStringLineCnt
.LVL30:
	.loc 1 119 0
	sub	a6, a2, a6
	.loc 1 125 0
	addi.n	a2, a10, 2
.LVL31:
	.loc 1 119 0
	extui	a6, a6, 0, 8
.LVL32:
	.loc 1 125 0
	extui	a2, a2, 0, 8
	.loc 1 124 0
	bnez.n	a4, .L10
	.loc 1 123 0
	addi.n	a10, a10, 1
.LVL33:
	extui	a2, a10, 0, 8
.LVL34:
.L10:
	.loc 1 126 0
	mov.n	a10, a5
	call8	u8x8_GetStringLineCnt
.LVL35:
	.loc 1 129 0
	add.n	a10, a2, a10
.LVL36:
	.loc 1 130 0
	extui	a3, a6, 0, 16
.LVL37:
	.loc 1 129 0
	extui	a2, a10, 0, 8
.LVL38:
	.loc 1 130 0
	mull	a2, a2, a3
.LVL39:
	.loc 1 137 0
	l16ui	a8, a7, 70
	.loc 1 133 0
	addi.n	a2, a2, 3
.LVL40:
	.loc 1 130 0
	s32i.n	a3, sp, 16
	.loc 1 133 0
	extui	a2, a2, 0, 16
.LVL41:
	.loc 1 136 0
	movi.n	a9, 0
	.loc 1 137 0
	bgeu	a2, a8, .L11
.LVL42:
	.loc 1 140 0
	sub	a2, a8, a2
.LVL43:
	.loc 1 141 0
	extui	a9, a2, 1, 15
.LVL44:
.L11:
	.loc 1 143 0
	l8ui	a8, a7, 142
	sext	a8, a8, 7
	add.n	a2, a9, a8
	extui	a2, a2, 0, 16
	s32i.n	a2, sp, 20
.LVL45:
.L27:
	.loc 1 106 0
	movi.n	a3, 0
.L12:
.LVL46:
	.loc 1 148 0
	mov.n	a10, a7
	call8	u8g2_FirstPage
.LVL47:
.L14:
	.loc 1 154 0
	l32i.n	a15, sp, 24
	l16ui	a13, a7, 68
	l32i.n	a12, sp, 20
	mov.n	a14, a6
	movi.n	a11, 0
	mov.n	a10, a7
	call8	u8g2_DrawUTF8Lines
.LVL48:
	l32i.n	a8, sp, 20
	add.n	a10, a8, a10
	extui	a2, a10, 0, 16
.LVL49:
	.loc 1 155 0
	beqz.n	a4, .L13
	.loc 1 157 0
	movi.n	a8, 0
	l16ui	a13, a7, 68
	mov.n	a15, a8
	s32i.n	a8, sp, 0
	mov.n	a12, a2
	mov.n	a11, a8
	mov.n	a14, a4
	mov.n	a10, a7
.LVL50:
	call8	u8g2_DrawUTF8Line
.LVL51:
	.loc 1 158 0
	l32i.n	a8, sp, 16
	add.n	a2, a8, a2
.LVL52:
	extui	a2, a2, 0, 16
.LVL53:
.L13:
	.loc 1 160 0
	l16ui	a13, a7, 68
	mov.n	a15, a5
	mov.n	a12, a2
	mov.n	a14, a6
	movi.n	a11, 0
	mov.n	a10, a7
	call8	u8g2_DrawUTF8Lines
.LVL54:
	add.n	a10, a2, a10
.LVL55:
	.loc 1 163 0
	addi.n	a11, a10, 3
	l32i.n	a14, sp, 28
	l16ui	a12, a7, 68
	mov.n	a13, a3
	extui	a11, a11, 0, 16
	mov.n	a10, a7
.LVL56:
	call8	u8g2_draw_button_line
.LVL57:
	mov.n	a2, a10
.LVL58:
	.loc 1 165 0
	mov.n	a10, a7
	call8	u8g2_NextPage
.LVL59:
	mov.n	a9, a10
	bnez.n	a10, .L14
	.loc 1 174 0
	movi.n	a12, 0x50
.L19:
	.loc 1 173 0
	mov.n	a10, a7
	s32i.n	a9, sp, 32
	s32i.n	a12, sp, 36
	call8	u8x8_GetMenuEvent
.LVL60:
	.loc 1 174 0
	l32i.n	a12, sp, 36
	l32i.n	a9, sp, 32
	bne	a10, a12, .L15
	.loc 1 175 0
	addi.n	a8, a3, 1
	extui	a9, a8, 0, 8
	j	.L16
.L15:
	.loc 1 176 0
	movi.n	a11, 0x53
	beq	a10, a11, .L16
	.loc 1 178 0
	movi	a11, 0xfb
	and	a11, a10, a11
	movi.n	a13, 0x51
	bne	a11, a13, .L17
	.loc 1 180 0
	addi.n	a8, a3, 1
	extui	a3, a8, 0, 8
.LVL61:
	.loc 1 181 0
	bltu	a3, a2, .L12
	j	.L27
.LVL62:
.L17:
	.loc 1 185 0
	addi	a10, a10, -82
.LVL63:
	movi	a11, 0xfd
	bany	a10, a11, .L19
	.loc 1 163 0
	moveqz	a3, a2, a3
.LVL64:
	.loc 1 189 0
	addi.n	a8, a3, -1
	extui	a3, a8, 0, 8
.LVL65:
	.loc 1 190 0
	j	.L12
.LVL66:
.L16:
	.loc 1 196 0
	mov.n	a2, a9
.LVL67:
	retw.n
.LFE1:
	.size	u8g2_UserInterfaceMessage, .-u8g2_UserInterfaceMessage
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
	.uleb128 0x40
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
	.uleb128 0x50
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
	.4byte	0xb7b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0xc
	.4byte	.LASF160
	.4byte	.LASF161
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
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x5
	.byte	0xb2
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x5
	.byte	0xbc
	.4byte	0x358
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x94
	.byte	0x5
	.2byte	0x11b
	.4byte	0x512
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x11d
	.4byte	0xb7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x11e
	.4byte	0x5af
	.byte	0x2c
	.uleb128 0xe
	.string	"cb"
	.byte	0x5
	.2byte	0x11f
	.4byte	0x789
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x122
	.4byte	0x326
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x123
	.4byte	0x94
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x124
	.4byte	0x94
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x127
	.4byte	0x342
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x128
	.4byte	0x342
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x129
	.4byte	0x342
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x12f
	.4byte	0x342
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x130
	.4byte	0x342
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x133
	.4byte	0x342
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x134
	.4byte	0x342
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x139
	.4byte	0x342
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x13a
	.4byte	0x342
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x13b
	.4byte	0x342
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x13c
	.4byte	0x342
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x140
	.4byte	0x342
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x141
	.4byte	0x342
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x142
	.4byte	0x342
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x143
	.4byte	0x342
	.byte	0x56
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x148
	.4byte	0x337
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x14c
	.4byte	0x768
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x14d
	.4byte	0x75c
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x14e
	.4byte	0x6b7
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x152
	.4byte	0x94
	.byte	0x8c
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x155
	.4byte	0x94
	.byte	0x8d
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x156
	.4byte	0x89
	.byte	0x8e
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x157
	.4byte	0x89
	.byte	0x8f
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x159
	.4byte	0x89
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x15b
	.4byte	0x94
	.byte	0x91
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x15d
	.4byte	0x94
	.byte	0x92
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x161
	.4byte	0x94
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x5
	.byte	0xbd
	.4byte	0x51d
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0xc
	.byte	0x5
	.2byte	0x111
	.4byte	0x552
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x113
	.4byte	0x552
	.byte	0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x114
	.4byte	0x574
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x115
	.4byte	0x57f
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x5
	.byte	0xbf
	.4byte	0x55d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x563
	.uleb128 0xf
	.4byte	0x56e
	.uleb128 0xc
	.4byte	0x56e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x34d
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x5
	.byte	0xc0
	.4byte	0x55d
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x5
	.byte	0xc1
	.4byte	0x58a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x590
	.uleb128 0xf
	.4byte	0x5af
	.uleb128 0xc
	.4byte	0x56e
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x94
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x5
	.byte	0xc2
	.4byte	0x58a
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x18
	.byte	0x5
	.byte	0xc8
	.4byte	0x6b7
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x5
	.byte	0xcb
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x5
	.byte	0xcc
	.4byte	0x94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x5
	.byte	0xcd
	.4byte	0x94
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x5
	.byte	0xce
	.4byte	0x94
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x5
	.byte	0xd1
	.4byte	0x94
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x5
	.byte	0xd2
	.4byte	0x94
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.byte	0xd3
	.4byte	0x94
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x5
	.byte	0xd4
	.4byte	0x94
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x5
	.byte	0xd5
	.4byte	0x94
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x5
	.byte	0xd8
	.4byte	0x89
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF113
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
	.4byte	.LASF114
	.byte	0x5
	.byte	0xdb
	.4byte	0x89
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x5
	.byte	0xde
	.4byte	0x89
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.byte	0xdf
	.4byte	0x89
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x5
	.byte	0xe0
	.4byte	0x89
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x5
	.byte	0xe1
	.4byte	0x89
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x5
	.byte	0xe4
	.4byte	0x9f
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x5
	.byte	0xe5
	.4byte	0x9f
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x5
	.byte	0xe9
	.4byte	0x9f
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x5
	.byte	0xec
	.4byte	0x5ba
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x14
	.byte	0x5
	.byte	0xef
	.4byte	0x75c
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x5
	.byte	0xf1
	.4byte	0x337
	.byte	0
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x5
	.byte	0xf3
	.4byte	0x342
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x5
	.byte	0xf4
	.4byte	0x342
	.byte	0x6
	.uleb128 0x10
	.string	"x"
	.byte	0x5
	.byte	0xf6
	.4byte	0x89
	.byte	0x8
	.uleb128 0x10
	.string	"y"
	.byte	0x5
	.byte	0xf7
	.4byte	0x89
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.byte	0xf8
	.4byte	0x89
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x5
	.byte	0xf9
	.4byte	0x89
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x5
	.byte	0xfb
	.4byte	0x94
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x5
	.byte	0xfc
	.4byte	0x94
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x5
	.byte	0xfd
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x5
	.byte	0xfe
	.4byte	0x94
	.byte	0xf
	.uleb128 0xe
	.string	"dir"
	.byte	0x5
	.2byte	0x100
	.4byte	0x94
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x103
	.4byte	0x6c2
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x5
	.2byte	0x118
	.4byte	0x774
	.uleb128 0xa
	.byte	0x4
	.4byte	0x77a
	.uleb128 0xb
	.4byte	0x342
	.4byte	0x789
	.uleb128 0xc
	.4byte	0x56e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x78f
	.uleb128 0xd
	.4byte	0x512
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0x1
	.byte	0x29
	.4byte	0x94
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e7
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0x1
	.byte	0x29
	.4byte	0x56e
	.4byte	.LLST0
	.uleb128 0x14
	.string	"y"
	.byte	0x1
	.byte	0x29
	.4byte	0x342
	.4byte	.LLST1
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.byte	0x29
	.4byte	0x342
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x1
	.byte	0x29
	.4byte	0x94
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x29
	.4byte	0x8e7
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	.LASF137
	.byte	0x1
	.byte	0x2b
	.4byte	0x342
	.4byte	.LLST3
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x19
	.string	"cnt"
	.byte	0x1
	.byte	0x2e
	.4byte	0x94
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x17
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2f
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.byte	0x31
	.4byte	0x342
	.4byte	.LLST6
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0x32
	.4byte	0x342
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LVL1
	.4byte	0xb06
	.4byte	0x854
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0xb12
	.4byte	0x868
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0xb1e
	.4byte	0x87c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0xb12
	.4byte	0x896
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0xb2a
	.4byte	0x8bc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0xb12
	.4byte	0x8d6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0xb1e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF139
	.uleb128 0xd
	.4byte	0x8ed
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0x1
	.byte	0x63
	.4byte	0x94
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb06
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0x1
	.byte	0x63
	.4byte	0x56e
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0x63
	.4byte	0x8e7
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x1
	.byte	0x63
	.4byte	0x8e7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x1
	.byte	0x63
	.4byte	0x8e7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x1
	.byte	0x63
	.4byte	0x8e7
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x1
	.byte	0x65
	.4byte	0x94
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LASF146
	.byte	0x1
	.byte	0x66
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.byte	0x67
	.4byte	0x342
	.4byte	.LLST13
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0x68
	.4byte	0x342
	.4byte	.LLST14
	.uleb128 0x18
	.string	"yy"
	.byte	0x1
	.byte	0x68
	.4byte	0x342
	.4byte	.LLST15
	.uleb128 0x17
	.4byte	.LASF136
	.byte	0x1
	.byte	0x6a
	.4byte	0x94
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LASF147
	.byte	0x1
	.byte	0x6b
	.4byte	0x94
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	.LASF148
	.byte	0x1
	.byte	0x6c
	.4byte	0x94
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0xb36
	.4byte	0x9e7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0xb42
	.4byte	0x9fb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL30
	.4byte	0xb06
	.4byte	0xa10
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0xb06
	.4byte	0xa24
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL47
	.4byte	0xb4e
	.4byte	0xa38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0xb5a
	.4byte	0xa65
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0xb2a
	.4byte	0xa95
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL54
	.4byte	0xb5a
	.4byte	0xac0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL57
	.4byte	0x794
	.4byte	0xae1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0xb66
	.4byte	0xaf5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL60
	.4byte	0xb72
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x4
	.2byte	0x3d0
	.uleb128 0x1d
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x4
	.2byte	0x3d1
	.uleb128 0x1d
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x5
	.2byte	0x543
	.uleb128 0x1d
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x556
	.uleb128 0x1d
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x533
	.uleb128 0x1d
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x545
	.uleb128 0x1d
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x5
	.2byte	0x4ad
	.uleb128 0x1d
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x557
	.uleb128 0x1d
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x5
	.2byte	0x4ae
	.uleb128 0x1d
	.4byte	.LASF158
	.4byte	.LASF158
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x7
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x1
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x7a
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x3
	.byte	0x77
	.sleb128 142
	.4byte	.LVL30-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x77
	.sleb128 70
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x7a
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x4
	.byte	0x7a
	.sleb128 82
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
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
.LASF121:
	.string	"start_pos_unicode"
.LASF42:
	.string	"reset_pulse_width_ms"
.LASF99:
	.string	"u8g2_update_page_win_cb"
.LASF150:
	.string	"u8x8_GetStringLineStart"
.LASF64:
	.string	"tile_buf_ptr"
.LASF1:
	.string	"__uint8_t"
.LASF20:
	.string	"byte_cb"
.LASF133:
	.string	"u8g2_font_decode_t"
.LASF146:
	.string	"line_height"
.LASF103:
	.string	"glyph_cnt"
.LASF95:
	.string	"update_dimension"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF43:
	.string	"post_reset_wait_ms"
.LASF104:
	.string	"bbx_mode"
.LASF29:
	.string	"utf8_state"
.LASF114:
	.string	"y_offset"
.LASF30:
	.string	"gpio_result"
.LASF109:
	.string	"bits_per_char_x"
.LASF110:
	.string	"bits_per_char_y"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF59:
	.string	"u8g2_uint_t"
.LASF26:
	.string	"is_font_inverse_mode"
.LASF18:
	.string	"display_cb"
.LASF117:
	.string	"ascent_para"
.LASF89:
	.string	"glyph_x_offset"
.LASF41:
	.string	"pre_chip_disable_wait_ns"
.LASF141:
	.string	"u8g2_UserInterfaceMessage"
.LASF137:
	.string	"button_line_width"
.LASF142:
	.string	"title1"
.LASF143:
	.string	"title2"
.LASF144:
	.string	"title3"
.LASF96:
	.string	"update_page_win"
.LASF113:
	.string	"max_char_height"
.LASF13:
	.string	"uint16_t"
.LASF17:
	.string	"next_cb"
.LASF58:
	.string	"u8x8_char_cb"
.LASF21:
	.string	"gpio_and_delay_cb"
.LASF122:
	.string	"u8g2_font_info_t"
.LASF88:
	.string	"font_ref_descent"
.LASF35:
	.string	"u8x8_display_info_t"
.LASF7:
	.string	"__uint32_t"
.LASF105:
	.string	"bits_per_0"
.LASF82:
	.string	"font_calc_vref"
.LASF87:
	.string	"font_ref_ascent"
.LASF44:
	.string	"sda_setup_time_ns"
.LASF101:
	.string	"u8g2_draw_ll_hvline_cb"
.LASF116:
	.string	"descent_g"
.LASF107:
	.string	"bits_per_char_width"
.LASF34:
	.string	"debounce_result_msg"
.LASF8:
	.string	"unsigned int"
.LASF68:
	.string	"pixel_buf_height"
.LASF130:
	.string	"is_transparent"
.LASF27:
	.string	"i2c_address"
.LASF152:
	.string	"u8g2_DrawUTF8Line"
.LASF60:
	.string	"u8g2_t"
.LASF159:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF124:
	.string	"decode_ptr"
.LASF72:
	.string	"width"
.LASF65:
	.string	"tile_buf_height"
.LASF6:
	.string	"short unsigned int"
.LASF85:
	.string	"is_page_clip_window_intersection"
.LASF90:
	.string	"bitmap_transparency"
.LASF78:
	.string	"clip_x0"
.LASF79:
	.string	"clip_x1"
.LASF97:
	.string	"draw_l90"
.LASF32:
	.string	"debounce_last_pin_state"
.LASF135:
	.string	"u8g2"
.LASF118:
	.string	"descent_para"
.LASF16:
	.string	"display_info"
.LASF84:
	.string	"font_info"
.LASF45:
	.string	"sck_pulse_width_ns"
.LASF36:
	.string	"u8x8_struct"
.LASF154:
	.string	"u8g2_SetFontPosBaseline"
.LASF53:
	.string	"default_x_offset"
.LASF24:
	.string	"encoding"
.LASF86:
	.string	"font_height_mode"
.LASF119:
	.string	"start_pos_upper_A"
.LASF54:
	.string	"flipmode_x_offset"
.LASF106:
	.string	"bits_per_1"
.LASF111:
	.string	"bits_per_delta_x"
.LASF129:
	.string	"decode_bit_pos"
.LASF128:
	.string	"glyph_height"
.LASF69:
	.string	"pixel_curr_row"
.LASF19:
	.string	"cad_cb"
.LASF80:
	.string	"clip_y0"
.LASF81:
	.string	"clip_y1"
.LASF112:
	.string	"max_char_width"
.LASF76:
	.string	"user_y0"
.LASF160:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_message.c"
.LASF50:
	.string	"write_pulse_width_ns"
.LASF140:
	.string	"u8g2_draw_button_line"
.LASF70:
	.string	"buf_y0"
.LASF71:
	.string	"buf_y1"
.LASF25:
	.string	"x_offset"
.LASF52:
	.string	"tile_height"
.LASF63:
	.string	"ll_hvline"
.LASF148:
	.string	"event"
.LASF138:
	.string	"is_invert"
.LASF131:
	.string	"fg_color"
.LASF155:
	.string	"u8g2_FirstPage"
.LASF57:
	.string	"u8x8_msg_cb"
.LASF94:
	.string	"u8g2_cb_struct"
.LASF127:
	.string	"glyph_width"
.LASF3:
	.string	"unsigned char"
.LASF115:
	.string	"ascent_A"
.LASF92:
	.string	"is_auto_page_clear"
.LASF67:
	.string	"pixel_buf_width"
.LASF4:
	.string	"short int"
.LASF62:
	.string	"u8x8"
.LASF151:
	.string	"u8g2_GetUTF8Width"
.LASF74:
	.string	"user_x0"
.LASF75:
	.string	"user_x1"
.LASF157:
	.string	"u8g2_NextPage"
.LASF156:
	.string	"u8g2_DrawUTF8Lines"
.LASF49:
	.string	"data_setup_time_ns"
.LASF61:
	.string	"u8g2_struct"
.LASF100:
	.string	"u8g2_draw_l90_cb"
.LASF48:
	.string	"i2c_bus_clock_100kHz"
.LASF14:
	.string	"uint32_t"
.LASF102:
	.string	"_u8g2_font_info_t"
.LASF66:
	.string	"tile_curr_row"
.LASF136:
	.string	"cursor"
.LASF93:
	.string	"u8g2_cb_t"
.LASF47:
	.string	"spi_mode"
.LASF38:
	.string	"chip_enable_level"
.LASF139:
	.string	"char"
.LASF83:
	.string	"font_decode"
.LASF108:
	.string	"bits_per_char_height"
.LASF5:
	.string	"__uint16_t"
.LASF91:
	.string	"draw_color"
.LASF40:
	.string	"post_chip_enable_wait_ns"
.LASF161:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF98:
	.string	"u8g2_update_dimension_cb"
.LASF125:
	.string	"target_x"
.LASF126:
	.string	"target_y"
.LASF15:
	.string	"u8x8_t"
.LASF22:
	.string	"bus_clock"
.LASF77:
	.string	"user_y1"
.LASF147:
	.string	"button_cnt"
.LASF123:
	.string	"_u8g2_font_decode_t"
.LASF11:
	.string	"int8_t"
.LASF33:
	.string	"debounce_state"
.LASF39:
	.string	"chip_disable_level"
.LASF23:
	.string	"font"
.LASF120:
	.string	"start_pos_lower_a"
.LASF12:
	.string	"uint8_t"
.LASF134:
	.string	"u8g2_font_calc_vref_fnptr"
.LASF28:
	.string	"i2c_started"
.LASF55:
	.string	"pixel_width"
.LASF132:
	.string	"bg_color"
.LASF51:
	.string	"tile_width"
.LASF31:
	.string	"debounce_default_pin_state"
.LASF149:
	.string	"u8x8_GetStringLineCnt"
.LASF37:
	.string	"u8x8_display_info_struct"
.LASF145:
	.string	"buttons"
.LASF73:
	.string	"height"
.LASF153:
	.string	"u8g2_SetFontDirection"
.LASF158:
	.string	"u8x8_GetMenuEvent"
.LASF56:
	.string	"pixel_height"
.LASF46:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
