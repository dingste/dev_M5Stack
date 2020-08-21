	.file	"u8x8_selection_list.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.section	.text.u8x8_sl_string_line_cb,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	u8x8_sl_string_line_cb
	.type	u8x8_sl_string_line_cb, @function
u8x8_sl_string_line_cb:
.LFB3:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_selection_list.c"
	.loc 1 88 0
.LVL0:
	entry	sp, 32
.LCFI0:
	l8ui	a6, a3, 5
	l8ui	a12, a3, 2
	.loc 1 88 0
	extui	a10, a4, 0, 8
.LVL1:
	sub	a6, a6, a12
	.loc 1 99 0
	l8ui	a8, a3, 3
	.loc 1 96 0
	add.n	a6, a6, a10
	.loc 1 88 0
	mov.n	a11, a5
	.loc 1 96 0
	extui	a6, a6, 0, 8
.LVL2:
	.loc 1 99 0
	bne	a8, a10, .L2
	.loc 1 100 0
	movi.n	a8, 1
	j	.L5
.L2:
	.loc 1 102 0
	movi.n	a8, 0
.L5:
	s8i	a8, a2, 35
	.loc 1 105 0
	call8	u8x8_GetStringLineStart
.LVL3:
	.loc 1 110 0
	l32i.n	a8, a2, 0
	l32r	a14, .LC1
	l8ui	a11, a3, 4
	l8ui	a13, a8, 16
	movnez	a14, a10, a10
.LVL4:
	mov.n	a12, a6
	mov.n	a10, a2
	call8	u8x8_DrawUTF8Line
.LVL5:
	.loc 1 111 0
	movi.n	a3, 0
.LVL6:
	s8i	a3, a2, 35
	retw.n
.LFE3:
	.size	u8x8_sl_string_line_cb, .-u8x8_sl_string_line_cb
	.section	.text.u8sl_Next,"ax",@progbits
	.align	4
	.global	u8sl_Next
	.type	u8sl_Next, @function
u8sl_Next:
.LFB0:
	.loc 1 44 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 45 0
	l8ui	a8, a2, 3
	.loc 1 46 0
	l8ui	a9, a2, 1
	.loc 1 45 0
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
	s8i	a8, a2, 3
	.loc 1 46 0
	bltu	a8, a9, .L7
	.loc 1 48 0
	movi.n	a8, 0
	s8i	a8, a2, 3
	j	.L9
.L7:
	.loc 1 53 0
	l8ui	a10, a2, 0
	l8ui	a9, a2, 2
	addi.n	a11, a8, 1
	add.n	a9, a9, a10
	blt	a11, a9, .L6
	.loc 1 55 0
	sub	a8, a8, a10
	addi.n	a8, a8, 1
.L9:
	s8i	a8, a2, 2
.L6:
	retw.n
.LFE0:
	.size	u8sl_Next, .-u8sl_Next
	.section	.text.u8sl_Prev,"ax",@progbits
	.align	4
	.global	u8sl_Prev
	.type	u8sl_Prev, @function
u8sl_Prev:
.LFB1:
	.loc 1 61 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 62 0
	l8ui	a8, a2, 3
	bnez.n	a8, .L11
.LVL9:
.LBB4:
.LBB5:
	.loc 1 64 0
	l8ui	a9, a2, 1
	.loc 1 65 0
	s8i	a8, a2, 2
	.loc 1 64 0
	addi.n	a10, a9, -1
	.loc 1 66 0
	l8ui	a8, a2, 0
	.loc 1 64 0
	s8i	a10, a2, 3
	.loc 1 66 0
	bgeu	a8, a9, .L10
	.loc 1 67 0
	sub	a9, a9, a8
	s8i	a9, a2, 2
	retw.n
.LVL10:
.L11:
.LBE5:
.LBE4:
	.loc 1 71 0
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	.loc 1 72 0
	l8ui	a9, a2, 2
	.loc 1 71 0
	s8i	a8, a2, 3
	.loc 1 72 0
	bgeu	a8, a9, .L10
	.loc 1 73 0
	s8i	a8, a2, 2
.L10:
	retw.n
.LFE1:
	.size	u8sl_Prev, .-u8sl_Prev
	.section	.text.u8x8_DrawSelectionList,"ax",@progbits
	.align	4
	.global	u8x8_DrawSelectionList
	.type	u8x8_DrawSelectionList, @function
u8x8_DrawSelectionList:
.LFB2:
	.loc 1 78 0
.LVL11:
	entry	sp, 32
.LCFI3:
.LVL12:
	.loc 1 80 0
	movi.n	a6, 0
	j	.L16
.LVL13:
.L17:
	.loc 1 82 0 discriminator 3
	l8ui	a12, a3, 2
	mov.n	a13, a5
	add.n	a12, a6, a12
	extui	a12, a12, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 80 0 discriminator 3
	addi.n	a6, a6, 1
.LVL14:
	.loc 1 82 0 discriminator 3
	callx8	a4
.LVL15:
	.loc 1 80 0 discriminator 3
	extui	a6, a6, 0, 8
.LVL16:
.L16:
	.loc 1 80 0 is_stmt 0 discriminator 1
	l8ui	a8, a3, 0
	bltu	a6, a8, .L17
	.loc 1 84 0 is_stmt 1
	retw.n
.LFE2:
	.size	u8x8_DrawSelectionList, .-u8x8_DrawSelectionList
	.section	.text.u8x8_UserInterfaceSelectionList,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_sl_string_line_cb
	.align	4
	.global	u8x8_UserInterfaceSelectionList
	.type	u8x8_UserInterfaceSelectionList, @function
u8x8_UserInterfaceSelectionList:
.LFB4:
	.loc 1 122 0
.LVL17:
	entry	sp, 48
.LCFI4:
	.loc 1 122 0
	extui	a4, a4, 0, 8
	.loc 1 127 0
	beqz.n	a4, .L19
	.loc 1 128 0
	addi.n	a4, a4, -1
.LVL18:
	extui	a4, a4, 0, 8
.LVL19:
.L19:
	.loc 1 130 0
	l32i.n	a8, a2, 0
	.loc 1 131 0
	mov.n	a10, a5
	.loc 1 130 0
	l8ui	a8, a8, 17
	s8i	a8, sp, 0
	.loc 1 131 0
	call8	u8x8_GetStringLineCnt
.LVL20:
	.loc 1 132 0
	movi.n	a8, 0
	.loc 1 131 0
	s8i	a10, sp, 1
	.loc 1 132 0
	s8i	a8, sp, 2
	.loc 1 133 0
	s8i	a4, sp, 3
	.loc 1 134 0
	s8i	a8, sp, 4
	.loc 1 135 0
	s8i	a8, sp, 5
	.loc 1 139 0
	s8i	a8, a2, 35
	.loc 1 141 0
	beqz.n	a3, .L20
	.loc 1 143 0
	l32i.n	a4, a2, 0
.LVL21:
	movi.n	a12, 0
	l8ui	a13, a4, 16
	mov.n	a14, a3
	mov.n	a11, a12
	mov.n	a10, a2
	call8	u8x8_DrawUTF8Lines
.LVL22:
	.loc 1 144 0
	l8ui	a3, sp, 5
.LVL23:
	add.n	a3, a10, a3
	s8i	a3, sp, 5
	.loc 1 145 0
	l8ui	a3, sp, 0
	sub	a10, a3, a10
.LVL24:
	s8i	a10, sp, 0
.L20:
	.loc 1 148 0
	l8ui	a4, sp, 1
	l8ui	a3, sp, 3
	bltu	a3, a4, .L21
	.loc 1 149 0
	addi.n	a4, a4, -1
	s8i	a4, sp, 3
.L21:
	.loc 1 152 0
	l32r	a4, .LC2
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_DrawSelectionList
.LVL25:
	.loc 1 157 0
	movi.n	a3, 0x50
.L22:
	.loc 1 156 0
	mov.n	a10, a2
	call8	u8x8_GetMenuEvent
.LVL26:
	.loc 1 157 0
	bne	a10, a3, .L23
	.loc 1 158 0
	l8ui	a2, sp, 3
.LVL27:
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
	retw.n
.LVL28:
.L23:
	.loc 1 159 0
	movi.n	a8, 0x53
	beq	a10, a8, .L27
	.loc 1 161 0
	movi	a8, 0xfb
	and	a8, a10, a8
	movi.n	a9, 0x51
	bne	a8, a9, .L25
	.loc 1 163 0
	mov.n	a10, sp
.LVL29:
	call8	u8sl_Next
.LVL30:
	j	.L34
.LVL31:
.L25:
	.loc 1 166 0
	addi	a10, a10, -82
.LVL32:
	movi	a8, 0xfd
	bany	a10, a8, .L22
	.loc 1 168 0
	mov.n	a10, sp
.LVL33:
	call8	u8sl_Prev
.LVL34:
.L34:
	.loc 1 169 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_DrawSelectionList
.LVL35:
	j	.L22
.LVL36:
.L27:
	.loc 1 160 0
	movi.n	a2, 0
.LVL37:
	.loc 1 172 0
	retw.n
.LFE4:
	.size	u8x8_UserInterfaceSelectionList, .-u8x8_UserInterfaceSelectionList
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x20
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
	.4byte	0x6a8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
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
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x6
	.byte	0x4
	.2byte	0x3db
	.4byte	0x37e
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x3dd
	.4byte	0x7e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x3de
	.4byte	0x7e
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x3df
	.4byte	0x7e
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x3e0
	.4byte	0x7e
	.byte	0x3
	.uleb128 0xe
	.string	"x"
	.byte	0x4
	.2byte	0x3e2
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xe
	.string	"y"
	.byte	0x4
	.2byte	0x3e3
	.4byte	0x7e
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x3e5
	.4byte	0x326
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x3e7
	.4byte	0x396
	.uleb128 0xa
	.byte	0x4
	.4byte	0x39c
	.uleb128 0x10
	.4byte	0x3b6
	.uleb128 0xc
	.4byte	0x2e5
	.uleb128 0xc
	.4byte	0x3b6
	.uleb128 0xc
	.4byte	0x7e
	.uleb128 0xc
	.4byte	0x3bc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37e
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3c2
	.uleb128 0x11
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	0x3db
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x3c
	.4byte	0x3b6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x57
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x462
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x57
	.4byte	0x2e5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x57
	.4byte	0x3b6
	.4byte	.LLST0
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.byte	0x57
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"aux"
	.byte	0x1
	.byte	0x57
	.4byte	0x3bc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x59
	.4byte	0x462
	.4byte	.LLST1
	.uleb128 0x18
	.string	"row"
	.byte	0x1
	.byte	0x5a
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x66f
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x67b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x46f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF66
	.uleb128 0xd
	.4byte	0x468
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x497
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2b
	.4byte	0x3b6
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1c
	.4byte	0x3c3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c5
	.uleb128 0x1d
	.4byte	0x3cf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1f
	.4byte	0x3cf
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x534
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x4d
	.4byte	0x2e5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4d
	.4byte	0x3b6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x4d
	.4byte	0x38a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"aux"
	.byte	0x1
	.byte	0x4d
	.4byte	0x3bc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LVL15
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
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF84
	.byte	0x1
	.byte	0x79
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66f
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0x79
	.4byte	0x2e5
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x79
	.4byte	0x462
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x79
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x17
	.string	"sl"
	.byte	0x1
	.byte	0x79
	.4byte	0x462
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7b
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LASF73
	.byte	0x1
	.byte	0x7c
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7d
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0x687
	.4byte	0x5c6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x693
	.4byte	0x5ea
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x4c5
	.4byte	0x610
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL26
	.4byte	0x69f
	.4byte	0x624
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x474
	.4byte	0x638
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL34
	.4byte	0x3c3
	.4byte	0x64c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x4c5
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x3d1
	.uleb128 0x25
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x3d4
	.uleb128 0x25
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x3d0
	.uleb128 0x25
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x3d6
	.uleb128 0x25
	.4byte	.LASF79
	.4byte	.LASF79
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x11
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	.LC0
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x8
	.byte	0x73
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0x7a
	.sleb128 82
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
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
.LASF42:
	.string	"sda_setup_time_ns"
.LASF74:
	.string	"title_lines"
.LASF65:
	.string	"u8sl"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF73:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF75:
	.string	"u8x8_GetStringLineStart"
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_selection_list.c"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF58:
	.string	"visible"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF71:
	.string	"title"
.LASF64:
	.string	"u8x8"
.LASF62:
	.string	"u8sl_t"
.LASF77:
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
.LASF63:
	.string	"u8x8_sl_cb"
.LASF72:
	.string	"start_pos"
.LASF3:
	.string	"__uint8_t"
.LASF69:
	.string	"u8x8_DrawSelectionList"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF50:
	.string	"tile_height"
.LASF59:
	.string	"total"
.LASF1:
	.string	"unsigned char"
.LASF83:
	.string	"u8sl_Prev"
.LASF84:
	.string	"u8x8_UserInterfaceSelectionList"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"u8x8_sl_string_line_cb"
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
.LASF78:
	.string	"u8x8_DrawUTF8Lines"
.LASF70:
	.string	"sl_cb"
.LASF79:
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
.LASF57:
	.string	"_u8sl_struct"
.LASF25:
	.string	"i2c_address"
.LASF61:
	.string	"current_pos"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF60:
	.string	"first_pos"
.LASF26:
	.string	"i2c_started"
.LASF17:
	.string	"cad_cb"
.LASF68:
	.string	"u8sl_Next"
.LASF82:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF80:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF55:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF76:
	.string	"u8x8_DrawUTF8Line"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
