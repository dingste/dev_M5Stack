	.file	"u8x8_display.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_helper_display_setup_memory,"ax",@progbits
	.align	4
	.global	u8x8_d_helper_display_setup_memory
	.type	u8x8_d_helper_display_setup_memory, @function
u8x8_d_helper_display_setup_memory:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_display.c"
	.loc 1 53 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 55 0
	s32i.n	a3, a2, 0
	.loc 1 56 0
	l8ui	a3, a3, 18
.LVL1:
	s8i	a3, a2, 34
	retw.n
.LFE0:
	.size	u8x8_d_helper_display_setup_memory, .-u8x8_d_helper_display_setup_memory
	.section	.text.u8x8_d_helper_display_init,"ax",@progbits
	.align	4
	.global	u8x8_d_helper_display_init
	.type	u8x8_d_helper_display_init, @function
u8x8_d_helper_display_init:
.LFB1:
	.loc 1 65 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 67 0
	l32i.n	a8, a2, 20
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 0x28
	mov.n	a10, a2
	callx8	a8
.LVL3:
	.loc 1 68 0
	movi.n	a13, 0
	l32i.n	a8, a2, 12
	mov.n	a12, a13
	movi.n	a11, 0x14
	mov.n	a10, a2
	callx8	a8
.LVL4:
	.loc 1 71 0
	mov.n	a10, a2
	movi.n	a12, 1
	movi.n	a11, 0x4b
	call8	u8x8_gpio_call
.LVL5:
	.loc 1 72 0
	l32i.n	a8, a2, 0
	mov.n	a10, a2
	l8ui	a12, a8, 4
	movi.n	a11, 0x29
	call8	u8x8_gpio_call
.LVL6:
	.loc 1 73 0
	mov.n	a10, a2
	movi.n	a12, 0
	movi.n	a11, 0x4b
	call8	u8x8_gpio_call
.LVL7:
	.loc 1 74 0
	l32i.n	a8, a2, 0
	mov.n	a10, a2
	l8ui	a12, a8, 4
	movi.n	a11, 0x29
	call8	u8x8_gpio_call
.LVL8:
	.loc 1 75 0
	mov.n	a10, a2
	movi.n	a12, 1
	movi.n	a11, 0x4b
	call8	u8x8_gpio_call
.LVL9:
	.loc 1 76 0
	l32i.n	a8, a2, 0
	movi.n	a11, 0x29
	l8ui	a12, a8, 5
	mov.n	a10, a2
	call8	u8x8_gpio_call
.LVL10:
	retw.n
.LFE1:
	.size	u8x8_d_helper_display_init, .-u8x8_d_helper_display_init
	.section	.text.u8x8_DrawTile,"ax",@progbits
	.align	4
	.global	u8x8_DrawTile
	.type	u8x8_DrawTile, @function
u8x8_DrawTile:
.LFB2:
	.loc 1 83 0
.LVL11:
	entry	sp, 48
.LCFI2:
	.loc 1 89 0
	l32i.n	a8, a2, 8
	.loc 1 83 0
	mov.n	a10, a2
	.loc 1 85 0
	s8i	a3, sp, 5
	.loc 1 86 0
	s8i	a4, sp, 6
	.loc 1 87 0
	s8i	a5, sp, 4
	.loc 1 88 0
	s32i.n	a6, sp, 0
	.loc 1 89 0
	mov.n	a13, sp
	movi.n	a12, 1
	movi.n	a11, 0xf
	callx8	a8
.LVL12:
	.loc 1 90 0
	mov.n	a2, a10
.LVL13:
	retw.n
.LFE2:
	.size	u8x8_DrawTile, .-u8x8_DrawTile
	.section	.text.u8x8_SetupMemory,"ax",@progbits
	.align	4
	.global	u8x8_SetupMemory
	.type	u8x8_SetupMemory, @function
u8x8_SetupMemory:
.LFB3:
	.loc 1 94 0
.LVL14:
	entry	sp, 32
.LCFI3:
	.loc 1 95 0
	movi.n	a13, 0
	l32i.n	a8, a2, 8
	.loc 1 94 0
	mov.n	a10, a2
	.loc 1 95 0
	mov.n	a12, a13
	movi.n	a11, 9
	callx8	a8
.LVL15:
	retw.n
.LFE3:
	.size	u8x8_SetupMemory, .-u8x8_SetupMemory
	.section	.text.u8x8_InitDisplay,"ax",@progbits
	.align	4
	.global	u8x8_InitDisplay
	.type	u8x8_InitDisplay, @function
u8x8_InitDisplay:
.LFB4:
	.loc 1 99 0
.LVL16:
	entry	sp, 32
.LCFI4:
	.loc 1 100 0
	movi.n	a13, 0
	l32i.n	a8, a2, 8
	.loc 1 99 0
	mov.n	a10, a2
	.loc 1 100 0
	mov.n	a12, a13
	movi.n	a11, 0xa
	callx8	a8
.LVL17:
	retw.n
.LFE4:
	.size	u8x8_InitDisplay, .-u8x8_InitDisplay
	.section	.text.u8x8_SetPowerSave,"ax",@progbits
	.align	4
	.global	u8x8_SetPowerSave
	.type	u8x8_SetPowerSave, @function
u8x8_SetPowerSave:
.LFB5:
	.loc 1 104 0
.LVL18:
	entry	sp, 32
.LCFI5:
	.loc 1 105 0
	l32i.n	a8, a2, 8
	.loc 1 104 0
	mov.n	a10, a2
	.loc 1 105 0
	movi.n	a13, 0
	extui	a12, a3, 0, 8
	movi.n	a11, 0xb
	callx8	a8
.LVL19:
	retw.n
.LFE5:
	.size	u8x8_SetPowerSave, .-u8x8_SetPowerSave
	.section	.text.u8x8_SetFlipMode,"ax",@progbits
	.align	4
	.global	u8x8_SetFlipMode
	.type	u8x8_SetFlipMode, @function
u8x8_SetFlipMode:
.LFB6:
	.loc 1 109 0
.LVL20:
	entry	sp, 32
.LCFI6:
	.loc 1 110 0
	l32i.n	a8, a2, 8
	.loc 1 109 0
	mov.n	a10, a2
	.loc 1 110 0
	movi.n	a13, 0
	extui	a12, a3, 0, 8
	movi.n	a11, 0xd
	callx8	a8
.LVL21:
	retw.n
.LFE6:
	.size	u8x8_SetFlipMode, .-u8x8_SetFlipMode
	.section	.text.u8x8_SetContrast,"ax",@progbits
	.align	4
	.global	u8x8_SetContrast
	.type	u8x8_SetContrast, @function
u8x8_SetContrast:
.LFB7:
	.loc 1 114 0
.LVL22:
	entry	sp, 32
.LCFI7:
	.loc 1 115 0
	l32i.n	a8, a2, 8
	.loc 1 114 0
	mov.n	a10, a2
	.loc 1 115 0
	movi.n	a13, 0
	extui	a12, a3, 0, 8
	movi.n	a11, 0xe
	callx8	a8
.LVL23:
	retw.n
.LFE7:
	.size	u8x8_SetContrast, .-u8x8_SetContrast
	.section	.text.u8x8_RefreshDisplay,"ax",@progbits
	.align	4
	.global	u8x8_RefreshDisplay
	.type	u8x8_RefreshDisplay, @function
u8x8_RefreshDisplay:
.LFB8:
	.loc 1 119 0
.LVL24:
	entry	sp, 32
.LCFI8:
	.loc 1 120 0
	movi.n	a13, 0
	l32i.n	a8, a2, 8
	.loc 1 119 0
	mov.n	a10, a2
	.loc 1 120 0
	mov.n	a12, a13
	movi.n	a11, 0x10
	callx8	a8
.LVL25:
	retw.n
.LFE8:
	.size	u8x8_RefreshDisplay, .-u8x8_RefreshDisplay
	.section	.text.u8x8_ClearDisplayWithTile,"ax",@progbits
	.align	4
	.global	u8x8_ClearDisplayWithTile
	.type	u8x8_ClearDisplayWithTile, @function
u8x8_ClearDisplayWithTile:
.LFB9:
	.loc 1 124 0
.LVL26:
	entry	sp, 48
.LCFI9:
	.loc 1 130 0
	s32i.n	a3, sp, 0
	.loc 1 132 0
	l32i.n	a3, a2, 0
.LVL27:
	.loc 1 128 0
	movi.n	a8, 0
	.loc 1 129 0
	movi.n	a9, 1
	.loc 1 132 0
	l8ui	a3, a3, 17
.LVL28:
	.loc 1 128 0
	s8i	a8, sp, 5
	.loc 1 129 0
	s8i	a9, sp, 4
	.loc 1 133 0
	s8i	a8, sp, 6
.LVL29:
.L11:
	.loc 1 136 0 discriminator 1
	l32i.n	a9, a2, 0
	l32i.n	a8, a2, 8
	l8ui	a12, a9, 16
	mov.n	a13, sp
	movi.n	a11, 0xf
	mov.n	a10, a2
	callx8	a8
.LVL30:
	.loc 1 137 0 discriminator 1
	l8ui	a8, sp, 6
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
	s8i	a8, sp, 6
	.loc 1 138 0 discriminator 1
	bltu	a8, a3, .L11
	.loc 1 139 0
	retw.n
.LFE9:
	.size	u8x8_ClearDisplayWithTile, .-u8x8_ClearDisplayWithTile
	.section	.text.u8x8_ClearDisplay,"ax",@progbits
	.align	4
	.global	u8x8_ClearDisplay
	.type	u8x8_ClearDisplay, @function
u8x8_ClearDisplay:
.LFB10:
	.loc 1 142 0
.LVL31:
	entry	sp, 48
.LCFI10:
	.loc 1 143 0
	movi.n	a8, 0
	.loc 1 144 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 143 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	.loc 1 144 0
	call8	u8x8_ClearDisplayWithTile
.LVL32:
	retw.n
.LFE10:
	.size	u8x8_ClearDisplay, .-u8x8_ClearDisplay
	.section	.rodata
.LC0:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.text.u8x8_FillDisplay,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	u8x8_FillDisplay
	.type	u8x8_FillDisplay, @function
u8x8_FillDisplay:
.LFB11:
	.loc 1 148 0
.LVL33:
	entry	sp, 48
.LCFI11:
	.loc 1 149 0
	l32r	a11, .LC1
	movi.n	a12, 8
	mov.n	a10, sp
	call8	memcpy
.LVL34:
	.loc 1 150 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_ClearDisplayWithTile
.LVL35:
	retw.n
.LFE11:
	.size	u8x8_FillDisplay, .-u8x8_FillDisplay
	.section	.text.u8x8_ClearLine,"ax",@progbits
	.align	4
	.global	u8x8_ClearLine
	.type	u8x8_ClearLine, @function
u8x8_ClearLine:
.LFB12:
	.loc 1 154 0
.LVL36:
	entry	sp, 48
.LCFI12:
	.loc 1 157 0
	l32i.n	a9, a2, 0
	.loc 1 155 0
	movi.n	a8, 0
	.loc 1 157 0
	l8ui	a11, a9, 17
	.loc 1 154 0
	extui	a3, a3, 0, 8
	.loc 1 155 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	.loc 1 154 0
	mov.n	a10, a2
	.loc 1 157 0
	bgeu	a3, a11, .L15
	.loc 1 160 0
	s8i	a3, sp, 14
	.loc 1 161 0
	movi.n	a3, 1
.LVL37:
	s8i	a3, sp, 12
	.loc 1 163 0
	l8ui	a12, a9, 16
	l32i.n	a3, a2, 8
	.loc 1 159 0
	s8i	a8, sp, 13
	.loc 1 162 0
	s32i.n	sp, sp, 8
	.loc 1 163 0
	addi.n	a13, sp, 8
	movi.n	a11, 0xf
	callx8	a3
.LVL38:
.L15:
	retw.n
.LFE12:
	.size	u8x8_ClearLine, .-u8x8_ClearLine
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
	.uleb128 0x30
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
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x87e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.4byte	.LASF82
	.4byte	.LASF83
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
	.4byte	.LASF63
	.byte	0x1
	.byte	0x34
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a6
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x34
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.byte	0x34
	.4byte	0x35e
	.4byte	.LLST0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x1
	.byte	0x40
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4af
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x40
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x3e8
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL4
	.4byte	0x407
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x86c
	.4byte	0x426
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x86c
	.4byte	0x440
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x86c
	.4byte	0x45f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0x86c
	.4byte	0x479
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x86c
	.4byte	0x498
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x86c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x1
	.byte	0x52
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x532
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x52
	.4byte	0x32d
	.4byte	.LLST1
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x52
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x52
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"cnt"
	.byte	0x1
	.byte	0x52
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1
	.byte	0x52
	.4byte	0x358
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x54
	.4byte	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL12
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x570
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5d
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL15
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x62
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ae
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x62
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL17
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x67
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fd
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x67
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x67
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL19
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64c
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6c
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0x6c
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL21
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0x71
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69b
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x71
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x71
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL23
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x1
	.byte	0x76
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d9
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x76
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL25
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73d
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7b
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x7b
	.4byte	0x369
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x7d
	.4byte	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"h"
	.byte	0x1
	.byte	0x7e
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LVL30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x784
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8d
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0x8f
	.4byte	0x784
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x6d9
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x794
	.uleb128 0x1e
	.4byte	0x794
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF77
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x1
	.byte	0x93
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x804
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x93
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0x95
	.4byte	0x784
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0x878
	.4byte	0x7ed
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0x6d9
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x1
	.byte	0x99
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86c
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x99
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0x9b
	.4byte	0x784
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LVL38
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x2f5
	.uleb128 0x21
	.4byte	.LASF86
	.4byte	.LASF86
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL29
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.4byte	.LVL29
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"u8x8_SetContrast"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF65:
	.string	"u8x8_SetupMemory"
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
	.string	"sizetype"
.LASF76:
	.string	"u8x8_ClearDisplay"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF70:
	.string	"mode"
.LASF4:
	.string	"__uint16_t"
.LASF86:
	.string	"memcpy"
.LASF72:
	.string	"value"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF62:
	.string	"u8x8"
.LASF85:
	.string	"u8x8_gpio_call"
.LASF80:
	.string	"line"
.LASF57:
	.string	"tile_ptr"
.LASF20:
	.string	"bus_clock"
.LASF51:
	.string	"default_x_offset"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF66:
	.string	"u8x8_InitDisplay"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"gpio_result"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF75:
	.string	"tile"
.LASF64:
	.string	"u8x8_d_helper_display_init"
.LASF68:
	.string	"is_enable"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF79:
	.string	"u8x8_ClearLine"
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
.LASF67:
	.string	"u8x8_SetPowerSave"
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
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF84:
	.string	"u8x8_DrawTile"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF69:
	.string	"u8x8_SetFlipMode"
.LASF37:
	.string	"chip_disable_level"
.LASF74:
	.string	"u8x8_ClearDisplayWithTile"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF26:
	.string	"i2c_started"
.LASF63:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF83:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF81:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF78:
	.string	"u8x8_FillDisplay"
.LASF15:
	.string	"next_cb"
.LASF82:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_display.c"
.LASF73:
	.string	"u8x8_RefreshDisplay"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
