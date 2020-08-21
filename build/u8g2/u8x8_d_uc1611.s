	.file	"u8x8_d_uc1611.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_uc1611_common,"ax",@progbits
	.align	4
	.global	u8x8_d_uc1611_common
	.type	u8x8_d_uc1611_common, @function
u8x8_d_uc1611_common:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1611.c"
	.loc 1 85 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 85 0
	extui	a3, a3, 0, 8
	.loc 1 88 0
	movi.n	a8, 0xe
	.loc 1 85 0
	extui	a4, a4, 0, 8
	.loc 1 88 0
	beq	a3, a8, .L3
	movi.n	a8, 0xf
	bne	a3, a8, .L8
.LVL1:
.LBB4:
.LBB5:
	.loc 1 91 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 95 0
	l8ui	a11, a2, 34
	.loc 1 93 0
	l8ui	a3, a5, 5
.LVL3:
	.loc 1 97 0
	mov.n	a10, a2
	.loc 1 95 0
	addx8	a3, a3, a11
.LVL4:
	extui	a3, a3, 0, 8
.LVL5:
	.loc 1 97 0
	extui	a11, a3, 0, 4
	call8	u8x8_cad_SendCmd
.LVL6:
	.loc 1 98 0
	srli	a3, a3, 4
.LVL7:
	movi.n	a11, 0x10
	or	a11, a3, a11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL8:
	.loc 1 100 0
	l8ui	a3, a5, 6
.LVL9:
	.loc 1 101 0
	movi	a8, 0x60
	extui	a11, a3, 0, 4
	or	a11, a11, a8
	sext	a11, a11, 7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL10:
	.loc 1 102 0
	srli	a3, a3, 4
.LVL11:
	movi	a11, 0x70
	or	a11, a3, a11
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL12:
	.loc 1 104 0
	l8ui	a3, a5, 4
.LVL13:
	.loc 1 106 0
	l32i.n	a5, a5, 0
.LVL14:
	.loc 1 105 0
	slli	a3, a3, 3
.LVL15:
	extui	a3, a3, 0, 8
.LVL16:
.L5:
	.loc 1 110 0
	addi.n	a4, a4, -1
.LVL17:
	.loc 1 109 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 110 0
	extui	a4, a4, 0, 8
.LVL18:
	.loc 1 109 0
	call8	u8x8_cad_SendData
.LVL19:
	.loc 1 111 0
	bnez.n	a4, .L5
	j	.L9
.LVL20:
.L3:
.LBE5:
.LBE4:
	.loc 1 126 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL21:
	.loc 1 127 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL22:
	.loc 1 128 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL23:
.L9:
	.loc 1 129 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL24:
	.loc 1 135 0
	movi.n	a2, 1
.LVL25:
	.loc 1 130 0
	retw.n
.LVL26:
.L8:
	.loc 1 133 0
	movi.n	a2, 0
.LVL27:
	.loc 1 136 0
	retw.n
.LFE0:
	.size	u8x8_d_uc1611_common, .-u8x8_d_uc1611_common
	.section	.text.u8x8_d_uc1611_ea_dogm240,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_uc1611_240x64_display_info
	.literal .LC1, u8x8_d_uc1611_ea_dogm240_init_seq
	.literal .LC2, u8x8_d_uc1611s_powersave0_seq
	.literal .LC3, u8x8_d_uc1611s_powersave1_seq
	.literal .LC4, u8x8_d_uc1611s_flip0_seq
	.literal .LC5, u8x8_d_uc1611s_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_ea_dogm240
	.type	u8x8_d_uc1611_ea_dogm240, @function
u8x8_d_uc1611_ea_dogm240:
.LFB1:
	.loc 1 199 0
.LVL28:
	entry	sp, 32
.LCFI1:
	.loc 1 199 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 201 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1611_common
.LVL29:
	bnez.n	a10, .L19
	.loc 1 204 0
	beqi	a3, 10, .L12
	movi.n	a8, 0xa
	bltu	a8, a3, .L13
	movi.n	a4, 9
.LVL30:
	beq	a3, a4, .L14
	j	.L11
.L13:
	movi.n	a8, 0xb
	beq	a3, a8, .L15
	movi.n	a8, 0xd
	beq	a3, a8, .L16
	j	.L11
.L14:
	.loc 1 207 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL31:
	j	.L19
.L12:
	.loc 1 210 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL32:
	.loc 1 211 0
	l32r	a11, .LC1
	j	.L21
.L15:
	.loc 1 215 0
	l32r	a11, .LC2
	.loc 1 214 0
	beqz.n	a4, .L21
.L17:
	.loc 1 217 0
	l32r	a11, .LC3
.L21:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL33:
	j	.L19
.L16:
	.loc 1 220 0
	bnez.n	a4, .L18
	.loc 1 222 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL34:
	.loc 1 223 0
	l32i.n	a3, a2, 0
.LVL35:
	l8ui	a3, a3, 18
	j	.L20
.L18:
	.loc 1 227 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL36:
	.loc 1 228 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L20:
	s8i	a3, a2, 34
.L19:
	.loc 1 235 0
	movi.n	a10, 1
.L11:
	.loc 1 236 0
	mov.n	a2, a10
.LVL37:
	retw.n
.LFE1:
	.size	u8x8_d_uc1611_ea_dogm240, .-u8x8_d_uc1611_ea_dogm240
	.section	.text.u8x8_d_uc1611_ea_dogxl240,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_uc1611_240x128_display_info
	.literal .LC7, u8x8_d_uc1611_ea_dogxl240_init_seq
	.literal .LC8, u8x8_d_uc1611s_powersave0_seq
	.literal .LC9, u8x8_d_uc1611s_powersave1_seq
	.literal .LC10, u8x8_d_uc1611s_flip0_seq
	.literal .LC11, u8x8_d_uc1611s_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_ea_dogxl240
	.type	u8x8_d_uc1611_ea_dogxl240, @function
u8x8_d_uc1611_ea_dogxl240:
.LFB2:
	.loc 1 292 0
.LVL38:
	entry	sp, 32
.LCFI2:
	.loc 1 292 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 294 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1611_common
.LVL39:
	bnez.n	a10, .L31
	.loc 1 297 0
	beqi	a3, 10, .L24
	movi.n	a8, 0xa
	bltu	a8, a3, .L25
	movi.n	a4, 9
.LVL40:
	beq	a3, a4, .L26
	j	.L23
.L25:
	movi.n	a8, 0xb
	beq	a3, a8, .L27
	movi.n	a8, 0xd
	beq	a3, a8, .L28
	j	.L23
.L26:
	.loc 1 300 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL41:
	j	.L31
.L24:
	.loc 1 303 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL42:
	.loc 1 304 0
	l32r	a11, .LC7
	j	.L33
.L27:
	.loc 1 308 0
	l32r	a11, .LC8
	.loc 1 307 0
	beqz.n	a4, .L33
.L29:
	.loc 1 310 0
	l32r	a11, .LC9
.L33:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL43:
	j	.L31
.L28:
	.loc 1 313 0
	bnez.n	a4, .L30
	.loc 1 315 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL44:
	.loc 1 316 0
	l32i.n	a3, a2, 0
.LVL45:
	l8ui	a3, a3, 18
	j	.L32
.L30:
	.loc 1 320 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL46:
	.loc 1 321 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L32:
	s8i	a3, a2, 34
.L31:
	.loc 1 328 0
	movi.n	a10, 1
.L23:
	.loc 1 329 0
	mov.n	a2, a10
.LVL47:
	retw.n
.LFE2:
	.size	u8x8_d_uc1611_ea_dogxl240, .-u8x8_d_uc1611_ea_dogxl240
	.section	.text.u8x8_d_uc1611_ew50850,"ax",@progbits
	.literal_position
	.literal .LC14, .L37
	.literal .LC15, u8x8_uc1611_ew50850_display_info
	.literal .LC16, u8x8_d_uc1611_ew50850_init_seq
	.literal .LC17, u8x8_d_uc1611_powersave0_seq
	.literal .LC18, u8x8_d_uc1611_powersave1_seq
	.literal .LC19, u8x8_d_uc1611_alt_flip0_seq
	.literal .LC20, u8x8_d_uc1611_alt_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_ew50850
	.type	u8x8_d_uc1611_ew50850, @function
u8x8_d_uc1611_ew50850:
.LFB3:
	.loc 1 414 0
.LVL48:
	entry	sp, 80
.LCFI3:
	.loc 1 418 0
	addi	a3, a3, -9
.LVL49:
	extui	a3, a3, 0, 8
	.loc 1 414 0
	extui	a4, a4, 0, 8
	.loc 1 418 0
	bgeui	a3, 7, .L51
	l32r	a6, .LC14
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_uc1611_ew50850,"a",@progbits
	.align	4
	.align	4
.L37:
	.word	.L36
	.word	.L38
	.word	.L39
	.word	.L51
	.word	.L40
	.word	.L41
	.word	.L42
	.section	.text.u8x8_d_uc1611_ew50850
.L42:
	.loc 1 421 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL50:
	.loc 1 423 0
	l8ui	a3, a5, 5
.LVL51:
	.loc 1 425 0
	l8ui	a7, a2, 34
	.loc 1 434 0
	movi.n	a6, 0x10
	.loc 1 425 0
	addx8	a7, a3, a7
	.loc 1 427 0
	l8ui	a3, a5, 6
.LVL52:
	.loc 1 425 0
	extui	a7, a7, 0, 8
.LVL53:
	.loc 1 434 0
	srli	a8, a7, 4
	.loc 1 428 0
	slli	a3, a3, 2
	.loc 1 434 0
	or	a6, a8, a6
	.loc 1 428 0
	extui	a3, a3, 0, 8
.LVL54:
	.loc 1 434 0
	s32i.n	a6, sp, 16
	addi.n	a6, a3, 4
	extui	a6, a6, 0, 8
	s32i.n	a6, sp, 20
	.loc 1 430 0
	movi.n	a8, 2
	.loc 1 429 0
	movi.n	a9, 1
	.loc 1 433 0
	extui	a7, a7, 0, 4
.LVL55:
.L48:
	mov.n	a11, a7
	mov.n	a10, a2
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	call8	u8x8_cad_SendCmd
.LVL56:
	.loc 1 434 0
	l32i.n	a11, sp, 16
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL57:
	.loc 1 436 0
	movi	a6, 0x60
	extui	a11, a3, 0, 4
	or	a11, a11, a6
	sext	a11, a11, 7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL58:
	.loc 1 437 0
	srli	a11, a3, 4
	movi	a6, 0x70
	or	a11, a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL59:
	.loc 1 447 0
	l32i.n	a9, sp, 36
	l32i.n	a8, sp, 40
	.loc 1 439 0
	mov.n	a13, a4
	.loc 1 447 0
	movi.n	a15, 0
.LVL60:
.L47:
	.loc 1 442 0
	l8ui	a6, a5, 4
.LVL61:
	.loc 1 444 0
	l32i.n	a14, a5, 0
	.loc 1 443 0
	slli	a6, a6, 3
	extui	a6, a6, 0, 8
.LVL62:
	.loc 1 445 0
	j	.L43
.LVL63:
.L46:
	.loc 1 447 0
	s8i	a15, sp, 0
	.loc 1 448 0
	l8ui	a10, a14, 0
	bnone	a9, a10, .L44
	.loc 1 449 0
	movi.n	a10, 0xf
	s8i	a10, sp, 0
.L44:
	.loc 1 450 0
	l8ui	a10, a14, 0
	bnone	a8, a10, .L45
	.loc 1 451 0
	l8ui	a11, sp, 0
	movi.n	a10, -0x10
	or	a10, a11, a10
	s8i	a10, sp, 0
.L45:
	.loc 1 452 0
	mov.n	a12, sp
	movi.n	a11, 1
	mov.n	a10, a2
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	s32i.n	a13, sp, 24
	s32i.n	a14, sp, 28
	s32i.n	a15, sp, 32
	call8	u8x8_cad_SendData
.LVL64:
	.loc 1 454 0
	l32i.n	a14, sp, 28
	.loc 1 453 0
	addi.n	a6, a6, -1
.LVL65:
	.loc 1 454 0
	l32i.n	a15, sp, 32
	l32i.n	a13, sp, 24
	l32i.n	a9, sp, 36
	l32i.n	a8, sp, 40
	.loc 1 453 0
	extui	a6, a6, 0, 8
.LVL66:
	.loc 1 454 0
	addi.n	a14, a14, 1
.LVL67:
.L43:
	.loc 1 445 0
	bnez.n	a6, .L46
	.loc 1 456 0
	addi.n	a13, a13, -1
	extui	a13, a13, 0, 8
.LVL68:
	.loc 1 457 0
	bnez.n	a13, .L47
	.loc 1 461 0 discriminator 2
	addi.n	a3, a3, 1
.LVL69:
	.loc 1 431 0 discriminator 2
	l32i.n	a6, sp, 20
.LVL70:
	.loc 1 459 0 discriminator 2
	slli	a9, a9, 2
	.loc 1 460 0 discriminator 2
	slli	a8, a8, 2
	.loc 1 461 0 discriminator 2
	extui	a3, a3, 0, 8
.LVL71:
	.loc 1 459 0 discriminator 2
	extui	a9, a9, 0, 8
.LVL72:
	.loc 1 460 0 discriminator 2
	extui	a8, a8, 0, 8
.LVL73:
	.loc 1 431 0 discriminator 2
	bne	a3, a6, .L48
	j	.L62
.LVL74:
.L36:
	.loc 1 466 0
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL75:
	j	.L60
.L38:
	.loc 1 469 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL76:
	.loc 1 470 0
	l32r	a11, .LC16
	j	.L63
.L39:
	.loc 1 474 0
	l32r	a11, .LC17
	.loc 1 473 0
	beqz.n	a4, .L63
.L49:
	.loc 1 476 0
	l32r	a11, .LC18
.L63:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL77:
	j	.L60
.L40:
	.loc 1 479 0
	bnez.n	a4, .L50
	.loc 1 481 0
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL78:
	.loc 1 482 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L61
.L50:
	.loc 1 486 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL79:
	.loc 1 487 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L61:
	s8i	a3, a2, 34
.L60:
	.loc 1 501 0
	movi.n	a2, 1
.LVL80:
	retw.n
.LVL81:
.L41:
	.loc 1 492 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL82:
	.loc 1 493 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL83:
	.loc 1 494 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL84:
.L62:
	.loc 1 495 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL85:
	j	.L60
.L51:
	.loc 1 499 0
	movi.n	a2, 0
.LVL86:
	.loc 1 502 0
	retw.n
.LFE3:
	.size	u8x8_d_uc1611_ew50850, .-u8x8_d_uc1611_ew50850
	.section	.text.u8x8_d_uc1611_cg160160,"ax",@progbits
	.literal_position
	.literal .LC21, u8x8_uc1611_cg160160_display_info
	.literal .LC22, u8x8_d_uc1611_cg160160_init_seq
	.literal .LC23, u8x8_d_uc1611s_powersave0_seq
	.literal .LC24, u8x8_d_uc1611s_powersave1_seq
	.literal .LC25, u8x8_d_uc1611s_flip0_seq
	.literal .LC26, u8x8_d_uc1611s_flip1_seq
	.align	4
	.global	u8x8_d_uc1611_cg160160
	.type	u8x8_d_uc1611_cg160160, @function
u8x8_d_uc1611_cg160160:
.LFB4:
	.loc 1 596 0
.LVL87:
	entry	sp, 32
.LCFI4:
	.loc 1 596 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 598 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_uc1611_common
.LVL88:
	bnez.n	a10, .L73
	.loc 1 601 0
	beqi	a3, 10, .L66
	movi.n	a8, 0xa
	bltu	a8, a3, .L67
	movi.n	a4, 9
.LVL89:
	beq	a3, a4, .L68
	j	.L65
.L67:
	movi.n	a8, 0xb
	beq	a3, a8, .L69
	movi.n	a8, 0xd
	beq	a3, a8, .L70
	j	.L65
.L68:
	.loc 1 604 0
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL90:
	j	.L73
.L66:
	.loc 1 607 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL91:
	.loc 1 608 0
	l32r	a11, .LC22
	j	.L75
.L69:
	.loc 1 612 0
	l32r	a11, .LC23
	.loc 1 611 0
	beqz.n	a4, .L75
.L71:
	.loc 1 614 0
	l32r	a11, .LC24
.L75:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL92:
	j	.L73
.L70:
	.loc 1 617 0
	bnez.n	a4, .L72
	.loc 1 619 0
	l32r	a11, .LC25
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL93:
	.loc 1 620 0
	l32i.n	a3, a2, 0
.LVL94:
	l8ui	a3, a3, 18
	j	.L74
.L72:
	.loc 1 624 0
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL95:
	.loc 1 625 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L74:
	s8i	a3, a2, 34
.L73:
	.loc 1 632 0
	movi.n	a10, 1
.L65:
	.loc 1 633 0
	mov.n	a2, a10
.LVL96:
	retw.n
.LFE4:
	.size	u8x8_d_uc1611_cg160160, .-u8x8_d_uc1611_cg160160
	.section	.rodata.u8x8_d_uc1611_cg160160_init_seq,"a",@progbits
	.type	u8x8_d_uc1611_cg160160_init_seq, @object
	.size	u8x8_d_uc1611_cg160160_init_seq, 47
u8x8_d_uc1611_cg160160_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	-2
	.byte	2
	.byte	21
	.byte	36
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	-126
	.byte	22
	.byte	19
	.byte	22
	.byte	1
	.byte	21
	.byte	-126
	.byte	22
	.byte	20
	.byte	22
	.byte	0
	.byte	21
	.byte	-22
	.byte	21
	.byte	-127
	.byte	22
	.byte	-112
	.byte	21
	.byte	-119
	.byte	21
	.byte	-47
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_cg160160_display_info,"a",@progbits
	.align	4
	.type	u8x8_uc1611_cg160160_display_info, @object
	.size	u8x8_uc1611_cg160160_display_info, 24
u8x8_uc1611_cg160160_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	20
	.byte	20
	.byte	0
	.byte	0
	.short	160
	.short	160
	.section	.rodata.u8x8_d_uc1611_powersave1_seq,"a",@progbits
	.type	u8x8_d_uc1611_powersave1_seq, @object
	.size	u8x8_d_uc1611_powersave1_seq, 5
u8x8_d_uc1611_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-88
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_powersave0_seq,"a",@progbits
	.type	u8x8_d_uc1611_powersave0_seq, @object
	.size	u8x8_d_uc1611_powersave0_seq, 5
u8x8_d_uc1611_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_alt_flip1_seq,"a",@progbits
	.type	u8x8_d_uc1611_alt_flip1_seq, @object
	.size	u8x8_d_uc1611_alt_flip1_seq, 5
u8x8_d_uc1611_alt_flip1_seq:
	.byte	24
	.byte	21
	.byte	-58
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_alt_flip0_seq,"a",@progbits
	.type	u8x8_d_uc1611_alt_flip0_seq, @object
	.size	u8x8_d_uc1611_alt_flip0_seq, 5
u8x8_d_uc1611_alt_flip0_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_ew50850_display_info,"a",@progbits
	.align	4
	.type	u8x8_uc1611_ew50850_display_info, @object
	.size	u8x8_uc1611_ew50850_display_info, 24
u8x8_uc1611_ew50850_display_info:
	.byte	1
	.byte	0
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	30
	.byte	20
	.byte	0
	.byte	0
	.short	240
	.short	160
	.section	.rodata.u8x8_d_uc1611_ew50850_init_seq,"a",@progbits
	.type	u8x8_d_uc1611_ew50850_init_seq, @object
	.size	u8x8_d_uc1611_ew50850_init_seq, 37
u8x8_d_uc1611_ew50850_init_seq:
	.byte	24
	.byte	21
	.byte	47
	.byte	21
	.byte	-15
	.byte	22
	.byte	-97
	.byte	21
	.byte	-14
	.byte	22
	.byte	0
	.byte	21
	.byte	-13
	.byte	22
	.byte	-97
	.byte	21
	.byte	-93
	.byte	21
	.byte	-127
	.byte	22
	.byte	75
	.byte	21
	.byte	-46
	.byte	21
	.byte	-119
	.byte	21
	.byte	-64
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_240x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_uc1611_240x128_display_info, @object
	.size	u8x8_uc1611_240x128_display_info, 24
u8x8_uc1611_240x128_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	30
	.byte	16
	.byte	0
	.byte	0
	.short	240
	.short	128
	.section	.rodata.u8x8_d_uc1611_ea_dogxl240_init_seq,"a",@progbits
	.type	u8x8_d_uc1611_ea_dogxl240_init_seq, @object
	.size	u8x8_d_uc1611_ea_dogxl240_init_seq, 39
u8x8_d_uc1611_ea_dogxl240_init_seq:
	.byte	24
	.byte	21
	.byte	47
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
	.byte	-127
	.byte	22
	.byte	-113
	.byte	21
	.byte	-47
	.byte	21
	.byte	-119
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611_ea_dogm240_init_seq,"a",@progbits
	.type	u8x8_d_uc1611_ea_dogm240_init_seq, @object
	.size	u8x8_d_uc1611_ea_dogm240_init_seq, 39
u8x8_d_uc1611_ea_dogm240_init_seq:
	.byte	24
	.byte	21
	.byte	47
	.byte	21
	.byte	-15
	.byte	22
	.byte	63
	.byte	21
	.byte	-14
	.byte	22
	.byte	0
	.byte	21
	.byte	-13
	.byte	22
	.byte	63
	.byte	21
	.byte	-93
	.byte	21
	.byte	-127
	.byte	22
	.byte	-92
	.byte	21
	.byte	-47
	.byte	21
	.byte	-119
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	21
	.byte	0
	.byte	21
	.byte	16
	.byte	21
	.byte	96
	.byte	21
	.byte	112
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_uc1611_240x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_uc1611_240x64_display_info, @object
	.size	u8x8_uc1611_240x64_display_info, 24
u8x8_uc1611_240x64_display_info:
	.byte	0
	.byte	1
	.byte	10
	.byte	10
	.byte	1
	.byte	10
	.byte	10
	.byte	60
	.word	8000000
	.byte	0
	.byte	4
	.byte	30
	.byte	80
	.byte	30
	.byte	8
	.byte	0
	.byte	0
	.short	240
	.short	64
	.section	.rodata.u8x8_d_uc1611s_flip1_seq,"a",@progbits
	.type	u8x8_d_uc1611s_flip1_seq, @object
	.size	u8x8_d_uc1611s_flip1_seq, 7
u8x8_d_uc1611s_flip1_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	22
	.byte	2
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611s_flip0_seq,"a",@progbits
	.type	u8x8_d_uc1611s_flip0_seq, @object
	.size	u8x8_d_uc1611s_flip0_seq, 7
u8x8_d_uc1611s_flip0_seq:
	.byte	24
	.byte	21
	.byte	-64
	.byte	22
	.byte	4
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611s_powersave1_seq,"a",@progbits
	.type	u8x8_d_uc1611s_powersave1_seq, @object
	.size	u8x8_d_uc1611s_powersave1_seq, 5
u8x8_d_uc1611s_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-88
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_uc1611s_powersave0_seq,"a",@progbits
	.type	u8x8_d_uc1611s_powersave0_seq, @object
	.size	u8x8_d_uc1611s_powersave0_seq, 5
u8x8_d_uc1611s_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-87
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
	.uleb128 0x50
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
	.4byte	0xcc2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
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
	.4byte	.LASF97
	.byte	0x1
	.byte	0x54
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3d7
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
	.string	"x"
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x56
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x57
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	0x374
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x574
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
	.4byte	0x51b
	.uleb128 0x14
	.4byte	0x38f
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	0x3a5
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	0x39a
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
	.4byte	.LVL2
	.4byte	0xc65
	.4byte	0x494
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0xc71
	.4byte	0x4b0
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0xc71
	.4byte	0x4cc
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
	.byte	0x40
	.byte	0x21
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0xc71
	.4byte	0x4e0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0xc71
	.4byte	0x4fd
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
	.byte	0x70
	.byte	0x21
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0xc7d
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0xc65
	.4byte	0x52f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0xc71
	.4byte	0x549
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
	.byte	0x81
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0xc89
	.4byte	0x563
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
	.4byte	.LVL24
	.4byte	0xc95
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
	.byte	0xc6
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x669
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc6
	.4byte	0x32d
	.4byte	.LLST12
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0xc6
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc6
	.4byte	0x7e
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xc6
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x374
	.4byte	0x5ed
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0xca1
	.4byte	0x60a
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
	.4byte	u8x8_uc1611_240x64_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0xcad
	.4byte	0x61e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0xcb9
	.4byte	0x632
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0xcb9
	.4byte	0x64f
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
	.4byte	u8x8_d_uc1611s_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0xcb9
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
	.4byte	u8x8_d_uc1611s_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x123
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x763
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x123
	.4byte	0x32d
	.4byte	.LLST15
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x123
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x123
	.4byte	0x7e
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x123
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0x374
	.4byte	0x6e7
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0xca1
	.4byte	0x704
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
	.4byte	u8x8_uc1611_240x128_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0xcad
	.4byte	0x718
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0xcb9
	.4byte	0x72c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL44
	.4byte	0xcb9
	.4byte	0x749
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
	.4byte	u8x8_d_uc1611s_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL46
	.4byte	0xcb9
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
	.4byte	u8x8_d_uc1611s_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x19d
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bf
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x19d
	.4byte	0x32d
	.4byte	.LLST18
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x19d
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x19d
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.4byte	.LLST20
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.4byte	.LLST22
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.4byte	.LLST23
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"m0"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.4byte	.LLST24
	.uleb128 0x24
	.string	"m1"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.4byte	.LLST25
	.uleb128 0x24
	.string	"ai"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7e
	.4byte	.LLST26
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x358
	.4byte	.LLST27
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0xc65
	.4byte	0x850
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0xc71
	.4byte	0x86a
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
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0xc71
	.4byte	0x885
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0xc71
	.4byte	0x8a8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xc71
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
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0xc7d
	.4byte	0x8e7
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
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0xca1
	.4byte	0x904
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
	.4byte	u8x8_uc1611_ew50850_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0xcad
	.4byte	0x918
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0xcb9
	.4byte	0x92c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0xcb9
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
	.4byte	u8x8_d_uc1611_alt_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL79
	.4byte	0xcb9
	.4byte	0x966
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
	.4byte	u8x8_d_uc1611_alt_flip1_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0xc65
	.4byte	0x97a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0xc71
	.4byte	0x994
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
	.byte	0x81
	.byte	0
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0xc89
	.4byte	0x9ae
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
	.4byte	.LVL85
	.4byte	0xc95
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
	.2byte	0x253
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab9
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x253
	.4byte	0x32d
	.4byte	.LLST28
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x253
	.4byte	0x7e
	.4byte	.LLST29
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x253
	.4byte	0x7e
	.4byte	.LLST30
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x253
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL88
	.4byte	0x374
	.4byte	0xa3d
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL90
	.4byte	0xca1
	.4byte	0xa5a
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
	.4byte	u8x8_uc1611_cg160160_display_info
	.byte	0
	.uleb128 0x19
	.4byte	.LVL91
	.4byte	0xcad
	.4byte	0xa6e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL92
	.4byte	0xcb9
	.4byte	0xa82
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL93
	.4byte	0xcb9
	.4byte	0xa9f
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
	.4byte	u8x8_d_uc1611s_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL95
	.4byte	0xcb9
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
	.4byte	u8x8_d_uc1611s_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x7e
	.4byte	0xac9
	.uleb128 0x27
	.4byte	0xac9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF69
	.uleb128 0x28
	.4byte	.LASF70
	.byte	0x1
	.byte	0x38
	.4byte	0xae1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_powersave0_seq
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x28
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3f
	.4byte	0xaf7
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_powersave1_seq
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x26
	.4byte	0x7e
	.4byte	0xb0c
	.uleb128 0x27
	.4byte	0xac9
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0x46
	.4byte	0xb1d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip0_seq
	.uleb128 0xe
	.4byte	0xafc
	.uleb128 0x28
	.4byte	.LASF73
	.byte	0x1
	.byte	0x4d
	.4byte	0xb33
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611s_flip1_seq
	.uleb128 0xe
	.4byte	0xafc
	.uleb128 0x28
	.4byte	.LASF74
	.byte	0x1
	.byte	0x94
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_240x64_display_info
	.uleb128 0x26
	.4byte	0x7e
	.4byte	0xb59
	.uleb128 0x27
	.4byte	0xac9
	.byte	0x26
	.byte	0
	.uleb128 0x28
	.4byte	.LASF75
	.byte	0x1
	.byte	0xac
	.4byte	0xb6a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_ea_dogm240_init_seq
	.uleb128 0xe
	.4byte	0xb49
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.byte	0xf1
	.4byte	0xb80
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_ea_dogxl240_init_seq
	.uleb128 0xe
	.4byte	0xb49
	.uleb128 0x29
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x10a
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_240x128_display_info
	.uleb128 0x26
	.4byte	0x7e
	.4byte	0xba7
	.uleb128 0x27
	.4byte	0xac9
	.byte	0x24
	.byte	0
	.uleb128 0x29
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x14f
	.4byte	0xbb9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_ew50850_init_seq
	.uleb128 0xe
	.4byte	0xb97
	.uleb128 0x29
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x167
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_ew50850_display_info
	.uleb128 0x29
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x17f
	.4byte	0xbe2
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_alt_flip0_seq
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x29
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x186
	.4byte	0xbf9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_alt_flip1_seq
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x29
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x18d
	.4byte	0xc10
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_powersave0_seq
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x29
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x194
	.4byte	0xc27
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_powersave1_seq
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x29
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x204
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_uc1611_cg160160_display_info
	.uleb128 0x26
	.4byte	0x7e
	.4byte	0xc4e
	.uleb128 0x27
	.4byte	0xac9
	.byte	0x2e
	.byte	0
	.uleb128 0x29
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x232
	.4byte	0xc60
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_uc1611_cg160160_init_seq
	.uleb128 0xe
	.4byte	0xc3e
	.uleb128 0x2a
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x259
	.uleb128 0x2a
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x255
	.uleb128 0x2a
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x258
	.uleb128 0x2a
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x256
	.uleb128 0x2a
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x2a
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x2a
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x2a
	.4byte	.LASF93
	.4byte	.LASF93
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x34
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
	.uleb128 0x34
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
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
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
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
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
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
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x75
	.sleb128 6
	.4byte	.LVL54
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL54
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL87
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL87
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
.LASF86:
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
.LASF69:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF76:
	.string	"u8x8_d_uc1611_ea_dogxl240_init_seq"
.LASF67:
	.string	"u8x8_d_uc1611_ew50850"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF81:
	.string	"u8x8_d_uc1611_alt_flip1_seq"
.LASF6:
	.string	"__uint32_t"
.LASF80:
	.string	"u8x8_d_uc1611_alt_flip0_seq"
.LASF4:
	.string	"__uint16_t"
.LASF73:
	.string	"u8x8_d_uc1611s_flip1_seq"
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
.LASF74:
	.string	"u8x8_uc1611_240x64_display_info"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF65:
	.string	"u8x8_d_uc1611_ea_dogm240"
.LASF87:
	.string	"u8x8_cad_SendCmd"
.LASF92:
	.string	"u8x8_d_helper_display_init"
.LASF90:
	.string	"u8x8_cad_EndTransfer"
.LASF71:
	.string	"u8x8_d_uc1611s_powersave1_seq"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF84:
	.string	"u8x8_uc1611_cg160160_display_info"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF75:
	.string	"u8x8_d_uc1611_ea_dogm240_init_seq"
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
.LASF79:
	.string	"u8x8_uc1611_ew50850_display_info"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF83:
	.string	"u8x8_d_uc1611_powersave1_seq"
.LASF44:
	.string	"sck_clock_hz"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF95:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_uc1611.c"
.LASF68:
	.string	"u8x8_d_uc1611_cg160160"
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
.LASF78:
	.string	"u8x8_d_uc1611_ew50850_init_seq"
.LASF97:
	.string	"u8x8_d_uc1611_common"
.LASF59:
	.string	"y_pos"
.LASF93:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF66:
	.string	"u8x8_d_uc1611_ea_dogxl240"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF70:
	.string	"u8x8_d_uc1611s_powersave0_seq"
.LASF52:
	.string	"flipmode_x_offset"
.LASF77:
	.string	"u8x8_uc1611_240x128_display_info"
.LASF22:
	.string	"encoding"
.LASF72:
	.string	"u8x8_d_uc1611s_flip0_seq"
.LASF26:
	.string	"i2c_started"
.LASF85:
	.string	"u8x8_d_uc1611_cg160160_init_seq"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF91:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF96:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF82:
	.string	"u8x8_d_uc1611_powersave0_seq"
.LASF89:
	.string	"u8x8_cad_SendArg"
.LASF94:
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
