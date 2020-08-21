	.file	"u8x8_d_ssd1329.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1329_128x96_noname,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_ssd1329_8to32_dest_buf
	.literal .LC4, u8x8_ssd1329_128x96_display_info
	.literal .LC5, .L5
	.literal .LC6, u8x8_d_ssd1329_128x96_noname_init_seq
	.literal .LC7, u8x8_d_ssd1329_128x96_nhd_powersave0_seq
	.literal .LC8, u8x8_d_ssd1329_128x96_nhd_powersave1_seq
	.literal .LC9, u8x8_d_ssd1329_128x96_nhd_flip0_seq
	.literal .LC10, u8x8_d_ssd1329_128x96_nhd_flip1_seq
	.align	4
	.global	u8x8_d_ssd1329_128x96_noname
	.type	u8x8_d_ssd1329_128x96_noname, @function
u8x8_d_ssd1329_128x96_noname:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1329.c"
	.loc 1 289 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 289 0
	extui	a3, a3, 0, 8
	.loc 1 290 0
	movi.n	a6, 9
	.loc 1 289 0
	extui	a4, a4, 0, 8
	.loc 1 290 0
	bne	a3, a6, .L2
	.loc 1 292 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL1:
	j	.L31
.L2:
.LVL2:
.LBB6:
.LBB7:
	.loc 1 166 0
	addi	a3, a3, -10
.LVL3:
	extui	a3, a3, 0, 8
.LVL4:
	bgeui	a3, 6, .L20
	l32r	a6, .LC5
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_ssd1329_128x96_noname,"a",@progbits
	.align	4
	.align	4
.L5:
	.word	.L4
	.word	.L6
	.word	.L20
	.word	.L7
	.word	.L8
	.word	.L9
	.section	.text.u8x8_d_ssd1329_128x96_noname
.L4:
	.loc 1 174 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL5:
	.loc 1 175 0
	l32r	a11, .LC6
	j	.L32
.L6:
	.loc 1 179 0
	l32r	a11, .LC7
	.loc 1 178 0
	beqz.n	a4, .L32
.L10:
	.loc 1 181 0
	l32r	a11, .LC8
.L32:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL6:
	j	.L31
.L7:
	.loc 1 184 0
	bnez.n	a4, .L11
	.loc 1 186 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL7:
	.loc 1 187 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L33
.L11:
	.loc 1 191 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL8:
	.loc 1 192 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L33:
	s8i	a3, a2, 34
	j	.L31
.L8:
	.loc 1 197 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL9:
	.loc 1 198 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL10:
	.loc 1 199 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL11:
	j	.L30
.L9:
	.loc 1 204 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL12:
	.loc 1 205 0
	l8ui	a3, a5, 5
.LVL13:
	.loc 1 211 0
	l8ui	a6, a2, 34
	.loc 1 206 0
	slli	a3, a3, 2
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 4
.LVL14:
	.loc 1 208 0
	l8ui	a3, a5, 6
.LVL15:
	.loc 1 211 0
	addx8	a3, a3, a6
.LVL16:
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 0
.LVL17:
	addi.n	a3, a3, 7
	s32i.n	a3, sp, 12
.LVL18:
.L19:
	l32i.n	a9, sp, 4
	.loc 1 216 0
	l8ui	a6, a5, 4
	addi.n	a3, a9, 3
	.loc 1 217 0
	l32i.n	a8, a5, 0
	.loc 1 216 0
	s32i.n	a6, sp, 8
.LVL19:
	extui	a3, a3, 0, 8
.LVL20:
.L18:
	.loc 1 221 0
	l8ui	a10, a8, 0
	l8ui	a9, a8, 1
	addi	a7, a3, -3
	or	a9, a10, a9
	l8ui	a10, a8, 2
	extui	a7, a7, 0, 8
.LVL21:
	or	a9, a9, a10
	l8ui	a10, a8, 3
	or	a9, a9, a10
	l8ui	a10, a8, 4
	or	a9, a9, a10
	l8ui	a10, a8, 5
	or	a9, a9, a10
	l8ui	a10, a8, 6
	or	a9, a9, a10
	l8ui	a10, a8, 7
	or	a9, a9, a10
	extui	a9, a9, 0, 8
	beqz.n	a9, .L12
	.loc 1 224 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendCmd
.LVL22:
	.loc 1 225 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL23:
	.loc 1 226 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL24:
	.loc 1 228 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL25:
	.loc 1 229 0
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL26:
	.loc 1 230 0
	l32i.n	a15, sp, 12
	mov.n	a10, a2
	extui	a11, a15, 0, 8
	call8	u8x8_cad_SendArg
.LVL27:
	l32i.n	a8, sp, 20
	movi.n	a9, 0
	mov.n	a10, a8
.LVL28:
.L16:
	l32r	a11, .LC3
.LBB8:
.LBB9:
	.loc 1 148 0
	movi.n	a15, 8
	.loc 1 140 0
	l8ui	a13, a10, 0
	.loc 1 142 0
	l8ui	a12, a10, 1
	add.n	a14, a9, a11
.LVL29:
	addi.n	a10, a10, 2
.LVL30:
	.loc 1 148 0
	s32i.n	a15, sp, 24
.LVL31:
.L15:
	.loc 1 147 0
	extui	a7, a13, 0, 1
	movi	a11, 0xf0
	movi.n	a15, 0
	moveqz	a11, a15, a7
	mov.n	a7, a11
.LVL32:
	.loc 1 148 0
	bbc	a12, a15, .L14
	movi.n	a11, 0xf
	or	a7, a7, a11
.LVL33:
	extui	a7, a7, 0, 8
.LVL34:
.L14:
	.loc 1 152 0
	l32i.n	a15, sp, 24
	.loc 1 149 0
	s8i	a7, a14, 0
	.loc 1 152 0
	addi.n	a15, a15, -1
	s32i.n	a15, sp, 24
	.loc 1 150 0
	addi.n	a14, a14, 4
.LVL35:
	.loc 1 151 0
	srli	a13, a13, 1
.LVL36:
	.loc 1 152 0
	srli	a12, a12, 1
.LVL37:
	bnez.n	a15, .L15
.LVL38:
	addi.n	a9, a9, 1
.LVL39:
	.loc 1 136 0
	bnei	a9, 4, .L16
.LBE9:
.LBE8:
	.loc 1 233 0
	l32r	a12, .LC3
.LVL40:
	movi.n	a11, 0x20
	mov.n	a10, a2
.LVL41:
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendData
.LVL42:
	j	.L29
.LVL43:
.L12:
	.loc 1 239 0
	movi.n	a11, 0x24
	mov.n	a10, a2
	s32i.n	a9, sp, 16
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendCmd
.LVL44:
	.loc 1 240 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL45:
	.loc 1 241 0
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL46:
	.loc 1 242 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL47:
	.loc 1 243 0
	l32i.n	a15, sp, 12
	mov.n	a10, a2
	extui	a11, a15, 0, 8
	call8	u8x8_cad_SendArg
.LVL48:
	.loc 1 244 0
	l32i.n	a9, sp, 16
	mov.n	a10, a2
	mov.n	a11, a9
	call8	u8x8_cad_SendArg
.LVL49:
.L29:
	l32i.n	a8, sp, 20
	.loc 1 248 0
	addi.n	a6, a6, -1
.LVL50:
	addi.n	a3, a3, 4
.LVL51:
	extui	a6, a6, 0, 8
.LVL52:
	.loc 1 246 0
	addi.n	a8, a8, 8
.LVL53:
	extui	a3, a3, 0, 8
	.loc 1 249 0
	bnez.n	a6, .L18
	l32i.n	a8, sp, 4
.LVL54:
	l32i.n	a6, sp, 8
.LVL55:
	.loc 1 252 0
	addi.n	a4, a4, -1
.LVL56:
	addx4	a3, a6, a8
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 4
	extui	a4, a4, 0, 8
.LVL57:
	.loc 1 253 0
	bnez.n	a4, .L19
.LVL58:
.L30:
	.loc 1 255 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL59:
.L31:
	.loc 1 260 0
	movi.n	a2, 1
.LVL60:
	retw.n
.LVL61:
.L20:
	.loc 1 258 0
	movi.n	a2, 0
.LVL62:
.LBE7:
.LBE6:
	.loc 1 296 0
	retw.n
.LFE2:
	.size	u8x8_d_ssd1329_128x96_noname, .-u8x8_d_ssd1329_128x96_noname
	.section	.rodata.u8x8_ssd1329_128x96_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1329_128x96_display_info, @object
	.size	u8x8_ssd1329_128x96_display_info, 24
u8x8_ssd1329_128x96_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	15
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	60
	.byte	16
	.byte	12
	.byte	0
	.byte	0
	.short	128
	.short	96
	.section	.bss.u8x8_ssd1329_8to32_dest_buf,"aw",@nobits
	.type	u8x8_ssd1329_8to32_dest_buf, @object
	.size	u8x8_ssd1329_8to32_dest_buf, 32
u8x8_ssd1329_8to32_dest_buf:
	.zero	32
	.section	.rodata.u8x8_d_ssd1329_128x96_nhd_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1329_128x96_nhd_flip1_seq, @object
	.size	u8x8_d_ssd1329_128x96_nhd_flip1_seq, 7
u8x8_d_ssd1329_128x96_nhd_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	65
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1329_128x96_nhd_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1329_128x96_nhd_flip0_seq, @object
	.size	u8x8_d_ssd1329_128x96_nhd_flip0_seq, 7
u8x8_d_ssd1329_128x96_nhd_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1329_128x96_nhd_powersave1_seq,"a",@progbits
	.type	u8x8_d_ssd1329_128x96_nhd_powersave1_seq, @object
	.size	u8x8_d_ssd1329_128x96_nhd_powersave1_seq, 5
u8x8_d_ssd1329_128x96_nhd_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1329_128x96_nhd_powersave0_seq,"a",@progbits
	.type	u8x8_d_ssd1329_128x96_nhd_powersave0_seq, @object
	.size	u8x8_d_ssd1329_128x96_nhd_powersave0_seq, 5
u8x8_d_ssd1329_128x96_nhd_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1329_128x96_noname_init_seq,"a",@progbits
	.type	u8x8_d_ssd1329_128x96_noname_init_seq, @object
	.size	u8x8_d_ssd1329_128x96_noname_init_seq, 71
u8x8_d_ssd1329_128x96_noname_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-77
	.byte	22
	.byte	-111
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-83
	.byte	22
	.byte	2
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	21
	.byte	-122
	.byte	21
	.byte	-73
	.byte	21
	.byte	-127
	.byte	22
	.byte	112
	.byte	21
	.byte	-78
	.byte	22
	.byte	81
	.byte	21
	.byte	-79
	.byte	22
	.byte	85
	.byte	21
	.byte	-68
	.byte	22
	.byte	16
	.byte	21
	.byte	-76
	.byte	22
	.byte	2
	.byte	21
	.byte	-80
	.byte	22
	.byte	40
	.byte	21
	.byte	-66
	.byte	22
	.byte	28
	.byte	21
	.byte	-65
	.byte	22
	.byte	15
	.byte	21
	.byte	-92
	.byte	21
	.byte	35
	.byte	22
	.byte	3
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8d8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
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
	.4byte	.LASF64
	.byte	0x1
	.byte	0x81
	.4byte	0x358
	.byte	0x1
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x81
	.4byte	0x32d
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x81
	.4byte	0x358
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0x83
	.4byte	0x7e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x86
	.4byte	0x358
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa2
	.4byte	0x7e
	.byte	0x1
	.4byte	0x436
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa2
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0xa2
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0xa2
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0xa2
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0xa4
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0xa4
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xa4
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0xa5
	.4byte	0x358
	.byte	0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x120
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a3
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x120
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.2byte	0x120
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x120
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x120
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	0x3d3
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.2byte	0x127
	.4byte	0x789
	.uleb128 0x19
	.4byte	0x404
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	0x3f9
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	0x3ee
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	0x3e3
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1b
	.4byte	0x40f
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	0x418
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x421
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	0x42a
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	0x374
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xe9
	.4byte	0x559
	.uleb128 0x19
	.4byte	0x384
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	0x38f
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1b
	.4byte	0x39a
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	0x3a3
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	0x3ac
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	0x3b5
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	0x3be
	.4byte	.LLST17
	.uleb128 0x1b
	.4byte	0x3c7
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x87b
	.4byte	0x56d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0x887
	.4byte	0x581
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0x887
	.4byte	0x59e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1329_128x96_nhd_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL8
	.4byte	0x887
	.4byte	0x5bb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1329_128x96_nhd_flip1_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x893
	.4byte	0x5cf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL10
	.4byte	0x89f
	.4byte	0x5e9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x8ab
	.4byte	0x603
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL12
	.4byte	0x893
	.4byte	0x617
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x89f
	.4byte	0x630
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0x8ab
	.4byte	0x64a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0x8ab
	.4byte	0x664
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x89f
	.4byte	0x67e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL26
	.4byte	0x8ab
	.4byte	0x699
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x8ab
	.4byte	0x6b8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -52
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0x8b7
	.4byte	0x6db
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1329_8to32_dest_buf
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0x89f
	.4byte	0x6f5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0x8ab
	.4byte	0x70f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL46
	.4byte	0x8ab
	.4byte	0x72a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL47
	.4byte	0x8ab
	.4byte	0x744
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL48
	.4byte	0x8ab
	.4byte	0x763
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -52
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL49
	.4byte	0x8ab
	.4byte	0x777
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL59
	.4byte	0x8c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL1
	.4byte	0x8cf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1329_128x96_display_info
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x7e
	.4byte	0x7b3
	.uleb128 0x21
	.4byte	0x7b3
	.byte	0x46
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF68
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x1
	.byte	0x29
	.4byte	0x7cb
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1329_128x96_noname_init_seq
	.uleb128 0xe
	.4byte	0x7a3
	.uleb128 0x20
	.4byte	0x7e
	.4byte	0x7e0
	.uleb128 0x21
	.4byte	0x7b3
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5b
	.4byte	0x7f1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1329_128x96_nhd_powersave0_seq
	.uleb128 0xe
	.4byte	0x7d0
	.uleb128 0x22
	.4byte	.LASF71
	.byte	0x1
	.byte	0x62
	.4byte	0x807
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1329_128x96_nhd_powersave1_seq
	.uleb128 0xe
	.4byte	0x7d0
	.uleb128 0x20
	.4byte	0x7e
	.4byte	0x81c
	.uleb128 0x21
	.4byte	0x7b3
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LASF72
	.byte	0x1
	.byte	0x69
	.4byte	0x82d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1329_128x96_nhd_flip0_seq
	.uleb128 0xe
	.4byte	0x80c
	.uleb128 0x22
	.4byte	.LASF73
	.byte	0x1
	.byte	0x70
	.4byte	0x843
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1329_128x96_nhd_flip1_seq
	.uleb128 0xe
	.4byte	0x80c
	.uleb128 0x20
	.4byte	0x7e
	.4byte	0x858
	.uleb128 0x21
	.4byte	0x7b3
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7f
	.4byte	0x848
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1329_8to32_dest_buf
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x108
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1329_128x96_display_info
	.uleb128 0x24
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x24
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x278
	.uleb128 0x24
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x259
	.uleb128 0x24
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x255
	.uleb128 0x24
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x256
	.uleb128 0x24
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x258
	.uleb128 0x24
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x24
	.4byte	.LASF83
	.4byte	.LASF83
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE2
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL61
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LFE2
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
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL28
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x73
	.sleb128 -7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0xd
	.byte	0x75
	.sleb128 6
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
	.4byte	.LVL17
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL21
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x10
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xf0
	.byte	0x7d
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x7a
	.sleb128 -2
	.4byte	.LVL31
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x7a
	.sleb128 1
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL31
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x3
	.byte	0x79
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_ssd1329_8to32_dest_buf
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.LASF63:
	.string	"dest"
.LASF45:
	.string	"spi_mode"
.LASF67:
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
.LASF68:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF73:
	.string	"u8x8_d_ssd1329_128x96_nhd_flip1_seq"
.LASF4:
	.string	"__uint16_t"
.LASF74:
	.string	"u8x8_ssd1329_8to32_dest_buf"
.LASF87:
	.string	"u8x8_d_ssd1329_128x96_noname"
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
.LASF66:
	.string	"arg_int"
.LASF81:
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
.LASF76:
	.string	"u8x8_d_helper_display_init"
.LASF82:
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
.LASF71:
	.string	"u8x8_d_ssd1329_128x96_nhd_powersave1_seq"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF69:
	.string	"u8x8_d_ssd1329_128x96_noname_init_seq"
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
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF70:
	.string	"u8x8_d_ssd1329_128x96_nhd_powersave0_seq"
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
.LASF64:
	.string	"u8x8_ssd1329_8to32"
.LASF75:
	.string	"u8x8_ssd1329_128x96_display_info"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF72:
	.string	"u8x8_d_ssd1329_128x96_nhd_flip0_seq"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF65:
	.string	"u8x8_d_ssd1329_128x96_generic"
.LASF77:
	.string	"u8x8_cad_SendSequence"
.LASF26:
	.string	"i2c_started"
.LASF83:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF86:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF80:
	.string	"u8x8_cad_SendArg"
.LASF84:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1329.c"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
