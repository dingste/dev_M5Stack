	.file	"u8x8_d_lc7981.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_lc7981_common$part$0,"ax",@progbits
	.literal_position
	.align	4
	.type	u8x8_d_lc7981_common$part$0, @function
u8x8_d_lc7981_common$part$0:
.LFB6:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_lc7981.c"
	.loc 1 84 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 94 0
	l32i.n	a4, a2, 0
	.loc 1 96 0
	mov.n	a10, a2
	l8ui	a5, a4, 16
	l8ui	a4, a3, 6
	.loc 1 108 0
	movi.n	a6, 8
	mull	a4, a5, a4
	.loc 1 96 0
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 94 0
	slli	a4, a4, 3
	.loc 1 107 0
	l8ui	a5, a3, 4
	.loc 1 108 0
	l32i.n	a7, a3, 0
	.loc 1 94 0
	extui	a4, a4, 0, 16
.LVL3:
.LBB4:
.LBB5:
	.loc 1 75 0
	movi.n	a3, 0x55
.LVL4:
.L4:
.LBE5:
.LBE4:
	.loc 1 111 0
	movi.n	a11, 0xa
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 112 0
	extui	a11, a4, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
	.loc 1 113 0
	movi.n	a11, 0xb
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL7:
	.loc 1 114 0
	srli	a11, a4, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL8:
	.loc 1 116 0
	movi.n	a11, 0xc
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL9:
	mov.n	a12, a7
	add.n	a7, a7, a5
.LVL10:
	j	.L2
.LVL11:
.L3:
	.loc 1 126 0
	l8ui	a11, a12, 0
.LVL12:
	s32i.n	a12, sp, 0
.LVL13:
.LBB7:
.LBB6:
	.loc 1 75 0
	srli	a9, a11, 1
	and	a11, a11, a3
.LVL14:
	and	a9, a9, a3
	slli	a11, a11, 1
	or	a10, a9, a11
.LVL15:
	.loc 1 77 0
	srli	a8, a10, 2
	movi.n	a9, 0x33
	and	a8, a8, a9
	and	a9, a10, a9
	slli	a9, a9, 2
	or	a8, a8, a9
.LVL16:
	.loc 1 79 0
	srli	a11, a8, 4
	slli	a8, a8, 4
.LVL17:
	or	a11, a11, a8
.LVL18:
.LBE6:
.LBE7:
	.loc 1 126 0
	extui	a11, a11, 0, 8
.LVL19:
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL20:
	l32i.n	a12, sp, 0
	addi.n	a12, a12, 1
.L2:
.LVL21:
	.loc 1 125 0
	bne	a7, a12, .L3
	.loc 1 131 0
	l32i.n	a8, a2, 0
	addi.n	a6, a6, -1
.LVL22:
	l8ui	a8, a8, 16
	extui	a6, a6, 0, 8
.LVL23:
	add.n	a4, a4, a8
.LVL24:
	extui	a4, a4, 0, 16
.LVL25:
	.loc 1 109 0
	bnez.n	a6, .L4
	.loc 1 134 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL26:
	.loc 1 181 0
	movi.n	a2, 1
.LVL27:
	retw.n
.LFE6:
	.size	u8x8_d_lc7981_common$part$0, .-u8x8_d_lc7981_common$part$0
	.section	.text.u8x8_d_lc7981_160x80,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_lc7981_160x80_display_info
	.literal .LC3, u8x8_d_lc7981_160x80_init_seq
	.align	4
	.global	u8x8_d_lc7981_160x80
	.type	u8x8_d_lc7981_160x80, @function
u8x8_d_lc7981_160x80:
.LFB2:
	.loc 1 233 0
.LVL28:
	entry	sp, 32
.LCFI1:
.LVL29:
	.loc 1 233 0
	extui	a3, a3, 0, 8
.LVL30:
.LBB10:
.LBB11:
	.loc 1 89 0
	movi.n	a8, 0xf
.LBE11:
.LBE10:
	.loc 1 233 0
	mov.n	a11, a5
.LBB13:
.LBB12:
	.loc 1 89 0
	bne	a3, a8, .L13
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL31:
.LBE12:
.LBE13:
	.loc 1 248 0
	movi.n	a3, 1
.LVL32:
	movi.n	a2, 0
.LVL33:
	movnez	a2, a3, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL34:
.L13:
	.loc 1 238 0
	movi.n	a8, 9
	beq	a3, a8, .L10
	beqi	a3, 10, .L11
	j	.L14
.L10:
	.loc 1 241 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL35:
	j	.L15
.L11:
	.loc 1 244 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL36:
	.loc 1 245 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL37:
.L15:
	.loc 1 251 0
	movi.n	a2, 1
.LVL38:
	.loc 1 246 0
	retw.n
.LVL39:
.L14:
	.loc 1 248 0
	movi.n	a2, 0
.LVL40:
	.loc 1 252 0
	retw.n
.LFE2:
	.size	u8x8_d_lc7981_160x80, .-u8x8_d_lc7981_160x80
	.section	.text.u8x8_d_lc7981_160x160,"ax",@progbits
	.literal_position
	.literal .LC4, u8x8_lc7981_160x160_display_info
	.literal .LC5, u8x8_d_lc7981_160x160_init_seq
	.align	4
	.global	u8x8_d_lc7981_160x160
	.type	u8x8_d_lc7981_160x160, @function
u8x8_d_lc7981_160x160:
.LFB3:
	.loc 1 305 0
.LVL41:
	entry	sp, 32
.LCFI2:
.LVL42:
	.loc 1 305 0
	extui	a3, a3, 0, 8
.LVL43:
.LBB16:
.LBB17:
	.loc 1 89 0
	movi.n	a8, 0xf
.LBE17:
.LBE16:
	.loc 1 305 0
	mov.n	a11, a5
.LBB19:
.LBB18:
	.loc 1 89 0
	bne	a3, a8, .L23
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL44:
.LBE18:
.LBE19:
	.loc 1 320 0
	movi.n	a3, 1
.LVL45:
	movi.n	a2, 0
.LVL46:
	movnez	a2, a3, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL47:
.L23:
	.loc 1 310 0
	movi.n	a8, 9
	beq	a3, a8, .L20
	beqi	a3, 10, .L21
	j	.L24
.L20:
	.loc 1 313 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL48:
	j	.L25
.L21:
	.loc 1 316 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL49:
	.loc 1 317 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL50:
.L25:
	.loc 1 323 0
	movi.n	a2, 1
.LVL51:
	.loc 1 318 0
	retw.n
.LVL52:
.L24:
	.loc 1 320 0
	movi.n	a2, 0
.LVL53:
	.loc 1 324 0
	retw.n
.LFE3:
	.size	u8x8_d_lc7981_160x160, .-u8x8_d_lc7981_160x160
	.section	.text.u8x8_d_lc7981_240x128,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_lc7981_240x128_display_info
	.literal .LC7, u8x8_d_lc7981_240x128_init_seq
	.align	4
	.global	u8x8_d_lc7981_240x128
	.type	u8x8_d_lc7981_240x128, @function
u8x8_d_lc7981_240x128:
.LFB4:
	.loc 1 377 0
.LVL54:
	entry	sp, 32
.LCFI3:
.LVL55:
	.loc 1 377 0
	extui	a3, a3, 0, 8
.LVL56:
.LBB22:
.LBB23:
	.loc 1 89 0
	movi.n	a8, 0xf
.LBE23:
.LBE22:
	.loc 1 377 0
	mov.n	a11, a5
.LBB25:
.LBB24:
	.loc 1 89 0
	bne	a3, a8, .L33
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL57:
.LBE24:
.LBE25:
	.loc 1 392 0
	movi.n	a3, 1
.LVL58:
	movi.n	a2, 0
.LVL59:
	movnez	a2, a3, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL60:
.L33:
	.loc 1 382 0
	movi.n	a8, 9
	beq	a3, a8, .L30
	beqi	a3, 10, .L31
	j	.L34
.L30:
	.loc 1 385 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL61:
	j	.L35
.L31:
	.loc 1 388 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL62:
	.loc 1 389 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL63:
.L35:
	.loc 1 395 0
	movi.n	a2, 1
.LVL64:
	.loc 1 390 0
	retw.n
.LVL65:
.L34:
	.loc 1 392 0
	movi.n	a2, 0
.LVL66:
	.loc 1 396 0
	retw.n
.LFE4:
	.size	u8x8_d_lc7981_240x128, .-u8x8_d_lc7981_240x128
	.section	.text.u8x8_d_lc7981_240x64,"ax",@progbits
	.literal_position
	.literal .LC8, u8x8_lc7981_240x64_display_info
	.literal .LC9, u8x8_d_lc7981_240x64_init_seq
	.align	4
	.global	u8x8_d_lc7981_240x64
	.type	u8x8_d_lc7981_240x64, @function
u8x8_d_lc7981_240x64:
.LFB5:
	.loc 1 450 0
.LVL67:
	entry	sp, 32
.LCFI4:
.LVL68:
	.loc 1 450 0
	extui	a3, a3, 0, 8
.LVL69:
.LBB28:
.LBB29:
	.loc 1 89 0
	movi.n	a8, 0xf
.LBE29:
.LBE28:
	.loc 1 450 0
	mov.n	a11, a5
.LBB31:
.LBB30:
	.loc 1 89 0
	bne	a3, a8, .L43
	mov.n	a10, a2
	call8	u8x8_d_lc7981_common$part$0
.LVL70:
.LBE30:
.LBE31:
	.loc 1 465 0
	movi.n	a3, 1
.LVL71:
	movi.n	a2, 0
.LVL72:
	movnez	a2, a3, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL73:
.L43:
	.loc 1 455 0
	movi.n	a8, 9
	beq	a3, a8, .L40
	beqi	a3, 10, .L41
	j	.L44
.L40:
	.loc 1 458 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL74:
	j	.L45
.L41:
	.loc 1 461 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL75:
	.loc 1 462 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL76:
.L45:
	.loc 1 468 0
	movi.n	a2, 1
.LVL77:
	.loc 1 463 0
	retw.n
.LVL78:
.L44:
	.loc 1 465 0
	movi.n	a2, 0
.LVL79:
	.loc 1 469 0
	retw.n
.LFE5:
	.size	u8x8_d_lc7981_240x64, .-u8x8_d_lc7981_240x64
	.section	.rodata.u8x8_d_lc7981_240x64_init_seq,"a",@progbits
	.type	u8x8_d_lc7981_240x64_init_seq, @object
	.size	u8x8_d_lc7981_240x64_init_seq, 31
u8x8_d_lc7981_240x64_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	29
	.byte	21
	.byte	3
	.byte	22
	.byte	127
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_240x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_lc7981_240x64_display_info, @object
	.size	u8x8_lc7981_240x64_display_info, 24
u8x8_lc7981_240x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	30
	.byte	8
	.byte	0
	.byte	0
	.short	240
	.short	64
	.section	.rodata.u8x8_d_lc7981_240x128_init_seq,"a",@progbits
	.type	u8x8_d_lc7981_240x128_init_seq, @object
	.size	u8x8_d_lc7981_240x128_init_seq, 31
u8x8_d_lc7981_240x128_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	29
	.byte	21
	.byte	3
	.byte	22
	.byte	127
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_240x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_lc7981_240x128_display_info, @object
	.size	u8x8_lc7981_240x128_display_info, 24
u8x8_lc7981_240x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	30
	.byte	16
	.byte	0
	.byte	0
	.short	240
	.short	128
	.section	.rodata.u8x8_d_lc7981_160x160_init_seq,"a",@progbits
	.type	u8x8_d_lc7981_160x160_init_seq, @object
	.size	u8x8_d_lc7981_160x160_init_seq, 31
u8x8_d_lc7981_160x160_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	19
	.byte	21
	.byte	3
	.byte	22
	.byte	-97
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_160x160_display_info,"a",@progbits
	.align	4
	.type	u8x8_lc7981_160x160_display_info, @object
	.size	u8x8_lc7981_160x160_display_info, 24
u8x8_lc7981_160x160_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	20
	.byte	20
	.byte	0
	.byte	0
	.short	160
	.short	160
	.section	.rodata.u8x8_d_lc7981_160x80_init_seq,"a",@progbits
	.type	u8x8_d_lc7981_160x80_init_seq, @object
	.size	u8x8_d_lc7981_160x80_init_seq, 31
u8x8_d_lc7981_160x80_init_seq:
	.byte	24
	.byte	-2
	.byte	50
	.byte	21
	.byte	0
	.byte	22
	.byte	50
	.byte	21
	.byte	1
	.byte	22
	.byte	7
	.byte	21
	.byte	2
	.byte	22
	.byte	19
	.byte	21
	.byte	3
	.byte	22
	.byte	80
	.byte	21
	.byte	8
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	-2
	.byte	10
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_lc7981_160x80_display_info,"a",@progbits
	.align	4
	.type	u8x8_lc7981_160x80_display_info, @object
	.size	u8x8_lc7981_160x80_display_info, 24
u8x8_lc7981_160x80_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	1
	.byte	10
	.byte	30
	.byte	65
	.word	4000000
	.byte	0
	.byte	4
	.byte	-36
	.byte	20
	.byte	20
	.byte	10
	.byte	0
	.byte	0
	.short	160
	.short	80
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x30
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.4byte	.LASF88
	.4byte	.LASF89
	.4byte	.Ldebug_ranges0+0x78
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
	.byte	0x54
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3e0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x54
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x54
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x54
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x54
	.4byte	0x9f
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x57
	.4byte	0x89
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x58
	.4byte	0x358
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x46
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3fa
	.uleb128 0x11
	.string	"v"
	.byte	0x1
	.byte	0x46
	.4byte	0x7e
	.byte	0
	.uleb128 0x13
	.4byte	0x374
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53e
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	0x3a5
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	0x3b0
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	0x3b9
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	0x3c2
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	0x3cb
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	0x3d4
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	0x39a
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x39a
	.byte	0x9f
	.uleb128 0x16
	.4byte	0x38f
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x38f
	.byte	0x9f
	.uleb128 0x17
	.4byte	0x3e0
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7e
	.4byte	0x481
	.uleb128 0x14
	.4byte	0x3f0
	.4byte	.LLST7
	.byte	0
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0xa69
	.4byte	0x495
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0xa75
	.4byte	0x4ae
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0xa81
	.4byte	0x4cb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL7
	.4byte	0xa75
	.4byte	0x4e4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0xa81
	.4byte	0x500
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0xa75
	.4byte	0x519
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0xa81
	.4byte	0x52d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0xa8d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe8
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x656
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe8
	.4byte	0x32d
	.4byte	.LLST8
	.uleb128 0x1d
	.string	"msg"
	.byte	0x1
	.byte	0xe8
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.byte	0xe8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe8
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	0x374
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xeb
	.4byte	0x60b
	.uleb128 0x16
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	0x39a
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x20
	.4byte	0x3b0
	.uleb128 0x20
	.4byte	0x3b9
	.uleb128 0x20
	.4byte	0x3c2
	.uleb128 0x20
	.4byte	0x3cb
	.uleb128 0x20
	.4byte	0x3d4
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0x3fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.4byte	0x38f
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x21
	.4byte	0x39a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL35
	.4byte	0xa99
	.4byte	0x628
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x80_display_info
	.byte	0
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0xaa5
	.4byte	0x63c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0xab1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x80_init_seq
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x130
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x774
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x130
	.4byte	0x32d
	.4byte	.LLST12
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x130
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x130
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x130
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	0x374
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x133
	.4byte	0x729
	.uleb128 0x16
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	0x39a
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST14
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x20
	.4byte	0x3b0
	.uleb128 0x20
	.4byte	0x3b9
	.uleb128 0x20
	.4byte	0x3c2
	.uleb128 0x20
	.4byte	0x3cb
	.uleb128 0x20
	.4byte	0x3d4
	.uleb128 0x1a
	.4byte	.LVL44
	.4byte	0x3fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.4byte	0x38f
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x21
	.4byte	0x39a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL48
	.4byte	0xa99
	.4byte	0x746
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x160_display_info
	.byte	0
	.uleb128 0x18
	.4byte	.LVL49
	.4byte	0xaa5
	.4byte	0x75a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL50
	.4byte	0xab1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x160_init_seq
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x178
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x892
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x178
	.4byte	0x32d
	.4byte	.LLST16
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x178
	.4byte	0x7e
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x178
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x178
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	0x374
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x17b
	.4byte	0x847
	.uleb128 0x16
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	0x39a
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST19
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x20
	.4byte	0x3b0
	.uleb128 0x20
	.4byte	0x3b9
	.uleb128 0x20
	.4byte	0x3c2
	.uleb128 0x20
	.4byte	0x3cb
	.uleb128 0x20
	.4byte	0x3d4
	.uleb128 0x1a
	.4byte	.LVL57
	.4byte	0x3fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.4byte	0x38f
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x21
	.4byte	0x39a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL61
	.4byte	0xa99
	.4byte	0x864
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x128_display_info
	.byte	0
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0xaa5
	.4byte	0x878
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL63
	.4byte	0xab1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x128_init_seq
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b0
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x32d
	.4byte	.LLST20
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	0x374
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x965
	.uleb128 0x16
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	0x39a
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST22
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST23
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x20
	.4byte	0x3b0
	.uleb128 0x20
	.4byte	0x3b9
	.uleb128 0x20
	.4byte	0x3c2
	.uleb128 0x20
	.4byte	0x3cb
	.uleb128 0x20
	.4byte	0x3d4
	.uleb128 0x1a
	.4byte	.LVL70
	.4byte	0x3fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.4byte	0x38f
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x21
	.4byte	0x39a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL74
	.4byte	0xa99
	.4byte	0x982
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x64_display_info
	.byte	0
	.uleb128 0x18
	.4byte	.LVL75
	.4byte	0xaa5
	.4byte	0x996
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0xab1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x64_init_seq
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.byte	0xba
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x80_display_info
	.uleb128 0x28
	.4byte	0x7e
	.4byte	0x9d1
	.uleb128 0x29
	.4byte	0x9d1
	.byte	0x1e
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF71
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0xd5
	.4byte	0x9e9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x80_init_seq
	.uleb128 0xe
	.4byte	0x9c1
	.uleb128 0x2a
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x102
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_160x160_display_info
	.uleb128 0x2a
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x11d
	.4byte	0xa12
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_160x160_init_seq
	.uleb128 0xe
	.4byte	0x9c1
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x14a
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x128_display_info
	.uleb128 0x2a
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x165
	.4byte	0xa3b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x128_init_seq
	.uleb128 0xe
	.4byte	0x9c1
	.uleb128 0x2a
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x193
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_lc7981_240x64_display_info
	.uleb128 0x2a
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xa64
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_lc7981_240x64_init_seq
	.uleb128 0xe
	.4byte	0x9c1
	.uleb128 0x2b
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x259
	.uleb128 0x2b
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x255
	.uleb128 0x2b
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x256
	.uleb128 0x2b
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x2b
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x2b
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x2b
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x278
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE6
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL22
	.2byte	0x5
	.byte	0x38
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x5
	.byte	0x38
	.byte	0x76
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL20-1
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL26-1
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0xa
	.byte	0x73
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL20-1
	.2byte	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
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
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
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
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
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
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL55
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
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
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
.LASF77:
	.string	"u8x8_d_lc7981_240x128_init_seq"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF72:
	.string	"u8x8_lc7981_160x80_display_info"
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
.LASF71:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF76:
	.string	"u8x8_lc7981_240x128_display_info"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF70:
	.string	"u8x8_d_lc7981_240x64"
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
.LASF81:
	.string	"u8x8_cad_SendCmd"
.LASF85:
	.string	"u8x8_d_helper_display_init"
.LASF83:
	.string	"u8x8_cad_EndTransfer"
.LASF68:
	.string	"u8x8_d_lc7981_160x160"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF79:
	.string	"u8x8_d_lc7981_240x64_init_seq"
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
.LASF73:
	.string	"u8x8_d_lc7981_160x80_init_seq"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF80:
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
.LASF67:
	.string	"u8x8_d_lc7981_160x80"
.LASF14:
	.string	"display_info"
.LASF78:
	.string	"u8x8_lc7981_240x64_display_info"
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
.LASF86:
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
	.string	"u8x8_d_lc7981_160x160_init_seq"
.LASF88:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_lc7981.c"
.LASF74:
	.string	"u8x8_lc7981_160x160_display_info"
.LASF26:
	.string	"i2c_started"
.LASF84:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF69:
	.string	"u8x8_d_lc7981_240x128"
.LASF55:
	.string	"u8x8_tile_t"
.LASF66:
	.string	"reverse_byte"
.LASF89:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF82:
	.string	"u8x8_cad_SendArg"
.LASF87:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF65:
	.string	"u8x8_d_lc7981_common"
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
