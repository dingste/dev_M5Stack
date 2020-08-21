	.file	"u8x8_d_uc1638.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_uc1638_common,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_uc1638_powersave0_seq
	.literal .LC1, u8x8_d_uc1638_powersave1_seq
	.literal .LC2, u8x8_d_uc1638_flip0_seq
	.literal .LC3, u8x8_d_uc1638_flip1_seq
	.align	4
	.global	u8x8_d_uc1638_common
	.type	u8x8_d_uc1638_common, @function
u8x8_d_uc1638_common:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1638.c"
	.loc 1 73 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 73 0
	extui	a3, a3, 0, 8
	.loc 1 76 0
	movi.n	a8, 0xd
	.loc 1 73 0
	extui	a4, a4, 0, 8
	.loc 1 76 0
	beq	a3, a8, .L3
	bltu	a8, a3, .L4
	movi.n	a5, 0xb
.LVL1:
	beq	a3, a5, .L5
	j	.L11
.LVL2:
.L4:
	movi.n	a8, 0xe
	beq	a3, a8, .L6
	movi.n	a8, 0xf
	bne	a3, a8, .L11
	.loc 1 79 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL3:
	.loc 1 84 0
	movi.n	a11, 4
	.loc 1 81 0
	l8ui	a3, a5, 5
.LVL4:
	.loc 1 84 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 85 0
	slli	a11, a3, 3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
	.loc 1 87 0
	l8ui	a8, a5, 6
.LVL7:
	.loc 1 88 0
	l8ui	a3, a2, 34
.LVL8:
	.loc 1 91 0
	mov.n	a10, a2
	.loc 1 88 0
	add.n	a3, a8, a3
	extui	a3, a3, 0, 8
.LVL9:
	.loc 1 89 0
	slli	a3, a3, 1
.LVL10:
	extui	a3, a3, 0, 8
.LVL11:
	.loc 1 91 0
	movi	a8, 0x60
	extui	a11, a3, 0, 4
	or	a11, a11, a8
	sext	a11, a11, 7
	call8	u8x8_cad_SendCmd
.LVL12:
	.loc 1 92 0
	srli	a3, a3, 4
.LVL13:
	movi	a11, 0x70
	or	a11, a3, a11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL14:
	.loc 1 95 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 96 0
	l8ui	a3, a5, 4
.LVL16:
	.loc 1 98 0
	l32i.n	a5, a5, 0
.LVL17:
	.loc 1 97 0
	slli	a3, a3, 3
.LVL18:
	extui	a3, a3, 0, 8
.LVL19:
.L8:
	.loc 1 102 0 discriminator 1
	addi.n	a4, a4, -1
.LVL20:
	.loc 1 101 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 102 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL21:
	.loc 1 101 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL22:
	.loc 1 103 0 discriminator 1
	bnez.n	a4, .L8
	j	.L16
.LVL23:
.L5:
	.loc 1 118 0
	l32r	a11, .LC0
	.loc 1 117 0
	beqz.n	a4, .L15
.L9:
	.loc 1 120 0
	l32r	a11, .LC1
.L15:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL24:
	j	.L13
.LVL25:
.L3:
	.loc 1 123 0
	bnez.n	a4, .L10
	.loc 1 125 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL26:
	.loc 1 126 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L14
.L10:
	.loc 1 130 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL27:
	.loc 1 131 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L14:
	s8i	a3, a2, 34
.LVL28:
.L13:
	.loc 1 145 0
	movi.n	a2, 1
.LVL29:
	retw.n
.LVL30:
.L6:
	.loc 1 136 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL31:
	.loc 1 137 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL32:
	.loc 1 138 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL33:
.L16:
	.loc 1 139 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL34:
	j	.L13
.LVL35:
.L11:
	.loc 1 143 0
	movi.n	a2, 0
.LVL36:
	.loc 1 146 0
	retw.n
.LFE0:
	.size	u8x8_d_uc1638_common, .-u8x8_d_uc1638_common
	.section	.text.u8x8_d_uc1638_160x128,"ax",@progbits
	.literal_position
	.literal .LC4, u8x8_uc1638_160x128_display_info
	.literal .LC5, u8x8_d_uc1638_160x128_init_seq
	.align	4
	.global	u8x8_d_uc1638_160x128
	.type	u8x8_d_uc1638_160x128, @function
u8x8_d_uc1638_160x128:
.LFB1:
	.loc 1 201 0
.LVL37:
	entry	sp, 32
.LCFI1:
	.loc 1 201 0
	extui	a3, a3, 0, 8
	.loc 1 203 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1638_common
.LVL38:
	bnez.n	a10, .L21
	.loc 1 206 0
	movi.n	a8, 9
	beq	a3, a8, .L19
	beqi	a3, 10, .L20
	j	.L18
.L19:
	.loc 1 209 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL39:
	j	.L21
.L20:
	.loc 1 212 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL40:
	.loc 1 213 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL41:
.L21:
	.loc 1 219 0
	movi.n	a10, 1
.L18:
	.loc 1 220 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE1:
	.size	u8x8_d_uc1638_160x128, .-u8x8_d_uc1638_160x128
	.section	.rodata.u8x8_d_uc1638_160x128_init_seq,"a",@progbits
	.type	u8x8_d_uc1638_160x128_init_seq, @object
	.size	u8x8_d_uc1638_160x128_init_seq, 27
u8x8_d_uc1638_160x128_init_seq:
	.byte	24
	.byte	21
	.byte	-31
	.byte	22
	.byte	-30
	.byte	-2
	.byte	5
	.byte	21
	.byte	36
	.byte	21
	.byte	-64
	.byte	21
	.byte	-94
	.byte	21
	.byte	-42
	.byte	21
	.byte	-21
	.byte	21
	.byte	-107
	.byte	21
	.byte	-119
	.byte	21
	.byte	-127
	.byte	22
	.byte	-96
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1638_160x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_uc1638_160x128_display_info, @object
	.size	u8x8_uc1638_160x128_display_info, 24
u8x8_uc1638_160x128_display_info:
	.byte	1
	.byte	0
	.byte	10
	.byte	20
	.byte	5
	.byte	-106
	.byte	30
	.byte	65
	.word	1000000
	.byte	3
	.byte	4
	.byte	30
	.byte	35
	.byte	20
	.byte	16
	.byte	0
	.byte	0
	.short	160
	.short	128
	.section	.rodata.u8x8_d_uc1638_flip1_seq,"a",@progbits
	.type	u8x8_d_uc1638_flip1_seq, @object
	.size	u8x8_d_uc1638_flip1_seq, 5
u8x8_d_uc1638_flip1_seq:
	.byte	24
	.byte	21
	.byte	-62
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1638_flip0_seq,"a",@progbits
	.type	u8x8_d_uc1638_flip0_seq, @object
	.size	u8x8_d_uc1638_flip0_seq, 5
u8x8_d_uc1638_flip0_seq:
	.byte	24
	.byte	21
	.byte	-60
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1638_powersave1_seq,"a",@progbits
	.type	u8x8_d_uc1638_powersave1_seq, @object
	.size	u8x8_d_uc1638_powersave1_seq, 7
u8x8_d_uc1638_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-55
	.byte	22
	.byte	-84
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1638_powersave0_seq,"a",@progbits
	.type	u8x8_d_uc1638_powersave0_seq, @object
	.size	u8x8_d_uc1638_powersave0_seq, 7
u8x8_d_uc1638_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-55
	.byte	22
	.byte	-83
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x732
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
	.4byte	.LASF65
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55c
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x48
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x48
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x4b
	.4byte	0x358
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x6d5
	.4byte	0x413
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x6e1
	.4byte	0x42c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x6ed
	.4byte	0x44b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x6e1
	.4byte	0x45f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x6e1
	.4byte	0x47c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x6e1
	.4byte	0x495
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x6f9
	.4byte	0x4b5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL24
	.4byte	0x705
	.4byte	0x4c9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL26
	.4byte	0x705
	.4byte	0x4e6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL27
	.4byte	0x705
	.4byte	0x503
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL31
	.4byte	0x6d5
	.4byte	0x517
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0x6e1
	.4byte	0x531
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0x6ed
	.4byte	0x54b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0x711
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0xc8
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61f
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc8
	.4byte	0x32d
	.4byte	.LLST8
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.byte	0xc8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0xc8
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL38
	.4byte	0x374
	.4byte	0x5d4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL39
	.4byte	0x71d
	.4byte	0x5f1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1638_160x128_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0x729
	.4byte	0x605
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL41
	.4byte	0x705
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_160x128_init_seq
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x62f
	.uleb128 0x19
	.4byte	0x62f
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF67
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2b
	.4byte	0x647
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_powersave0_seq
	.uleb128 0xe
	.4byte	0x61f
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.byte	0x32
	.4byte	0x65d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_powersave1_seq
	.uleb128 0xe
	.4byte	0x61f
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x672
	.uleb128 0x19
	.4byte	0x62f
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF70
	.byte	0x1
	.byte	0x39
	.4byte	0x683
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_flip0_seq
	.uleb128 0xe
	.4byte	0x662
	.uleb128 0x1a
	.4byte	.LASF71
	.byte	0x1
	.byte	0x40
	.4byte	0x699
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_flip1_seq
	.uleb128 0xe
	.4byte	0x662
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0x99
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1638_160x128_display_info
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x6bf
	.uleb128 0x19
	.4byte	0x62f
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb1
	.4byte	0x6d0
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1638_160x128_init_seq
	.uleb128 0xe
	.4byte	0x6af
	.uleb128 0x1b
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x259
	.uleb128 0x1b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x255
	.uleb128 0x1b
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x256
	.uleb128 0x1b
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x258
	.uleb128 0x1b
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x278
	.uleb128 0x1b
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x1b
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x1b
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x1a5
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
	.uleb128 0x17
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
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
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xb
	.byte	0x72
	.sleb128 34
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
.LASF67:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF73:
	.string	"u8x8_d_uc1638_160x128_init_seq"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF65:
	.string	"u8x8_d_uc1638_common"
.LASF62:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF63:
	.string	"arg_int"
.LASF77:
	.string	"u8x8_cad_SendData"
.LASF20:
	.string	"bus_clock"
.LASF51:
	.string	"default_x_offset"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF71:
	.string	"u8x8_d_uc1638_flip1_seq"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"gpio_result"
.LASF83:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1638.c"
.LASF75:
	.string	"u8x8_cad_SendCmd"
.LASF81:
	.string	"u8x8_d_helper_display_init"
.LASF79:
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
.LASF69:
	.string	"u8x8_d_uc1638_powersave1_seq"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF68:
	.string	"u8x8_d_uc1638_powersave0_seq"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF74:
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
.LASF78:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF72:
	.string	"u8x8_uc1638_160x128_display_info"
.LASF18:
	.string	"byte_cb"
.LASF70:
	.string	"u8x8_d_uc1638_flip0_seq"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF22:
	.string	"encoding"
.LASF66:
	.string	"u8x8_d_uc1638_160x128"
.LASF26:
	.string	"i2c_started"
.LASF80:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF76:
	.string	"u8x8_cad_SendArg"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
