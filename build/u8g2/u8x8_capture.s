	.file	"u8x8_capture.c"
	.text
.Ltext0:
	.section	.text.u8x8_capture_get_pixel_1,"ax",@progbits
	.align	4
	.global	u8x8_capture_get_pixel_1
	.type	u8x8_capture_get_pixel_1, @function
u8x8_capture_get_pixel_1:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_capture.c"
	.loc 1 46 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 46 0
	extui	a3, a3, 0, 16
	.loc 1 51 0
	srli	a8, a3, 3
	.loc 1 46 0
	extui	a5, a5, 0, 8
.LVL1:
	.loc 1 54 0
	mul16u	a5, a5, a8
.LVL2:
	.loc 1 46 0
	extui	a2, a2, 0, 16
.LVL3:
	.loc 1 54 0
	addx8	a4, a5, a4
.LVL4:
	add.n	a5, a4, a2
	l8ui	a2, a5, 0
.LVL5:
	extui	a3, a3, 0, 3
.LVL6:
	ssr	a3
	sra	a2, a2
	.loc 1 57 0
	extui	a2, a2, 0, 1
	retw.n
.LFE0:
	.size	u8x8_capture_get_pixel_1, .-u8x8_capture_get_pixel_1
	.section	.text.u8x8_capture_get_pixel_2,"ax",@progbits
	.align	4
	.global	u8x8_capture_get_pixel_2
	.type	u8x8_capture_get_pixel_2, @function
u8x8_capture_get_pixel_2:
.LFB1:
	.loc 1 62 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 62 0
	extui	a5, a5, 0, 8
.LVL8:
	.loc 1 70 0
	mull	a3, a3, a5
.LVL9:
	.loc 1 62 0
	extui	a9, a2, 0, 16
.LVL10:
	.loc 1 70 0
	extui	a5, a3, 0, 16
.LVL11:
	srli	a2, a9, 3
.LVL12:
	add.n	a4, a4, a5
.LVL13:
	add.n	a5, a4, a2
	l8ui	a8, a5, 0
	extui	a2, a9, 0, 3
	movi	a9, 0x80
.LVL14:
	ssr	a2
	sra	a2, a9
	and	a8, a8, a2
	movi.n	a5, 1
	movi.n	a2, 0
	movnez	a2, a5, a8
	.loc 1 73 0
	retw.n
.LFE1:
	.size	u8x8_capture_get_pixel_2, .-u8x8_capture_get_pixel_2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"P1\n"
.LC2:
	.string	"\n"
	.section	.text.u8x8_capture_write_pbm_pre,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.align	4
	.global	u8x8_capture_write_pbm_pre
	.type	u8x8_capture_write_pbm_pre, @function
u8x8_capture_write_pbm_pre:
.LFB2:
	.loc 1 76 0
.LVL15:
	entry	sp, 32
.LCFI2:
	.loc 1 77 0
	l32r	a10, .LC1
	.loc 1 76 0
	extui	a2, a2, 0, 8
	.loc 1 77 0
	callx8	a4
.LVL16:
	.loc 1 78 0
	slli	a10, a2, 3
	call8	u8x8_utoa
.LVL17:
	callx8	a4
.LVL18:
	.loc 1 79 0
	l32r	a2, .LC3
.LVL19:
	.loc 1 76 0
	extui	a3, a3, 0, 8
	.loc 1 79 0
	mov.n	a10, a2
	callx8	a4
.LVL20:
	.loc 1 80 0
	slli	a10, a3, 3
	call8	u8x8_utoa
.LVL21:
	callx8	a4
.LVL22:
	.loc 1 81 0
	mov.n	a10, a2
	callx8	a4
.LVL23:
	retw.n
.LFE2:
	.size	u8x8_capture_write_pbm_pre, .-u8x8_capture_write_pbm_pre
	.section	.rodata.str1.1
.LC4:
	.string	"1"
.LC6:
	.string	"0"
	.section	.text.u8x8_capture_write_pbm_buffer,"ax",@progbits
	.literal_position
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, .LC2
	.align	4
	.global	u8x8_capture_write_pbm_buffer
	.type	u8x8_capture_write_pbm_buffer, @function
u8x8_capture_write_pbm_buffer:
.LFB3:
	.loc 1 86 0
.LVL24:
	entry	sp, 48
.LCFI3:
	.loc 1 86 0
	extui	a3, a3, 0, 8
.LVL25:
	.loc 1 92 0
	extui	a4, a4, 0, 8
	.loc 1 91 0
	slli	a8, a3, 3
	.loc 1 93 0
	slli	a4, a4, 3
.LVL26:
	.loc 1 91 0
	s32i.n	a8, sp, 0
.LVL27:
	.loc 1 93 0
	s32i.n	a4, sp, 4
.LVL28:
	.loc 1 95 0
	movi.n	a7, 0
	j	.L5
.LVL29:
.L8:
	.loc 1 99 0
	mov.n	a13, a3
	mov.n	a12, a2
	mov.n	a11, a7
	mov.n	a10, a4
	callx8	a5
.LVL30:
	beqz.n	a10, .L6
	.loc 1 100 0
	l32r	a10, .LC5
	j	.L11
.L6:
	.loc 1 102 0
	l32r	a10, .LC7
.L11:
	callx8	a6
.LVL31:
	addi.n	a4, a4, 1
.LVL32:
.L10:
	.loc 1 97 0 discriminator 1
	l32i.n	a9, sp, 0
	extui	a8, a4, 0, 16
	bltu	a8, a9, .L8
	.loc 1 104 0 discriminator 2
	l32r	a10, .LC8
	addi.n	a7, a7, 1
.LVL33:
	callx8	a6
.LVL34:
.L5:
	.loc 1 95 0 discriminator 1
	l32i.n	a8, sp, 4
	extui	a4, a7, 0, 16
	bgeu	a4, a8, .L4
	movi.n	a4, 0
	j	.L10
.L4:
	retw.n
.LFE3:
	.size	u8x8_capture_write_pbm_buffer, .-u8x8_capture_write_pbm_buffer
	.section	.rodata.str1.1
.LC9:
	.string	"#define xbm_width "
.LC12:
	.string	"#define xbm_height "
.LC14:
	.string	"static unsigned char xbm_bits[] = {\n"
	.section	.text.u8x8_capture_write_xbm_pre,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, .LC2
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.global	u8x8_capture_write_xbm_pre
	.type	u8x8_capture_write_xbm_pre, @function
u8x8_capture_write_xbm_pre:
.LFB4:
	.loc 1 112 0
.LVL35:
	entry	sp, 32
.LCFI4:
	.loc 1 113 0
	l32r	a10, .LC10
	.loc 1 112 0
	extui	a2, a2, 0, 8
	.loc 1 113 0
	callx8	a4
.LVL36:
	.loc 1 114 0
	slli	a10, a2, 3
	call8	u8x8_utoa
.LVL37:
	callx8	a4
.LVL38:
	.loc 1 115 0
	l32r	a2, .LC11
.LVL39:
	.loc 1 112 0
	extui	a3, a3, 0, 8
	.loc 1 115 0
	mov.n	a10, a2
	callx8	a4
.LVL40:
	.loc 1 116 0
	l32r	a10, .LC13
	callx8	a4
.LVL41:
	.loc 1 117 0
	slli	a10, a3, 3
	call8	u8x8_utoa
.LVL42:
	callx8	a4
.LVL43:
	.loc 1 118 0
	mov.n	a10, a2
	callx8	a4
.LVL44:
	.loc 1 119 0
	l32r	a10, .LC15
	callx8	a4
.LVL45:
	retw.n
.LFE4:
	.size	u8x8_capture_write_xbm_pre, .-u8x8_capture_write_xbm_pre
	.section	.rodata.str1.1
.LC16:
	.string	"0x"
.LC18:
	.string	","
.LC21:
	.string	"};\n"
	.section	.text.u8x8_capture_write_xbm_buffer,"ax",@progbits
	.literal_position
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC20, .LC2
	.literal .LC22, .LC21
	.align	4
	.global	u8x8_capture_write_xbm_buffer
	.type	u8x8_capture_write_xbm_buffer, @function
u8x8_capture_write_xbm_buffer:
.LFB5:
	.loc 1 123 0
.LVL46:
	entry	sp, 80
.LCFI5:
	.loc 1 123 0
	s32i.n	a2, sp, 24
	extui	a3, a3, 0, 8
.LVL47:
	.loc 1 128 0
	movi.n	a2, 0
.LVL48:
	.loc 1 132 0
	extui	a4, a4, 0, 8
	.loc 1 133 0
	slli	a4, a4, 3
.LVL49:
	.loc 1 128 0
	s8i	a2, sp, 1
	.loc 1 131 0
	slli	a2, a3, 3
	.loc 1 133 0
	s32i.n	a4, sp, 20
	.loc 1 123 0
	s32i.n	a5, sp, 28
	.loc 1 131 0
	s32i.n	a2, sp, 16
.LVL50:
	.loc 1 133 0
	movi.n	a4, 0
.LVL51:
.L23:
	.loc 1 138 0
	movi.n	a2, 0
	.loc 1 150 0
	movi.n	a7, 9
.LVL52:
.L21:
	addi.n	a9, a2, 7
	addi.n	a14, a2, -1
	extui	a9, a9, 0, 16
	extui	a14, a14, 0, 16
	.loc 1 141 0
	movi.n	a5, 0
	.loc 1 146 0
	movi.n	a15, 1
.LVL53:
.L15:
	.loc 1 144 0
	slli	a8, a5, 1
	extui	a5, a8, 0, 8
.LVL54:
	.loc 1 145 0
	l32i.n	a12, sp, 24
	l32i.n	a8, sp, 28
.LVL55:
	mov.n	a10, a9
	s32i.n	a9, sp, 32
	s32i.n	a14, sp, 36
	s32i.n	a15, sp, 40
	mov.n	a13, a3
	mov.n	a11, a4
	callx8	a8
.LVL56:
	l32i.n	a9, sp, 32
	l32i.n	a14, sp, 36
	l32i.n	a15, sp, 40
	beqz.n	a10, .L14
	.loc 1 146 0
	or	a8, a5, a15
	extui	a5, a8, 0, 8
.LVL57:
.L14:
	addi.n	a9, a9, -1
	extui	a9, a9, 0, 16
	.loc 1 142 0 discriminator 2
	bne	a9, a14, .L15
	.loc 1 148 0
	l32r	a10, .LC17
	callx8	a6
.LVL58:
	.loc 1 149 0
	srli	a9, a5, 4
	.loc 1 150 0
	bltu	a7, a9, .L16
	.loc 1 151 0
	addi	a9, a9, 48
	j	.L28
.L16:
	.loc 1 153 0
	addi	a9, a9, 87
.L28:
	.loc 1 154 0
	mov.n	a10, sp
	.loc 1 153 0
	s8i	a9, sp, 0
	.loc 1 154 0
	callx8	a6
.LVL59:
	.loc 1 155 0
	extui	a8, a5, 0, 4
	.loc 1 156 0
	bltu	a7, a8, .L18
	.loc 1 157 0
	addi	a8, a8, 48
	j	.L29
.L18:
	.loc 1 159 0
	addi	a8, a8, 87
.L29:
	.loc 1 160 0
	mov.n	a10, sp
	.loc 1 159 0
	s8i	a8, sp, 0
	.loc 1 161 0
	addi.n	a2, a2, 8
.LVL60:
	.loc 1 160 0
	callx8	a6
.LVL61:
	.loc 1 162 0
	l32i.n	a5, sp, 16
.LVL62:
	.loc 1 161 0
	extui	a2, a2, 0, 16
.LVL63:
	.loc 1 162 0
	bgeu	a2, a5, .L20
	.loc 1 164 0
	l32r	a10, .LC19
	callx8	a6
.LVL64:
	.loc 1 165 0
	j	.L21
.L20:
.LVL65:
	addi.n	a4, a4, 1
.LVL66:
	.loc 1 167 0
	l32i.n	a8, sp, 20
	extui	a2, a4, 0, 16
.LVL67:
	bgeu	a2, a8, .L22
	.loc 1 169 0
	l32r	a10, .LC19
	callx8	a6
.LVL68:
	.loc 1 170 0
	l32r	a10, .LC20
	callx8	a6
.LVL69:
	.loc 1 171 0
	j	.L23
.L22:
	.loc 1 172 0
	l32r	a10, .LC22
	callx8	a6
.LVL70:
	retw.n
.LFE5:
	.size	u8x8_capture_write_xbm_buffer, .-u8x8_capture_write_xbm_buffer
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x50
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x53e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2d
	.4byte	0x73
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x2d
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x7
	.string	"y"
	.byte	0x1
	.byte	0x2d
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2d
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2d
	.4byte	0x73
	.4byte	.LLST3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3d
	.4byte	0x73
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x133
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x3d
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x7
	.string	"y"
	.byte	0x1
	.byte	0x3d
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3d
	.4byte	0x89
	.4byte	.LLST6
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3d
	.4byte	0x73
	.4byte	.LLST7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x4b
	.4byte	0x73
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4b
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x4b
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.4byte	.LVL16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x187
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x535
	.4byte	0x19d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.4byte	.LVL18
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x1b8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x535
	.4byte	0x1ce
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.4byte	.LVL22
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.4byte	.LVL23
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x1f1
	.uleb128 0x12
	.4byte	0x1f1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x13
	.4byte	0x1f7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e6
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0x55
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c6
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x55
	.4byte	0x89
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x55
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x55
	.4byte	0x73
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x55
	.4byte	0x2e4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x55
	.4byte	0x203
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x57
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.byte	0x57
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x15
	.string	"w"
	.byte	0x1
	.byte	0x58
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.byte	0x58
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x2b6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL34
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x73
	.4byte	0x2e4
	.uleb128 0x12
	.4byte	0x7e
	.uleb128 0x12
	.4byte	0x7e
	.uleb128 0x12
	.4byte	0x89
	.uleb128 0x12
	.4byte	0x73
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c6
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c9
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6f
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x6f
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x6f
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.4byte	.LVL36
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x33e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0xe
	.4byte	.LVL37
	.4byte	0x535
	.4byte	0x354
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.4byte	.LVL38
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL40
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x36f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL41
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x385
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0xe
	.4byte	.LVL42
	.4byte	0x535
	.4byte	0x39b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.4byte	.LVL43
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL44
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x3b6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL45
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51e
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x7a
	.4byte	0x89
	.4byte	.LLST14
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x7a
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x7a
	.4byte	0x73
	.4byte	.LLST15
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7a
	.4byte	0x2e4
	.4byte	.LLST16
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x7a
	.4byte	0x203
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.4byte	0x7e
	.4byte	.LLST17
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.byte	0x7c
	.4byte	0x7e
	.4byte	.LLST18
	.uleb128 0x15
	.string	"w"
	.byte	0x1
	.byte	0x7d
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.byte	0x7d
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.string	"v"
	.byte	0x1
	.byte	0x7e
	.4byte	0x73
	.4byte	.LLST20
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.byte	0x7e
	.4byte	0x73
	.4byte	.LLST21
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x7f
	.4byte	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.4byte	.LVL56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.4byte	0x4a0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL58
	.4byte	0x4b3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x17
	.4byte	.LVL59
	.4byte	0x4c4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0x4d5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x17
	.4byte	.LVL64
	.4byte	0x4e8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0x4fb
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x17
	.4byte	.LVL69
	.4byte	0x50e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x18
	.4byte	.LVL70
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x1f7
	.4byte	0x52e
	.uleb128 0x1b
	.4byte	0x52e
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x1c
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x3ca
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"short int"
.LASF12:
	.string	"tile_width"
.LASF23:
	.string	"sizetype"
.LASF4:
	.string	"__uint16_t"
.LASF13:
	.string	"u8x8_capture_get_pixel_1"
.LASF14:
	.string	"u8x8_capture_get_pixel_2"
.LASF9:
	.string	"uint8_t"
.LASF20:
	.string	"get_pixel"
.LASF11:
	.string	"dest_ptr"
.LASF7:
	.string	"long long int"
.LASF21:
	.string	"u8x8_capture_write_xbm_pre"
.LASF25:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_capture.c"
.LASF15:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"u8x8_utoa"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF5:
	.string	"short unsigned int"
.LASF16:
	.string	"char"
.LASF17:
	.string	"u8x8_capture_write_pbm_pre"
.LASF22:
	.string	"u8x8_capture_write_xbm_buffer"
.LASF19:
	.string	"buffer"
.LASF26:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF24:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF18:
	.string	"u8x8_capture_write_pbm_buffer"
.LASF3:
	.string	"__uint8_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
