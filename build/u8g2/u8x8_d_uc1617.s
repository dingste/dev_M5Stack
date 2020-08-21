	.file	"u8x8_d_uc1617.c"
	.text
.Ltext0:
	.section	.text.u8x8_upscale_4bit,"ax",@progbits
	.align	4
	.type	u8x8_upscale_4bit, @function
u8x8_upscale_4bit:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1617.c"
	.loc 1 74 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 77 0
	extui	a2, a2, 0, 4
.LVL2:
	.loc 1 78 0
	slli	a8, a2, 2
	or	a2, a8, a2
.LVL3:
	.loc 1 79 0
	movi.n	a8, 0x33
	and	a2, a2, a8
.LVL4:
	.loc 1 80 0
	slli	a8, a2, 1
	or	a2, a8, a2
.LVL5:
	.loc 1 81 0
	movi.n	a8, 0x55
	and	a2, a2, a8
.LVL6:
	.loc 1 83 0
	slli	a8, a2, 1
.LVL7:
	.loc 1 85 0
	or	a2, a8, a2
.LVL8:
	retw.n
.LFE0:
	.size	u8x8_upscale_4bit, .-u8x8_upscale_4bit
	.section	.text.u8x8_d_uc1617_common,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_uc1617_tile_half_buffer
	.literal .LC4, u8x8_d_uc1617_powersave0_seq
	.literal .LC5, u8x8_d_uc1617_powersave1_seq
	.literal .LC6, u8x8_d_uc1617_flip0_seq
	.literal .LC7, u8x8_d_uc1617_flip1_seq
	.align	4
	.global	u8x8_d_uc1617_common
	.type	u8x8_d_uc1617_common, @function
u8x8_d_uc1617_common:
.LFB3:
	.loc 1 136 0
.LVL9:
	entry	sp, 48
.LCFI1:
	.loc 1 136 0
	extui	a3, a3, 0, 8
	.loc 1 139 0
	movi.n	a6, 0xd
	.loc 1 136 0
	extui	a4, a4, 0, 8
	.loc 1 139 0
	beq	a3, a6, .L4
	bltu	a6, a3, .L5
	movi.n	a5, 0xb
.LVL10:
	beq	a3, a5, .L6
	j	.L17
.LVL11:
.L5:
	movi.n	a6, 0xe
	beq	a3, a6, .L7
	movi.n	a6, 0xf
	bne	a3, a6, .L17
	.loc 1 142 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL12:
	.loc 1 151 0
	l8ui	a11, a2, 34
	.loc 1 149 0
	l8ui	a6, a5, 5
	.loc 1 146 0
	l8ui	a3, a5, 6
.LVL13:
	.loc 1 151 0
	addx8	a6, a6, a11
	extui	a6, a6, 0, 8
	.loc 1 152 0
	extui	a11, a6, 0, 4
	movi	a7, 0x60
	.loc 1 147 0
	slli	a3, a3, 1
	.loc 1 152 0
	or	a11, a11, a7
	sext	a11, a11, 7
	.loc 1 147 0
	extui	a3, a3, 0, 8
	.loc 1 152 0
	mov.n	a10, a2
	.loc 1 147 0
	s32i.n	a3, sp, 0
.LVL14:
	.loc 1 152 0
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 153 0
	srli	a6, a6, 4
.LVL16:
	movi	a11, 0x70
	or	a11, a6, a11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL17:
	.loc 1 154 0
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 169 0
	mov.n	a6, a4
.LVL19:
.L11:
	.loc 1 172 0
	l8ui	a3, a5, 4
.LVL20:
	.loc 1 173 0
	l32i.n	a13, a5, 0
.LVL21:
.L10:
	.loc 1 169 0 discriminator 1
	movi.n	a11, 0
.LVL22:
.L9:
.LBB6:
.LBB7:
	.loc 1 96 0
	add.n	a7, a13, a11
	l8ui	a10, a7, 0
	s32i.n	a11, sp, 4
	s32i.n	a13, sp, 8
	call8	u8x8_upscale_4bit
.LVL23:
	l32i.n	a11, sp, 4
.LVL24:
	l32r	a8, .LC3
	add.n	a7, a11, a8
	s8i	a10, a7, 0
.LVL25:
	addi.n	a11, a11, 1
.LVL26:
	mov.n	a7, a8
	.loc 1 94 0
	l32i.n	a13, sp, 8
	bnei	a11, 8, .L9
.LBE7:
.LBE6:
	.loc 1 176 0
	mov.n	a12, a8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL27:
	.loc 1 177 0
	l32i.n	a13, sp, 8
	.loc 1 179 0
	addi.n	a9, a3, -1
	extui	a3, a9, 0, 8
.LVL28:
	.loc 1 177 0
	addi.n	a13, a13, 8
.LVL29:
	.loc 1 180 0
	bnez.n	a3, .L10
	.loc 1 181 0
	addi.n	a8, a6, -1
	extui	a6, a8, 0, 8
.LVL30:
	.loc 1 182 0
	bnez.n	a6, .L11
	.loc 1 186 0
	l8ui	a11, a2, 34
	.loc 1 184 0
	l8ui	a6, a5, 5
.LVL31:
	.loc 1 187 0
	movi	a8, 0x60
.LVL32:
	.loc 1 186 0
	addx8	a6, a6, a11
.LVL33:
	extui	a6, a6, 0, 8
.LVL34:
	.loc 1 187 0
	extui	a11, a6, 0, 4
	or	a11, a11, a8
	sext	a11, a11, 7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL35:
	.loc 1 188 0
	srli	a6, a6, 4
.LVL36:
	movi	a11, 0x70
	or	a11, a6, a11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL37:
	.loc 1 189 0
	l32i.n	a3, sp, 0
.LVL38:
	mov.n	a10, a2
	addi.n	a11, a3, 1
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendCmd
.LVL39:
.L14:
	.loc 1 193 0
	l8ui	a6, a5, 4
.LVL40:
	.loc 1 194 0
	l32i.n	a9, a5, 0
.LVL41:
.L13:
	.loc 1 169 0 discriminator 1
	movi.n	a3, 0
.LVL42:
.L12:
.LBB8:
.LBB9:
	.loc 1 108 0
	add.n	a10, a9, a3
	l8ui	a10, a10, 0
	s32i.n	a9, sp, 4
	srli	a10, a10, 4
	call8	u8x8_upscale_4bit
.LVL43:
	add.n	a11, a7, a3
	s8i	a10, a11, 0
.LVL44:
	addi.n	a3, a3, 1
.LVL45:
	.loc 1 106 0
	l32i.n	a9, sp, 4
	bnei	a3, 8, .L12
.LBE9:
.LBE8:
	.loc 1 197 0
	l32r	a12, .LC3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL46:
	.loc 1 198 0
	l32i.n	a9, sp, 4
	.loc 1 200 0
	addi.n	a8, a6, -1
	extui	a6, a8, 0, 8
.LVL47:
	.loc 1 198 0
	addi.n	a9, a9, 8
.LVL48:
	.loc 1 201 0
	bnez.n	a6, .L13
	.loc 1 202 0
	addi.n	a4, a4, -1
.LVL49:
	extui	a4, a4, 0, 8
.LVL50:
	.loc 1 203 0
	bnez.n	a4, .L14
	j	.L27
.LVL51:
.L6:
	.loc 1 209 0
	l32r	a11, .LC4
	.loc 1 208 0
	beqz.n	a4, .L26
.L15:
	.loc 1 211 0
	l32r	a11, .LC5
.L26:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL52:
	j	.L24
.LVL53:
.L4:
	.loc 1 214 0
	bnez.n	a4, .L16
	.loc 1 216 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL54:
	.loc 1 217 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L25
.L16:
	.loc 1 221 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL55:
	.loc 1 222 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L25:
	s8i	a3, a2, 34
.LVL56:
.L24:
	.loc 1 236 0
	movi.n	a2, 1
.LVL57:
	retw.n
.LVL58:
.L7:
	.loc 1 227 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL59:
	.loc 1 228 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL60:
	.loc 1 229 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL61:
.L27:
	.loc 1 230 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL62:
	j	.L24
.LVL63:
.L17:
	.loc 1 234 0
	movi.n	a2, 0
.LVL64:
	.loc 1 237 0
	retw.n
.LFE3:
	.size	u8x8_d_uc1617_common, .-u8x8_d_uc1617_common
	.section	.text.u8x8_d_uc1617_jlx128128,"ax",@progbits
	.literal_position
	.literal .LC8, u8x8_uc1617_128x128_display_info
	.literal .LC9, u8x8_d_uc1617_jlx128128_init_seq
	.align	4
	.global	u8x8_d_uc1617_jlx128128
	.type	u8x8_d_uc1617_jlx128128, @function
u8x8_d_uc1617_jlx128128:
.LFB4:
	.loc 1 305 0
.LVL65:
	entry	sp, 32
.LCFI2:
	.loc 1 305 0
	extui	a3, a3, 0, 8
	.loc 1 307 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1617_common
.LVL66:
	bnez.n	a10, .L32
	.loc 1 310 0
	movi.n	a8, 9
	beq	a3, a8, .L30
	beqi	a3, 10, .L31
	j	.L29
.L30:
	.loc 1 313 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL67:
	j	.L32
.L31:
	.loc 1 316 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL68:
	.loc 1 317 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL69:
.L32:
	.loc 1 323 0
	movi.n	a10, 1
.L29:
	.loc 1 324 0
	mov.n	a2, a10
.LVL70:
	retw.n
.LFE4:
	.size	u8x8_d_uc1617_jlx128128, .-u8x8_d_uc1617_jlx128128
	.section	.rodata.u8x8_uc1617_128x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_uc1617_128x128_display_info, @object
	.size	u8x8_uc1617_128x128_display_info, 24
u8x8_uc1617_128x128_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	10
	.byte	10
	.byte	20
	.byte	24
	.byte	45
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	65
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
	.section	.rodata.u8x8_d_uc1617_jlx128128_init_seq,"a",@progbits
	.type	u8x8_d_uc1617_jlx128128_init_seq, @object
	.size	u8x8_d_uc1617_jlx128128_init_seq, 41
u8x8_d_uc1617_jlx128128_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	-2
	.byte	10
	.byte	21
	.byte	39
	.byte	21
	.byte	43
	.byte	21
	.byte	47
	.byte	21
	.byte	-21
	.byte	21
	.byte	-127
	.byte	22
	.byte	40
	.byte	21
	.byte	-15
	.byte	22
	.byte	127
	.byte	21
	.byte	-14
	.byte	22
	.byte	0
	.byte	21
	.byte	-13
	.byte	22
	.byte	127
	.byte	21
	.byte	-93
	.byte	21
	.byte	-45
	.byte	21
	.byte	-41
	.byte	21
	.byte	-117
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.bss.u8x8_uc1617_tile_half_buffer,"aw",@nobits
	.type	u8x8_uc1617_tile_half_buffer, @object
	.size	u8x8_uc1617_tile_half_buffer, 8
u8x8_uc1617_tile_half_buffer:
	.zero	8
	.section	.rodata.u8x8_d_uc1617_flip1_seq,"a",@progbits
	.type	u8x8_d_uc1617_flip1_seq, @object
	.size	u8x8_d_uc1617_flip1_seq, 5
u8x8_d_uc1617_flip1_seq:
	.byte	24
	.byte	21
	.byte	-58
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1617_flip0_seq,"a",@progbits
	.type	u8x8_d_uc1617_flip0_seq, @object
	.size	u8x8_d_uc1617_flip0_seq, 5
u8x8_d_uc1617_flip0_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1617_powersave1_seq,"a",@progbits
	.type	u8x8_d_uc1617_powersave1_seq, @object
	.size	u8x8_d_uc1617_powersave1_seq, 5
u8x8_d_uc1617_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-84
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1617_powersave0_seq,"a",@progbits
	.type	u8x8_d_uc1617_powersave0_seq, @object
	.size	u8x8_d_uc1617_powersave0_seq, 5
u8x8_d_uc1617_powersave0_seq:
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
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
	.4byte	0x8ab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc
	.4byte	.LASF87
	.4byte	.LASF88
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
	.4byte	.LASF89
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a8
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0x4b
	.4byte	0x7e
	.4byte	.LLST1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x59
	.4byte	0x358
	.byte	0x1
	.4byte	0x3d6
	.uleb128 0x13
	.string	"t"
	.byte	0x1
	.byte	0x59
	.4byte	0x358
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x5b
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5c
	.4byte	0x358
	.byte	0
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0x65
	.4byte	0x358
	.byte	0x1
	.4byte	0x404
	.uleb128 0x13
	.string	"t"
	.byte	0x1
	.byte	0x65
	.4byte	0x358
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x67
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x68
	.4byte	0x358
	.byte	0
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0x87
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6be
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0x87
	.4byte	0x32d
	.4byte	.LLST2
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0x87
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x1
	.byte	0x87
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x1
	.byte	0x87
	.4byte	0x9f
	.4byte	.LLST5
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.byte	0x89
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0x89
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x89
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x11
	.string	"a"
	.byte	0x1
	.byte	0x89
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x8a
	.4byte	0x358
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	0x3a8
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0xb0
	.4byte	0x4de
	.uleb128 0x19
	.4byte	0x3b8
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1b
	.4byte	0x3c1
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	0x3ca
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	.LVL23
	.4byte	0x374
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x3d6
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xc5
	.4byte	0x520
	.uleb128 0x19
	.4byte	0x3e6
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1b
	.4byte	0x3ef
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	0x3f8
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LVL43
	.4byte	0x374
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL12
	.4byte	0x84e
	.4byte	0x534
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x85a
	.4byte	0x557
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x77
	.sleb128 0
	.byte	0x21
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0x85a
	.4byte	0x574
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
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x21
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x85a
	.4byte	0x58f
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
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x866
	.4byte	0x5a9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL35
	.4byte	0x85a
	.4byte	0x5bd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0x85a
	.4byte	0x5da
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
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x21
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0x85a
	.4byte	0x5f7
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
	.byte	0x73
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL46
	.4byte	0x866
	.4byte	0x617
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0x872
	.4byte	0x62b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL54
	.4byte	0x872
	.4byte	0x648
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
	.4byte	u8x8_d_uc1617_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0x872
	.4byte	0x665
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
	.4byte	u8x8_d_uc1617_flip1_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL59
	.4byte	0x84e
	.4byte	0x679
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0x85a
	.4byte	0x693
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
	.4byte	.LVL61
	.4byte	0x87e
	.4byte	0x6ad
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
	.uleb128 0x1f
	.4byte	.LVL62
	.4byte	0x88a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x130
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x786
	.uleb128 0x21
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x130
	.4byte	0x32d
	.4byte	.LLST17
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x130
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x130
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x130
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LVL66
	.4byte	0x404
	.4byte	0x73b
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0x896
	.4byte	0x758
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
	.4byte	u8x8_uc1617_128x128_display_info
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL68
	.4byte	0x8a2
	.4byte	0x76c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL69
	.4byte	0x872
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
	.4byte	u8x8_d_uc1617_jlx128128_init_seq
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x796
	.uleb128 0x25
	.4byte	0x796
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0x26
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2a
	.4byte	0x7ae
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1617_powersave0_seq
	.uleb128 0xe
	.4byte	0x786
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.byte	0x32
	.4byte	0x7c4
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1617_powersave1_seq
	.uleb128 0xe
	.4byte	0x786
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.byte	0x39
	.4byte	0x7da
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1617_flip0_seq
	.uleb128 0xe
	.4byte	0x786
	.uleb128 0x26
	.4byte	.LASF74
	.byte	0x1
	.byte	0x40
	.4byte	0x7f0
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1617_flip1_seq
	.uleb128 0xe
	.4byte	0x786
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x805
	.uleb128 0x25
	.4byte	0x796
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x1
	.byte	0x57
	.4byte	0x7f5
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x826
	.uleb128 0x25
	.4byte	0x796
	.byte	0x28
	.byte	0
	.uleb128 0x26
	.4byte	.LASF76
	.byte	0x1
	.byte	0xf2
	.4byte	0x837
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1617_jlx128128_init_seq
	.uleb128 0xe
	.4byte	0x816
	.uleb128 0x27
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x118
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1617_128x128_display_info
	.uleb128 0x28
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x259
	.uleb128 0x28
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x255
	.uleb128 0x28
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x258
	.uleb128 0x28
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x278
	.uleb128 0x28
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x256
	.uleb128 0x28
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	.LASF85
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
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
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL14
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL29
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer+1
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer+1
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer+1
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	u8x8_uc1617_tile_half_buffer
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE4
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
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
.LASF67:
	.string	"arg_ptr"
.LASF36:
	.string	"chip_enable_level"
.LASF69:
	.string	"u8x8_d_uc1617_jlx128128"
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
.LASF70:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF89:
	.string	"u8x8_upscale_4bit"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF65:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF66:
	.string	"arg_int"
.LASF80:
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
.LASF85:
	.string	"u8x8_d_helper_display_init"
.LASF83:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF63:
	.string	"u8x8_convert_tile_for_uc1617_lower4bit"
.LASF47:
	.string	"data_setup_time_ns"
.LASF74:
	.string	"u8x8_d_uc1617_flip1_seq"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF76:
	.string	"u8x8_d_uc1617_jlx128128_init_seq"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF68:
	.string	"u8x8_d_uc1617_common"
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
.LASF72:
	.string	"u8x8_d_uc1617_powersave1_seq"
.LASF13:
	.string	"u8x8_t"
.LASF64:
	.string	"u8x8_convert_tile_for_uc1617_upper4bit"
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
.LASF81:
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
.LASF75:
	.string	"u8x8_uc1617_tile_half_buffer"
.LASF26:
	.string	"i2c_started"
.LASF84:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF88:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF82:
	.string	"u8x8_cad_SendArg"
.LASF77:
	.string	"u8x8_uc1617_128x128_display_info"
.LASF86:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF87:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1617.c"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF71:
	.string	"u8x8_d_uc1617_powersave0_seq"
.LASF73:
	.string	"u8x8_d_uc1617_flip0_seq"
.LASF62:
	.string	"pbuf"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
