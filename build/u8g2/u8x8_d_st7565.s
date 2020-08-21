	.file	"u8x8_d_st7565.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7565_common,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_st7565_powersave0_seq
	.literal .LC1, u8x8_d_st7565_powersave1_seq
	.align	4
	.global	u8x8_d_st7565_common
	.type	u8x8_d_st7565_common, @function
u8x8_d_st7565_common:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7565.c"
	.loc 1 116 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 116 0
	extui	a3, a3, 0, 8
	.loc 1 119 0
	movi.n	a6, 0xe
	.loc 1 116 0
	extui	a4, a4, 0, 8
	.loc 1 119 0
	beq	a3, a6, .L3
	movi.n	a6, 0xf
	beq	a3, a6, .L4
	movi.n	a5, 0xb
.LVL1:
	bne	a3, a5, .L11
	j	.L5
.LVL2:
.L4:
.LBB4:
.LBB5:
	.loc 1 122 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL3:
	.loc 1 124 0
	l8ui	a3, a5, 5
.LVL4:
	.loc 1 126 0
	l8ui	a6, a2, 34
	.loc 1 127 0
	mov.n	a10, a2
	.loc 1 126 0
	addx8	a3, a3, a6
.LVL5:
	extui	a6, a3, 0, 8
.LVL6:
	.loc 1 127 0
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL7:
	or	a11, a11, a3
	call8	u8x8_cad_SendCmd
.LVL8:
	.loc 1 128 0
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL9:
	.loc 1 129 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL10:
	.loc 1 131 0
	l8ui	a8, a5, 4
.LVL11:
	.loc 1 139 0
	movi	a9, 0x84
	.loc 1 132 0
	slli	a8, a8, 3
	extui	a3, a8, 0, 8
.LVL12:
	.loc 1 139 0
	add.n	a8, a3, a6
.LVL13:
	.loc 1 133 0
	l32i.n	a5, a5, 0
.LVL14:
	.loc 1 139 0
	bge	a9, a8, .L7
.LVL15:
	.loc 1 142 0
	movi	a8, -0x7c
	sub	a3, a8, a6
	extui	a3, a3, 0, 8
.LVL16:
.L7:
	.loc 1 147 0
	addi.n	a4, a4, -1
.LVL17:
	.loc 1 146 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 147 0
	extui	a4, a4, 0, 8
.LVL18:
	.loc 1 146 0
	call8	u8x8_cad_SendData
.LVL19:
	.loc 1 148 0
	bnez.n	a4, .L7
	j	.L14
.LVL20:
.L5:
.LBE5:
.LBE4:
	.loc 1 163 0
	l32r	a11, .LC0
	.loc 1 162 0
	beqz.n	a4, .L12
.L8:
	.loc 1 165 0
	l32r	a11, .LC1
.L12:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL21:
.L13:
	.loc 1 178 0
	movi.n	a2, 1
.LVL22:
	retw.n
.LVL23:
.L3:
	.loc 1 169 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL24:
	.loc 1 170 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL25:
	.loc 1 171 0
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL26:
.L14:
	.loc 1 172 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL27:
	j	.L13
.L11:
	.loc 1 176 0
	movi.n	a2, 0
.LVL28:
	.loc 1 179 0
	retw.n
.LFE0:
	.size	u8x8_d_st7565_common, .-u8x8_d_st7565_common
	.section	.text.u8x8_d_st7565_ea_dogm128,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_st7565_128x64_display_info
	.literal .LC3, u8x8_d_st7565_dogm128_init_seq
	.literal .LC4, u8x8_d_st7565_flip0_seq
	.literal .LC5, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_ea_dogm128
	.type	u8x8_d_st7565_ea_dogm128, @function
u8x8_d_st7565_ea_dogm128:
.LFB1:
	.loc 1 213 0
.LVL29:
	entry	sp, 32
.LCFI1:
	.loc 1 213 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 215 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL30:
	bnez.n	a10, .L21
	.loc 1 218 0
	beqi	a3, 10, .L17
	movi.n	a8, 0xd
	beq	a3, a8, .L18
	movi.n	a4, 9
.LVL31:
	bne	a3, a4, .L16
	.loc 1 221 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL32:
	j	.L21
.L17:
	.loc 1 224 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL33:
	.loc 1 225 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL34:
	j	.L21
.L18:
	.loc 1 228 0
	bnez.n	a4, .L20
	.loc 1 230 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL35:
	.loc 1 231 0
	l32i.n	a3, a2, 0
.LVL36:
	l8ui	a3, a3, 18
	j	.L22
.L20:
	.loc 1 235 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL37:
	.loc 1 236 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L22:
	s8i	a3, a2, 34
.L21:
	.loc 1 243 0
	movi.n	a10, 1
.L16:
	.loc 1 244 0
	mov.n	a2, a10
.LVL38:
	retw.n
.LFE1:
	.size	u8x8_d_st7565_ea_dogm128, .-u8x8_d_st7565_ea_dogm128
	.section	.text.u8x8_d_st7565_lm6063,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_st7565_128x64_display_info
	.literal .LC7, u8x8_d_st7565_lm6063_init_seq
	.literal .LC8, u8x8_d_st7565_flip0_seq
	.literal .LC9, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_lm6063
	.type	u8x8_d_st7565_lm6063, @function
u8x8_d_st7565_lm6063:
.LFB2:
	.loc 1 280 0
.LVL39:
	entry	sp, 32
.LCFI2:
	.loc 1 280 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 282 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL40:
	bnez.n	a10, .L29
	.loc 1 285 0
	beqi	a3, 10, .L25
	movi.n	a8, 0xd
	beq	a3, a8, .L26
	movi.n	a4, 9
.LVL41:
	bne	a3, a4, .L24
	.loc 1 288 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL42:
	j	.L29
.L25:
	.loc 1 291 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL43:
	.loc 1 292 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL44:
	j	.L29
.L26:
	.loc 1 295 0
	bnez.n	a4, .L28
	.loc 1 297 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL45:
	.loc 1 298 0
	l32i.n	a3, a2, 0
.LVL46:
	l8ui	a3, a3, 18
	j	.L30
.L28:
	.loc 1 302 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL47:
	.loc 1 303 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L30:
	s8i	a3, a2, 34
.L29:
	.loc 1 310 0
	movi.n	a10, 1
.L24:
	.loc 1 311 0
	mov.n	a2, a10
.LVL48:
	retw.n
.LFE2:
	.size	u8x8_d_st7565_lm6063, .-u8x8_d_st7565_lm6063
	.section	.text.u8x8_d_st7565_64128n,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_st7565_64128n_display_info
	.literal .LC11, u8x8_d_st7565_64128n_init_seq
	.literal .LC12, u8x8_d_st7565_flip0_seq
	.literal .LC13, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_64128n
	.type	u8x8_d_st7565_64128n, @function
u8x8_d_st7565_64128n:
.LFB3:
	.loc 1 404 0
.LVL49:
	entry	sp, 32
.LCFI3:
	.loc 1 404 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 406 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL50:
	bnez.n	a10, .L37
	.loc 1 409 0
	beqi	a3, 10, .L33
	movi.n	a8, 0xd
	beq	a3, a8, .L34
	movi.n	a4, 9
.LVL51:
	bne	a3, a4, .L32
	.loc 1 412 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL52:
	j	.L37
.L33:
	.loc 1 415 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL53:
	.loc 1 416 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL54:
	j	.L37
.L34:
	.loc 1 419 0
	bnez.n	a4, .L36
	.loc 1 421 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL55:
	.loc 1 422 0
	l32i.n	a3, a2, 0
.LVL56:
	l8ui	a3, a3, 18
	j	.L38
.L36:
	.loc 1 426 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL57:
	.loc 1 427 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L38:
	s8i	a3, a2, 34
.L37:
	.loc 1 434 0
	movi.n	a10, 1
.L32:
	.loc 1 435 0
	mov.n	a2, a10
.LVL58:
	retw.n
.LFE3:
	.size	u8x8_d_st7565_64128n, .-u8x8_d_st7565_64128n
	.section	.text.u8x8_d_st7565_zolen_128x64,"ax",@progbits
	.literal_position
	.literal .LC14, u8x8_st7565_128x64_display_info
	.literal .LC15, u8x8_d_st7565_zolen_128x64_init_seq
	.literal .LC16, u8x8_d_st7565_zflip0_seq
	.literal .LC17, u8x8_d_st7565_zflip1_seq
	.align	4
	.global	u8x8_d_st7565_zolen_128x64
	.type	u8x8_d_st7565_zolen_128x64, @function
u8x8_d_st7565_zolen_128x64:
.LFB4:
	.loc 1 469 0
.LVL59:
	entry	sp, 32
.LCFI4:
	.loc 1 469 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 471 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL60:
	bnez.n	a10, .L45
	.loc 1 474 0
	beqi	a3, 10, .L41
	movi.n	a8, 0xd
	beq	a3, a8, .L42
	movi.n	a4, 9
.LVL61:
	bne	a3, a4, .L40
	.loc 1 477 0
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL62:
	j	.L45
.L41:
	.loc 1 480 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL63:
	.loc 1 481 0
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL64:
	j	.L45
.L42:
	.loc 1 484 0
	bnez.n	a4, .L44
	.loc 1 486 0
	l32r	a11, .LC16
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL65:
	.loc 1 487 0
	l32i.n	a3, a2, 0
.LVL66:
	l8ui	a3, a3, 18
	j	.L46
.L44:
	.loc 1 491 0
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL67:
	.loc 1 492 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L46:
	s8i	a3, a2, 34
.L45:
	.loc 1 499 0
	movi.n	a10, 1
.L40:
	.loc 1 500 0
	mov.n	a2, a10
.LVL68:
	retw.n
.LFE4:
	.size	u8x8_d_st7565_zolen_128x64, .-u8x8_d_st7565_zolen_128x64
	.section	.text.u8x8_d_st7565_nhd_c12832,"ax",@progbits
	.literal_position
	.literal .LC18, u8x8_st7565_128x32_display_info
	.literal .LC19, u8x8_d_st7565_nhd_c12832_init_seq
	.literal .LC20, u8x8_d_st7565_flip0_seq
	.literal .LC21, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_nhd_c12832
	.type	u8x8_d_st7565_nhd_c12832, @function
u8x8_d_st7565_nhd_c12832:
.LFB5:
	.loc 1 561 0
.LVL69:
	entry	sp, 32
.LCFI5:
	.loc 1 561 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 563 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL70:
	bnez.n	a10, .L53
	.loc 1 566 0
	beqi	a3, 10, .L49
	movi.n	a8, 0xd
	beq	a3, a8, .L50
	movi.n	a4, 9
.LVL71:
	bne	a3, a4, .L48
	.loc 1 569 0
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL72:
	j	.L53
.L49:
	.loc 1 572 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL73:
	.loc 1 573 0
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL74:
	j	.L53
.L50:
	.loc 1 576 0
	bnez.n	a4, .L52
	.loc 1 578 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL75:
	.loc 1 579 0
	l32i.n	a3, a2, 0
.LVL76:
	l8ui	a3, a3, 18
	j	.L54
.L52:
	.loc 1 583 0
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL77:
	.loc 1 584 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L54:
	s8i	a3, a2, 34
.L53:
	.loc 1 591 0
	movi.n	a10, 1
.L48:
	.loc 1 592 0
	mov.n	a2, a10
.LVL78:
	retw.n
.LFE5:
	.size	u8x8_d_st7565_nhd_c12832, .-u8x8_d_st7565_nhd_c12832
	.section	.text.u8x8_d_st7565_nhd_c12864,"ax",@progbits
	.literal_position
	.literal .LC22, u8x8_st7565_nhd_c12864_display_info
	.literal .LC23, u8x8_d_st7565_nhd_c12864_init_seq
	.literal .LC24, u8x8_d_st7565_flip0_seq
	.literal .LC25, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_nhd_c12864
	.type	u8x8_d_st7565_nhd_c12864, @function
u8x8_d_st7565_nhd_c12864:
.LFB6:
	.loc 1 651 0
.LVL79:
	entry	sp, 32
.LCFI6:
	.loc 1 651 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 653 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL80:
	bnez.n	a10, .L61
	.loc 1 656 0
	beqi	a3, 10, .L57
	movi.n	a8, 0xd
	beq	a3, a8, .L58
	movi.n	a4, 9
.LVL81:
	bne	a3, a4, .L56
	.loc 1 659 0
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL82:
	j	.L61
.L57:
	.loc 1 662 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL83:
	.loc 1 663 0
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL84:
	j	.L61
.L58:
	.loc 1 666 0
	bnez.n	a4, .L60
.LVL85:
.LBB8:
.LBB9:
	.loc 1 668 0
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL86:
	.loc 1 669 0
	l32i.n	a3, a2, 0
.LVL87:
	l8ui	a3, a3, 18
	j	.L62
.LVL88:
.L60:
.LBE9:
.LBE8:
	.loc 1 673 0
	l32r	a11, .LC25
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL89:
	.loc 1 674 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L62:
	s8i	a3, a2, 34
.L61:
	.loc 1 681 0
	movi.n	a10, 1
.L56:
	.loc 1 682 0
	mov.n	a2, a10
.LVL90:
	retw.n
.LFE6:
	.size	u8x8_d_st7565_nhd_c12864, .-u8x8_d_st7565_nhd_c12864
	.section	.text.u8x8_d_st7565_jlx12864,"ax",@progbits
	.align	4
	.global	u8x8_d_st7565_jlx12864
	.type	u8x8_d_st7565_jlx12864, @function
u8x8_d_st7565_jlx12864:
.LFB7:
	.loc 1 687 0
.LVL91:
	entry	sp, 32
.LCFI7:
	.loc 1 688 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	u8x8_d_st7565_nhd_c12864
.LVL92:
	.loc 1 689 0
	mov.n	a2, a10
.LVL93:
	retw.n
.LFE7:
	.size	u8x8_d_st7565_jlx12864, .-u8x8_d_st7565_jlx12864
	.section	.text.u8x8_d_st7565_lm6059,"ax",@progbits
	.literal_position
	.literal .LC26, u8x8_st7565_lm6059_display_info
	.literal .LC27, u8x8_d_st7565_lm6059_init_seq
	.literal .LC28, u8x8_d_st7565_flip1_seq
	.literal .LC29, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_lm6059
	.type	u8x8_d_st7565_lm6059, @function
u8x8_d_st7565_lm6059:
.LFB8:
	.loc 1 750 0
.LVL94:
	entry	sp, 32
.LCFI8:
	.loc 1 750 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 752 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL95:
	bnez.n	a10, .L70
	.loc 1 755 0
	beqi	a3, 10, .L66
	movi.n	a8, 0xd
	beq	a3, a8, .L67
	movi.n	a4, 9
.LVL96:
	bne	a3, a4, .L65
	.loc 1 758 0
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL97:
	j	.L70
.L66:
	.loc 1 761 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL98:
	.loc 1 762 0
	l32r	a11, .LC27
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL99:
	j	.L70
.L67:
	.loc 1 765 0
	bnez.n	a4, .L69
	.loc 1 767 0
	l32r	a11, .LC28
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL100:
	.loc 1 768 0
	l32i.n	a3, a2, 0
.LVL101:
	l8ui	a3, a3, 18
	j	.L71
.L69:
	.loc 1 772 0
	l32r	a11, .LC29
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL102:
	.loc 1 773 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L71:
	s8i	a3, a2, 34
.L70:
	.loc 1 780 0
	movi.n	a10, 1
.L65:
	.loc 1 781 0
	mov.n	a2, a10
.LVL103:
	retw.n
.LFE8:
	.size	u8x8_d_st7565_lm6059, .-u8x8_d_st7565_lm6059
	.section	.text.u8x8_d_st7565_lx12864,"ax",@progbits
	.literal_position
	.literal .LC30, u8x8_st7565_lx12864_display_info
	.literal .LC31, u8x8_d_st7565_lx12864_init_seq
	.literal .LC32, u8x8_d_st7565_flip1_seq
	.literal .LC33, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_lx12864
	.type	u8x8_d_st7565_lx12864, @function
u8x8_d_st7565_lx12864:
.LFB9:
	.loc 1 841 0
.LVL104:
	entry	sp, 32
.LCFI9:
	.loc 1 841 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 843 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL105:
	bnez.n	a10, .L78
	.loc 1 846 0
	beqi	a3, 10, .L74
	movi.n	a8, 0xd
	beq	a3, a8, .L75
	movi.n	a4, 9
.LVL106:
	bne	a3, a4, .L73
	.loc 1 849 0
	l32r	a11, .LC30
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL107:
	j	.L78
.L74:
	.loc 1 852 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL108:
	.loc 1 853 0
	l32r	a11, .LC31
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL109:
	j	.L78
.L75:
	.loc 1 856 0
	bnez.n	a4, .L77
	.loc 1 858 0
	l32r	a11, .LC32
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL110:
	.loc 1 859 0
	l32i.n	a3, a2, 0
.LVL111:
	l8ui	a3, a3, 18
	j	.L79
.L77:
	.loc 1 863 0
	l32r	a11, .LC33
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL112:
	.loc 1 864 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L79:
	s8i	a3, a2, 34
.L78:
	.loc 1 871 0
	movi.n	a10, 1
.L73:
	.loc 1 872 0
	mov.n	a2, a10
.LVL113:
	retw.n
.LFE9:
	.size	u8x8_d_st7565_lx12864, .-u8x8_d_st7565_lx12864
	.section	.text.u8x8_d_st7565_erc12864,"ax",@progbits
	.literal_position
	.literal .LC34, u8x8_st7565_erc12864_display_info
	.literal .LC35, u8x8_d_st7565_erc12864_init_seq
	.literal .LC36, u8x8_d_st7565_flip1_seq
	.literal .LC37, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_erc12864
	.type	u8x8_d_st7565_erc12864, @function
u8x8_d_st7565_erc12864:
.LFB10:
	.loc 1 933 0
.LVL114:
	entry	sp, 32
.LCFI10:
	.loc 1 933 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 935 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL115:
	bnez.n	a10, .L86
	.loc 1 938 0
	beqi	a3, 10, .L82
	movi.n	a8, 0xd
	beq	a3, a8, .L83
	movi.n	a4, 9
.LVL116:
	bne	a3, a4, .L81
	.loc 1 941 0
	l32r	a11, .LC34
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL117:
	j	.L86
.L82:
	.loc 1 944 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL118:
	.loc 1 945 0
	l32r	a11, .LC35
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL119:
	j	.L86
.L83:
	.loc 1 948 0
	bnez.n	a4, .L85
	.loc 1 950 0
	l32r	a11, .LC36
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL120:
	.loc 1 951 0
	l32i.n	a3, a2, 0
.LVL121:
	l8ui	a3, a3, 18
	j	.L87
.L85:
	.loc 1 955 0
	l32r	a11, .LC37
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL122:
	.loc 1 956 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L87:
	s8i	a3, a2, 34
.L86:
	.loc 1 963 0
	movi.n	a10, 1
.L81:
	.loc 1 964 0
	mov.n	a2, a10
.LVL123:
	retw.n
.LFE10:
	.size	u8x8_d_st7565_erc12864, .-u8x8_d_st7565_erc12864
	.section	.text.u8x8_d_st7565_erc12864_alt,"ax",@progbits
	.literal_position
	.literal .LC38, u8x8_st7565_erc12864_display_info
	.literal .LC39, u8x8_d_st7565_erc12864_alt_init_seq
	.literal .LC40, u8x8_d_st7565_flip1_seq
	.literal .LC41, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_st7565_erc12864_alt
	.type	u8x8_d_st7565_erc12864_alt, @function
u8x8_d_st7565_erc12864_alt:
.LFB11:
	.loc 1 1029 0
.LVL124:
	entry	sp, 32
.LCFI11:
	.loc 1 1029 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 1031 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL125:
	bnez.n	a10, .L94
	.loc 1 1034 0
	beqi	a3, 10, .L90
	movi.n	a8, 0xd
	beq	a3, a8, .L91
	movi.n	a4, 9
.LVL126:
	bne	a3, a4, .L89
	.loc 1 1037 0
	l32r	a11, .LC38
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL127:
	j	.L94
.L90:
	.loc 1 1040 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL128:
	.loc 1 1041 0
	l32r	a11, .LC39
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL129:
	j	.L94
.L91:
	.loc 1 1044 0
	bnez.n	a4, .L93
	.loc 1 1046 0
	l32r	a11, .LC40
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL130:
	.loc 1 1047 0
	l32i.n	a3, a2, 0
.LVL131:
	l8ui	a3, a3, 18
	j	.L95
.L93:
	.loc 1 1051 0
	l32r	a11, .LC41
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL132:
	.loc 1 1052 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L95:
	s8i	a3, a2, 34
.L94:
	.loc 1 1059 0
	movi.n	a10, 1
.L89:
	.loc 1 1060 0
	mov.n	a2, a10
.LVL133:
	retw.n
.LFE11:
	.size	u8x8_d_st7565_erc12864_alt, .-u8x8_d_st7565_erc12864_alt
	.section	.text.u8x8_d_nt7534_tg12864r,"ax",@progbits
	.literal_position
	.literal .LC42, u8x8_st7565_lm6059_display_info
	.literal .LC43, u8x8_d_nt7534_tg12864r_init_seq
	.literal .LC44, u8x8_d_st7565_flip1_seq
	.literal .LC45, u8x8_d_st7565_flip0_seq
	.align	4
	.global	u8x8_d_nt7534_tg12864r
	.type	u8x8_d_nt7534_tg12864r, @function
u8x8_d_nt7534_tg12864r:
.LFB12:
	.loc 1 1100 0
.LVL134:
	entry	sp, 32
.LCFI12:
	.loc 1 1100 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 1102 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL135:
	bnez.n	a10, .L102
	.loc 1 1105 0
	beqi	a3, 10, .L98
	movi.n	a8, 0xd
	beq	a3, a8, .L99
	movi.n	a4, 9
.LVL136:
	bne	a3, a4, .L97
	.loc 1 1109 0
	l32r	a11, .LC42
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL137:
	j	.L102
.L98:
	.loc 1 1112 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL138:
	.loc 1 1115 0
	l32r	a11, .LC43
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL139:
	j	.L102
.L99:
	.loc 1 1118 0
	bnez.n	a4, .L101
	.loc 1 1120 0
	l32r	a11, .LC44
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL140:
	.loc 1 1121 0
	l32i.n	a3, a2, 0
.LVL141:
	l8ui	a3, a3, 18
	j	.L103
.L101:
	.loc 1 1125 0
	l32r	a11, .LC45
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL142:
	.loc 1 1126 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L103:
	s8i	a3, a2, 34
.L102:
	.loc 1 1133 0
	movi.n	a10, 1
.L97:
	.loc 1 1134 0
	mov.n	a2, a10
.LVL143:
	retw.n
.LFE12:
	.size	u8x8_d_nt7534_tg12864r, .-u8x8_d_nt7534_tg12864r
	.section	.text.u8x8_d_st7565_ea_dogm132,"ax",@progbits
	.literal_position
	.literal .LC46, u8x8_st7565_dogm132_display_info
	.literal .LC47, u8x8_d_st7565_dogm132_init_seq
	.literal .LC48, u8x8_d_st7565_flip0_seq
	.literal .LC49, u8x8_d_st7565_flip1_seq
	.align	4
	.global	u8x8_d_st7565_ea_dogm132
	.type	u8x8_d_st7565_ea_dogm132, @function
u8x8_d_st7565_ea_dogm132:
.LFB13:
	.loc 1 1194 0
.LVL144:
	entry	sp, 32
.LCFI13:
	.loc 1 1194 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 1196 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st7565_common
.LVL145:
	bnez.n	a10, .L110
	.loc 1 1199 0
	beqi	a3, 10, .L106
	movi.n	a8, 0xd
	beq	a3, a8, .L107
	movi.n	a4, 9
.LVL146:
	bne	a3, a4, .L105
	.loc 1 1202 0
	l32r	a11, .LC46
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL147:
	j	.L110
.L106:
	.loc 1 1205 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL148:
	.loc 1 1206 0
	l32r	a11, .LC47
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL149:
	j	.L110
.L107:
	.loc 1 1209 0
	bnez.n	a4, .L109
	.loc 1 1211 0
	l32r	a11, .LC48
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL150:
	.loc 1 1212 0
	l32i.n	a3, a2, 0
.LVL151:
	l8ui	a3, a3, 18
	j	.L111
.L109:
	.loc 1 1216 0
	l32r	a11, .LC49
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL152:
	.loc 1 1217 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L111:
	s8i	a3, a2, 34
.L110:
	.loc 1 1224 0
	movi.n	a10, 1
.L105:
	.loc 1 1225 0
	mov.n	a2, a10
.LVL153:
	retw.n
.LFE13:
	.size	u8x8_d_st7565_ea_dogm132, .-u8x8_d_st7565_ea_dogm132
	.section	.rodata.u8x8_d_st7565_dogm132_init_seq,"a",@progbits
	.type	u8x8_d_st7565_dogm132_init_seq, @object
	.size	u8x8_d_st7565_dogm132_init_seq, 33
u8x8_d_st7565_dogm132_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	31
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_dogm132_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_dogm132_display_info, @object
	.size	u8x8_st7565_dogm132_display_info, 24
u8x8_st7565_dogm132_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	17
	.byte	4
	.byte	0
	.byte	0
	.short	132
	.short	32
	.section	.rodata.u8x8_d_nt7534_tg12864r_init_seq,"a",@progbits
	.type	u8x8_d_nt7534_tg12864r_init_seq, @object
	.size	u8x8_d_nt7534_tg12864r_init_seq, 29
u8x8_d_nt7534_tg12864r_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	96
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	9
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_erc12864_alt_init_seq,"a",@progbits
	.type	u8x8_d_st7565_erc12864_alt_init_seq, @object
	.size	u8x8_d_st7565_erc12864_alt_init_seq, 33
u8x8_d_st7565_erc12864_alt_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	5
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_erc12864_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_erc12864_display_info, @object
	.size	u8x8_st7565_erc12864_display_info, 24
u8x8_st7565_erc12864_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	0
	.byte	4
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_erc12864_init_seq,"a",@progbits
	.type	u8x8_d_st7565_erc12864_init_seq, @object
	.size	u8x8_d_st7565_erc12864_init_seq, 33
u8x8_d_st7565_erc12864_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_lx12864_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_lx12864_display_info, @object
	.size	u8x8_st7565_lx12864_display_info, 24
u8x8_st7565_lx12864_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	1
	.byte	3
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_lx12864_init_seq,"a",@progbits
	.type	u8x8_d_st7565_lx12864_init_seq, @object
	.size	u8x8_d_st7565_lx12864_init_seq, 33
u8x8_d_st7565_lx12864_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	96
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	8
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_lm6059_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_lm6059_display_info, @object
	.size	u8x8_st7565_lm6059_display_info, 24
u8x8_st7565_lm6059_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	1
	.byte	3
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_lm6059_init_seq,"a",@progbits
	.type	u8x8_d_st7565_lm6059_init_seq, @object
	.size	u8x8_d_st7565_lm6059_init_seq, 33
u8x8_d_st7565_lm6059_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	96
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-93
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_nhd_c12864_init_seq,"a",@progbits
	.type	u8x8_d_st7565_nhd_c12864_init_seq, @object
	.size	u8x8_d_st7565_nhd_c12864_init_seq, 33
u8x8_d_st7565_nhd_c12864_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	-76
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_nhd_c12864_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_nhd_c12864_display_info, @object
	.size	u8x8_st7565_nhd_c12864_display_info, 24
u8x8_st7565_nhd_c12864_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	4
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_nhd_c12832_init_seq,"a",@progbits
	.type	u8x8_d_st7565_nhd_c12832_init_seq, @object
	.size	u8x8_d_st7565_nhd_c12832_init_seq, 33
u8x8_d_st7565_nhd_c12832_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	10
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_128x32_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_128x32_display_info, @object
	.size	u8x8_st7565_128x32_display_info, 24
u8x8_st7565_128x32_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	4
	.byte	4
	.byte	0
	.short	128
	.short	32
	.section	.rodata.u8x8_d_st7565_zolen_128x64_init_seq,"a",@progbits
	.type	u8x8_d_st7565_zolen_128x64_init_seq, @object
	.size	u8x8_d_st7565_zolen_128x64_init_seq, 33
u8x8_d_st7565_zolen_128x64_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	7
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_64128n_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_64128n_display_info, @object
	.size	u8x8_st7565_64128n_display_info, 24
u8x8_st7565_64128n_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	4
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_64128n_init_seq,"a",@progbits
	.type	u8x8_d_st7565_64128n_init_seq, @object
	.size	u8x8_d_st7565_64128n_init_seq, 29
u8x8_d_st7565_64128n_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-94
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	64
	.byte	21
	.byte	44
	.byte	21
	.byte	46
	.byte	21
	.byte	47
	.byte	21
	.byte	16
	.byte	21
	.byte	-90
	.byte	21
	.byte	-127
	.byte	21
	.byte	30
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_lm6063_init_seq,"a",@progbits
	.type	u8x8_d_st7565_lm6063_init_seq, @object
	.size	u8x8_d_st7565_lm6063_init_seq, 33
u8x8_d_st7565_lm6063_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	12
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_dogm128_init_seq,"a",@progbits
	.type	u8x8_d_st7565_dogm128_init_seq, @object
	.size	u8x8_d_st7565_dogm128_init_seq, 33
u8x8_d_st7565_dogm128_init_seq:
	.byte	24
	.byte	21
	.byte	-30
	.byte	21
	.byte	-82
	.byte	21
	.byte	64
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	21
	.byte	-90
	.byte	21
	.byte	-94
	.byte	21
	.byte	47
	.byte	21
	.byte	-8
	.byte	22
	.byte	0
	.byte	21
	.byte	39
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7565_128x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7565_128x64_display_info, @object
	.size	u8x8_st7565_128x64_display_info, 24
u8x8_st7565_128x64_display_info:
	.byte	0
	.byte	1
	.byte	-106
	.byte	50
	.byte	1
	.byte	1
	.byte	50
	.byte	120
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	80
	.byte	16
	.byte	8
	.byte	0
	.byte	4
	.short	128
	.short	64
	.section	.rodata.u8x8_d_st7565_zflip1_seq,"a",@progbits
	.type	u8x8_d_st7565_zflip1_seq, @object
	.size	u8x8_d_st7565_zflip1_seq, 7
u8x8_d_st7565_zflip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_zflip0_seq,"a",@progbits
	.type	u8x8_d_st7565_zflip0_seq, @object
	.size	u8x8_d_st7565_zflip0_seq, 7
u8x8_d_st7565_zflip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_flip1_seq,"a",@progbits
	.type	u8x8_d_st7565_flip1_seq, @object
	.size	u8x8_d_st7565_flip1_seq, 7
u8x8_d_st7565_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_flip0_seq,"a",@progbits
	.type	u8x8_d_st7565_flip0_seq, @object
	.size	u8x8_d_st7565_flip0_seq, 7
u8x8_d_st7565_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_powersave1_seq,"a",@progbits
	.type	u8x8_d_st7565_powersave1_seq, @object
	.size	u8x8_d_st7565_powersave1_seq, 7
u8x8_d_st7565_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7565_powersave0_seq,"a",@progbits
	.type	u8x8_d_st7565_powersave0_seq, @object
	.size	u8x8_d_st7565_powersave0_seq, 7
u8x8_d_st7565_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-92
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
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14fb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
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
	.4byte	.LASF65
	.byte	0x1
	.byte	0x73
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3ce
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x73
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x73
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x73
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x73
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x75
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x75
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x76
	.4byte	0x358
	.byte	0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x28a
	.4byte	0x7e
	.byte	0x1
	.4byte	0x410
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x28a
	.4byte	0x32d
	.uleb128 0x15
	.string	"msg"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x7e
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x28a
	.4byte	0x7e
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x28a
	.4byte	0x9f
	.byte	0
	.uleb128 0x16
	.4byte	0x374
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59b
	.uleb128 0x17
	.4byte	0x384
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	0x38f
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	0x39a
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	0x3a5
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	0x3b0
	.uleb128 0x18
	.4byte	0x3b9
	.uleb128 0x18
	.4byte	0x3c2
	.uleb128 0x19
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x52c
	.uleb128 0x17
	.4byte	0x38f
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	0x3a5
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	0x39a
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	0x384
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1b
	.4byte	0x3b0
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x3b9
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	0x3c2
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x149e
	.4byte	0x4bf
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL8
	.4byte	0x14aa
	.4byte	0x4de
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL9
	.4byte	0x14aa
	.4byte	0x4fa
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL10
	.4byte	0x14aa
	.4byte	0x50e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0x14b6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL21
	.4byte	0x14c2
	.4byte	0x540
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0x149e
	.4byte	0x554
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL25
	.4byte	0x14aa
	.4byte	0x56e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL26
	.4byte	0x14ce
	.4byte	0x58a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL27
	.4byte	0x14da
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd4
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x699
	.uleb128 0x20
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd4
	.4byte	0x32d
	.4byte	.LLST11
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.byte	0xd4
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd4
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	.LASF64
	.byte	0x1
	.byte	0xd4
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL30
	.4byte	0x374
	.4byte	0x614
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL32
	.4byte	0x14e6
	.4byte	0x631
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x64_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL33
	.4byte	0x14f2
	.4byte	0x645
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL34
	.4byte	0x14c2
	.4byte	0x662
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_dogm128_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL35
	.4byte	0x14c2
	.4byte	0x67f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x117
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79c
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x117
	.4byte	0x32d
	.4byte	.LLST14
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x117
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x117
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x117
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL40
	.4byte	0x374
	.4byte	0x717
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL42
	.4byte	0x14e6
	.4byte	0x734
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x64_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL43
	.4byte	0x14f2
	.4byte	0x748
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL44
	.4byte	0x14c2
	.4byte	0x765
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lm6063_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL45
	.4byte	0x14c2
	.4byte	0x782
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL47
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x193
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89f
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x193
	.4byte	0x32d
	.4byte	.LLST17
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x193
	.4byte	0x7e
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x193
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x193
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL50
	.4byte	0x374
	.4byte	0x81a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL52
	.4byte	0x14e6
	.4byte	0x837
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_64128n_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL53
	.4byte	0x14f2
	.4byte	0x84b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL54
	.4byte	0x14c2
	.4byte	0x868
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_64128n_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL55
	.4byte	0x14c2
	.4byte	0x885
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL57
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a2
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x32d
	.4byte	.LLST20
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x7e
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL60
	.4byte	0x374
	.4byte	0x91d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL62
	.4byte	0x14e6
	.4byte	0x93a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x64_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL63
	.4byte	0x14f2
	.4byte	0x94e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL64
	.4byte	0x14c2
	.4byte	0x96b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zolen_128x64_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL65
	.4byte	0x14c2
	.4byte	0x988
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zflip0_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL67
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zflip1_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x230
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa5
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x230
	.4byte	0x32d
	.4byte	.LLST23
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x230
	.4byte	0x7e
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x230
	.4byte	0x7e
	.4byte	.LLST25
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x230
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL70
	.4byte	0x374
	.4byte	0xa20
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL72
	.4byte	0x14e6
	.4byte	0xa3d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x32_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL73
	.4byte	0x14f2
	.4byte	0xa51
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL74
	.4byte	0x14c2
	.4byte	0xa6e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_nhd_c12832_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL75
	.4byte	0x14c2
	.4byte	0xa8b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL77
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x3ce
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb3
	.uleb128 0x17
	.4byte	0x3df
	.4byte	.LLST26
	.uleb128 0x17
	.4byte	0x3eb
	.4byte	.LLST27
	.uleb128 0x17
	.4byte	0x3f7
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	0x403
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xb25
	.uleb128 0x17
	.4byte	0x3eb
	.4byte	.LLST29
	.uleb128 0x17
	.4byte	0x3f7
	.4byte	.LLST30
	.uleb128 0x17
	.4byte	0x403
	.4byte	.LLST31
	.uleb128 0x17
	.4byte	0x3df
	.4byte	.LLST32
	.uleb128 0x1e
	.4byte	.LVL86
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL80
	.4byte	0x374
	.4byte	0xb4b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL82
	.4byte	0x14e6
	.4byte	0xb68
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_nhd_c12864_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL83
	.4byte	0x14f2
	.4byte	0xb7c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL84
	.4byte	0x14c2
	.4byte	0xb99
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_nhd_c12864_init_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL89
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc30
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x32d
	.4byte	.LLST33
	.uleb128 0x28
	.string	"msg"
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	.LVL92
	.4byte	0x3ce
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x2ed
	.4byte	0x7e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd33
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2ed
	.4byte	0x32d
	.4byte	.LLST34
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x2ed
	.4byte	0x7e
	.4byte	.LLST35
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2ed
	.4byte	0x7e
	.4byte	.LLST36
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x2ed
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL95
	.4byte	0x374
	.4byte	0xcae
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL97
	.4byte	0x14e6
	.4byte	0xccb
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_lm6059_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL98
	.4byte	0x14f2
	.4byte	0xcdf
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL99
	.4byte	0x14c2
	.4byte	0xcfc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lm6059_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL100
	.4byte	0x14c2
	.4byte	0xd19
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL102
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x348
	.4byte	0x7e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe36
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x348
	.4byte	0x32d
	.4byte	.LLST37
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x348
	.4byte	0x7e
	.4byte	.LLST38
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x348
	.4byte	0x7e
	.4byte	.LLST39
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x348
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL105
	.4byte	0x374
	.4byte	0xdb1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL107
	.4byte	0x14e6
	.4byte	0xdce
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_lx12864_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL108
	.4byte	0x14f2
	.4byte	0xde2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL109
	.4byte	0x14c2
	.4byte	0xdff
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lx12864_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL110
	.4byte	0x14c2
	.4byte	0xe1c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL112
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x7e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf39
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x32d
	.4byte	.LLST40
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x7e
	.4byte	.LLST41
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x7e
	.4byte	.LLST42
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL115
	.4byte	0x374
	.4byte	0xeb4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL117
	.4byte	0x14e6
	.4byte	0xed1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_erc12864_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL118
	.4byte	0x14f2
	.4byte	0xee5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL119
	.4byte	0x14c2
	.4byte	0xf02
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_erc12864_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL120
	.4byte	0x14c2
	.4byte	0xf1f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL122
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x404
	.4byte	0x7e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103c
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x404
	.4byte	0x32d
	.4byte	.LLST43
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x404
	.4byte	0x7e
	.4byte	.LLST44
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x404
	.4byte	0x7e
	.4byte	.LLST45
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x404
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL125
	.4byte	0x374
	.4byte	0xfb7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL127
	.4byte	0x14e6
	.4byte	0xfd4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_erc12864_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL128
	.4byte	0x14f2
	.4byte	0xfe8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL129
	.4byte	0x14c2
	.4byte	0x1005
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_erc12864_alt_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL130
	.4byte	0x14c2
	.4byte	0x1022
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL132
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x44b
	.4byte	0x7e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113f
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x44b
	.4byte	0x32d
	.4byte	.LLST46
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x44b
	.4byte	0x7e
	.4byte	.LLST47
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x44b
	.4byte	0x7e
	.4byte	.LLST48
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x44b
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL135
	.4byte	0x374
	.4byte	0x10ba
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL137
	.4byte	0x14e6
	.4byte	0x10d7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_lm6059_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL138
	.4byte	0x14f2
	.4byte	0x10eb
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL139
	.4byte	0x14c2
	.4byte	0x1108
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_nt7534_tg12864r_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL140
	.4byte	0x14c2
	.4byte	0x1125
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL142
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x7e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1242
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x32d
	.4byte	.LLST49
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x7e
	.4byte	.LLST50
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x7e
	.4byte	.LLST51
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LVL145
	.4byte	0x374
	.4byte	0x11bd
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL147
	.4byte	0x14e6
	.4byte	0x11da
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_dogm132_display_info
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL148
	.4byte	0x14f2
	.4byte	0x11ee
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL149
	.4byte	0x14c2
	.4byte	0x120b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_dogm132_init_seq
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL150
	.4byte	0x14c2
	.4byte	0x1228
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL152
	.4byte	0x14c2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0x1252
	.uleb128 0x2a
	.4byte	0x1252
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF79
	.uleb128 0x2b
	.4byte	.LASF80
	.byte	0x1
	.byte	0x2b
	.4byte	0x126a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_powersave0_seq
	.uleb128 0xe
	.4byte	0x1242
	.uleb128 0x2b
	.4byte	.LASF81
	.byte	0x1
	.byte	0x33
	.4byte	0x1280
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_powersave1_seq
	.uleb128 0xe
	.4byte	0x1242
	.uleb128 0x2b
	.4byte	.LASF82
	.byte	0x1
	.byte	0x3b
	.4byte	0x1296
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip0_seq
	.uleb128 0xe
	.4byte	0x1242
	.uleb128 0x2b
	.4byte	.LASF83
	.byte	0x1
	.byte	0x43
	.4byte	0x12ac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_flip1_seq
	.uleb128 0xe
	.4byte	0x1242
	.uleb128 0x2b
	.4byte	.LASF84
	.byte	0x1
	.byte	0x4b
	.4byte	0x12c2
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zflip0_seq
	.uleb128 0xe
	.4byte	0x1242
	.uleb128 0x2b
	.4byte	.LASF85
	.byte	0x1
	.byte	0x53
	.4byte	0x12d8
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zflip1_seq
	.uleb128 0xe
	.4byte	0x1242
	.uleb128 0x2b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5b
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x64_display_info
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0x12fe
	.uleb128 0x2a
	.4byte	0x1252
	.byte	0x20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF87
	.byte	0x1
	.byte	0xb8
	.4byte	0x130f
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_dogm128_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2b
	.4byte	.LASF88
	.byte	0x1
	.byte	0xfb
	.4byte	0x1325
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lm6063_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0x133a
	.uleb128 0x2a
	.4byte	0x1252
	.byte	0x1c
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x13d
	.4byte	0x134c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_64128n_init_seq
	.uleb128 0xe
	.4byte	0x132a
	.uleb128 0x2c
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x17b
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_64128n_display_info
	.uleb128 0x2c
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x1375
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_zolen_128x64_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_128x32_display_info
	.uleb128 0x2c
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x214
	.4byte	0x139e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_nhd_c12832_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2c
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x255
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_nhd_c12864_display_info
	.uleb128 0x2c
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x26e
	.4byte	0x13c7
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_nhd_c12864_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2c
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x2b7
	.4byte	0x13de
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lm6059_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2c
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_lm6059_display_info
	.uleb128 0x2c
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x312
	.4byte	0x1407
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_lx12864_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x330
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_lx12864_display_info
	.uleb128 0x2c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x36e
	.4byte	0x1430
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_erc12864_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x38c
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_erc12864_display_info
	.uleb128 0x2c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x1459
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_erc12864_alt_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2c
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x42f
	.4byte	0x1470
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_nt7534_tg12864r_init_seq
	.uleb128 0xe
	.4byte	0x132a
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x474
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7565_dogm132_display_info
	.uleb128 0x2c
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x48d
	.4byte	0x1499
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7565_dogm132_init_seq
	.uleb128 0xe
	.4byte	0x12ee
	.uleb128 0x2d
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x259
	.uleb128 0x2d
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x255
	.uleb128 0x2d
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x258
	.uleb128 0x2d
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x278
	.uleb128 0x2d
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x256
	.uleb128 0x2d
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x2d
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x2d
	.4byte	.LASF113
	.4byte	.LASF113
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
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
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
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
	.4byte	.LVL2
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
	.4byte	.LVL2
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
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
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL59
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL69
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL79
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL94
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL104
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL104
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL114
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL124
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL124
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL134
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL144
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL144
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"u8x8_d_st7565_nhd_c12832"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF3:
	.string	"__uint8_t"
.LASF18:
	.string	"byte_cb"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF9:
	.string	"long long unsigned int"
.LASF69:
	.string	"u8x8_d_st7565_64128n"
.LASF101:
	.string	"u8x8_st7565_erc12864_display_info"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF27:
	.string	"utf8_state"
.LASF83:
	.string	"u8x8_d_st7565_flip1_seq"
.LASF28:
	.string	"gpio_result"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF16:
	.string	"display_cb"
.LASF97:
	.string	"u8x8_st7565_lm6059_display_info"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF65:
	.string	"u8x8_d_st7565_common"
.LASF81:
	.string	"u8x8_d_st7565_powersave1_seq"
.LASF76:
	.string	"u8x8_d_st7565_erc12864_alt"
.LASF109:
	.string	"u8x8_cad_SendSequence"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF61:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF102:
	.string	"u8x8_d_st7565_erc12864_alt_init_seq"
.LASF73:
	.string	"u8x8_d_st7565_lm6059"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF67:
	.string	"u8x8_d_st7565_ea_dogm128"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF112:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF58:
	.string	"x_pos"
.LASF55:
	.string	"u8x8_tile_t"
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF63:
	.string	"arg_int"
.LASF25:
	.string	"i2c_address"
.LASF91:
	.string	"u8x8_d_st7565_zolen_128x64_init_seq"
.LASF85:
	.string	"u8x8_d_st7565_zflip1_seq"
.LASF105:
	.string	"u8x8_d_st7565_dogm132_init_seq"
.LASF86:
	.string	"u8x8_st7565_128x64_display_info"
.LASF114:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF108:
	.string	"u8x8_cad_SendData"
.LASF68:
	.string	"u8x8_d_st7565_lm6063"
.LASF5:
	.string	"short unsigned int"
.LASF66:
	.string	"u8x8_d_st7565_nhd_c12864"
.LASF78:
	.string	"u8x8_d_st7565_ea_dogm132"
.LASF94:
	.string	"u8x8_st7565_nhd_c12864_display_info"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF14:
	.string	"display_info"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF34:
	.string	"u8x8_struct"
.LASF80:
	.string	"u8x8_d_st7565_powersave0_seq"
.LASF51:
	.string	"default_x_offset"
.LASF22:
	.string	"encoding"
.LASF52:
	.string	"flipmode_x_offset"
.LASF82:
	.string	"u8x8_d_st7565_flip0_seq"
.LASF79:
	.string	"sizetype"
.LASF17:
	.string	"cad_cb"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF96:
	.string	"u8x8_d_st7565_lm6059_init_seq"
.LASF23:
	.string	"x_offset"
.LASF113:
	.string	"u8x8_d_helper_display_init"
.LASF95:
	.string	"u8x8_d_st7565_nhd_c12864_init_seq"
.LASF50:
	.string	"tile_height"
.LASF89:
	.string	"u8x8_d_st7565_64128n_init_seq"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF77:
	.string	"u8x8_d_nt7534_tg12864r"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"u8x8_d_st7565_nhd_c12832_init_seq"
.LASF2:
	.string	"short int"
.LASF62:
	.string	"u8x8"
.LASF92:
	.string	"u8x8_st7565_128x32_display_info"
.LASF75:
	.string	"u8x8_d_st7565_erc12864"
.LASF47:
	.string	"data_setup_time_ns"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF12:
	.string	"uint32_t"
.LASF106:
	.string	"u8x8_cad_StartTransfer"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF57:
	.string	"tile_ptr"
.LASF4:
	.string	"__uint16_t"
.LASF111:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF72:
	.string	"u8x8_d_st7565_jlx12864"
.LASF116:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF31:
	.string	"debounce_state"
.LASF64:
	.string	"arg_ptr"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF70:
	.string	"u8x8_d_st7565_zolen_128x64"
.LASF115:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7565.c"
.LASF99:
	.string	"u8x8_st7565_lx12864_display_info"
.LASF10:
	.string	"uint8_t"
.LASF26:
	.string	"i2c_started"
.LASF84:
	.string	"u8x8_d_st7565_zflip0_seq"
.LASF53:
	.string	"pixel_width"
.LASF103:
	.string	"u8x8_d_nt7534_tg12864r_init_seq"
.LASF104:
	.string	"u8x8_st7565_dogm132_display_info"
.LASF49:
	.string	"tile_width"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF59:
	.string	"y_pos"
.LASF107:
	.string	"u8x8_cad_SendCmd"
.LASF87:
	.string	"u8x8_d_st7565_dogm128_init_seq"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF90:
	.string	"u8x8_st7565_64128n_display_info"
.LASF110:
	.string	"u8x8_cad_SendArg"
.LASF74:
	.string	"u8x8_d_st7565_lx12864"
.LASF100:
	.string	"u8x8_d_st7565_erc12864_init_seq"
.LASF98:
	.string	"u8x8_d_st7565_lx12864_init_seq"
.LASF54:
	.string	"pixel_height"
.LASF44:
	.string	"sck_clock_hz"
.LASF88:
	.string	"u8x8_d_st7565_lm6063_init_seq"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
