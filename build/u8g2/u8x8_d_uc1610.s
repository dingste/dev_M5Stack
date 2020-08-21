	.file	"u8x8_d_uc1610.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_uc1610_ea_dogxl160,"ax",@progbits
	.literal_position
	.literal .LC2, .L4
	.literal .LC3, u8x8_uc1610_display_info
	.literal .LC4, u8x8_d_uc1610_dogxl160_init_seq
	.literal .LC5, u8x8_d_uc1610_dogxl160_powersave0_seq
	.literal .LC6, u8x8_d_uc1610_dogxl160_powersave1_seq
	.literal .LC7, u8x8_d_uc1610_dogxl160_flip0_seq
	.literal .LC8, u8x8_d_uc1610_dogxl160_flip1_seq
	.literal .LC9, buf$2836
	.align	4
	.global	u8x8_d_uc1610_ea_dogxl160
	.type	u8x8_d_uc1610_ea_dogxl160, @function
u8x8_d_uc1610_ea_dogxl160:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1610.c"
	.loc 1 208 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 211 0
	addi	a3, a3, -9
.LVL1:
	extui	a3, a3, 0, 8
	.loc 1 208 0
	extui	a4, a4, 0, 8
	.loc 1 211 0
	bgeui	a3, 7, .L15
	l32r	a6, .LC2
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_uc1610_ea_dogxl160,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L3
	.word	.L5
	.word	.L6
	.word	.L15
	.word	.L7
	.word	.L8
	.word	.L9
	.section	.text.u8x8_d_uc1610_ea_dogxl160
.L3:
	.loc 1 214 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL2:
	j	.L19
.L5:
	.loc 1 217 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL3:
	.loc 1 218 0
	l32r	a11, .LC4
	j	.L22
.L6:
	.loc 1 222 0
	l32r	a11, .LC5
	.loc 1 221 0
	beqz.n	a4, .L22
.L10:
	.loc 1 224 0
	l32r	a11, .LC6
.L22:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL4:
	j	.L19
.L7:
	.loc 1 227 0
	bnez.n	a4, .L11
	.loc 1 229 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL5:
	.loc 1 230 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L21
.L11:
	.loc 1 234 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL6:
	.loc 1 235 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L21:
	s8i	a3, a2, 34
	j	.L19
.L8:
	.loc 1 240 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL7:
	.loc 1 241 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL8:
	.loc 1 242 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL9:
.L20:
	.loc 1 243 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL10:
.L19:
	.loc 1 294 0
	movi.n	a2, 1
.LVL11:
	.loc 1 244 0
	retw.n
.LVL12:
.L9:
	.loc 1 247 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL13:
	.loc 1 249 0
	l8ui	a3, a5, 5
.LVL14:
	.loc 1 251 0
	l8ui	a6, a2, 34
	.loc 1 256 0
	movi	a11, 0xf8
	mov.n	a10, a2
	.loc 1 251 0
	addx8	a6, a3, a6
	.loc 1 253 0
	l8ui	a3, a5, 6
.LVL15:
	.loc 1 256 0
	call8	u8x8_cad_SendCmd
.LVL16:
	.loc 1 262 0
	movi	a11, 0xf4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL17:
	.loc 1 251 0
	extui	a6, a6, 0, 8
.LVL18:
	.loc 1 263 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL19:
	.loc 1 264 0
	movi	a11, 0xf5
	.loc 1 254 0
	slli	a3, a3, 1
.LVL20:
	.loc 1 264 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL21:
	.loc 1 254 0
	extui	a3, a3, 0, 8
.LVL22:
	.loc 1 265 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL23:
	.loc 1 266 0
	movi	a11, 0xf6
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL24:
	.loc 1 267 0
	movi	a11, 0x9f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL25:
	.loc 1 268 0
	movi	a11, 0xf7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL26:
	.loc 1 269 0
	addi.n	a11, a3, 1
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL27:
	.loc 1 270 0
	movi	a11, 0xf9
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL28:
.L14:
	.loc 1 274 0
	l8ui	a3, a5, 4
.LVL29:
	.loc 1 275 0
	l32i.n	a7, a5, 0
.LVL30:
.L13:
	l32r	a6, .LC9
	mov.n	a8, a7
	mov.n	a12, a6
	addi.n	a7, a7, 8
.LVL31:
.L12:
.LBB4:
.LBB5:
	.loc 1 199 0
	l8ui	a10, a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a12, sp, 4
	call8	u8x8_upscale_byte
.LVL32:
	.loc 1 200 0
	s8i	a10, a6, 0
.LVL33:
	.loc 1 202 0
	srli	a10, a10, 8
.LVL34:
	s8i	a10, a6, 1
.LVL35:
	l32i.n	a8, sp, 0
	addi.n	a6, a6, 2
.LVL36:
	addi.n	a8, a8, 1
	.loc 1 197 0
	l32i.n	a12, sp, 4
	bne	a7, a8, .L12
.LBE5:
.LBE4:
	.loc 1 281 0
	addi.n	a3, a3, -1
.LVL37:
	.loc 1 278 0
	movi.n	a11, 0x10
	mov.n	a10, a2
	.loc 1 281 0
	extui	a3, a3, 0, 8
.LVL38:
	.loc 1 278 0
	call8	u8x8_cad_SendData
.LVL39:
	.loc 1 282 0
	bnez.n	a3, .L13
	.loc 1 284 0
	addi.n	a4, a4, -1
.LVL40:
	extui	a4, a4, 0, 8
.LVL41:
	.loc 1 285 0
	bnez.n	a4, .L14
	j	.L20
.LVL42:
.L15:
	.loc 1 292 0
	movi.n	a2, 0
.LVL43:
	.loc 1 295 0
	retw.n
.LFE1:
	.size	u8x8_d_uc1610_ea_dogxl160, .-u8x8_d_uc1610_ea_dogxl160
	.section	.bss.buf$2836,"aw",@nobits
	.type	buf$2836, @object
	.size	buf$2836, 16
buf$2836:
	.zero	16
	.section	.rodata.u8x8_uc1610_display_info,"a",@progbits
	.align	4
	.type	u8x8_uc1610_display_info, @object
	.size	u8x8_uc1610_display_info, 24
u8x8_uc1610_display_info:
	.byte	0
	.byte	1
	.byte	15
	.byte	15
	.byte	1
	.byte	6
	.byte	30
	.byte	63
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	40
	.byte	20
	.byte	13
	.byte	0
	.byte	0
	.short	160
	.short	104
	.section	.rodata.u8x8_d_uc1610_dogxl160_flip1_seq,"a",@progbits
	.type	u8x8_d_uc1610_dogxl160_flip1_seq, @object
	.size	u8x8_d_uc1610_dogxl160_flip1_seq, 5
u8x8_d_uc1610_dogxl160_flip1_seq:
	.byte	24
	.byte	21
	.byte	-58
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1610_dogxl160_flip0_seq,"a",@progbits
	.type	u8x8_d_uc1610_dogxl160_flip0_seq, @object
	.size	u8x8_d_uc1610_dogxl160_flip0_seq, 5
u8x8_d_uc1610_dogxl160_flip0_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1610_dogxl160_powersave1_seq,"a",@progbits
	.type	u8x8_d_uc1610_dogxl160_powersave1_seq, @object
	.size	u8x8_d_uc1610_dogxl160_powersave1_seq, 5
u8x8_d_uc1610_dogxl160_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1610_dogxl160_powersave0_seq,"a",@progbits
	.type	u8x8_d_uc1610_dogxl160_powersave0_seq, @object
	.size	u8x8_d_uc1610_dogxl160_powersave0_seq, 5
u8x8_d_uc1610_dogxl160_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1610_dogxl160_init_seq,"a",@progbits
	.type	u8x8_d_uc1610_dogxl160_init_seq, @object
	.size	u8x8_d_uc1610_dogxl160_init_seq, 37
u8x8_d_uc1610_dogxl160_init_seq:
	.byte	24
	.byte	21
	.byte	-15
	.byte	22
	.byte	103
	.byte	21
	.byte	-64
	.byte	21
	.byte	64
	.byte	21
	.byte	80
	.byte	21
	.byte	43
	.byte	21
	.byte	-21
	.byte	21
	.byte	-127
	.byte	22
	.byte	95
	.byte	21
	.byte	-117
	.byte	21
	.byte	-64
	.byte	21
	.byte	-8
	.byte	21
	.byte	16
	.byte	21
	.byte	0
	.byte	21
	.byte	-80
	.byte	21
	.byte	-90
	.byte	21
	.byte	-92
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7c3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
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
	.4byte	.LASF86
	.byte	0x1
	.byte	0xbe
	.4byte	0x358
	.byte	0x1
	.4byte	0x3b6
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0xbe
	.4byte	0x358
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x7e
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xc1
	.4byte	0x89
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xc2
	.4byte	0x3b6
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc3
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x3c6
	.uleb128 0x14
	.4byte	0x3c6
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF63
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x1
	.byte	0xcf
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bb
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0xcf
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xcf
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0xcf
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.byte	0xcf
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0xd1
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.byte	0xd1
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd1
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0xd2
	.4byte	0x358
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	0x374
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x116
	.4byte	0x4af
	.uleb128 0x1c
	.4byte	0x384
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1e
	.4byte	0x38d
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	0x396
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	0x3aa
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	0x39f
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2836
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0x75a
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL2
	.4byte	0x766
	.4byte	0x4cc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1610_display_info
	.byte	0
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0x772
	.4byte	0x4e0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL4
	.4byte	0x77e
	.4byte	0x4f4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0x77e
	.4byte	0x511
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1610_dogxl160_flip0_seq
	.byte	0
	.uleb128 0x21
	.4byte	.LVL6
	.4byte	0x77e
	.4byte	0x52e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1610_dogxl160_flip1_seq
	.byte	0
	.uleb128 0x21
	.4byte	.LVL7
	.4byte	0x78a
	.4byte	0x542
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0x796
	.4byte	0x55c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x21
	.4byte	.LVL9
	.4byte	0x7a2
	.4byte	0x576
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL10
	.4byte	0x7ae
	.4byte	0x58a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0x78a
	.4byte	0x59e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x796
	.4byte	0x5b8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x796
	.4byte	0x5d2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf4
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x7a2
	.4byte	0x5ec
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x796
	.4byte	0x606
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf5
	.byte	0
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0x7a2
	.4byte	0x620
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x796
	.4byte	0x63a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf6
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x7a2
	.4byte	0x654
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL26
	.4byte	0x796
	.4byte	0x66e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf7
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x7a2
	.4byte	0x68b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0x796
	.4byte	0x6a5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf9
	.byte	0
	.uleb128 0x23
	.4byte	.LVL39
	.4byte	0x7ba
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x6cb
	.uleb128 0x14
	.4byte	0x3c6
	.byte	0x24
	.byte	0
	.uleb128 0x24
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2b
	.4byte	0x6dc
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1610_dogxl160_init_seq
	.uleb128 0xe
	.4byte	0x6bb
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x6f1
	.uleb128 0x14
	.4byte	0x3c6
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF69
	.byte	0x1
	.byte	0x63
	.4byte	0x702
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1610_dogxl160_powersave0_seq
	.uleb128 0xe
	.4byte	0x6e1
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.byte	0x6a
	.4byte	0x718
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1610_dogxl160_powersave1_seq
	.uleb128 0xe
	.4byte	0x6e1
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0x71
	.4byte	0x72e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1610_dogxl160_flip0_seq
	.uleb128 0xe
	.4byte	0x6e1
	.uleb128 0x24
	.4byte	.LASF72
	.byte	0x1
	.byte	0x7d
	.4byte	0x744
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1610_dogxl160_flip1_seq
	.uleb128 0xe
	.4byte	0x6e1
	.uleb128 0x24
	.4byte	.LASF73
	.byte	0x1
	.byte	0x90
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1610_display_info
	.uleb128 0x25
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x3af
	.uleb128 0x25
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x25
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x25
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x278
	.uleb128 0x25
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x259
	.uleb128 0x25
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x255
	.uleb128 0x25
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x256
	.uleb128 0x25
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x25
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x258
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16-1
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
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0xa
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x3
	.4byte	buf$2836
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x76
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
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
.LASF76:
	.string	"u8x8_d_helper_display_init"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF45:
	.string	"spi_mode"
.LASF66:
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
.LASF63:
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
.LASF70:
	.string	"u8x8_d_uc1610_dogxl160_powersave1_seq"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF64:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF65:
	.string	"arg_int"
.LASF82:
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
.LASF79:
	.string	"u8x8_cad_SendCmd"
.LASF67:
	.string	"page"
.LASF81:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF68:
	.string	"u8x8_d_uc1610_dogxl160_init_seq"
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
.LASF78:
	.string	"u8x8_cad_StartTransfer"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF44:
	.string	"sck_clock_hz"
.LASF72:
	.string	"u8x8_d_uc1610_dogxl160_flip1_seq"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF31:
	.string	"debounce_state"
.LASF14:
	.string	"display_info"
.LASF71:
	.string	"u8x8_d_uc1610_dogxl160_flip0_seq"
.LASF54:
	.string	"pixel_height"
.LASF73:
	.string	"u8x8_uc1610_display_info"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF77:
	.string	"u8x8_cad_SendSequence"
.LASF87:
	.string	"u8x8_d_uc1610_ea_dogxl160"
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1610.c"
.LASF86:
	.string	"u8x8_convert_tile_for_uc1610"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF74:
	.string	"u8x8_upscale_byte"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF69:
	.string	"u8x8_d_uc1610_dogxl160_powersave0_seq"
.LASF26:
	.string	"i2c_started"
.LASF75:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF80:
	.string	"u8x8_cad_SendArg"
.LASF83:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF62:
	.string	"pbuf"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
