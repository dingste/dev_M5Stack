	.file	"u8x8_d_ld7032_60x32.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ld7032_60x32,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_ld7032_60x32_display_info
	.literal .LC1, .L5
	.literal .LC2, u8x8_d_ld7032_60x32_init_seq
	.literal .LC3, u8x8_d_ld7032_60x32_powersave0_seq
	.literal .LC4, u8x8_d_ld7032_60x32_powersave1_seq
	.literal .LC5, u8x8_d_ld7032_60x32_flip0_seq
	.literal .LC6, u8x8_d_ld7032_60x32_flip1_seq
	.align	4
	.global	u8x8_d_ld7032_60x32
	.type	u8x8_d_ld7032_60x32, @function
u8x8_d_ld7032_60x32:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ld7032_60x32.c"
	.loc 1 234 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 234 0
	extui	a3, a3, 0, 8
	.loc 1 235 0
	movi.n	a8, 9
	.loc 1 234 0
	extui	a4, a4, 0, 8
	.loc 1 235 0
	bne	a3, a8, .L2
	.loc 1 237 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL1:
	j	.L17
.L2:
.LVL2:
.LBB4:
.LBB5:
	.loc 1 138 0
	addi	a3, a3, -10
.LVL3:
	extui	a3, a3, 0, 8
.LVL4:
	bgeui	a3, 6, .L14
	l32r	a8, .LC1
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_ld7032_60x32,"a",@progbits
	.align	4
	.align	4
.L5:
	.word	.L4
	.word	.L6
	.word	.L14
	.word	.L7
	.word	.L8
	.word	.L9
	.section	.text.u8x8_d_ld7032_60x32
.L4:
	.loc 1 146 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL5:
	.loc 1 147 0
	l32r	a11, .LC2
	j	.L18
.L6:
	.loc 1 151 0
	l32r	a11, .LC3
	.loc 1 150 0
	beqz.n	a4, .L18
.L10:
	.loc 1 153 0
	l32r	a11, .LC4
.L18:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL6:
	j	.L17
.L7:
	.loc 1 156 0
	bnez.n	a4, .L11
	.loc 1 158 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL7:
	.loc 1 159 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L19
.L11:
	.loc 1 163 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL8:
	.loc 1 164 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L19:
	s8i	a3, a2, 34
	j	.L17
.L8:
	.loc 1 169 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL9:
	.loc 1 170 0
	movi.n	a11, 0x12
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL10:
	.loc 1 171 0
	sext	a11, a4, 7
.LVL11:
	.loc 1 173 0
	movi	a3, 0x7f
	movgez	a3, a4, a11
	mov.n	a11, a3
.LVL12:
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL13:
	j	.L16
.LVL14:
.L9:
	.loc 1 178 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL15:
	.loc 1 180 0
	l8ui	a3, a2, 34
	.loc 1 179 0
	l8ui	a8, a5, 5
.LVL16:
	.loc 1 180 0
	srli	a3, a3, 3
	add.n	a3, a8, a3
	.loc 1 181 0
	movi.n	a11, 0x34
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL17:
	.loc 1 180 0
	extui	a3, a3, 0, 8
.LVL18:
	.loc 1 182 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL19:
	.loc 1 183 0
	movi.n	a11, 0x35
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL20:
	.loc 1 184 0
	movi.n	a11, 7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL21:
	.loc 1 185 0
	movi.n	a11, 0x36
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL22:
	.loc 1 186 0
	l8ui	a11, a5, 6
	mov.n	a10, a2
	slli	a11, a11, 3
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL23:
	.loc 1 187 0
	movi.n	a11, 0x37
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL24:
	.loc 1 188 0
	movi.n	a11, 0x1f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL25:
	.loc 1 189 0
	movi.n	a11, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL26:
.L13:
	.loc 1 196 0
	l8ui	a11, a5, 4
	l32i.n	a12, a5, 0
	slli	a11, a11, 3
	.loc 1 197 0
	addi.n	a4, a4, -1
.LVL27:
	.loc 1 196 0
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 197 0
	extui	a4, a4, 0, 8
.LVL28:
	.loc 1 196 0
	call8	u8x8_cad_SendData
.LVL29:
	.loc 1 198 0
	bnez.n	a4, .L13
.LVL30:
.L16:
	.loc 1 200 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL31:
.L17:
	.loc 1 205 0
	movi.n	a2, 1
.LVL32:
	retw.n
.LVL33:
.L14:
	.loc 1 203 0
	movi.n	a2, 0
.LVL34:
.LBE5:
.LBE4:
	.loc 1 241 0
	retw.n
.LFE1:
	.size	u8x8_d_ld7032_60x32, .-u8x8_d_ld7032_60x32
	.section	.rodata.u8x8_ld7032_60x32_display_info,"a",@progbits
	.align	4
	.type	u8x8_ld7032_60x32_display_info, @object
	.size	u8x8_ld7032_60x32_display_info, 24
u8x8_ld7032_60x32_display_info:
	.byte	0
	.byte	1
	.byte	15
	.byte	20
	.byte	100
	.byte	100
	.byte	30
	.byte	30
	.word	4000000
	.byte	0
	.byte	4
	.byte	20
	.byte	40
	.byte	8
	.byte	4
	.byte	0
	.byte	0
	.short	60
	.short	32
	.section	.rodata.u8x8_d_ld7032_60x32_flip1_seq,"a",@progbits
	.type	u8x8_d_ld7032_60x32_flip1_seq, @object
	.size	u8x8_d_ld7032_60x32_flip1_seq, 3
u8x8_d_ld7032_60x32_flip1_seq:
	.byte	24
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ld7032_60x32_flip0_seq,"a",@progbits
	.type	u8x8_d_ld7032_60x32_flip0_seq, @object
	.size	u8x8_d_ld7032_60x32_flip0_seq, 7
u8x8_d_ld7032_60x32_flip0_seq:
	.byte	24
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ld7032_60x32_powersave1_seq,"a",@progbits
	.type	u8x8_d_ld7032_60x32_powersave1_seq, @object
	.size	u8x8_d_ld7032_60x32_powersave1_seq, 7
u8x8_d_ld7032_60x32_powersave1_seq:
	.byte	24
	.byte	21
	.byte	2
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ld7032_60x32_powersave0_seq,"a",@progbits
	.type	u8x8_d_ld7032_60x32_powersave0_seq, @object
	.size	u8x8_d_ld7032_60x32_powersave0_seq, 7
u8x8_d_ld7032_60x32_powersave0_seq:
	.byte	24
	.byte	21
	.byte	2
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ld7032_60x32_init_seq,"a",@progbits
	.type	u8x8_d_ld7032_60x32_init_seq, @object
	.size	u8x8_d_ld7032_60x32_init_seq, 103
u8x8_d_ld7032_60x32_init_seq:
	.byte	24
	.byte	21
	.byte	2
	.byte	22
	.byte	0
	.byte	21
	.byte	20
	.byte	22
	.byte	0
	.byte	21
	.byte	26
	.byte	22
	.byte	4
	.byte	21
	.byte	29
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	48
	.byte	22
	.byte	0
	.byte	22
	.byte	59
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	31
	.byte	21
	.byte	52
	.byte	22
	.byte	0
	.byte	21
	.byte	53
	.byte	22
	.byte	7
	.byte	21
	.byte	54
	.byte	22
	.byte	0
	.byte	21
	.byte	55
	.byte	22
	.byte	31
	.byte	21
	.byte	56
	.byte	22
	.byte	0
	.byte	21
	.byte	57
	.byte	22
	.byte	0
	.byte	21
	.byte	16
	.byte	22
	.byte	0
	.byte	21
	.byte	22
	.byte	22
	.byte	0
	.byte	21
	.byte	18
	.byte	22
	.byte	64
	.byte	21
	.byte	24
	.byte	22
	.byte	3
	.byte	21
	.byte	68
	.byte	22
	.byte	2
	.byte	21
	.byte	72
	.byte	22
	.byte	3
	.byte	21
	.byte	23
	.byte	22
	.byte	0
	.byte	21
	.byte	19
	.byte	22
	.byte	0
	.byte	21
	.byte	28
	.byte	22
	.byte	0
	.byte	21
	.byte	63
	.byte	22
	.byte	17
	.byte	21
	.byte	61
	.byte	22
	.byte	0
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
	.4byte	0x76d
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
	.byte	0x86
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3ce
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x86
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x86
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x86
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x86
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x89
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0xe9
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65a
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe9
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x15
	.string	"msg"
	.byte	0x1
	.byte	0xe9
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0xe9
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe9
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	0x374
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xf0
	.4byte	0x640
	.uleb128 0x18
	.4byte	0x3a5
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	0x39a
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	0x38f
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	0x384
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1a
	.4byte	0x3b0
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	0x3b9
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	0x3c2
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x710
	.4byte	0x490
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0x71c
	.4byte	0x4a4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x71c
	.4byte	0x4c1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ld7032_60x32_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL8
	.4byte	0x71c
	.4byte	0x4de
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ld7032_60x32_flip1_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0x728
	.4byte	0x4f2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x734
	.4byte	0x50b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0x740
	.4byte	0x525
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL15
	.4byte	0x728
	.4byte	0x539
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0x734
	.4byte	0x553
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x740
	.4byte	0x56d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x734
	.4byte	0x587
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x740
	.4byte	0x5a0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0x734
	.4byte	0x5ba
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0x740
	.4byte	0x5ce
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL24
	.4byte	0x734
	.4byte	0x5e8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x37
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL25
	.4byte	0x740
	.4byte	0x601
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL26
	.4byte	0x734
	.4byte	0x61a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0x74c
	.4byte	0x62e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0x758
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL1
	.4byte	0x764
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ld7032_60x32_display_info
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x7e
	.4byte	0x66a
	.uleb128 0x1f
	.4byte	0x66a
	.byte	0x66
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF65
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.byte	0x48
	.4byte	0x682
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ld7032_60x32_init_seq
	.uleb128 0xe
	.4byte	0x65a
	.uleb128 0x1e
	.4byte	0x7e
	.4byte	0x697
	.uleb128 0x1f
	.4byte	0x66a
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.byte	0x69
	.4byte	0x6a8
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ld7032_60x32_powersave0_seq
	.uleb128 0xe
	.4byte	0x687
	.uleb128 0x20
	.4byte	.LASF68
	.byte	0x1
	.byte	0x70
	.4byte	0x6be
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ld7032_60x32_powersave1_seq
	.uleb128 0xe
	.4byte	0x687
	.uleb128 0x20
	.4byte	.LASF69
	.byte	0x1
	.byte	0x77
	.4byte	0x6d4
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ld7032_60x32_flip0_seq
	.uleb128 0xe
	.4byte	0x687
	.uleb128 0x1e
	.4byte	0x7e
	.4byte	0x6e9
	.uleb128 0x1f
	.4byte	0x66a
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7e
	.4byte	0x6fa
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ld7032_60x32_flip1_seq
	.uleb128 0xe
	.4byte	0x6d9
	.uleb128 0x20
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd1
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ld7032_60x32_display_info
	.uleb128 0x21
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x21
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x278
	.uleb128 0x21
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x259
	.uleb128 0x21
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x255
	.uleb128 0x21
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x256
	.uleb128 0x21
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x258
	.uleb128 0x21
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x73
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL4
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
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x7b
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x73
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL18
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL29-1
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
.LASF65:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF4:
	.string	"__uint16_t"
.LASF66:
	.string	"u8x8_d_ld7032_60x32_init_seq"
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
.LASF67:
	.string	"u8x8_d_ld7032_60x32_powersave0_seq"
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
.LASF75:
	.string	"u8x8_cad_SendCmd"
.LASF72:
	.string	"u8x8_d_helper_display_init"
.LASF78:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF84:
	.string	"u8x8_d_ld7032_60x32"
.LASF50:
	.string	"tile_height"
.LASF71:
	.string	"u8x8_ld7032_60x32_display_info"
.LASF1:
	.string	"unsigned char"
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
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ld7032_60x32.c"
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
.LASF68:
	.string	"u8x8_d_ld7032_60x32_powersave1_seq"
.LASF83:
	.string	"u8x8_d_ld7032_generic"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF77:
	.string	"u8x8_cad_SendData"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF73:
	.string	"u8x8_cad_SendSequence"
.LASF69:
	.string	"u8x8_d_ld7032_60x32_flip0_seq"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF70:
	.string	"u8x8_d_ld7032_60x32_flip1_seq"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
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
.LASF76:
	.string	"u8x8_cad_SendArg"
.LASF80:
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
