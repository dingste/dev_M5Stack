	.file	"u8x8_d_ssd1322.c"
	.text
.Ltext0:
	.section	.text.u8x8_ssd1322_4to32$isra$1,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_ssd1322_to32_dest_buf
	.align	4
	.type	u8x8_ssd1322_4to32$isra$1, @function
u8x8_ssd1322_4to32$isra$1:
.LFB7:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1322.c"
	.loc 1 123 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	l32r	a13, .LC2
	.loc 1 123 0
	movi.n	a8, 0
.LVL2:
.L3:
	.loc 1 134 0
	add.n	a9, a2, a8
.LVL3:
	l8ui	a10, a9, 0
	add.n	a11, a8, a13
.LVL4:
	mov.n	a14, a13
	movi.n	a9, 8
	loop	a9, .L2_LEND
.LVL5:
.L2:
	.loc 1 139 0
	extui	a12, a10, 0, 1
	.loc 1 140 0
	neg	a12, a12
	s8i	a12, a11, 0
	.loc 1 142 0
	srli	a10, a10, 1
.LVL6:
	.loc 1 141 0
	addi.n	a11, a11, 4
.LVL7:
	.loc 1 142 0
	.L2_LEND:
.LVL8:
	addi.n	a8, a8, 1
.LVL9:
	.loc 1 130 0
	bnei	a8, 4, .L3
	.loc 1 147 0
	mov.n	a2, a14
.LVL10:
	retw.n
.LFE7:
	.size	u8x8_ssd1322_4to32$isra$1, .-u8x8_ssd1322_4to32$isra$1
	.section	.text.u8x8_d_ssd1322_common,"ax",@progbits
	.literal_position
	.literal .LC5, u8x8_ssd1322_to32_dest_buf
	.literal .LC6, u8x8_d_ssd1322_powersave0_seq
	.literal .LC7, u8x8_d_ssd1322_powersave1_seq
	.align	4
	.global	u8x8_d_ssd1322_common
	.type	u8x8_d_ssd1322_common, @function
u8x8_d_ssd1322_common:
.LFB2:
	.loc 1 151 0
.LVL11:
	entry	sp, 48
.LCFI1:
	.loc 1 151 0
	extui	a3, a3, 0, 8
	.loc 1 155 0
	movi.n	a6, 0xe
	.loc 1 151 0
	extui	a4, a4, 0, 8
	.loc 1 155 0
	beq	a3, a6, .L8
	movi.n	a6, 0xf
	beq	a3, a6, .L9
	movi.n	a5, 0xb
.LVL12:
	bne	a3, a5, .L27
	.loc 1 168 0
	l32r	a11, .LC6
	.loc 1 167 0
	beqz.n	a4, .L30
.L11:
	.loc 1 170 0
	l32r	a11, .LC7
.L30:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL13:
	j	.L28
.LVL14:
.L8:
	.loc 1 174 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL15:
	.loc 1 175 0
	movi	a11, 0xc1
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL16:
	.loc 1 176 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL17:
.L29:
	.loc 1 177 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL18:
.L28:
	.loc 1 223 0
	movi.n	a2, 1
.LVL19:
	.loc 1 178 0
	retw.n
.LVL20:
.L9:
.LBB6:
.LBB7:
	.loc 1 181 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL21:
	.loc 1 184 0
	l8ui	a6, a2, 34
	.loc 1 182 0
	l8ui	a3, a5, 5
.LVL22:
	.loc 1 190 0
	movi	a11, 0x75
	.loc 1 184 0
	addx2	a3, a3, a6
.LVL23:
	.loc 1 186 0
	l8ui	a6, a5, 6
	.loc 1 190 0
	mov.n	a10, a2
	.loc 1 187 0
	slli	a6, a6, 3
	.loc 1 190 0
	call8	u8x8_cad_SendCmd
.LVL24:
	.loc 1 187 0
	extui	a6, a6, 0, 8
	.loc 1 191 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL25:
	.loc 1 192 0
	addi.n	a11, a6, 7
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 184 0
	extui	a3, a3, 0, 8
.LVL26:
	.loc 1 192 0
	call8	u8x8_cad_SendArg
.LVL27:
.L17:
	.loc 1 196 0
	l8ui	a6, a5, 4
	.loc 1 197 0
	l32i.n	a8, a5, 0
	.loc 1 196 0
	s32i.n	a6, sp, 4
.LVL28:
	mov.n	a7, a6
	.loc 1 197 0
	s32i.n	a8, sp, 0
.LVL29:
	mov.n	a6, a3
.LVL30:
.L16:
	.loc 1 201 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL31:
	.loc 1 202 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL32:
	.loc 1 203 0
	addi.n	a11, a6, 1
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL33:
	.loc 1 205 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL34:
	l32i.n	a10, sp, 0
	movi.n	a9, 0
.LVL35:
.L15:
	l32r	a11, .LC5
.LBB8:
.LBB9:
	.loc 1 112 0
	movi.n	a13, 8
	.loc 1 104 0
	l8ui	a14, a10, 0
	.loc 1 106 0
	l8ui	a12, a10, 1
	add.n	a15, a9, a11
.LVL36:
	addi.n	a10, a10, 2
.LVL37:
	.loc 1 112 0
	s32i.n	a13, sp, 12
.LVL38:
.L14:
	.loc 1 111 0
	extui	a8, a14, 0, 1
	movi	a11, 0xf0
	movi.n	a13, 0
	moveqz	a11, a13, a8
	s32i.n	a11, sp, 8
.LVL39:
	.loc 1 112 0
	bbc	a12, a13, .L13
	movi.n	a13, 0xf
	or	a8, a11, a13
	extui	a8, a8, 0, 8
	s32i.n	a8, sp, 8
.LVL40:
.L13:
	.loc 1 116 0
	l32i.n	a11, sp, 12
	.loc 1 113 0
	l32i.n	a8, sp, 8
	.loc 1 116 0
	addi.n	a11, a11, -1
	.loc 1 113 0
	s8i	a8, a15, 0
	.loc 1 116 0
	s32i.n	a11, sp, 12
	.loc 1 114 0
	addi.n	a15, a15, 4
.LVL41:
	.loc 1 115 0
	srli	a14, a14, 1
.LVL42:
	.loc 1 116 0
	srli	a12, a12, 1
.LVL43:
	bnez.n	a11, .L14
.LVL44:
	addi.n	a9, a9, 1
.LVL45:
	.loc 1 100 0
	bnei	a9, 4, .L15
.LBE9:
.LBE8:
	.loc 1 207 0
	l32r	a12, .LC5
.LVL46:
	movi.n	a11, 0x20
	mov.n	a10, a2
.LVL47:
	call8	u8x8_cad_SendData
.LVL48:
	.loc 1 209 0
	l32i.n	a13, sp, 0
	.loc 1 211 0
	addi.n	a7, a7, -1
.LVL49:
	.loc 1 209 0
	addi.n	a13, a13, 8
	.loc 1 210 0
	addi.n	a6, a6, 2
.LVL50:
	.loc 1 209 0
	s32i.n	a13, sp, 0
.LVL51:
	.loc 1 211 0
	extui	a7, a7, 0, 8
.LVL52:
	.loc 1 210 0
	extui	a6, a6, 0, 8
.LVL53:
	.loc 1 212 0
	bnez.n	a7, .L16
	l32i.n	a6, sp, 4
.LVL54:
	.loc 1 215 0
	addi.n	a4, a4, -1
.LVL55:
	addx2	a3, a6, a3
	extui	a4, a4, 0, 8
.LVL56:
	extui	a3, a3, 0, 8
	.loc 1 216 0
	bnez.n	a4, .L17
	j	.L29
.LVL57:
.L27:
.LBE7:
.LBE6:
	.loc 1 221 0
	movi.n	a2, 0
.LVL58:
	.loc 1 224 0
	retw.n
.LFE2:
	.size	u8x8_d_ssd1322_common, .-u8x8_d_ssd1322_common
	.section	.text.u8x8_d_ssd1322_nhd_256x64,"ax",@progbits
	.literal_position
	.literal .LC8, u8x8_ssd1322_256x64_display_info
	.literal .LC9, u8x8_d_ssd1322_256x64_init_seq
	.literal .LC10, u8x8_d_ssd1322_256x64_flip0_seq
	.literal .LC11, u8x8_d_ssd1322_256x64_flip1_seq
	.align	4
	.global	u8x8_d_ssd1322_nhd_256x64
	.type	u8x8_d_ssd1322_nhd_256x64, @function
u8x8_d_ssd1322_nhd_256x64:
.LFB3:
	.loc 1 304 0
.LVL59:
	entry	sp, 32
.LCFI2:
	.loc 1 304 0
	extui	a11, a3, 0, 8
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 305 0
	beqi	a11, 10, .L33
	movi.n	a8, 0xd
	beq	a11, a8, .L34
	movi.n	a8, 9
	bne	a11, a8, .L38
	.loc 1 308 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL60:
	j	.L39
.L33:
	.loc 1 311 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL61:
	.loc 1 312 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL62:
	j	.L39
.L34:
	.loc 1 315 0
	bnez.n	a12, .L37
	.loc 1 317 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL63:
	.loc 1 318 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 18
.L40:
	s8i	a8, a2, 34
.L39:
	.loc 1 330 0
	movi.n	a2, 1
.LVL64:
	retw.n
.LVL65:
.L37:
	.loc 1 322 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL66:
	.loc 1 323 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 19
	j	.L40
.L38:
	.loc 1 328 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1322_common
.LVL67:
	mov.n	a2, a10
.LVL68:
	.loc 1 331 0
	retw.n
.LFE3:
	.size	u8x8_d_ssd1322_nhd_256x64, .-u8x8_d_ssd1322_nhd_256x64
	.section	.text.u8x8_d_ssd1322_common2,"ax",@progbits
	.literal_position
	.literal .LC12, u8x8_d_ssd1322_powersave0_seq
	.literal .LC13, u8x8_d_ssd1322_powersave1_seq
	.align	4
	.global	u8x8_d_ssd1322_common2
	.type	u8x8_d_ssd1322_common2, @function
u8x8_d_ssd1322_common2:
.LFB4:
	.loc 1 343 0
.LVL69:
	entry	sp, 48
.LCFI3:
	.loc 1 343 0
	extui	a3, a3, 0, 8
	.loc 1 347 0
	movi.n	a6, 0xe
	.loc 1 343 0
	extui	a4, a4, 0, 8
	.loc 1 347 0
	beq	a3, a6, .L43
	movi.n	a6, 0xf
	beq	a3, a6, .L44
	movi.n	a5, 0xb
.LVL70:
	bne	a3, a5, .L52
	.loc 1 360 0
	l32r	a11, .LC12
	.loc 1 359 0
	beqz.n	a4, .L55
.L46:
	.loc 1 362 0
	l32r	a11, .LC13
.L55:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL71:
	j	.L53
.LVL72:
.L43:
	.loc 1 366 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL73:
	.loc 1 367 0
	movi	a11, 0xc1
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL74:
	.loc 1 368 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL75:
.L54:
	.loc 1 369 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL76:
.L53:
	.loc 1 422 0
	movi.n	a2, 1
.LVL77:
	.loc 1 370 0
	retw.n
.LVL78:
.L44:
.LBB12:
.LBB13:
	.loc 1 373 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL79:
	.loc 1 374 0
	l8ui	a3, a5, 5
.LVL80:
	.loc 1 378 0
	l8ui	a6, a2, 34
	.loc 1 383 0
	movi	a11, 0x75
	.loc 1 378 0
	addx4	a6, a3, a6
	.loc 1 380 0
	l8ui	a3, a5, 6
.LVL81:
	.loc 1 383 0
	mov.n	a10, a2
	.loc 1 381 0
	slli	a3, a3, 3
	.loc 1 383 0
	call8	u8x8_cad_SendCmd
.LVL82:
	.loc 1 381 0
	extui	a3, a3, 0, 8
	.loc 1 384 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL83:
	.loc 1 385 0
	addi.n	a11, a3, 7
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 378 0
	extui	a6, a6, 0, 8
.LVL84:
	.loc 1 385 0
	call8	u8x8_cad_SendArg
.LVL85:
.L48:
	.loc 1 389 0
	l8ui	a9, a5, 4
.LVL86:
	.loc 1 390 0
	l32i.n	a7, a5, 0
.LVL87:
	.loc 1 389 0
	mov.n	a8, a9
	.loc 1 390 0
	mov.n	a3, a6
.LVL88:
.L47:
	.loc 1 394 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 0
	call8	u8x8_cad_SendCmd
.LVL89:
	.loc 1 395 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL90:
	.loc 1 396 0
	addi.n	a11, a3, 1
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL91:
	.loc 1 397 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL92:
	.loc 1 398 0
	mov.n	a10, a7
	call8	u8x8_ssd1322_4to32$isra$1
.LVL93:
	mov.n	a12, a10
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL94:
	.loc 1 402 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL95:
	.loc 1 403 0
	addi.n	a11, a3, 2
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL96:
	.loc 1 404 0
	addi.n	a11, a3, 3
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL97:
	.loc 1 405 0
	movi.n	a11, 0x5c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL98:
	.loc 1 406 0
	addi.n	a10, a7, 4
.LVL99:
	call8	u8x8_ssd1322_4to32$isra$1
.LVL100:
	mov.n	a12, a10
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL101:
	.loc 1 410 0
	l32i.n	a8, sp, 4
	.loc 1 408 0
	addi.n	a3, a3, 4
.LVL102:
	.loc 1 410 0
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	addi.n	a7, a7, 8
.LVL103:
	.loc 1 408 0
	extui	a3, a3, 0, 8
.LVL104:
	.loc 1 411 0
	l32i.n	a9, sp, 0
	bnez.n	a8, .L47
	.loc 1 414 0
	addi.n	a4, a4, -1
.LVL105:
	addx4	a6, a9, a6
	extui	a4, a4, 0, 8
.LVL106:
	extui	a6, a6, 0, 8
	.loc 1 415 0
	bnez.n	a4, .L48
	j	.L54
.LVL107:
.L52:
.LBE13:
.LBE12:
	.loc 1 420 0
	movi.n	a2, 0
.LVL108:
	.loc 1 423 0
	retw.n
.LFE4:
	.size	u8x8_d_ssd1322_common2, .-u8x8_d_ssd1322_common2
	.section	.text.u8x8_d_ssd1322_nhd_128x64,"ax",@progbits
	.literal_position
	.literal .LC14, u8x8_ssd1322_128x64_display_info
	.literal .LC15, u8x8_d_ssd1322_128x64_init_seq
	.literal .LC16, u8x8_d_ssd1322_128x64_flip0_seq
	.literal .LC17, u8x8_d_ssd1322_128x64_flip1_seq
	.align	4
	.global	u8x8_d_ssd1322_nhd_128x64
	.type	u8x8_d_ssd1322_nhd_128x64, @function
u8x8_d_ssd1322_nhd_128x64:
.LFB5:
	.loc 1 505 0
.LVL109:
	entry	sp, 32
.LCFI4:
	.loc 1 505 0
	extui	a11, a3, 0, 8
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 506 0
	beqi	a11, 10, .L58
	movi.n	a8, 0xd
	beq	a11, a8, .L59
	movi.n	a8, 9
	bne	a11, a8, .L63
	.loc 1 509 0
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL110:
	j	.L64
.L58:
	.loc 1 512 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL111:
	.loc 1 513 0
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL112:
	j	.L64
.L59:
	.loc 1 516 0
	bnez.n	a12, .L62
	.loc 1 518 0
	l32r	a11, .LC16
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL113:
	.loc 1 519 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 18
.L65:
	s8i	a8, a2, 34
.L64:
	.loc 1 531 0
	movi.n	a2, 1
.LVL114:
	retw.n
.LVL115:
.L62:
	.loc 1 523 0
	l32r	a11, .LC17
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL116:
	.loc 1 524 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 19
	j	.L65
.L63:
	.loc 1 529 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1322_common2
.LVL117:
	mov.n	a2, a10
.LVL118:
	.loc 1 532 0
	retw.n
.LFE5:
	.size	u8x8_d_ssd1322_nhd_128x64, .-u8x8_d_ssd1322_nhd_128x64
	.section	.rodata.u8x8_d_ssd1322_128x64_init_seq,"a",@progbits
	.type	u8x8_d_ssd1322_128x64_init_seq, @object
	.size	u8x8_d_ssd1322_128x64_init_seq, 73
u8x8_d_ssd1322_128x64_init_seq:
	.byte	-2
	.byte	1
	.byte	24
	.byte	-2
	.byte	1
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-77
	.byte	22
	.byte	-111
	.byte	21
	.byte	-54
	.byte	22
	.byte	63
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-96
	.byte	22
	.byte	22
	.byte	22
	.byte	17
	.byte	21
	.byte	-57
	.byte	22
	.byte	15
	.byte	21
	.byte	-63
	.byte	22
	.byte	-97
	.byte	21
	.byte	-79
	.byte	22
	.byte	-14
	.byte	21
	.byte	-69
	.byte	22
	.byte	31
	.byte	21
	.byte	-76
	.byte	22
	.byte	-96
	.byte	22
	.byte	-3
	.byte	21
	.byte	-66
	.byte	22
	.byte	4
	.byte	21
	.byte	-71
	.byte	21
	.byte	-90
	.byte	21
	.byte	-87
	.byte	-2
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1322_128x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1322_128x64_display_info, @object
	.size	u8x8_ssd1322_128x64_display_info, 24
u8x8_ssd1322_128x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	50
	.byte	50
	.word	10000000
	.byte	0
	.byte	4
	.byte	10
	.byte	-106
	.byte	16
	.byte	8
	.byte	28
	.byte	28
	.short	128
	.short	64
	.section	.rodata.u8x8_d_ssd1322_128x64_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1322_128x64_flip1_seq, @object
	.size	u8x8_d_ssd1322_128x64_flip1_seq, 9
u8x8_d_ssd1322_128x64_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	4
	.byte	22
	.byte	17
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1322_128x64_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1322_128x64_flip0_seq, @object
	.size	u8x8_d_ssd1322_128x64_flip0_seq, 9
u8x8_d_ssd1322_128x64_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	22
	.byte	22
	.byte	17
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1322_256x64_init_seq,"a",@progbits
	.type	u8x8_d_ssd1322_256x64_init_seq, @object
	.size	u8x8_d_ssd1322_256x64_init_seq, 83
u8x8_d_ssd1322_256x64_init_seq:
	.byte	-2
	.byte	1
	.byte	24
	.byte	-2
	.byte	1
	.byte	21
	.byte	-3
	.byte	22
	.byte	18
	.byte	21
	.byte	-82
	.byte	21
	.byte	-77
	.byte	22
	.byte	-111
	.byte	21
	.byte	-54
	.byte	22
	.byte	63
	.byte	21
	.byte	-94
	.byte	22
	.byte	0
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-96
	.byte	22
	.byte	6
	.byte	22
	.byte	17
	.byte	21
	.byte	-85
	.byte	22
	.byte	1
	.byte	21
	.byte	-76
	.byte	22
	.byte	-96
	.byte	22
	.byte	-3
	.byte	21
	.byte	-63
	.byte	22
	.byte	-97
	.byte	21
	.byte	-57
	.byte	22
	.byte	15
	.byte	21
	.byte	-71
	.byte	21
	.byte	-79
	.byte	22
	.byte	-30
	.byte	21
	.byte	-47
	.byte	22
	.byte	-94
	.byte	22
	.byte	32
	.byte	21
	.byte	-69
	.byte	22
	.byte	31
	.byte	21
	.byte	-74
	.byte	22
	.byte	8
	.byte	21
	.byte	-66
	.byte	22
	.byte	7
	.byte	21
	.byte	-90
	.byte	21
	.byte	-87
	.byte	-2
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_ssd1322_256x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd1322_256x64_display_info, @object
	.size	u8x8_ssd1322_256x64_display_info, 24
u8x8_ssd1322_256x64_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	50
	.byte	50
	.word	10000000
	.byte	0
	.byte	4
	.byte	10
	.byte	-106
	.byte	32
	.byte	8
	.byte	28
	.byte	28
	.short	256
	.short	64
	.section	.rodata.u8x8_d_ssd1322_256x64_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1322_256x64_flip1_seq, @object
	.size	u8x8_d_ssd1322_256x64_flip1_seq, 9
u8x8_d_ssd1322_256x64_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	20
	.byte	22
	.byte	17
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1322_256x64_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1322_256x64_flip0_seq, @object
	.size	u8x8_d_ssd1322_256x64_flip0_seq, 9
u8x8_d_ssd1322_256x64_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	6
	.byte	22
	.byte	17
	.byte	25
	.byte	-1
	.section	.bss.u8x8_ssd1322_to32_dest_buf,"aw",@nobits
	.type	u8x8_ssd1322_to32_dest_buf, @object
	.size	u8x8_ssd1322_to32_dest_buf, 32
u8x8_ssd1322_to32_dest_buf:
	.zero	32
	.section	.rodata.u8x8_d_ssd1322_powersave1_seq,"a",@progbits
	.type	u8x8_d_ssd1322_powersave1_seq, @object
	.size	u8x8_d_ssd1322_powersave1_seq, 5
u8x8_d_ssd1322_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1322_powersave0_seq,"a",@progbits
	.type	u8x8_d_ssd1322_powersave0_seq, @object
	.size	u8x8_d_ssd1322_powersave0_seq, 5
u8x8_d_ssd1322_powersave0_seq:
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.4byte	0xdec
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
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5d
	.4byte	0x358
	.byte	0x1
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5d
	.4byte	0x32d
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x5d
	.4byte	0x358
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0x5f
	.4byte	0x7e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x60
	.4byte	0x7e
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x60
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x61
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x61
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x62
	.4byte	0x358
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7b
	.4byte	0x358
	.byte	0x1
	.4byte	0x429
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7b
	.4byte	0x32d
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x7b
	.4byte	0x358
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0x7d
	.4byte	0x7e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x7e
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x7f
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x80
	.4byte	0x358
	.byte	0
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x96
	.4byte	0x7e
	.byte	0x1
	.4byte	0x48c
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x96
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x96
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x96
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0x96
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x98
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x9a
	.4byte	0x358
	.byte	0
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x156
	.4byte	0x7e
	.byte	0x1
	.4byte	0x4f8
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x156
	.4byte	0x32d
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x156
	.4byte	0x7e
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x156
	.4byte	0x7e
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x156
	.4byte	0x9f
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.2byte	0x158
	.4byte	0x7e
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.2byte	0x159
	.4byte	0x7e
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.2byte	0x159
	.4byte	0x7e
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x358
	.byte	0
	.uleb128 0x19
	.4byte	0x3d3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54e
	.uleb128 0x1a
	.4byte	0x3ee
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	0x3e3
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x3e3
	.byte	0x9f
	.uleb128 0x1c
	.4byte	0x3f9
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	0x402
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	0x40b
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	0x414
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	0x41d
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	0x429
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ba
	.uleb128 0x1a
	.4byte	0x439
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	0x444
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	0x44f
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	0x45a
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	0x465
	.uleb128 0x1d
	.4byte	0x46e
	.uleb128 0x1d
	.4byte	0x477
	.uleb128 0x1d
	.4byte	0x480
	.uleb128 0x1e
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x74d
	.uleb128 0x1a
	.4byte	0x444
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	0x45a
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	0x44f
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	0x439
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1c
	.4byte	0x465
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	0x46e
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	0x477
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	0x480
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	0x374
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xcf
	.4byte	0x65d
	.uleb128 0x1a
	.4byte	0x384
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	0x38f
	.4byte	.LLST19
	.uleb128 0x1f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1c
	.4byte	0x39a
	.4byte	.LLST20
	.uleb128 0x1c
	.4byte	0x3a3
	.4byte	.LLST21
	.uleb128 0x1c
	.4byte	0x3ac
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	0x3b5
	.4byte	.LLST23
	.uleb128 0x1c
	.4byte	0x3be
	.4byte	.LLST24
	.uleb128 0x1c
	.4byte	0x3c7
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0xd8f
	.4byte	0x671
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0xd9b
	.4byte	0x68b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0xda7
	.4byte	0x6a5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0xda7
	.4byte	0x6c2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x76
	.sleb128 7
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0xd9b
	.4byte	0x6db
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x21
	.4byte	.LVL32
	.4byte	0xda7
	.4byte	0x6f5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL33
	.4byte	0xda7
	.4byte	0x712
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x76
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL34
	.4byte	0xd9b
	.4byte	0x72c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x23
	.4byte	.LVL48
	.4byte	0xdb3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1322_to32_dest_buf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0xdbf
	.4byte	0x761
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL15
	.4byte	0xd8f
	.4byte	0x775
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0xd9b
	.4byte	0x78f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc1
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0xda7
	.4byte	0x7a9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0xdcb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x12f
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a7
	.uleb128 0x25
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x12f
	.4byte	0x32d
	.4byte	.LLST26
	.uleb128 0x26
	.string	"msg"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x12f
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x12f
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LVL60
	.4byte	0xdd7
	.4byte	0x82b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1322_256x64_display_info
	.byte	0
	.uleb128 0x21
	.4byte	.LVL61
	.4byte	0xde3
	.4byte	0x83f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0xdbf
	.4byte	0x85c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_256x64_init_seq
	.byte	0
	.uleb128 0x21
	.4byte	.LVL63
	.4byte	0xdbf
	.4byte	0x879
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_256x64_flip0_seq
	.byte	0
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0xdbf
	.4byte	0x896
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_256x64_flip1_seq
	.byte	0
	.uleb128 0x23
	.4byte	.LVL67
	.4byte	0x429
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x48c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb63
	.uleb128 0x1a
	.4byte	0x49d
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	0x4a9
	.4byte	.LLST28
	.uleb128 0x1a
	.4byte	0x4b5
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	0x4c1
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	0x4cd
	.uleb128 0x1d
	.4byte	0x4d7
	.uleb128 0x1d
	.4byte	0x4e1
	.uleb128 0x1d
	.4byte	0x4eb
	.uleb128 0x1e
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xaf6
	.uleb128 0x1a
	.4byte	0x4a9
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	0x4c1
	.4byte	.LLST32
	.uleb128 0x1a
	.4byte	0x4b5
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	0x49d
	.4byte	.LLST34
	.uleb128 0x1f
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1c
	.4byte	0x4cd
	.4byte	.LLST35
	.uleb128 0x1c
	.4byte	0x4d7
	.4byte	.LLST36
	.uleb128 0x1c
	.4byte	0x4e1
	.4byte	.LLST37
	.uleb128 0x1c
	.4byte	0x4eb
	.4byte	.LLST38
	.uleb128 0x21
	.4byte	.LVL79
	.4byte	0xd8f
	.4byte	0x964
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL82
	.4byte	0xd9b
	.4byte	0x97e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x21
	.4byte	.LVL83
	.4byte	0xda7
	.4byte	0x998
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL85
	.4byte	0xda7
	.4byte	0x9b5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 7
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL89
	.4byte	0xd9b
	.4byte	0x9ce
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x21
	.4byte	.LVL90
	.4byte	0xda7
	.4byte	0x9e8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL91
	.4byte	0xda7
	.4byte	0xa05
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL92
	.4byte	0xd9b
	.4byte	0xa1f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x21
	.4byte	.LVL93
	.4byte	0x4f8
	.4byte	0xa3b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.4byte	0x3e3
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL94
	.4byte	0xdb3
	.4byte	0xa55
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL95
	.4byte	0xd9b
	.4byte	0xa6e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x21
	.4byte	.LVL96
	.4byte	0xda7
	.4byte	0xa8b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 2
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL97
	.4byte	0xda7
	.4byte	0xaa8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 3
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL98
	.4byte	0xd9b
	.4byte	0xac2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0x21
	.4byte	.LVL100
	.4byte	0x4f8
	.4byte	0xade
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.uleb128 0x28
	.4byte	0x3e3
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL101
	.4byte	0xdb3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL71
	.4byte	0xdbf
	.4byte	0xb0a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL73
	.4byte	0xd8f
	.4byte	0xb1e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL74
	.4byte	0xd9b
	.4byte	0xb38
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc1
	.byte	0
	.uleb128 0x21
	.4byte	.LVL75
	.4byte	0xda7
	.4byte	0xb52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL76
	.4byte	0xdcb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x7e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc50
	.uleb128 0x25
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x32d
	.4byte	.LLST39
	.uleb128 0x26
	.string	"msg"
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LVL110
	.4byte	0xdd7
	.4byte	0xbd4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1322_128x64_display_info
	.byte	0
	.uleb128 0x21
	.4byte	.LVL111
	.4byte	0xde3
	.4byte	0xbe8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL112
	.4byte	0xdbf
	.4byte	0xc05
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_128x64_init_seq
	.byte	0
	.uleb128 0x21
	.4byte	.LVL113
	.4byte	0xdbf
	.4byte	0xc22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_128x64_flip0_seq
	.byte	0
	.uleb128 0x21
	.4byte	.LVL116
	.4byte	0xdbf
	.4byte	0xc3f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_128x64_flip1_seq
	.byte	0
	.uleb128 0x23
	.4byte	.LVL117
	.4byte	0x48c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0xc60
	.uleb128 0x2a
	.4byte	0xc60
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF72
	.uleb128 0x2b
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2e
	.4byte	0xc78
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_powersave0_seq
	.uleb128 0xe
	.4byte	0xc50
	.uleb128 0x2b
	.4byte	.LASF74
	.byte	0x1
	.byte	0x35
	.4byte	0xc8e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_powersave1_seq
	.uleb128 0xe
	.4byte	0xc50
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0xca3
	.uleb128 0x2a
	.4byte	0xc60
	.byte	0x1f
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5b
	.4byte	0xc93
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1322_to32_dest_buf
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0xcc4
	.uleb128 0x2a
	.4byte	0xc60
	.byte	0x8
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe4
	.4byte	0xcd5
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_256x64_flip0_seq
	.uleb128 0xe
	.4byte	0xcb4
	.uleb128 0x2b
	.4byte	.LASF77
	.byte	0x1
	.byte	0xeb
	.4byte	0xceb
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_256x64_flip1_seq
	.uleb128 0xe
	.4byte	0xcb4
	.uleb128 0x2b
	.4byte	.LASF78
	.byte	0x1
	.byte	0xf2
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1322_256x64_display_info
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0xd11
	.uleb128 0x2a
	.4byte	0xc60
	.byte	0x52
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x10b
	.4byte	0xd23
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_256x64_init_seq
	.uleb128 0xe
	.4byte	0xd01
	.uleb128 0x2c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xd3a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_128x64_flip0_seq
	.uleb128 0xe
	.4byte	0xcb4
	.uleb128 0x2c
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xd51
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_128x64_flip1_seq
	.uleb128 0xe
	.4byte	0xcb4
	.uleb128 0x2c
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1322_128x64_display_info
	.uleb128 0x29
	.4byte	0x7e
	.4byte	0xd78
	.uleb128 0x2a
	.4byte	0xc60
	.byte	0x48
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xd8a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1322_128x64_init_seq
	.uleb128 0xe
	.4byte	0xd68
	.uleb128 0x2d
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x259
	.uleb128 0x2d
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x255
	.uleb128 0x2d
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x256
	.uleb128 0x2d
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x258
	.uleb128 0x2d
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x278
	.uleb128 0x2d
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x2d
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x2d
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE7
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE7
	.2byte	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_ssd1322_to32_dest_buf
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x8
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x8
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x76
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL30
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x7a
	.sleb128 -2
	.4byte	.LVL38
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x7a
	.sleb128 1
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48-1
	.2byte	0x3
	.byte	0x79
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_ssd1322_to32_dest_buf
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL59
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
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL69
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
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL69
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL78
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL78
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL78
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL78
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82-1
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
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL87
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100-1
	.4byte	.LVL103
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL109
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LFB7
	.4byte	.LFE7
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
.LASF91:
	.string	"u8x8_d_helper_display_init"
.LASF23:
	.string	"x_offset"
.LASF65:
	.string	"u8x8_ssd1322_4to32"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF63:
	.string	"dest"
.LASF45:
	.string	"spi_mode"
.LASF67:
	.string	"arg_ptr"
.LASF36:
	.string	"chip_enable_level"
.LASF66:
	.string	"arg_int"
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
.LASF71:
	.string	"u8x8_d_ssd1322_nhd_128x64"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF81:
	.string	"u8x8_d_ssd1322_128x64_flip1_seq"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF79:
	.string	"u8x8_d_ssd1322_256x64_init_seq"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF69:
	.string	"u8x8_d_ssd1322_common2"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF62:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF68:
	.string	"u8x8_d_ssd1322_common"
.LASF87:
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
.LASF75:
	.string	"u8x8_ssd1322_to32_dest_buf"
.LASF89:
	.string	"u8x8_cad_EndTransfer"
.LASF58:
	.string	"x_pos"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"display_cb"
.LASF83:
	.string	"u8x8_d_ssd1322_128x64_init_seq"
.LASF64:
	.string	"u8x8_ssd1322_8to32"
.LASF47:
	.string	"data_setup_time_ns"
.LASF76:
	.string	"u8x8_d_ssd1322_256x64_flip0_seq"
.LASF78:
	.string	"u8x8_ssd1322_256x64_display_info"
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
	.string	"u8x8_d_ssd1322_nhd_256x64"
.LASF14:
	.string	"display_info"
.LASF74:
	.string	"u8x8_d_ssd1322_powersave1_seq"
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
.LASF88:
	.string	"u8x8_cad_SendSequence"
.LASF80:
	.string	"u8x8_d_ssd1322_128x64_flip0_seq"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF73:
	.string	"u8x8_d_ssd1322_powersave0_seq"
.LASF37:
	.string	"chip_disable_level"
.LASF77:
	.string	"u8x8_d_ssd1322_256x64_flip1_seq"
.LASF93:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1322.c"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF26:
	.string	"i2c_started"
.LASF90:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF94:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF86:
	.string	"u8x8_cad_SendArg"
.LASF92:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF82:
	.string	"u8x8_ssd1322_128x64_display_info"
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
