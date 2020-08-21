	.file	"u8x8_d_ks0108.c"
	.text
.Ltext0:
	.section	.text.u8x8_ks0108_out,"ax",@progbits
	.align	4
	.type	u8x8_ks0108_out, @function
u8x8_ks0108_out:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ks0108.c"
	.loc 1 68 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 70 0
	l8ui	a5, a3, 4
	movi.n	a11, 0x40
	slli	a5, a5, 3
	extui	a5, a5, 0, 6
	or	a11, a5, a11
	sext	a11, a11, 7
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL1:
	.loc 1 71 0
	l8ui	a11, a4, 6
	movi	a5, -0x48
	or	a11, a11, a5
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL2:
	.loc 1 78 0
	movi.n	a6, -8
	.loc 1 73 0
	j	.L2
.L4:
	.loc 1 76 0
	l8ui	a5, a3, 4
.LVL3:
	.loc 1 81 0
	l8ui	a8, a3, 5
	.loc 1 77 0
	addi.n	a11, a5, 8
	extui	a11, a11, 0, 8
.LVL4:
	.loc 1 78 0
	and	a11, a11, a6
.LVL5:
	.loc 1 79 0
	sub	a11, a11, a5
.LVL6:
	extui	a11, a11, 0, 8
.LVL7:
	minu	a11, a11, a8
.LVL8:
	.loc 1 88 0
	add.n	a5, a11, a5
	.loc 1 89 0
	sub	a8, a8, a11
	.loc 1 90 0
	slli	a11, a11, 3
.LVL9:
	.loc 1 88 0
	s8i	a5, a3, 4
.LVL10:
	.loc 1 91 0
	l32i.n	a12, a3, 0
	.loc 1 90 0
	extui	a5, a11, 0, 8
.LVL11:
	.loc 1 91 0
	mov.n	a11, a5
.LVL12:
	.loc 1 89 0
	s8i	a8, a3, 5
	.loc 1 91 0
	mov.n	a10, a2
	call8	u8x8_cad_SendData
.LVL13:
	.loc 1 92 0
	l32i.n	a11, a3, 0
	add.n	a5, a11, a5
.LVL14:
	s32i.n	a5, a3, 0
	.loc 1 94 0
	l8ui	a5, a3, 5
	bnez.n	a5, .L3
	.loc 1 96 0
	l32i.n	a5, a4, 0
	s32i.n	a5, a3, 0
	.loc 1 97 0
	l8ui	a5, a4, 4
	s8i	a5, a3, 5
	.loc 1 98 0
	l8ui	a5, a3, 6
	addi.n	a5, a5, -1
	s8i	a5, a3, 6
.L3:
	.loc 1 100 0
	l8ui	a5, a3, 4
	extui	a5, a5, 0, 3
	beqz.n	a5, .L1
.L2:
	.loc 1 73 0
	l8ui	a5, a3, 6
	bnez.n	a5, .L4
.L1:
	retw.n
.LFE0:
	.size	u8x8_ks0108_out, .-u8x8_ks0108_out
	.section	.text.u8x8_d_ks0108_128x64,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_ks0108_128x64_display_info
	.literal .LC1, u8x8_d_ks0108_init_seq
	.literal .LC2, u8x8_d_ks0108_powersave0_seq
	.literal .LC3, u8x8_d_ks0108_powersave1_seq
	.align	4
	.global	u8x8_d_ks0108_128x64
	.type	u8x8_d_ks0108_128x64, @function
u8x8_d_ks0108_128x64:
.LFB1:
	.loc 1 131 0
.LVL15:
	entry	sp, 48
.LCFI1:
	.loc 1 131 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 133 0
	beqi	a3, 10, .L9
	movi.n	a8, 0xa
	bltu	a8, a3, .L10
	movi.n	a4, 9
.LVL16:
	beq	a3, a4, .L11
	j	.L16
.L10:
	movi.n	a8, 0xb
	beq	a3, a8, .L12
	movi.n	a8, 0xf
	beq	a3, a8, .L13
	j	.L16
.L11:
	.loc 1 136 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL17:
	j	.L18
.L9:
	.loc 1 139 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL18:
	.loc 1 141 0
	l32i.n	a3, a2, 12
.LVL19:
	movi.n	a13, 0
	movi.n	a12, 1
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL20:
	.loc 1 142 0
	l32r	a3, .LC1
	j	.L19
.L12:
	l32i.n	a3, a2, 12
	.loc 1 151 0
	bnez.n	a4, .L14
	.loc 1 153 0
	mov.n	a13, a4
	movi.n	a12, 1
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL21:
	.loc 1 154 0
	l32r	a3, .LC2
	mov.n	a10, a2
	mov.n	a11, a3
	call8	u8x8_cad_SendSequence
.LVL22:
	.loc 1 155 0
	l32i.n	a5, a2, 12
.LVL23:
	mov.n	a13, a4
	mov.n	a12, a4
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a5
.LVL24:
	.loc 1 157 0
	l32i.n	a5, a2, 12
	mov.n	a13, a4
	movi.n	a12, 2
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a5
.LVL25:
	.loc 1 158 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL26:
	.loc 1 159 0
	mov.n	a13, a4
	l32i.n	a3, a2, 12
	mov.n	a12, a4
	j	.L20
.LVL27:
.L14:
	.loc 1 164 0
	movi.n	a13, 0
	movi.n	a12, 1
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL28:
	.loc 1 165 0
	l32r	a3, .LC3
.L19:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL29:
	.loc 1 166 0
	movi.n	a13, 0
	l32i.n	a4, a2, 12
	mov.n	a12, a13
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a4
.LVL30:
	.loc 1 168 0
	l32i.n	a4, a2, 12
	movi.n	a13, 0
	movi.n	a12, 2
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a4
.LVL31:
	.loc 1 169 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL32:
	.loc 1 170 0
	movi.n	a13, 0
	l32i.n	a3, a2, 12
	mov.n	a12, a13
.LVL33:
.L20:
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a3
.LVL34:
.L18:
	.loc 1 210 0
	movi.n	a4, 1
	j	.L8
.LVL35:
.L13:
	.loc 1 182 0
	l32i.n	a3, a5, 0
	.loc 1 184 0
	l8ui	a8, a5, 4
	.loc 1 182 0
	s32i.n	a3, sp, 0
	.loc 1 183 0
	l8ui	a3, a5, 5
	.loc 1 184 0
	s8i	a8, sp, 5
	.loc 1 183 0
	s8i	a3, sp, 4
	.loc 1 185 0
	s8i	a4, sp, 6
	.loc 1 188 0
	bgeui	a3, 8, .L15
	.loc 1 190 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 1
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL36:
	.loc 1 191 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_ks0108_out
.LVL37:
	.loc 1 192 0
	movi.n	a13, 0
	l32i.n	a3, a2, 12
	mov.n	a12, a13
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a3
.LVL38:
.L15:
	.loc 1 194 0
	l8ui	a3, sp, 4
	movi.n	a8, 0xf
	.loc 1 210 0
	movi.n	a4, 1
	.loc 1 194 0
	bltu	a8, a3, .L8
	.loc 1 196 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 2
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL39:
	.loc 1 197 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_ks0108_out
.LVL40:
	.loc 1 198 0
	movi.n	a13, 0
	l32i.n	a3, a2, 12
	mov.n	a12, a13
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a3
.LVL41:
	j	.L8
.L16:
	.loc 1 208 0
	movi.n	a4, 0
.LVL42:
.L8:
	.loc 1 211 0
	mov.n	a2, a4
.LVL43:
	retw.n
.LFE1:
	.size	u8x8_d_ks0108_128x64, .-u8x8_d_ks0108_128x64
	.section	.text.u8x8_d_ks0108_erm19264,"ax",@progbits
	.literal_position
	.literal .LC4, u8x8_ks0108_192x64_display_info
	.literal .LC5, u8x8_d_ks0108_init_seq
	.literal .LC6, u8x8_d_ks0108_powersave0_seq
	.literal .LC7, u8x8_d_ks0108_powersave1_seq
	.align	4
	.global	u8x8_d_ks0108_erm19264
	.type	u8x8_d_ks0108_erm19264, @function
u8x8_d_ks0108_erm19264:
.LFB2:
	.loc 1 241 0
.LVL44:
	entry	sp, 48
.LCFI2:
	.loc 1 241 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 243 0
	beqi	a3, 10, .L23
	movi.n	a8, 0xa
	bltu	a8, a3, .L24
	movi.n	a4, 9
.LVL45:
	beq	a3, a4, .L25
	j	.L31
.L24:
	movi.n	a8, 0xb
	beq	a3, a8, .L26
	movi.n	a8, 0xf
	beq	a3, a8, .L27
	j	.L31
.L25:
	.loc 1 246 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL46:
	j	.L33
.L23:
	.loc 1 249 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL47:
	.loc 1 251 0
	l32i.n	a3, a2, 12
.LVL48:
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL49:
	.loc 1 252 0
	l32r	a3, .LC5
	j	.L34
.L26:
	l32i.n	a3, a2, 12
	.loc 1 265 0
	bnez.n	a4, .L28
	.loc 1 267 0
	mov.n	a13, a4
	movi.n	a12, 3
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL50:
	.loc 1 268 0
	l32r	a3, .LC6
	mov.n	a10, a2
	mov.n	a11, a3
	call8	u8x8_cad_SendSequence
.LVL51:
	.loc 1 269 0
	l32i.n	a5, a2, 12
.LVL52:
	mov.n	a13, a4
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a5
.LVL53:
	.loc 1 271 0
	l32i.n	a5, a2, 12
	mov.n	a13, a4
	movi.n	a12, 5
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a5
.LVL54:
	.loc 1 272 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL55:
	.loc 1 273 0
	l32i.n	a5, a2, 12
	mov.n	a13, a4
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a5
.LVL56:
	.loc 1 275 0
	l32i.n	a5, a2, 12
	mov.n	a13, a4
	movi.n	a12, 6
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a5
.LVL57:
	.loc 1 276 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL58:
	.loc 1 277 0
	mov.n	a13, a4
	l32i.n	a3, a2, 12
	j	.L35
.LVL59:
.L28:
	.loc 1 282 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL60:
	.loc 1 283 0
	l32r	a3, .LC7
.L34:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL61:
	.loc 1 284 0
	l32i.n	a4, a2, 12
	movi.n	a13, 0
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a4
.LVL62:
	.loc 1 286 0
	l32i.n	a4, a2, 12
	movi.n	a13, 0
	movi.n	a12, 5
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a4
.LVL63:
	.loc 1 287 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL64:
	.loc 1 288 0
	l32i.n	a4, a2, 12
	movi.n	a13, 0
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a4
.LVL65:
	.loc 1 290 0
	l32i.n	a4, a2, 12
	movi.n	a13, 0
	movi.n	a12, 6
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a4
.LVL66:
	.loc 1 291 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL67:
	.loc 1 292 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
.LVL68:
.L35:
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a3
.LVL69:
.L33:
	.loc 1 342 0
	movi.n	a4, 1
	j	.L22
.LVL70:
.L27:
	.loc 1 304 0
	l32i.n	a3, a5, 0
	.loc 1 306 0
	l8ui	a8, a5, 4
	.loc 1 304 0
	s32i.n	a3, sp, 0
	.loc 1 305 0
	l8ui	a3, a5, 5
	.loc 1 306 0
	s8i	a8, sp, 5
	.loc 1 305 0
	s8i	a3, sp, 4
	.loc 1 307 0
	s8i	a4, sp, 6
	.loc 1 320 0
	bgeui	a3, 8, .L29
	.loc 1 322 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 6
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL71:
	.loc 1 323 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_ks0108_out
.LVL72:
	.loc 1 324 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a3
.LVL73:
.L29:
	.loc 1 326 0
	l8ui	a3, sp, 4
	movi.n	a4, 0xf
	bltu	a4, a3, .L30
	.loc 1 328 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 5
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL74:
	.loc 1 329 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_ks0108_out
.LVL75:
	.loc 1 330 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a3
.LVL76:
.L30:
	.loc 1 332 0
	l8ui	a3, sp, 4
	movi.n	a8, 0x17
	.loc 1 342 0
	movi.n	a4, 1
	.loc 1 332 0
	bltu	a8, a3, .L22
	.loc 1 334 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 0x18
	mov.n	a10, a2
	callx8	a3
.LVL77:
	.loc 1 335 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	u8x8_ks0108_out
.LVL78:
	.loc 1 336 0
	l32i.n	a3, a2, 12
	movi.n	a13, 0
	movi.n	a12, 7
	movi.n	a11, 0x19
	mov.n	a10, a2
	callx8	a3
.LVL79:
	j	.L22
.L31:
	.loc 1 340 0
	movi.n	a4, 0
.LVL80:
.L22:
	.loc 1 343 0
	mov.n	a2, a4
.LVL81:
	retw.n
.LFE2:
	.size	u8x8_d_ks0108_erm19264, .-u8x8_d_ks0108_erm19264
	.section	.rodata.u8x8_ks0108_192x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_ks0108_192x64_display_info, @object
	.size	u8x8_ks0108_192x64_display_info, 24
u8x8_ks0108_192x64_display_info:
	.byte	0
	.byte	1
	.byte	100
	.byte	20
	.byte	1
	.byte	6
	.byte	12
	.byte	75
	.word	4000000
	.byte	0
	.byte	4
	.byte	-56
	.byte	-6
	.byte	24
	.byte	8
	.byte	0
	.byte	0
	.short	192
	.short	64
	.section	.rodata.u8x8_ks0108_128x64_display_info,"a",@progbits
	.align	4
	.type	u8x8_ks0108_128x64_display_info, @object
	.size	u8x8_ks0108_128x64_display_info, 24
u8x8_ks0108_128x64_display_info:
	.byte	0
	.byte	1
	.byte	100
	.byte	20
	.byte	1
	.byte	6
	.byte	12
	.byte	75
	.word	4000000
	.byte	0
	.byte	4
	.byte	-56
	.byte	-6
	.byte	16
	.byte	8
	.byte	0
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_ks0108_powersave1_seq,"a",@progbits
	.type	u8x8_d_ks0108_powersave1_seq, @object
	.size	u8x8_d_ks0108_powersave1_seq, 3
u8x8_d_ks0108_powersave1_seq:
	.byte	21
	.byte	62
	.byte	-1
	.section	.rodata.u8x8_d_ks0108_powersave0_seq,"a",@progbits
	.type	u8x8_d_ks0108_powersave0_seq, @object
	.size	u8x8_d_ks0108_powersave0_seq, 3
u8x8_d_ks0108_powersave0_seq:
	.byte	21
	.byte	63
	.byte	-1
	.section	.rodata.u8x8_d_ks0108_init_seq,"a",@progbits
	.type	u8x8_d_ks0108_init_seq, @object
	.size	u8x8_d_ks0108_init_seq, 3
u8x8_d_ks0108_init_seq:
	.byte	21
	.byte	-64
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb9b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.4byte	.LASF80
	.4byte	.LASF81
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
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x8
	.byte	0x1
	.byte	0x3b
	.4byte	0x3ad
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.byte	0x3d
	.4byte	0x358
	.byte	0
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0x3e
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7e
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x1
	.byte	0x43
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x435
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x43
	.4byte	0x32d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.string	"v"
	.byte	0x1
	.byte	0x43
	.4byte	0x435
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x43
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"cnt"
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0xb62
	.4byte	0x40a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0xb62
	.4byte	0x41e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0xb6e
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x374
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x82
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fe
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0x82
	.4byte	0x32d
	.4byte	.LLST1
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0x82
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.byte	0x82
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0x82
	.4byte	0x9f
	.4byte	.LLST4
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0x84
	.4byte	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0xb7a
	.4byte	0x4b9
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
	.4byte	u8x8_ks0108_128x64_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL18
	.4byte	0xb86
	.4byte	0x4cd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL20
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x4ef
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
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
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0xb92
	.4byte	0x52c
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL24
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x550
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
	.byte	0x49
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL25
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x573
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL26
	.4byte	0xb92
	.4byte	0x58d
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL28
	.4byte	0x5ac
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL29
	.4byte	0xb92
	.4byte	0x5c6
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL30
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x5e8
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL31
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x60a
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0xb92
	.4byte	0x624
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL34
	.4byte	0x639
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
	.byte	0x49
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL36
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x65b
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x3ad
	.4byte	0x67b
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL38
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x69d
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x6bf
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0x3ad
	.4byte	0x6df
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL41
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0xf0
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae7
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0xf0
	.4byte	0x32d
	.4byte	.LLST5
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0xf0
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.byte	0xf0
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0xf0
	.4byte	0x9f
	.4byte	.LLST8
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0xf2
	.4byte	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LVL46
	.4byte	0xb7a
	.4byte	0x77c
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
	.4byte	u8x8_ks0108_192x64_display_info
	.byte	0
	.uleb128 0x13
	.4byte	.LVL47
	.4byte	0xb86
	.4byte	0x790
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL49
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x7b2
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x7d5
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL51
	.4byte	0xb92
	.4byte	0x7ef
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x812
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL54
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x835
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0xb92
	.4byte	0x84f
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL56
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x872
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL57
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x895
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL58
	.4byte	0xb92
	.4byte	0x8af
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0x8ce
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL61
	.4byte	0xb92
	.4byte	0x8e8
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL62
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x90a
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL63
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x92c
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL64
	.4byte	0xb92
	.4byte	0x946
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL65
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x968
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL66
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x98a
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL67
	.4byte	0xb92
	.4byte	0x9a4
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0x9be
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL71
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x9e0
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL72
	.4byte	0x3ad
	.4byte	0xa00
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL73
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xa22
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xa44
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL75
	.4byte	0x3ad
	.4byte	0xa64
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xa86
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL77
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xaa8
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
	.byte	0x48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL78
	.4byte	0x3ad
	.4byte	0xac8
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL79
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
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
	.byte	0x49
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x7e
	.4byte	0xaf7
	.uleb128 0x1e
	.4byte	0xaf7
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF68
	.uleb128 0x1f
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2b
	.4byte	0xb0f
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ks0108_init_seq
	.uleb128 0xe
	.4byte	0xae7
	.uleb128 0x1f
	.4byte	.LASF70
	.byte	0x1
	.byte	0x30
	.4byte	0xb25
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ks0108_powersave0_seq
	.uleb128 0xe
	.4byte	0xae7
	.uleb128 0x1f
	.4byte	.LASF71
	.byte	0x1
	.byte	0x35
	.4byte	0xb3b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ks0108_powersave1_seq
	.uleb128 0xe
	.4byte	0xae7
	.uleb128 0x1f
	.4byte	.LASF72
	.byte	0x1
	.byte	0x6a
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ks0108_128x64_display_info
	.uleb128 0x1f
	.4byte	.LASF73
	.byte	0x1
	.byte	0xd5
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ks0108_192x64_display_info
	.uleb128 0x20
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x255
	.uleb128 0x20
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x258
	.uleb128 0x20
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x20
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x20
	.4byte	.LASF78
	.4byte	.LASF78
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
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
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x9
	.byte	0x75
	.sleb128 8
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x33
	.byte	0x73
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x8
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x73
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL15
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL44
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL44
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"u8x8"
.LASF23:
	.string	"x_offset"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF80:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_ks0108.c"
.LASF65:
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
.LASF68:
	.string	"sizetype"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF73:
	.string	"u8x8_ks0108_192x64_display_info"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF6:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF71:
	.string	"u8x8_d_ks0108_powersave1_seq"
.LASF45:
	.string	"spi_mode"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF57:
	.string	"tile_ptr"
.LASF63:
	.string	"arg_int"
.LASF75:
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
.LASF74:
	.string	"u8x8_cad_SendCmd"
.LASF77:
	.string	"u8x8_d_helper_display_init"
.LASF67:
	.string	"u8x8_d_ks0108_erm19264"
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
.LASF14:
	.string	"display_info"
.LASF54:
	.string	"pixel_height"
.LASF82:
	.string	"u8x8_ks0108_out"
.LASF66:
	.string	"u8x8_d_ks0108_128x64"
.LASF53:
	.string	"pixel_width"
.LASF27:
	.string	"utf8_state"
.LASF34:
	.string	"u8x8_struct"
.LASF59:
	.string	"y_pos"
.LASF78:
	.string	"u8x8_cad_SendSequence"
.LASF31:
	.string	"debounce_state"
.LASF18:
	.string	"byte_cb"
.LASF62:
	.string	"u8x8_ks0108_vars"
.LASF37:
	.string	"chip_disable_level"
.LASF72:
	.string	"u8x8_ks0108_128x64_display_info"
.LASF25:
	.string	"i2c_address"
.LASF69:
	.string	"u8x8_d_ks0108_init_seq"
.LASF52:
	.string	"flipmode_x_offset"
.LASF22:
	.string	"encoding"
.LASF70:
	.string	"u8x8_d_ks0108_powersave0_seq"
.LASF26:
	.string	"i2c_started"
.LASF76:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF17:
	.string	"cad_cb"
.LASF55:
	.string	"u8x8_tile_t"
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF79:
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
