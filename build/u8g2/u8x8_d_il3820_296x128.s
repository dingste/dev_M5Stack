	.file	"u8x8_d_il3820_296x128.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_il3820_first_init,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_il3820_exec_1000dly_seq
	.align	4
	.type	u8x8_d_il3820_first_init, @function
u8x8_d_il3820_first_init:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_il3820_296x128.c"
	.loc 1 241 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 242 0
	mov.n	a10, a2
	call8	u8x8_ClearDisplay
.LVL1:
	.loc 1 244 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 245 0
	movi.n	a11, 0x32
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL3:
	.loc 1 246 0
	movi.n	a12, 0x55
	movi.n	a11, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL4:
	.loc 1 247 0
	movi	a12, 0xaa
	movi.n	a11, 0xc
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL5:
	.loc 1 248 0
	movi.n	a12, 0x22
	movi.n	a11, 0xa
	mov.n	a10, a2
	call8	u8x8_cad_SendMultipleArg
.LVL6:
	.loc 1 249 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL7:
	retw.n
.LFE2:
	.size	u8x8_d_il3820_first_init, .-u8x8_d_il3820_first_init
	.section	.text.u8x8_d_il3820_draw_tile,"ax",@progbits
	.literal_position
	.literal .LC4, buf$2832
	.align	4
	.type	u8x8_d_il3820_draw_tile, @function
u8x8_d_il3820_draw_tile:
.LFB1:
	.loc 1 182 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 186 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL9:
	.loc 1 188 0
	l32i.n	a5, a2, 0
	.loc 1 190 0
	l8ui	a6, a4, 6
	.loc 1 188 0
	l8ui	a5, a5, 17
.LVL10:
	.loc 1 194 0
	l8ui	a7, a2, 34
	.loc 1 189 0
	addi.n	a5, a5, -1
.LVL11:
	.loc 1 190 0
	sub	a5, a5, a6
.LVL12:
	.loc 1 192 0
	l8ui	a6, a4, 5
	.loc 1 199 0
	movi.n	a11, 0x4f
	mov.n	a10, a2
	.loc 1 194 0
	addx8	a6, a6, a7
	.loc 1 199 0
	call8	u8x8_cad_SendCmd
.LVL13:
	.loc 1 200 0
	extui	a11, a6, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL14:
	.loc 1 201 0
	extui	a11, a6, 8, 16
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL15:
	.loc 1 203 0
	movi.n	a11, 0x4e
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL16:
	.loc 1 190 0
	extui	a5, a5, 0, 8
.LVL17:
	.loc 1 204 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL18:
	.loc 1 206 0
	movi.n	a11, 0x24
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL19:
.LBB4:
.LBB5:
	.loc 1 175 0
	l32r	a6, .LC4
.LVL20:
.L5:
.LBE5:
.LBE4:
	.loc 1 210 0
	l8ui	a5, a4, 4
.LVL21:
	.loc 1 211 0
	l32i.n	a7, a4, 0
.LVL22:
.L4:
	.loc 1 182 0 discriminator 1
	movi.n	a8, 0
.LBB7:
.LBB6:
	.loc 1 175 0 discriminator 1
	movi.n	a12, -1
	movi.n	a9, 8
	loop	a9, .L3_LEND
.LVL23:
.L3:
	.loc 1 175 0 is_stmt 0
	add.n	a10, a7, a8
	l8ui	a10, a10, 0
	add.n	a11, a8, a6
	xor	a10, a12, a10
	s8i	a10, a11, 0
.LVL24:
	addi.n	a8, a8, 1
.LVL25:
	.L3_LEND:
.LBE6:
.LBE7:
	.loc 1 217 0 is_stmt 1
	addi.n	a5, a5, -1
.LVL26:
	.loc 1 214 0
	mov.n	a12, a6
	movi.n	a11, 8
	mov.n	a10, a2
	.loc 1 217 0
	extui	a5, a5, 0, 8
.LVL27:
	.loc 1 214 0
	call8	u8x8_cad_SendData
.LVL28:
	.loc 1 215 0
	addi.n	a7, a7, 8
.LVL29:
	.loc 1 218 0
	bnez.n	a5, .L4
	.loc 1 220 0
	addi.n	a3, a3, -1
.LVL30:
	extui	a3, a3, 0, 8
.LVL31:
	.loc 1 221 0
	bnez.n	a3, .L5
	.loc 1 223 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL32:
	retw.n
.LFE1:
	.size	u8x8_d_il3820_draw_tile, .-u8x8_d_il3820_draw_tile
	.section	.text.u8x8_d_il3820_296x128,"ax",@progbits
	.literal_position
	.literal .LC5, .L12
	.literal .LC6, u8x8_il3820_296x128_display_info
	.literal .LC7, u8x8_d_il3820_296x128_init_seq
	.literal .LC8, u8x8_d_il3820_296x128_powersave0_seq
	.literal .LC9, u8x8_d_il3820_296x128_powersave1_seq
	.literal .LC10, u8x8_d_il3820_to_display_seq
	.align	4
	.global	u8x8_d_il3820_296x128
	.type	u8x8_d_il3820_296x128, @function
u8x8_d_il3820_296x128:
.LFB3:
	.loc 1 374 0
.LVL33:
	entry	sp, 32
.LCFI2:
	.loc 1 375 0
	addi	a3, a3, -9
.LVL34:
	extui	a3, a3, 0, 8
	.loc 1 374 0
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 375 0
	bgeui	a3, 8, .L18
	l32r	a8, .LC5
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_il3820_296x128,"a",@progbits
	.align	4
	.align	4
.L12:
	.word	.L11
	.word	.L13
	.word	.L14
	.word	.L18
	.word	.L18
	.word	.L18
	.word	.L15
	.word	.L16
	.section	.text.u8x8_d_il3820_296x128
.L11:
	.loc 1 378 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL35:
	j	.L19
.L13:
	.loc 1 382 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL36:
	.loc 1 383 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL37:
	.loc 1 385 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL38:
	.loc 1 386 0
	mov.n	a10, a2
	call8	u8x8_d_il3820_first_init
.LVL39:
	j	.L19
.L14:
	.loc 1 394 0
	bnez.n	a11, .L17
	.loc 1 395 0
	l32r	a11, .LC8
	j	.L20
.L17:
	.loc 1 397 0
	l32r	a11, .LC9
	j	.L20
.L15:
	.loc 1 400 0
	mov.n	a10, a2
	call8	u8x8_d_il3820_draw_tile
.LVL40:
.L19:
	.loc 1 408 0
	movi.n	a2, 1
.LVL41:
	.loc 1 401 0
	retw.n
.LVL42:
.L16:
	.loc 1 403 0
	l32r	a11, .LC10
.L20:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL43:
	j	.L19
.L18:
	.loc 1 406 0
	movi.n	a2, 0
.LVL44:
	.loc 1 409 0
	retw.n
.LFE3:
	.size	u8x8_d_il3820_296x128, .-u8x8_d_il3820_296x128
	.section	.text.u8x8_d_il3820_v2_296x128,"ax",@progbits
	.literal_position
	.literal .LC11, .L24
	.literal .LC12, u8x8_il3820_296x128_display_info
	.literal .LC13, u8x8_d_il3820_v2_296x128_init_seq
	.literal .LC14, u8x8_d_il3820_296x128_powersave0_seq
	.literal .LC15, u8x8_d_il3820_296x128_powersave1_seq
	.literal .LC16, u8x8_d_il3820_v2_to_display_seq
	.align	4
	.global	u8x8_d_il3820_v2_296x128
	.type	u8x8_d_il3820_v2_296x128, @function
u8x8_d_il3820_v2_296x128:
.LFB4:
	.loc 1 512 0
.LVL45:
	entry	sp, 32
.LCFI3:
	.loc 1 513 0
	addi	a3, a3, -9
.LVL46:
	extui	a3, a3, 0, 8
	.loc 1 512 0
	mov.n	a12, a5
	extui	a11, a4, 0, 8
	.loc 1 513 0
	bgeui	a3, 8, .L30
	l32r	a8, .LC11
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_il3820_v2_296x128,"a",@progbits
	.align	4
	.align	4
.L24:
	.word	.L23
	.word	.L25
	.word	.L26
	.word	.L30
	.word	.L30
	.word	.L30
	.word	.L27
	.word	.L28
	.section	.text.u8x8_d_il3820_v2_296x128
.L23:
	.loc 1 516 0
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL47:
	j	.L31
.L25:
	.loc 1 520 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL48:
	.loc 1 522 0
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL49:
	.loc 1 524 0
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL50:
	.loc 1 525 0
	mov.n	a10, a2
	call8	u8x8_d_il3820_first_init
.LVL51:
	j	.L31
.L26:
	.loc 1 534 0
	bnez.n	a11, .L29
	.loc 1 535 0
	l32r	a11, .LC14
	j	.L32
.L29:
	.loc 1 537 0
	l32r	a11, .LC15
	j	.L32
.L27:
	.loc 1 540 0
	mov.n	a10, a2
	call8	u8x8_d_il3820_draw_tile
.LVL52:
.L31:
	.loc 1 548 0
	movi.n	a2, 1
.LVL53:
	.loc 1 541 0
	retw.n
.LVL54:
.L28:
	.loc 1 543 0
	l32r	a11, .LC16
.L32:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL55:
	j	.L31
.L30:
	.loc 1 546 0
	movi.n	a2, 0
.LVL56:
	.loc 1 549 0
	retw.n
.LFE4:
	.size	u8x8_d_il3820_v2_296x128, .-u8x8_d_il3820_v2_296x128
	.section	.bss.buf$2832,"aw",@nobits
	.type	buf$2832, @object
	.size	buf$2832, 8
buf$2832:
	.zero	8
	.section	.rodata.u8x8_d_il3820_v2_to_display_seq,"a",@progbits
	.type	u8x8_d_il3820_v2_to_display_seq, @object
	.size	u8x8_d_il3820_v2_to_display_seq, 83
u8x8_d_il3820_v2_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	-86
	.byte	22
	.byte	9
	.byte	22
	.byte	9
	.byte	22
	.byte	25
	.byte	22
	.byte	25
	.byte	22
	.byte	17
	.byte	22
	.byte	17
	.byte	22
	.byte	17
	.byte	22
	.byte	17
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
	.byte	117
	.byte	22
	.byte	119
	.byte	22
	.byte	119
	.byte	22
	.byte	119
	.byte	22
	.byte	7
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
	.byte	-106
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_v2_296x128_init_seq,"a",@progbits
	.type	u8x8_d_il3820_v2_296x128_init_seq, @object
	.size	u8x8_d_il3820_v2_296x128_init_seq, 59
u8x8_d_il3820_v2_296x128_init_seq:
	.byte	24
	.byte	21
	.byte	1
	.byte	22
	.byte	39
	.byte	22
	.byte	1
	.byte	22
	.byte	0
	.byte	21
	.byte	3
	.byte	22
	.byte	117
	.byte	21
	.byte	4
	.byte	22
	.byte	10
	.byte	21
	.byte	11
	.byte	22
	.byte	7
	.byte	21
	.byte	44
	.byte	22
	.byte	-88
	.byte	21
	.byte	58
	.byte	22
	.byte	22
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
	.byte	7
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	22
	.byte	29
	.byte	21
	.byte	69
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	39
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_to_display_seq,"a",@progbits
	.type	u8x8_d_il3820_to_display_seq, @object
	.size	u8x8_d_il3820_to_display_seq, 85
u8x8_d_il3820_to_display_seq:
	.byte	24
	.byte	21
	.byte	50
	.byte	22
	.byte	80
	.byte	22
	.byte	-86
	.byte	22
	.byte	85
	.byte	22
	.byte	-86
	.byte	22
	.byte	17
	.byte	22
	.byte	17
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
	.byte	0
	.byte	22
	.byte	-1
	.byte	22
	.byte	-1
	.byte	22
	.byte	63
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
	.byte	120
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_296x128_init_seq,"a",@progbits
	.type	u8x8_d_il3820_296x128_init_seq, @object
	.size	u8x8_d_il3820_296x128_init_seq, 59
u8x8_d_il3820_296x128_init_seq:
	.byte	24
	.byte	21
	.byte	16
	.byte	22
	.byte	0
	.byte	21
	.byte	1
	.byte	22
	.byte	39
	.byte	22
	.byte	1
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
	.byte	44
	.byte	22
	.byte	-88
	.byte	21
	.byte	58
	.byte	22
	.byte	22
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
	.byte	7
	.byte	21
	.byte	68
	.byte	22
	.byte	0
	.byte	22
	.byte	29
	.byte	21
	.byte	69
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	39
	.byte	22
	.byte	1
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_il3820_exec_1000dly_seq,"a",@progbits
	.type	u8x8_d_il3820_exec_1000dly_seq, @object
	.size	u8x8_d_il3820_exec_1000dly_seq, 16
u8x8_d_il3820_exec_1000dly_seq:
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
	.section	.rodata.u8x8_il3820_296x128_display_info,"a",@progbits
	.align	4
	.type	u8x8_il3820_296x128_display_info, @object
	.size	u8x8_il3820_296x128_display_info, 24
u8x8_il3820_296x128_display_info:
	.byte	0
	.byte	1
	.byte	120
	.byte	60
	.byte	100
	.byte	100
	.byte	50
	.byte	125
	.word	4000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	37
	.byte	16
	.byte	0
	.byte	0
	.short	296
	.short	128
	.section	.rodata.u8x8_d_il3820_296x128_powersave1_seq,"a",@progbits
	.type	u8x8_d_il3820_296x128_powersave1_seq, @object
	.size	u8x8_d_il3820_296x128_powersave1_seq, 11
u8x8_d_il3820_296x128_powersave1_seq:
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
	.section	.rodata.u8x8_d_il3820_296x128_powersave0_seq,"a",@progbits
	.type	u8x8_d_il3820_296x128_powersave0_seq, @object
	.size	u8x8_d_il3820_296x128_powersave0_seq, 13
u8x8_d_il3820_296x128_powersave0_seq:
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9b4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.4byte	.LASF91
	.4byte	.LASF92
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0xf0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44f
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0xf0
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x93f
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
	.4byte	0x94b
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
	.4byte	0x957
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
	.4byte	0x963
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
	.4byte	0x963
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
	.4byte	0x963
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
	.4byte	0x96f
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
	.4byte	u8x8_d_il3820_exec_1000dly_seq
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0xa7
	.4byte	0x358
	.byte	0x1
	.4byte	0x488
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0xa7
	.4byte	0x358
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.4byte	0x7e
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0xaa
	.4byte	0x488
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0xab
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
	.byte	0xb5
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0xb5
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0xb5
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0xb5
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0xb7
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"c"
	.byte	0x1
	.byte	0xb8
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb8
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0xb9
	.4byte	0x358
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1e
	.4byte	0x44f
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd6
	.4byte	0x553
	.uleb128 0x1f
	.4byte	0x45f
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x21
	.4byte	0x468
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	0x47c
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	0x471
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2832
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL9
	.4byte	0x94b
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
	.4byte	0x957
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
	.byte	0x4f
	.byte	0
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0x97b
	.4byte	0x59e
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
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x97b
	.4byte	0x5be
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x9
	.byte	0xec
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x957
	.4byte	0x5d8
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
	.4byte	.LVL18
	.4byte	0x97b
	.4byte	0x5f2
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
	.4byte	.LVL19
	.4byte	0x957
	.4byte	0x60c
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
	.4byte	.LVL28
	.4byte	0x987
	.4byte	0x62b
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0x993
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
	.2byte	0x175
	.4byte	0x7e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x736
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x175
	.4byte	0x32d
	.4byte	.LLST7
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x175
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x175
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x175
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x99f
	.4byte	0x6af
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
	.4byte	u8x8_il3820_296x128_display_info
	.byte	0
	.uleb128 0x11
	.4byte	.LVL36
	.4byte	0x9ab
	.4byte	0x6c3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL37
	.4byte	0x96f
	.4byte	0x6e0
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
	.4byte	u8x8_d_il3820_296x128_init_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL38
	.4byte	0x96f
	.4byte	0x6fd
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
	.4byte	u8x8_d_il3820_296x128_powersave0_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL39
	.4byte	0x374
	.4byte	0x711
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL40
	.4byte	0x49f
	.4byte	0x725
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL43
	.4byte	0x96f
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
	.2byte	0x1ff
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x830
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x32d
	.4byte	.LLST9
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL47
	.4byte	0x99f
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
	.4byte	u8x8_il3820_296x128_display_info
	.byte	0
	.uleb128 0x11
	.4byte	.LVL48
	.4byte	0x9ab
	.4byte	0x7bd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL49
	.4byte	0x96f
	.4byte	0x7da
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
	.4byte	u8x8_d_il3820_v2_296x128_init_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL50
	.4byte	0x96f
	.4byte	0x7f7
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
	.4byte	u8x8_d_il3820_296x128_powersave0_seq
	.byte	0
	.uleb128 0x11
	.4byte	.LVL51
	.4byte	0x374
	.4byte	0x80b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL52
	.4byte	0x49f
	.4byte	0x81f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0x96f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x840
	.uleb128 0x19
	.4byte	0x498
	.byte	0xc
	.byte	0
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.byte	0x6d
	.4byte	0x851
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_296x128_powersave0_seq
	.uleb128 0xe
	.4byte	0x830
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x866
	.uleb128 0x19
	.4byte	0x498
	.byte	0xa
	.byte	0
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0x77
	.4byte	0x877
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_296x128_powersave1_seq
	.uleb128 0xe
	.4byte	0x856
	.uleb128 0x27
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8e
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_il3820_296x128_display_info
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x89d
	.uleb128 0x19
	.4byte	0x498
	.byte	0xf
	.byte	0
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x1
	.byte	0xe4
	.4byte	0x8ae
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_exec_1000dly_seq
	.uleb128 0xe
	.4byte	0x88d
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x8c3
	.uleb128 0x19
	.4byte	0x498
	.byte	0x3a
	.byte	0
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x112
	.4byte	0x8d5
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_296x128_init_seq
	.uleb128 0xe
	.4byte	0x8b3
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x8ea
	.uleb128 0x19
	.4byte	0x498
	.byte	0x54
	.byte	0
	.uleb128 0x28
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x136
	.4byte	0x8fc
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_to_display_seq
	.uleb128 0xe
	.4byte	0x8da
	.uleb128 0x28
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x913
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_v2_296x128_init_seq
	.uleb128 0xe
	.4byte	0x8b3
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x928
	.uleb128 0x19
	.4byte	0x498
	.byte	0x52
	.byte	0
	.uleb128 0x28
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x93a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_il3820_v2_to_display_seq
	.uleb128 0xe
	.4byte	0x918
	.uleb128 0x29
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x22f
	.uleb128 0x29
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x259
	.uleb128 0x29
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x255
	.uleb128 0x29
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x257
	.uleb128 0x29
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x278
	.uleb128 0x29
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x256
	.uleb128 0x29
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x258
	.uleb128 0x29
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x29
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x29
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
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x55
	.uleb128 0x17
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
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
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
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x3
	.4byte	buf$2832
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	buf$2832+1
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	buf$2832
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
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
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF89:
	.string	"u8x8_d_helper_display_init"
.LASF79:
	.string	"u8x8_d_il3820_v2_to_display_seq"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
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
.LASF80:
	.string	"u8x8_ClearDisplay"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF70:
	.string	"u8x8_d_il3820_296x128"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF93:
	.string	"u8x8_convert_tile_for_il3820"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF66:
	.string	"u8x8"
.LASF57:
	.string	"tile_ptr"
.LASF67:
	.string	"arg_int"
.LASF86:
	.string	"u8x8_cad_SendData"
.LASF77:
	.string	"u8x8_d_il3820_to_display_seq"
.LASF72:
	.string	"u8x8_d_il3820_296x128_powersave0_seq"
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
.LASF82:
	.string	"u8x8_cad_SendCmd"
.LASF69:
	.string	"page"
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
.LASF81:
	.string	"u8x8_cad_StartTransfer"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF13:
	.string	"u8x8_t"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF44:
	.string	"sck_clock_hz"
.LASF91:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_il3820_296x128.c"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"u8x8_char_cb"
.LASF83:
	.string	"u8x8_cad_SendMultipleArg"
.LASF65:
	.string	"u8x8_d_il3820_draw_tile"
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF76:
	.string	"u8x8_d_il3820_296x128_init_seq"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF84:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF37:
	.string	"chip_disable_level"
.LASF25:
	.string	"i2c_address"
.LASF71:
	.string	"u8x8_d_il3820_v2_296x128"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF64:
	.string	"u8x8_d_il3820_first_init"
.LASF26:
	.string	"i2c_started"
.LASF88:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF75:
	.string	"u8x8_d_il3820_exec_1000dly_seq"
.LASF92:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF85:
	.string	"u8x8_cad_SendArg"
.LASF73:
	.string	"u8x8_d_il3820_296x128_powersave1_seq"
.LASF90:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF74:
	.string	"u8x8_il3820_296x128_display_info"
.LASF78:
	.string	"u8x8_d_il3820_v2_296x128_init_seq"
.LASF15:
	.string	"next_cb"
.LASF62:
	.string	"pbuf"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
