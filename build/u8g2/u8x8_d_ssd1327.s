	.file	"u8x8_d_ssd1327.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1327_96x96_generic,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_ssd1327_8to32_dest_buf
	.literal .LC4, u8x8_d_ssd1327_96x96_powersave0_seq
	.literal .LC5, u8x8_d_ssd1327_96x96_powersave1_seq
	.align	4
	.type	u8x8_d_ssd1327_96x96_generic, @function
u8x8_d_ssd1327_96x96_generic:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1327.c"
	.loc 1 131 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 134 0
	movi.n	a6, 0xe
	beq	a3, a6, .L3
	movi.n	a6, 0xf
	beq	a3, a6, .L4
	movi.n	a5, 0xb
.LVL1:
	bne	a3, a5, .L22
	.loc 1 149 0
	l32r	a11, .LC4
	.loc 1 148 0
	beqz.n	a4, .L25
.L6:
	.loc 1 151 0
	l32r	a11, .LC5
.L25:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L23
.LVL3:
.L3:
	.loc 1 155 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 156 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 157 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
.L24:
	.loc 1 158 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL7:
.L23:
	.loc 1 202 0
	movi.n	a2, 1
.LVL8:
	.loc 1 159 0
	retw.n
.LVL9:
.L4:
.LBB6:
.LBB7:
	.loc 1 162 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL10:
	.loc 1 165 0
	l8ui	a3, a2, 34
.LVL11:
	.loc 1 163 0
	l8ui	a6, a5, 5
.LVL12:
	.loc 1 165 0
	srli	a3, a3, 1
	addx4	a3, a6, a3
	.loc 1 167 0
	l8ui	a6, a5, 6
.LVL13:
	.loc 1 170 0
	movi	a11, 0x75
	.loc 1 168 0
	slli	a6, a6, 3
	.loc 1 170 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL14:
	.loc 1 168 0
	extui	a6, a6, 0, 8
	.loc 1 171 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL15:
	.loc 1 172 0
	addi.n	a11, a6, 7
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 165 0
	extui	a3, a3, 0, 8
.LVL16:
	.loc 1 172 0
	call8	u8x8_cad_SendArg
.LVL17:
.L12:
	.loc 1 177 0
	l8ui	a6, a5, 4
	.loc 1 178 0
	l32i.n	a8, a5, 0
	.loc 1 177 0
	s32i.n	a6, sp, 4
.LVL18:
	mov.n	a7, a6
	.loc 1 178 0
	s32i.n	a8, sp, 0
.LVL19:
	mov.n	a6, a3
.LVL20:
.L11:
	.loc 1 182 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL21:
	.loc 1 183 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL22:
	.loc 1 184 0
	addi.n	a11, a6, 3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL23:
	l32i.n	a10, sp, 0
	movi.n	a9, 0
.LVL24:
.L10:
	l32r	a11, .LC3
.LBB8:
.LBB9:
	.loc 1 116 0
	movi.n	a13, 8
	.loc 1 108 0
	l8ui	a14, a10, 0
	.loc 1 110 0
	l8ui	a12, a10, 1
	add.n	a15, a9, a11
.LVL25:
	addi.n	a10, a10, 2
.LVL26:
	.loc 1 116 0
	s32i.n	a13, sp, 12
.LVL27:
.L9:
	.loc 1 115 0
	extui	a8, a14, 0, 1
	movi	a11, 0xf0
	movi.n	a13, 0
	moveqz	a11, a13, a8
	s32i.n	a11, sp, 8
.LVL28:
	.loc 1 116 0
	bbc	a12, a13, .L8
	movi.n	a13, 0xf
	or	a8, a11, a13
	extui	a8, a8, 0, 8
	s32i.n	a8, sp, 8
.LVL29:
.L8:
	.loc 1 120 0
	l32i.n	a11, sp, 12
	.loc 1 117 0
	l32i.n	a8, sp, 8
	.loc 1 120 0
	addi.n	a11, a11, -1
	.loc 1 117 0
	s8i	a8, a15, 0
	.loc 1 120 0
	s32i.n	a11, sp, 12
	.loc 1 118 0
	addi.n	a15, a15, 4
.LVL30:
	.loc 1 119 0
	srli	a14, a14, 1
.LVL31:
	.loc 1 120 0
	srli	a12, a12, 1
.LVL32:
	bnez.n	a11, .L9
.LVL33:
	addi.n	a9, a9, 1
.LVL34:
	.loc 1 104 0
	bnei	a9, 4, .L10
.LBE9:
.LBE8:
	.loc 1 187 0
	l32r	a12, .LC3
.LVL35:
	movi.n	a11, 0x20
	mov.n	a10, a2
.LVL36:
	call8	u8x8_cad_SendData
.LVL37:
	.loc 1 188 0
	l32i.n	a13, sp, 0
	.loc 1 190 0
	addi.n	a7, a7, -1
.LVL38:
	.loc 1 188 0
	addi.n	a13, a13, 8
	.loc 1 189 0
	addi.n	a6, a6, 4
.LVL39:
	.loc 1 188 0
	s32i.n	a13, sp, 0
.LVL40:
	.loc 1 190 0
	extui	a7, a7, 0, 8
.LVL41:
	.loc 1 189 0
	extui	a6, a6, 0, 8
.LVL42:
	.loc 1 191 0
	bnez.n	a7, .L11
	l32i.n	a6, sp, 4
.LVL43:
	.loc 1 194 0
	addi.n	a4, a4, -1
.LVL44:
	addx4	a3, a6, a3
	extui	a4, a4, 0, 8
.LVL45:
	extui	a3, a3, 0, 8
	.loc 1 195 0
	bnez.n	a4, .L12
	j	.L24
.LVL46:
.L22:
.LBE7:
.LBE6:
	.loc 1 200 0
	movi.n	a2, 0
.LVL47:
	.loc 1 203 0
	retw.n
.LFE1:
	.size	u8x8_d_ssd1327_96x96_generic, .-u8x8_d_ssd1327_96x96_generic
	.section	.text.u8x8_d_ssd1327_ws_96x64,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_ssd1327_winstar_96x64_display_info
	.literal .LC7, u8x8_d_ssd1327_winstar_96x64_init_seq
	.literal .LC8, u8x8_d_ssd1327_winstar_96x64_flip0_seq
	.literal .LC9, u8x8_d_ssd1327_winstar_96x64_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_ws_96x64
	.type	u8x8_d_ssd1327_ws_96x64, @function
u8x8_d_ssd1327_ws_96x64:
.LFB2:
	.loc 1 306 0
.LVL48:
	entry	sp, 32
.LCFI1:
	.loc 1 306 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 307 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL49:
	bnez.n	a10, .L31
	.loc 1 309 0
	movi.n	a8, 9
	bne	a3, a8, .L28
	.loc 1 311 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL50:
	j	.L31
.L28:
	.loc 1 314 0
	bnei	a3, 10, .L29
	.loc 1 316 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL51:
	.loc 1 317 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL52:
	j	.L31
.L29:
	.loc 1 320 0
	movi.n	a8, 0xd
	bne	a3, a8, .L27
	.loc 1 322 0
	bnez.n	a4, .L30
	.loc 1 324 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL53:
	.loc 1 325 0
	l32i.n	a3, a2, 0
.LVL54:
	l8ui	a3, a3, 18
	j	.L32
.L30:
	.loc 1 329 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL55:
	.loc 1 330 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L32:
	s8i	a3, a2, 34
.L31:
	.loc 1 308 0
	movi.n	a10, 1
.L27:
	.loc 1 335 0
	mov.n	a2, a10
.LVL56:
	retw.n
.LFE2:
	.size	u8x8_d_ssd1327_ws_96x64, .-u8x8_d_ssd1327_ws_96x64
	.section	.text.u8x8_d_ssd1327_seeed_96x96,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_ssd1327_96x96_display_info
	.literal .LC11, u8x8_d_ssd1327_96x96_init_seq
	.literal .LC12, u8x8_d_ssd1327_seeed_96x96_flip0_seq
	.literal .LC13, u8x8_d_ssd1327_seeed_96x96_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_seeed_96x96
	.type	u8x8_d_ssd1327_seeed_96x96, @function
u8x8_d_ssd1327_seeed_96x96:
.LFB3:
	.loc 1 429 0
.LVL57:
	entry	sp, 32
.LCFI2:
	.loc 1 429 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 430 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL58:
	bnez.n	a10, .L38
	.loc 1 432 0
	movi.n	a8, 9
	bne	a3, a8, .L35
	.loc 1 434 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL59:
	j	.L38
.L35:
	.loc 1 437 0
	bnei	a3, 10, .L36
	.loc 1 439 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL60:
	.loc 1 440 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL61:
	j	.L38
.L36:
	.loc 1 443 0
	movi.n	a8, 0xd
	bne	a3, a8, .L34
	.loc 1 445 0
	bnez.n	a4, .L37
	.loc 1 447 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL62:
	.loc 1 448 0
	l32i.n	a3, a2, 0
.LVL63:
	l8ui	a3, a3, 18
	j	.L39
.L37:
	.loc 1 452 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL64:
	.loc 1 453 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L39:
	s8i	a3, a2, 34
.L38:
	.loc 1 431 0
	movi.n	a10, 1
.L34:
	.loc 1 458 0
	mov.n	a2, a10
.LVL65:
	retw.n
.LFE3:
	.size	u8x8_d_ssd1327_seeed_96x96, .-u8x8_d_ssd1327_seeed_96x96
	.section	.text.u8x8_d_ssd1327_ea_w128128,"ax",@progbits
	.literal_position
	.literal .LC14, u8x8_ssd1327_ea_w128128_display_info
	.literal .LC15, u8x8_d_ssd1327_ea_w128128_init_seq
	.literal .LC16, u8x8_d_ssd1327_ea_w128128_flip0_seq
	.literal .LC17, u8x8_d_ssd1327_ea_w128128_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_ea_w128128
	.type	u8x8_d_ssd1327_ea_w128128, @function
u8x8_d_ssd1327_ea_w128128:
.LFB4:
	.loc 1 550 0
.LVL66:
	entry	sp, 32
.LCFI3:
	.loc 1 550 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 551 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL67:
	bnez.n	a10, .L45
	.loc 1 553 0
	movi.n	a8, 9
	bne	a3, a8, .L42
	.loc 1 555 0
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL68:
	j	.L45
.L42:
	.loc 1 558 0
	bnei	a3, 10, .L43
	.loc 1 560 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL69:
	.loc 1 561 0
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL70:
	j	.L45
.L43:
	.loc 1 564 0
	movi.n	a8, 0xd
	bne	a3, a8, .L41
	.loc 1 566 0
	bnez.n	a4, .L44
	.loc 1 568 0
	l32r	a11, .LC16
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL71:
	.loc 1 569 0
	l32i.n	a3, a2, 0
.LVL72:
	l8ui	a3, a3, 18
	j	.L46
.L44:
	.loc 1 573 0
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL73:
	.loc 1 574 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L46:
	s8i	a3, a2, 34
.L45:
	.loc 1 552 0
	movi.n	a10, 1
.L41:
	.loc 1 579 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE4:
	.size	u8x8_d_ssd1327_ea_w128128, .-u8x8_d_ssd1327_ea_w128128
	.section	.text.u8x8_d_ssd1327_midas_128x128,"ax",@progbits
	.literal_position
	.literal .LC18, u8x8_ssd1327_128x128_display_info
	.literal .LC19, u8x8_d_ssd1327_128x128_init_seq
	.literal .LC20, u8x8_d_ssd1327_128x128_flip0_seq
	.literal .LC21, u8x8_d_ssd1327_128x128_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_midas_128x128
	.type	u8x8_d_ssd1327_midas_128x128, @function
u8x8_d_ssd1327_midas_128x128:
.LFB5:
	.loc 1 690 0
.LVL75:
	entry	sp, 32
.LCFI4:
	.loc 1 690 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 692 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL76:
	bnez.n	a10, .L52
	.loc 1 694 0
	movi.n	a8, 9
	bne	a3, a8, .L49
	.loc 1 696 0
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL77:
	j	.L52
.L49:
	.loc 1 699 0
	bnei	a3, 10, .L50
	.loc 1 701 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL78:
	.loc 1 702 0
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL79:
	j	.L52
.L50:
	.loc 1 705 0
	movi.n	a8, 0xd
	bne	a3, a8, .L48
	.loc 1 707 0
	bnez.n	a4, .L51
	.loc 1 709 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL80:
	.loc 1 710 0
	l32i.n	a3, a2, 0
.LVL81:
	l8ui	a3, a3, 18
	j	.L53
.L51:
	.loc 1 714 0
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL82:
	.loc 1 715 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L53:
	s8i	a3, a2, 34
.L52:
	.loc 1 693 0
	movi.n	a10, 1
.L48:
	.loc 1 720 0
	mov.n	a2, a10
.LVL83:
	retw.n
.LFE5:
	.size	u8x8_d_ssd1327_midas_128x128, .-u8x8_d_ssd1327_midas_128x128
	.section	.text.u8x8_d_ssd1327_ws_128x128,"ax",@progbits
	.literal_position
	.literal .LC22, u8x8_ssd1327_ea_w128128_display_info
	.literal .LC23, u8x8_d_ssd1327_ws_128x128_init_seq
	.literal .LC24, u8x8_d_ssd1327_ea_w128128_flip0_seq
	.literal .LC25, u8x8_d_ssd1327_ea_w128128_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_ws_128x128
	.type	u8x8_d_ssd1327_ws_128x128, @function
u8x8_d_ssd1327_ws_128x128:
.LFB6:
	.loc 1 776 0
.LVL84:
	entry	sp, 32
.LCFI5:
	.loc 1 776 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 778 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL85:
	bnez.n	a10, .L59
	.loc 1 780 0
	movi.n	a8, 9
	bne	a3, a8, .L56
	.loc 1 782 0
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL86:
	j	.L59
.L56:
	.loc 1 785 0
	bnei	a3, 10, .L57
	.loc 1 787 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL87:
	.loc 1 788 0
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL88:
	j	.L59
.L57:
	.loc 1 791 0
	movi.n	a8, 0xd
	bne	a3, a8, .L55
	.loc 1 793 0
	bnez.n	a4, .L58
	.loc 1 795 0
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL89:
	.loc 1 796 0
	l32i.n	a3, a2, 0
.LVL90:
	l8ui	a3, a3, 18
	j	.L60
.L58:
	.loc 1 800 0
	l32r	a11, .LC25
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL91:
	.loc 1 801 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L60:
	s8i	a3, a2, 34
.L59:
	.loc 1 779 0
	movi.n	a10, 1
.L55:
	.loc 1 806 0
	mov.n	a2, a10
.LVL92:
	retw.n
.LFE6:
	.size	u8x8_d_ssd1327_ws_128x128, .-u8x8_d_ssd1327_ws_128x128
	.section	.text.u8x8_d_ssd1327_visionox_128x96,"ax",@progbits
	.literal_position
	.literal .LC26, u8x8_ssd1327_128x96_display_info
	.literal .LC27, u8x8_d_ssd1327_128x96_init_seq
	.literal .LC28, u8x8_d_ssd1327_128x96_flip0_seq
	.literal .LC29, u8x8_d_ssd1327_128x96_flip1_seq
	.align	4
	.global	u8x8_d_ssd1327_visionox_128x96
	.type	u8x8_d_ssd1327_visionox_128x96, @function
u8x8_d_ssd1327_visionox_128x96:
.LFB7:
	.loc 1 921 0
.LVL93:
	entry	sp, 32
.LCFI6:
	.loc 1 921 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 923 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1327_96x96_generic
.LVL94:
	bnez.n	a10, .L66
	.loc 1 925 0
	movi.n	a8, 9
	bne	a3, a8, .L63
	.loc 1 927 0
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL95:
	j	.L66
.L63:
	.loc 1 930 0
	bnei	a3, 10, .L64
	.loc 1 932 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL96:
	.loc 1 933 0
	l32r	a11, .LC27
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL97:
	j	.L66
.L64:
	.loc 1 936 0
	movi.n	a8, 0xd
	bne	a3, a8, .L62
	.loc 1 938 0
	bnez.n	a4, .L65
	.loc 1 940 0
	l32r	a11, .LC28
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL98:
	.loc 1 941 0
	l32i.n	a3, a2, 0
.LVL99:
	l8ui	a3, a3, 18
	j	.L67
.L65:
	.loc 1 945 0
	l32r	a11, .LC29
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL100:
	.loc 1 946 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L67:
	s8i	a3, a2, 34
.L66:
	.loc 1 924 0
	movi.n	a10, 1
.L62:
	.loc 1 951 0
	mov.n	a2, a10
.LVL101:
	retw.n
.LFE7:
	.size	u8x8_d_ssd1327_visionox_128x96, .-u8x8_d_ssd1327_visionox_128x96
	.section	.rodata.u8x8_d_ssd1327_128x96_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1327_128x96_flip1_seq, @object
	.size	u8x8_d_ssd1327_128x96_flip1_seq, 11
u8x8_d_ssd1327_128x96_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	96
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x96_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1327_128x96_flip0_seq, @object
	.size	u8x8_d_ssd1327_128x96_flip0_seq, 11
u8x8_d_ssd1327_128x96_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x96_init_seq,"a",@progbits
	.type	u8x8_d_ssd1327_128x96_init_seq, @object
	.size	u8x8_d_ssd1327_128x96_init_seq, 61
u8x8_d_ssd1327_128x96_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	-33
	.byte	21
	.byte	-79
	.byte	22
	.byte	34
	.byte	21
	.byte	-77
	.byte	22
	.byte	80
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	16
	.byte	21
	.byte	-66
	.byte	22
	.byte	5
	.byte	21
	.byte	-74
	.byte	22
	.byte	10
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_128x96_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1327_128x96_display_info, @object
	.size	u8x8_ssd1327_128x96_display_info, 24
u8x8_ssd1327_128x96_display_info:
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
	.byte	1
	.byte	40
	.byte	60
	.byte	16
	.byte	12
	.byte	0
	.byte	0
	.short	128
	.short	96
	.section	.rodata.u8x8_d_ssd1327_ws_128x128_init_seq,"a",@progbits
	.type	u8x8_d_ssd1327_ws_128x128_init_seq, @object
	.size	u8x8_d_ssd1327_ws_128x128_init_seq, 71
u8x8_d_ssd1327_ws_128x128_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	21
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	21
	.byte	117
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	21
	.byte	-127
	.byte	22
	.byte	-128
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-92
	.byte	22
	.byte	-88
	.byte	22
	.byte	127
	.byte	21
	.byte	-79
	.byte	22
	.byte	-15
	.byte	21
	.byte	-77
	.byte	22
	.byte	0
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-74
	.byte	22
	.byte	15
	.byte	21
	.byte	-66
	.byte	22
	.byte	15
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x128_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1327_128x128_flip1_seq, @object
	.size	u8x8_d_ssd1327_128x128_flip1_seq, 11
u8x8_d_ssd1327_128x128_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x128_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1327_128x128_flip0_seq, @object
	.size	u8x8_d_ssd1327_128x128_flip0_seq, 11
u8x8_d_ssd1327_128x128_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_128x128_init_seq,"a",@progbits
	.type	u8x8_d_ssd1327_128x128_init_seq, @object
	.size	u8x8_d_ssd1327_128x128_init_seq, 61
u8x8_d_ssd1327_128x128_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	127
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	81
	.byte	21
	.byte	-77
	.byte	22
	.byte	1
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	1
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_128x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1327_128x128_display_info, @object
	.size	u8x8_ssd1327_128x128_display_info, 24
u8x8_ssd1327_128x128_display_info:
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
	.byte	1
	.byte	40
	.byte	60
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
	.section	.rodata.u8x8_d_ssd1327_ea_w128128_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1327_ea_w128128_flip1_seq, @object
	.size	u8x8_d_ssd1327_ea_w128128_flip1_seq, 11
u8x8_d_ssd1327_ea_w128128_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_ea_w128128_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1327_ea_w128128_flip0_seq, @object
	.size	u8x8_d_ssd1327_ea_w128128_flip0_seq, 11
u8x8_d_ssd1327_ea_w128128_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_ea_w128128_init_seq,"a",@progbits
	.type	u8x8_d_ssd1327_ea_w128128_init_seq, @object
	.size	u8x8_d_ssd1327_ea_w128128_init_seq, 61
u8x8_d_ssd1327_ea_w128128_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	16
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	81
	.byte	21
	.byte	-77
	.byte	22
	.byte	1
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	1
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_ea_w128128_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1327_ea_w128128_display_info, @object
	.size	u8x8_ssd1327_ea_w128128_display_info, 24
u8x8_ssd1327_ea_w128128_display_info:
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
	.byte	1
	.byte	40
	.byte	60
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.short	128
	.short	128
	.section	.rodata.u8x8_d_ssd1327_96x96_init_seq,"a",@progbits
	.type	u8x8_d_ssd1327_96x96_init_seq, @object
	.size	u8x8_d_ssd1327_96x96_init_seq, 61
u8x8_d_ssd1327_96x96_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-88
	.byte	22
	.byte	95
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	81
	.byte	21
	.byte	-77
	.byte	22
	.byte	1
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	8
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	1
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_96x96_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1327_96x96_display_info, @object
	.size	u8x8_ssd1327_96x96_display_info, 24
u8x8_ssd1327_96x96_display_info:
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
	.byte	1
	.byte	40
	.byte	60
	.byte	12
	.byte	12
	.byte	16
	.byte	16
	.short	96
	.short	96
	.section	.rodata.u8x8_d_ssd1327_winstar_96x64_init_seq,"a",@progbits
	.type	u8x8_d_ssd1327_winstar_96x64_init_seq, @object
	.size	u8x8_d_ssd1327_winstar_96x64_init_seq, 65
u8x8_d_ssd1327_winstar_96x64_init_seq:
	.byte	24
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-39
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-88
	.byte	22
	.byte	99
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-127
	.byte	22
	.byte	83
	.byte	21
	.byte	-79
	.byte	22
	.byte	71
	.byte	21
	.byte	-77
	.byte	22
	.byte	0
	.byte	21
	.byte	-71
	.byte	21
	.byte	-68
	.byte	22
	.byte	7
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-74
	.byte	22
	.byte	4
	.byte	21
	.byte	-43
	.byte	22
	.byte	98
	.byte	21
	.byte	-92
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1327_winstar_96x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1327_winstar_96x64_display_info, @object
	.size	u8x8_ssd1327_winstar_96x64_display_info, 24
u8x8_ssd1327_winstar_96x64_display_info:
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
	.byte	1
	.byte	40
	.byte	60
	.byte	12
	.byte	8
	.byte	16
	.byte	16
	.short	96
	.short	64
	.section	.bss.u8x8_ssd1327_8to32_dest_buf,"aw",@nobits
	.type	u8x8_ssd1327_8to32_dest_buf, @object
	.size	u8x8_ssd1327_8to32_dest_buf, 32
u8x8_ssd1327_8to32_dest_buf:
	.zero	32
	.section	.rodata.u8x8_d_ssd1327_winstar_96x64_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1327_winstar_96x64_flip1_seq, @object
	.size	u8x8_d_ssd1327_winstar_96x64_flip1_seq, 11
u8x8_d_ssd1327_winstar_96x64_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	21
	.byte	-94
	.byte	22
	.byte	64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_winstar_96x64_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1327_winstar_96x64_flip0_seq, @object
	.size	u8x8_d_ssd1327_winstar_96x64_flip0_seq, 11
u8x8_d_ssd1327_winstar_96x64_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_seeed_96x96_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1327_seeed_96x96_flip1_seq, @object
	.size	u8x8_d_ssd1327_seeed_96x96_flip1_seq, 11
u8x8_d_ssd1327_seeed_96x96_flip1_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	96
	.byte	21
	.byte	-96
	.byte	22
	.byte	66
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_seeed_96x96_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1327_seeed_96x96_flip0_seq, @object
	.size	u8x8_d_ssd1327_seeed_96x96_flip0_seq, 11
u8x8_d_ssd1327_seeed_96x96_flip0_seq:
	.byte	24
	.byte	21
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-96
	.byte	22
	.byte	81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_96x96_powersave1_seq,"a",@progbits
	.type	u8x8_d_ssd1327_96x96_powersave1_seq, @object
	.size	u8x8_d_ssd1327_96x96_powersave1_seq, 5
u8x8_d_ssd1327_96x96_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1327_96x96_powersave0_seq,"a",@progbits
	.type	u8x8_d_ssd1327_96x96_powersave0_seq, @object
	.size	u8x8_d_ssd1327_96x96_powersave0_seq, 5
u8x8_d_ssd1327_96x96_powersave0_seq:
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
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
	.4byte	0xf54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.4byte	.LASF108
	.4byte	.LASF109
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
	.byte	0x61
	.4byte	0x358
	.byte	0x1
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x61
	.4byte	0x32d
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x61
	.4byte	0x358
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0x63
	.4byte	0x7e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x64
	.4byte	0x7e
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x64
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x65
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x65
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x66
	.4byte	0x358
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x82
	.4byte	0x7e
	.byte	0x1
	.4byte	0x436
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x82
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x82
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x82
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0x82
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x85
	.4byte	0x358
	.byte	0
	.uleb128 0x14
	.4byte	0x3d3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x688
	.uleb128 0x15
	.4byte	0x3e3
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	0x3ee
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	0x3f9
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	0x404
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	0x40f
	.uleb128 0x16
	.4byte	0x418
	.uleb128 0x16
	.4byte	0x421
	.uleb128 0x16
	.4byte	0x42a
	.uleb128 0x17
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x61b
	.uleb128 0x15
	.4byte	0x3ee
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	0x404
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	0x3f9
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	0x3e3
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x19
	.4byte	0x40f
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	0x418
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	0x421
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	0x42a
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	0x374
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xbb
	.4byte	0x545
	.uleb128 0x15
	.4byte	0x384
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	0x38f
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x19
	.4byte	0x39a
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	0x3a3
	.4byte	.LLST15
	.uleb128 0x19
	.4byte	0x3ac
	.4byte	.LLST16
	.uleb128 0x19
	.4byte	0x3b5
	.4byte	.LLST17
	.uleb128 0x19
	.4byte	0x3be
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	0x3c7
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0xef7
	.4byte	0x559
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0xf03
	.4byte	0x573
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL15
	.4byte	0xf0f
	.4byte	0x58d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0xf0f
	.4byte	0x5aa
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x76
	.sleb128 7
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0xf03
	.4byte	0x5c3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0xf0f
	.4byte	0x5dd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0xf0f
	.4byte	0x5fa
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x76
	.sleb128 3
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0xf1b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0xf27
	.4byte	0x62f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL4
	.4byte	0xef7
	.4byte	0x643
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0xf03
	.4byte	0x65d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0xf0f
	.4byte	0x677
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0xf33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x131
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x789
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x131
	.4byte	0x32d
	.4byte	.LLST20
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x131
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x131
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x131
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0x3d3
	.4byte	0x704
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL50
	.4byte	0xf3f
	.4byte	0x721
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_winstar_96x64_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL51
	.4byte	0xf4b
	.4byte	0x735
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL52
	.4byte	0xf27
	.4byte	0x752
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0xf27
	.4byte	0x76f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0xf27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88a
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x32d
	.4byte	.LLST22
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x7e
	.4byte	.LLST23
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL58
	.4byte	0x3d3
	.4byte	0x805
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0xf3f
	.4byte	0x822
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_96x96_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0xf4b
	.4byte	0x836
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0xf27
	.4byte	0x853
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_96x96_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL62
	.4byte	0xf27
	.4byte	0x870
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL64
	.4byte	0xf27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x225
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x225
	.4byte	0x32d
	.4byte	.LLST24
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x225
	.4byte	0x7e
	.4byte	.LLST25
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x225
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x225
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0x3d3
	.4byte	0x906
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL68
	.4byte	0xf3f
	.4byte	0x923
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_ea_w128128_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0xf4b
	.4byte	0x937
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0xf27
	.4byte	0x954
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0xf27
	.4byte	0x971
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0xf27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8c
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x32d
	.4byte	.LLST26
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x7e
	.4byte	.LLST27
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL76
	.4byte	0x3d3
	.4byte	0xa07
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL77
	.4byte	0xf3f
	.4byte	0xa24
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_128x128_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL78
	.4byte	0xf4b
	.4byte	0xa38
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL79
	.4byte	0xf27
	.4byte	0xa55
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL80
	.4byte	0xf27
	.4byte	0xa72
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL82
	.4byte	0xf27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x307
	.4byte	0x7e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8d
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x307
	.4byte	0x32d
	.4byte	.LLST28
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x307
	.4byte	0x7e
	.4byte	.LLST29
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x307
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x307
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x3d3
	.4byte	0xb08
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL86
	.4byte	0xf3f
	.4byte	0xb25
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_ea_w128128_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL87
	.4byte	0xf4b
	.4byte	0xb39
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL88
	.4byte	0xf27
	.4byte	0xb56
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ws_128x128_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL89
	.4byte	0xf27
	.4byte	0xb73
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL91
	.4byte	0xf27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x398
	.4byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8e
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x398
	.4byte	0x32d
	.4byte	.LLST30
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x398
	.4byte	0x7e
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x398
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x398
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL94
	.4byte	0x3d3
	.4byte	0xc09
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL95
	.4byte	0xf3f
	.4byte	0xc26
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_128x96_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL96
	.4byte	0xf4b
	.4byte	0xc3a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL97
	.4byte	0xf27
	.4byte	0xc57
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL98
	.4byte	0xf27
	.4byte	0xc74
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_flip0_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL100
	.4byte	0xf27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0xc9e
	.uleb128 0x23
	.4byte	0xc9e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF74
	.uleb128 0x24
	.4byte	.LASF75
	.byte	0x1
	.byte	0x28
	.4byte	0xcb6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_96x96_powersave0_seq
	.uleb128 0xe
	.4byte	0xc8e
	.uleb128 0x24
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2f
	.4byte	0xccc
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_96x96_powersave1_seq
	.uleb128 0xe
	.4byte	0xc8e
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0xce1
	.uleb128 0x23
	.4byte	0xc9e
	.byte	0xa
	.byte	0
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.byte	0x37
	.4byte	0xcf2
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip0_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x24
	.4byte	.LASF78
	.byte	0x1
	.byte	0x3f
	.4byte	0xd08
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_seeed_96x96_flip1_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x24
	.4byte	.LASF79
	.byte	0x1
	.byte	0x48
	.4byte	0xd1e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip0_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x24
	.4byte	.LASF80
	.byte	0x1
	.byte	0x50
	.4byte	0xd34
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_flip1_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0xd49
	.uleb128 0x23
	.4byte	0xc9e
	.byte	0x1f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF81
	.byte	0x1
	.byte	0x5f
	.4byte	0xd39
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.uleb128 0x24
	.4byte	.LASF82
	.byte	0x1
	.byte	0xd5
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_winstar_96x64_display_info
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0xd7b
	.uleb128 0x23
	.4byte	0xc9e
	.byte	0x40
	.byte	0
	.uleb128 0x25
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x10e
	.4byte	0xd8d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_winstar_96x64_init_seq
	.uleb128 0xe
	.4byte	0xd6b
	.uleb128 0x25
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x155
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_96x96_display_info
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0xdb4
	.uleb128 0x23
	.4byte	0xc9e
	.byte	0x3c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x17e
	.4byte	0xdc6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_96x96_init_seq
	.uleb128 0xe
	.4byte	0xda4
	.uleb128 0x25
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_ea_w128128_display_info
	.uleb128 0x25
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xdef
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_init_seq
	.uleb128 0xe
	.4byte	0xda4
	.uleb128 0x25
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x215
	.4byte	0xe06
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip0_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x25
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x21d
	.4byte	0xe1d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ea_w128128_flip1_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x25
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x249
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_128x128_display_info
	.uleb128 0x25
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x272
	.4byte	0xe46
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_init_seq
	.uleb128 0xe
	.4byte	0xda4
	.uleb128 0x25
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x2a0
	.4byte	0xe5d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_flip0_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x25
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x2a8
	.4byte	0xe74
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x128_flip1_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0xe89
	.uleb128 0x23
	.4byte	0xc9e
	.byte	0x46
	.byte	0
	.uleb128 0x25
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x2ed
	.4byte	0xe9b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_ws_128x128_init_seq
	.uleb128 0xe
	.4byte	0xe79
	.uleb128 0x25
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x333
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1327_128x96_display_info
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x35d
	.4byte	0xec4
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_init_seq
	.uleb128 0xe
	.4byte	0xda4
	.uleb128 0x25
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x387
	.4byte	0xedb
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_flip0_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x25
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x38f
	.4byte	0xef2
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1327_128x96_flip1_seq
	.uleb128 0xe
	.4byte	0xcd1
	.uleb128 0x26
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x259
	.uleb128 0x26
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x255
	.uleb128 0x26
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x256
	.uleb128 0x26
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x258
	.uleb128 0x26
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x278
	.uleb128 0x26
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x26
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x26
	.4byte	.LASF106
	.4byte	.LASF106
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE1
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x76
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL20
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x7a
	.sleb128 -2
	.4byte	.LVL27
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7a
	.sleb128 1
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37-1
	.2byte	0x3
	.byte	0x79
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_ssd1327_8to32_dest_buf
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL48
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL57
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL84
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL84
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL93
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL93
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"u8x8_d_ssd1327_winstar_96x64_flip1_seq"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF77:
	.string	"u8x8_d_ssd1327_seeed_96x96_flip0_seq"
.LASF3:
	.string	"__uint8_t"
.LASF18:
	.string	"byte_cb"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF9:
	.string	"long long unsigned int"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF27:
	.string	"utf8_state"
.LASF28:
	.string	"gpio_result"
.LASF76:
	.string	"u8x8_d_ssd1327_96x96_powersave1_seq"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF84:
	.string	"u8x8_ssd1327_96x96_display_info"
.LASF16:
	.string	"display_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF73:
	.string	"u8x8_d_ssd1327_visionox_128x96"
.LASF81:
	.string	"u8x8_ssd1327_8to32_dest_buf"
.LASF92:
	.string	"u8x8_d_ssd1327_128x128_flip0_seq"
.LASF103:
	.string	"u8x8_cad_SendSequence"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF61:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF86:
	.string	"u8x8_ssd1327_ea_w128128_display_info"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF105:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF58:
	.string	"x_pos"
.LASF55:
	.string	"u8x8_tile_t"
.LASF89:
	.string	"u8x8_d_ssd1327_ea_w128128_flip1_seq"
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF66:
	.string	"arg_int"
.LASF87:
	.string	"u8x8_d_ssd1327_ea_w128128_init_seq"
.LASF25:
	.string	"i2c_address"
.LASF107:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF79:
	.string	"u8x8_d_ssd1327_winstar_96x64_flip0_seq"
.LASF102:
	.string	"u8x8_cad_SendData"
.LASF5:
	.string	"short unsigned int"
.LASF98:
	.string	"u8x8_d_ssd1327_128x96_flip1_seq"
.LASF85:
	.string	"u8x8_d_ssd1327_96x96_init_seq"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF14:
	.string	"display_info"
.LASF71:
	.string	"u8x8_d_ssd1327_midas_128x128"
.LASF64:
	.string	"u8x8_ssd1327_8to32"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF34:
	.string	"u8x8_struct"
.LASF51:
	.string	"default_x_offset"
.LASF22:
	.string	"encoding"
.LASF52:
	.string	"flipmode_x_offset"
.LASF72:
	.string	"u8x8_d_ssd1327_ws_128x128"
.LASF74:
	.string	"sizetype"
.LASF75:
	.string	"u8x8_d_ssd1327_96x96_powersave0_seq"
.LASF17:
	.string	"cad_cb"
.LASF69:
	.string	"u8x8_d_ssd1327_seeed_96x96"
.LASF94:
	.string	"u8x8_d_ssd1327_ws_128x128_init_seq"
.LASF91:
	.string	"u8x8_d_ssd1327_128x128_init_seq"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF63:
	.string	"dest"
.LASF23:
	.string	"x_offset"
.LASF106:
	.string	"u8x8_d_helper_display_init"
.LASF50:
	.string	"tile_height"
.LASF97:
	.string	"u8x8_d_ssd1327_128x96_flip0_seq"
.LASF65:
	.string	"u8x8_d_ssd1327_96x96_generic"
.LASF83:
	.string	"u8x8_d_ssd1327_winstar_96x64_init_seq"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF1:
	.string	"unsigned char"
.LASF82:
	.string	"u8x8_ssd1327_winstar_96x64_display_info"
.LASF108:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1327.c"
.LASF2:
	.string	"short int"
.LASF62:
	.string	"u8x8"
.LASF78:
	.string	"u8x8_d_ssd1327_seeed_96x96_flip1_seq"
.LASF70:
	.string	"u8x8_d_ssd1327_ea_w128128"
.LASF88:
	.string	"u8x8_d_ssd1327_ea_w128128_flip0_seq"
.LASF47:
	.string	"data_setup_time_ns"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF12:
	.string	"uint32_t"
.LASF99:
	.string	"u8x8_cad_StartTransfer"
.LASF96:
	.string	"u8x8_d_ssd1327_128x96_init_seq"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF57:
	.string	"tile_ptr"
.LASF4:
	.string	"__uint16_t"
.LASF104:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF109:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF31:
	.string	"debounce_state"
.LASF93:
	.string	"u8x8_d_ssd1327_128x128_flip1_seq"
.LASF68:
	.string	"u8x8_d_ssd1327_ws_96x64"
.LASF67:
	.string	"arg_ptr"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF10:
	.string	"uint8_t"
.LASF26:
	.string	"i2c_started"
.LASF53:
	.string	"pixel_width"
.LASF95:
	.string	"u8x8_ssd1327_128x96_display_info"
.LASF49:
	.string	"tile_width"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF59:
	.string	"y_pos"
.LASF100:
	.string	"u8x8_cad_SendCmd"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF90:
	.string	"u8x8_ssd1327_128x128_display_info"
.LASF101:
	.string	"u8x8_cad_SendArg"
.LASF54:
	.string	"pixel_height"
.LASF44:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
