	.file	"u8x8_d_ls013b7dh03.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ls013b7dh03_128x128,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_ls013b7dh03_128x128_display_info
	.align	4
	.global	u8x8_d_ls013b7dh03_128x128
	.type	u8x8_d_ls013b7dh03_128x128, @function
u8x8_d_ls013b7dh03_128x128:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ls013b7dh03.c"
	.loc 1 71 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 71 0
	extui	a3, a3, 0, 8
	.loc 1 74 0
	beqi	a3, 10, .L3
	movi.n	a4, 0xa
.LVL1:
	bltu	a4, a3, .L4
	movi.n	a4, 9
	beq	a3, a4, .L5
	j	.L9
.L4:
	movi.n	a6, 0xb
	.loc 1 121 0
	movi.n	a4, 1
	.loc 1 74 0
	beq	a3, a6, .L2
	movi.n	a4, 0xf
	beq	a3, a4, .L7
	j	.L9
.L5:
	.loc 1 77 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL2:
	j	.L11
.LVL3:
.L3:
	.loc 1 80 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL4:
	.loc 1 83 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL5:
	.loc 1 84 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL6:
.L12:
	.loc 1 85 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL7:
	.loc 1 86 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL8:
.L11:
	.loc 1 121 0
	movi.n	a4, 1
	.loc 1 88 0
	j	.L2
.LVL9:
.L7:
.LBB4:
.LBB5:
	.loc 1 94 0
	l8ui	a3, a5, 6
	.loc 1 100 0
	mov.n	a10, a2
	.loc 1 96 0
	l8ui	a6, a5, 4
	.loc 1 97 0
	l32i.n	a4, a5, 0
	.loc 1 94 0
	slli	a3, a3, 3
	.loc 1 100 0
	call8	u8x8_cad_StartTransfer
.LVL10:
	.loc 1 94 0
	addi.n	a3, a3, 1
	.loc 1 101 0
	movi	a11, 0x80
	mov.n	a10, a2
	.loc 1 94 0
	extui	a3, a3, 0, 8
.LVL11:
	.loc 1 101 0
	call8	u8x8_cad_SendCmd
.LVL12:
	movi.n	a5, 0
.LVL13:
.L8:
	add.n	a8, a3, a5
	.loc 1 106 0
	movi.n	a9, 0x40
	and	a9, a8, a9
	extui	a11, a8, 7, 1
	srai	a9, a9, 5
	or	a9, a11, a9
	slli	a11, a8, 7
	or	a11, a9, a11
	movi.n	a9, 0x20
	and	a9, a8, a9
	srai	a9, a9, 3
	or	a11, a11, a9
	movi.n	a9, 0x10
	and	a9, a8, a9
	srai	a9, a9, 1
	or	a11, a11, a9
	movi.n	a9, 8
	and	a9, a8, a9
	slli	a9, a9, 1
	or	a11, a11, a9
	movi.n	a9, 4
	and	a9, a8, a9
	slli	a9, a9, 3
	or	a11, a11, a9
	movi.n	a9, 2
	and	a8, a8, a9
	slli	a8, a8, 5
	or	a11, a11, a8
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL14:
	.loc 1 107 0
	mov.n	a12, a4
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL15:
	.loc 1 108 0
	movi.n	a11, 0
	mov.n	a10, a2
	addi.n	a5, a5, 1
.LVL16:
	call8	u8x8_cad_SendCmd
.LVL17:
	add.n	a4, a4, a6
.LVL18:
	.loc 1 104 0
	bnei	a5, 8, .L8
	j	.L12
.LVL19:
.L9:
.LBE5:
.LBE4:
	.loc 1 119 0
	movi.n	a4, 0
.LVL20:
.L2:
	.loc 1 122 0
	mov.n	a2, a4
.LVL21:
	retw.n
.LFE0:
	.size	u8x8_d_ls013b7dh03_128x128, .-u8x8_d_ls013b7dh03_128x128
	.section	.text.u8x8_d_ls027b7dh01_400x240,"ax",@progbits
	.literal_position
	.literal .LC1, u8x8_ls027b7dh01_400x240_display_info
	.align	4
	.global	u8x8_d_ls027b7dh01_400x240
	.type	u8x8_d_ls027b7dh01_400x240, @function
u8x8_d_ls027b7dh01_400x240:
.LFB1:
	.loc 1 149 0
.LVL22:
	entry	sp, 32
.LCFI1:
	.loc 1 149 0
	extui	a11, a3, 0, 8
	.loc 1 150 0
	movi.n	a8, 9
	.loc 1 149 0
	mov.n	a10, a2
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 150 0
	bne	a11, a8, .L17
	.loc 1 153 0
	l32r	a11, .LC1
	call8	u8x8_d_helper_display_setup_memory
.LVL23:
	.loc 1 158 0
	movi.n	a10, 1
	j	.L16
.L17:
	.loc 1 156 0
	call8	u8x8_d_ls013b7dh03_128x128
.LVL24:
.L16:
	.loc 1 159 0
	mov.n	a2, a10
.LVL25:
	retw.n
.LFE1:
	.size	u8x8_d_ls027b7dh01_400x240, .-u8x8_d_ls027b7dh01_400x240
	.section	.text.u8x8_d_ls013b7dh05_144x168,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_ls013b7dh05_144x168_display_info
	.align	4
	.global	u8x8_d_ls013b7dh05_144x168
	.type	u8x8_d_ls013b7dh05_144x168, @function
u8x8_d_ls013b7dh05_144x168:
.LFB2:
	.loc 1 185 0
.LVL26:
	entry	sp, 32
.LCFI2:
	.loc 1 185 0
	extui	a11, a3, 0, 8
	.loc 1 186 0
	movi.n	a8, 9
	.loc 1 185 0
	mov.n	a10, a2
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 186 0
	bne	a11, a8, .L22
	.loc 1 189 0
	l32r	a11, .LC2
	call8	u8x8_d_helper_display_setup_memory
.LVL27:
	.loc 1 194 0
	movi.n	a10, 1
	j	.L21
.L22:
	.loc 1 192 0
	call8	u8x8_d_ls013b7dh03_128x128
.LVL28:
.L21:
	.loc 1 195 0
	mov.n	a2, a10
.LVL29:
	retw.n
.LFE2:
	.size	u8x8_d_ls013b7dh05_144x168, .-u8x8_d_ls013b7dh05_144x168
	.section	.rodata.u8x8_ls013b7dh05_144x168_display_info,"a",@progbits
	.align	4
	.type	u8x8_ls013b7dh05_144x168_display_info, @object
	.size	u8x8_ls013b7dh05_144x168_display_info, 24
u8x8_ls013b7dh05_144x168_display_info:
	.byte	1
	.byte	0
	.byte	50
	.byte	50
	.byte	1
	.byte	6
	.byte	-29
	.byte	-1
	.word	1000000
	.byte	2
	.byte	4
	.byte	100
	.byte	100
	.byte	18
	.byte	21
	.byte	0
	.byte	0
	.short	144
	.short	168
	.section	.rodata.u8x8_ls027b7dh01_400x240_display_info,"a",@progbits
	.align	4
	.type	u8x8_ls027b7dh01_400x240_display_info, @object
	.size	u8x8_ls027b7dh01_400x240_display_info, 24
u8x8_ls027b7dh01_400x240_display_info:
	.byte	1
	.byte	0
	.byte	50
	.byte	50
	.byte	1
	.byte	6
	.byte	-29
	.byte	-1
	.word	1000000
	.byte	2
	.byte	4
	.byte	100
	.byte	100
	.byte	50
	.byte	30
	.byte	0
	.byte	0
	.short	400
	.short	240
	.section	.rodata.u8x8_ls013b7dh03_128x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_ls013b7dh03_128x128_display_info, @object
	.size	u8x8_ls013b7dh03_128x128_display_info, 24
u8x8_ls013b7dh03_128x128_display_info:
	.byte	1
	.byte	0
	.byte	50
	.byte	50
	.byte	1
	.byte	6
	.byte	-29
	.byte	-1
	.word	1000000
	.byte	2
	.byte	4
	.byte	100
	.byte	100
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
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
	.4byte	0x73d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xc
	.4byte	.LASF77
	.4byte	.LASF78
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
	.4byte	.LASF79
	.byte	0x1
	.byte	0x46
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3d7
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x46
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x46
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x46
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x46
	.4byte	0x9f
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x49
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	0x374
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	0x39a
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	0x3a5
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	0x3b0
	.uleb128 0x15
	.4byte	0x3b9
	.uleb128 0x15
	.4byte	0x3c2
	.uleb128 0x15
	.4byte	0x3cb
	.uleb128 0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x550
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	0x39a
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	0x3a5
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x18
	.4byte	0x3b0
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	0x3b9
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	0x3c2
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	0x3cb
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x6f8
	.4byte	0x494
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x704
	.4byte	0x4ae
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
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x704
	.4byte	0x519
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x53
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x35
	.byte	0x26
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x37
	.byte	0x24
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x33
	.byte	0x26
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1a
	.byte	0x31
	.byte	0x26
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x710
	.4byte	0x539
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0x704
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x71c
	.4byte	0x56d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ls013b7dh03_128x128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x728
	.4byte	0x581
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x6f8
	.4byte	0x595
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x704
	.4byte	0x5af
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0x704
	.4byte	0x5c8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL8
	.4byte	0x734
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.byte	0x94
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64f
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0x94
	.4byte	0x32d
	.4byte	.LLST12
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0x94
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0x94
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0x94
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x71c
	.4byte	0x645
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ls027b7dh01_400x240_display_info
	.byte	0
	.uleb128 0x20
	.4byte	.LVL24
	.4byte	0x374
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x1
	.byte	0xb8
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c5
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb8
	.4byte	0x32d
	.4byte	.LLST13
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0xb8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0xb8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xb8
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0x71c
	.4byte	0x6bb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ls013b7dh05_144x168_display_info
	.byte	0
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0x374
	.byte	0
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2f
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ls013b7dh03_128x128_display_info
	.uleb128 0x21
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7d
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ls027b7dh01_400x240_display_info
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa1
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ls013b7dh05_144x168_display_info
	.uleb128 0x22
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x259
	.uleb128 0x22
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x255
	.uleb128 0x22
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x258
	.uleb128 0x22
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x22
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x22
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x25a
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF45:
	.string	"spi_mode"
.LASF64:
	.string	"arg_ptr"
.LASF36:
	.string	"chip_enable_level"
.LASF68:
	.string	"u8x8_ls027b7dh01_400x240_display_info"
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
.LASF77:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ls013b7dh03.c"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF62:
	.string	"u8x8"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF63:
	.string	"arg_int"
.LASF72:
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
.LASF71:
	.string	"u8x8_cad_SendCmd"
.LASF74:
	.string	"u8x8_d_helper_display_init"
.LASF75:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF66:
	.string	"u8x8_d_ls013b7dh05_144x168"
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
.LASF67:
	.string	"u8x8_ls013b7dh03_128x128_display_info"
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
.LASF70:
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
.LASF69:
	.string	"u8x8_ls013b7dh05_144x168_display_info"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF79:
	.string	"u8x8_d_ls013b7dh03_128x128"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
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
.LASF73:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF78:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF65:
	.string	"u8x8_d_ls027b7dh01_400x240"
.LASF76:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF57:
	.string	"tile_ptr"
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
