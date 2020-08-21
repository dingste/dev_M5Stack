	.file	"u8x8_d_ssd1317.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1317_96x96,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_ssd1317_96x96_powersave0_seq
	.literal .LC1, u8x8_d_ssd1317_96x96_powersave1_seq
	.literal .LC2, u8x8_d_ssd1317_96x96_flip0_seq
	.literal .LC3, u8x8_d_ssd1317_96x96_flip1_seq
	.literal .LC4, u8x8_d_ssd1317_96x96_init_seq
	.literal .LC5, u8x8_ssd1317_96x96_display_info
	.align	4
	.global	u8x8_d_ssd1317_96x96
	.type	u8x8_d_ssd1317_96x96, @function
u8x8_d_ssd1317_96x96:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1317.c"
	.loc 1 223 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 223 0
	extui	a3, a3, 0, 8
.LVL2:
.LBB4:
.LBB5:
	.loc 1 121 0
	movi.n	a8, 0xd
.LBE5:
.LBE4:
	.loc 1 223 0
	extui	a4, a4, 0, 8
.LVL3:
.LBB7:
.LBB6:
	.loc 1 121 0
	beq	a3, a8, .L3
	bltu	a8, a3, .L4
	movi.n	a5, 0xb
.LVL4:
	beq	a3, a5, .L5
	j	.L2
.LVL5:
.L4:
	movi.n	a8, 0xe
	beq	a3, a8, .L6
	movi.n	a8, 0xf
	beq	a3, a8, .L7
	j	.L2
.LVL6:
.L5:
	.loc 1 136 0
	l32r	a11, .LC0
	.loc 1 135 0
	beqz.n	a4, .L21
.L8:
	.loc 1 138 0
	l32r	a11, .LC1
.LVL7:
.L21:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL8:
	j	.L9
.LVL9:
.L3:
	.loc 1 141 0
	bnez.n	a4, .L10
	.loc 1 143 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL10:
	.loc 1 144 0
	l32i.n	a3, a2, 0
.LVL11:
	l8ui	a3, a3, 18
	j	.L20
.L10:
	.loc 1 148 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL12:
	.loc 1 149 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L20:
	s8i	a3, a2, 34
	j	.L9
.L6:
	.loc 1 154 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL13:
	.loc 1 155 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL14:
	.loc 1 156 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL15:
	j	.L19
.L7:
	.loc 1 161 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL16:
	.loc 1 164 0
	l8ui	a8, a2, 34
	.loc 1 162 0
	l8ui	a3, a5, 5
.LVL17:
	.loc 1 166 0
	movi.n	a11, 0x40
	.loc 1 164 0
	addx8	a3, a3, a8
.LVL18:
	.loc 1 166 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL19:
	.loc 1 164 0
	extui	a3, a3, 0, 8
.LVL20:
	.loc 1 168 0
	movi.n	a8, 0x10
	srli	a11, a3, 4
	or	a11, a11, a8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL21:
	.loc 1 169 0
	extui	a11, a3, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL22:
	.loc 1 170 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
.LVL23:
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL24:
.L11:
	.loc 1 177 0
	l8ui	a11, a5, 4
	l32i.n	a12, a5, 0
	slli	a11, a11, 3
	.loc 1 186 0
	addi.n	a4, a4, -1
.LVL25:
	.loc 1 177 0
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 186 0
	extui	a4, a4, 0, 8
.LVL26:
	.loc 1 177 0
	call8	u8x8_cad_SendData
.LVL27:
	.loc 1 187 0
	bnez.n	a4, .L11
.LVL28:
.L19:
	.loc 1 189 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL29:
	j	.L9
.LVL30:
.L12:
.LBE6:
.LBE7:
	.loc 1 231 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL31:
	.loc 1 232 0
	l32r	a11, .LC4
	j	.L21
.L14:
	.loc 1 235 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL32:
	j	.L9
.L18:
	.loc 1 238 0
	movi.n	a2, 0
.LVL33:
	retw.n
.LVL34:
.L2:
	.loc 1 228 0
	movi.n	a4, 9
	beq	a3, a4, .L14
	beqi	a3, 10, .L12
	j	.L18
.LVL35:
.L9:
	.loc 1 226 0
	movi.n	a2, 1
.LVL36:
	.loc 1 241 0
	retw.n
.LFE1:
	.size	u8x8_d_ssd1317_96x96, .-u8x8_d_ssd1317_96x96
	.section	.rodata.u8x8_ssd1317_96x96_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1317_96x96_display_info, @object
	.size	u8x8_ssd1317_96x96_display_info, 24
u8x8_ssd1317_96x96_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	50
	.byte	50
	.word	8000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	12
	.byte	12
	.byte	16
	.byte	16
	.short	96
	.short	96
	.section	.rodata.u8x8_d_ssd1317_96x96_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1317_96x96_flip1_seq, @object
	.size	u8x8_d_ssd1317_96x96_flip1_seq, 7
u8x8_d_ssd1317_96x96_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1317_96x96_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1317_96x96_flip0_seq, @object
	.size	u8x8_d_ssd1317_96x96_flip0_seq, 7
u8x8_d_ssd1317_96x96_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1317_96x96_powersave1_seq,"a",@progbits
	.type	u8x8_d_ssd1317_96x96_powersave1_seq, @object
	.size	u8x8_d_ssd1317_96x96_powersave1_seq, 5
u8x8_d_ssd1317_96x96_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1317_96x96_powersave0_seq,"a",@progbits
	.type	u8x8_d_ssd1317_96x96_powersave0_seq, @object
	.size	u8x8_d_ssd1317_96x96_powersave0_seq, 5
u8x8_d_ssd1317_96x96_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1317_96x96_init_seq,"a",@progbits
	.type	u8x8_d_ssd1317_96x96_init_seq, @object
	.size	u8x8_d_ssd1317_96x96_init_seq, 55
u8x8_d_ssd1317_96x96_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-43
	.byte	22
	.byte	-47
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-45
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-115
	.byte	22
	.byte	20
	.byte	21
	.byte	32
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-38
	.byte	22
	.byte	18
	.byte	21
	.byte	-127
	.byte	22
	.byte	-97
	.byte	21
	.byte	-39
	.byte	22
	.byte	-15
	.byte	21
	.byte	-37
	.byte	22
	.byte	-1
	.byte	21
	.byte	46
	.byte	21
	.byte	-92
	.byte	21
	.byte	-90
	.byte	25
	.byte	-1
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6f3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	.LASF83
	.byte	0x1
	.byte	0x75
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3ce
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x75
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x75
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x75
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x75
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x77
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x77
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x78
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0xde
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xde
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x15
	.string	"msg"
	.byte	0x1
	.byte	0xde
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0xde
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0xde
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	0x374
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe1
	.4byte	0x5b2
	.uleb128 0x17
	.4byte	0x3a5
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	0x39a
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	0x38f
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	0x384
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x19
	.4byte	0x3b0
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	0x3b9
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	0x3c2
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x696
	.4byte	0x48e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x696
	.4byte	0x4ab
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1317_96x96_flip0_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0x696
	.4byte	0x4c8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1317_96x96_flip1_seq
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x6a2
	.4byte	0x4dc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x6ae
	.4byte	0x4f6
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
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x6ba
	.4byte	0x510
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x6a2
	.4byte	0x524
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x6ae
	.4byte	0x53e
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
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x6ae
	.4byte	0x55c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x40
	.byte	0x21
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x6ba
	.4byte	0x578
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL24
	.4byte	0x6ba
	.4byte	0x58c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0x6c6
	.4byte	0x5a0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL29
	.4byte	0x6d2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0x6de
	.4byte	0x5c6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL32
	.4byte	0x6ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1317_96x96_display_info
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x5f0
	.uleb128 0x1e
	.4byte	0x5f0
	.byte	0x36
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF65
	.uleb128 0x1f
	.4byte	.LASF66
	.byte	0x1
	.byte	0x2f
	.4byte	0x608
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1317_96x96_init_seq
	.uleb128 0xe
	.4byte	0x5e0
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x61d
	.uleb128 0x1e
	.4byte	0x5f0
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF67
	.byte	0x1
	.byte	0x56
	.4byte	0x62e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1317_96x96_powersave0_seq
	.uleb128 0xe
	.4byte	0x60d
	.uleb128 0x1f
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5d
	.4byte	0x644
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1317_96x96_powersave1_seq
	.uleb128 0xe
	.4byte	0x60d
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x659
	.uleb128 0x1e
	.4byte	0x5f0
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF69
	.byte	0x1
	.byte	0x64
	.4byte	0x66a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1317_96x96_flip0_seq
	.uleb128 0xe
	.4byte	0x649
	.uleb128 0x1f
	.4byte	.LASF70
	.byte	0x1
	.byte	0x6c
	.4byte	0x680
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1317_96x96_flip1_seq
	.uleb128 0xe
	.4byte	0x649
	.uleb128 0x1f
	.4byte	.LASF71
	.byte	0x1
	.byte	0xc6
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1317_96x96_display_info
	.uleb128 0x20
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x278
	.uleb128 0x20
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x259
	.uleb128 0x20
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x255
	.uleb128 0x20
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x256
	.uleb128 0x20
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x258
	.uleb128 0x20
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x20
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x20
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x1a4
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL5
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
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL5
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
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF69:
	.string	"u8x8_d_ssd1317_96x96_flip0_seq"
.LASF68:
	.string	"u8x8_d_ssd1317_96x96_powersave1_seq"
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
.LASF65:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
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
.LASF57:
	.string	"tile_ptr"
.LASF63:
	.string	"arg_int"
.LASF76:
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
.LASF74:
	.string	"u8x8_cad_SendCmd"
.LASF70:
	.string	"u8x8_d_ssd1317_96x96_flip1_seq"
.LASF78:
	.string	"u8x8_d_helper_display_init"
.LASF77:
	.string	"u8x8_cad_EndTransfer"
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
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF71:
	.string	"u8x8_ssd1317_96x96_display_info"
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
.LASF73:
	.string	"u8x8_cad_StartTransfer"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF66:
	.string	"u8x8_d_ssd1317_96x96_init_seq"
.LASF44:
	.string	"sck_clock_hz"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF83:
	.string	"u8x8_d_ssd1317_generic"
.LASF14:
	.string	"display_info"
.LASF67:
	.string	"u8x8_d_ssd1317_96x96_powersave0_seq"
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
.LASF72:
	.string	"u8x8_cad_SendSequence"
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
.LASF84:
	.string	"u8x8_d_ssd1317_96x96"
.LASF26:
	.string	"i2c_started"
.LASF79:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF82:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF75:
	.string	"u8x8_cad_SendArg"
.LASF80:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1317.c"
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
