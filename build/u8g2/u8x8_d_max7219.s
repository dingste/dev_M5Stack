	.file	"u8x8_d_max7219.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_max7219_generic,"ax",@progbits
	.literal_position
	.align	4
	.type	u8x8_d_max7219_generic, @function
u8x8_d_max7219_generic:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_max7219.c"
	.loc 1 107 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 110 0
	movi.n	a6, 0xe
	beq	a3, a6, .L3
	movi.n	a4, 0xf
.LVL1:
	beq	a3, a4, .L4
	j	.L12
.LVL2:
.L3:
	.loc 1 133 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL3:
	.loc 1 137 0
	srli	a4, a4, 4
.LVL4:
	.loc 1 134 0
	movi.n	a3, 0
.LVL5:
	j	.L5
.LVL6:
.L6:
	.loc 1 136 0 discriminator 3
	movi.n	a11, 0xa
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL7:
	.loc 1 137 0 discriminator 3
	mov.n	a11, a4
	mov.n	a10, a2
	.loc 1 134 0 discriminator 3
	addi.n	a3, a3, 1
.LVL8:
	.loc 1 137 0 discriminator 3
	call8	u8x8_cad_SendArg
.LVL9:
	.loc 1 134 0 discriminator 3
	extui	a3, a3, 0, 8
.LVL10:
.L5:
	.loc 1 134 0 is_stmt 0 discriminator 1
	l32i.n	a5, a2, 0
	l8ui	a5, a5, 16
	bltu	a3, a5, .L6
	.loc 1 139 0 is_stmt 1
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL11:
	j	.L13
.LVL12:
.L4:
.LBB4:
.LBB5:
	.loc 1 148 0
	l8ui	a6, a5, 4
.LVL13:
	.loc 1 149 0
	l32i.n	a3, a5, 0
.LVL14:
	movi.n	a4, 1
	.loc 1 150 0
	movi.n	a5, 9
.LVL15:
.L9:
	.loc 1 152 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL16:
	add.n	a7, a3, a6
	j	.L7
.L8:
	.loc 1 155 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL17:
	.loc 1 156 0
	l8ui	a11, a3, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL18:
	.loc 1 157 0
	addi.n	a3, a3, 1
.LVL19:
.L7:
	.loc 1 153 0
	bne	a3, a7, .L8
	.loc 1 159 0
	mov.n	a10, a2
	addi.n	a4, a4, 1
.LVL20:
	call8	u8x8_cad_EndTransfer
.LVL21:
	.loc 1 150 0
	bne	a4, a5, .L9
.LVL22:
.L13:
	movi.n	a2, 1
.LVL23:
	retw.n
.LVL24:
.L12:
.LBE5:
.LBE4:
	.loc 1 164 0
	movi.n	a2, 0
.LVL25:
	.loc 1 167 0
	retw.n
.LFE0:
	.size	u8x8_d_max7219_generic, .-u8x8_d_max7219_generic
	.section	.text.u8x8_d_max7219_32x8,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_max7219_32x8_display_info
	.literal .LC3, u8x8_d_max7219_init_seq
	.literal .LC4, u8x8_d_max7219_powersave0_seq
	.literal .LC5, u8x8_d_max7219_powersave1_seq
	.align	4
	.global	u8x8_d_max7219_32x8
	.type	u8x8_d_max7219_32x8, @function
u8x8_d_max7219_32x8:
.LFB1:
	.loc 1 196 0
.LVL26:
	entry	sp, 32
.LCFI1:
	.loc 1 196 0
	extui	a11, a3, 0, 8
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 197 0
	beqi	a11, 10, .L16
	movi.n	a8, 0xb
	beq	a11, a8, .L17
	movi.n	a8, 9
	bne	a11, a8, .L21
	.loc 1 200 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL27:
	j	.L23
.L16:
	.loc 1 203 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL28:
	.loc 1 204 0
	l32r	a11, .LC3
	j	.L22
.L17:
	.loc 1 210 0
	l32r	a11, .LC5
	.loc 1 207 0
	bnez.n	a12, .L22
	.loc 1 208 0
	l32r	a11, .LC4
.L22:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL29:
.L23:
	.loc 1 211 0
	movi.n	a2, 1
.LVL30:
	retw.n
.LVL31:
.L21:
	.loc 1 213 0
	mov.n	a10, a2
	call8	u8x8_d_max7219_generic
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 214 0
	retw.n
.LFE1:
	.size	u8x8_d_max7219_32x8, .-u8x8_d_max7219_32x8
	.section	.text.u8x8_d_max7219_16x16,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_max7219_16x16_display_info
	.literal .LC7, u8x8_d_max7219_init_seq
	.literal .LC8, u8x8_d_max7219_powersave0_seq
	.literal .LC9, u8x8_d_max7219_powersave1_seq
	.align	4
	.global	u8x8_d_max7219_16x16
	.type	u8x8_d_max7219_16x16, @function
u8x8_d_max7219_16x16:
.LFB2:
	.loc 1 251 0
.LVL34:
	entry	sp, 32
.LCFI2:
	.loc 1 251 0
	extui	a11, a3, 0, 8
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 252 0
	beqi	a11, 10, .L26
	movi.n	a8, 0xb
	beq	a11, a8, .L27
	movi.n	a8, 9
	bne	a11, a8, .L31
	.loc 1 255 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL35:
	j	.L33
.L26:
	.loc 1 258 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL36:
	.loc 1 259 0
	l32r	a11, .LC7
	j	.L32
.L27:
	.loc 1 265 0
	l32r	a11, .LC9
	.loc 1 262 0
	bnez.n	a12, .L32
	.loc 1 263 0
	l32r	a11, .LC8
.L32:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL37:
.L33:
	.loc 1 266 0
	movi.n	a2, 1
.LVL38:
	retw.n
.LVL39:
.L31:
	.loc 1 268 0
	mov.n	a10, a2
	call8	u8x8_d_max7219_generic
.LVL40:
	mov.n	a2, a10
.LVL41:
	.loc 1 269 0
	retw.n
.LFE2:
	.size	u8x8_d_max7219_16x16, .-u8x8_d_max7219_16x16
	.section	.text.u8x8_d_max7219_8x8,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_max7219_8x8_display_info
	.literal .LC11, u8x8_d_max7219_init_seq
	.literal .LC12, u8x8_d_max7219_powersave0_seq
	.literal .LC13, u8x8_d_max7219_powersave1_seq
	.align	4
	.global	u8x8_d_max7219_8x8
	.type	u8x8_d_max7219_8x8, @function
u8x8_d_max7219_8x8:
.LFB3:
	.loc 1 298 0
.LVL42:
	entry	sp, 32
.LCFI3:
	.loc 1 298 0
	extui	a11, a3, 0, 8
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 299 0
	beqi	a11, 10, .L36
	movi.n	a8, 0xb
	beq	a11, a8, .L37
	movi.n	a8, 9
	bne	a11, a8, .L41
	.loc 1 302 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL43:
	j	.L43
.L36:
	.loc 1 305 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL44:
	.loc 1 306 0
	l32r	a11, .LC11
	j	.L42
.L37:
	.loc 1 312 0
	l32r	a11, .LC13
	.loc 1 309 0
	bnez.n	a12, .L42
	.loc 1 310 0
	l32r	a11, .LC12
.L42:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL45:
.L43:
	.loc 1 313 0
	movi.n	a2, 1
.LVL46:
	retw.n
.LVL47:
.L41:
	.loc 1 315 0
	mov.n	a10, a2
	call8	u8x8_d_max7219_generic
.LVL48:
	mov.n	a2, a10
.LVL49:
	.loc 1 316 0
	retw.n
.LFE3:
	.size	u8x8_d_max7219_8x8, .-u8x8_d_max7219_8x8
	.section	.text.u8x8_d_max7219_64x8,"ax",@progbits
	.literal_position
	.literal .LC14, u8x8_max7219_64x8_display_info
	.literal .LC15, u8x8_d_max7219_8_init_seq
	.literal .LC16, u8x8_d_max7219_8_powersave0_seq
	.literal .LC17, u8x8_d_max7219_8_powersave1_seq
	.align	4
	.global	u8x8_d_max7219_64x8
	.type	u8x8_d_max7219_64x8, @function
u8x8_d_max7219_64x8:
.LFB4:
	.loc 1 439 0
.LVL50:
	entry	sp, 32
.LCFI4:
	.loc 1 439 0
	extui	a11, a3, 0, 8
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 440 0
	beqi	a11, 10, .L46
	movi.n	a8, 0xb
	beq	a11, a8, .L47
	movi.n	a8, 9
	bne	a11, a8, .L51
	.loc 1 443 0
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL51:
	j	.L53
.L46:
	.loc 1 446 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL52:
	.loc 1 447 0
	l32r	a11, .LC15
	j	.L52
.L47:
	.loc 1 453 0
	l32r	a11, .LC17
	.loc 1 450 0
	bnez.n	a12, .L52
	.loc 1 451 0
	l32r	a11, .LC16
.L52:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL53:
.L53:
	.loc 1 454 0
	movi.n	a2, 1
.LVL54:
	retw.n
.LVL55:
.L51:
	.loc 1 456 0
	mov.n	a10, a2
	call8	u8x8_d_max7219_generic
.LVL56:
	mov.n	a2, a10
.LVL57:
	.loc 1 457 0
	retw.n
.LFE4:
	.size	u8x8_d_max7219_64x8, .-u8x8_d_max7219_64x8
	.section	.rodata.u8x8_max7219_64x8_display_info,"a",@progbits
	.align	4
	.type	u8x8_max7219_64x8_display_info, @object
	.size	u8x8_max7219_64x8_display_info, 24
u8x8_max7219_64x8_display_info:
	.byte	0
	.byte	1
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	8
	.byte	1
	.byte	0
	.byte	0
	.short	64
	.short	8
	.section	.rodata.u8x8_d_max7219_8_powersave1_seq,"a",@progbits
	.type	u8x8_d_max7219_8_powersave1_seq, @object
	.size	u8x8_d_max7219_8_powersave1_seq, 35
u8x8_d_max7219_8_powersave1_seq:
	.byte	24
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_max7219_8_powersave0_seq,"a",@progbits
	.type	u8x8_d_max7219_8_powersave0_seq, @object
	.size	u8x8_d_max7219_8_powersave0_seq, 35
u8x8_d_max7219_8_powersave0_seq:
	.byte	24
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_max7219_8_init_seq,"a",@progbits
	.type	u8x8_d_max7219_8_init_seq, @object
	.size	u8x8_d_max7219_8_init_seq, 171
u8x8_d_max7219_8_init_seq:
	.byte	24
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	25
	.byte	24
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	25
	.byte	24
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	25
	.byte	24
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	25
	.byte	24
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_max7219_8x8_display_info,"a",@progbits
	.align	4
	.type	u8x8_max7219_8x8_display_info, @object
	.size	u8x8_max7219_8x8_display_info, 24
u8x8_max7219_8x8_display_info:
	.byte	0
	.byte	1
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.short	8
	.short	8
	.section	.rodata.u8x8_max7219_16x16_display_info,"a",@progbits
	.align	4
	.type	u8x8_max7219_16x16_display_info, @object
	.size	u8x8_max7219_16x16_display_info, 24
u8x8_max7219_16x16_display_info:
	.byte	0
	.byte	1
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.short	16
	.short	16
	.section	.rodata.u8x8_max7219_32x8_display_info,"a",@progbits
	.align	4
	.type	u8x8_max7219_32x8_display_info, @object
	.size	u8x8_max7219_32x8_display_info, 24
u8x8_max7219_32x8_display_info:
	.byte	0
	.byte	1
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.short	32
	.short	8
	.section	.rodata.u8x8_d_max7219_powersave1_seq,"a",@progbits
	.type	u8x8_d_max7219_powersave1_seq, @object
	.size	u8x8_d_max7219_powersave1_seq, 19
u8x8_d_max7219_powersave1_seq:
	.byte	24
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_max7219_powersave0_seq,"a",@progbits
	.type	u8x8_d_max7219_powersave0_seq, @object
	.size	u8x8_d_max7219_powersave0_seq, 19
u8x8_d_max7219_powersave0_seq:
	.byte	24
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	21
	.byte	12
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_max7219_init_seq,"a",@progbits
	.type	u8x8_d_max7219_init_seq, @object
	.size	u8x8_d_max7219_init_seq, 91
u8x8_d_max7219_init_seq:
	.byte	24
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	25
	.byte	24
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	0
	.byte	25
	.byte	24
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	21
	.byte	9
	.byte	22
	.byte	0
	.byte	25
	.byte	24
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	21
	.byte	10
	.byte	22
	.byte	10
	.byte	25
	.byte	24
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	11
	.byte	22
	.byte	7
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x933
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.4byte	.LASF88
	.4byte	.LASF89
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
	.4byte	.LASF90
	.byte	0x1
	.byte	0x6a
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3d7
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6a
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x6a
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6a
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6a
	.4byte	0x9f
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x6c
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x6c
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x6d
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	0x374
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x530
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
	.uleb128 0x16
	.4byte	0x3c2
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	0x3cb
	.uleb128 0x17
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x4d8
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	0x39a
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	0x3a5
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	0x384
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x16
	.4byte	0x3b0
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	0x3b9
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	0x3c2
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	0x3cb
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0x8e2
	.4byte	0x498
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x8ee
	.4byte	0x4b2
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0x8fa
	.4byte	0x4c6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x906
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x8e2
	.4byte	0x4ec
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0x8ee
	.4byte	0x505
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0x8fa
	.4byte	0x51f
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0x906
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
	.byte	0xc3
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d5
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc3
	.4byte	0x32d
	.4byte	.LLST13
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0xc3
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc3
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xc3
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0x912
	.4byte	0x59c
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
	.4byte	u8x8_max7219_32x8_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0x91e
	.4byte	0x5b0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x92a
	.4byte	0x5c4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0x374
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x1
	.byte	0xfa
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67a
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xfa
	.4byte	0x32d
	.4byte	.LLST14
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0xfa
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0xfa
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xfa
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x912
	.4byte	0x641
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
	.4byte	u8x8_max7219_16x16_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0x91e
	.4byte	0x655
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL37
	.4byte	0x92a
	.4byte	0x669
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL40
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
	.2byte	0x129
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x724
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x129
	.4byte	0x32d
	.4byte	.LLST15
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x129
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x129
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x129
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x912
	.4byte	0x6eb
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
	.4byte	u8x8_max7219_8x8_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL44
	.4byte	0x91e
	.4byte	0x6ff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0x92a
	.4byte	0x713
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL48
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
	.2byte	0x1b6
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ce
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x32d
	.4byte	.LLST16
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL51
	.4byte	0x912
	.4byte	0x795
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
	.4byte	u8x8_max7219_64x8_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0x91e
	.4byte	0x7a9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL53
	.4byte	0x92a
	.4byte	0x7bd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL56
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
	.4byte	0x7de
	.uleb128 0x25
	.4byte	0x7de
	.byte	0x5a
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF69
	.uleb128 0x26
	.4byte	.LASF70
	.byte	0x1
	.byte	0x29
	.4byte	0x7f6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_max7219_init_seq
	.uleb128 0xe
	.4byte	0x7ce
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x80b
	.uleb128 0x25
	.4byte	0x7de
	.byte	0x12
	.byte	0
	.uleb128 0x26
	.4byte	.LASF71
	.byte	0x1
	.byte	0x55
	.4byte	0x81c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_max7219_powersave0_seq
	.uleb128 0xe
	.4byte	0x7fb
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5f
	.4byte	0x832
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_max7219_powersave1_seq
	.uleb128 0xe
	.4byte	0x7fb
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.byte	0xab
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_max7219_32x8_display_info
	.uleb128 0x26
	.4byte	.LASF74
	.byte	0x1
	.byte	0xda
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_max7219_16x16_display_info
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x111
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_max7219_8x8_display_info
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x87b
	.uleb128 0x25
	.4byte	0x7de
	.byte	0xaa
	.byte	0
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x141
	.4byte	0x88d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_max7219_8_init_seq
	.uleb128 0xe
	.4byte	0x86b
	.uleb128 0x24
	.4byte	0x7e
	.4byte	0x8a2
	.uleb128 0x25
	.4byte	0x7de
	.byte	0x22
	.byte	0
	.uleb128 0x27
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x181
	.4byte	0x8b4
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_max7219_8_powersave0_seq
	.uleb128 0xe
	.4byte	0x892
	.uleb128 0x27
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x18f
	.4byte	0x8cb
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_max7219_8_powersave1_seq
	.uleb128 0xe
	.4byte	0x892
	.uleb128 0x27
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x19e
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_max7219_64x8_display_info
	.uleb128 0x28
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x259
	.uleb128 0x28
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x255
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x74
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
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
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE4
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
.LASF69:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF77:
	.string	"u8x8_d_max7219_8_powersave0_seq"
.LASF65:
	.string	"u8x8_d_max7219_32x8"
.LASF83:
	.string	"u8x8_cad_EndTransfer"
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
.LASF88:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_max7219.c"
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
.LASF71:
	.string	"u8x8_d_max7219_powersave0_seq"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF81:
	.string	"u8x8_cad_SendCmd"
.LASF85:
	.string	"u8x8_d_helper_display_init"
.LASF70:
	.string	"u8x8_d_max7219_init_seq"
.LASF58:
	.string	"x_pos"
.LASF67:
	.string	"u8x8_d_max7219_8x8"
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
.LASF78:
	.string	"u8x8_d_max7219_8_powersave1_seq"
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
.LASF80:
	.string	"u8x8_cad_StartTransfer"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF72:
	.string	"u8x8_d_max7219_powersave1_seq"
.LASF44:
	.string	"sck_clock_hz"
.LASF66:
	.string	"u8x8_d_max7219_16x16"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF73:
	.string	"u8x8_max7219_32x8_display_info"
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
.LASF68:
	.string	"u8x8_d_max7219_64x8"
.LASF76:
	.string	"u8x8_d_max7219_8_init_seq"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF74:
	.string	"u8x8_max7219_16x16_display_info"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF90:
	.string	"u8x8_d_max7219_generic"
.LASF22:
	.string	"encoding"
.LASF86:
	.string	"u8x8_cad_SendSequence"
.LASF26:
	.string	"i2c_started"
.LASF79:
	.string	"u8x8_max7219_64x8_display_info"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF84:
	.string	"u8x8_d_helper_display_setup_memory"
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
.LASF15:
	.string	"next_cb"
.LASF75:
	.string	"u8x8_max7219_8x8_display_info"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
