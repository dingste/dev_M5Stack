	.file	"u8x8_d_ssd1325.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1325_128x64_generic,"ax",@progbits
	.literal_position
	.literal .LC3, u8x8_ssd1325_8to32_dest_buf
	.literal .LC4, u8x8_d_ssd1325_128x64_nhd_powersave0_seq
	.literal .LC5, u8x8_d_ssd1325_128x64_nhd_powersave1_seq
	.align	4
	.type	u8x8_d_ssd1325_128x64_generic, @function
u8x8_d_ssd1325_128x64_generic:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1325.c"
	.loc 1 119 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 122 0
	movi.n	a6, 0xe
	beq	a3, a6, .L3
	movi.n	a6, 0xf
	beq	a3, a6, .L4
	movi.n	a5, 0xb
.LVL1:
	bne	a3, a5, .L24
	.loc 1 138 0
	l32r	a11, .LC4
	.loc 1 137 0
	beqz.n	a4, .L28
.L6:
	.loc 1 140 0
	l32r	a11, .LC5
.L28:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL2:
	j	.L26
.LVL3:
.L3:
	.loc 1 159 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL4:
	.loc 1 160 0
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL5:
	.loc 1 161 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
.L27:
	.loc 1 162 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL7:
.L26:
	.loc 1 223 0
	movi.n	a2, 1
.LVL8:
	.loc 1 163 0
	retw.n
.LVL9:
.L4:
.LBB6:
.LBB7:
	.loc 1 166 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL10:
	.loc 1 167 0
	l8ui	a3, a5, 5
.LVL11:
	.loc 1 172 0
	l8ui	a6, a2, 34
	.loc 1 168 0
	slli	a3, a3, 2
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 4
.LVL12:
	.loc 1 170 0
	l8ui	a3, a5, 6
.LVL13:
	.loc 1 175 0
	movi	a11, 0x75
	.loc 1 172 0
	addx8	a3, a3, a6
.LVL14:
	extui	a3, a3, 0, 8
	.loc 1 175 0
	mov.n	a10, a2
	.loc 1 172 0
	s32i.n	a3, sp, 0
.LVL15:
	.loc 1 175 0
	call8	u8x8_cad_SendCmd
.LVL16:
	.loc 1 176 0
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL17:
	.loc 1 177 0
	l32i.n	a6, sp, 0
	mov.n	a10, a2
	addi.n	a3, a6, 7
	extui	a3, a3, 0, 8
	mov.n	a11, a3
	s32i.n	a3, sp, 8
	call8	u8x8_cad_SendArg
.LVL18:
.L14:
	.loc 1 181 0
	l8ui	a8, a5, 4
	l32i.n	a15, sp, 4
	s32i.n	a8, sp, 12
.LVL19:
	addi.n	a3, a15, 3
	.loc 1 182 0
	l32i.n	a8, a5, 0
.LVL20:
	.loc 1 181 0
	l32i.n	a6, sp, 12
	extui	a3, a3, 0, 8
.LVL21:
.L13:
	.loc 1 186 0
	l8ui	a10, a8, 0
	l8ui	a9, a8, 1
	addi	a7, a3, -3
	or	a9, a10, a9
	l8ui	a10, a8, 2
	extui	a7, a7, 0, 8
.LVL22:
	or	a9, a9, a10
	l8ui	a10, a8, 3
	or	a9, a9, a10
	l8ui	a10, a8, 4
	or	a9, a9, a10
	l8ui	a10, a8, 5
	or	a9, a9, a10
	l8ui	a10, a8, 6
	or	a9, a9, a10
	l8ui	a10, a8, 7
	or	a9, a9, a10
	extui	a9, a9, 0, 8
	beqz.n	a9, .L7
	.loc 1 189 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendCmd
.LVL23:
	.loc 1 190 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL24:
	.loc 1 191 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL25:
	l32i.n	a8, sp, 20
	movi.n	a9, 0
	mov.n	a10, a8
.LVL26:
.L11:
	l32r	a11, .LC3
.LBB8:
.LBB9:
	.loc 1 104 0
	movi.n	a15, 8
	.loc 1 96 0
	l8ui	a13, a10, 0
	.loc 1 98 0
	l8ui	a12, a10, 1
	add.n	a14, a9, a11
.LVL27:
	addi.n	a10, a10, 2
.LVL28:
	.loc 1 104 0
	s32i.n	a15, sp, 24
.LVL29:
.L10:
	.loc 1 103 0
	extui	a7, a13, 0, 1
	movi	a11, 0xf0
	movi.n	a15, 0
	moveqz	a11, a15, a7
	mov.n	a7, a11
.LVL30:
	.loc 1 104 0
	bbc	a12, a15, .L9
	movi.n	a11, 0xf
	or	a7, a7, a11
.LVL31:
	extui	a7, a7, 0, 8
.LVL32:
.L9:
	.loc 1 108 0
	l32i.n	a15, sp, 24
	.loc 1 105 0
	s8i	a7, a14, 0
	.loc 1 108 0
	addi.n	a15, a15, -1
	s32i.n	a15, sp, 24
	.loc 1 106 0
	addi.n	a14, a14, 4
.LVL33:
	.loc 1 107 0
	srli	a13, a13, 1
.LVL34:
	.loc 1 108 0
	srli	a12, a12, 1
.LVL35:
	bnez.n	a15, .L10
.LVL36:
	addi.n	a9, a9, 1
.LVL37:
	.loc 1 92 0
	bnei	a9, 4, .L11
.LBE9:
.LBE8:
	.loc 1 195 0
	l32r	a12, .LC3
.LVL38:
	movi.n	a11, 0x20
	mov.n	a10, a2
.LVL39:
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendData
.LVL40:
	j	.L25
.LVL41:
.L7:
	.loc 1 200 0
	movi.n	a11, 0x24
	mov.n	a10, a2
	s32i.n	a9, sp, 16
	s32i.n	a8, sp, 20
	call8	u8x8_cad_SendCmd
.LVL42:
	.loc 1 201 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL43:
	.loc 1 202 0
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL44:
	.loc 1 203 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL45:
	.loc 1 204 0
	l32i.n	a11, sp, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL46:
	.loc 1 205 0
	l32i.n	a9, sp, 16
	mov.n	a10, a2
	mov.n	a11, a9
	call8	u8x8_cad_SendArg
.LVL47:
.L25:
	l32i.n	a8, sp, 20
	.loc 1 209 0
	addi.n	a6, a6, -1
.LVL48:
	addi.n	a3, a3, 4
.LVL49:
	extui	a6, a6, 0, 8
.LVL50:
	.loc 1 207 0
	addi.n	a8, a8, 8
.LVL51:
	extui	a3, a3, 0, 8
	.loc 1 210 0
	bnez.n	a6, .L13
	l32i.n	a8, sp, 4
.LVL52:
	l32i.n	a6, sp, 12
.LVL53:
	.loc 1 213 0
	addi.n	a4, a4, -1
.LVL54:
	addx4	a3, a6, a8
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 4
	extui	a4, a4, 0, 8
.LVL55:
	.loc 1 214 0
	bnez.n	a4, .L14
	.loc 1 216 0
	movi	a11, 0xe3
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL56:
	j	.L27
.LVL57:
.L24:
.LBE7:
.LBE6:
	.loc 1 221 0
	movi.n	a2, 0
.LVL58:
	.loc 1 224 0
	retw.n
.LFE1:
	.size	u8x8_d_ssd1325_128x64_generic, .-u8x8_d_ssd1325_128x64_generic
	.section	.text.u8x8_d_ssd1325_nhd_128x64,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_nhd_ssd1325_128x64_display_info
	.literal .LC7, u8x8_d_ssd1325_128x64_nhd_init_seq
	.literal .LC8, u8x8_d_ssd1325_128x64_nhd_flip0_seq
	.literal .LC9, u8x8_d_ssd1325_128x64_nhd_flip1_seq
	.align	4
	.global	u8x8_d_ssd1325_nhd_128x64
	.type	u8x8_d_ssd1325_nhd_128x64, @function
u8x8_d_ssd1325_nhd_128x64:
.LFB2:
	.loc 1 293 0
.LVL59:
	entry	sp, 32
.LCFI1:
	.loc 1 293 0
	extui	a11, a3, 0, 8
	.loc 1 294 0
	movi.n	a8, 9
	.loc 1 293 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 294 0
	bne	a11, a8, .L30
	.loc 1 296 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL60:
	j	.L35
.L30:
	.loc 1 299 0
	bnei	a11, 10, .L32
	.loc 1 301 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL61:
	.loc 1 302 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL62:
	j	.L35
.L32:
	.loc 1 305 0
	movi.n	a8, 0xd
	bne	a11, a8, .L33
	.loc 1 307 0
	bnez.n	a12, .L34
	.loc 1 309 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL63:
	.loc 1 310 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 18
.L36:
	s8i	a8, a2, 34
.L35:
	.loc 1 317 0
	movi.n	a2, 1
.LVL64:
	retw.n
.LVL65:
.L34:
	.loc 1 314 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL66:
	.loc 1 315 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 19
	j	.L36
.L33:
	.loc 1 319 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1325_128x64_generic
.LVL67:
	mov.n	a2, a10
.LVL68:
	.loc 1 320 0
	retw.n
.LFE2:
	.size	u8x8_d_ssd1325_nhd_128x64, .-u8x8_d_ssd1325_nhd_128x64
	.section	.text.u8x8_d_ssd0323_os128064,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_ssd0323_os128064_display_info
	.literal .LC11, u8x8_d_ssd0323_os128064_init_seq
	.literal .LC12, u8x8_d_ssd0323_os128064_flip0_seq
	.literal .LC13, u8x8_d_ssd0323_os128064_flip1_seq
	.align	4
	.global	u8x8_d_ssd0323_os128064
	.type	u8x8_d_ssd0323_os128064, @function
u8x8_d_ssd0323_os128064:
.LFB3:
	.loc 1 405 0
.LVL69:
	entry	sp, 32
.LCFI2:
	.loc 1 405 0
	extui	a11, a3, 0, 8
	.loc 1 406 0
	movi.n	a8, 9
	.loc 1 405 0
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	.loc 1 406 0
	bne	a11, a8, .L38
	.loc 1 408 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL70:
	j	.L43
.L38:
	.loc 1 411 0
	bnei	a11, 10, .L40
	.loc 1 413 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL71:
	.loc 1 414 0
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL72:
	j	.L43
.L40:
	.loc 1 417 0
	movi.n	a8, 0xd
	bne	a11, a8, .L41
	.loc 1 419 0
	bnez.n	a12, .L42
	.loc 1 421 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL73:
	.loc 1 422 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 18
.L44:
	s8i	a8, a2, 34
.L43:
	.loc 1 429 0
	movi.n	a2, 1
.LVL74:
	retw.n
.LVL75:
.L42:
	.loc 1 426 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL76:
	.loc 1 427 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 19
	j	.L44
.L41:
	.loc 1 431 0
	mov.n	a10, a2
	call8	u8x8_d_ssd1325_128x64_generic
.LVL77:
	mov.n	a2, a10
.LVL78:
	.loc 1 432 0
	retw.n
.LFE3:
	.size	u8x8_d_ssd0323_os128064, .-u8x8_d_ssd0323_os128064
	.section	.rodata.u8x8_ssd0323_os128064_display_info,"a",@progbits
	.align	4
	.type	u8x8_ssd0323_os128064_display_info, @object
	.size	u8x8_ssd0323_os128064_display_info, 24
u8x8_ssd0323_os128064_display_info:
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
	.byte	60
	.byte	16
	.byte	8
	.byte	0
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_ssd0323_os128064_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd0323_os128064_flip1_seq, @object
	.size	u8x8_d_ssd0323_os128064_flip1_seq, 11
u8x8_d_ssd0323_os128064_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	65
	.byte	21
	.byte	-94
	.byte	22
	.byte	80
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd0323_os128064_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd0323_os128064_flip0_seq, @object
	.size	u8x8_d_ssd0323_os128064_flip0_seq, 11
u8x8_d_ssd0323_os128064_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	21
	.byte	-94
	.byte	22
	.byte	64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd0323_os128064_init_seq,"a",@progbits
	.type	u8x8_d_ssd0323_os128064_init_seq, @object
	.size	u8x8_d_ssd0323_os128064_init_seq, 87
u8x8_d_ssd0323_os128064_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-77
	.byte	22
	.byte	-111
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-94
	.byte	22
	.byte	64
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-83
	.byte	22
	.byte	2
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	21
	.byte	-122
	.byte	21
	.byte	-72
	.byte	22
	.byte	1
	.byte	22
	.byte	17
	.byte	22
	.byte	34
	.byte	22
	.byte	50
	.byte	22
	.byte	67
	.byte	22
	.byte	84
	.byte	22
	.byte	101
	.byte	22
	.byte	118
	.byte	21
	.byte	-127
	.byte	22
	.byte	112
	.byte	21
	.byte	-78
	.byte	22
	.byte	81
	.byte	21
	.byte	-79
	.byte	22
	.byte	85
	.byte	21
	.byte	-68
	.byte	22
	.byte	16
	.byte	21
	.byte	-76
	.byte	22
	.byte	2
	.byte	21
	.byte	-80
	.byte	22
	.byte	40
	.byte	21
	.byte	-66
	.byte	22
	.byte	28
	.byte	21
	.byte	-65
	.byte	22
	.byte	15
	.byte	21
	.byte	-92
	.byte	21
	.byte	35
	.byte	22
	.byte	3
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_nhd_ssd1325_128x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_nhd_ssd1325_128x64_display_info, @object
	.size	u8x8_nhd_ssd1325_128x64_display_info, 24
u8x8_nhd_ssd1325_128x64_display_info:
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
	.byte	60
	.byte	16
	.byte	8
	.byte	0
	.byte	8
	.short	128
	.short	64
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_init_seq,"a",@progbits
	.type	u8x8_d_ssd1325_128x64_nhd_init_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_init_seq, 87
u8x8_d_ssd1325_128x64_nhd_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-77
	.byte	22
	.byte	-111
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-94
	.byte	22
	.byte	76
	.byte	21
	.byte	-95
	.byte	22
	.byte	0
	.byte	21
	.byte	-83
	.byte	22
	.byte	2
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	21
	.byte	-122
	.byte	21
	.byte	-72
	.byte	22
	.byte	1
	.byte	22
	.byte	17
	.byte	22
	.byte	34
	.byte	22
	.byte	50
	.byte	22
	.byte	67
	.byte	22
	.byte	84
	.byte	22
	.byte	101
	.byte	22
	.byte	118
	.byte	21
	.byte	-127
	.byte	22
	.byte	112
	.byte	21
	.byte	-78
	.byte	22
	.byte	81
	.byte	21
	.byte	-79
	.byte	22
	.byte	85
	.byte	21
	.byte	-68
	.byte	22
	.byte	16
	.byte	21
	.byte	-76
	.byte	22
	.byte	2
	.byte	21
	.byte	-80
	.byte	22
	.byte	40
	.byte	21
	.byte	-66
	.byte	22
	.byte	28
	.byte	21
	.byte	-65
	.byte	22
	.byte	15
	.byte	21
	.byte	-92
	.byte	21
	.byte	35
	.byte	22
	.byte	3
	.byte	25
	.byte	-1
	.section	.bss.u8x8_ssd1325_8to32_dest_buf,"aw",@nobits
	.type	u8x8_ssd1325_8to32_dest_buf, @object
	.size	u8x8_ssd1325_8to32_dest_buf, 32
u8x8_ssd1325_8to32_dest_buf:
	.zero	32
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_flip1_seq,"a",@progbits
	.type	u8x8_d_ssd1325_128x64_nhd_flip1_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_flip1_seq, 7
u8x8_d_ssd1325_128x64_nhd_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	65
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_flip0_seq,"a",@progbits
	.type	u8x8_d_ssd1325_128x64_nhd_flip0_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_flip0_seq, 7
u8x8_d_ssd1325_128x64_nhd_flip0_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	22
	.byte	82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_powersave1_seq,"a",@progbits
	.type	u8x8_d_ssd1325_128x64_nhd_powersave1_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_powersave1_seq, 5
u8x8_d_ssd1325_128x64_nhd_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1325_128x64_nhd_powersave0_seq,"a",@progbits
	.type	u8x8_d_ssd1325_128x64_nhd_powersave0_seq, @object
	.size	u8x8_d_ssd1325_128x64_nhd_powersave0_seq, 5
u8x8_d_ssd1325_128x64_nhd_powersave0_seq:
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
	.uleb128 0x40
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.4byte	.LASF91
	.4byte	.LASF92
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
	.byte	0x55
	.4byte	0x358
	.byte	0x1
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x55
	.4byte	0x32d
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x55
	.4byte	0x358
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0x57
	.4byte	0x7e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x58
	.4byte	0x7e
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x58
	.4byte	0x7e
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x59
	.4byte	0x7e
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x59
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5a
	.4byte	0x358
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x76
	.4byte	0x7e
	.byte	0x1
	.4byte	0x436
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x76
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x76
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x76
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0x76
	.4byte	0x9f
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x78
	.4byte	0x7e
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x78
	.4byte	0x7e
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x78
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x79
	.4byte	0x358
	.byte	0
	.uleb128 0x14
	.4byte	0x3d3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x735
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
	.4byte	0x6c8
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
	.byte	0xc3
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
	.4byte	0xa4e
	.4byte	0x559
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL16
	.4byte	0xa5a
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
	.4byte	.LVL17
	.4byte	0xa66
	.4byte	0x58e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL18
	.4byte	0xa66
	.4byte	0x5a8
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0xa5a
	.4byte	0x5c1
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
	.4byte	.LVL24
	.4byte	0xa66
	.4byte	0x5db
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
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL25
	.4byte	0xa66
	.4byte	0x5f5
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL40
	.4byte	0xa72
	.4byte	0x618
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
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL42
	.4byte	0xa5a
	.4byte	0x632
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
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL43
	.4byte	0xa66
	.4byte	0x64c
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
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL44
	.4byte	0xa66
	.4byte	0x667
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0xa66
	.4byte	0x681
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL46
	.4byte	0xa66
	.4byte	0x69c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL47
	.4byte	0xa66
	.4byte	0x6b0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL56
	.4byte	0xa5a
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
	.byte	0xe3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0xa7e
	.4byte	0x6dc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL4
	.4byte	0xa4e
	.4byte	0x6f0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0xa5a
	.4byte	0x70a
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
	.4byte	0xa66
	.4byte	0x724
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
	.4byte	0xa8a
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
	.2byte	0x124
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x822
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x124
	.4byte	0x32d
	.4byte	.LLST20
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x124
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x124
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x124
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0xa96
	.4byte	0x7a6
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
	.4byte	u8x8_nhd_ssd1325_128x64_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0xaa2
	.4byte	0x7ba
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL62
	.4byte	0xa7e
	.4byte	0x7d7
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
	.4byte	u8x8_d_ssd1325_128x64_nhd_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0xa7e
	.4byte	0x7f4
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
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL66
	.4byte	0xa7e
	.4byte	0x811
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
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip1_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0x3d3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x194
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90f
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x194
	.4byte	0x32d
	.4byte	.LLST21
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x194
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x194
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x194
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0xa96
	.4byte	0x893
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
	.4byte	u8x8_ssd0323_os128064_display_info
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0xaa2
	.4byte	0x8a7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL72
	.4byte	0xa7e
	.4byte	0x8c4
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
	.4byte	u8x8_d_ssd0323_os128064_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL73
	.4byte	0xa7e
	.4byte	0x8e1
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
	.4byte	u8x8_d_ssd0323_os128064_flip0_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL76
	.4byte	0xa7e
	.4byte	0x8fe
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
	.4byte	u8x8_d_ssd0323_os128064_flip1_seq
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL77
	.4byte	0x3d3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0x91f
	.uleb128 0x23
	.4byte	0x91f
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2f
	.4byte	0x937
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_powersave0_seq
	.uleb128 0xe
	.4byte	0x90f
	.uleb128 0x24
	.4byte	.LASF72
	.byte	0x1
	.byte	0x36
	.4byte	0x94d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_powersave1_seq
	.uleb128 0xe
	.4byte	0x90f
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0x962
	.uleb128 0x23
	.4byte	0x91f
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LASF73
	.byte	0x1
	.byte	0x3d
	.4byte	0x973
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip0_seq
	.uleb128 0xe
	.4byte	0x952
	.uleb128 0x24
	.4byte	.LASF74
	.byte	0x1
	.byte	0x44
	.4byte	0x989
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_flip1_seq
	.uleb128 0xe
	.4byte	0x952
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0x99e
	.uleb128 0x23
	.4byte	0x91f
	.byte	0x1f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF75
	.byte	0x1
	.byte	0x53
	.4byte	0x98e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0x9bf
	.uleb128 0x23
	.4byte	0x91f
	.byte	0x56
	.byte	0
	.uleb128 0x24
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe5
	.4byte	0x9d0
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1325_128x64_nhd_init_seq
	.uleb128 0xe
	.4byte	0x9af
	.uleb128 0x25
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x10c
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_nhd_ssd1325_128x64_display_info
	.uleb128 0x25
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x146
	.4byte	0x9f9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd0323_os128064_init_seq
	.uleb128 0xe
	.4byte	0x9af
	.uleb128 0x22
	.4byte	0x7e
	.4byte	0xa0e
	.uleb128 0x23
	.4byte	0x91f
	.byte	0xa
	.byte	0
	.uleb128 0x25
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x16b
	.4byte	0xa20
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd0323_os128064_flip0_seq
	.uleb128 0xe
	.4byte	0x9fe
	.uleb128 0x25
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x173
	.4byte	0xa37
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd0323_os128064_flip1_seq
	.uleb128 0xe
	.4byte	0x9fe
	.uleb128 0x25
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x17c
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd0323_os128064_display_info
	.uleb128 0x26
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x259
	.uleb128 0x26
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x255
	.uleb128 0x26
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x256
	.uleb128 0x26
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x258
	.uleb128 0x26
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x278
	.uleb128 0x26
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x26
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x26
	.4byte	.LASF89
	.4byte	.LASF89
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
	.uleb128 0x18
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
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
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
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL57
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
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL57
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
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57
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
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL26
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x73
	.sleb128 -7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xd
	.byte	0x75
	.sleb128 6
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
	.4byte	.LVL15
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL22
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL56-1
	.2byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x10
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xf0
	.byte	0x7d
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x7a
	.sleb128 -2
	.4byte	.LVL29
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x7a
	.sleb128 1
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL40-1
	.2byte	0x3
	.byte	0x79
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x3
	.4byte	u8x8_ssd1325_8to32_dest_buf
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST20:
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"x_offset"
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
.LASF73:
	.string	"u8x8_d_ssd1325_128x64_nhd_flip0_seq"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF77:
	.string	"u8x8_nhd_ssd1325_128x64_display_info"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF68:
	.string	"u8x8_d_ssd1325_nhd_128x64"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF65:
	.string	"u8x8_d_ssd1325_128x64_generic"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF62:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF66:
	.string	"arg_int"
.LASF85:
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
.LASF75:
	.string	"u8x8_ssd1325_8to32_dest_buf"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF83:
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
.LASF78:
	.string	"u8x8_d_ssd0323_os128064_init_seq"
.LASF47:
	.string	"data_setup_time_ns"
.LASF91:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ssd1325.c"
.LASF74:
	.string	"u8x8_d_ssd1325_128x64_nhd_flip1_seq"
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
.LASF82:
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
.LASF69:
	.string	"u8x8_d_ssd0323_os128064"
.LASF80:
	.string	"u8x8_d_ssd0323_os128064_flip1_seq"
.LASF64:
	.string	"u8x8_ssd1325_8to32"
.LASF14:
	.string	"display_info"
.LASF72:
	.string	"u8x8_d_ssd1325_128x64_nhd_powersave1_seq"
.LASF54:
	.string	"pixel_height"
.LASF71:
	.string	"u8x8_d_ssd1325_128x64_nhd_powersave0_seq"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF86:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF26:
	.string	"i2c_started"
.LASF81:
	.string	"u8x8_ssd0323_os128064_display_info"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF88:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF79:
	.string	"u8x8_d_ssd0323_os128064_flip0_seq"
.LASF92:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF84:
	.string	"u8x8_cad_SendArg"
.LASF90:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF76:
	.string	"u8x8_d_ssd1325_128x64_nhd_init_seq"
.LASF15:
	.string	"next_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
