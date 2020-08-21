	.file	"u8x8_d_ssd1606_172x72.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1606_draw_tile,"ax",@progbits
	.literal_position
	.literal .LC2, buf$2832
	.align	4
	.type	u8x8_d_ssd1606_draw_tile, @function
u8x8_d_ssd1606_draw_tile:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1606_172x72.c"
	.loc 1 226 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 229 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL1:
	.loc 1 231 0
	l32i.n	a5, a2, 0
	.loc 1 233 0
	l8ui	a6, a4, 6
	.loc 1 231 0
	l8ui	a5, a5, 17
.LVL2:
	.loc 1 241 0
	movi.n	a11, 0xf
	.loc 1 232 0
	addi.n	a5, a5, -1
.LVL3:
	.loc 1 241 0
	mov.n	a10, a2
	.loc 1 233 0
	sub	a5, a5, a6
.LVL4:
	.loc 1 239 0
	l8ui	a7, a2, 34
	.loc 1 237 0
	l8ui	a6, a4, 5
	.loc 1 241 0
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 242 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
	.loc 1 244 0
	movi.n	a11, 0x11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL7:
	.loc 1 245 0
	movi.n	a11, 3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL8:
	.loc 1 247 0
	movi.n	a11, 0x45
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL9:
	.loc 1 248 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL10:
	.loc 1 249 0
	movi	a11, 0xb3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL11:
	.loc 1 233 0
	extui	a5, a5, 0, 8
.LVL12:
	.loc 1 251 0
	movi.n	a11, 0x44
	.loc 1 234 0
	slli	a5, a5, 1
.LVL13:
	.loc 1 251 0
	mov.n	a10, a2
	.loc 1 234 0
	extui	a5, a5, 0, 8
.LVL14:
	.loc 1 251 0
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 252 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL16:
	.loc 1 253 0
	addi.n	a11, a5, 1
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL17:
	.loc 1 255 0
	movi.n	a11, 0x4f
	.loc 1 239 0
	addx8	a6, a6, a7
.LVL18:
	.loc 1 255 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL19:
	.loc 1 239 0
	extui	a6, a6, 0, 8
.LVL20:
	.loc 1 256 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL21:
	.loc 1 258 0
	movi.n	a11, 0x4e
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL22:
	.loc 1 259 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL23:
	.loc 1 261 0
	movi.n	a11, 0x24
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL24:
.L4:
	.loc 1 265 0
	l8ui	a5, a4, 4
.LVL25:
	.loc 1 266 0
	l32i.n	a7, a4, 0
.LVL26:
.L3:
	l32r	a6, .LC2
	mov.n	a9, a7
	mov.n	a12, a6
	addi.n	a7, a7, 8
.LVL27:
.L2:
.LBB4:
.LBB5:
	.loc 1 217 0
	l8ui	a10, a9, 0
	movi.n	a8, -1
	xor	a10, a8, a10
	extui	a10, a10, 0, 8
	s32i.n	a9, sp, 0
	s32i.n	a12, sp, 4
	call8	u8x8_upscale_byte
.LVL28:
	.loc 1 218 0
	srli	a11, a10, 8
	s8i	a11, a6, 0
.LVL29:
	.loc 1 219 0
	s8i	a10, a6, 1
.LVL30:
	l32i.n	a9, sp, 0
	addi.n	a6, a6, 2
.LVL31:
	addi.n	a9, a9, 1
	.loc 1 215 0
	l32i.n	a12, sp, 4
	bne	a7, a9, .L2
.LBE5:
.LBE4:
	.loc 1 272 0
	addi.n	a5, a5, -1
.LVL32:
	.loc 1 269 0
	movi.n	a11, 0x10
	mov.n	a10, a2
.LVL33:
	.loc 1 272 0
	extui	a5, a5, 0, 8
.LVL34:
	.loc 1 269 0
	call8	u8x8_cad_SendData
.LVL35:
	.loc 1 273 0
	bnez.n	a5, .L3
	.loc 1 275 0
	addi.n	a3, a3, -1
.LVL36:
	extui	a3, a3, 0, 8
.LVL37:
	.loc 1 276 0
	bnez.n	a3, .L4
	.loc 1 278 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL38:
	retw.n
.LFE1:
	.size	u8x8_d_ssd1606_draw_tile, .-u8x8_d_ssd1606_draw_tile
	.section	.text.u8x8_d_ssd1606_172x72,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_ssd1606_172x72_display_info
	.literal .LC4, .L12
	.literal .LC5, u8x8_d_ssd1606_172x72_gde021a1_init_seq
	.literal .LC6, u8x8_d_ssd1606_to_display_seq
	.align	4
	.global	u8x8_d_ssd1606_172x72
	.type	u8x8_d_ssd1606_172x72, @function
u8x8_d_ssd1606_172x72:
.LFB3:
	.loc 1 385 0
.LVL39:
	entry	sp, 32
.LCFI1:
	.loc 1 385 0
	extui	a3, a3, 0, 8
	.loc 1 386 0
	movi.n	a8, 9
	.loc 1 385 0
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 386 0
	bne	a3, a8, .L9
	.loc 1 388 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL40:
	j	.L17
.L9:
.LVL41:
.LBB8:
.LBB9:
	.loc 1 284 0
	addi	a3, a3, -10
.LVL42:
	extui	a3, a3, 0, 8
.LVL43:
	bgeui	a3, 7, .L16
	l32r	a8, .LC4
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_ssd1606_172x72,"a",@progbits
	.align	4
	.align	4
.L12:
	.word	.L11
	.word	.L17
	.word	.L16
	.word	.L17
	.word	.L17
	.word	.L14
	.word	.L15
	.section	.text.u8x8_d_ssd1606_172x72
.L11:
	.loc 1 293 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL44:
	.loc 1 294 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL45:
	.loc 1 300 0
	mov.n	a10, a2
	call8	u8x8_FillDisplay
.LVL46:
	.loc 1 302 0
	mov.n	a10, a2
	call8	u8x8_RefreshDisplay
.LVL47:
	.loc 1 304 0
	mov.n	a10, a2
	call8	u8x8_FillDisplay
.LVL48:
	.loc 1 306 0
	mov.n	a10, a2
	call8	u8x8_RefreshDisplay
.LVL49:
	.loc 1 308 0
	mov.n	a10, a2
	call8	u8x8_ClearDisplay
.LVL50:
	.loc 1 310 0
	mov.n	a10, a2
	call8	u8x8_RefreshDisplay
.LVL51:
	.loc 1 312 0
	mov.n	a10, a2
	call8	u8x8_ClearDisplay
.LVL52:
	.loc 1 314 0
	mov.n	a10, a2
	call8	u8x8_RefreshDisplay
.LVL53:
	j	.L17
.LVL54:
.L14:
	.loc 1 348 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1606_draw_tile
.LVL55:
	j	.L17
.LVL56:
.L15:
	.loc 1 351 0
	l32r	a11, .LC6
.LVL57:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL58:
.L17:
	.loc 1 356 0
	movi.n	a2, 1
.LVL59:
	retw.n
.LVL60:
.L16:
	.loc 1 354 0
	movi.n	a2, 0
.LVL61:
.LBE9:
.LBE8:
	.loc 1 392 0
	retw.n
.LFE3:
	.size	u8x8_d_ssd1606_172x72, .-u8x8_d_ssd1606_172x72
	.section	.bss.buf$2832,"aw",@nobits
	.type	buf$2832, @object
	.size	buf$2832, 16
buf$2832:
	.zero	16
	.section	.rodata.u8x8_ssd1606_172x72_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1606_172x72_display_info, @object
	.size	u8x8_ssd1606_172x72_display_info, 24
u8x8_ssd1606_172x72_display_info:
	.byte	0
	.byte	1
	.byte	120
	.byte	60
	.byte	100
	.byte	100
	.byte	50
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	22
	.byte	9
	.byte	0
	.byte	0
	.short	172
	.short	72
	.section	.rodata.u8x8_d_ssd1606_to_display_seq,"a",@progbits
	.type	u8x8_d_ssd1606_to_display_seq, @object
	.size	u8x8_d_ssd1606_to_display_seq, 27
u8x8_d_ssd1606_to_display_seq:
	.byte	24
	.byte	21
	.byte	34
	.byte	22
	.byte	-60
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-26
	.byte	21
	.byte	34
	.byte	22
	.byte	3
	.byte	-2
	.byte	-56
	.byte	-2
	.byte	90
	.byte	-2
	.byte	50
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1606_172x72_gde021a1_init_seq,"a",@progbits
	.type	u8x8_d_ssd1606_172x72_gde021a1_init_seq, @object
	.size	u8x8_d_ssd1606_172x72_gde021a1_init_seq, 233
u8x8_d_ssd1606_172x72_gde021a1_init_seq:
	.byte	24
	.byte	21
	.byte	16
	.byte	22
	.byte	0
	.byte	21
	.byte	17
	.byte	22
	.byte	3
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	22
	.byte	31
	.byte	21
	.byte	69
	.byte	22
	.byte	0
	.byte	22
	.byte	-77
	.byte	21
	.byte	78
	.byte	22
	.byte	0
	.byte	21
	.byte	79
	.byte	22
	.byte	0
	.byte	21
	.byte	-16
	.byte	22
	.byte	31
	.byte	21
	.byte	34
	.byte	22
	.byte	-64
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	69
	.byte	22
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	81
	.byte	22
	.byte	69
	.byte	22
	.byte	21
	.byte	22
	.byte	-88
	.byte	22
	.byte	-94
	.byte	22
	.byte	-118
	.byte	22
	.byte	42
	.byte	22
	.byte	20
	.byte	22
	.byte	17
	.byte	22
	.byte	5
	.byte	22
	.byte	21
	.byte	22
	.byte	4
	.byte	22
	.byte	1
	.byte	22
	.byte	5
	.byte	22
	.byte	5
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	1
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	34
	.byte	22
	.byte	-5
	.byte	22
	.byte	34
	.byte	22
	.byte	27
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	44
	.byte	22
	.byte	-96
	.byte	21
	.byte	60
	.byte	22
	.byte	99
	.byte	21
	.byte	34
	.byte	22
	.byte	-60
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
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
	.4byte	0x930
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.4byte	.LASF86
	.4byte	.LASF87
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
	.4byte	.LASF68
	.byte	0x1
	.byte	0xd0
	.4byte	0x358
	.byte	0x1
	.4byte	0x3b6
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0xd0
	.4byte	0x358
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xd2
	.4byte	0x7e
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xd3
	.4byte	0x89
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xd4
	.4byte	0x3b6
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd5
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
	.4byte	.LASF88
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65c
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe1
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0xe1
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0xe1
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xe3
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0xe3
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe3
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.byte	0xe4
	.4byte	0x358
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x374
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x10d
	.4byte	0x49a
	.uleb128 0x1b
	.4byte	0x384
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1d
	.4byte	0x38d
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	0x396
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	0x3aa
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	0x39f
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2832
	.uleb128 0x1f
	.4byte	.LVL28
	.4byte	0x8a3
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL1
	.4byte	0x8af
	.4byte	0x4ae
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0x8bb
	.4byte	0x4c7
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
	.byte	0x3f
	.byte	0
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0x8c7
	.4byte	0x4e0
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
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x8bb
	.4byte	0x4f9
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
	.byte	0x41
	.byte	0
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x8c7
	.4byte	0x512
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
	.byte	0x33
	.byte	0
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0x8bb
	.4byte	0x52c
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
	.byte	0x45
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x8c7
	.4byte	0x545
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
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0x8c7
	.4byte	0x55f
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
	.byte	0xb3
	.byte	0
	.uleb128 0x20
	.4byte	.LVL15
	.4byte	0x8bb
	.4byte	0x579
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
	.byte	0x44
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x8c7
	.4byte	0x593
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0x8c7
	.4byte	0x5b0
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
	.byte	0x75
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0x8bb
	.4byte	0x5ca
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
	.byte	0x4f
	.byte	0
	.uleb128 0x20
	.4byte	.LVL21
	.4byte	0x8c7
	.4byte	0x5e4
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
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0x8bb
	.4byte	0x5fe
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
	.byte	0x4e
	.byte	0
	.uleb128 0x20
	.4byte	.LVL23
	.4byte	0x8c7
	.4byte	0x618
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL24
	.4byte	0x8bb
	.4byte	0x632
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
	.byte	0x24
	.byte	0
	.uleb128 0x20
	.4byte	.LVL35
	.4byte	0x8d3
	.4byte	0x64b
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
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.4byte	.LVL38
	.4byte	0x8df
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x11a
	.4byte	0x7e
	.byte	0x1
	.4byte	0x69e
	.uleb128 0x24
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x11a
	.4byte	0x32d
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x7e
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x11a
	.4byte	0x7e
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x11a
	.4byte	0x9f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x180
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x845
	.uleb128 0x27
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x180
	.4byte	0x32d
	.4byte	.LLST9
	.uleb128 0x28
	.string	"msg"
	.byte	0x1
	.2byte	0x180
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x180
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x180
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	0x65c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x187
	.4byte	0x82b
	.uleb128 0x1b
	.4byte	0x691
	.4byte	.LLST11
	.uleb128 0x1b
	.4byte	0x685
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	0x679
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	0x66d
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LVL44
	.4byte	0x8eb
	.4byte	0x740
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL45
	.4byte	0x8f7
	.4byte	0x75d
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
	.4byte	u8x8_d_ssd1606_172x72_gde021a1_init_seq
	.byte	0
	.uleb128 0x20
	.4byte	.LVL46
	.4byte	0x903
	.4byte	0x771
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL47
	.4byte	0x90f
	.4byte	0x785
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL48
	.4byte	0x903
	.4byte	0x799
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL49
	.4byte	0x90f
	.4byte	0x7ad
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x91b
	.4byte	0x7c1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL51
	.4byte	0x90f
	.4byte	0x7d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0x91b
	.4byte	0x7e9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL53
	.4byte	0x90f
	.4byte	0x7fd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL55
	.4byte	0x3cd
	.4byte	0x811
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL58
	.4byte	0x8f7
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
	.4byte	u8x8_d_ssd1606_to_display_seq
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0x927
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
	.4byte	u8x8_ssd1606_172x72_display_info
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x855
	.uleb128 0x14
	.4byte	0x3c6
	.byte	0xe8
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF70
	.byte	0x1
	.byte	0x44
	.4byte	0x866
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1606_172x72_gde021a1_init_seq
	.uleb128 0xe
	.4byte	0x845
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x87b
	.uleb128 0x14
	.4byte	0x3c6
	.byte	0x1a
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF71
	.byte	0x1
	.byte	0x99
	.4byte	0x88c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1606_to_display_seq
	.uleb128 0xe
	.4byte	0x86b
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x168
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1606_172x72_display_info
	.uleb128 0x2c
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x3af
	.uleb128 0x2c
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x259
	.uleb128 0x2c
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x255
	.uleb128 0x2c
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x256
	.uleb128 0x2c
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x258
	.uleb128 0x2c
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x2c
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x2c
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x278
	.uleb128 0x2c
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x230
	.uleb128 0x2c
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x231
	.uleb128 0x2c
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x22f
	.uleb128 0x2c
	.4byte	.LASF84
	.4byte	.LASF84
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
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
	.uleb128 0x2c
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
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL35-1
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
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x3
	.4byte	buf$2832
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x76
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x73
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x73
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE3
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"u8x8_d_helper_display_init"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF69:
	.string	"u8x8_d_ssd1606_172x72_generic"
.LASF72:
	.string	"u8x8_ssd1606_172x72_display_info"
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
.LASF83:
	.string	"u8x8_ClearDisplay"
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
.LASF86:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1606_172x72.c"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF64:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF65:
	.string	"arg_int"
.LASF77:
	.string	"u8x8_cad_SendData"
.LASF20:
	.string	"bus_clock"
.LASF51:
	.string	"default_x_offset"
.LASF68:
	.string	"u8x8_convert_tile_for_ssd1606"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF82:
	.string	"u8x8_RefreshDisplay"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"gpio_result"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF75:
	.string	"u8x8_cad_SendCmd"
.LASF67:
	.string	"page"
.LASF78:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF89:
	.string	"u8x8_d_ssd1606_172x72"
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
.LASF88:
	.string	"u8x8_d_ssd1606_draw_tile"
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
.LASF80:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF73:
	.string	"u8x8_upscale_byte"
.LASF25:
	.string	"i2c_address"
.LASF70:
	.string	"u8x8_d_ssd1606_172x72_gde021a1_init_seq"
.LASF52:
	.string	"flipmode_x_offset"
.LASF71:
	.string	"u8x8_d_ssd1606_to_display_seq"
.LASF10:
	.string	"uint8_t"
.LASF22:
	.string	"encoding"
.LASF26:
	.string	"i2c_started"
.LASF84:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF87:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF76:
	.string	"u8x8_cad_SendArg"
.LASF85:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF81:
	.string	"u8x8_FillDisplay"
.LASF15:
	.string	"next_cb"
.LASF62:
	.string	"pbuf"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
