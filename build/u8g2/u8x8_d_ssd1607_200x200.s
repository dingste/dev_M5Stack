	.file	"u8x8_d_ssd1607_200x200.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1607_200x200_first_init,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_ssd1607_200x200_exec_1000dly_seq
	.align	4
	.type	u8x8_d_ssd1607_200x200_first_init, @function
u8x8_d_ssd1607_200x200_first_init:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1607_200x200.c"
	.loc 1 126 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 127 0
	mov.n	a10, a2
	call8	u8x8_ClearDisplay
.LVL1:
	.loc 1 129 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 130 0
	movi.n	a11, 0x32
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL3:
	.loc 1 131 0
	movi.n	a12, 0x55
	movi.n	a11, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL4:
	.loc 1 132 0
	movi	a12, 0xaa
	movi.n	a11, 0xc
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL5:
	.loc 1 133 0
	movi.n	a12, 0x22
	movi.n	a11, 0xa
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL6:
	.loc 1 134 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL7:
	retw.n
.LFE0:
	.size	u8x8_d_ssd1607_200x200_first_init, .-u8x8_d_ssd1607_200x200_first_init
	.section	.text.u8x8_d_ssd1607_draw_tile,"ax",@progbits
	.literal_position
	.literal .LC4, buf$2836
	.align	4
	.type	u8x8_d_ssd1607_draw_tile, @function
u8x8_d_ssd1607_draw_tile:
.LFB2:
	.loc 1 153 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 157 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL9:
	.loc 1 159 0
	l32i.n	a5, a2, 0
	.loc 1 161 0
	l8ui	a6, a4, 6
	.loc 1 159 0
	l8ui	a5, a5, 17
.LVL10:
	.loc 1 165 0
	l8ui	a7, a2, 34
	.loc 1 160 0
	addi.n	a5, a5, -1
.LVL11:
	.loc 1 161 0
	sub	a5, a5, a6
.LVL12:
	.loc 1 163 0
	l8ui	a6, a4, 5
	.loc 1 169 0
	movi.n	a11, 0x45
	.loc 1 165 0
	addx8	a6, a6, a7
	.loc 1 169 0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL13:
	.loc 1 170 0
	extui	a7, a6, 0, 8
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL14:
	.loc 1 171 0
	extui	a6, a6, 8, 16
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL15:
	.loc 1 172 0
	movi	a11, 0xc7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL16:
	.loc 1 173 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL17:
	.loc 1 175 0
	movi.n	a11, 0x44
	mov.n	a10, a2
	.loc 1 161 0
	extui	a5, a5, 0, 8
.LVL18:
	.loc 1 175 0
	call8	u8x8_cad_SendCmd
.LVL19:
	.loc 1 176 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL20:
	.loc 1 177 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL21:
	.loc 1 179 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL22:
	.loc 1 180 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL23:
	.loc 1 181 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL24:
	.loc 1 183 0
	movi.n	a11, 0x4e
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL25:
	.loc 1 184 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL26:
	.loc 1 186 0
	movi.n	a11, 0x24
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL27:
.L5:
	.loc 1 190 0
	l8ui	a5, a4, 4
.LVL28:
	.loc 1 191 0
	l32i.n	a7, a4, 0
.LVL29:
.L4:
	.loc 1 153 0 discriminator 1
	movi.n	a6, 0
.LBB4:
.LBB5:
	.loc 1 146 0 discriminator 1
	movi.n	a11, -1
	movi.n	a8, 8
	loop	a8, .L3_LEND
.LVL30:
.L3:
	.loc 1 146 0 is_stmt 0
	l32r	a9, .LC4
	add.n	a10, a6, a9
	add.n	a9, a7, a6
	l8ui	a9, a9, 0
	addi.n	a6, a6, 1
.LVL31:
	xor	a9, a11, a9
	s8i	a9, a10, 0
.LVL32:
	.L3_LEND:
.LBE5:
.LBE4:
	.loc 1 194 0 is_stmt 1
	l32r	a12, .LC4
	.loc 1 197 0
	addi.n	a5, a5, -1
.LVL33:
	.loc 1 194 0
	movi.n	a11, 8
	mov.n	a10, a2
	.loc 1 197 0
	extui	a5, a5, 0, 8
.LVL34:
	.loc 1 194 0
	call8	u8x8_cad_SendData
.LVL35:
	.loc 1 195 0
	addi.n	a7, a7, 8
.LVL36:
	.loc 1 198 0
	bnez.n	a5, .L4
	.loc 1 200 0
	addi.n	a3, a3, -1
.LVL37:
	extui	a3, a3, 0, 8
.LVL38:
	.loc 1 201 0
	bnez.n	a3, .L5
	.loc 1 203 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL39:
	retw.n
.LFE2:
	.size	u8x8_d_ssd1607_draw_tile, .-u8x8_d_ssd1607_draw_tile
	.section	.text.u8x8_d_ssd1607_200x200,"ax",@progbits
	.literal_position
	.literal .LC5, .L12
	.literal .LC6, u8x8_ssd1607_200x200_display_info
	.literal .LC7, u8x8_d_ssd1607_200x200_init_seq
	.literal .LC8, u8x8_d_ssd1607_200x200_powersave0_seq
	.literal .LC9, u8x8_d_ssd1607_200x200_powersave1_seq
	.literal .LC10, u8x8_d_ssd1607_to_display_seq
	.align	4
	.global	u8x8_d_ssd1607_200x200
	.type	u8x8_d_ssd1607_200x200, @function
u8x8_d_ssd1607_200x200:
.LFB3:
	.loc 1 362 0
.LVL40:
	entry	sp, 32
.LCFI2:
	.loc 1 363 0
	addi	a3, a3, -9
.LVL41:
	extui	a3, a3, 0, 8
	.loc 1 362 0
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 363 0
	bgeui	a3, 8, .L19
	l32r	a8, .LC5
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_ssd1607_200x200,"a",@progbits
	.align	4
	.align	4
.L12:
	.word	.L11
	.word	.L13
	.word	.L14
	.word	.L19
	.word	.L20
	.word	.L19
	.word	.L16
	.word	.L17
	.section	.text.u8x8_d_ssd1607_200x200
.L11:
	.loc 1 366 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL42:
	j	.L20
.L13:
	.loc 1 369 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL43:
	.loc 1 370 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL44:
	.loc 1 371 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL45:
	.loc 1 372 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_200x200_first_init
.LVL46:
.L20:
	.loc 1 391 0
	movi.n	a2, 1
.LVL47:
	.loc 1 373 0
	retw.n
.LVL48:
.L14:
	.loc 1 375 0
	bnez.n	a11, .L18
	.loc 1 376 0
	l32r	a11, .LC8
	j	.L21
.L18:
	.loc 1 378 0
	l32r	a11, .LC9
	j	.L21
.L16:
	.loc 1 383 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_draw_tile
.LVL49:
	j	.L20
.L17:
	.loc 1 386 0
	l32r	a11, .LC10
.L21:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL50:
	j	.L20
.L19:
	.loc 1 389 0
	movi.n	a2, 0
.LVL51:
	.loc 1 392 0
	retw.n
.LFE3:
	.size	u8x8_d_ssd1607_200x200, .-u8x8_d_ssd1607_200x200
	.section	.text.u8x8_d_ssd1607_v2_200x200,"ax",@progbits
	.literal_position
	.literal .LC11, .L25
	.literal .LC12, u8x8_ssd1607_200x200_display_info
	.literal .LC13, u8x8_d_ssd1607_200x200_init_seq
	.literal .LC14, u8x8_d_ssd1607_200x200_powersave0_seq
	.literal .LC15, u8x8_d_ssd1607_200x200_powersave1_seq
	.literal .LC16, u8x8_d_ssd1607_v2_to_display_seq
	.align	4
	.global	u8x8_d_ssd1607_v2_200x200
	.type	u8x8_d_ssd1607_v2_200x200, @function
u8x8_d_ssd1607_v2_200x200:
.LFB4:
	.loc 1 479 0
.LVL52:
	entry	sp, 32
.LCFI3:
	.loc 1 480 0
	addi	a3, a3, -9
.LVL53:
	extui	a3, a3, 0, 8
	.loc 1 479 0
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 480 0
	bgeui	a3, 8, .L32
	l32r	a8, .LC11
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_ssd1607_v2_200x200,"a",@progbits
	.align	4
	.align	4
.L25:
	.word	.L24
	.word	.L26
	.word	.L27
	.word	.L32
	.word	.L33
	.word	.L32
	.word	.L29
	.word	.L30
	.section	.text.u8x8_d_ssd1607_v2_200x200
.L24:
	.loc 1 483 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL54:
	j	.L33
.L26:
	.loc 1 486 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL55:
	.loc 1 487 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL56:
	.loc 1 488 0
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL57:
	.loc 1 489 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_200x200_first_init
.LVL58:
.L33:
	.loc 1 508 0
	movi.n	a2, 1
.LVL59:
	.loc 1 490 0
	retw.n
.LVL60:
.L27:
	.loc 1 492 0
	bnez.n	a11, .L31
	.loc 1 493 0
	l32r	a11, .LC14
	j	.L34
.L31:
	.loc 1 495 0
	l32r	a11, .LC15
	j	.L34
.L29:
	.loc 1 500 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_draw_tile
.LVL61:
	j	.L33
.L30:
	.loc 1 503 0
	l32r	a11, .LC16
.L34:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL62:
	j	.L33
.L32:
	.loc 1 506 0
	movi.n	a2, 0
.LVL63:
	.loc 1 509 0
	retw.n
.LFE4:
	.size	u8x8_d_ssd1607_v2_200x200, .-u8x8_d_ssd1607_v2_200x200
	.section	.text.u8x8_d_ssd1607_gd_200x200,"ax",@progbits
	.literal_position
	.literal .LC17, .L38
	.literal .LC18, u8x8_ssd1607_200x200_display_info
	.literal .LC19, u8x8_d_ssd1607_200x200_init_seq
	.literal .LC20, u8x8_d_ssd1607_200x200_powersave0_seq
	.literal .LC21, u8x8_d_ssd1607_200x200_powersave1_seq
	.literal .LC22, u8x8_d_ssd1607_gd_to_display_seq
	.align	4
	.global	u8x8_d_ssd1607_gd_200x200
	.type	u8x8_d_ssd1607_gd_200x200, @function
u8x8_d_ssd1607_gd_200x200:
.LFB5:
	.loc 1 577 0
.LVL64:
	entry	sp, 32
.LCFI4:
	.loc 1 578 0
	addi	a3, a3, -9
.LVL65:
	extui	a3, a3, 0, 8
	.loc 1 577 0
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 578 0
	bgeui	a3, 8, .L45
	l32r	a8, .LC17
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_ssd1607_gd_200x200,"a",@progbits
	.align	4
	.align	4
.L38:
	.word	.L37
	.word	.L39
	.word	.L40
	.word	.L45
	.word	.L46
	.word	.L45
	.word	.L42
	.word	.L43
	.section	.text.u8x8_d_ssd1607_gd_200x200
.L37:
	.loc 1 581 0
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL66:
	j	.L46
.L39:
	.loc 1 584 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL67:
	.loc 1 585 0
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL68:
	.loc 1 586 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL69:
	.loc 1 587 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_200x200_first_init
.LVL70:
.L46:
	.loc 1 606 0
	movi.n	a2, 1
.LVL71:
	.loc 1 588 0
	retw.n
.LVL72:
.L40:
	.loc 1 590 0
	bnez.n	a11, .L44
	.loc 1 591 0
	l32r	a11, .LC20
	j	.L47
.L44:
	.loc 1 593 0
	l32r	a11, .LC21
	j	.L47
.L42:
	.loc 1 598 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_draw_tile
.LVL73:
	j	.L46
.L43:
	.loc 1 601 0
	l32r	a11, .LC22
.L47:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL74:
	j	.L46
.L45:
	.loc 1 604 0
	movi.n	a2, 0
.LVL75:
	.loc 1 607 0
	retw.n
.LFE5:
	.size	u8x8_d_ssd1607_gd_200x200, .-u8x8_d_ssd1607_gd_200x200
	.section	.text.u8x8_d_ssd1607_ws_200x200,"ax",@progbits
	.literal_position
	.literal .LC23, .L51
	.literal .LC24, u8x8_ssd1607_200x200_display_info
	.literal .LC25, u8x8_d_ssd1607_ws_200x200_init_seq
	.literal .LC26, u8x8_d_ssd1607_200x200_powersave0_seq
	.literal .LC27, u8x8_d_ssd1607_ws_to_display_seq
	.literal .LC28, u8x8_d_ssd1607_200x200_powersave1_seq
	.literal .LC29, u8x8_d_ssd1607_ws_to_refresh_seq
	.align	4
	.global	u8x8_d_ssd1607_ws_200x200
	.type	u8x8_d_ssd1607_ws_200x200, @function
u8x8_d_ssd1607_ws_200x200:
.LFB6:
	.loc 1 686 0
.LVL76:
	entry	sp, 32
.LCFI5:
	.loc 1 687 0
	addi	a3, a3, -9
.LVL77:
	extui	a3, a3, 0, 8
	.loc 1 686 0
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 687 0
	bgeui	a3, 8, .L58
	l32r	a8, .LC23
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_ssd1607_ws_200x200,"a",@progbits
	.align	4
	.align	4
.L51:
	.word	.L50
	.word	.L52
	.word	.L53
	.word	.L58
	.word	.L59
	.word	.L58
	.word	.L55
	.word	.L56
	.section	.text.u8x8_d_ssd1607_ws_200x200
.L50:
	.loc 1 690 0
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL78:
	j	.L59
.L52:
	.loc 1 693 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL79:
	.loc 1 694 0
	l32r	a11, .LC25
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL80:
	.loc 1 695 0
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL81:
	.loc 1 696 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_200x200_first_init
.LVL82:
	.loc 1 697 0
	l32r	a11, .LC27
.L60:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL83:
.L59:
	.loc 1 716 0
	movi.n	a2, 1
.LVL84:
	.loc 1 698 0
	retw.n
.LVL85:
.L53:
	.loc 1 700 0
	bnez.n	a11, .L57
	.loc 1 701 0
	l32r	a11, .LC26
	j	.L60
.L57:
	.loc 1 703 0
	l32r	a11, .LC28
	j	.L60
.L55:
	.loc 1 708 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1607_draw_tile
.LVL86:
	j	.L59
.L56:
	.loc 1 711 0
	l32r	a11, .LC29
	j	.L60
.L58:
	.loc 1 714 0
	movi.n	a2, 0
.LVL87:
	.loc 1 717 0
	retw.n
.LFE6:
	.size	u8x8_d_ssd1607_ws_200x200, .-u8x8_d_ssd1607_ws_200x200
	.section	.bss.buf$2836,"aw",@nobits
	.type	buf$2836, @object
	.size	buf$2836, 8
buf$2836:
	.zero	8
	.section	.rodata.u8x8_d_ssd1607_ws_200x200_init_seq,"a",@progbits
	.type	u8x8_d_ssd1607_ws_200x200_init_seq, @object
	.size	u8x8_d_ssd1607_ws_200x200_init_seq, 61
u8x8_d_ssd1607_ws_200x200_init_seq:
	.byte	24
	.byte	21
	.byte	1
	.byte	22
	.byte	-57
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	12
	.byte	22
	.byte	-41
	.byte	22
	.byte	-42
	.byte	22
	.byte	-99
	.byte	21
	.byte	44
	.byte	22
	.byte	-88
	.byte	21
	.byte	58
	.byte	22
	.byte	26
	.byte	21
	.byte	59
	.byte	22
	.byte	8
	.byte	21
	.byte	17
	.byte	22
	.byte	3
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	22
	.byte	24
	.byte	21
	.byte	69
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	-57
	.byte	22
	.byte	0
	.byte	21
	.byte	78
	.byte	22
	.byte	0
	.byte	21
	.byte	79
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_ws_to_refresh_seq,"a",@progbits
	.type	u8x8_d_ssd1607_ws_to_refresh_seq, @object
	.size	u8x8_d_ssd1607_ws_to_refresh_seq, 9
u8x8_d_ssd1607_ws_to_refresh_seq:
	.byte	24
	.byte	21
	.byte	34
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_ws_to_display_seq,"a",@progbits
	.type	u8x8_d_ssd1607_ws_to_display_seq, @object
	.size	u8x8_d_ssd1607_ws_to_display_seq, 81
u8x8_d_ssd1607_ws_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	16
	.byte	22
	.byte	24
	.byte	22
	.byte	24
	.byte	22
	.byte	8
	.byte	22
	.byte	24
	.byte	22
	.byte	24
	.byte	22
	.byte	8
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	19
	.byte	22
	.byte	20
	.byte	22
	.byte	68
	.byte	22
	.byte	18
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	-60
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_gd_to_display_seq,"a",@progbits
	.type	u8x8_d_ssd1607_gd_to_display_seq, @object
	.size	u8x8_d_ssd1607_gd_to_display_seq, 77
u8x8_d_ssd1607_gd_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	16
	.byte	22
	.byte	24
	.byte	22
	.byte	24
	.byte	22
	.byte	8
	.byte	22
	.byte	24
	.byte	22
	.byte	24
	.byte	22
	.byte	8
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	19
	.byte	22
	.byte	20
	.byte	22
	.byte	68
	.byte	22
	.byte	18
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	-60
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_v2_to_display_seq,"a",@progbits
	.type	u8x8_d_ssd1607_v2_to_display_seq, @object
	.size	u8x8_d_ssd1607_v2_to_display_seq, 83
u8x8_d_ssd1607_v2_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	2
	.byte	22
	.byte	2
	.byte	22
	.byte	1
	.byte	22
	.byte	17
	.byte	22
	.byte	18
	.byte	22
	.byte	18
	.byte	22
	.byte	34
	.byte	22
	.byte	34
	.byte	22
	.byte	102
	.byte	22
	.byte	105
	.byte	22
	.byte	105
	.byte	22
	.byte	89
	.byte	22
	.byte	88
	.byte	22
	.byte	-103
	.byte	22
	.byte	-103
	.byte	22
	.byte	-120
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	-8
	.byte	22
	.byte	-76
	.byte	22
	.byte	19
	.byte	22
	.byte	81
	.byte	22
	.byte	53
	.byte	22
	.byte	81
	.byte	22
	.byte	81
	.byte	22
	.byte	-23
	.byte	22
	.byte	4
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_to_display_seq,"a",@progbits
	.type	u8x8_d_ssd1607_to_display_seq, @object
	.size	u8x8_d_ssd1607_to_display_seq, 85
u8x8_d_ssd1607_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	2
	.byte	22
	.byte	2
	.byte	22
	.byte	1
	.byte	22
	.byte	17
	.byte	22
	.byte	18
	.byte	22
	.byte	18
	.byte	22
	.byte	34
	.byte	22
	.byte	34
	.byte	22
	.byte	102
	.byte	22
	.byte	105
	.byte	22
	.byte	105
	.byte	22
	.byte	89
	.byte	22
	.byte	88
	.byte	22
	.byte	-103
	.byte	22
	.byte	-103
	.byte	22
	.byte	-120
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	-8
	.byte	22
	.byte	-76
	.byte	22
	.byte	19
	.byte	22
	.byte	81
	.byte	22
	.byte	53
	.byte	22
	.byte	81
	.byte	22
	.byte	81
	.byte	22
	.byte	25
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	34
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_200x200_init_seq,"a",@progbits
	.type	u8x8_d_ssd1607_200x200_init_seq, @object
	.size	u8x8_d_ssd1607_200x200_init_seq, 63
u8x8_d_ssd1607_200x200_init_seq:
	.byte	24
	.byte	21
	.byte	1
	.byte	22
	.byte	-57
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	21
	.byte	3
	.byte	22
	.byte	0
	.byte	21
	.byte	4
	.byte	22
	.byte	10
	.byte	21
	.byte	15
	.byte	22
	.byte	0
	.byte	21
	.byte	-16
	.byte	22
	.byte	31
	.byte	21
	.byte	44
	.byte	22
	.byte	-88
	.byte	21
	.byte	58
	.byte	22
	.byte	26
	.byte	21
	.byte	59
	.byte	22
	.byte	8
	.byte	21
	.byte	60
	.byte	22
	.byte	51
	.byte	21
	.byte	17
	.byte	22
	.byte	3
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	22
	.byte	24
	.byte	21
	.byte	69
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	43
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_200x200_exec_1000dly_seq,"a",@progbits
	.type	u8x8_d_ssd1607_200x200_exec_1000dly_seq, @object
	.size	u8x8_d_ssd1607_200x200_exec_1000dly_seq, 16
u8x8_d_ssd1607_200x200_exec_1000dly_seq:
	.byte	21
	.byte	34
	.byte	22
	.byte	4
	.byte	21
	.byte	32
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	-2
	.byte	-6
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_200x200_powersave1_seq,"a",@progbits
	.type	u8x8_d_ssd1607_200x200_powersave1_seq, @object
	.size	u8x8_d_ssd1607_200x200_powersave1_seq, 11
u8x8_d_ssd1607_200x200_powersave1_seq:
	.byte	24
	.byte	21
	.byte	34
	.byte	22
	.byte	2
	.byte	21
	.byte	32
	.byte	-2
	.byte	20
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1607_200x200_powersave0_seq,"a",@progbits
	.type	u8x8_d_ssd1607_200x200_powersave0_seq, @object
	.size	u8x8_d_ssd1607_200x200_powersave0_seq, 13
u8x8_d_ssd1607_200x200_powersave0_seq:
	.byte	24
	.byte	21
	.byte	34
	.byte	22
	.byte	-64
	.byte	21
	.byte	32
	.byte	-2
	.byte	-56
	.byte	-2
	.byte	100
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1607_200x200_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1607_200x200_display_info, @object
	.size	u8x8_ssd1607_200x200_display_info, 24
u8x8_ssd1607_200x200_display_info:
	.byte	0
	.byte	1
	.byte	120
	.byte	60
	.byte	100
	.byte	100
	.byte	50
	.byte	100
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	25
	.byte	25
	.byte	0
	.byte	0
	.short	200
	.short	200
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcf4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.4byte	.LASF96
	.4byte	.LASF97
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
	.byte	0x7d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44f
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7d
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0xc7f
	.4byte	0x3aa
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0xc8b
	.4byte	0x3be
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0xc97
	.4byte	0x3d8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0xca3
	.4byte	0x3f7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0xca3
	.4byte	0x416
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xaa
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0xca3
	.4byte	0x435
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0xcaf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_exec_1000dly_seq
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x1
	.byte	0x8a
	.4byte	0x358
	.byte	0x1
	.4byte	0x488
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0x8a
	.4byte	0x358
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.4byte	0x7e
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x8d
	.4byte	0x488
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8e
	.4byte	0x358
	.byte	0
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x498
	.uleb128 0x19
	.4byte	0x498
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF63
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x98
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x705
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x98
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x98
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x98
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x9a
	.4byte	0x89
	.uleb128 0x1b
	.string	"c"
	.byte	0x1
	.byte	0x9b
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF69
	.byte	0x1
	.byte	0x9b
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0x9c
	.4byte	0x358
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1e
	.4byte	0x44f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xc2
	.4byte	0x553
	.uleb128 0x1f
	.4byte	0x45f
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x21
	.4byte	0x468
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	0x47c
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	0x471
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2836
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL9
	.4byte	0xc8b
	.4byte	0x567
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0xc97
	.4byte	0x581
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x45
	.byte	0
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0xcbb
	.4byte	0x59b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0xcbb
	.4byte	0x5b5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0xcbb
	.4byte	0x5cf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc7
	.byte	0
	.uleb128 0x11
	.4byte	.LVL17
	.4byte	0xcbb
	.4byte	0x5e8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL19
	.4byte	0xc97
	.4byte	0x602
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x11
	.4byte	.LVL20
	.4byte	0xcbb
	.4byte	0x61c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0xcbb
	.4byte	0x636
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL22
	.4byte	0xc97
	.4byte	0x650
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x11
	.4byte	.LVL23
	.4byte	0xcbb
	.4byte	0x66a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL24
	.4byte	0xcbb
	.4byte	0x684
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL25
	.4byte	0xc97
	.4byte	0x69e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4e
	.byte	0
	.uleb128 0x11
	.4byte	.LVL26
	.4byte	0xcbb
	.4byte	0x6b8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL27
	.4byte	0xc97
	.4byte	0x6d2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0xcc7
	.4byte	0x6f4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2836
	.byte	0
	.uleb128 0x13
	.4byte	.LVL39
	.4byte	0xcd3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x169
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ff
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x169
	.4byte	0x32d
	.4byte	.LLST6
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x169
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x169
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x169
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL42
	.4byte	0xcdf
	.4byte	0x778
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1607_200x200_display_info
	.byte	0
	.uleb128 0x11
	.4byte	.LVL43
	.4byte	0xceb
	.4byte	0x78c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL44
	.4byte	0xcaf
	.4byte	0x7a9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_init_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL45
	.4byte	0xcaf
	.4byte	0x7c6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_powersave0_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL46
	.4byte	0x374
	.4byte	0x7da
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL49
	.4byte	0x49f
	.4byte	0x7ee
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL50
	.4byte	0xcaf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1de
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f9
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1de
	.4byte	0x32d
	.4byte	.LLST8
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1de
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1de
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL54
	.4byte	0xcdf
	.4byte	0x872
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1607_200x200_display_info
	.byte	0
	.uleb128 0x11
	.4byte	.LVL55
	.4byte	0xceb
	.4byte	0x886
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL56
	.4byte	0xcaf
	.4byte	0x8a3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_init_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL57
	.4byte	0xcaf
	.4byte	0x8c0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_powersave0_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL58
	.4byte	0x374
	.4byte	0x8d4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL61
	.4byte	0x49f
	.4byte	0x8e8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL62
	.4byte	0xcaf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x240
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f3
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x240
	.4byte	0x32d
	.4byte	.LLST10
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x240
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x240
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x240
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL66
	.4byte	0xcdf
	.4byte	0x96c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1607_200x200_display_info
	.byte	0
	.uleb128 0x11
	.4byte	.LVL67
	.4byte	0xceb
	.4byte	0x980
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL68
	.4byte	0xcaf
	.4byte	0x99d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_init_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL69
	.4byte	0xcaf
	.4byte	0x9ba
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_powersave0_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL70
	.4byte	0x374
	.4byte	0x9ce
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL73
	.4byte	0x49f
	.4byte	0x9e2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL74
	.4byte	0xcaf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x7e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaed
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x32d
	.4byte	.LLST12
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL78
	.4byte	0xcdf
	.4byte	0xa66
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1607_200x200_display_info
	.byte	0
	.uleb128 0x11
	.4byte	.LVL79
	.4byte	0xceb
	.4byte	0xa7a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL80
	.4byte	0xcaf
	.4byte	0xa97
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_ws_200x200_init_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL81
	.4byte	0xcaf
	.4byte	0xab4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_powersave0_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL82
	.4byte	0x374
	.4byte	0xac8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL83
	.4byte	0xcaf
	.4byte	0xadc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL86
	.4byte	0x49f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF74
	.byte	0x1
	.byte	0x41
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1607_200x200_display_info
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xb0e
	.uleb128 0x19
	.4byte	0x498
	.byte	0xc
	.byte	0
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5b
	.4byte	0xb1f
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_powersave0_seq
	.uleb128 0xe
	.4byte	0xafe
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xb34
	.uleb128 0x19
	.4byte	0x498
	.byte	0xa
	.byte	0
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x1
	.byte	0x65
	.4byte	0xb45
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_powersave1_seq
	.uleb128 0xe
	.4byte	0xb24
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xb5a
	.uleb128 0x19
	.4byte	0x498
	.byte	0xf
	.byte	0
	.uleb128 0x27
	.4byte	.LASF77
	.byte	0x1
	.byte	0x70
	.4byte	0xb6b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_exec_1000dly_seq
	.uleb128 0xe
	.4byte	0xb4a
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xb80
	.uleb128 0x19
	.4byte	0x498
	.byte	0x3e
	.byte	0
	.uleb128 0x27
	.4byte	.LASF78
	.byte	0x1
	.byte	0xd7
	.4byte	0xb91
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_200x200_init_seq
	.uleb128 0xe
	.4byte	0xb70
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xba6
	.uleb128 0x19
	.4byte	0x498
	.byte	0x54
	.byte	0
	.uleb128 0x27
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf3
	.4byte	0xbb7
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_to_display_seq
	.uleb128 0xe
	.4byte	0xb96
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xbcc
	.uleb128 0x19
	.4byte	0x498
	.byte	0x52
	.byte	0
	.uleb128 0x28
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x18f
	.4byte	0xbde
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_v2_to_display_seq
	.uleb128 0xe
	.4byte	0xbbc
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xbf3
	.uleb128 0x19
	.4byte	0x498
	.byte	0x4c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x205
	.4byte	0xc05
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_gd_to_display_seq
	.uleb128 0xe
	.4byte	0xbe3
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xc1a
	.uleb128 0x19
	.4byte	0x498
	.byte	0x50
	.byte	0
	.uleb128 0x28
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x265
	.4byte	0xc2c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_ws_to_display_seq
	.uleb128 0xe
	.4byte	0xc0a
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xc41
	.uleb128 0x19
	.4byte	0x498
	.byte	0x8
	.byte	0
	.uleb128 0x28
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x282
	.4byte	0xc53
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_ws_to_refresh_seq
	.uleb128 0xe
	.4byte	0xc31
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0xc68
	.uleb128 0x19
	.4byte	0x498
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x293
	.4byte	0xc7a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1607_ws_200x200_init_seq
	.uleb128 0xe
	.4byte	0xc58
	.uleb128 0x29
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x22f
	.uleb128 0x29
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x259
	.uleb128 0x29
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x255
	.uleb128 0x29
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x257
	.uleb128 0x29
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x278
	.uleb128 0x29
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x256
	.uleb128 0x29
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x258
	.uleb128 0x29
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x29
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x29
	.4byte	.LASF94
	.4byte	.LASF94
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x29
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
	.4byte	.LVL8
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x11
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE2
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x3
	.4byte	buf$2836
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	buf$2836+1
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE2
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	buf$2836
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL52
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
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL64
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL76
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
.LASF76:
	.string	"u8x8_d_ssd1607_200x200_powersave1_seq"
.LASF94:
	.string	"u8x8_d_helper_display_init"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF65:
	.string	"u8x8_d_ssd1607_draw_tile"
.LASF73:
	.string	"u8x8_d_ssd1607_ws_200x200"
.LASF45:
	.string	"spi_mode"
.LASF68:
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
.LASF63:
	.string	"sizetype"
.LASF85:
	.string	"u8x8_ClearDisplay"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF74:
	.string	"u8x8_ssd1607_200x200_display_info"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF78:
	.string	"u8x8_d_ssd1607_200x200_init_seq"
.LASF75:
	.string	"u8x8_d_ssd1607_200x200_powersave0_seq"
.LASF66:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF67:
	.string	"arg_int"
.LASF91:
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
.LASF87:
	.string	"u8x8_cad_SendCmd"
.LASF98:
	.string	"u8x8_convert_tile_for_ssd1607"
.LASF69:
	.string	"page"
.LASF92:
	.string	"u8x8_cad_EndTransfer"
.LASF82:
	.string	"u8x8_d_ssd1607_ws_to_display_seq"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF79:
	.string	"u8x8_d_ssd1607_to_display_seq"
.LASF47:
	.string	"data_setup_time_ns"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF80:
	.string	"u8x8_d_ssd1607_v2_to_display_seq"
.LASF64:
	.string	"u8x8_d_ssd1607_200x200_first_init"
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
.LASF71:
	.string	"u8x8_d_ssd1607_v2_200x200"
.LASF11:
	.string	"uint16_t"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF86:
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
	.string	"u8x8_d_ssd1607_200x200"
.LASF88:
	.string	"u8x8_cad_SendMultipleArg"
.LASF72:
	.string	"u8x8_d_ssd1607_gd_200x200"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF84:
	.string	"u8x8_d_ssd1607_ws_200x200_init_seq"
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
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF83:
	.string	"u8x8_d_ssd1607_ws_to_refresh_seq"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF81:
	.string	"u8x8_d_ssd1607_gd_to_display_seq"
.LASF77:
	.string	"u8x8_d_ssd1607_200x200_exec_1000dly_seq"
.LASF26:
	.string	"i2c_started"
.LASF93:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF97:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF90:
	.string	"u8x8_cad_SendArg"
.LASF96:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1607_200x200.c"
.LASF95:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF62:
	.string	"pbuf"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
