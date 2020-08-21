	.file	"u8x8_d_sh1107.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_sh1107_generic,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_sh1107_64x128_noname_powersave0_seq
	.literal .LC1, u8x8_d_sh1107_64x128_noname_powersave1_seq
	.literal .LC2, u8x8_d_sh1107_64x128_noname_flip0_seq
	.literal .LC3, u8x8_d_sh1107_64x128_noname_flip1_seq
	.align	4
	.type	u8x8_d_sh1107_generic, @function
u8x8_d_sh1107_generic:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_sh1107.c"
	.loc 1 75 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 78 0
	movi.n	a8, 0xd
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
	beq	a3, a8, .L7
	j	.L11
.LVL3:
.L5:
	.loc 1 93 0
	l32r	a11, .LC0
	.loc 1 92 0
	beqz.n	a4, .L16
.L8:
	.loc 1 95 0
	l32r	a11, .LC1
.L16:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL4:
	j	.L13
.LVL5:
.L3:
	.loc 1 98 0
	bnez.n	a4, .L9
	.loc 1 100 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL6:
	.loc 1 101 0
	l32i.n	a3, a2, 0
.LVL7:
	l8ui	a3, a3, 18
	j	.L15
.LVL8:
.L9:
	.loc 1 105 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL9:
	.loc 1 106 0
	l32i.n	a3, a2, 0
.LVL10:
	l8ui	a3, a3, 19
.L15:
	s8i	a3, a2, 34
	j	.L13
.LVL11:
.L6:
	.loc 1 111 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL12:
	.loc 1 112 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL13:
	.loc 1 113 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL14:
.L14:
	.loc 1 114 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL15:
.L13:
	.loc 1 153 0
	movi.n	a2, 1
.LVL16:
	.loc 1 115 0
	retw.n
.LVL17:
.L7:
	.loc 1 118 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL18:
	.loc 1 121 0
	l8ui	a8, a2, 34
	.loc 1 119 0
	l8ui	a3, a5, 5
.LVL19:
	.loc 1 126 0
	mov.n	a10, a2
	.loc 1 121 0
	addx8	a3, a3, a8
.LVL20:
	extui	a3, a3, 0, 8
.LVL21:
	.loc 1 126 0
	movi.n	a8, 0x10
	srli	a11, a3, 4
	or	a11, a11, a8
	call8	u8x8_cad_SendCmd
.LVL22:
	.loc 1 127 0
	extui	a11, a3, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL23:
	.loc 1 130 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
.LVL24:
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL25:
.L10:
	.loc 1 136 0 discriminator 1
	l8ui	a11, a5, 4
	l32i.n	a12, a5, 0
	slli	a11, a11, 3
	.loc 1 145 0 discriminator 1
	addi.n	a4, a4, -1
.LVL26:
	.loc 1 136 0 discriminator 1
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 145 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL27:
	.loc 1 136 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL28:
	.loc 1 146 0 discriminator 1
	bnez.n	a4, .L10
	j	.L14
.LVL29:
.L11:
	.loc 1 151 0
	movi.n	a2, 0
.LVL30:
	.loc 1 154 0
	retw.n
.LFE0:
	.size	u8x8_d_sh1107_generic, .-u8x8_d_sh1107_generic
	.section	.text.u8x8_d_sh1107_64x128,"ax",@progbits
	.literal_position
	.literal .LC4, u8x8_d_sh1107_64x128_noname_init_seq
	.literal .LC5, u8x8_sh1107_64x128_noname_display_info
	.align	4
	.global	u8x8_d_sh1107_64x128
	.type	u8x8_d_sh1107_64x128, @function
u8x8_d_sh1107_64x128:
.LFB1:
	.loc 1 215 0
.LVL31:
	entry	sp, 32
.LCFI1:
	.loc 1 215 0
	extui	a3, a3, 0, 8
	.loc 1 217 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_sh1107_generic
.LVL32:
	bnez.n	a10, .L21
	.loc 1 220 0
	movi.n	a8, 9
	beq	a3, a8, .L19
	bnei	a3, 10, .L18
	.loc 1 223 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL33:
	.loc 1 224 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL34:
	j	.L21
.L19:
	.loc 1 227 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL35:
.L21:
	.loc 1 218 0
	movi.n	a10, 1
.L18:
	.loc 1 233 0
	mov.n	a2, a10
.LVL36:
	retw.n
.LFE1:
	.size	u8x8_d_sh1107_64x128, .-u8x8_d_sh1107_64x128
	.section	.text.u8x8_d_sh1107_seeed_96x96,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_d_sh1107_seeed_96x96_init_seq
	.literal .LC7, u8x8_sh1107_seeed_96x96_display_info
	.align	4
	.global	u8x8_d_sh1107_seeed_96x96
	.type	u8x8_d_sh1107_seeed_96x96, @function
u8x8_d_sh1107_seeed_96x96:
.LFB2:
	.loc 1 299 0
.LVL37:
	entry	sp, 32
.LCFI2:
	.loc 1 299 0
	extui	a3, a3, 0, 8
	.loc 1 301 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_sh1107_generic
.LVL38:
	bnez.n	a10, .L26
	.loc 1 304 0
	movi.n	a8, 9
	beq	a3, a8, .L24
	bnei	a3, 10, .L23
	.loc 1 307 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL39:
	.loc 1 308 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL40:
	j	.L26
.L24:
	.loc 1 311 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL41:
.L26:
	.loc 1 302 0
	movi.n	a10, 1
.L23:
	.loc 1 317 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE2:
	.size	u8x8_d_sh1107_seeed_96x96, .-u8x8_d_sh1107_seeed_96x96
	.section	.text.u8x8_d_sh1107_128x128,"ax",@progbits
	.literal_position
	.literal .LC8, u8x8_d_sh1107_128x128_init_seq
	.literal .LC9, u8x8_sh1107_128x128_display_info
	.align	4
	.global	u8x8_d_sh1107_128x128
	.type	u8x8_d_sh1107_128x128, @function
u8x8_d_sh1107_128x128:
.LFB3:
	.loc 1 381 0
.LVL43:
	entry	sp, 32
.LCFI3:
	.loc 1 381 0
	extui	a3, a3, 0, 8
	.loc 1 383 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_sh1107_generic
.LVL44:
	bnez.n	a10, .L31
	.loc 1 386 0
	movi.n	a8, 9
	beq	a3, a8, .L29
	bnei	a3, 10, .L28
	.loc 1 389 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL45:
	.loc 1 390 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL46:
	j	.L31
.L29:
	.loc 1 393 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL47:
.L31:
	.loc 1 384 0
	movi.n	a10, 1
.L28:
	.loc 1 399 0
	mov.n	a2, a10
.LVL48:
	retw.n
.LFE3:
	.size	u8x8_d_sh1107_128x128, .-u8x8_d_sh1107_128x128
	.section	.text.u8x8_d_sh1107_pimoroni_128x128,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_d_sh1107_128x128_init_seq
	.literal .LC11, u8x8_sh1107_pimoroni_128x128_display_info
	.align	4
	.global	u8x8_d_sh1107_pimoroni_128x128
	.type	u8x8_d_sh1107_pimoroni_128x128, @function
u8x8_d_sh1107_pimoroni_128x128:
.LFB4:
	.loc 1 429 0
.LVL49:
	entry	sp, 32
.LCFI4:
	.loc 1 429 0
	extui	a3, a3, 0, 8
	.loc 1 431 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_sh1107_generic
.LVL50:
	bnez.n	a10, .L36
	.loc 1 434 0
	movi.n	a8, 9
	beq	a3, a8, .L34
	bnei	a3, 10, .L33
	.loc 1 437 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL51:
	.loc 1 438 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL52:
	j	.L36
.L34:
	.loc 1 441 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL53:
.L36:
	.loc 1 432 0
	movi.n	a10, 1
.L33:
	.loc 1 447 0
	mov.n	a2, a10
.LVL54:
	retw.n
.LFE4:
	.size	u8x8_d_sh1107_pimoroni_128x128, .-u8x8_d_sh1107_pimoroni_128x128
	.section	.text.u8x8_d_sh1107_seeed_128x128,"ax",@progbits
	.literal_position
	.literal .LC12, u8x8_d_sh1107_128x128_init_seq
	.literal .LC13, u8x8_seeed_128x128_display_info
	.align	4
	.global	u8x8_d_sh1107_seeed_128x128
	.type	u8x8_d_sh1107_seeed_128x128, @function
u8x8_d_sh1107_seeed_128x128:
.LFB5:
	.loc 1 483 0
.LVL55:
	entry	sp, 32
.LCFI5:
	.loc 1 483 0
	extui	a3, a3, 0, 8
	.loc 1 485 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_sh1107_generic
.LVL56:
	bnez.n	a10, .L41
	.loc 1 488 0
	movi.n	a8, 9
	beq	a3, a8, .L39
	bnei	a3, 10, .L38
	.loc 1 491 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL57:
	.loc 1 492 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL58:
	j	.L41
.L39:
	.loc 1 495 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL59:
.L41:
	.loc 1 486 0
	movi.n	a10, 1
.L38:
	.loc 1 501 0
	mov.n	a2, a10
.LVL60:
	retw.n
.LFE5:
	.size	u8x8_d_sh1107_seeed_128x128, .-u8x8_d_sh1107_seeed_128x128
	.section	.rodata.u8x8_seeed_128x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_seeed_128x128_display_info, @object
	.size	u8x8_seeed_128x128_display_info, 24
u8x8_seeed_128x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	2
	.byte	40
	.byte	-106
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
	.section	.rodata.u8x8_sh1107_pimoroni_128x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_sh1107_pimoroni_128x128_display_info, @object
	.size	u8x8_sh1107_pimoroni_128x128_display_info, 24
u8x8_sh1107_pimoroni_128x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
	.section	.rodata.u8x8_sh1107_128x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_sh1107_128x128_display_info, @object
	.size	u8x8_sh1107_128x128_display_info, 24
u8x8_sh1107_128x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	16
	.byte	16
	.byte	96
	.byte	96
	.short	128
	.short	128
	.section	.rodata.u8x8_d_sh1107_128x128_init_seq,"a",@progbits
	.type	u8x8_d_sh1107_128x128_init_seq, @object
	.size	u8x8_d_sh1107_128x128_init_seq, 45
u8x8_d_sh1107_128x128_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-36
	.byte	22
	.byte	0
	.byte	21
	.byte	-127
	.byte	22
	.byte	47
	.byte	21
	.byte	32
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	21
	.byte	-88
	.byte	22
	.byte	127
	.byte	21
	.byte	-43
	.byte	22
	.byte	80
	.byte	21
	.byte	-39
	.byte	22
	.byte	34
	.byte	21
	.byte	-37
	.byte	22
	.byte	53
	.byte	21
	.byte	-80
	.byte	21
	.byte	-38
	.byte	22
	.byte	18
	.byte	21
	.byte	-92
	.byte	21
	.byte	-90
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_sh1107_seeed_96x96_display_info,"a",@progbits
	.align	4
	.type	u8x8_sh1107_seeed_96x96_display_info, @object
	.size	u8x8_sh1107_seeed_96x96_display_info, 24
u8x8_sh1107_seeed_96x96_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	12
	.byte	12
	.byte	0
	.byte	0
	.short	96
	.short	96
	.section	.rodata.u8x8_d_sh1107_seeed_96x96_init_seq,"a",@progbits
	.type	u8x8_d_sh1107_seeed_96x96_init_seq, @object
	.size	u8x8_d_sh1107_seeed_96x96_init_seq, 43
u8x8_d_sh1107_seeed_96x96_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-43
	.byte	22
	.byte	80
	.byte	21
	.byte	32
	.byte	21
	.byte	-45
	.byte	22
	.byte	0
	.byte	21
	.byte	-36
	.byte	22
	.byte	0
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	21
	.byte	-127
	.byte	22
	.byte	-128
	.byte	21
	.byte	-83
	.byte	22
	.byte	-128
	.byte	21
	.byte	-39
	.byte	22
	.byte	31
	.byte	21
	.byte	-37
	.byte	22
	.byte	39
	.byte	21
	.byte	-92
	.byte	21
	.byte	-90
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_sh1107_64x128_noname_display_info,"a",@progbits
	.align	4
	.type	u8x8_sh1107_64x128_noname_display_info, @object
	.size	u8x8_sh1107_64x128_noname_display_info, 24
u8x8_sh1107_64x128_noname_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	50
	.byte	50
	.word	8000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	8
	.byte	16
	.byte	0
	.byte	0
	.short	64
	.short	128
	.section	.rodata.u8x8_d_sh1107_64x128_noname_init_seq,"a",@progbits
	.type	u8x8_d_sh1107_64x128_noname_init_seq, @object
	.size	u8x8_d_sh1107_64x128_noname_init_seq, 49
u8x8_d_sh1107_64x128_noname_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-36
	.byte	22
	.byte	0
	.byte	21
	.byte	-127
	.byte	22
	.byte	47
	.byte	21
	.byte	32
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	21
	.byte	-88
	.byte	22
	.byte	127
	.byte	21
	.byte	-45
	.byte	22
	.byte	96
	.byte	21
	.byte	-43
	.byte	22
	.byte	81
	.byte	21
	.byte	-39
	.byte	22
	.byte	34
	.byte	21
	.byte	-37
	.byte	22
	.byte	53
	.byte	21
	.byte	-80
	.byte	21
	.byte	-38
	.byte	22
	.byte	18
	.byte	21
	.byte	-92
	.byte	21
	.byte	-90
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1107_64x128_noname_flip1_seq,"a",@progbits
	.type	u8x8_d_sh1107_64x128_noname_flip1_seq, @object
	.size	u8x8_d_sh1107_64x128_noname_flip1_seq, 7
u8x8_d_sh1107_64x128_noname_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1107_64x128_noname_flip0_seq,"a",@progbits
	.type	u8x8_d_sh1107_64x128_noname_flip0_seq, @object
	.size	u8x8_d_sh1107_64x128_noname_flip0_seq, 7
u8x8_d_sh1107_64x128_noname_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1107_64x128_noname_powersave1_seq,"a",@progbits
	.type	u8x8_d_sh1107_64x128_noname_powersave1_seq, @object
	.size	u8x8_d_sh1107_64x128_noname_powersave1_seq, 5
u8x8_d_sh1107_64x128_noname_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1107_64x128_noname_powersave0_seq,"a",@progbits
	.type	u8x8_d_sh1107_64x128_noname_powersave0_seq, @object
	.size	u8x8_d_sh1107_64x128_noname_powersave0_seq, 5
u8x8_d_sh1107_64x128_noname_powersave0_seq:
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa9a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.4byte	.LASF92
	.4byte	.LASF93
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
	.4byte	.LASF94
	.byte	0x1
	.byte	0x4a
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50f
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4a
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4a
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x4a
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x4c
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x4c
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x4d
	.4byte	0x358
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0xa3d
	.4byte	0x406
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0xa3d
	.4byte	0x423
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
	.4byte	u8x8_d_sh1107_64x128_noname_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0xa3d
	.4byte	0x440
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
	.4byte	u8x8_d_sh1107_64x128_noname_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0xa49
	.4byte	0x454
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0xa55
	.4byte	0x46e
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
	.4byte	.LVL14
	.4byte	0xa61
	.4byte	0x488
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
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0xa6d
	.4byte	0x49c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL18
	.4byte	0xa49
	.4byte	0x4b0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0xa55
	.4byte	0x4ce
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x40
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0xa55
	.4byte	0x4ea
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0xa55
	.4byte	0x4fe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0xa79
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd6
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d2
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd6
	.4byte	0x32d
	.4byte	.LLST7
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xd6
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd6
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0xd6
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0x374
	.4byte	0x587
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
	.4byte	.LVL33
	.4byte	0xa85
	.4byte	0x59b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0xa3d
	.4byte	0x5b8
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
	.4byte	u8x8_d_sh1107_64x128_noname_init_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0xa91
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
	.4byte	u8x8_sh1107_64x128_noname_display_info
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x12a
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69a
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x12a
	.4byte	0x32d
	.4byte	.LLST8
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x12a
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x12a
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL38
	.4byte	0x374
	.4byte	0x64f
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
	.4byte	0xa85
	.4byte	0x663
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0xa3d
	.4byte	0x680
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
	.4byte	u8x8_d_sh1107_seeed_96x96_init_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL41
	.4byte	0xa91
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
	.4byte	u8x8_sh1107_seeed_96x96_display_info
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x17c
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x762
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x17c
	.4byte	0x32d
	.4byte	.LLST9
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x17c
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x17c
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0x374
	.4byte	0x717
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
	.4byte	.LVL45
	.4byte	0xa85
	.4byte	0x72b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL46
	.4byte	0xa3d
	.4byte	0x748
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
	.4byte	u8x8_d_sh1107_128x128_init_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL47
	.4byte	0xa91
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
	.4byte	u8x8_sh1107_128x128_display_info
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82a
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x32d
	.4byte	.LLST10
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL50
	.4byte	0x374
	.4byte	0x7df
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
	.4byte	.LVL51
	.4byte	0xa85
	.4byte	0x7f3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL52
	.4byte	0xa3d
	.4byte	0x810
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
	.4byte	u8x8_d_sh1107_128x128_init_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL53
	.4byte	0xa91
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
	.4byte	u8x8_sh1107_pimoroni_128x128_display_info
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f2
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x32d
	.4byte	.LLST11
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL56
	.4byte	0x374
	.4byte	0x8a7
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
	.4byte	.LVL57
	.4byte	0xa85
	.4byte	0x8bb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL58
	.4byte	0xa3d
	.4byte	0x8d8
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
	.4byte	u8x8_d_sh1107_128x128_init_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0xa91
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
	.4byte	u8x8_seeed_128x128_display_info
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x902
	.uleb128 0x1e
	.4byte	0x902
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0x1f
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2b
	.4byte	0x91a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1107_64x128_noname_powersave0_seq
	.uleb128 0xe
	.4byte	0x8f2
	.uleb128 0x1f
	.4byte	.LASF72
	.byte	0x1
	.byte	0x32
	.4byte	0x930
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1107_64x128_noname_powersave1_seq
	.uleb128 0xe
	.4byte	0x8f2
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x945
	.uleb128 0x1e
	.4byte	0x902
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF73
	.byte	0x1
	.byte	0x39
	.4byte	0x956
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1107_64x128_noname_flip0_seq
	.uleb128 0xe
	.4byte	0x935
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x1
	.byte	0x41
	.4byte	0x96c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1107_64x128_noname_flip1_seq
	.uleb128 0xe
	.4byte	0x935
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x981
	.uleb128 0x1e
	.4byte	0x902
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9f
	.4byte	0x992
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1107_64x128_noname_init_seq
	.uleb128 0xe
	.4byte	0x971
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.byte	0xbe
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1107_64x128_noname_display_info
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x9b8
	.uleb128 0x1e
	.4byte	0x902
	.byte	0x2a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0xee
	.4byte	0x9c9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1107_seeed_96x96_init_seq
	.uleb128 0xe
	.4byte	0x9a8
	.uleb128 0x20
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x112
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1107_seeed_96x96_display_info
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x9f0
	.uleb128 0x1e
	.4byte	0x902
	.byte	0x2c
	.byte	0
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x144
	.4byte	0xa02
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1107_128x128_init_seq
	.uleb128 0xe
	.4byte	0x9e0
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x164
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1107_128x128_display_info
	.uleb128 0x20
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x194
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1107_pimoroni_128x128_display_info
	.uleb128 0x20
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_seeed_128x128_display_info
	.uleb128 0x21
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x278
	.uleb128 0x21
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x259
	.uleb128 0x21
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x255
	.uleb128 0x21
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x256
	.uleb128 0x21
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x21
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x258
	.uleb128 0x21
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x21
	.4byte	.LASF90
	.4byte	.LASF90
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL28
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
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
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
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
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
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
.LLST10:
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
.LASF73:
	.string	"u8x8_d_sh1107_64x128_noname_flip0_seq"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF65:
	.string	"u8x8_d_sh1107_64x128"
.LASF75:
	.string	"u8x8_d_sh1107_64x128_noname_init_seq"
.LASF45:
	.string	"spi_mode"
.LASF64:
	.string	"arg_ptr"
.LASF36:
	.string	"chip_enable_level"
.LASF69:
	.string	"u8x8_d_sh1107_seeed_128x128"
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
.LASF77:
	.string	"u8x8_d_sh1107_seeed_96x96_init_seq"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF78:
	.string	"u8x8_sh1107_seeed_96x96_display_info"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF79:
	.string	"u8x8_d_sh1107_128x128_init_seq"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF68:
	.string	"u8x8_d_sh1107_pimoroni_128x128"
.LASF62:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF63:
	.string	"arg_int"
.LASF88:
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
.LASF85:
	.string	"u8x8_cad_SendCmd"
.LASF89:
	.string	"u8x8_d_helper_display_init"
.LASF87:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF74:
	.string	"u8x8_d_sh1107_64x128_noname_flip1_seq"
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
.LASF84:
	.string	"u8x8_cad_StartTransfer"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF76:
	.string	"u8x8_sh1107_64x128_noname_display_info"
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
.LASF66:
	.string	"u8x8_d_sh1107_seeed_96x96"
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
.LASF83:
	.string	"u8x8_cad_SendSequence"
.LASF82:
	.string	"u8x8_seeed_128x128_display_info"
.LASF80:
	.string	"u8x8_sh1107_128x128_display_info"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF67:
	.string	"u8x8_d_sh1107_128x128"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF94:
	.string	"u8x8_d_sh1107_generic"
.LASF71:
	.string	"u8x8_d_sh1107_64x128_noname_powersave0_seq"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF26:
	.string	"i2c_started"
.LASF90:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF93:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF86:
	.string	"u8x8_cad_SendArg"
.LASF91:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF92:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_sh1107.c"
.LASF15:
	.string	"next_cb"
.LASF72:
	.string	"u8x8_d_sh1107_64x128_noname_powersave1_seq"
.LASF81:
	.string	"u8x8_sh1107_pimoroni_128x128_display_info"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
