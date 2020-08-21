	.file	"u8x8_d_t6963.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_t6963_common,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_t6963_powersave0_seq
	.literal .LC1, u8x8_d_t6963_powersave1_seq
	.align	4
	.global	u8x8_d_t6963_common
	.type	u8x8_d_t6963_common, @function
u8x8_d_t6963_common:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_t6963.c"
	.loc 1 60 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 60 0
	extui	a3, a3, 0, 8
	.loc 1 64 0
	movi.n	a6, 0xb
	.loc 1 60 0
	extui	a4, a4, 0, 8
	.loc 1 64 0
	beq	a3, a6, .L3
	movi.n	a4, 0xf
.LVL1:
	beq	a3, a4, .L4
	j	.L9
.L3:
	.loc 1 75 0
	l32r	a11, .LC0
	.loc 1 74 0
	beqz.n	a4, .L11
.L5:
	.loc 1 77 0
	l32r	a11, .LC1
.L11:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L10
.L4:
.LVL3:
.LBB4:
.LBB5:
	.loc 1 82 0
	l32i.n	a3, a2, 0
.LVL4:
	.loc 1 85 0
	mov.n	a10, a2
	l8ui	a4, a3, 16
	l8ui	a3, a5, 6
	call8	u8x8_cad_StartTransfer
.LVL5:
	mull	a3, a4, a3
.LVL6:
	.loc 1 95 0
	l8ui	a6, a5, 4
	.loc 1 82 0
	slli	a3, a3, 3
	.loc 1 96 0
	l32i.n	a5, a5, 0
.LVL7:
	.loc 1 82 0
	extui	a3, a3, 0, 16
.LVL8:
	.loc 1 96 0
	movi.n	a4, 8
.LVL9:
.L6:
	.loc 1 99 0
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL10:
	.loc 1 100 0
	srli	a11, a3, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL11:
	.loc 1 101 0
	movi.n	a11, 0x24
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL12:
	.loc 1 102 0
	movi	a11, 0xb0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL13:
	.loc 1 106 0
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL14:
	.loc 1 108 0
	movi	a11, 0xb2
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 109 0
	l32i.n	a8, a2, 0
	addi.n	a4, a4, -1
.LVL16:
	l8ui	a8, a8, 16
	extui	a4, a4, 0, 8
.LVL17:
	.loc 1 110 0
	add.n	a3, a3, a8
.LVL18:
	.loc 1 109 0
	add.n	a5, a5, a8
.LVL19:
	.loc 1 110 0
	extui	a3, a3, 0, 16
.LVL20:
	.loc 1 97 0
	bnez.n	a4, .L6
	.loc 1 113 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL21:
.L10:
	movi.n	a2, 1
.LVL22:
	retw.n
.LVL23:
.L9:
.LBE5:
.LBE4:
	.loc 1 118 0
	movi.n	a2, 0
.LVL24:
	.loc 1 121 0
	retw.n
.LFE0:
	.size	u8x8_d_t6963_common, .-u8x8_d_t6963_common
	.section	.text.u8x8_d_t6963_240x128,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_t6963_240x128_display_info
	.literal .LC3, u8x8_d_t6963_240x128_init_seq
	.align	4
	.global	u8x8_d_t6963_240x128
	.type	u8x8_d_t6963_240x128, @function
u8x8_d_t6963_240x128:
.LFB1:
	.loc 1 190 0
.LVL25:
	entry	sp, 32
.LCFI1:
	.loc 1 190 0
	extui	a11, a3, 0, 8
	.loc 1 191 0
	movi.n	a8, 9
	.loc 1 190 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 191 0
	beq	a11, a8, .L14
	beqi	a11, 10, .L15
	j	.L17
.L14:
	.loc 1 194 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL26:
	j	.L18
.L15:
	.loc 1 197 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL27:
	.loc 1 198 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL28:
.L18:
	.loc 1 203 0
	movi.n	a2, 1
.LVL29:
	.loc 1 199 0
	retw.n
.LVL30:
.L17:
	.loc 1 201 0
	mov.n	a10, a2
	call8	u8x8_d_t6963_common
.LVL31:
	mov.n	a2, a10
.LVL32:
	.loc 1 204 0
	retw.n
.LFE1:
	.size	u8x8_d_t6963_240x128, .-u8x8_d_t6963_240x128
	.section	.text.u8x8_d_t6963_240x64,"ax",@progbits
	.literal_position
	.literal .LC4, u8x8_t6963_240x64_display_info
	.literal .LC5, u8x8_d_t6963_240x64_init_seq
	.align	4
	.global	u8x8_d_t6963_240x64
	.type	u8x8_d_t6963_240x64, @function
u8x8_d_t6963_240x64:
.LFB2:
	.loc 1 275 0
.LVL33:
	entry	sp, 32
.LCFI2:
	.loc 1 275 0
	extui	a11, a3, 0, 8
	.loc 1 276 0
	movi.n	a8, 9
	.loc 1 275 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 276 0
	beq	a11, a8, .L21
	beqi	a11, 10, .L22
	j	.L24
.L21:
	.loc 1 279 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL34:
	j	.L25
.L22:
	.loc 1 282 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL35:
	.loc 1 283 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL36:
.L25:
	.loc 1 288 0
	movi.n	a2, 1
.LVL37:
	.loc 1 284 0
	retw.n
.LVL38:
.L24:
	.loc 1 286 0
	mov.n	a10, a2
	call8	u8x8_d_t6963_common
.LVL39:
	mov.n	a2, a10
.LVL40:
	.loc 1 289 0
	retw.n
.LFE2:
	.size	u8x8_d_t6963_240x64, .-u8x8_d_t6963_240x64
	.section	.text.u8x8_d_t6963_256x64,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_t6963_256x64_display_info
	.literal .LC7, u8x8_d_t6963_256x64_init_seq
	.align	4
	.global	u8x8_d_t6963_256x64
	.type	u8x8_d_t6963_256x64, @function
u8x8_d_t6963_256x64:
.LFB3:
	.loc 1 361 0
.LVL41:
	entry	sp, 32
.LCFI3:
	.loc 1 361 0
	extui	a11, a3, 0, 8
	.loc 1 362 0
	movi.n	a8, 9
	.loc 1 361 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 362 0
	beq	a11, a8, .L28
	beqi	a11, 10, .L29
	j	.L31
.L28:
	.loc 1 365 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL42:
	j	.L32
.L29:
	.loc 1 368 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL43:
	.loc 1 369 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL44:
.L32:
	.loc 1 374 0
	movi.n	a2, 1
.LVL45:
	.loc 1 370 0
	retw.n
.LVL46:
.L31:
	.loc 1 372 0
	mov.n	a10, a2
	call8	u8x8_d_t6963_common
.LVL47:
	mov.n	a2, a10
.LVL48:
	.loc 1 375 0
	retw.n
.LFE3:
	.size	u8x8_d_t6963_256x64, .-u8x8_d_t6963_256x64
	.section	.text.u8x8_d_t6963_128x64,"ax",@progbits
	.literal_position
	.literal .LC8, u8x8_t6963_128x64_display_info
	.literal .LC9, u8x8_d_t6963_128x64_init_seq
	.align	4
	.global	u8x8_d_t6963_128x64
	.type	u8x8_d_t6963_128x64, @function
u8x8_d_t6963_128x64:
.LFB4:
	.loc 1 444 0
.LVL49:
	entry	sp, 32
.LCFI4:
	.loc 1 444 0
	extui	a11, a3, 0, 8
	.loc 1 445 0
	movi.n	a8, 9
	.loc 1 444 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 445 0
	beq	a11, a8, .L35
	beqi	a11, 10, .L36
	j	.L38
.L35:
	.loc 1 448 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL50:
	j	.L39
.L36:
	.loc 1 451 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL51:
	.loc 1 452 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL52:
.L39:
	.loc 1 457 0
	movi.n	a2, 1
.LVL53:
	.loc 1 453 0
	retw.n
.LVL54:
.L38:
	.loc 1 455 0
	mov.n	a10, a2
	call8	u8x8_d_t6963_common
.LVL55:
	mov.n	a2, a10
.LVL56:
	.loc 1 458 0
	retw.n
.LFE4:
	.size	u8x8_d_t6963_128x64, .-u8x8_d_t6963_128x64
	.section	.text.u8x8_d_t6963_160x80,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_t6963_160x80_display_info
	.literal .LC11, u8x8_d_t6963_160x80_init_seq
	.align	4
	.global	u8x8_d_t6963_160x80
	.type	u8x8_d_t6963_160x80, @function
u8x8_d_t6963_160x80:
.LFB5:
	.loc 1 526 0
.LVL57:
	entry	sp, 32
.LCFI5:
	.loc 1 526 0
	extui	a11, a3, 0, 8
	.loc 1 527 0
	movi.n	a8, 9
	.loc 1 526 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 527 0
	beq	a11, a8, .L42
	beqi	a11, 10, .L43
	j	.L45
.L42:
	.loc 1 530 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL58:
	j	.L46
.L43:
	.loc 1 533 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL59:
	.loc 1 534 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL60:
.L46:
	.loc 1 539 0
	movi.n	a2, 1
.LVL61:
	.loc 1 535 0
	retw.n
.LVL62:
.L45:
	.loc 1 537 0
	mov.n	a10, a2
	call8	u8x8_d_t6963_common
.LVL63:
	mov.n	a2, a10
.LVL64:
	.loc 1 540 0
	retw.n
.LFE5:
	.size	u8x8_d_t6963_160x80, .-u8x8_d_t6963_160x80
	.section	.text.u8x8_d_t6963_128x64_alt,"ax",@progbits
	.literal_position
	.literal .LC12, u8x8_t6963_128x64_display_info
	.literal .LC13, u8x8_d_t6963_160x80_init_seq
	.align	4
	.global	u8x8_d_t6963_128x64_alt
	.type	u8x8_d_t6963_128x64_alt, @function
u8x8_d_t6963_128x64_alt:
.LFB6:
	.loc 1 545 0
.LVL65:
	entry	sp, 32
.LCFI6:
	.loc 1 545 0
	extui	a11, a3, 0, 8
	.loc 1 546 0
	movi.n	a8, 9
	.loc 1 545 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 546 0
	beq	a11, a8, .L49
	beqi	a11, 10, .L50
	j	.L52
.L49:
	.loc 1 549 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL66:
	j	.L53
.L50:
	.loc 1 552 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL67:
	.loc 1 553 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL68:
.L53:
	.loc 1 558 0
	movi.n	a2, 1
.LVL69:
	.loc 1 554 0
	retw.n
.LVL70:
.L52:
	.loc 1 556 0
	mov.n	a10, a2
	call8	u8x8_d_t6963_common
.LVL71:
	mov.n	a2, a10
.LVL72:
	.loc 1 559 0
	retw.n
.LFE6:
	.size	u8x8_d_t6963_128x64_alt, .-u8x8_d_t6963_128x64_alt
	.section	.rodata.u8x8_d_t6963_160x80_init_seq,"a",@progbits
	.type	u8x8_d_t6963_160x80_init_seq, @object
	.size	u8x8_d_t6963_160x80_init_seq, 58
u8x8_d_t6963_160x80_init_seq:
	.byte	-2
	.byte	100
	.byte	24
	.byte	-2
	.byte	100
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	33
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	22
	.byte	20
	.byte	22
	.byte	0
	.byte	21
	.byte	65
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	66
	.byte	22
	.byte	20
	.byte	22
	.byte	0
	.byte	21
	.byte	67
	.byte	-2
	.byte	2
	.byte	21
	.byte	-128
	.byte	21
	.byte	-112
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	36
	.byte	-2
	.byte	100
	.byte	25
	.byte	-2
	.byte	100
	.section	.rodata.u8x8_t6963_160x80_display_info,"a",@progbits
	.align	4
	.type	u8x8_t6963_160x80_display_info, @object
	.size	u8x8_t6963_160x80_display_info, 24
u8x8_t6963_160x80_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	100
	.byte	1
	.byte	6
	.byte	20
	.byte	-116
	.word	1000000
	.byte	0
	.byte	4
	.byte	80
	.byte	80
	.byte	20
	.byte	10
	.byte	0
	.byte	0
	.short	160
	.short	80
	.section	.rodata.u8x8_d_t6963_128x64_init_seq,"a",@progbits
	.type	u8x8_d_t6963_128x64_init_seq, @object
	.size	u8x8_d_t6963_128x64_init_seq, 58
u8x8_d_t6963_128x64_init_seq:
	.byte	-2
	.byte	100
	.byte	24
	.byte	-2
	.byte	100
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	33
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	22
	.byte	16
	.byte	22
	.byte	0
	.byte	21
	.byte	65
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	66
	.byte	22
	.byte	16
	.byte	22
	.byte	0
	.byte	21
	.byte	67
	.byte	-2
	.byte	2
	.byte	21
	.byte	-128
	.byte	21
	.byte	-112
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	36
	.byte	-2
	.byte	100
	.byte	25
	.byte	-2
	.byte	100
	.section	.rodata.u8x8_t6963_128x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_t6963_128x64_display_info, @object
	.size	u8x8_t6963_128x64_display_info, 24
u8x8_t6963_128x64_display_info:
	.byte	1
	.byte	0
	.byte	10
	.byte	100
	.byte	1
	.byte	6
	.byte	20
	.byte	-116
	.word	1000000
	.byte	0
	.byte	4
	.byte	80
	.byte	80
	.byte	16
	.byte	8
	.byte	0
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_t6963_256x64_init_seq,"a",@progbits
	.type	u8x8_d_t6963_256x64_init_seq, @object
	.size	u8x8_d_t6963_256x64_init_seq, 58
u8x8_d_t6963_256x64_init_seq:
	.byte	-2
	.byte	100
	.byte	24
	.byte	-2
	.byte	100
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	33
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	22
	.byte	32
	.byte	22
	.byte	0
	.byte	21
	.byte	65
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	66
	.byte	22
	.byte	32
	.byte	22
	.byte	0
	.byte	21
	.byte	67
	.byte	-2
	.byte	2
	.byte	21
	.byte	-128
	.byte	21
	.byte	-112
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	36
	.byte	-2
	.byte	100
	.byte	25
	.byte	-2
	.byte	100
	.section	.rodata.u8x8_t6963_256x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_t6963_256x64_display_info, @object
	.size	u8x8_t6963_256x64_display_info, 24
u8x8_t6963_256x64_display_info:
	.byte	0
	.byte	1
	.byte	110
	.byte	100
	.byte	1
	.byte	6
	.byte	20
	.byte	-116
	.word	1000000
	.byte	0
	.byte	4
	.byte	80
	.byte	80
	.byte	32
	.byte	8
	.byte	0
	.byte	0
	.short	256
	.short	64
	.section	.rodata.u8x8_d_t6963_240x64_init_seq,"a",@progbits
	.type	u8x8_d_t6963_240x64_init_seq, @object
	.size	u8x8_d_t6963_240x64_init_seq, 58
u8x8_d_t6963_240x64_init_seq:
	.byte	-2
	.byte	100
	.byte	24
	.byte	-2
	.byte	100
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	33
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	22
	.byte	30
	.byte	22
	.byte	0
	.byte	21
	.byte	65
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	66
	.byte	22
	.byte	30
	.byte	22
	.byte	0
	.byte	21
	.byte	67
	.byte	-2
	.byte	2
	.byte	21
	.byte	-128
	.byte	21
	.byte	-112
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	36
	.byte	-2
	.byte	100
	.byte	25
	.byte	-2
	.byte	100
	.section	.rodata.u8x8_t6963_240x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_t6963_240x64_display_info, @object
	.size	u8x8_t6963_240x64_display_info, 24
u8x8_t6963_240x64_display_info:
	.byte	0
	.byte	1
	.byte	110
	.byte	100
	.byte	1
	.byte	6
	.byte	20
	.byte	-116
	.word	1000000
	.byte	0
	.byte	4
	.byte	80
	.byte	80
	.byte	30
	.byte	8
	.byte	0
	.byte	0
	.short	240
	.short	64
	.section	.rodata.u8x8_d_t6963_240x128_init_seq,"a",@progbits
	.type	u8x8_d_t6963_240x128_init_seq, @object
	.size	u8x8_d_t6963_240x128_init_seq, 58
u8x8_d_t6963_240x128_init_seq:
	.byte	-2
	.byte	100
	.byte	24
	.byte	-2
	.byte	100
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	33
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	22
	.byte	30
	.byte	22
	.byte	0
	.byte	21
	.byte	65
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	66
	.byte	22
	.byte	30
	.byte	22
	.byte	0
	.byte	21
	.byte	67
	.byte	-2
	.byte	2
	.byte	21
	.byte	-128
	.byte	21
	.byte	-112
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	36
	.byte	-2
	.byte	100
	.byte	25
	.byte	-2
	.byte	100
	.section	.rodata.u8x8_t6963_240x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_t6963_240x128_display_info, @object
	.size	u8x8_t6963_240x128_display_info, 24
u8x8_t6963_240x128_display_info:
	.byte	0
	.byte	1
	.byte	110
	.byte	100
	.byte	1
	.byte	6
	.byte	20
	.byte	-116
	.word	1000000
	.byte	0
	.byte	4
	.byte	80
	.byte	80
	.byte	30
	.byte	16
	.byte	0
	.byte	0
	.short	240
	.short	128
	.section	.rodata.u8x8_d_t6963_powersave1_seq,"a",@progbits
	.type	u8x8_d_t6963_powersave1_seq, @object
	.size	u8x8_d_t6963_powersave1_seq, 5
u8x8_d_t6963_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_t6963_powersave0_seq,"a",@progbits
	.type	u8x8_d_t6963_powersave0_seq, @object
	.size	u8x8_d_t6963_powersave0_seq, 5
u8x8_d_t6963_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-104
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb04
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.4byte	.LASF93
	.4byte	.LASF94
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
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3b
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3d7
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3b
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x3b
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x3b
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3b
	.4byte	0x9f
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x3d
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x3e
	.4byte	0x89
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x3f
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	0x374
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55e
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	0x39a
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	0x3a5
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	0x3b0
	.uleb128 0x15
	.4byte	0x3b9
	.uleb128 0x15
	.4byte	0x3c2
	.uleb128 0x15
	.4byte	0x3cb
	.uleb128 0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x54d
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	0x39a
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	0x3a5
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x18
	.4byte	0x3b0
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	0x3b9
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	0x3c2
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	0x3cb
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0xaa7
	.4byte	0x494
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0xab3
	.4byte	0x4b1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0xab3
	.4byte	0x4cd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0xabf
	.4byte	0x4e7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0xabf
	.4byte	0x501
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0xacb
	.4byte	0x521
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0xabf
	.4byte	0x53b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb2
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0xad7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0xae3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.byte	0xbd
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60c
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xbd
	.4byte	0x32d
	.4byte	.LLST12
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0xbd
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0xbd
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xbd
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0xaef
	.4byte	0x5ca
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_240x128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0xafb
	.4byte	0x5de
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0xae3
	.4byte	0x5fb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_240x128_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0x374
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x112
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bf
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x112
	.4byte	0x32d
	.4byte	.LLST13
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x112
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x112
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x112
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0xaef
	.4byte	0x67d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_240x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0xafb
	.4byte	0x691
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0xae3
	.4byte	0x6ae
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_240x64_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL39
	.4byte	0x374
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x168
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x772
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x168
	.4byte	0x32d
	.4byte	.LLST14
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x168
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x168
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x168
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0xaef
	.4byte	0x730
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_256x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0xafb
	.4byte	0x744
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL44
	.4byte	0xae3
	.4byte	0x761
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_256x64_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL47
	.4byte	0x374
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x825
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x32d
	.4byte	.LLST15
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0xaef
	.4byte	0x7e3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_128x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL51
	.4byte	0xafb
	.4byte	0x7f7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0xae3
	.4byte	0x814
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_128x64_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL55
	.4byte	0x374
	.uleb128 0x1a
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
	.2byte	0x20d
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d8
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x20d
	.4byte	0x32d
	.4byte	.LLST16
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x20d
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x20d
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0xaef
	.4byte	0x896
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_160x80_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xafb
	.4byte	0x8aa
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL60
	.4byte	0xae3
	.4byte	0x8c7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_160x80_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x374
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x220
	.4byte	0x7e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x220
	.4byte	0x32d
	.4byte	.LLST17
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x220
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x220
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x220
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0xaef
	.4byte	0x949
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_128x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL67
	.4byte	0xafb
	.4byte	0x95d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0xae3
	.4byte	0x97a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_160x80_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0x374
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x99b
	.uleb128 0x25
	.4byte	0x99b
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF71
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2c
	.4byte	0x9b3
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_powersave0_seq
	.uleb128 0xe
	.4byte	0x98b
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.byte	0x33
	.4byte	0x9c9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_powersave1_seq
	.uleb128 0xe
	.4byte	0x98b
	.uleb128 0x26
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7e
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_240x128_display_info
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x9ef
	.uleb128 0x25
	.4byte	0x99b
	.byte	0x39
	.byte	0
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x1
	.byte	0x97
	.4byte	0xa00
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_240x128_init_seq
	.uleb128 0xe
	.4byte	0x9df
	.uleb128 0x26
	.4byte	.LASF76
	.byte	0x1
	.byte	0xd2
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_240x64_display_info
	.uleb128 0x26
	.4byte	.LASF77
	.byte	0x1
	.byte	0xec
	.4byte	0xa27
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_240x64_init_seq
	.uleb128 0xe
	.4byte	0x9df
	.uleb128 0x27
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x129
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_256x64_display_info
	.uleb128 0x27
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x142
	.4byte	0xa50
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_256x64_init_seq
	.uleb128 0xe
	.4byte	0x9df
	.uleb128 0x27
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x17c
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_128x64_display_info
	.uleb128 0x27
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x195
	.4byte	0xa79
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_128x64_init_seq
	.uleb128 0xe
	.4byte	0x9df
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_t6963_160x80_display_info
	.uleb128 0x27
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1e7
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_t6963_160x80_init_seq
	.uleb128 0xe
	.4byte	0x9df
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x259
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x256
	.uleb128 0x28
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x255
	.uleb128 0x28
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x258
	.uleb128 0x28
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x28
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x278
	.uleb128 0x28
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x28
	.4byte	.LASF91
	.4byte	.LASF91
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x38
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x38
	.byte	0x74
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0xa
	.byte	0x75
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL5-1
	.4byte	.LVL6
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
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
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
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
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF66:
	.string	"u8x8_d_t6963_240x64"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF84:
	.string	"u8x8_cad_StartTransfer"
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
.LASF73:
	.string	"u8x8_d_t6963_powersave1_seq"
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
.LASF95:
	.string	"u8x8_d_t6963_common"
.LASF57:
	.string	"tile_ptr"
.LASF63:
	.string	"arg_int"
.LASF83:
	.string	"u8x8_d_t6963_160x80_init_seq"
.LASF87:
	.string	"u8x8_cad_SendData"
.LASF81:
	.string	"u8x8_d_t6963_128x64_init_seq"
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
.LASF86:
	.string	"u8x8_cad_SendCmd"
.LASF91:
	.string	"u8x8_d_helper_display_init"
.LASF88:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF62:
	.string	"u8x8"
.LASF47:
	.string	"data_setup_time_ns"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF76:
	.string	"u8x8_t6963_240x64_display_info"
.LASF79:
	.string	"u8x8_d_t6963_256x64_init_seq"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF93:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_t6963.c"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF74:
	.string	"u8x8_t6963_240x128_display_info"
.LASF44:
	.string	"sck_clock_hz"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF67:
	.string	"u8x8_d_t6963_256x64"
.LASF77:
	.string	"u8x8_d_t6963_240x64_init_seq"
.LASF70:
	.string	"u8x8_d_t6963_128x64_alt"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF78:
	.string	"u8x8_t6963_256x64_display_info"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF89:
	.string	"u8x8_cad_SendSequence"
.LASF69:
	.string	"u8x8_d_t6963_160x80"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF72:
	.string	"u8x8_d_t6963_powersave0_seq"
.LASF37:
	.string	"chip_disable_level"
.LASF75:
	.string	"u8x8_d_t6963_240x128_init_seq"
.LASF25:
	.string	"i2c_address"
.LASF80:
	.string	"u8x8_t6963_128x64_display_info"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF82:
	.string	"u8x8_t6963_160x80_display_info"
.LASF26:
	.string	"i2c_started"
.LASF68:
	.string	"u8x8_d_t6963_128x64"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF90:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF65:
	.string	"u8x8_d_t6963_240x128"
.LASF94:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF85:
	.string	"u8x8_cad_SendArg"
.LASF92:
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
