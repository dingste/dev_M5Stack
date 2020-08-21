	.file	"u8x8_d_st75256.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st75256_256x128_generic,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC1, u8x8_d_st75256_256x128_powersave1_seq
	.align	4
	.type	u8x8_d_st75256_256x128_generic, @function
u8x8_d_st75256_256x128_generic:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st75256.c"
	.loc 1 158 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 161 0
	movi.n	a6, 0xe
	beq	a3, a6, .L3
	movi.n	a6, 0xf
	beq	a3, a6, .L4
	movi.n	a5, 0xb
.LVL1:
	bne	a3, a5, .L11
	.loc 1 176 0
	l32r	a11, .LC0
	.loc 1 175 0
	beqz.n	a4, .L14
.L6:
	.loc 1 178 0
	l32r	a11, .LC1
.L14:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L12
.LVL3:
.L3:
	.loc 1 184 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 186 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 187 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL6:
	.loc 1 188 0
	extui	a11, a4, 0, 5
	slli	a11, a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL7:
	.loc 1 189 0
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL8:
.L13:
	.loc 1 191 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL9:
.L12:
	.loc 1 231 0
	movi.n	a2, 1
.LVL10:
	.loc 1 192 0
	retw.n
.LVL11:
.L4:
	.loc 1 196 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL12:
	.loc 1 200 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 197 0
	l8ui	a3, a5, 5
.LVL13:
	.loc 1 200 0
	call8	u8x8_cad_SendCmd
.LVL14:
	.loc 1 201 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 202 0
	l8ui	a11, a2, 34
	l8ui	a6, a5, 6
	mov.n	a10, a2
	add.n	a11, a11, a6
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL16:
	.loc 1 203 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL17:
	.loc 1 205 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 206 0
	slli	a11, a3, 3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL19:
	.loc 1 207 0
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL20:
	.loc 1 208 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL21:
	.loc 1 215 0
	movi.n	a6, 0x1f
.LVL22:
.L8:
	.loc 1 212 0
	l8ui	a3, a5, 4
.LVL23:
	.loc 1 213 0
	l32i.n	a7, a5, 0
.LVL24:
	.loc 1 215 0
	bgeu	a6, a3, .L7
	.loc 1 217 0
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL25:
	.loc 1 218 0
	movi	a8, 0xf8
	.loc 1 219 0
	addi	a3, a3, -31
.LVL26:
	.loc 1 218 0
	add.n	a7, a7, a8
.LVL27:
	.loc 1 219 0
	extui	a3, a3, 0, 8
.LVL28:
.L7:
	.loc 1 222 0
	slli	a11, a3, 3
	.loc 1 223 0
	addi.n	a4, a4, -1
.LVL29:
	.loc 1 222 0
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 223 0
	extui	a4, a4, 0, 8
.LVL30:
	.loc 1 222 0
	call8	u8x8_cad_SendData
.LVL31:
	.loc 1 224 0
	bnez.n	a4, .L8
	j	.L13
.LVL32:
.L11:
	.loc 1 229 0
	movi.n	a2, 0
.LVL33:
	.loc 1 232 0
	retw.n
.LFE0:
	.size	u8x8_d_st75256_256x128_generic, .-u8x8_d_st75256_256x128_generic
	.section	.text.u8x8_d_st75256_jlx256128,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_st75256_256x128_display_info
	.literal .LC3, u8x8_d_st75256_256x128_init_seq
	.literal .LC4, u8x8_d_st75256_jlx256128_flip0_seq
	.literal .LC5, u8x8_d_st75256_jlx256128_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256128
	.type	u8x8_d_st75256_jlx256128, @function
u8x8_d_st75256_jlx256128:
.LFB1:
	.loc 1 335 0
.LVL34:
	entry	sp, 32
.LCFI1:
	.loc 1 335 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 336 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st75256_256x128_generic
.LVL35:
	bnez.n	a10, .L20
	.loc 1 338 0
	movi.n	a8, 9
	bne	a3, a8, .L17
	.loc 1 341 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL36:
	j	.L20
.L17:
	.loc 1 344 0
	bnei	a3, 10, .L18
	.loc 1 346 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL37:
	.loc 1 347 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL38:
	j	.L20
.L18:
	.loc 1 350 0
	movi.n	a8, 0xd
	bne	a3, a8, .L16
	.loc 1 352 0
	bnez.n	a4, .L19
	.loc 1 354 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL39:
	.loc 1 355 0
	l32i.n	a3, a2, 0
.LVL40:
	l8ui	a3, a3, 18
	j	.L21
.L19:
	.loc 1 359 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL41:
	.loc 1 360 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L21:
	s8i	a3, a2, 34
.L20:
	.loc 1 337 0
	movi.n	a10, 1
.L16:
	.loc 1 365 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE1:
	.size	u8x8_d_st75256_jlx256128, .-u8x8_d_st75256_jlx256128
	.section	.text.u8x8_d_st75256_wo256x128,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_st75256_wo256x128_display_info
	.literal .LC7, u8x8_d_st75256_wo256x128_init_seq
	.literal .LC8, u8x8_d_st75256_jlx172104_flip1_seq
	.literal .LC9, u8x8_d_st75256_jlx172104_flip0_seq
	.align	4
	.global	u8x8_d_st75256_wo256x128
	.type	u8x8_d_st75256_wo256x128, @function
u8x8_d_st75256_wo256x128:
.LFB2:
	.loc 1 470 0
.LVL43:
	entry	sp, 32
.LCFI2:
	.loc 1 470 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 471 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st75256_256x128_generic
.LVL44:
	bnez.n	a10, .L27
	.loc 1 473 0
	movi.n	a8, 9
	bne	a3, a8, .L24
	.loc 1 476 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL45:
	j	.L27
.L24:
	.loc 1 479 0
	bnei	a3, 10, .L25
	.loc 1 481 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL46:
	.loc 1 482 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL47:
	j	.L27
.L25:
	.loc 1 485 0
	movi.n	a8, 0xd
	bne	a3, a8, .L23
	.loc 1 487 0
	bnez.n	a4, .L26
	.loc 1 489 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL48:
	.loc 1 490 0
	l32i.n	a3, a2, 0
.LVL49:
	l8ui	a3, a3, 18
	j	.L28
.L26:
	.loc 1 494 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL50:
	.loc 1 495 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L28:
	s8i	a3, a2, 34
.L27:
	.loc 1 472 0
	movi.n	a10, 1
.L23:
	.loc 1 500 0
	mov.n	a2, a10
.LVL51:
	retw.n
.LFE2:
	.size	u8x8_d_st75256_wo256x128, .-u8x8_d_st75256_wo256x128
	.section	.text.u8x8_d_st75256_jlx25664,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_st75256_256x64_display_info
	.literal .LC11, u8x8_d_st75256_256x64_init_seq
	.literal .LC12, u8x8_d_st75256_jlx256128_flip0_seq
	.literal .LC13, u8x8_d_st75256_jlx256128_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx25664
	.type	u8x8_d_st75256_jlx25664, @function
u8x8_d_st75256_jlx25664:
.LFB3:
	.loc 1 604 0
.LVL52:
	entry	sp, 32
.LCFI3:
	.loc 1 604 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 605 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_st75256_256x128_generic
.LVL53:
	bnez.n	a10, .L34
	.loc 1 607 0
	movi.n	a8, 9
	bne	a3, a8, .L31
	.loc 1 610 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL54:
	j	.L34
.L31:
	.loc 1 613 0
	bnei	a3, 10, .L32
	.loc 1 615 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL55:
	.loc 1 616 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL56:
	j	.L34
.L32:
	.loc 1 619 0
	movi.n	a8, 0xd
	bne	a3, a8, .L30
	.loc 1 621 0
	bnez.n	a4, .L33
	.loc 1 623 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL57:
	.loc 1 624 0
	l32i.n	a3, a2, 0
.LVL58:
	l8ui	a3, a3, 18
	j	.L35
.L33:
	.loc 1 628 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL59:
	.loc 1 629 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L35:
	s8i	a3, a2, 34
.L34:
	.loc 1 606 0
	movi.n	a10, 1
.L30:
	.loc 1 634 0
	mov.n	a2, a10
.LVL60:
	retw.n
.LFE3:
	.size	u8x8_d_st75256_jlx25664, .-u8x8_d_st75256_jlx25664
	.section	.text.u8x8_d_st75256_jlx172104,"ax",@progbits
	.literal_position
	.literal .LC14, .L39
	.literal .LC15, u8x8_st75256_172x104_display_info
	.literal .LC16, u8x8_d_st75256_jlx172104_init_seq
	.literal .LC17, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC18, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC19, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC20, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx172104
	.type	u8x8_d_st75256_jlx172104, @function
u8x8_d_st75256_jlx172104:
.LFB4:
	.loc 1 737 0
.LVL61:
	entry	sp, 32
.LCFI4:
	.loc 1 741 0
	addi	a3, a3, -9
.LVL62:
	extui	a3, a3, 0, 8
	.loc 1 737 0
	extui	a4, a4, 0, 8
	.loc 1 741 0
	bgeui	a3, 7, .L51
	l32r	a6, .LC14
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx172104,"a",@progbits
	.align	4
	.align	4
.L39:
	.word	.L38
	.word	.L40
	.word	.L41
	.word	.L51
	.word	.L42
	.word	.L43
	.word	.L44
	.section	.text.u8x8_d_st75256_jlx172104
.L44:
	.loc 1 745 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL63:
	.loc 1 749 0
	movi.n	a11, 0x30
	.loc 1 746 0
	l8ui	a3, a5, 5
.LVL64:
	.loc 1 749 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL65:
	.loc 1 747 0
	slli	a3, a3, 3
.LVL66:
	.loc 1 750 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL67:
	.loc 1 747 0
	extui	a6, a3, 0, 8
.LVL68:
	.loc 1 751 0
	l8ui	a3, a2, 34
.LVL69:
	.loc 1 752 0
	l8ui	a11, a5, 6
	.loc 1 751 0
	bnez.n	a3, .L45
	.loc 1 752 0
	addi.n	a11, a11, 8
	extui	a11, a11, 0, 8
.L45:
	.loc 1 754 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL70:
	.loc 1 755 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL71:
	.loc 1 757 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL72:
	.loc 1 758 0
	l8ui	a11, a2, 34
	mov.n	a10, a2
	add.n	a11, a6, a11
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL73:
	.loc 1 759 0
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL74:
	.loc 1 760 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL75:
	.loc 1 770 0
	movi	a7, 0xac
.LVL76:
.L48:
	.loc 1 766 0
	l8ui	a3, a5, 4
.LVL77:
	.loc 1 767 0
	l32i.n	a12, a5, 0
.LVL78:
	.loc 1 768 0
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL79:
	.loc 1 770 0
	add.n	a8, a3, a6
	bge	a7, a8, .L47
.LVL80:
	.loc 1 773 0
	movi	a3, -0x54
	sub	a8, a3, a6
	extui	a3, a8, 0, 8
.LVL81:
.L47:
	.loc 1 778 0
	addi.n	a4, a4, -1
.LVL82:
	.loc 1 776 0
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 777 0
	add.n	a3, a6, a3
.LVL83:
	.loc 1 778 0
	extui	a4, a4, 0, 8
.LVL84:
	.loc 1 776 0
	call8	u8x8_cad_SendData
.LVL85:
	.loc 1 777 0
	extui	a6, a3, 0, 8
.LVL86:
	.loc 1 779 0
	bnez.n	a4, .L48
	j	.L54
.LVL87:
.L38:
	.loc 1 785 0
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL88:
	j	.L53
.L40:
	.loc 1 788 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL89:
	.loc 1 789 0
	l32r	a11, .LC16
	j	.L55
.L41:
	.loc 1 793 0
	l32r	a11, .LC17
	.loc 1 792 0
	beqz.n	a4, .L55
.L49:
	.loc 1 795 0
	l32r	a11, .LC18
.L55:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL90:
	j	.L53
.L42:
	.loc 1 799 0
	bnez.n	a4, .L50
	.loc 1 801 0
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL91:
	.loc 1 802 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L56
.L50:
	.loc 1 806 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL92:
	.loc 1 807 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L56:
	s8i	a3, a2, 34
	j	.L53
.L43:
	.loc 1 814 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL93:
	.loc 1 816 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL94:
	.loc 1 817 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL95:
	.loc 1 818 0
	extui	a11, a4, 0, 5
	slli	a11, a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL96:
	.loc 1 819 0
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL97:
.L54:
	.loc 1 821 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL98:
.L53:
	.loc 1 822 0
	movi.n	a2, 1
.LVL99:
	retw.n
.LVL100:
.L51:
	.loc 1 825 0
	movi.n	a2, 0
.LVL101:
	.loc 1 826 0
	retw.n
.LFE4:
	.size	u8x8_d_st75256_jlx172104, .-u8x8_d_st75256_jlx172104
	.section	.text.u8x8_d_st75256_jlx240160,"ax",@progbits
	.literal_position
	.literal .LC21, .L60
	.literal .LC22, u8x8_st75256_240x160_display_info
	.literal .LC23, u8x8_d_st75256_240x160_init_seq
	.literal .LC24, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC25, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC26, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC27, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx240160
	.type	u8x8_d_st75256_jlx240160, @function
u8x8_d_st75256_jlx240160:
.LFB5:
	.loc 1 929 0
.LVL102:
	entry	sp, 32
.LCFI5:
	.loc 1 933 0
	addi	a3, a3, -9
.LVL103:
	extui	a3, a3, 0, 8
	.loc 1 929 0
	extui	a4, a4, 0, 8
	.loc 1 933 0
	bgeui	a3, 7, .L72
	l32r	a6, .LC21
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx240160,"a",@progbits
	.align	4
	.align	4
.L60:
	.word	.L59
	.word	.L61
	.word	.L62
	.word	.L72
	.word	.L63
	.word	.L64
	.word	.L65
	.section	.text.u8x8_d_st75256_jlx240160
.L65:
	.loc 1 937 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL104:
	.loc 1 941 0
	movi.n	a11, 0x30
	.loc 1 938 0
	l8ui	a3, a5, 5
.LVL105:
	.loc 1 941 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL106:
	.loc 1 939 0
	slli	a3, a3, 3
.LVL107:
	.loc 1 942 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL108:
	.loc 1 939 0
	extui	a6, a3, 0, 8
.LVL109:
	.loc 1 943 0
	l8ui	a3, a2, 34
.LVL110:
	.loc 1 944 0
	l8ui	a11, a5, 6
	.loc 1 943 0
	bnez.n	a3, .L66
	.loc 1 944 0
	addi.n	a11, a11, 1
	extui	a11, a11, 0, 8
.L66:
	.loc 1 946 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL111:
	.loc 1 947 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL112:
	.loc 1 949 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL113:
	.loc 1 950 0
	l8ui	a11, a2, 34
	mov.n	a10, a2
	add.n	a11, a6, a11
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL114:
	.loc 1 951 0
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL115:
	.loc 1 952 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL116:
	.loc 1 961 0
	movi	a7, 0xf0
.LVL117:
.L69:
	.loc 1 957 0
	l8ui	a3, a5, 4
.LVL118:
	.loc 1 958 0
	l32i.n	a12, a5, 0
.LVL119:
	.loc 1 959 0
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL120:
	.loc 1 961 0
	add.n	a8, a3, a6
	bge	a7, a8, .L68
.LVL121:
	.loc 1 964 0
	movi.n	a3, -0x10
	sub	a8, a3, a6
	extui	a3, a8, 0, 8
.LVL122:
.L68:
	.loc 1 969 0
	addi.n	a4, a4, -1
.LVL123:
	.loc 1 967 0
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 968 0
	add.n	a3, a6, a3
.LVL124:
	.loc 1 969 0
	extui	a4, a4, 0, 8
.LVL125:
	.loc 1 967 0
	call8	u8x8_cad_SendData
.LVL126:
	.loc 1 968 0
	extui	a6, a3, 0, 8
.LVL127:
	.loc 1 970 0
	bnez.n	a4, .L69
	j	.L75
.LVL128:
.L59:
	.loc 1 976 0
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL129:
	j	.L74
.L61:
	.loc 1 979 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL130:
	.loc 1 980 0
	l32r	a11, .LC23
	j	.L76
.L62:
	.loc 1 984 0
	l32r	a11, .LC24
	.loc 1 983 0
	beqz.n	a4, .L76
.L70:
	.loc 1 986 0
	l32r	a11, .LC25
.L76:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL131:
	j	.L74
.L63:
	.loc 1 990 0
	bnez.n	a4, .L71
	.loc 1 992 0
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL132:
	.loc 1 993 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L77
.L71:
	.loc 1 997 0
	l32r	a11, .LC27
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL133:
	.loc 1 998 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L77:
	s8i	a3, a2, 34
	j	.L74
.L64:
	.loc 1 1005 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL134:
	.loc 1 1007 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL135:
	.loc 1 1008 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL136:
	.loc 1 1009 0
	extui	a11, a4, 0, 5
	slli	a11, a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL137:
	.loc 1 1010 0
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL138:
.L75:
	.loc 1 1012 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL139:
.L74:
	.loc 1 1013 0
	movi.n	a2, 1
.LVL140:
	retw.n
.LVL141:
.L72:
	.loc 1 1016 0
	movi.n	a2, 0
.LVL142:
	.loc 1 1020 0
	retw.n
.LFE5:
	.size	u8x8_d_st75256_jlx240160, .-u8x8_d_st75256_jlx240160
	.section	.text.u8x8_d_st75256_jlx256160,"ax",@progbits
	.literal_position
	.literal .LC28, .L81
	.literal .LC29, u8x8_st75256_256x160_display_info
	.literal .LC30, u8x8_d_st75256_256x160_init_seq
	.literal .LC31, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC32, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC33, u8x8_d_st75256_jlx256160_flip0_seq
	.literal .LC34, u8x8_d_st75256_jlx256160_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256160
	.type	u8x8_d_st75256_jlx256160, @function
u8x8_d_st75256_jlx256160:
.LFB6:
	.loc 1 1124 0
.LVL143:
	entry	sp, 32
.LCFI6:
	.loc 1 1128 0
	addi	a3, a3, -9
.LVL144:
	extui	a3, a3, 0, 8
	.loc 1 1124 0
	extui	a4, a4, 0, 8
	.loc 1 1128 0
	bgeui	a3, 7, .L93
	l32r	a6, .LC28
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx256160,"a",@progbits
	.align	4
	.align	4
.L81:
	.word	.L80
	.word	.L82
	.word	.L83
	.word	.L93
	.word	.L84
	.word	.L85
	.word	.L86
	.section	.text.u8x8_d_st75256_jlx256160
.L86:
	.loc 1 1132 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL145:
	.loc 1 1136 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 1133 0
	l8ui	a3, a5, 5
.LVL146:
	.loc 1 1136 0
	call8	u8x8_cad_SendCmd
.LVL147:
	.loc 1 1137 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL148:
	.loc 1 1138 0
	l8ui	a6, a2, 34
	.loc 1 1134 0
	slli	a3, a3, 3
.LVL149:
	extui	a3, a3, 0, 8
.LVL150:
	.loc 1 1139 0
	l8ui	a11, a5, 6
	.loc 1 1138 0
	bnei	a6, 1, .L87
	.loc 1 1139 0
	addi.n	a11, a11, 1
	extui	a11, a11, 0, 8
.L87:
	.loc 1 1141 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL151:
	.loc 1 1142 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL152:
	.loc 1 1144 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL153:
	.loc 1 1145 0
	l32i.n	a6, a2, 0
	mov.n	a10, a2
	l8ui	a11, a6, 18
	.loc 1 1155 0
	movi.n	a6, 0x1f
	.loc 1 1145 0
	add.n	a11, a3, a11
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL154:
	.loc 1 1146 0
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL155:
	.loc 1 1147 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL156:
.L90:
	.loc 1 1152 0
	l8ui	a3, a5, 4
.LVL157:
	.loc 1 1153 0
	l32i.n	a7, a5, 0
.LVL158:
	.loc 1 1155 0
	bgeu	a6, a3, .L89
	.loc 1 1157 0
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL159:
	.loc 1 1158 0
	movi	a8, 0xf8
	.loc 1 1159 0
	addi	a3, a3, -31
.LVL160:
	.loc 1 1158 0
	add.n	a7, a7, a8
.LVL161:
	.loc 1 1159 0
	extui	a3, a3, 0, 8
.LVL162:
.L89:
	.loc 1 1162 0
	slli	a11, a3, 3
	.loc 1 1163 0
	addi.n	a4, a4, -1
.LVL163:
	.loc 1 1162 0
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 1163 0
	extui	a4, a4, 0, 8
.LVL164:
	.loc 1 1162 0
	call8	u8x8_cad_SendData
.LVL165:
	.loc 1 1164 0
	bnez.n	a4, .L90
	j	.L96
.LVL166:
.L80:
	.loc 1 1170 0
	l32r	a11, .LC29
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL167:
	j	.L95
.L82:
	.loc 1 1173 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL168:
	.loc 1 1174 0
	l32r	a11, .LC30
	j	.L97
.L83:
	.loc 1 1178 0
	l32r	a11, .LC31
	.loc 1 1177 0
	beqz.n	a4, .L97
.L91:
	.loc 1 1180 0
	l32r	a11, .LC32
.L97:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL169:
	j	.L95
.L84:
	.loc 1 1184 0
	bnez.n	a4, .L92
	.loc 1 1186 0
	l32r	a11, .LC33
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL170:
	.loc 1 1187 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L98
.L92:
	.loc 1 1191 0
	l32r	a11, .LC34
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL171:
	.loc 1 1192 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L98:
	s8i	a3, a2, 34
	j	.L95
.L85:
	.loc 1 1199 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL172:
	.loc 1 1201 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL173:
	.loc 1 1202 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL174:
	.loc 1 1203 0
	extui	a11, a4, 0, 5
	slli	a11, a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL175:
	.loc 1 1204 0
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL176:
.L96:
	.loc 1 1206 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL177:
.L95:
	.loc 1 1207 0
	movi.n	a2, 1
.LVL178:
	retw.n
.LVL179:
.L93:
	.loc 1 1210 0
	movi.n	a2, 0
.LVL180:
	.loc 1 1211 0
	retw.n
.LFE6:
	.size	u8x8_d_st75256_jlx256160, .-u8x8_d_st75256_jlx256160
	.section	.text.u8x8_d_st75256_jlx256160m,"ax",@progbits
	.literal_position
	.literal .LC35, .L102
	.literal .LC36, u8x8_st75256_256x160_display_info
	.literal .LC37, u8x8_d_st75256_256x160m_init_seq
	.literal .LC38, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC39, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC40, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC41, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256160m
	.type	u8x8_d_st75256_jlx256160m, @function
u8x8_d_st75256_jlx256160m:
.LFB7:
	.loc 1 1290 0
.LVL181:
	entry	sp, 32
.LCFI7:
	.loc 1 1294 0
	addi	a3, a3, -9
.LVL182:
	extui	a3, a3, 0, 8
	.loc 1 1290 0
	extui	a4, a4, 0, 8
	.loc 1 1294 0
	bgeui	a3, 7, .L114
	l32r	a6, .LC35
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx256160m,"a",@progbits
	.align	4
	.align	4
.L102:
	.word	.L101
	.word	.L103
	.word	.L104
	.word	.L114
	.word	.L105
	.word	.L106
	.word	.L107
	.section	.text.u8x8_d_st75256_jlx256160m
.L107:
	.loc 1 1298 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL183:
	.loc 1 1302 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 1299 0
	l8ui	a3, a5, 5
.LVL184:
	.loc 1 1302 0
	call8	u8x8_cad_SendCmd
.LVL185:
	.loc 1 1303 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL186:
	.loc 1 1304 0
	l8ui	a6, a2, 34
	.loc 1 1300 0
	slli	a3, a3, 3
.LVL187:
	extui	a3, a3, 0, 8
.LVL188:
	.loc 1 1305 0
	l8ui	a11, a5, 6
	.loc 1 1304 0
	bnei	a6, 1, .L108
	.loc 1 1305 0
	addi.n	a11, a11, 1
	extui	a11, a11, 0, 8
.L108:
	.loc 1 1307 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL189:
	.loc 1 1308 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL190:
	.loc 1 1310 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL191:
	.loc 1 1311 0
	l32i.n	a6, a2, 0
	mov.n	a10, a2
	l8ui	a11, a6, 18
	.loc 1 1321 0
	movi.n	a6, 0x1f
	.loc 1 1311 0
	add.n	a11, a3, a11
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL192:
	.loc 1 1312 0
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL193:
	.loc 1 1313 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL194:
.L111:
	.loc 1 1318 0
	l8ui	a3, a5, 4
.LVL195:
	.loc 1 1319 0
	l32i.n	a7, a5, 0
.LVL196:
	.loc 1 1321 0
	bgeu	a6, a3, .L110
	.loc 1 1323 0
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL197:
	.loc 1 1324 0
	movi	a8, 0xf8
	.loc 1 1325 0
	addi	a3, a3, -31
.LVL198:
	.loc 1 1324 0
	add.n	a7, a7, a8
.LVL199:
	.loc 1 1325 0
	extui	a3, a3, 0, 8
.LVL200:
.L110:
	.loc 1 1328 0
	slli	a11, a3, 3
	.loc 1 1329 0
	addi.n	a4, a4, -1
.LVL201:
	.loc 1 1328 0
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 1329 0
	extui	a4, a4, 0, 8
.LVL202:
	.loc 1 1328 0
	call8	u8x8_cad_SendData
.LVL203:
	.loc 1 1330 0
	bnez.n	a4, .L111
	j	.L117
.LVL204:
.L101:
	.loc 1 1336 0
	l32r	a11, .LC36
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL205:
	j	.L116
.L103:
	.loc 1 1339 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL206:
	.loc 1 1340 0
	l32r	a11, .LC37
	j	.L118
.L104:
	.loc 1 1344 0
	l32r	a11, .LC38
	.loc 1 1343 0
	beqz.n	a4, .L118
.L112:
	.loc 1 1346 0
	l32r	a11, .LC39
.L118:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL207:
	j	.L116
.L105:
	.loc 1 1350 0
	bnez.n	a4, .L113
	.loc 1 1352 0
	l32r	a11, .LC40
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL208:
	.loc 1 1353 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L119
.L113:
	.loc 1 1357 0
	l32r	a11, .LC41
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL209:
	.loc 1 1358 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L119:
	s8i	a3, a2, 34
	j	.L116
.L106:
	.loc 1 1365 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL210:
	.loc 1 1367 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL211:
	.loc 1 1368 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL212:
	.loc 1 1369 0
	extui	a11, a4, 0, 5
	slli	a11, a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL213:
	.loc 1 1370 0
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL214:
.L117:
	.loc 1 1372 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL215:
.L116:
	.loc 1 1373 0
	movi.n	a2, 1
.LVL216:
	retw.n
.LVL217:
.L114:
	.loc 1 1376 0
	movi.n	a2, 0
.LVL218:
	.loc 1 1377 0
	retw.n
.LFE7:
	.size	u8x8_d_st75256_jlx256160m, .-u8x8_d_st75256_jlx256160m
	.section	.text.u8x8_d_st75256_jlx256160_alt,"ax",@progbits
	.literal_position
	.literal .LC42, .L123
	.literal .LC43, u8x8_st75256_256x160_alt_display_info
	.literal .LC44, u8x8_d_st75256_256x160_alt_init_seq
	.literal .LC45, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC46, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC47, u8x8_d_st75256_jlx172104_flip0_seq
	.literal .LC48, u8x8_d_st75256_jlx172104_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx256160_alt
	.type	u8x8_d_st75256_jlx256160_alt, @function
u8x8_d_st75256_jlx256160_alt:
.LFB8:
	.loc 1 1483 0
.LVL219:
	entry	sp, 32
.LCFI8:
	.loc 1 1487 0
	addi	a3, a3, -9
.LVL220:
	extui	a3, a3, 0, 8
	.loc 1 1483 0
	extui	a4, a4, 0, 8
	.loc 1 1487 0
	bgeui	a3, 7, .L135
	l32r	a6, .LC42
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx256160_alt,"a",@progbits
	.align	4
	.align	4
.L123:
	.word	.L122
	.word	.L124
	.word	.L125
	.word	.L135
	.word	.L126
	.word	.L127
	.word	.L128
	.section	.text.u8x8_d_st75256_jlx256160_alt
.L128:
	.loc 1 1491 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL221:
	.loc 1 1495 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	.loc 1 1492 0
	l8ui	a3, a5, 5
.LVL222:
	.loc 1 1495 0
	call8	u8x8_cad_SendCmd
.LVL223:
	.loc 1 1496 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL224:
	.loc 1 1497 0
	l8ui	a6, a2, 34
	.loc 1 1493 0
	slli	a3, a3, 3
.LVL225:
	extui	a3, a3, 0, 8
.LVL226:
	.loc 1 1498 0
	l8ui	a11, a5, 6
	.loc 1 1497 0
	bnez.n	a6, .L129
	.loc 1 1498 0
	addi.n	a11, a11, 1
	extui	a11, a11, 0, 8
.L129:
	.loc 1 1500 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL227:
	.loc 1 1501 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL228:
	.loc 1 1503 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL229:
	.loc 1 1504 0
	l8ui	a11, a2, 34
	mov.n	a10, a2
	add.n	a11, a3, a11
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL230:
	.loc 1 1505 0
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL231:
	.loc 1 1506 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL232:
	.loc 1 1514 0
	movi.n	a6, 0x1f
.LVL233:
.L132:
	.loc 1 1511 0
	l8ui	a3, a5, 4
.LVL234:
	.loc 1 1512 0
	l32i.n	a7, a5, 0
.LVL235:
	.loc 1 1514 0
	bgeu	a6, a3, .L131
	.loc 1 1516 0
	mov.n	a12, a7
	movi	a11, 0xf8
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL236:
	.loc 1 1517 0
	movi	a8, 0xf8
	.loc 1 1518 0
	addi	a3, a3, -31
.LVL237:
	.loc 1 1517 0
	add.n	a7, a7, a8
.LVL238:
	.loc 1 1518 0
	extui	a3, a3, 0, 8
.LVL239:
.L131:
	.loc 1 1521 0
	slli	a11, a3, 3
	.loc 1 1522 0
	addi.n	a4, a4, -1
.LVL240:
	.loc 1 1521 0
	extui	a11, a11, 0, 8
	mov.n	a12, a7
	mov.n	a10, a2
	.loc 1 1522 0
	extui	a4, a4, 0, 8
.LVL241:
	.loc 1 1521 0
	call8	u8x8_cad_SendData
.LVL242:
	.loc 1 1523 0
	bnez.n	a4, .L132
	j	.L138
.LVL243:
.L122:
	.loc 1 1529 0
	l32r	a11, .LC43
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL244:
	j	.L137
.L124:
	.loc 1 1532 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL245:
	.loc 1 1533 0
	l32r	a11, .LC44
	j	.L139
.L125:
	.loc 1 1537 0
	l32r	a11, .LC45
	.loc 1 1536 0
	beqz.n	a4, .L139
.L133:
	.loc 1 1539 0
	l32r	a11, .LC46
.L139:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL246:
	j	.L137
.L126:
	.loc 1 1543 0
	bnez.n	a4, .L134
	.loc 1 1545 0
	l32r	a11, .LC47
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL247:
	.loc 1 1546 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L140
.L134:
	.loc 1 1550 0
	l32r	a11, .LC48
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL248:
	.loc 1 1551 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L140:
	s8i	a3, a2, 34
	j	.L137
.L127:
	.loc 1 1558 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL249:
	.loc 1 1560 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL250:
	.loc 1 1561 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL251:
	.loc 1 1562 0
	extui	a11, a4, 0, 5
	slli	a11, a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL252:
	.loc 1 1563 0
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL253:
.L138:
	.loc 1 1565 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL254:
.L137:
	.loc 1 1566 0
	movi.n	a2, 1
.LVL255:
	retw.n
.LVL256:
.L135:
	.loc 1 1569 0
	movi.n	a2, 0
.LVL257:
	.loc 1 1571 0
	retw.n
.LFE8:
	.size	u8x8_d_st75256_jlx256160_alt, .-u8x8_d_st75256_jlx256160_alt
	.section	.text.u8x8_d_st75256_jlx19296,"ax",@progbits
	.literal_position
	.literal .LC49, .L144
	.literal .LC50, u8x8_st75256_192x96_display_info
	.literal .LC51, u8x8_d_st75256_jlx19296_init_seq
	.literal .LC52, u8x8_d_st75256_256x128_powersave0_seq
	.literal .LC53, u8x8_d_st75256_256x128_powersave1_seq
	.literal .LC54, u8x8_d_st75256_jlx256160_flip0_seq
	.literal .LC55, u8x8_d_st75256_jlx256160_flip1_seq
	.align	4
	.global	u8x8_d_st75256_jlx19296
	.type	u8x8_d_st75256_jlx19296, @function
u8x8_d_st75256_jlx19296:
.LFB9:
	.loc 1 1674 0
.LVL258:
	entry	sp, 32
.LCFI9:
	.loc 1 1678 0
	addi	a3, a3, -9
.LVL259:
	extui	a3, a3, 0, 8
	.loc 1 1674 0
	extui	a4, a4, 0, 8
	.loc 1 1678 0
	bgeui	a3, 7, .L156
	l32r	a6, .LC49
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st75256_jlx19296,"a",@progbits
	.align	4
	.align	4
.L144:
	.word	.L143
	.word	.L145
	.word	.L146
	.word	.L156
	.word	.L147
	.word	.L148
	.word	.L149
	.section	.text.u8x8_d_st75256_jlx19296
.L149:
	.loc 1 1682 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL260:
	.loc 1 1686 0
	movi.n	a11, 0x30
	.loc 1 1683 0
	l8ui	a3, a5, 5
.LVL261:
	.loc 1 1686 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL262:
	.loc 1 1684 0
	slli	a3, a3, 3
.LVL263:
	.loc 1 1687 0
	movi	a11, 0x75
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL264:
	.loc 1 1684 0
	extui	a6, a3, 0, 8
.LVL265:
	.loc 1 1688 0
	l8ui	a3, a2, 34
.LVL266:
	l8ui	a11, a5, 6
	bnez.n	a3, .L150
	.loc 1 1689 0
	addi.n	a11, a11, 8
	j	.L158
.L150:
	.loc 1 1691 0
	addi.n	a11, a11, 1
.L158:
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL267:
	.loc 1 1692 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL268:
	.loc 1 1694 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL269:
	.loc 1 1695 0
	l8ui	a11, a2, 34
	mov.n	a10, a2
	add.n	a11, a6, a11
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL270:
	.loc 1 1696 0
	movi	a11, 0xff
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL271:
	.loc 1 1697 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL272:
	.loc 1 1706 0
	movi	a7, 0xc0
.LVL273:
.L153:
	.loc 1 1702 0
	l8ui	a3, a5, 4
.LVL274:
	.loc 1 1703 0
	l32i.n	a12, a5, 0
.LVL275:
	.loc 1 1704 0
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL276:
	.loc 1 1706 0
	add.n	a8, a3, a6
	bge	a7, a8, .L152
.LVL277:
	.loc 1 1709 0
	movi	a3, -0x40
	sub	a8, a3, a6
	extui	a3, a8, 0, 8
.LVL278:
.L152:
	.loc 1 1714 0
	addi.n	a4, a4, -1
.LVL279:
	.loc 1 1712 0
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 1713 0
	add.n	a3, a6, a3
.LVL280:
	.loc 1 1714 0
	extui	a4, a4, 0, 8
.LVL281:
	.loc 1 1712 0
	call8	u8x8_cad_SendData
.LVL282:
	.loc 1 1713 0
	extui	a6, a3, 0, 8
.LVL283:
	.loc 1 1715 0
	bnez.n	a4, .L153
	j	.L160
.LVL284:
.L143:
	.loc 1 1721 0
	l32r	a11, .LC50
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL285:
	j	.L159
.L145:
	.loc 1 1724 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL286:
	.loc 1 1725 0
	l32r	a11, .LC51
	j	.L161
.L146:
	.loc 1 1729 0
	l32r	a11, .LC52
	.loc 1 1728 0
	beqz.n	a4, .L161
.L154:
	.loc 1 1731 0
	l32r	a11, .LC53
.L161:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL287:
	j	.L159
.L147:
	.loc 1 1735 0
	bnez.n	a4, .L155
	.loc 1 1737 0
	l32r	a11, .LC54
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL288:
	.loc 1 1738 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L162
.L155:
	.loc 1 1742 0
	l32r	a11, .LC55
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL289:
	.loc 1 1743 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L162:
	s8i	a3, a2, 34
	j	.L159
.L148:
	.loc 1 1763 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL290:
	.loc 1 1765 0
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL291:
	.loc 1 1766 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL292:
	.loc 1 1767 0
	extui	a11, a4, 0, 5
	slli	a11, a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL293:
	.loc 1 1768 0
	srli	a11, a4, 5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL294:
.L160:
	.loc 1 1770 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL295:
.L159:
	.loc 1 1771 0
	movi.n	a2, 1
.LVL296:
	retw.n
.LVL297:
.L156:
	.loc 1 1774 0
	movi.n	a2, 0
.LVL298:
	.loc 1 1775 0
	retw.n
.LFE9:
	.size	u8x8_d_st75256_jlx19296, .-u8x8_d_st75256_jlx19296
	.section	.rodata.u8x8_d_st75256_jlx19296_init_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx19296_init_seq, @object
	.size	u8x8_d_st75256_jlx19296_init_seq, 105
u8x8_d_st75256_jlx19296_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	46
	.byte	22
	.byte	3
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_192x96_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_192x96_display_info, @object
	.size	u8x8_st75256_192x96_display_info, 24
u8x8_st75256_192x96_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	24
	.byte	12
	.byte	0
	.byte	64
	.short	192
	.short	96
	.section	.rodata.u8x8_d_st75256_256x160_alt_init_seq,"a",@progbits
	.type	u8x8_d_st75256_256x160_alt_init_seq, @object
	.size	u8x8_d_st75256_256x160_alt_init_seq, 105
u8x8_d_st75256_256x160_alt_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x160_alt_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_256x160_alt_display_info, @object
	.size	u8x8_st75256_256x160_alt_display_info, 24
u8x8_st75256_256x160_alt_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	20
	.byte	0
	.byte	0
	.short	256
	.short	160
	.section	.rodata.u8x8_d_st75256_256x160m_init_seq,"a",@progbits
	.type	u8x8_d_st75256_256x160m_init_seq, @object
	.size	u8x8_d_st75256_256x160m_init_seq, 105
u8x8_d_st75256_256x160m_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	40
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_256x160_init_seq,"a",@progbits
	.type	u8x8_d_st75256_256x160_init_seq, @object
	.size	u8x8_d_st75256_256x160_init_seq, 105
u8x8_d_st75256_256x160_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	40
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x160_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_256x160_display_info, @object
	.size	u8x8_st75256_256x160_display_info, 24
u8x8_st75256_256x160_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	20
	.byte	0
	.byte	1
	.short	256
	.short	160
	.section	.rodata.u8x8_d_st75256_240x160_init_seq,"a",@progbits
	.type	u8x8_d_st75256_240x160_init_seq, @object
	.size	u8x8_d_st75256_240x160_init_seq, 105
u8x8_d_st75256_240x160_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-17
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	24
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_240x160_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_240x160_display_info, @object
	.size	u8x8_st75256_240x160_display_info, 24
u8x8_st75256_240x160_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	30
	.byte	20
	.byte	16
	.byte	0
	.short	240
	.short	160
	.section	.rodata.u8x8_d_st75256_jlx172104_init_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx172104_init_seq, @object
	.size	u8x8_d_st75256_jlx172104_init_seq, 105
u8x8_d_st75256_jlx172104_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	-97
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	8
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_172x104_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_172x104_display_info, @object
	.size	u8x8_st75256_172x104_display_info, 24
u8x8_st75256_172x104_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	22
	.byte	13
	.byte	84
	.byte	0
	.short	172
	.short	104
	.section	.rodata.u8x8_d_st75256_256x64_init_seq,"a",@progbits
	.type	u8x8_d_st75256_256x64_init_seq, @object
	.size	u8x8_d_st75256_256x64_init_seq, 105
u8x8_d_st75256_256x64_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	31
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	63
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	10
	.byte	22
	.byte	2
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_256x64_display_info, @object
	.size	u8x8_st75256_256x64_display_info, 24
u8x8_st75256_256x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	8
	.byte	0
	.byte	13
	.short	256
	.short	64
	.section	.rodata.u8x8_d_st75256_wo256x128_init_seq,"a",@progbits
	.type	u8x8_d_st75256_wo256x128_init_seq, @object
	.size	u8x8_d_st75256_wo256x128_init_seq, 105
u8x8_d_st75256_wo256x128_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	1
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	54
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_wo256x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_wo256x128_display_info, @object
	.size	u8x8_st75256_wo256x128_display_info, 24
u8x8_st75256_wo256x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	16
	.byte	5
	.byte	0
	.short	256
	.short	128
	.section	.rodata.u8x8_d_st75256_256x128_init_seq,"a",@progbits
	.type	u8x8_d_st75256_256x128_init_seq, @object
	.size	u8x8_d_st75256_256x128_init_seq, 105
u8x8_d_st75256_256x128_init_seq:
	.byte	24
	.byte	-2
	.byte	20
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	21
	.byte	-82
	.byte	21
	.byte	49
	.byte	21
	.byte	-41
	.byte	22
	.byte	-97
	.byte	21
	.byte	50
	.byte	22
	.byte	0
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	32
	.byte	22
	.byte	1
	.byte	22
	.byte	3
	.byte	22
	.byte	5
	.byte	22
	.byte	7
	.byte	22
	.byte	9
	.byte	22
	.byte	11
	.byte	22
	.byte	13
	.byte	22
	.byte	16
	.byte	22
	.byte	17
	.byte	22
	.byte	19
	.byte	22
	.byte	21
	.byte	22
	.byte	23
	.byte	22
	.byte	25
	.byte	22
	.byte	27
	.byte	22
	.byte	29
	.byte	22
	.byte	31
	.byte	21
	.byte	48
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	79
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	-1
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	21
	.byte	-54
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	22
	.byte	32
	.byte	21
	.byte	-16
	.byte	22
	.byte	16
	.byte	21
	.byte	-127
	.byte	22
	.byte	54
	.byte	22
	.byte	5
	.byte	21
	.byte	32
	.byte	22
	.byte	11
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st75256_256x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_st75256_256x128_display_info, @object
	.size	u8x8_st75256_256x128_display_info, 24
u8x8_st75256_256x128_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	20
	.byte	5
	.byte	5
	.byte	20
	.byte	40
	.word	4000000
	.byte	0
	.byte	4
	.byte	15
	.byte	70
	.byte	32
	.byte	16
	.byte	0
	.byte	5
	.short	256
	.short	128
	.section	.rodata.u8x8_d_st75256_jlx256160_flip1_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx256160_flip1_seq, @object
	.size	u8x8_d_st75256_jlx256160_flip1_seq, 13
u8x8_d_st75256_jlx256160_flip1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	3
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx256160_flip0_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx256160_flip0_seq, @object
	.size	u8x8_d_st75256_jlx256160_flip0_seq, 13
u8x8_d_st75256_jlx256160_flip0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx172104_flip1_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx172104_flip1_seq, @object
	.size	u8x8_d_st75256_jlx172104_flip1_seq, 13
u8x8_d_st75256_jlx172104_flip1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	1
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx172104_flip0_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx172104_flip0_seq, @object
	.size	u8x8_d_st75256_jlx172104_flip0_seq, 13
u8x8_d_st75256_jlx172104_flip0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	2
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx256128_flip1_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx256128_flip1_seq, @object
	.size	u8x8_d_st75256_jlx256128_flip1_seq, 13
u8x8_d_st75256_jlx256128_flip1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	3
	.byte	22
	.byte	-90
	.byte	21
	.byte	8
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_jlx256128_flip0_seq,"a",@progbits
	.type	u8x8_d_st75256_jlx256128_flip0_seq, @object
	.size	u8x8_d_st75256_jlx256128_flip0_seq, 13
u8x8_d_st75256_jlx256128_flip0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-68
	.byte	22
	.byte	0
	.byte	22
	.byte	-90
	.byte	21
	.byte	12
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_256x128_powersave1_seq,"a",@progbits
	.type	u8x8_d_st75256_256x128_powersave1_seq, @object
	.size	u8x8_d_st75256_256x128_powersave1_seq, 9
u8x8_d_st75256_256x128_powersave1_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-82
	.byte	21
	.byte	-107
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st75256_256x128_powersave0_seq,"a",@progbits
	.type	u8x8_d_st75256_256x128_powersave0_seq, @object
	.size	u8x8_d_st75256_256x128_powersave0_seq, 11
u8x8_d_st75256_256x128_powersave0_seq:
	.byte	24
	.byte	21
	.byte	48
	.byte	21
	.byte	-108
	.byte	-2
	.byte	10
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b0e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.4byte	.LASF109
	.4byte	.LASF110
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
	.4byte	.LASF111
	.byte	0x1
	.byte	0x9d
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9d
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x9d
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9d
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9d
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x9f
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x9f
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0xa0
	.4byte	0x358
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x1ab1
	.4byte	0x406
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x1abd
	.4byte	0x41a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x1ac9
	.4byte	0x434
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x1ac9
	.4byte	0x44e
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
	.4byte	.LVL7
	.4byte	0x1ad5
	.4byte	0x46c
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
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x1ad5
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
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0x1ae1
	.4byte	0x49c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x1abd
	.4byte	0x4b0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x1ac9
	.4byte	0x4ca
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x1ac9
	.4byte	0x4e4
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
	.byte	0x75
	.byte	0
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x1ad5
	.4byte	0x4f8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0x1ad5
	.4byte	0x512
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
	.byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL18
	.4byte	0x1ac9
	.4byte	0x52b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x1ad5
	.4byte	0x54a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0x1ad5
	.4byte	0x564
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
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x1ac9
	.4byte	0x57e
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
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x1aed
	.4byte	0x59e
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
	.byte	0xf8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0x1aed
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x14e
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c1
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x14e
	.4byte	0x32d
	.4byte	.LLST7
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x14e
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x14e
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL35
	.4byte	0x374
	.4byte	0x63c
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
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL36
	.4byte	0x1af9
	.4byte	0x659
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
	.4byte	u8x8_st75256_256x128_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x1b05
	.4byte	0x66d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL38
	.4byte	0x1ab1
	.4byte	0x68a
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
	.4byte	u8x8_d_st75256_256x128_init_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL39
	.4byte	0x1ab1
	.4byte	0x6a7
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
	.4byte	u8x8_d_st75256_jlx256128_flip0_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL41
	.4byte	0x1ab1
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
	.4byte	u8x8_d_st75256_jlx256128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c2
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x32d
	.4byte	.LLST9
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0x374
	.4byte	0x73d
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
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL45
	.4byte	0x1af9
	.4byte	0x75a
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
	.4byte	u8x8_st75256_wo256x128_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL46
	.4byte	0x1b05
	.4byte	0x76e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL47
	.4byte	0x1ab1
	.4byte	0x78b
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
	.4byte	u8x8_d_st75256_wo256x128_init_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL48
	.4byte	0x1ab1
	.4byte	0x7a8
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
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0x1ab1
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
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x25b
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c3
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x25b
	.4byte	0x32d
	.4byte	.LLST11
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x25b
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x25b
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x25b
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL53
	.4byte	0x374
	.4byte	0x83e
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
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL54
	.4byte	0x1af9
	.4byte	0x85b
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
	.4byte	u8x8_st75256_256x64_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0x1b05
	.4byte	0x86f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL56
	.4byte	0x1ab1
	.4byte	0x88c
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
	.4byte	u8x8_d_st75256_256x64_init_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL57
	.4byte	0x1ab1
	.4byte	0x8a9
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
	.4byte	u8x8_d_st75256_jlx256128_flip0_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0x1ab1
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
	.4byte	u8x8_d_st75256_jlx256128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb44
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x32d
	.4byte	.LLST13
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x7e
	.4byte	.LLST14
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x7e
	.4byte	.LLST17
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x358
	.4byte	.LLST18
	.uleb128 0x13
	.4byte	.LVL63
	.4byte	0x1abd
	.4byte	0x95b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL65
	.4byte	0x1ac9
	.4byte	0x975
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL67
	.4byte	0x1ac9
	.4byte	0x98f
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
	.byte	0x75
	.byte	0
	.uleb128 0x13
	.4byte	.LVL70
	.4byte	0x1ad5
	.4byte	0x9a3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL71
	.4byte	0x1ad5
	.4byte	0x9bd
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
	.byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL72
	.4byte	0x1ac9
	.4byte	0x9d6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x13
	.4byte	.LVL73
	.4byte	0x1ad5
	.4byte	0x9ea
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL74
	.4byte	0x1ad5
	.4byte	0xa04
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
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL75
	.4byte	0x1ac9
	.4byte	0xa1e
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
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL85
	.4byte	0x1aed
	.4byte	0xa32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL88
	.4byte	0x1af9
	.4byte	0xa4f
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
	.4byte	u8x8_st75256_172x104_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL89
	.4byte	0x1b05
	.4byte	0xa63
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL90
	.4byte	0x1ab1
	.4byte	0xa77
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL91
	.4byte	0x1ab1
	.4byte	0xa94
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
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL92
	.4byte	0x1ab1
	.4byte	0xab1
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
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL93
	.4byte	0x1abd
	.4byte	0xac5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL94
	.4byte	0x1ac9
	.4byte	0xadf
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL95
	.4byte	0x1ac9
	.4byte	0xaf9
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
	.4byte	.LVL96
	.4byte	0x1ad5
	.4byte	0xb17
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
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL97
	.4byte	0x1ad5
	.4byte	0xb33
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
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LVL98
	.4byte	0x1ae1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc5
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x32d
	.4byte	.LLST19
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x7e
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.2byte	0x3a2
	.4byte	0x7e
	.4byte	.LLST22
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x3a2
	.4byte	0x7e
	.4byte	.LLST23
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.2byte	0x3a3
	.4byte	0x358
	.4byte	.LLST24
	.uleb128 0x13
	.4byte	.LVL104
	.4byte	0x1abd
	.4byte	0xbdc
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL106
	.4byte	0x1ac9
	.4byte	0xbf6
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL108
	.4byte	0x1ac9
	.4byte	0xc10
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
	.byte	0x75
	.byte	0
	.uleb128 0x13
	.4byte	.LVL111
	.4byte	0x1ad5
	.4byte	0xc24
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL112
	.4byte	0x1ad5
	.4byte	0xc3e
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
	.byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL113
	.4byte	0x1ac9
	.4byte	0xc57
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x13
	.4byte	.LVL114
	.4byte	0x1ad5
	.4byte	0xc6b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL115
	.4byte	0x1ad5
	.4byte	0xc85
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
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL116
	.4byte	0x1ac9
	.4byte	0xc9f
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
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL126
	.4byte	0x1aed
	.4byte	0xcb3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL129
	.4byte	0x1af9
	.4byte	0xcd0
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
	.4byte	u8x8_st75256_240x160_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL130
	.4byte	0x1b05
	.4byte	0xce4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL131
	.4byte	0x1ab1
	.4byte	0xcf8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL132
	.4byte	0x1ab1
	.4byte	0xd15
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
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL133
	.4byte	0x1ab1
	.4byte	0xd32
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
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL134
	.4byte	0x1abd
	.4byte	0xd46
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL135
	.4byte	0x1ac9
	.4byte	0xd60
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL136
	.4byte	0x1ac9
	.4byte	0xd7a
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
	.4byte	.LVL137
	.4byte	0x1ad5
	.4byte	0xd98
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
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL138
	.4byte	0x1ad5
	.4byte	0xdb4
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
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LVL139
	.4byte	0x1ae1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x463
	.4byte	0x7e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1077
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x463
	.4byte	0x32d
	.4byte	.LLST25
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x463
	.4byte	0x7e
	.4byte	.LLST26
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x463
	.4byte	0x7e
	.4byte	.LLST27
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x463
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.2byte	0x465
	.4byte	0x7e
	.4byte	.LLST28
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x465
	.4byte	0x7e
	.4byte	.LLST29
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.2byte	0x466
	.4byte	0x358
	.4byte	.LLST30
	.uleb128 0x13
	.4byte	.LVL145
	.4byte	0x1abd
	.4byte	0xe5d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL147
	.4byte	0x1ac9
	.4byte	0xe77
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL148
	.4byte	0x1ac9
	.4byte	0xe91
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
	.byte	0x75
	.byte	0
	.uleb128 0x13
	.4byte	.LVL151
	.4byte	0x1ad5
	.4byte	0xea5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL152
	.4byte	0x1ad5
	.4byte	0xebf
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
	.byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL153
	.4byte	0x1ac9
	.4byte	0xed8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x13
	.4byte	.LVL154
	.4byte	0x1ad5
	.4byte	0xeec
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL155
	.4byte	0x1ad5
	.4byte	0xf06
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
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL156
	.4byte	0x1ac9
	.4byte	0xf20
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
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL159
	.4byte	0x1aed
	.4byte	0xf40
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
	.byte	0xf8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL165
	.4byte	0x1aed
	.4byte	0xf65
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL167
	.4byte	0x1af9
	.4byte	0xf82
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
	.4byte	u8x8_st75256_256x160_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL168
	.4byte	0x1b05
	.4byte	0xf96
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL169
	.4byte	0x1ab1
	.4byte	0xfaa
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL170
	.4byte	0x1ab1
	.4byte	0xfc7
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
	.4byte	u8x8_d_st75256_jlx256160_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL171
	.4byte	0x1ab1
	.4byte	0xfe4
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
	.4byte	u8x8_d_st75256_jlx256160_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL172
	.4byte	0x1abd
	.4byte	0xff8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL173
	.4byte	0x1ac9
	.4byte	0x1012
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL174
	.4byte	0x1ac9
	.4byte	0x102c
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
	.4byte	.LVL175
	.4byte	0x1ad5
	.4byte	0x104a
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
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL176
	.4byte	0x1ad5
	.4byte	0x1066
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
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LVL177
	.4byte	0x1ae1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x509
	.4byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1329
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x509
	.4byte	0x32d
	.4byte	.LLST31
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x509
	.4byte	0x7e
	.4byte	.LLST32
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x509
	.4byte	0x7e
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x509
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.2byte	0x50b
	.4byte	0x7e
	.4byte	.LLST34
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x50b
	.4byte	0x7e
	.4byte	.LLST35
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.2byte	0x50c
	.4byte	0x358
	.4byte	.LLST36
	.uleb128 0x13
	.4byte	.LVL183
	.4byte	0x1abd
	.4byte	0x110f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL185
	.4byte	0x1ac9
	.4byte	0x1129
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL186
	.4byte	0x1ac9
	.4byte	0x1143
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
	.byte	0x75
	.byte	0
	.uleb128 0x13
	.4byte	.LVL189
	.4byte	0x1ad5
	.4byte	0x1157
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL190
	.4byte	0x1ad5
	.4byte	0x1171
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
	.byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL191
	.4byte	0x1ac9
	.4byte	0x118a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x13
	.4byte	.LVL192
	.4byte	0x1ad5
	.4byte	0x119e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL193
	.4byte	0x1ad5
	.4byte	0x11b8
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
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL194
	.4byte	0x1ac9
	.4byte	0x11d2
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
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL197
	.4byte	0x1aed
	.4byte	0x11f2
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
	.byte	0xf8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL203
	.4byte	0x1aed
	.4byte	0x1217
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL205
	.4byte	0x1af9
	.4byte	0x1234
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
	.4byte	u8x8_st75256_256x160_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL206
	.4byte	0x1b05
	.4byte	0x1248
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL207
	.4byte	0x1ab1
	.4byte	0x125c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL208
	.4byte	0x1ab1
	.4byte	0x1279
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
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL209
	.4byte	0x1ab1
	.4byte	0x1296
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
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL210
	.4byte	0x1abd
	.4byte	0x12aa
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL211
	.4byte	0x1ac9
	.4byte	0x12c4
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL212
	.4byte	0x1ac9
	.4byte	0x12de
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
	.4byte	.LVL213
	.4byte	0x1ad5
	.4byte	0x12fc
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
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL214
	.4byte	0x1ad5
	.4byte	0x1318
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
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LVL215
	.4byte	0x1ae1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x7e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15db
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x32d
	.4byte	.LLST37
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x7e
	.4byte	.LLST38
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x7e
	.4byte	.LLST39
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x7e
	.4byte	.LLST40
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x7e
	.4byte	.LLST41
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.2byte	0x5cd
	.4byte	0x358
	.4byte	.LLST42
	.uleb128 0x13
	.4byte	.LVL221
	.4byte	0x1abd
	.4byte	0x13c1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL223
	.4byte	0x1ac9
	.4byte	0x13db
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL224
	.4byte	0x1ac9
	.4byte	0x13f5
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
	.byte	0x75
	.byte	0
	.uleb128 0x13
	.4byte	.LVL227
	.4byte	0x1ad5
	.4byte	0x1409
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL228
	.4byte	0x1ad5
	.4byte	0x1423
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
	.byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL229
	.4byte	0x1ac9
	.4byte	0x143c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x13
	.4byte	.LVL230
	.4byte	0x1ad5
	.4byte	0x1450
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL231
	.4byte	0x1ad5
	.4byte	0x146a
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
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL232
	.4byte	0x1ac9
	.4byte	0x1484
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
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL236
	.4byte	0x1aed
	.4byte	0x14a4
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
	.byte	0xf8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL242
	.4byte	0x1aed
	.4byte	0x14c9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL244
	.4byte	0x1af9
	.4byte	0x14e6
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
	.4byte	u8x8_st75256_256x160_alt_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL245
	.4byte	0x1b05
	.4byte	0x14fa
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL246
	.4byte	0x1ab1
	.4byte	0x150e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL247
	.4byte	0x1ab1
	.4byte	0x152b
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
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL248
	.4byte	0x1ab1
	.4byte	0x1548
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
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL249
	.4byte	0x1abd
	.4byte	0x155c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL250
	.4byte	0x1ac9
	.4byte	0x1576
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL251
	.4byte	0x1ac9
	.4byte	0x1590
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
	.4byte	.LVL252
	.4byte	0x1ad5
	.4byte	0x15ae
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
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL253
	.4byte	0x1ad5
	.4byte	0x15ca
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
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LVL254
	.4byte	0x1ae1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x689
	.4byte	0x7e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x185c
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x689
	.4byte	0x32d
	.4byte	.LLST43
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.2byte	0x689
	.4byte	0x7e
	.4byte	.LLST44
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x689
	.4byte	0x7e
	.4byte	.LLST45
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x689
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.2byte	0x68b
	.4byte	0x7e
	.4byte	.LLST46
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x68b
	.4byte	0x7e
	.4byte	.LLST47
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.2byte	0x68c
	.4byte	0x358
	.4byte	.LLST48
	.uleb128 0x13
	.4byte	.LVL260
	.4byte	0x1abd
	.4byte	0x1673
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL262
	.4byte	0x1ac9
	.4byte	0x168d
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL264
	.4byte	0x1ac9
	.4byte	0x16a7
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
	.byte	0x75
	.byte	0
	.uleb128 0x13
	.4byte	.LVL267
	.4byte	0x1ad5
	.4byte	0x16bb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL268
	.4byte	0x1ad5
	.4byte	0x16d5
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
	.byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL269
	.4byte	0x1ac9
	.4byte	0x16ee
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x13
	.4byte	.LVL270
	.4byte	0x1ad5
	.4byte	0x1702
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL271
	.4byte	0x1ad5
	.4byte	0x171c
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
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL272
	.4byte	0x1ac9
	.4byte	0x1736
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
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL282
	.4byte	0x1aed
	.4byte	0x174a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL285
	.4byte	0x1af9
	.4byte	0x1767
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
	.4byte	u8x8_st75256_192x96_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL286
	.4byte	0x1b05
	.4byte	0x177b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL287
	.4byte	0x1ab1
	.4byte	0x178f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL288
	.4byte	0x1ab1
	.4byte	0x17ac
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
	.4byte	u8x8_d_st75256_jlx256160_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL289
	.4byte	0x1ab1
	.4byte	0x17c9
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
	.4byte	u8x8_d_st75256_jlx256160_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL290
	.4byte	0x1abd
	.4byte	0x17dd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL291
	.4byte	0x1ac9
	.4byte	0x17f7
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
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL292
	.4byte	0x1ac9
	.4byte	0x1811
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
	.4byte	.LVL293
	.4byte	0x1ad5
	.4byte	0x182f
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
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL294
	.4byte	0x1ad5
	.4byte	0x184b
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
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LVL295
	.4byte	0x1ae1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x7e
	.4byte	0x186c
	.uleb128 0x1c
	.4byte	0x186c
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF74
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x41
	.4byte	0x1884
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x128_powersave0_seq
	.uleb128 0xe
	.4byte	0x185c
	.uleb128 0x1b
	.4byte	0x7e
	.4byte	0x1899
	.uleb128 0x1c
	.4byte	0x186c
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x4b
	.4byte	0x18aa
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x128_powersave1_seq
	.uleb128 0xe
	.4byte	0x1889
	.uleb128 0x1b
	.4byte	0x7e
	.4byte	0x18bf
	.uleb128 0x1c
	.4byte	0x186c
	.byte	0xc
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF77
	.byte	0x1
	.byte	0x54
	.4byte	0x18d0
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip0_seq
	.uleb128 0xe
	.4byte	0x18af
	.uleb128 0x1d
	.4byte	.LASF78
	.byte	0x1
	.byte	0x60
	.4byte	0x18e6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256128_flip1_seq
	.uleb128 0xe
	.4byte	0x18af
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.byte	0x6c
	.4byte	0x18fc
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip0_seq
	.uleb128 0xe
	.4byte	0x18af
	.uleb128 0x1d
	.4byte	.LASF80
	.byte	0x1
	.byte	0x78
	.4byte	0x1912
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_flip1_seq
	.uleb128 0xe
	.4byte	0x18af
	.uleb128 0x1d
	.4byte	.LASF81
	.byte	0x1
	.byte	0x84
	.4byte	0x1928
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip0_seq
	.uleb128 0xe
	.4byte	0x18af
	.uleb128 0x1d
	.4byte	.LASF82
	.byte	0x1
	.byte	0x90
	.4byte	0x193e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx256160_flip1_seq
	.uleb128 0xe
	.4byte	0x18af
	.uleb128 0x1d
	.4byte	.LASF83
	.byte	0x1
	.byte	0xed
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x128_display_info
	.uleb128 0x1b
	.4byte	0x7e
	.4byte	0x1964
	.uleb128 0x1c
	.4byte	0x186c
	.byte	0x68
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x106
	.4byte	0x1976
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x128_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x174
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_wo256x128_display_info
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x18d
	.4byte	0x199f
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_wo256x128_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x64_display_info
	.uleb128 0x1e
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x213
	.4byte	0x19c8
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x64_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x280
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_172x104_display_info
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x298
	.4byte	0x19f1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx172104_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x33f
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_240x160_display_info
	.uleb128 0x1e
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x358
	.4byte	0x1a1a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_240x160_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x402
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x160_display_info
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x41b
	.4byte	0x1a43
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x160_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x4c2
	.4byte	0x1a5a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x160m_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x569
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_256x160_alt_display_info
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x582
	.4byte	0x1a83
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_256x160_alt_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1e
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x629
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st75256_192x96_display_info
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x641
	.4byte	0x1aac
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st75256_jlx19296_init_seq
	.uleb128 0xe
	.4byte	0x1954
	.uleb128 0x1f
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x278
	.uleb128 0x1f
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x259
	.uleb128 0x1f
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x255
	.uleb128 0x1f
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x256
	.uleb128 0x1f
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x1f
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x258
	.uleb128 0x1f
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x1f
	.4byte	.LASF107
	.4byte	.LASF107
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL25-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL61
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL65-1
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x9
	.byte	0xac
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL78
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL102
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL102
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL106-1
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL119
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL143
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL143
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL156
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL147-1
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL157
	.4byte	.LVL159-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL159-1
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL158
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL181
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL181
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL194
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL217
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL184
	.4byte	.LVL185-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL185-1
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL188
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL195
	.4byte	.LVL197-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL197-1
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL196
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL219
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL257
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL220
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL219
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL233
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL256
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL222
	.4byte	.LVL223-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL223-1
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL234
	.4byte	.LVL236-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL236-1
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x3
	.byte	0x73
	.sleb128 31
	.byte	0x9f
	.4byte	.LVL239
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL235
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL258
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL298
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL259
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL258
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL273
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL283
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL297
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL261
	.4byte	.LVL262-1
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL262-1
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL274
	.4byte	.LVL276
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x9
	.byte	0xc0
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280
	.4byte	.LVL282-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL275
	.4byte	.LVL282-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF97:
	.string	"u8x8_d_st75256_256x160_alt_init_seq"
.LASF68:
	.string	"u8x8_d_st75256_jlx172104"
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
.LASF107:
	.string	"u8x8_d_helper_display_init"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF27:
	.string	"utf8_state"
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
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF85:
	.string	"u8x8_st75256_wo256x128_display_info"
.LASF90:
	.string	"u8x8_d_st75256_jlx172104_init_seq"
.LASF100:
	.string	"u8x8_cad_SendSequence"
.LASF70:
	.string	"u8x8_d_st75256_jlx256160"
.LASF72:
	.string	"u8x8_d_st75256_jlx256160_alt"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF61:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF92:
	.string	"u8x8_d_st75256_240x160_init_seq"
.LASF69:
	.string	"u8x8_d_st75256_jlx240160"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF109:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st75256.c"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF106:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF58:
	.string	"x_pos"
.LASF75:
	.string	"u8x8_d_st75256_256x128_powersave0_seq"
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
.LASF76:
	.string	"u8x8_d_st75256_256x128_powersave1_seq"
.LASF108:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF67:
	.string	"u8x8_d_st75256_jlx25664"
.LASF94:
	.string	"u8x8_d_st75256_256x160_init_seq"
.LASF105:
	.string	"u8x8_cad_SendData"
.LASF77:
	.string	"u8x8_d_st75256_jlx256128_flip0_seq"
.LASF5:
	.string	"short unsigned int"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF83:
	.string	"u8x8_st75256_256x128_display_info"
.LASF91:
	.string	"u8x8_st75256_240x160_display_info"
.LASF14:
	.string	"display_info"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF34:
	.string	"u8x8_struct"
.LASF93:
	.string	"u8x8_st75256_256x160_display_info"
.LASF51:
	.string	"default_x_offset"
.LASF22:
	.string	"encoding"
.LASF52:
	.string	"flipmode_x_offset"
.LASF80:
	.string	"u8x8_d_st75256_jlx172104_flip1_seq"
.LASF74:
	.string	"sizetype"
.LASF82:
	.string	"u8x8_d_st75256_jlx256160_flip1_seq"
.LASF17:
	.string	"cad_cb"
.LASF66:
	.string	"u8x8_d_st75256_wo256x128"
.LASF78:
	.string	"u8x8_d_st75256_jlx256128_flip1_seq"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF23:
	.string	"x_offset"
.LASF86:
	.string	"u8x8_d_st75256_wo256x128_init_seq"
.LASF95:
	.string	"u8x8_d_st75256_256x160m_init_seq"
.LASF50:
	.string	"tile_height"
.LASF96:
	.string	"u8x8_st75256_256x160_alt_display_info"
.LASF84:
	.string	"u8x8_d_st75256_256x128_init_seq"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF62:
	.string	"u8x8"
.LASF98:
	.string	"u8x8_st75256_192x96_display_info"
.LASF65:
	.string	"u8x8_d_st75256_jlx256128"
.LASF47:
	.string	"data_setup_time_ns"
.LASF73:
	.string	"u8x8_d_st75256_jlx19296"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF12:
	.string	"uint32_t"
.LASF101:
	.string	"u8x8_cad_StartTransfer"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF57:
	.string	"tile_ptr"
.LASF4:
	.string	"__uint16_t"
.LASF87:
	.string	"u8x8_st75256_256x64_display_info"
.LASF104:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF110:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF99:
	.string	"u8x8_d_st75256_jlx19296_init_seq"
.LASF79:
	.string	"u8x8_d_st75256_jlx172104_flip0_seq"
.LASF111:
	.string	"u8x8_d_st75256_256x128_generic"
.LASF31:
	.string	"debounce_state"
.LASF71:
	.string	"u8x8_d_st75256_jlx256160m"
.LASF64:
	.string	"arg_ptr"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF81:
	.string	"u8x8_d_st75256_jlx256160_flip0_seq"
.LASF10:
	.string	"uint8_t"
.LASF26:
	.string	"i2c_started"
.LASF53:
	.string	"pixel_width"
.LASF49:
	.string	"tile_width"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF59:
	.string	"y_pos"
.LASF102:
	.string	"u8x8_cad_SendCmd"
.LASF88:
	.string	"u8x8_d_st75256_256x64_init_seq"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF89:
	.string	"u8x8_st75256_172x104_display_info"
.LASF103:
	.string	"u8x8_cad_SendArg"
.LASF54:
	.string	"pixel_height"
.LASF44:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
