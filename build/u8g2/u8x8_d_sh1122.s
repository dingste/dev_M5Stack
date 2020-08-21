	.file	"u8x8_d_sh1122.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_sh1122_common,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_d_sh1122_powersave0_seq
	.literal .LC3, u8x8_d_sh1122_powersave1_seq
	.literal .LC4, buf$2831
	.literal .LC5, map$2832
	.align	4
	.global	u8x8_d_sh1122_common
	.type	u8x8_d_sh1122_common, @function
u8x8_d_sh1122_common:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_sh1122.c"
	.loc 1 118 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 118 0
	extui	a3, a3, 0, 8
	.loc 1 122 0
	movi.n	a6, 0xe
	.loc 1 118 0
	extui	a4, a4, 0, 8
	.loc 1 122 0
	beq	a3, a6, .L3
	movi.n	a6, 0xf
	beq	a3, a6, .L4
	movi.n	a5, 0xb
.LVL1:
	bne	a3, a5, .L12
	.loc 1 135 0
	l32r	a11, .LC2
	.loc 1 134 0
	beqz.n	a4, .L15
.L6:
	.loc 1 137 0
	l32r	a11, .LC3
.L15:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L13
.LVL3:
.L3:
	.loc 1 141 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 142 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 143 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
.L14:
	.loc 1 144 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL7:
.L13:
	.loc 1 182 0
	movi.n	a2, 1
.LVL8:
	.loc 1 145 0
	retw.n
.LVL9:
.L4:
.LBB6:
.LBB7:
	.loc 1 148 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL10:
	.loc 1 151 0
	l8ui	a4, a2, 34
.LVL11:
	.loc 1 149 0
	l8ui	a3, a5, 5
.LVL12:
	.loc 1 164 0
	movi.n	a6, 0x10
	.loc 1 151 0
	addx2	a3, a3, a4
.LVL13:
	.loc 1 153 0
	l8ui	a4, a5, 6
	.loc 1 151 0
	extui	a3, a3, 0, 8
.LVL14:
	.loc 1 154 0
	slli	a4, a4, 3
	extui	a4, a4, 0, 8
	.loc 1 164 0
	srli	a7, a3, 4
	.loc 1 158 0
	l32i.n	a13, a5, 0
	.loc 1 154 0
	s32i.n	a4, sp, 0
.LVL15:
	.loc 1 164 0
	or	a7, a7, a6
	movi.n	a4, 0
	.loc 1 163 0
	extui	a3, a3, 0, 4
.LVL16:
.L9:
	l32i.n	a8, sp, 0
	.loc 1 161 0
	movi	a11, 0xb0
	add.n	a6, a8, a4
	mov.n	a10, a2
	s32i.n	a13, sp, 16
	extui	a6, a6, 0, 8
.LVL17:
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 162 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL19:
	.loc 1 163 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL20:
	.loc 1 164 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL21:
	.loc 1 165 0
	l8ui	a15, a5, 4
.LVL22:
	l32i.n	a13, sp, 16
	mov.n	a6, a15
.LVL23:
	mov.n	a14, a13
.LBB8:
.LBB9:
	.loc 1 107 0
	l32r	a8, .LC4
	j	.L7
.LVL24:
.L8:
.LBE9:
.LBE8:
	.loc 1 169 0
	l8ui	a10, a14, 0
.LVL25:
.LBB11:
.LBB10:
	.loc 1 107 0
	l32r	a11, .LC5
	extui	a12, a10, 0, 2
	add.n	a12, a11, a12
	l8ui	a12, a12, 0
	.loc 1 108 0
	srli	a10, a10, 2
.LVL26:
	.loc 1 107 0
	s8i	a12, a8, 3
	.loc 1 109 0
	extui	a12, a10, 0, 2
	add.n	a12, a11, a12
	l8ui	a12, a12, 0
	.loc 1 110 0
	srli	a10, a10, 2
.LVL27:
	.loc 1 109 0
	s8i	a12, a8, 2
	.loc 1 111 0
	extui	a12, a10, 0, 2
	.loc 1 113 0
	srli	a10, a10, 2
.LVL28:
	.loc 1 111 0
	add.n	a12, a11, a12
	.loc 1 113 0
	add.n	a10, a11, a10
	.loc 1 111 0
	l8ui	a12, a12, 0
	.loc 1 113 0
	l8ui	a10, a10, 0
	.loc 1 111 0
	s8i	a12, a8, 1
	.loc 1 113 0
	s8i	a10, a8, 0
	.loc 1 114 0
	mov.n	a12, a8
	movi.n	a11, 4
	mov.n	a10, a2
	s32i.n	a8, sp, 12
	s32i.n	a13, sp, 16
	s32i.n	a14, sp, 8
	s32i.n	a15, sp, 4
	call8	u8x8_cad_SendData
.LVL29:
.LBE10:
.LBE11:
	.loc 1 171 0
	l32i.n	a14, sp, 8
	.loc 1 170 0
	addi.n	a6, a6, -1
.LVL30:
	.loc 1 171 0
	l32i.n	a15, sp, 4
	l32i.n	a13, sp, 16
	l32i.n	a8, sp, 12
	.loc 1 170 0
	extui	a6, a6, 0, 8
.LVL31:
	.loc 1 171 0
	addi.n	a14, a14, 1
.LVL32:
.L7:
	.loc 1 167 0
	bnez.n	a6, .L8
	addi.n	a4, a4, 1
.LVL33:
	add.n	a13, a13, a15
.LVL34:
	.loc 1 159 0
	bnei	a4, 8, .L9
	j	.L14
.LVL35:
.L12:
.LBE7:
.LBE6:
	.loc 1 180 0
	movi.n	a2, 0
.LVL36:
	.loc 1 183 0
	retw.n
.LFE1:
	.size	u8x8_d_sh1122_common, .-u8x8_d_sh1122_common
	.section	.text.u8x8_d_sh1122_256x64,"ax",@progbits
	.literal_position
	.literal .LC9, u8x8_sh1122_256x64_display_info
	.literal .LC10, u8x8_d_sh1122_256x64_init_seq
	.literal .LC11, u8x8_d_sh1122_256x64_flip0_seq
	.literal .LC12, u8x8_d_sh1122_256x64_flip1_seq
	.align	4
	.global	u8x8_d_sh1122_256x64
	.type	u8x8_d_sh1122_256x64, @function
u8x8_d_sh1122_256x64:
.LFB2:
	.loc 1 259 0
.LVL37:
	entry	sp, 32
.LCFI1:
	.loc 1 259 0
	extui	a11, a3, 0, 8
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 260 0
	beqi	a11, 10, .L18
	movi.n	a8, 0xd
	beq	a11, a8, .L19
	movi.n	a8, 9
	bne	a11, a8, .L23
	.loc 1 263 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL38:
	j	.L24
.L18:
	.loc 1 266 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL39:
	.loc 1 267 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL40:
	j	.L24
.L19:
	.loc 1 270 0
	bnez.n	a12, .L22
	.loc 1 272 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL41:
	.loc 1 273 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 18
.L25:
	s8i	a8, a2, 34
.L24:
	.loc 1 285 0
	movi.n	a2, 1
.LVL42:
	retw.n
.LVL43:
.L22:
	.loc 1 277 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL44:
	.loc 1 278 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 19
	j	.L25
.L23:
	.loc 1 283 0
	mov.n	a10, a2
	call8	u8x8_d_sh1122_common
.LVL45:
	mov.n	a2, a10
.LVL46:
	.loc 1 286 0
	retw.n
.LFE2:
	.size	u8x8_d_sh1122_256x64, .-u8x8_d_sh1122_256x64
	.section	.bss.buf$2831,"aw",@nobits
	.type	buf$2831, @object
	.size	buf$2831, 4
buf$2831:
	.zero	4
	.section	.rodata.map$2832,"a",@progbits
	.type	map$2832, @object
	.size	map$2832, 4
map$2832:
	.byte	0
	.byte	15
	.byte	-16
	.byte	-1
	.section	.rodata.u8x8_d_sh1122_256x64_init_seq,"a",@progbits
	.type	u8x8_d_sh1122_256x64_init_seq, @object
	.size	u8x8_d_sh1122_256x64_init_seq, 51
u8x8_d_sh1122_256x64_init_seq:
	.byte	-2
	.byte	1
	.byte	24
	.byte	-2
	.byte	1
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	21
	.byte	-127
	.byte	22
	.byte	-128
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-83
	.byte	22
	.byte	-127
	.byte	21
	.byte	-43
	.byte	22
	.byte	80
	.byte	21
	.byte	-45
	.byte	22
	.byte	0
	.byte	21
	.byte	-39
	.byte	22
	.byte	34
	.byte	21
	.byte	-37
	.byte	22
	.byte	53
	.byte	21
	.byte	-36
	.byte	22
	.byte	53
	.byte	21
	.byte	48
	.byte	-2
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_sh1122_256x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_sh1122_256x64_display_info, @object
	.size	u8x8_sh1122_256x64_display_info, 24
u8x8_sh1122_256x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	10
	.byte	20
	.byte	125
	.byte	125
	.word	40000000
	.byte	0
	.byte	4
	.byte	10
	.byte	-106
	.byte	32
	.byte	8
	.byte	0
	.byte	0
	.short	256
	.short	64
	.section	.rodata.u8x8_d_sh1122_256x64_flip1_seq,"a",@progbits
	.type	u8x8_d_sh1122_256x64_flip1_seq, @object
	.size	u8x8_d_sh1122_256x64_flip1_seq, 9
u8x8_d_sh1122_256x64_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	21
	.byte	64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1122_256x64_flip0_seq,"a",@progbits
	.type	u8x8_d_sh1122_256x64_flip0_seq, @object
	.size	u8x8_d_sh1122_256x64_flip0_seq, 9
u8x8_d_sh1122_256x64_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	21
	.byte	96
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1122_powersave1_seq,"a",@progbits
	.type	u8x8_d_sh1122_powersave1_seq, @object
	.size	u8x8_d_sh1122_powersave1_seq, 5
u8x8_d_sh1122_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1122_powersave0_seq,"a",@progbits
	.type	u8x8_d_sh1122_powersave0_seq, @object
	.size	u8x8_d_sh1122_powersave0_seq, 5
u8x8_d_sh1122_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-81
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
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
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
	.4byte	0x82a
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
	.4byte	0x3e0
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
	.string	"y"
	.byte	0x1
	.byte	0x78
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x78
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x78
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x79
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0x67
	.4byte	0x7e
	.byte	0x1
	.4byte	0x420
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x67
	.4byte	0x32d
	.uleb128 0x11
	.string	"b"
	.byte	0x1
	.byte	0x67
	.4byte	0x7e
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x69
	.4byte	0x420
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0x6a
	.4byte	0x437
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0xf0
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	0x7e
	.4byte	0x430
	.uleb128 0x16
	.4byte	0x430
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF65
	.uleb128 0xe
	.4byte	0x420
	.uleb128 0x17
	.4byte	0x374
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x631
	.uleb128 0x18
	.4byte	0x384
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	0x38f
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	0x39a
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	0x3a5
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	0x3b0
	.uleb128 0x19
	.4byte	0x3b9
	.uleb128 0x19
	.4byte	0x3c2
	.uleb128 0x19
	.4byte	0x3cb
	.uleb128 0x19
	.4byte	0x3d4
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x5c4
	.uleb128 0x18
	.4byte	0x38f
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	0x39a
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	0x3a5
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	0x384
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1c
	.4byte	0x3b0
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	0x3b9
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	0x3c2
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	0x3cb
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	0x3d4
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	0x3e0
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa9
	.4byte	0x54a
	.uleb128 0x18
	.4byte	0x3fb
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	0x3f0
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1f
	.4byte	0x404
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2831
	.uleb128 0x1f
	.4byte	0x40f
	.uleb128 0x5
	.byte	0x3
	.4byte	map$2832
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0x7cd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL10
	.4byte	0x7d9
	.4byte	0x55e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0x7e5
	.4byte	0x578
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
	.byte	0x8
	.byte	0xb0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL19
	.4byte	0x7f1
	.4byte	0x592
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
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0x7e5
	.4byte	0x5ac
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
	.byte	0
	.uleb128 0x20
	.4byte	.LVL21
	.4byte	0x7e5
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
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL2
	.4byte	0x7fd
	.4byte	0x5d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0x7d9
	.4byte	0x5ec
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL5
	.4byte	0x7e5
	.4byte	0x606
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
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x22
	.4byte	.LVL6
	.4byte	0x7f1
	.4byte	0x620
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x809
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x102
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71e
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x102
	.4byte	0x32d
	.4byte	.LLST15
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x102
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x102
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x102
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LVL38
	.4byte	0x815
	.4byte	0x6a2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1122_256x64_display_info
	.byte	0
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0x821
	.4byte	0x6b6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0x7fd
	.4byte	0x6d3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_256x64_init_seq
	.byte	0
	.uleb128 0x22
	.4byte	.LVL41
	.4byte	0x7fd
	.4byte	0x6f0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_256x64_flip0_seq
	.byte	0
	.uleb128 0x22
	.4byte	.LVL44
	.4byte	0x7fd
	.4byte	0x70d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_256x64_flip1_seq
	.byte	0
	.uleb128 0x20
	.4byte	.LVL45
	.4byte	0x374
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x7e
	.4byte	0x72e
	.uleb128 0x16
	.4byte	0x430
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.4byte	.LASF66
	.byte	0x1
	.byte	0x2c
	.4byte	0x73f
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_powersave0_seq
	.uleb128 0xe
	.4byte	0x71e
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.byte	0x33
	.4byte	0x755
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_powersave1_seq
	.uleb128 0xe
	.4byte	0x71e
	.uleb128 0x15
	.4byte	0x7e
	.4byte	0x76a
	.uleb128 0x16
	.4byte	0x430
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.4byte	.LASF68
	.byte	0x1
	.byte	0xbb
	.4byte	0x77b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_256x64_flip0_seq
	.uleb128 0xe
	.4byte	0x75a
	.uleb128 0x27
	.4byte	.LASF69
	.byte	0x1
	.byte	0xc4
	.4byte	0x791
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_256x64_flip1_seq
	.uleb128 0xe
	.4byte	0x75a
	.uleb128 0x27
	.4byte	.LASF70
	.byte	0x1
	.byte	0xcd
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1122_256x64_display_info
	.uleb128 0x15
	.4byte	0x7e
	.4byte	0x7b7
	.uleb128 0x16
	.4byte	0x430
	.byte	0x32
	.byte	0
	.uleb128 0x27
	.4byte	.LASF71
	.byte	0x1
	.byte	0xe6
	.4byte	0x7c8
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1122_256x64_init_seq
	.uleb128 0xe
	.4byte	0x7a7
	.uleb128 0x28
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x258
	.uleb128 0x28
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x259
	.uleb128 0x28
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x255
	.uleb128 0x28
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x256
	.uleb128 0x28
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x278
	.uleb128 0x28
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x28
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x28
	.4byte	.LASF79
	.4byte	.LASF79
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
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x8
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x8
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23
	.4byte	.LVL33
	.2byte	0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL24
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE2
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF69:
	.string	"u8x8_d_sh1122_256x64_flip1_seq"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_sh1122.c"
.LASF45:
	.string	"spi_mode"
.LASF64:
	.string	"arg_ptr"
.LASF36:
	.string	"chip_enable_level"
.LASF84:
	.string	"u8x8_write_byte_to_16gr_device"
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
.LASF70:
	.string	"u8x8_sh1122_256x64_display_info"
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
.LASF85:
	.string	"u8x8_d_sh1122_256x64"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"gpio_result"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF74:
	.string	"u8x8_cad_SendCmd"
.LASF79:
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
.LASF83:
	.string	"u8x8_d_sh1122_common"
.LASF68:
	.string	"u8x8_d_sh1122_256x64_flip0_seq"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF66:
	.string	"u8x8_d_sh1122_powersave0_seq"
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
.LASF73:
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
.LASF76:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF71:
	.string	"u8x8_d_sh1122_256x64_init_seq"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF67:
	.string	"u8x8_d_sh1122_powersave1_seq"
.LASF26:
	.string	"i2c_started"
.LASF78:
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
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
