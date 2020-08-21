	.file	"u8x8_message.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" "
	.section	.text.u8x8_draw_button_line,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	u8x8_draw_button_line
	.type	u8x8_draw_button_line, @function
u8x8_draw_button_line:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_message.c"
	.loc 1 39 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 39 0
	extui	a5, a5, 0, 8
	.loc 1 45 0
	mov.n	a10, a6
	.loc 1 39 0
	s32i.n	a5, sp, 0
	.loc 1 45 0
	call8	u8x8_GetStringLineCnt
.LVL1:
	.loc 1 49 0
	movi.n	a9, 0
	.loc 1 39 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 45 0
	mov.n	a5, a10
.LVL2:
	.loc 1 48 0
	mov.n	a7, a9
	.loc 1 49 0
	j	.L2
.LVL3:
.L3:
	.loc 1 51 0 discriminator 3
	mov.n	a10, a9
	mov.n	a11, a6
	s32i.n	a9, sp, 4
	call8	u8x8_GetStringLineStart
.LVL4:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	u8x8_GetUTF8Len
.LVL5:
	l32i.n	a9, sp, 4
	add.n	a10, a7, a10
	extui	a7, a10, 0, 8
.LVL6:
	addi.n	a9, a9, 1
.LVL7:
.L2:
	.loc 1 49 0 discriminator 1
	extui	a10, a9, 0, 8
	bltu	a10, a5, .L3
	.loc 1 53 0
	addi.n	a10, a5, -1
	add.n	a10, a7, a10
	extui	a10, a10, 0, 8
.LVL8:
	.loc 1 56 0
	movi.n	a7, 0
	.loc 1 57 0
	bgeu	a10, a4, .L4
.LVL9:
	.loc 1 61 0
	sub	a10, a4, a10
.LVL10:
	extui	a7, a10, 1, 7
.LVL11:
.L4:
	.loc 1 66 0
	movi.n	a4, 0
.LVL12:
	s8i	a4, a2, 35
.LVL13:
	.loc 1 70 0
	movi.n	a9, 1
	.loc 1 67 0
	movi.n	a4, 0
	j	.L5
.LVL14:
.L7:
	.loc 1 69 0
	l32i.n	a8, sp, 0
	bne	a8, a10, .L6
	.loc 1 70 0
	s8i	a9, a2, 35
.L6:
	.loc 1 72 0 discriminator 2
	mov.n	a11, a6
	mov.n	a10, a4
	s32i.n	a9, sp, 4
	call8	u8x8_GetStringLineStart
.LVL15:
	mov.n	a13, a10
	mov.n	a11, a7
	mov.n	a12, a3
	mov.n	a10, a2
	call8	u8x8_DrawUTF8
.LVL16:
	add.n	a10, a7, a10
	extui	a7, a10, 0, 8
.LVL17:
	.loc 1 74 0 discriminator 2
	l32r	a13, .LC1
	.loc 1 73 0 discriminator 2
	movi.n	a10, 0
.LVL18:
	s8i	a10, a2, 35
	.loc 1 74 0 discriminator 2
	mov.n	a11, a7
	mov.n	a12, a3
	mov.n	a10, a2
	call8	u8x8_DrawUTF8
.LVL19:
	add.n	a10, a7, a10
	l32i.n	a9, sp, 4
	extui	a7, a10, 0, 8
.LVL20:
	addi.n	a4, a4, 1
.LVL21:
.L5:
	extui	a10, a4, 0, 8
	.loc 1 67 0 discriminator 1
	bltu	a10, a5, .L7
	.loc 1 79 0
	mov.n	a2, a5
.LVL22:
	retw.n
.LFE0:
	.size	u8x8_draw_button_line, .-u8x8_draw_button_line
	.section	.text.u8x8_UserInterfaceMessage,"ax",@progbits
	.align	4
	.global	u8x8_UserInterfaceMessage
	.type	u8x8_UserInterfaceMessage, @function
u8x8_UserInterfaceMessage:
.LFB1:
	.loc 1 89 0
.LVL23:
	entry	sp, 32
.LCFI1:
.LVL24:
	.loc 1 96 0
	movi.n	a7, 0
	s8i	a7, a2, 35
.LVL25:
	.loc 1 100 0
	mov.n	a10, a3
	call8	u8x8_GetStringLineCnt
.LVL26:
	.loc 1 102 0
	addi.n	a7, a10, 2
	extui	a7, a7, 0, 8
	.loc 1 101 0
	bnez.n	a4, .L11
	.loc 1 100 0
	addi.n	a10, a10, 1
.LVL27:
	extui	a7, a10, 0, 8
.LVL28:
.L11:
	.loc 1 103 0
	mov.n	a10, a5
	call8	u8x8_GetStringLineCnt
.LVL29:
	add.n	a10, a7, a10
	.loc 1 107 0
	l32i.n	a7, a2, 0
.LVL30:
	.loc 1 103 0
	extui	a10, a10, 0, 8
.LVL31:
	.loc 1 107 0
	l8ui	a8, a7, 17
	.loc 1 106 0
	movi.n	a7, 0
	.loc 1 107 0
	bgeu	a10, a8, .L12
.LVL32:
	.loc 1 110 0
	sub	a10, a8, a10
.LVL33:
	.loc 1 111 0
	extui	a7, a10, 1, 7
.LVL34:
.L12:
	.loc 1 116 0
	mov.n	a10, a2
	call8	u8x8_ClearDisplay
.LVL35:
	.loc 1 118 0
	l32i.n	a8, a2, 0
	mov.n	a14, a3
	l8ui	a13, a8, 16
	mov.n	a12, a7
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_DrawUTF8Lines
.LVL36:
	add.n	a10, a7, a10
	extui	a3, a10, 0, 8
.LVL37:
	.loc 1 119 0
	beqz.n	a4, .L13
	.loc 1 121 0
	l32i.n	a7, a2, 0
	mov.n	a12, a3
	l8ui	a13, a7, 16
	mov.n	a14, a4
	movi.n	a11, 0
	mov.n	a10, a2
.LVL38:
	.loc 1 122 0
	addi.n	a3, a3, 1
.LVL39:
	.loc 1 121 0
	call8	u8x8_DrawUTF8Line
.LVL40:
	.loc 1 122 0
	extui	a3, a3, 0, 8
.LVL41:
.L13:
	.loc 1 124 0
	l32i.n	a4, a2, 0
.LVL42:
	mov.n	a14, a5
	l8ui	a13, a4, 16
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_DrawUTF8Lines
.LVL43:
	.loc 1 126 0
	add.n	a10, a3, a10
.LVL44:
	l32i.n	a3, a2, 0
	extui	a4, a10, 0, 8
	l8ui	a12, a3, 16
	mov.n	a14, a6
	movi.n	a13, 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_draw_button_line
.LVL45:
	mov.n	a5, a10
.LVL46:
	.loc 1 92 0
	movi.n	a3, 0
	.loc 1 131 0
	movi.n	a7, 0x50
.LVL47:
.L14:
	.loc 1 130 0
	mov.n	a10, a2
	call8	u8x8_GetMenuEvent
.LVL48:
	.loc 1 131 0
	bne	a10, a7, .L15
	.loc 1 132 0
	addi.n	a2, a3, 1
.LVL49:
	extui	a2, a2, 0, 8
	retw.n
.LVL50:
.L15:
	.loc 1 133 0
	movi.n	a9, 0x53
	movi.n	a8, 0
	beq	a10, a9, .L24
	.loc 1 135 0
	addi	a9, a10, -81
	movi.n	a11, 1
	moveqz	a8, a11, a9
	extui	a8, a8, 0, 8
	bnez.n	a8, .L25
	addi	a9, a10, -84
	moveqz	a8, a11, a9
	beqz.n	a8, .L17
.L25:
	.loc 1 137 0
	addi.n	a3, a3, 1
.LVL51:
	extui	a3, a3, 0, 8
.LVL52:
	.loc 1 138 0
	bltu	a3, a5, .L33
	.loc 1 139 0
	movi.n	a3, 0
.LVL53:
	j	.L33
.L17:
	.loc 1 142 0
	addi	a9, a10, -82
	moveqz	a8, a11, a9
	mov.n	a9, a8
	bnez.n	a8, .L26
	addi	a8, a10, -85
	mov.n	a10, a11
.LVL54:
	movnez	a10, a9, a8
	beqz.n	a10, .L14
.LVL55:
.L26:
	.loc 1 145 0
	moveqz	a3, a5, a3
.LVL56:
	.loc 1 146 0
	addi.n	a3, a3, -1
.LVL57:
	extui	a3, a3, 0, 8
.LVL58:
.L33:
	.loc 1 147 0
	l32i.n	a8, a2, 0
	mov.n	a14, a6
	l8ui	a12, a8, 16
	mov.n	a13, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_draw_button_line
.LVL59:
	j	.L14
.LVL60:
.L24:
	.loc 1 150 0
	mov.n	a2, a8
.LVL61:
	.loc 1 151 0
	retw.n
.LFE1:
	.size	u8x8_UserInterfaceMessage, .-u8x8_UserInterfaceMessage
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x67e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
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
	.4byte	.LASF61
	.byte	0x1
	.byte	0x26
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45f
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x26
	.4byte	0x2e5
	.4byte	.LLST0
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.byte	0x26
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"w"
	.byte	0x1
	.byte	0x26
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x26
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x26
	.4byte	0x45f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x28
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x13
	.string	"cnt"
	.byte	0x1
	.byte	0x29
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2a
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.byte	0x2b
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x2c
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x621
	.4byte	0x3d7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x62d
	.4byte	0x3eb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x639
	.4byte	0x3ff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x62d
	.4byte	0x419
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0x645
	.4byte	0x439
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x645
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x46c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF60
	.uleb128 0xd
	.4byte	0x465
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x1
	.byte	0x58
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x621
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x58
	.4byte	0x2e5
	.4byte	.LLST7
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x58
	.4byte	0x45f
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x1
	.byte	0x58
	.4byte	0x45f
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x58
	.4byte	0x45f
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.byte	0x58
	.4byte	0x45f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x5a
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x5b
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0x5c
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5d
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x5e
	.4byte	0x7e
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0x621
	.4byte	0x52e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0x621
	.4byte	0x542
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0x651
	.4byte	0x556
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0x65d
	.4byte	0x57b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL40
	.4byte	0x669
	.4byte	0x5a0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 -1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL43
	.4byte	0x65d
	.4byte	0x5c5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL45
	.4byte	0x326
	.4byte	0x5ea
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL48
	.4byte	0x675
	.4byte	0x5fe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL59
	.4byte	0x326
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x3d0
	.uleb128 0x1a
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x3d1
	.uleb128 0x1a
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x3c3
	.uleb128 0x1a
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x3be
	.uleb128 0x1a
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x22f
	.uleb128 0x1a
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x3d6
	.uleb128 0x1a
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x3d4
	.uleb128 0x1a
	.4byte	.LASF77
	.4byte	.LASF77
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
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
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x7
	.byte	0x91
	.sleb128 -44
	.byte	0x94
	.byte	0x1
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x7a
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0x78
	.sleb128 85
	.byte	0x9f
	.4byte	.LVL60
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
.LASF76:
	.string	"u8x8_DrawUTF8Line"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF45:
	.string	"spi_mode"
.LASF68:
	.string	"button_cnt"
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
.LASF74:
	.string	"u8x8_ClearDisplay"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF69:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF71:
	.string	"u8x8_GetStringLineStart"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF57:
	.string	"u8x8"
.LASF77:
	.string	"u8x8_GetMenuEvent"
.LASF70:
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
.LASF79:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_message.c"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF72:
	.string	"u8x8_GetUTF8Len"
.LASF50:
	.string	"tile_height"
.LASF61:
	.string	"u8x8_draw_button_line"
.LASF1:
	.string	"unsigned char"
.LASF58:
	.string	"cursor"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF67:
	.string	"height"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF64:
	.string	"title2"
.LASF63:
	.string	"title1"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF65:
	.string	"title3"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF44:
	.string	"sck_clock_hz"
.LASF5:
	.string	"short unsigned int"
.LASF56:
	.string	"u8x8_char_cb"
.LASF60:
	.string	"char"
.LASF59:
	.string	"total"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF75:
	.string	"u8x8_DrawUTF8Lines"
.LASF66:
	.string	"buttons"
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
.LASF80:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF62:
	.string	"u8x8_UserInterfaceMessage"
.LASF78:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF55:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF73:
	.string	"u8x8_DrawUTF8"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
