	.file	"u8x8_d_st7567.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7567_enh_dg128064_generic,"ax",@progbits
	.literal_position
	.literal .LC0, .L4
	.literal .LC1, u8x8_st7567_enh_dg128064_display_info
	.literal .LC2, u8x8_st7567_enh_dg128064_init_seq
	.literal .LC3, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC4, u8x8_d_st7567_132x64_powersave1_seq
	.align	4
	.type	u8x8_d_st7567_enh_dg128064_generic, @function
u8x8_d_st7567_enh_dg128064_generic:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7567.c"
	.loc 1 462 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 465 0
	addi	a3, a3, -9
.LVL1:
	extui	a3, a3, 0, 8
	bgeui	a3, 7, .L12
	l32r	a6, .LC0
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_enh_dg128064_generic,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L3
	.word	.L5
	.word	.L6
	.word	.L12
	.word	.L12
	.word	.L7
	.word	.L8
	.section	.text.u8x8_d_st7567_enh_dg128064_generic
.L3:
	.loc 1 468 0
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL2:
	j	.L14
.L5:
	.loc 1 471 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL3:
	.loc 1 472 0
	l32r	a11, .LC2
	j	.L16
.L6:
	.loc 1 476 0
	l32r	a11, .LC3
	.loc 1 475 0
	beqz.n	a4, .L16
.L9:
	.loc 1 478 0
	l32r	a11, .LC4
.L16:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL4:
	j	.L14
.L7:
	.loc 1 482 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL5:
	.loc 1 483 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL6:
	.loc 1 484 0
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL7:
.L15:
	.loc 1 485 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL8:
.L14:
	.loc 1 522 0
	movi.n	a2, 1
.LVL9:
	.loc 1 486 0
	retw.n
.LVL10:
.L8:
	.loc 1 489 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL11:
	.loc 1 491 0
	l8ui	a3, a5, 5
.LVL12:
	.loc 1 493 0
	l8ui	a6, a2, 34
	.loc 1 494 0
	mov.n	a10, a2
	.loc 1 493 0
	addx8	a3, a3, a6
.LVL13:
	extui	a6, a3, 0, 8
.LVL14:
	.loc 1 494 0
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL15:
	or	a11, a11, a3
	call8	u8x8_cad_SendCmd
.LVL16:
	.loc 1 495 0
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL17:
	.loc 1 496 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL18:
	.loc 1 498 0
	l8ui	a8, a5, 4
.LVL19:
	.loc 1 506 0
	movi	a9, 0x84
	.loc 1 499 0
	slli	a8, a8, 3
	extui	a3, a8, 0, 8
.LVL20:
	.loc 1 506 0
	add.n	a8, a3, a6
.LVL21:
	.loc 1 500 0
	l32i.n	a5, a5, 0
.LVL22:
	.loc 1 506 0
	bge	a9, a8, .L11
.LVL23:
	.loc 1 509 0
	movi	a8, -0x7c
	sub	a3, a8, a6
	extui	a3, a3, 0, 8
.LVL24:
.L11:
	.loc 1 514 0 discriminator 1
	addi.n	a4, a4, -1
.LVL25:
	.loc 1 513 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 514 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL26:
	.loc 1 513 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL27:
	.loc 1 515 0 discriminator 1
	bnez.n	a4, .L11
	j	.L15
.LVL28:
.L12:
	.loc 1 520 0
	movi.n	a2, 0
.LVL29:
	.loc 1 523 0
	retw.n
.LFE2:
	.size	u8x8_d_st7567_enh_dg128064_generic, .-u8x8_d_st7567_enh_dg128064_generic
	.section	.text.u8x8_d_st7567_pi_132x64,"ax",@progbits
	.literal_position
	.literal .LC5, .L20
	.literal .LC6, u8x8_st7567_132x64_display_info
	.literal .LC7, u8x8_d_st7567_132x64_init_seq
	.literal .LC8, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC9, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC10, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC11, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_pi_132x64
	.type	u8x8_d_st7567_pi_132x64, @function
u8x8_d_st7567_pi_132x64:
.LFB0:
	.loc 1 154 0
.LVL30:
	entry	sp, 32
.LCFI1:
	.loc 1 157 0
	addi	a3, a3, -9
.LVL31:
	extui	a3, a3, 0, 8
	.loc 1 154 0
	extui	a4, a4, 0, 8
	.loc 1 157 0
	bgeui	a3, 7, .L30
	l32r	a6, .LC5
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_pi_132x64,"a",@progbits
	.align	4
	.align	4
.L20:
	.word	.L19
	.word	.L21
	.word	.L22
	.word	.L30
	.word	.L23
	.word	.L24
	.word	.L25
	.section	.text.u8x8_d_st7567_pi_132x64
.L19:
	.loc 1 160 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL32:
	j	.L32
.L21:
	.loc 1 163 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL33:
	.loc 1 164 0
	l32r	a11, .LC7
	j	.L35
.L22:
	.loc 1 168 0
	l32r	a11, .LC8
	.loc 1 167 0
	beqz.n	a4, .L35
.L26:
	.loc 1 170 0
	l32r	a11, .LC9
.L35:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL34:
	j	.L32
.L23:
	.loc 1 173 0
	bnez.n	a4, .L27
	.loc 1 175 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL35:
	.loc 1 176 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L34
.L27:
	.loc 1 180 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL36:
	.loc 1 181 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L34:
	s8i	a3, a2, 34
	j	.L32
.L24:
	.loc 1 186 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL37:
	.loc 1 187 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL38:
	.loc 1 188 0
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL39:
.L33:
	.loc 1 189 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL40:
.L32:
	.loc 1 226 0
	movi.n	a2, 1
.LVL41:
	.loc 1 190 0
	retw.n
.LVL42:
.L25:
	.loc 1 193 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL43:
	.loc 1 195 0
	l8ui	a3, a5, 5
.LVL44:
	.loc 1 197 0
	l8ui	a6, a2, 34
	.loc 1 198 0
	mov.n	a10, a2
	.loc 1 197 0
	addx8	a3, a3, a6
.LVL45:
	extui	a6, a3, 0, 8
.LVL46:
	.loc 1 198 0
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL47:
	or	a11, a11, a3
	call8	u8x8_cad_SendCmd
.LVL48:
	.loc 1 199 0
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL49:
	.loc 1 200 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL50:
	.loc 1 202 0
	l8ui	a8, a5, 4
.LVL51:
	.loc 1 210 0
	movi	a9, 0x84
	.loc 1 203 0
	slli	a8, a8, 3
	extui	a3, a8, 0, 8
.LVL52:
	.loc 1 210 0
	add.n	a8, a3, a6
.LVL53:
	.loc 1 204 0
	l32i.n	a5, a5, 0
.LVL54:
	.loc 1 210 0
	bge	a9, a8, .L29
.LVL55:
	.loc 1 213 0
	movi	a8, -0x7c
	sub	a3, a8, a6
	extui	a3, a3, 0, 8
.LVL56:
.L29:
	.loc 1 218 0 discriminator 1
	addi.n	a4, a4, -1
.LVL57:
	.loc 1 217 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 218 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL58:
	.loc 1 217 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL59:
	.loc 1 219 0 discriminator 1
	bnez.n	a4, .L29
	j	.L33
.LVL60:
.L30:
	.loc 1 224 0
	movi.n	a2, 0
.LVL61:
	.loc 1 227 0
	retw.n
.LFE0:
	.size	u8x8_d_st7567_pi_132x64, .-u8x8_d_st7567_pi_132x64
	.section	.text.u8x8_d_st7567_jlx12864,"ax",@progbits
	.literal_position
	.literal .LC12, .L39
	.literal .LC13, u8x8_st7567_jlx12864_display_info
	.literal .LC14, u8x8_st7567_jlx12864_init_seq
	.literal .LC15, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC16, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC17, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC18, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_jlx12864
	.type	u8x8_d_st7567_jlx12864, @function
u8x8_d_st7567_jlx12864:
.LFB1:
	.loc 1 298 0
.LVL62:
	entry	sp, 32
.LCFI2:
	.loc 1 301 0
	addi	a3, a3, -9
.LVL63:
	extui	a3, a3, 0, 8
	.loc 1 298 0
	extui	a4, a4, 0, 8
	.loc 1 301 0
	bgeui	a3, 7, .L49
	l32r	a6, .LC12
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_jlx12864,"a",@progbits
	.align	4
	.align	4
.L39:
	.word	.L38
	.word	.L40
	.word	.L41
	.word	.L49
	.word	.L42
	.word	.L43
	.word	.L44
	.section	.text.u8x8_d_st7567_jlx12864
.L38:
	.loc 1 304 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL64:
	j	.L51
.L40:
	.loc 1 307 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL65:
	.loc 1 308 0
	l32r	a11, .LC14
	j	.L54
.L41:
	.loc 1 312 0
	l32r	a11, .LC15
	.loc 1 311 0
	beqz.n	a4, .L54
.L45:
	.loc 1 314 0
	l32r	a11, .LC16
.L54:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL66:
	j	.L51
.L42:
	.loc 1 317 0
	bnez.n	a4, .L46
	.loc 1 319 0
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL67:
	.loc 1 320 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L53
.L46:
	.loc 1 324 0
	l32r	a11, .LC18
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL68:
	.loc 1 325 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L53:
	s8i	a3, a2, 34
	j	.L51
.L43:
	.loc 1 330 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL69:
	.loc 1 331 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL70:
	.loc 1 332 0
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL71:
.L52:
	.loc 1 333 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL72:
.L51:
	.loc 1 370 0
	movi.n	a2, 1
.LVL73:
	.loc 1 334 0
	retw.n
.LVL74:
.L44:
	.loc 1 337 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL75:
	.loc 1 339 0
	l8ui	a3, a5, 5
.LVL76:
	.loc 1 341 0
	l8ui	a6, a2, 34
	.loc 1 342 0
	mov.n	a10, a2
	.loc 1 341 0
	addx8	a3, a3, a6
.LVL77:
	extui	a6, a3, 0, 8
.LVL78:
	.loc 1 342 0
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL79:
	or	a11, a11, a3
	call8	u8x8_cad_SendCmd
.LVL80:
	.loc 1 343 0
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL81:
	.loc 1 344 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL82:
	.loc 1 346 0
	l8ui	a8, a5, 4
.LVL83:
	.loc 1 354 0
	movi	a9, 0x84
	.loc 1 347 0
	slli	a8, a8, 3
	extui	a3, a8, 0, 8
.LVL84:
	.loc 1 354 0
	add.n	a8, a3, a6
.LVL85:
	.loc 1 348 0
	l32i.n	a5, a5, 0
.LVL86:
	.loc 1 354 0
	bge	a9, a8, .L48
.LVL87:
	.loc 1 357 0
	movi	a8, -0x7c
	sub	a3, a8, a6
	extui	a3, a3, 0, 8
.LVL88:
.L48:
	.loc 1 362 0 discriminator 1
	addi.n	a4, a4, -1
.LVL89:
	.loc 1 361 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 362 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL90:
	.loc 1 361 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL91:
	.loc 1 363 0 discriminator 1
	bnez.n	a4, .L48
	j	.L52
.LVL92:
.L49:
	.loc 1 368 0
	movi.n	a2, 0
.LVL93:
	.loc 1 371 0
	retw.n
.LFE1:
	.size	u8x8_d_st7567_jlx12864, .-u8x8_d_st7567_jlx12864
	.section	.text.u8x8_d_st7567_enh_dg128064,"ax",@progbits
	.literal_position
	.literal .LC19, u8x8_st7567_enh_dg128064_display_info
	.literal .LC20, u8x8_d_st7567_n_flip0_seq
	.literal .LC21, u8x8_d_st7567_n_flip1_seq
	.align	4
	.global	u8x8_d_st7567_enh_dg128064
	.type	u8x8_d_st7567_enh_dg128064, @function
u8x8_d_st7567_enh_dg128064:
.LFB3:
	.loc 1 526 0
.LVL94:
	entry	sp, 32
.LCFI3:
	.loc 1 526 0
	extui	a11, a3, 0, 8
	.loc 1 527 0
	movi.n	a8, 9
	.loc 1 526 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 527 0
	beq	a11, a8, .L57
	movi.n	a8, 0xd
	beq	a11, a8, .L58
	j	.L61
.L57:
	.loc 1 530 0
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL95:
	j	.L63
.L58:
	.loc 1 533 0
	bnez.n	a12, .L60
	.loc 1 535 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL96:
	.loc 1 536 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 18
	j	.L62
.L60:
	.loc 1 540 0
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL97:
	.loc 1 541 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 19
.L62:
	s8i	a8, a2, 34
.L63:
	.loc 1 547 0
	movi.n	a2, 1
.LVL98:
	retw.n
.LVL99:
.L61:
	.loc 1 545 0
	mov.n	a10, a2
	call8	u8x8_d_st7567_enh_dg128064_generic
.LVL100:
	mov.n	a2, a10
.LVL101:
	.loc 1 548 0
	retw.n
.LFE3:
	.size	u8x8_d_st7567_enh_dg128064, .-u8x8_d_st7567_enh_dg128064
	.section	.text.u8x8_d_st7567_enh_dg128064i,"ax",@progbits
	.literal_position
	.literal .LC22, u8x8_st7567_enh_dg128064i_display_info
	.literal .LC23, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC24, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_enh_dg128064i
	.type	u8x8_d_st7567_enh_dg128064i, @function
u8x8_d_st7567_enh_dg128064i:
.LFB4:
	.loc 1 551 0
.LVL102:
	entry	sp, 32
.LCFI4:
	.loc 1 551 0
	extui	a11, a3, 0, 8
	.loc 1 552 0
	movi.n	a8, 9
	.loc 1 551 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 552 0
	beq	a11, a8, .L66
	movi.n	a8, 0xd
	beq	a11, a8, .L67
	j	.L70
.L66:
	.loc 1 555 0
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL103:
	j	.L72
.L67:
	.loc 1 558 0
	bnez.n	a12, .L69
	.loc 1 560 0
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL104:
	.loc 1 561 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 18
	j	.L71
.L69:
	.loc 1 565 0
	l32r	a11, .LC24
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL105:
	.loc 1 566 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 19
.L71:
	s8i	a8, a2, 34
.L72:
	.loc 1 572 0
	movi.n	a2, 1
.LVL106:
	retw.n
.LVL107:
.L70:
	.loc 1 570 0
	mov.n	a10, a2
	call8	u8x8_d_st7567_enh_dg128064_generic
.LVL108:
	mov.n	a2, a10
.LVL109:
	.loc 1 573 0
	retw.n
.LFE4:
	.size	u8x8_d_st7567_enh_dg128064i, .-u8x8_d_st7567_enh_dg128064i
	.section	.text.u8x8_d_st7567_64x32,"ax",@progbits
	.literal_position
	.literal .LC25, .L76
	.literal .LC26, u8x8_st7567_64x32_display_info
	.literal .LC27, u8x8_st7567_64x32_init_seq
	.literal .LC28, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC29, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC30, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC31, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_64x32
	.type	u8x8_d_st7567_64x32, @function
u8x8_d_st7567_64x32:
.LFB5:
	.loc 1 640 0
.LVL110:
	entry	sp, 32
.LCFI5:
	.loc 1 643 0
	addi	a3, a3, -9
.LVL111:
	extui	a3, a3, 0, 8
	.loc 1 640 0
	extui	a4, a4, 0, 8
	.loc 1 643 0
	bgeui	a3, 7, .L86
	l32r	a6, .LC25
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_64x32,"a",@progbits
	.align	4
	.align	4
.L76:
	.word	.L75
	.word	.L77
	.word	.L78
	.word	.L86
	.word	.L79
	.word	.L80
	.word	.L81
	.section	.text.u8x8_d_st7567_64x32
.L75:
	.loc 1 646 0
	l32r	a11, .LC26
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL112:
	j	.L88
.L77:
	.loc 1 649 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL113:
	.loc 1 650 0
	l32r	a11, .LC27
	j	.L91
.L78:
	.loc 1 654 0
	l32r	a11, .LC28
	.loc 1 653 0
	beqz.n	a4, .L91
.L82:
	.loc 1 656 0
	l32r	a11, .LC29
.L91:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL114:
	j	.L88
.L79:
	.loc 1 659 0
	bnez.n	a4, .L83
	.loc 1 661 0
	l32r	a11, .LC30
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL115:
	.loc 1 662 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L90
.L83:
	.loc 1 666 0
	l32r	a11, .LC31
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL116:
	.loc 1 667 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L90:
	s8i	a3, a2, 34
	j	.L88
.L80:
	.loc 1 672 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL117:
	.loc 1 673 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL118:
	.loc 1 674 0
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL119:
.L89:
	.loc 1 675 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL120:
.L88:
	.loc 1 712 0
	movi.n	a2, 1
.LVL121:
	.loc 1 676 0
	retw.n
.LVL122:
.L81:
	.loc 1 679 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL123:
	.loc 1 681 0
	l8ui	a3, a5, 5
.LVL124:
	.loc 1 683 0
	l8ui	a6, a2, 34
	.loc 1 684 0
	mov.n	a10, a2
	.loc 1 683 0
	addx8	a3, a3, a6
.LVL125:
	extui	a6, a3, 0, 8
.LVL126:
	.loc 1 684 0
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL127:
	or	a11, a11, a3
	call8	u8x8_cad_SendCmd
.LVL128:
	.loc 1 685 0
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL129:
	.loc 1 686 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL130:
	.loc 1 688 0
	l8ui	a8, a5, 4
.LVL131:
	.loc 1 696 0
	movi	a9, 0x84
	.loc 1 689 0
	slli	a8, a8, 3
	extui	a3, a8, 0, 8
.LVL132:
	.loc 1 696 0
	add.n	a8, a3, a6
.LVL133:
	.loc 1 690 0
	l32i.n	a5, a5, 0
.LVL134:
	.loc 1 696 0
	bge	a9, a8, .L85
.LVL135:
	.loc 1 699 0
	movi	a8, -0x7c
	sub	a3, a8, a6
	extui	a3, a3, 0, 8
.LVL136:
.L85:
	.loc 1 704 0 discriminator 1
	addi.n	a4, a4, -1
.LVL137:
	.loc 1 703 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 704 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL138:
	.loc 1 703 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL139:
	.loc 1 705 0 discriminator 1
	bnez.n	a4, .L85
	j	.L89
.LVL140:
.L86:
	.loc 1 710 0
	movi.n	a2, 0
.LVL141:
	.loc 1 713 0
	retw.n
.LFE5:
	.size	u8x8_d_st7567_64x32, .-u8x8_d_st7567_64x32
	.section	.text.u8x8_d_st7567_hem6432,"ax",@progbits
	.literal_position
	.literal .LC32, .L95
	.literal .LC33, u8x8_st7567_hem6432_display_info
	.literal .LC34, u8x8_st7567_hem6432_init_seq
	.literal .LC35, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC36, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC37, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC38, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_hem6432
	.type	u8x8_d_st7567_hem6432, @function
u8x8_d_st7567_hem6432:
.LFB6:
	.loc 1 778 0
.LVL142:
	entry	sp, 32
.LCFI6:
	.loc 1 781 0
	addi	a3, a3, -9
.LVL143:
	extui	a3, a3, 0, 8
	.loc 1 778 0
	extui	a4, a4, 0, 8
	.loc 1 781 0
	bgeui	a3, 7, .L105
	l32r	a6, .LC32
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_hem6432,"a",@progbits
	.align	4
	.align	4
.L95:
	.word	.L94
	.word	.L96
	.word	.L97
	.word	.L105
	.word	.L98
	.word	.L99
	.word	.L100
	.section	.text.u8x8_d_st7567_hem6432
.L94:
	.loc 1 784 0
	l32r	a11, .LC33
	mov.n	a10, a2
	.loc 1 785 0
	movi	a3, 0x7e
	.loc 1 784 0
	call8	u8x8_d_helper_display_setup_memory
.LVL144:
	.loc 1 785 0
	s8i	a3, a2, 36
	j	.L107
.L96:
	.loc 1 788 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL145:
	.loc 1 789 0
	l32r	a11, .LC34
	j	.L110
.L97:
	.loc 1 793 0
	l32r	a11, .LC35
	.loc 1 792 0
	beqz.n	a4, .L110
.L101:
	.loc 1 795 0
	l32r	a11, .LC36
.L110:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL146:
	j	.L107
.L98:
	.loc 1 798 0
	bnez.n	a4, .L102
	.loc 1 800 0
	l32r	a11, .LC37
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL147:
	.loc 1 801 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L109
.L102:
	.loc 1 805 0
	l32r	a11, .LC38
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL148:
	.loc 1 806 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L109:
	s8i	a3, a2, 34
	j	.L107
.L99:
	.loc 1 811 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL149:
	.loc 1 812 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL150:
	.loc 1 813 0
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL151:
.L108:
	.loc 1 814 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL152:
.L107:
	.loc 1 851 0
	movi.n	a2, 1
.LVL153:
	.loc 1 815 0
	retw.n
.LVL154:
.L100:
	.loc 1 818 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL155:
	.loc 1 820 0
	l8ui	a3, a5, 5
.LVL156:
	.loc 1 822 0
	l8ui	a6, a2, 34
	.loc 1 823 0
	mov.n	a10, a2
	.loc 1 822 0
	addx8	a3, a3, a6
.LVL157:
	extui	a6, a3, 0, 8
.LVL158:
	.loc 1 823 0
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL159:
	or	a11, a11, a3
	call8	u8x8_cad_SendCmd
.LVL160:
	.loc 1 824 0
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL161:
	.loc 1 825 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL162:
	.loc 1 827 0
	l8ui	a8, a5, 4
.LVL163:
	.loc 1 835 0
	movi	a9, 0x84
	.loc 1 828 0
	slli	a8, a8, 3
	extui	a3, a8, 0, 8
.LVL164:
	.loc 1 835 0
	add.n	a8, a3, a6
.LVL165:
	.loc 1 829 0
	l32i.n	a5, a5, 0
.LVL166:
	.loc 1 835 0
	bge	a9, a8, .L104
.LVL167:
	.loc 1 838 0
	movi	a8, -0x7c
	sub	a3, a8, a6
	extui	a3, a3, 0, 8
.LVL168:
.L104:
	.loc 1 843 0 discriminator 1
	addi.n	a4, a4, -1
.LVL169:
	.loc 1 842 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 843 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL170:
	.loc 1 842 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL171:
	.loc 1 844 0 discriminator 1
	bnez.n	a4, .L104
	j	.L108
.LVL172:
.L105:
	.loc 1 849 0
	movi.n	a2, 0
.LVL173:
	.loc 1 852 0
	retw.n
.LFE6:
	.size	u8x8_d_st7567_hem6432, .-u8x8_d_st7567_hem6432
	.section	.text.u8x8_d_st7567_os12864,"ax",@progbits
	.literal_position
	.literal .LC39, .L114
	.literal .LC40, u8x8_st7567_os12864_display_info
	.literal .LC41, u8x8_st7567_os12864_init_seq
	.literal .LC42, u8x8_d_st7567_132x64_powersave0_seq
	.literal .LC43, u8x8_d_st7567_132x64_powersave1_seq
	.literal .LC44, u8x8_d_st7567_132x64_flip0_seq
	.literal .LC45, u8x8_d_st7567_132x64_flip1_seq
	.align	4
	.global	u8x8_d_st7567_os12864
	.type	u8x8_d_st7567_os12864, @function
u8x8_d_st7567_os12864:
.LFB7:
	.loc 1 925 0
.LVL174:
	entry	sp, 32
.LCFI7:
	.loc 1 928 0
	addi	a3, a3, -9
.LVL175:
	extui	a3, a3, 0, 8
	.loc 1 925 0
	extui	a4, a4, 0, 8
	.loc 1 928 0
	bgeui	a3, 7, .L124
	l32r	a6, .LC39
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7567_os12864,"a",@progbits
	.align	4
	.align	4
.L114:
	.word	.L113
	.word	.L115
	.word	.L116
	.word	.L124
	.word	.L117
	.word	.L118
	.word	.L119
	.section	.text.u8x8_d_st7567_os12864
.L113:
	.loc 1 931 0
	l32r	a11, .LC40
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL176:
	j	.L126
.L115:
	.loc 1 934 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL177:
	.loc 1 935 0
	l32r	a11, .LC41
	j	.L129
.L116:
	.loc 1 939 0
	l32r	a11, .LC42
	.loc 1 938 0
	beqz.n	a4, .L129
.L120:
	.loc 1 941 0
	l32r	a11, .LC43
.L129:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL178:
	j	.L126
.L117:
	.loc 1 944 0
	bnez.n	a4, .L121
	.loc 1 946 0
	l32r	a11, .LC44
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL179:
	.loc 1 947 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L128
.L121:
	.loc 1 951 0
	l32r	a11, .LC45
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL180:
	.loc 1 952 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L128:
	s8i	a3, a2, 34
	j	.L126
.L118:
	.loc 1 957 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL181:
	.loc 1 958 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL182:
	.loc 1 959 0
	srli	a11, a4, 2
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL183:
.L127:
	.loc 1 960 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL184:
.L126:
	.loc 1 997 0
	movi.n	a2, 1
.LVL185:
	.loc 1 961 0
	retw.n
.LVL186:
.L119:
	.loc 1 964 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL187:
	.loc 1 966 0
	l8ui	a3, a5, 5
.LVL188:
	.loc 1 968 0
	l8ui	a6, a2, 34
	.loc 1 969 0
	mov.n	a10, a2
	.loc 1 968 0
	addx8	a3, a3, a6
.LVL189:
	extui	a6, a3, 0, 8
.LVL190:
	.loc 1 969 0
	srli	a11, a6, 4
	movi.n	a3, 0x10
.LVL191:
	or	a11, a11, a3
	call8	u8x8_cad_SendCmd
.LVL192:
	.loc 1 970 0
	extui	a11, a6, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL193:
	.loc 1 971 0
	l8ui	a11, a5, 6
	movi	a3, -0x50
	or	a11, a11, a3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL194:
	.loc 1 973 0
	l8ui	a8, a5, 4
.LVL195:
	.loc 1 981 0
	movi	a9, 0x84
	.loc 1 974 0
	slli	a8, a8, 3
	extui	a3, a8, 0, 8
.LVL196:
	.loc 1 981 0
	add.n	a8, a3, a6
.LVL197:
	.loc 1 975 0
	l32i.n	a5, a5, 0
.LVL198:
	.loc 1 981 0
	bge	a9, a8, .L123
.LVL199:
	.loc 1 984 0
	movi	a8, -0x7c
	sub	a3, a8, a6
	extui	a3, a3, 0, 8
.LVL200:
.L123:
	.loc 1 989 0 discriminator 1
	addi.n	a4, a4, -1
.LVL201:
	.loc 1 988 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 989 0 discriminator 1
	extui	a4, a4, 0, 8
.LVL202:
	.loc 1 988 0 discriminator 1
	call8	u8x8_cad_SendData
.LVL203:
	.loc 1 990 0 discriminator 1
	bnez.n	a4, .L123
	j	.L127
.LVL204:
.L124:
	.loc 1 995 0
	movi.n	a2, 0
.LVL205:
	.loc 1 998 0
	retw.n
.LFE7:
	.size	u8x8_d_st7567_os12864, .-u8x8_d_st7567_os12864
	.section	.rodata.u8x8_st7567_os12864_init_seq,"a",@progbits
	.type	u8x8_st7567_os12864_init_seq, @object
	.size	u8x8_st7567_os12864_init_seq, 39
u8x8_st7567_os12864_init_seq:
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
	.byte	-93
	.byte	21
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	38
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
	.section	.rodata.u8x8_st7567_os12864_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7567_os12864_display_info, @object
	.size	u8x8_st7567_os12864_display_info, 24
u8x8_st7567_os12864_display_info:
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
	.section	.rodata.u8x8_st7567_hem6432_init_seq,"a",@progbits
	.type	u8x8_st7567_hem6432_init_seq, @object
	.size	u8x8_st7567_hem6432_init_seq, 39
u8x8_st7567_hem6432_init_seq:
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
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	36
	.byte	21
	.byte	-127
	.byte	22
	.byte	56
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7567_hem6432_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7567_hem6432_display_info, @object
	.size	u8x8_st7567_hem6432_display_info, 24
u8x8_st7567_hem6432_display_info:
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
	.byte	8
	.byte	4
	.byte	36
	.byte	32
	.short	64
	.short	32
	.section	.rodata.u8x8_st7567_64x32_init_seq,"a",@progbits
	.type	u8x8_st7567_64x32_init_seq, @object
	.size	u8x8_st7567_64x32_init_seq, 39
u8x8_st7567_64x32_init_seq:
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
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	36
	.byte	21
	.byte	-127
	.byte	22
	.byte	32
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7567_64x32_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7567_64x32_display_info, @object
	.size	u8x8_st7567_64x32_display_info, 24
u8x8_st7567_64x32_display_info:
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
	.byte	8
	.byte	4
	.byte	32
	.byte	32
	.short	64
	.short	32
	.section	.rodata.u8x8_st7567_enh_dg128064_init_seq,"a",@progbits
	.type	u8x8_st7567_enh_dg128064_init_seq, @object
	.size	u8x8_st7567_enh_dg128064_init_seq, 39
u8x8_st7567_enh_dg128064_init_seq:
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
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	35
	.byte	21
	.byte	-127
	.byte	22
	.byte	50
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7567_enh_dg128064i_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7567_enh_dg128064i_display_info, @object
	.size	u8x8_st7567_enh_dg128064i_display_info, 24
u8x8_st7567_enh_dg128064i_display_info:
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
	.section	.rodata.u8x8_st7567_enh_dg128064_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7567_enh_dg128064_display_info, @object
	.size	u8x8_st7567_enh_dg128064_display_info, 24
u8x8_st7567_enh_dg128064_display_info:
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
	.section	.rodata.u8x8_st7567_jlx12864_init_seq,"a",@progbits
	.type	u8x8_st7567_jlx12864_init_seq, @object
	.size	u8x8_st7567_jlx12864_init_seq, 39
u8x8_st7567_jlx12864_init_seq:
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
	.byte	-93
	.byte	21
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
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
	.section	.rodata.u8x8_st7567_jlx12864_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7567_jlx12864_display_info, @object
	.size	u8x8_st7567_jlx12864_display_info, 24
u8x8_st7567_jlx12864_display_info:
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
	.section	.rodata.u8x8_d_st7567_132x64_init_seq,"a",@progbits
	.type	u8x8_d_st7567_132x64_init_seq, @object
	.size	u8x8_d_st7567_132x64_init_seq, 39
u8x8_d_st7567_132x64_init_seq:
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
	.byte	-93
	.byte	21
	.byte	44
	.byte	-2
	.byte	50
	.byte	21
	.byte	46
	.byte	-2
	.byte	50
	.byte	21
	.byte	47
	.byte	-2
	.byte	50
	.byte	21
	.byte	38
	.byte	21
	.byte	-127
	.byte	22
	.byte	39
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_st7567_132x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7567_132x64_display_info, @object
	.size	u8x8_st7567_132x64_display_info, 24
u8x8_st7567_132x64_display_info:
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
	.byte	8
	.byte	0
	.byte	0
	.short	132
	.short	64
	.section	.rodata.u8x8_d_st7567_n_flip1_seq,"a",@progbits
	.type	u8x8_d_st7567_n_flip1_seq, @object
	.size	u8x8_d_st7567_n_flip1_seq, 7
u8x8_d_st7567_n_flip1_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_n_flip0_seq,"a",@progbits
	.type	u8x8_d_st7567_n_flip0_seq, @object
	.size	u8x8_d_st7567_n_flip0_seq, 7
u8x8_d_st7567_n_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_flip1_seq,"a",@progbits
	.type	u8x8_d_st7567_132x64_flip1_seq, @object
	.size	u8x8_d_st7567_132x64_flip1_seq, 7
u8x8_d_st7567_132x64_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_flip0_seq,"a",@progbits
	.type	u8x8_d_st7567_132x64_flip0_seq, @object
	.size	u8x8_d_st7567_132x64_flip0_seq, 7
u8x8_d_st7567_132x64_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_powersave1_seq,"a",@progbits
	.type	u8x8_d_st7567_132x64_powersave1_seq, @object
	.size	u8x8_d_st7567_132x64_powersave1_seq, 7
u8x8_d_st7567_132x64_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-91
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7567_132x64_powersave0_seq,"a",@progbits
	.type	u8x8_d_st7567_132x64_powersave0_seq, @object
	.size	u8x8_d_st7567_132x64_powersave0_seq, 7
u8x8_d_st7567_132x64_powersave0_seq:
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1209
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
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
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51d
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x358
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x11ac
	.4byte	0x417
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
	.4byte	u8x8_st7567_enh_dg128064_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x11b8
	.4byte	0x42b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x11c4
	.4byte	0x43f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x11d0
	.4byte	0x453
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x11dc
	.4byte	0x46d
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
	.4byte	0x11e8
	.4byte	0x489
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
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x11f4
	.4byte	0x49d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x11d0
	.4byte	0x4b1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x11dc
	.4byte	0x4d0
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
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0x11dc
	.4byte	0x4ec
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
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL18
	.4byte	0x11dc
	.4byte	0x500
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x1200
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f8
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x99
	.4byte	0x32d
	.4byte	.LLST7
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0x99
	.4byte	0x9f
	.4byte	.LLST10
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x9b
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.byte	0x9b
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0x9c
	.4byte	0x358
	.4byte	.LLST13
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0x11ac
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
	.4byte	u8x8_st7567_132x64_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0x11b8
	.4byte	0x5cc
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0x11c4
	.4byte	0x5e0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL35
	.4byte	0x11c4
	.4byte	0x5fd
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL36
	.4byte	0x11c4
	.4byte	0x61a
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x11d0
	.4byte	0x62e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL38
	.4byte	0x11dc
	.4byte	0x648
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
	.4byte	.LVL39
	.4byte	0x11e8
	.4byte	0x664
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
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0x11f4
	.4byte	0x678
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL43
	.4byte	0x11d0
	.4byte	0x68c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL48
	.4byte	0x11dc
	.4byte	0x6ab
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
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL49
	.4byte	0x11dc
	.4byte	0x6c7
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
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL50
	.4byte	0x11dc
	.4byte	0x6db
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0x1200
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x129
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8db
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x129
	.4byte	0x32d
	.4byte	.LLST14
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.2byte	0x129
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x129
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x129
	.4byte	0x9f
	.4byte	.LLST17
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x7e
	.4byte	.LLST18
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x358
	.4byte	.LLST20
	.uleb128 0x13
	.4byte	.LVL64
	.4byte	0x11ac
	.4byte	0x79b
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
	.4byte	u8x8_st7567_jlx12864_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL65
	.4byte	0x11b8
	.4byte	0x7af
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL66
	.4byte	0x11c4
	.4byte	0x7c3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL67
	.4byte	0x11c4
	.4byte	0x7e0
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL68
	.4byte	0x11c4
	.4byte	0x7fd
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL69
	.4byte	0x11d0
	.4byte	0x811
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL70
	.4byte	0x11dc
	.4byte	0x82b
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
	.4byte	.LVL71
	.4byte	0x11e8
	.4byte	0x847
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
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL72
	.4byte	0x11f4
	.4byte	0x85b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL75
	.4byte	0x11d0
	.4byte	0x86f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL80
	.4byte	0x11dc
	.4byte	0x88e
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
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL81
	.4byte	0x11dc
	.4byte	0x8aa
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
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL82
	.4byte	0x11dc
	.4byte	0x8be
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL91
	.4byte	0x1200
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x20d
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x997
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x20d
	.4byte	0x32d
	.4byte	.LLST21
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x20d
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x20d
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL95
	.4byte	0x11ac
	.4byte	0x94c
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
	.4byte	u8x8_st7567_enh_dg128064_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL96
	.4byte	0x11c4
	.4byte	0x969
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
	.4byte	u8x8_d_st7567_n_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL97
	.4byte	0x11c4
	.4byte	0x986
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
	.4byte	u8x8_d_st7567_n_flip1_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL100
	.4byte	0x374
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x226
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa53
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x226
	.4byte	0x32d
	.4byte	.LLST22
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.2byte	0x226
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x226
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x226
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL103
	.4byte	0x11ac
	.4byte	0xa08
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
	.4byte	u8x8_st7567_enh_dg128064i_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL104
	.4byte	0x11c4
	.4byte	0xa25
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL105
	.4byte	0x11c4
	.4byte	0xa42
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL108
	.4byte	0x374
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x27f
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc36
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x27f
	.4byte	0x32d
	.4byte	.LLST23
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.2byte	0x27f
	.4byte	0x7e
	.4byte	.LLST24
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x27f
	.4byte	0x7e
	.4byte	.LLST25
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x27f
	.4byte	0x9f
	.4byte	.LLST26
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.2byte	0x281
	.4byte	0x7e
	.4byte	.LLST27
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.2byte	0x281
	.4byte	0x7e
	.4byte	.LLST28
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.2byte	0x282
	.4byte	0x358
	.4byte	.LLST29
	.uleb128 0x13
	.4byte	.LVL112
	.4byte	0x11ac
	.4byte	0xaf6
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
	.4byte	u8x8_st7567_64x32_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL113
	.4byte	0x11b8
	.4byte	0xb0a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL114
	.4byte	0x11c4
	.4byte	0xb1e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL115
	.4byte	0x11c4
	.4byte	0xb3b
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL116
	.4byte	0x11c4
	.4byte	0xb58
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL117
	.4byte	0x11d0
	.4byte	0xb6c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL118
	.4byte	0x11dc
	.4byte	0xb86
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
	.4byte	.LVL119
	.4byte	0x11e8
	.4byte	0xba2
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
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL120
	.4byte	0x11f4
	.4byte	0xbb6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL123
	.4byte	0x11d0
	.4byte	0xbca
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL128
	.4byte	0x11dc
	.4byte	0xbe9
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
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL129
	.4byte	0x11dc
	.4byte	0xc05
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
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL130
	.4byte	0x11dc
	.4byte	0xc19
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL139
	.4byte	0x1200
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x309
	.4byte	0x7e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe19
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x309
	.4byte	0x32d
	.4byte	.LLST30
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.2byte	0x309
	.4byte	0x7e
	.4byte	.LLST31
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x309
	.4byte	0x7e
	.4byte	.LLST32
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x309
	.4byte	0x9f
	.4byte	.LLST33
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x7e
	.4byte	.LLST34
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x7e
	.4byte	.LLST35
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.2byte	0x30c
	.4byte	0x358
	.4byte	.LLST36
	.uleb128 0x13
	.4byte	.LVL144
	.4byte	0x11ac
	.4byte	0xcd9
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
	.4byte	u8x8_st7567_hem6432_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL145
	.4byte	0x11b8
	.4byte	0xced
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL146
	.4byte	0x11c4
	.4byte	0xd01
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL147
	.4byte	0x11c4
	.4byte	0xd1e
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL148
	.4byte	0x11c4
	.4byte	0xd3b
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL149
	.4byte	0x11d0
	.4byte	0xd4f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL150
	.4byte	0x11dc
	.4byte	0xd69
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
	.4byte	.LVL151
	.4byte	0x11e8
	.4byte	0xd85
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
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL152
	.4byte	0x11f4
	.4byte	0xd99
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL155
	.4byte	0x11d0
	.4byte	0xdad
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL160
	.4byte	0x11dc
	.4byte	0xdcc
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
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL161
	.4byte	0x11dc
	.4byte	0xde8
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
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL162
	.4byte	0x11dc
	.4byte	0xdfc
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL171
	.4byte	0x1200
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x39c
	.4byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffc
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x39c
	.4byte	0x32d
	.4byte	.LLST37
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x7e
	.4byte	.LLST38
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x39c
	.4byte	0x7e
	.4byte	.LLST39
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x39c
	.4byte	0x9f
	.4byte	.LLST40
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.2byte	0x39e
	.4byte	0x7e
	.4byte	.LLST41
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.2byte	0x39e
	.4byte	0x7e
	.4byte	.LLST42
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.2byte	0x39f
	.4byte	0x358
	.4byte	.LLST43
	.uleb128 0x13
	.4byte	.LVL176
	.4byte	0x11ac
	.4byte	0xebc
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
	.4byte	u8x8_st7567_os12864_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL177
	.4byte	0x11b8
	.4byte	0xed0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL178
	.4byte	0x11c4
	.4byte	0xee4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL179
	.4byte	0x11c4
	.4byte	0xf01
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
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL180
	.4byte	0x11c4
	.4byte	0xf1e
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
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.byte	0
	.uleb128 0x13
	.4byte	.LVL181
	.4byte	0x11d0
	.4byte	0xf32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL182
	.4byte	0x11dc
	.4byte	0xf4c
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
	.4byte	.LVL183
	.4byte	0x11e8
	.4byte	0xf68
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
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL184
	.4byte	0x11f4
	.4byte	0xf7c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL187
	.4byte	0x11d0
	.4byte	0xf90
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL192
	.4byte	0x11dc
	.4byte	0xfaf
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
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LVL193
	.4byte	0x11dc
	.4byte	0xfcb
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
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL194
	.4byte	0x11dc
	.4byte	0xfdf
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL203
	.4byte	0x1200
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x100c
	.uleb128 0x1e
	.4byte	0x100c
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF72
	.uleb128 0x1f
	.4byte	.LASF73
	.byte	0x1
	.byte	0x29
	.4byte	0x1024
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_powersave0_seq
	.uleb128 0xe
	.4byte	0xffc
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x1
	.byte	0x31
	.4byte	0x103a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_powersave1_seq
	.uleb128 0xe
	.4byte	0xffc
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.byte	0x39
	.4byte	0x1050
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_flip0_seq
	.uleb128 0xe
	.4byte	0xffc
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.byte	0x41
	.4byte	0x1066
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_flip1_seq
	.uleb128 0xe
	.4byte	0xffc
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0x49
	.4byte	0x107c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_n_flip0_seq
	.uleb128 0xe
	.4byte	0xffc
	.uleb128 0x1f
	.4byte	.LASF78
	.byte	0x1
	.byte	0x51
	.4byte	0x1092
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_n_flip1_seq
	.uleb128 0xe
	.4byte	0xffc
	.uleb128 0x1f
	.4byte	.LASF79
	.byte	0x1
	.byte	0x5e
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_132x64_display_info
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0x10b8
	.uleb128 0x1e
	.4byte	0x100c
	.byte	0x26
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF80
	.byte	0x1
	.byte	0x76
	.4byte	0x10c9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7567_132x64_init_seq
	.uleb128 0xe
	.4byte	0x10a8
	.uleb128 0x1f
	.4byte	.LASF81
	.byte	0x1
	.byte	0xee
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_jlx12864_display_info
	.uleb128 0x20
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x106
	.4byte	0x10f1
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_jlx12864_init_seq
	.uleb128 0xe
	.4byte	0x10a8
	.uleb128 0x20
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x17a
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_enh_dg128064_display_info
	.uleb128 0x20
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x192
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_enh_dg128064i_display_info
	.uleb128 0x20
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x112c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_enh_dg128064_init_seq
	.uleb128 0xe
	.4byte	0x10a8
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x243
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_64x32_display_info
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x25b
	.4byte	0x1155
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_64x32_init_seq
	.uleb128 0xe
	.4byte	0x10a8
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x2cf
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_hem6432_display_info
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x2e7
	.4byte	0x117e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_hem6432_init_seq
	.uleb128 0xe
	.4byte	0x10a8
	.uleb128 0x20
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x361
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_os12864_display_info
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x379
	.4byte	0x11a7
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7567_os12864_init_seq
	.uleb128 0xe
	.4byte	0x10a8
	.uleb128 0x21
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x21
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x21
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x278
	.uleb128 0x21
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x259
	.uleb128 0x21
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x255
	.uleb128 0x21
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x256
	.uleb128 0x21
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x21
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x258
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
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
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
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
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
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
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL110
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL122
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL134
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
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
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL134
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL142
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL142
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL142
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL166
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
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
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL166
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL174
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL174
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL186
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
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL174
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL198
	.4byte	.LVL204
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190
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
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL198
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
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
.LASF93:
	.string	"u8x8_d_helper_display_init"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF75:
	.string	"u8x8_d_st7567_132x64_flip0_seq"
.LASF95:
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
.LASF72:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF81:
	.string	"u8x8_st7567_jlx12864_display_info"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF89:
	.string	"u8x8_st7567_hem6432_init_seq"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF79:
	.string	"u8x8_st7567_132x64_display_info"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF73:
	.string	"u8x8_d_st7567_132x64_powersave0_seq"
.LASF62:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF63:
	.string	"arg_int"
.LASF67:
	.string	"u8x8_d_st7567_enh_dg128064"
.LASF99:
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
.LASF96:
	.string	"u8x8_cad_SendCmd"
.LASF82:
	.string	"u8x8_st7567_jlx12864_init_seq"
.LASF98:
	.string	"u8x8_cad_EndTransfer"
.LASF101:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7567.c"
.LASF58:
	.string	"x_pos"
.LASF76:
	.string	"u8x8_d_st7567_132x64_flip1_seq"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF47:
	.string	"data_setup_time_ns"
.LASF87:
	.string	"u8x8_st7567_64x32_init_seq"
.LASF68:
	.string	"u8x8_d_st7567_enh_dg128064i"
.LASF84:
	.string	"u8x8_st7567_enh_dg128064i_display_info"
.LASF50:
	.string	"tile_height"
.LASF1:
	.string	"unsigned char"
.LASF90:
	.string	"u8x8_st7567_os12864_display_info"
.LASF77:
	.string	"u8x8_d_st7567_n_flip0_seq"
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
.LASF71:
	.string	"u8x8_d_st7567_os12864"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF44:
	.string	"sck_clock_hz"
.LASF74:
	.string	"u8x8_d_st7567_132x64_powersave1_seq"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF69:
	.string	"u8x8_d_st7567_64x32"
.LASF80:
	.string	"u8x8_d_st7567_132x64_init_seq"
.LASF14:
	.string	"display_info"
.LASF91:
	.string	"u8x8_st7567_os12864_init_seq"
.LASF54:
	.string	"pixel_height"
.LASF86:
	.string	"u8x8_st7567_64x32_display_info"
.LASF83:
	.string	"u8x8_st7567_enh_dg128064_display_info"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF94:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF103:
	.string	"u8x8_d_st7567_enh_dg128064_generic"
.LASF18:
	.string	"byte_cb"
.LASF66:
	.string	"u8x8_d_st7567_jlx12864"
.LASF88:
	.string	"u8x8_st7567_hem6432_display_info"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF70:
	.string	"u8x8_d_st7567_hem6432"
.LASF78:
	.string	"u8x8_d_st7567_n_flip1_seq"
.LASF26:
	.string	"i2c_started"
.LASF92:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF65:
	.string	"u8x8_d_st7567_pi_132x64"
.LASF102:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF97:
	.string	"u8x8_cad_SendArg"
.LASF100:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF15:
	.string	"next_cb"
.LASF85:
	.string	"u8x8_st7567_enh_dg128064_init_seq"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
