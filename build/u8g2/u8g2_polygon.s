	.file	"u8g2_polygon.c"
	.text
.Ltext0:
	.section	.text.pge_Next,"ax",@progbits
	.align	4
	.type	pge_Next, @function
pge_Next:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_polygon.c"
	.loc 1 79 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 80 0
	l16ui	a11, a2, 8
	l16si	a9, a2, 10
	sext	a10, a11, 15
	.loc 1 79 0
	mov.n	a8, a2
	.loc 1 81 0
	movi.n	a2, 0
.LVL1:
	.loc 1 80 0
	bge	a10, a9, .L2
	.loc 1 83 0
	l16ui	a10, a8, 12
	l16ui	a9, a8, 4
	.loc 1 84 0
	l16ui	a2, a8, 14
	.loc 1 83 0
	add.n	a10, a10, a9
	.loc 1 84 0
	l16ui	a9, a8, 6
	.loc 1 83 0
	extui	a10, a10, 0, 16
	.loc 1 84 0
	add.n	a9, a2, a9
	extui	a9, a9, 0, 16
	sext	a2, a9, 15
	.loc 1 83 0
	s16i	a10, a8, 12
	.loc 1 84 0
	s16i	a2, a8, 14
	.loc 1 85 0
	blti	a2, 1, .L3
	.loc 1 87 0
	l16ui	a12, a8, 0
	.loc 1 88 0
	l16ui	a2, a8, 2
	.loc 1 87 0
	add.n	a10, a10, a12
	.loc 1 88 0
	sub	a9, a9, a2
	.loc 1 87 0
	s16i	a10, a8, 12
	.loc 1 88 0
	s16i	a9, a8, 14
.L3:
	.loc 1 91 0
	addi.n	a11, a11, 1
	s16i	a11, a8, 8
	.loc 1 92 0
	movi.n	a2, 1
.L2:
	.loc 1 93 0
	retw.n
.LFE0:
	.size	pge_Next, .-pge_Next
	.section	.text.pg_inc,"ax",@progbits
	.align	4
	.type	pg_inc, @function
pg_inc:
.LFB2:
	.loc 1 127 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 128 0
	addi.n	a3, a3, 1
.LVL3:
	.loc 1 129 0
	l8ui	a8, a2, 24
	.loc 1 128 0
	extui	a3, a3, 0, 8
.LVL4:
	.loc 1 129 0
	bltu	a3, a8, .L6
	.loc 1 130 0
	movi.n	a3, 0
.LVL5:
.L6:
	.loc 1 132 0
	mov.n	a2, a3
.LVL6:
	retw.n
.LFE2:
	.size	pg_inc, .-pg_inc
	.section	.text.pg_dec,"ax",@progbits
	.align	4
	.type	pg_dec, @function
pg_dec:
.LFB3:
	.loc 1 135 0
.LVL7:
	entry	sp, 32
.LCFI2:
	.loc 1 136 0
	addi.n	a3, a3, -1
.LVL8:
	.loc 1 137 0
	l8ui	a8, a2, 24
	.loc 1 136 0
	extui	a3, a3, 0, 8
.LVL9:
	.loc 1 137 0
	bltu	a3, a8, .L8
	.loc 1 138 0
	addi.n	a3, a8, -1
.LVL10:
	extui	a3, a3, 0, 8
.LVL11:
.L8:
	.loc 1 140 0
	mov.n	a2, a3
.LVL12:
	retw.n
.LFE3:
	.size	pg_dec, .-pg_dec
	.section	.text.pg_line_init$constprop$4,"ax",@progbits
	.literal_position
	.literal .LC0, u8g2_pg+28
	.literal .LC1, u8g2_pg
	.align	4
	.type	pg_line_init$constprop$4, @function
pg_line_init$constprop$4:
.LFB20:
	.loc 1 247 0
.LVL13:
	entry	sp, 32
.LCFI3:
.LVL14:
	.loc 1 249 0
	l32r	a3, .LC0
	addx2	a2, a2, a2
.LVL15:
	addx8	a2, a2, a3
.LVL16:
	.loc 1 257 0
	l8ui	a11, a2, 20
	l32r	a3, .LC1
	.loc 1 259 0
	l32i.n	a8, a2, 16
	.loc 1 257 0
	addx4	a4, a11, a3
	.loc 1 259 0
	mov.n	a10, a3
	.loc 1 257 0
	l16ui	a5, a4, 2
.LVL17:
	.loc 1 258 0
	l16ui	a4, a4, 0
.LVL18:
	.loc 1 259 0
	callx8	a8
.LVL19:
	.loc 1 260 0
	addx4	a3, a10, a3
	l16ui	a11, a3, 2
.LVL20:
	.loc 1 261 0
	l16ui	a8, a3, 0
.LVL21:
.LBB16:
.LBB17:
	.loc 1 101 0
	sub	a9, a11, a5
	.loc 1 98 0
	sub	a8, a8, a4
.LVL22:
	.loc 1 101 0
	extui	a9, a9, 0, 16
.LBE17:
.LBE16:
	.loc 1 262 0
	s8i	a10, a2, 20
.LVL23:
.LBB19:
.LBB18:
	.loc 1 98 0
	extui	a8, a8, 0, 16
	.loc 1 101 0
	sext	a10, a9, 15
.LVL24:
	.loc 1 98 0
	sext	a3, a8, 15
.LVL25:
	.loc 1 101 0
	s16i	a10, a2, 2
	.loc 1 102 0
	s16i	a11, a2, 10
	.loc 1 103 0
	s16i	a5, a2, 8
	.loc 1 104 0
	s16i	a4, a2, 12
	.loc 1 106 0
	bltz	a3, .L10
	.loc 1 108 0
	movi.n	a4, 1
.LVL26:
	s16i	a4, a2, 0
.LVL27:
	.loc 1 110 0
	movi.n	a4, 0
	s16i	a4, a2, 14
	mov.n	a8, a3
.LVL28:
	j	.L11
.LVL29:
.L10:
	.loc 1 116 0
	movi.n	a11, 1
.LVL30:
	.loc 1 114 0
	movi.n	a4, -1
.LVL31:
	.loc 1 115 0
	neg	a8, a8
.LVL32:
	.loc 1 116 0
	sub	a9, a11, a9
	.loc 1 114 0
	s16i	a4, a2, 0
	.loc 1 115 0
	sext	a8, a8, 15
.LVL33:
	.loc 1 116 0
	s16i	a9, a2, 14
.LVL34:
.L11:
	.loc 1 119 0
	quos	a3, a3, a10
.LVL35:
	.loc 1 120 0
	rems	a8, a8, a10
.LVL36:
	.loc 1 119 0
	s16i	a3, a2, 4
	.loc 1 120 0
	s16i	a8, a2, 6
	retw.n
.LBE18:
.LBE19:
.LFE20:
	.size	pg_line_init$constprop$4, .-pg_line_init$constprop$4
	.section	.text.pg_expand_min_y$constprop$7,"ax",@progbits
	.literal_position
	.literal .LC2, u8g2_pg
	.align	4
	.type	pg_expand_min_y$constprop$7, @function
pg_expand_min_y$constprop$7:
.LFB17:
	.loc 1 142 0
.LVL37:
	entry	sp, 32
.LCFI4:
.LVL38:
	.loc 1 144 0
	l32r	a4, .LC2
	addx2	a3, a3, a3
.LVL39:
	slli	a3, a3, 3
	add.n	a5, a4, a3
	l8ui	a10, a5, 48
.LVL40:
.L14:
	.loc 1 147 0
	add.n	a5, a4, a3
	l32i.n	a8, a5, 44
	mov.n	a11, a10
	mov.n	a10, a4
.LVL41:
	callx8	a8
.LVL42:
	.loc 1 148 0
	addx4	a8, a10, a4
	l16si	a8, a8, 2
	bne	a8, a2, .L12
	.loc 1 150 0
	s8i	a10, a5, 48
	j	.L14
.L12:
	retw.n
.LFE17:
	.size	pg_expand_min_y$constprop$7, .-pg_expand_min_y$constprop$7
	.section	.text.u8g2_ClearPolygonXY,"ax",@progbits
	.literal_position
	.literal .LC3, u8g2_pg
	.align	4
	.global	u8g2_ClearPolygonXY
	.type	u8g2_ClearPolygonXY, @function
u8g2_ClearPolygonXY:
.LFB12:
	.loc 1 324 0
	entry	sp, 32
.LCFI5:
.LVL43:
.LBB20:
.LBB21:
	.loc 1 301 0
	l32r	a8, .LC3
	movi.n	a9, 0
	s8i	a9, a8, 24
	retw.n
.LBE21:
.LBE20:
.LFE12:
	.size	u8g2_ClearPolygonXY, .-u8g2_ClearPolygonXY
	.section	.text.u8g2_AddPolygonXY,"ax",@progbits
	.literal_position
	.literal .LC4, u8g2_pg
	.align	4
	.global	u8g2_AddPolygonXY
	.type	u8g2_AddPolygonXY, @function
u8g2_AddPolygonXY:
.LFB13:
	.loc 1 329 0
.LVL44:
	entry	sp, 32
.LCFI6:
.LBB24:
.LBB25:
	.loc 1 306 0
	l32r	a9, .LC4
.LBE25:
.LBE24:
	.loc 1 329 0
	sext	a3, a3, 15
.LVL45:
.LBB28:
.LBB26:
	.loc 1 306 0
	l8ui	a8, a9, 24
.LBE26:
.LBE28:
	.loc 1 329 0
	sext	a4, a4, 15
.LVL46:
.LBB29:
.LBB27:
	.loc 1 306 0
	bgeui	a8, 6, .L16
	.loc 1 308 0
	addx4	a10, a8, a9
	.loc 1 310 0
	addi.n	a8, a8, 1
	.loc 1 308 0
	s16i	a3, a10, 0
	.loc 1 309 0
	s16i	a4, a10, 2
	.loc 1 310 0
	s8i	a8, a9, 24
.L16:
	retw.n
.LBE27:
.LBE29:
.LFE13:
	.size	u8g2_AddPolygonXY, .-u8g2_AddPolygonXY
	.section	.text.u8g2_DrawPolygon,"ax",@progbits
	.literal_position
	.literal .LC7, u8g2_pg
	.literal .LC8, pg_inc
	.literal .LC9, pg_dec
	.literal .LC10, u8g2_pg+28
	.literal .LC11, u8g2_pg+52
	.align	4
	.global	u8g2_DrawPolygon
	.type	u8g2_DrawPolygon, @function
u8g2_DrawPolygon:
.LFB14:
	.loc 1 334 0
.LVL47:
	entry	sp, 32
.LCFI7:
.LVL48:
.LBB38:
.LBB39:
.LBB40:
	.loc 1 161 0
	l32r	a3, .LC7
	l32r	a4, .LC8
	.loc 1 165 0
	l16si	a5, a3, 2
.LVL49:
	.loc 1 161 0
	s32i	a4, a3, 68
	.loc 1 162 0
	l32r	a4, .LC9
	.loc 1 168 0
	movi.n	a10, 0
	.loc 1 162 0
	s32i.n	a4, a3, 44
	.loc 1 167 0
	movi.n	a4, 0
	s8i	a4, a3, 48
.LVL50:
	.loc 1 168 0
	l8ui	a12, a3, 24
	mov.n	a4, a3
	.loc 1 166 0
	mov.n	a6, a5
	.loc 1 168 0
	mov.n	a11, a10
	movi.n	a8, 1
	j	.L19
.LVL51:
.L21:
	.loc 1 170 0
	l16si	a9, a4, 6
	max	a5, a9, a5
.LVL52:
	.loc 1 174 0
	blt	a9, a6, .L39
	mov.n	a9, a6
	j	.L20
.L39:
	mov.n	a11, a8
	movi.n	a10, 1
.L20:
.LVL53:
	.loc 1 168 0
	addi.n	a8, a8, 1
.LVL54:
	extui	a8, a8, 0, 8
.LVL55:
	addi.n	a4, a4, 4
	mov.n	a6, a9
.LVL56:
.L19:
	bltu	a8, a12, .L21
	beqz.n	a10, .L22
	s8i	a11, a3, 48
.L22:
	.loc 1 183 0
	sub	a5, a5, a6
.LVL57:
	sext	a5, a5, 15
	s16i	a5, a3, 26
	.loc 1 186 0
	beqz.n	a5, .L18
	.loc 1 190 0
	l8ui	a4, a3, 48
	.loc 1 191 0
	movi.n	a11, 1
	.loc 1 190 0
	s8i	a4, a3, 72
	.loc 1 191 0
	mov.n	a10, a6
	call8	pg_expand_min_y$constprop$7
.LVL58:
	.loc 1 195 0
	movi.n	a4, 1
	.loc 1 192 0
	movi.n	a11, 0
	mov.n	a10, a6
	call8	pg_expand_min_y$constprop$7
.LVL59:
	.loc 1 195 0
	s8i	a4, a3, 25
	.loc 1 196 0
	l8ui	a5, a3, 48
	l8ui	a4, a3, 72
	addx4	a5, a5, a3
	addx4	a4, a4, a3
	l16si	a5, a5, 0
	l16si	a4, a4, 0
	beq	a5, a4, .L24
	.loc 1 198 0
	movi.n	a4, 0
	s8i	a4, a3, 25
	j	.L25
.L24:
	.loc 1 202 0
	l16ui	a4, a3, 26
	addi.n	a4, a4, -1
	sext	a4, a4, 15
	s16i	a4, a3, 26
	.loc 1 203 0
	bnez.n	a4, .L25
	retw.n
.LVL60:
.L37:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 1 277 0
	mov.n	a10, a5
	call8	pge_Next
.LVL61:
	.loc 1 278 0
	l32r	a10, .LC11
	call8	pge_Next
.LVL62:
.L38:
.LBB43:
.LBB44:
	.loc 1 240 0
	movi.n	a6, 0
.LVL63:
.L35:
	.loc 1 215 0
	l16si	a12, a3, 60
.LVL64:
	.loc 1 217 0
	bltz	a12, .L31
	.loc 1 219 0
	l16ui	a8, a2, 70
	bge	a12, a8, .L31
	.loc 1 214 0
	l16ui	a11, a3, 64
	.loc 1 213 0
	l16si	a8, a3, 40
	.loc 1 214 0
	sext	a13, a11, 15
	.loc 1 221 0
	bge	a8, a13, .L27
	.loc 1 223 0
	bltz	a13, .L31
	.loc 1 225 0
	l16ui	a9, a2, 68
	bge	a8, a9, .L31
	max	a11, a8, a6
.LVL65:
	.loc 1 229 0
	blt	a13, a9, .L28
	.loc 1 230 0
	sext	a13, a9, 15
.LVL66:
.L28:
	.loc 1 231 0
	sub	a13, a13, a11
.LVL67:
	j	.L50
.LVL68:
.L27:
	.loc 1 235 0
	bltz	a8, .L31
	.loc 1 237 0
	l16ui	a9, a2, 68
	bge	a13, a9, .L31
	.loc 1 240 0
	movltz	a8, a6, a13
.LVL69:
	.loc 1 241 0
	blt	a8, a9, .L30
	.loc 1 242 0
	sext	a8, a9, 15
.LVL70:
.L30:
	.loc 1 243 0
	extui	a11, a11, 0, 16
	sub	a13, a8, a11
.LVL71:
.L50:
	extui	a13, a13, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawHLine
.LVL72:
	j	.L31
.L32:
.LBE44:
.LBE43:
	.loc 1 286 0
	call8	pg_line_init$constprop$4
.LVL73:
.L31:
	.loc 1 284 0
	mov.n	a10, a5
	call8	pge_Next
.LVL74:
	beqz.n	a10, .L32
	j	.L33
.L34:
	.loc 1 290 0
	movi.n	a10, 1
	call8	pg_line_init$constprop$4
.LVL75:
.L33:
	.loc 1 288 0
	l32r	a10, .LC11
	call8	pge_Next
.LVL76:
	beqz.n	a10, .L34
	addi.n	a4, a4, -1
.LVL77:
	sext	a4, a4, 15
.LVL78:
	.loc 1 293 0
	bgei	a4, 1, .L35
	retw.n
.LVL79:
.L25:
	.loc 1 272 0
	movi.n	a10, 0
	.loc 1 269 0
	l16si	a4, a3, 26
.LVL80:
	.loc 1 272 0
	call8	pg_line_init$constprop$4
.LVL81:
	.loc 1 273 0
	movi.n	a10, 1
	call8	pg_line_init$constprop$4
.LVL82:
	.loc 1 275 0
	l8ui	a6, a3, 25
.LVL83:
	l32r	a5, .LC10
	beqz.n	a6, .L38
	j	.L37
.LVL84:
.L18:
	retw.n
.LBE42:
.LBE41:
.LBE38:
.LFE14:
	.size	u8g2_DrawPolygon, .-u8g2_DrawPolygon
	.section	.text.u8g2_DrawTriangle,"ax",@progbits
	.literal_position
	.literal .LC12, u8g2_pg
	.align	4
	.global	u8g2_DrawTriangle
	.type	u8g2_DrawTriangle, @function
u8g2_DrawTriangle:
.LFB15:
	.loc 1 339 0
.LVL85:
	entry	sp, 32
.LCFI8:
.LVL86:
.LBB60:
.LBB61:
.LBB62:
	.loc 1 308 0
	l32r	a8, .LC12
.LBE62:
.LBE61:
.LBE60:
	.loc 1 339 0
	l16si	a9, sp, 32
.LBB67:
.LBB65:
.LBB63:
	.loc 1 308 0
	s16i	a3, a8, 0
.LBE63:
.LBE65:
.LBE67:
.LBB68:
.LBB69:
.LBB70:
	.loc 1 309 0
	s16i	a9, a8, 10
.LBE70:
.LBE69:
.LBE68:
.LBB77:
.LBB66:
.LBB64:
	s16i	a4, a8, 2
.LVL87:
.LBE64:
.LBE66:
.LBE77:
.LBB78:
.LBB74:
.LBB71:
	.loc 1 310 0
	movi.n	a9, 3
.LBE71:
.LBE74:
.LBE78:
.LBB79:
.LBB80:
.LBB81:
	.loc 1 308 0
	s16i	a5, a8, 4
	.loc 1 309 0
	s16i	a6, a8, 6
.LVL88:
.LBE81:
.LBE80:
.LBE79:
.LBB82:
.LBB75:
.LBB72:
	.loc 1 308 0
	s16i	a7, a8, 8
.LBE72:
.LBE75:
.LBE82:
	.loc 1 344 0
	mov.n	a10, a2
.LBB83:
.LBB76:
.LBB73:
	.loc 1 310 0
	s8i	a9, a8, 24
.LBE73:
.LBE76:
.LBE83:
	.loc 1 339 0
	.loc 1 344 0
	call8	u8g2_DrawPolygon
.LVL89:
	retw.n
.LFE15:
	.size	u8g2_DrawTriangle, .-u8g2_DrawTriangle
	.comm	u8g2_pg,76,4
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI5-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI6-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI7-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI8-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.file 5 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10c5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0xc
	.4byte	.LASF173
	.4byte	.LASF174
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x15
	.4byte	0x54
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x20
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0xc3
	.4byte	0xd8
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.4byte	0x1dd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x148
	.4byte	0x342
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x149
	.4byte	0x317
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2e2
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2e2
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2e2
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2e2
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x14e
	.4byte	0xc0
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x14f
	.4byte	0x34d
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x150
	.4byte	0xb5
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x151
	.4byte	0x9f
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x152
	.4byte	0x9f
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x153
	.4byte	0x9f
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x156
	.4byte	0x9f
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x158
	.4byte	0x9f
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x159
	.4byte	0x9f
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x15a
	.4byte	0x9f
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x15b
	.4byte	0x9f
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x15c
	.4byte	0x9f
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x15d
	.4byte	0x9f
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x4
	.byte	0xc4
	.4byte	0x1e8
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.4byte	0x2e2
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe1
	.4byte	0x9f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe2
	.4byte	0x9f
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xe4
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xe5
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xe6
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0xe7
	.4byte	0x9f
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0xee
	.4byte	0x9f
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.byte	0xf2
	.4byte	0x9f
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.byte	0xf5
	.4byte	0xc0
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.byte	0xff
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x102
	.4byte	0x9f
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x108
	.4byte	0x9f
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x10a
	.4byte	0x9f
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x10d
	.4byte	0x9f
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x10e
	.4byte	0x9f
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x110
	.4byte	0x9f
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x111
	.4byte	0x9f
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x119
	.4byte	0xb5
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x11a
	.4byte	0xb5
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x4
	.byte	0xc7
	.4byte	0x2ed
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x311
	.uleb128 0xc
	.4byte	0x311
	.uleb128 0xc
	.4byte	0x9f
	.uleb128 0xc
	.4byte	0x9f
	.uleb128 0xc
	.4byte	0xcb
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc8
	.4byte	0x322
	.uleb128 0xa
	.byte	0x4
	.4byte	0x328
	.uleb128 0xb
	.4byte	0xb5
	.4byte	0x33c
	.uleb128 0xc
	.4byte	0x311
	.uleb128 0xc
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x9f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x348
	.uleb128 0xd
	.4byte	0x1dd
	.uleb128 0xa
	.byte	0x4
	.4byte	0x353
	.uleb128 0xd
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x5
	.byte	0xb2
	.4byte	0xb5
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x5
	.byte	0xbc
	.4byte	0x36e
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x94
	.byte	0x5
	.2byte	0x11b
	.4byte	0x528
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x11d
	.4byte	0xcd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x11e
	.4byte	0x5c5
	.byte	0x2c
	.uleb128 0xe
	.string	"cb"
	.byte	0x5
	.2byte	0x11f
	.4byte	0x79f
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x122
	.4byte	0x33c
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x123
	.4byte	0x9f
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x124
	.4byte	0x9f
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x127
	.4byte	0x358
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x128
	.4byte	0x358
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x129
	.4byte	0x358
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x12f
	.4byte	0x358
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x130
	.4byte	0x358
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x133
	.4byte	0x358
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x134
	.4byte	0x358
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x139
	.4byte	0x358
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x13a
	.4byte	0x358
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x13b
	.4byte	0x358
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x13c
	.4byte	0x358
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x140
	.4byte	0x358
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x141
	.4byte	0x358
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x142
	.4byte	0x358
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x143
	.4byte	0x358
	.byte	0x56
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x148
	.4byte	0x34d
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x14c
	.4byte	0x77e
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x14d
	.4byte	0x772
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x14e
	.4byte	0x6cd
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x152
	.4byte	0x9f
	.byte	0x8c
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x155
	.4byte	0x9f
	.byte	0x8d
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x156
	.4byte	0x94
	.byte	0x8e
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x157
	.4byte	0x94
	.byte	0x8f
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x159
	.4byte	0x94
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x15b
	.4byte	0x9f
	.byte	0x91
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x15d
	.4byte	0x9f
	.byte	0x92
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x161
	.4byte	0x9f
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x5
	.byte	0xbd
	.4byte	0x533
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0xc
	.byte	0x5
	.2byte	0x111
	.4byte	0x568
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x113
	.4byte	0x568
	.byte	0
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x114
	.4byte	0x58a
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x115
	.4byte	0x595
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x5
	.byte	0xbf
	.4byte	0x573
	.uleb128 0xa
	.byte	0x4
	.4byte	0x579
	.uleb128 0xf
	.4byte	0x584
	.uleb128 0xc
	.4byte	0x584
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x363
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x5
	.byte	0xc0
	.4byte	0x573
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x5
	.byte	0xc1
	.4byte	0x5a0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5a6
	.uleb128 0xf
	.4byte	0x5c5
	.uleb128 0xc
	.4byte	0x584
	.uleb128 0xc
	.4byte	0x358
	.uleb128 0xc
	.4byte	0x358
	.uleb128 0xc
	.4byte	0x358
	.uleb128 0xc
	.4byte	0x9f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x5
	.byte	0xc2
	.4byte	0x5a0
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x18
	.byte	0x5
	.byte	0xc8
	.4byte	0x6cd
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x5
	.byte	0xcb
	.4byte	0x9f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x5
	.byte	0xcc
	.4byte	0x9f
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x5
	.byte	0xcd
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x5
	.byte	0xce
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.byte	0xd1
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x5
	.byte	0xd2
	.4byte	0x9f
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x5
	.byte	0xd3
	.4byte	0x9f
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x5
	.byte	0xd4
	.4byte	0x9f
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x5
	.byte	0xd5
	.4byte	0x9f
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x5
	.byte	0xd8
	.4byte	0x94
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x5
	.byte	0xd9
	.4byte	0x94
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0xda
	.4byte	0x94
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.byte	0xdb
	.4byte	0x94
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x5
	.byte	0xde
	.4byte	0x94
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x5
	.byte	0xdf
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x5
	.byte	0xe0
	.4byte	0x94
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x5
	.byte	0xe1
	.4byte	0x94
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x5
	.byte	0xe4
	.4byte	0xb5
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x5
	.byte	0xe5
	.4byte	0xb5
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x5
	.byte	0xe9
	.4byte	0xb5
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x5
	.byte	0xec
	.4byte	0x5d0
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x14
	.byte	0x5
	.byte	0xef
	.4byte	0x772
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x5
	.byte	0xf1
	.4byte	0x34d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.byte	0xf3
	.4byte	0x358
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x5
	.byte	0xf4
	.4byte	0x358
	.byte	0x6
	.uleb128 0x10
	.string	"x"
	.byte	0x5
	.byte	0xf6
	.4byte	0x94
	.byte	0x8
	.uleb128 0x10
	.string	"y"
	.byte	0x5
	.byte	0xf7
	.4byte	0x94
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x5
	.byte	0xf8
	.4byte	0x94
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x5
	.byte	0xf9
	.4byte	0x94
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x5
	.byte	0xfb
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x5
	.byte	0xfc
	.4byte	0x9f
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x5
	.byte	0xfd
	.4byte	0x9f
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x5
	.byte	0xfe
	.4byte	0x9f
	.byte	0xf
	.uleb128 0xe
	.string	"dir"
	.byte	0x5
	.2byte	0x100
	.4byte	0x9f
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x5
	.2byte	0x103
	.4byte	0x6d8
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x5
	.2byte	0x118
	.4byte	0x78a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x790
	.uleb128 0xb
	.4byte	0x358
	.4byte	0x79f
	.uleb128 0xc
	.4byte	0x584
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7a5
	.uleb128 0xd
	.4byte	0x528
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x1
	.byte	0x10
	.4byte	0xaa
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.4byte	0x7d6
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x15
	.4byte	0x7aa
	.byte	0
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.byte	0x16
	.4byte	0x7aa
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x1
	.byte	0x19
	.4byte	0x7e1
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x4c
	.byte	0x1
	.byte	0x36
	.4byte	0x82a
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x1
	.byte	0x38
	.4byte	0x8cf
	.byte	0
	.uleb128 0x10
	.string	"cnt"
	.byte	0x1
	.byte	0x39
	.4byte	0x9f
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x1
	.byte	0x3a
	.4byte	0x9f
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3b
	.4byte	0x7aa
	.byte	0x1a
	.uleb128 0x10
	.string	"pge"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8e6
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x18
	.byte	0x1
	.byte	0x1b
	.4byte	0x8af
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x1
	.byte	0x1d
	.4byte	0x7aa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x1
	.byte	0x1e
	.4byte	0x7aa
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x1
	.byte	0x1f
	.4byte	0x7aa
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x1
	.byte	0x20
	.4byte	0x7aa
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0x1
	.byte	0x23
	.4byte	0x7aa
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x1
	.byte	0x24
	.4byte	0x7aa
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x1
	.byte	0x25
	.4byte	0x7aa
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0x1
	.byte	0x26
	.4byte	0x7aa
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x1
	.byte	0x29
	.4byte	0x8c9
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x1
	.byte	0x2a
	.4byte	0x9f
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x8c3
	.uleb128 0xc
	.4byte	0x8c3
	.uleb128 0xc
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7d6
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8af
	.uleb128 0x12
	.4byte	0x7b5
	.4byte	0x8df
	.uleb128 0x13
	.4byte	0x8df
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF154
	.uleb128 0x12
	.4byte	0x82a
	.4byte	0x8f6
	.uleb128 0x13
	.4byte	0x8df
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	0x90f
	.uleb128 0x15
	.string	"pg"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x8c3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x148
	.byte	0x1
	.4byte	0x93d
	.uleb128 0x17
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x148
	.4byte	0x584
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.2byte	0x148
	.4byte	0xaa
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.2byte	0x148
	.4byte	0xaa
	.byte	0
	.uleb128 0x18
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x143
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF157
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	0x97c
	.uleb128 0x1a
	.string	"pg"
	.byte	0x1
	.byte	0x8e
	.4byte	0x8c3
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.byte	0x8e
	.4byte	0x7aa
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x1
	.byte	0x8e
	.4byte	0x9f
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x90
	.4byte	0x9f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0x1
	.byte	0x9a
	.4byte	0x9f
	.byte	0x1
	.4byte	0x9b6
	.uleb128 0x1a
	.string	"pg"
	.byte	0x1
	.byte	0x9a
	.4byte	0x8c3
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x1
	.byte	0x9c
	.4byte	0x7aa
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0x1
	.byte	0x9d
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.4byte	0x9f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF160
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	0x9f5
	.uleb128 0x1a
	.string	"pg"
	.byte	0x1
	.byte	0xd2
	.4byte	0x8c3
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x1
	.byte	0xd2
	.4byte	0x584
	.uleb128 0x1c
	.string	"x1"
	.byte	0x1
	.byte	0xd4
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"x2"
	.byte	0x1
	.byte	0xd4
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.byte	0xd4
	.4byte	0x7aa
	.byte	0
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	0xa55
	.uleb128 0x1a
	.string	"pg"
	.byte	0x1
	.byte	0xf7
	.4byte	0xa55
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x1
	.byte	0xf7
	.4byte	0x9f
	.uleb128 0x1c
	.string	"pge"
	.byte	0x1
	.byte	0xf9
	.4byte	0xa5a
	.uleb128 0x1c
	.string	"idx"
	.byte	0x1
	.byte	0xfa
	.4byte	0x9f
	.uleb128 0x1c
	.string	"x1"
	.byte	0x1
	.byte	0xfb
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"y1"
	.byte	0x1
	.byte	0xfc
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"x2"
	.byte	0x1
	.byte	0xfd
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"y2"
	.byte	0x1
	.byte	0xfe
	.4byte	0x7aa
	.byte	0
	.uleb128 0xd
	.4byte	0x8c3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x82a
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x10b
	.byte	0x1
	.4byte	0xa8f
	.uleb128 0x15
	.string	"pg"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x8c3
	.uleb128 0x17
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x10b
	.4byte	0x584
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x7aa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x130
	.byte	0x1
	.4byte	0xabc
	.uleb128 0x15
	.string	"pg"
	.byte	0x1
	.2byte	0x130
	.4byte	0x8c3
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.2byte	0x130
	.4byte	0xaa
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.2byte	0x130
	.4byte	0xaa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x13a
	.byte	0x1
	.4byte	0xae1
	.uleb128 0x15
	.string	"pg"
	.byte	0x1
	.2byte	0x13a
	.4byte	0x8c3
	.uleb128 0x17
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x13a
	.4byte	0x584
	.byte	0
	.uleb128 0x20
	.4byte	.LASF166
	.byte	0x1
	.byte	0x4e
	.4byte	0x9f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0a
	.uleb128 0x21
	.string	"pge"
	.byte	0x1
	.byte	0x4e
	.4byte	0xa5a
	.4byte	.LLST0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF167
	.byte	0x1
	.byte	0x7e
	.4byte	0x9f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3f
	.uleb128 0x21
	.string	"pg"
	.byte	0x1
	.byte	0x7e
	.4byte	0x8c3
	.4byte	.LLST1
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.4byte	0x9f
	.4byte	.LLST2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF168
	.byte	0x1
	.byte	0x86
	.4byte	0x9f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb74
	.uleb128 0x21
	.string	"pg"
	.byte	0x1
	.byte	0x86
	.4byte	0x8c3
	.4byte	.LLST3
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x86
	.4byte	0x9f
	.4byte	.LLST4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF169
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0xbc9
	.uleb128 0x1a
	.string	"pge"
	.byte	0x1
	.byte	0x60
	.4byte	0xa5a
	.uleb128 0x1a
	.string	"x1"
	.byte	0x1
	.byte	0x60
	.4byte	0x7aa
	.uleb128 0x1a
	.string	"y1"
	.byte	0x1
	.byte	0x60
	.4byte	0x7aa
	.uleb128 0x1a
	.string	"x2"
	.byte	0x1
	.byte	0x60
	.4byte	0x7aa
	.uleb128 0x1a
	.string	"y2"
	.byte	0x1
	.byte	0x60
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"dx"
	.byte	0x1
	.byte	0x62
	.4byte	0x7aa
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0x63
	.4byte	0x7aa
	.byte	0
	.uleb128 0x22
	.4byte	0x9f5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc82
	.uleb128 0x23
	.4byte	0xa0b
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	0xa16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	0xa21
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	0xa2c
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	0xa36
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	0xa40
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	0xa4a
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	0xa01
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x27
	.4byte	0xb74
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x108
	.4byte	0xc75
	.uleb128 0x23
	.4byte	0xba9
	.4byte	.LLST10
	.uleb128 0x28
	.4byte	0xb9f
	.uleb128 0x26
	.4byte	0xb95
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	0xb8b
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	0xb80
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x25
	.4byte	0xbb3
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	0xbbd
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL19
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x946
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc7
	.uleb128 0x26
	.4byte	0x95c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	0x967
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	0x972
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	0x952
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x2a
	.4byte	.LVL42
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x93d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf8
	.uleb128 0x2c
	.4byte	0x8f6
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x145
	.uleb128 0x26
	.4byte	0x903
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x90f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4c
	.uleb128 0x26
	.4byte	0x91c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	0x928
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	0x932
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	0xa8f
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x14a
	.uleb128 0x26
	.4byte	0xa9c
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x26
	.4byte	0xab1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	0xaa7
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x14d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2b
	.uleb128 0x2f
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x14d
	.4byte	0x584
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	0xabc
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x14f
	.uleb128 0x26
	.4byte	0xac9
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x26
	.4byte	0xad4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	0x97c
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.2byte	0x13c
	.4byte	0xe07
	.uleb128 0x26
	.4byte	0x98c
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x25
	.4byte	0x996
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	0x9a1
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	0x9ac
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	.LVL58
	.4byte	0xc82
	.4byte	0xdf0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x33
	.4byte	.LVL59
	.4byte	0xc82
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0xa60
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.2byte	0x13e
	.uleb128 0x23
	.4byte	0xa6d
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	0xa78
	.4byte	.LLST20
	.uleb128 0x31
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x25
	.4byte	0xa84
	.4byte	.LLST21
	.uleb128 0x30
	.4byte	0x9b6
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x11b
	.4byte	0xe93
	.uleb128 0x23
	.4byte	0x9c2
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	0x9cc
	.uleb128 0x31
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x25
	.4byte	0x9d7
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	0x9e1
	.4byte	.LLST24
	.uleb128 0x25
	.4byte	0x9eb
	.4byte	.LLST25
	.uleb128 0x33
	.4byte	.LVL72
	.4byte	0x10bc
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL61
	.4byte	0xae1
	.4byte	0xea7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL62
	.4byte	0xae1
	.4byte	0xebe
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_pg+52
	.byte	0
	.uleb128 0x34
	.4byte	.LVL73
	.4byte	0xbc9
	.uleb128 0x32
	.4byte	.LVL74
	.4byte	0xae1
	.4byte	0xedb
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL75
	.4byte	0xbc9
	.4byte	0xeee
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL76
	.4byte	0xae1
	.4byte	0xf05
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_pg+52
	.byte	0
	.uleb128 0x32
	.4byte	.LVL81
	.4byte	0xbc9
	.4byte	0xf18
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL82
	.4byte	0xbc9
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x152
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10aa
	.uleb128 0x2f
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x152
	.4byte	0x584
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.string	"x0"
	.byte	0x1
	.2byte	0x152
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.string	"y0"
	.byte	0x1
	.2byte	0x152
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.string	"x1"
	.byte	0x1
	.2byte	0x152
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x35
	.string	"y1"
	.byte	0x1
	.2byte	0x152
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x35
	.string	"x2"
	.byte	0x1
	.2byte	0x152
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x35
	.string	"y2"
	.byte	0x1
	.2byte	0x152
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.4byte	0x90f
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x155
	.4byte	0xff3
	.uleb128 0x26
	.4byte	0x932
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	0x928
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	0x91c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	0xa8f
	.4byte	.LBB61
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x14a
	.uleb128 0x26
	.4byte	0xa9c
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x26
	.4byte	0xab1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	0xaa7
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x90f
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x157
	.4byte	0x1044
	.uleb128 0x28
	.4byte	0x932
	.uleb128 0x26
	.4byte	0x928
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.4byte	0x91c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	0xa8f
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x14a
	.uleb128 0x26
	.4byte	0xa9c
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x28
	.4byte	0xab1
	.uleb128 0x26
	.4byte	0xaa7
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x90f
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x1
	.2byte	0x156
	.4byte	0x1099
	.uleb128 0x26
	.4byte	0x932
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	0x928
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	0x91c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	0xa8f
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.2byte	0x14a
	.uleb128 0x26
	.4byte	0xa9c
	.uleb128 0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.uleb128 0x26
	.4byte	0xab1
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	0xaa7
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL89
	.4byte	0xd4c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x141
	.4byte	0x7d6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_pg
	.uleb128 0x37
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x5
	.2byte	0x4de
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
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x16
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x72
	.sleb128 10
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x72
	.sleb128 10
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+2
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+2
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL60
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+26
	.4byte	.LVL81-1
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL63
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	u8g2_pg
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+40
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+40
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+64
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+64
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL64
	.4byte	.LVL72-1
	.2byte	0x5
	.byte	0x3
	.4byte	u8g2_pg+60
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF111:
	.string	"bits_per_char_x"
.LASF84:
	.string	"font_calc_vref"
.LASF123:
	.string	"start_pos_unicode"
.LASF44:
	.string	"reset_pulse_width_ms"
.LASF101:
	.string	"u8g2_update_page_win_cb"
.LASF145:
	.string	"x_direction"
.LASF66:
	.string	"tile_buf_ptr"
.LASF1:
	.string	"__uint8_t"
.LASF22:
	.string	"byte_cb"
.LASF135:
	.string	"u8g2_font_decode_t"
.LASF105:
	.string	"glyph_cnt"
.LASF97:
	.string	"update_dimension"
.LASF159:
	.string	"pge_idx"
.LASF11:
	.string	"long long unsigned int"
.LASF37:
	.string	"u8x8_display_info_t"
.LASF0:
	.string	"__int8_t"
.LASF45:
	.string	"post_reset_wait_ms"
.LASF106:
	.string	"bbx_mode"
.LASF31:
	.string	"utf8_state"
.LASF116:
	.string	"y_offset"
.LASF32:
	.string	"gpio_result"
.LASF14:
	.string	"int16_t"
.LASF112:
	.string	"bits_per_char_y"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF61:
	.string	"u8g2_uint_t"
.LASF28:
	.string	"is_font_inverse_mode"
.LASF20:
	.string	"display_cb"
.LASF153:
	.string	"curr_idx"
.LASF162:
	.string	"pge_index"
.LASF119:
	.string	"ascent_para"
.LASF91:
	.string	"glyph_x_offset"
.LASF43:
	.string	"pre_chip_disable_wait_ns"
.LASF165:
	.string	"pg_DrawPolygon"
.LASF163:
	.string	"pg_exec"
.LASF143:
	.string	"total_scan_line_cnt"
.LASF170:
	.string	"u8g2_DrawPolygon"
.LASF140:
	.string	"_pg_struct"
.LASF98:
	.string	"update_page_win"
.LASF115:
	.string	"max_char_height"
.LASF148:
	.string	"current_y"
.LASF15:
	.string	"uint16_t"
.LASF19:
	.string	"next_cb"
.LASF60:
	.string	"u8x8_char_cb"
.LASF23:
	.string	"gpio_and_delay_cb"
.LASF124:
	.string	"u8g2_font_info_t"
.LASF158:
	.string	"min_y"
.LASF90:
	.string	"font_ref_descent"
.LASF173:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_polygon.c"
.LASF8:
	.string	"__uint32_t"
.LASF107:
	.string	"bits_per_0"
.LASF46:
	.string	"sda_setup_time_ns"
.LASF89:
	.string	"font_ref_ascent"
.LASF167:
	.string	"pg_inc"
.LASF4:
	.string	"__int16_t"
.LASF146:
	.string	"current_x_offset"
.LASF103:
	.string	"u8g2_draw_ll_hvline_cb"
.LASF118:
	.string	"descent_g"
.LASF109:
	.string	"bits_per_char_width"
.LASF36:
	.string	"debounce_result_msg"
.LASF9:
	.string	"unsigned int"
.LASF156:
	.string	"pg_ClearPolygonXY"
.LASF70:
	.string	"pixel_buf_height"
.LASF132:
	.string	"is_transparent"
.LASF29:
	.string	"i2c_address"
.LASF62:
	.string	"u8g2_t"
.LASF169:
	.string	"pge_Init"
.LASF172:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF126:
	.string	"decode_ptr"
.LASF74:
	.string	"width"
.LASF67:
	.string	"tile_buf_height"
.LASF7:
	.string	"short unsigned int"
.LASF87:
	.string	"is_page_clip_window_intersection"
.LASF92:
	.string	"bitmap_transparency"
.LASF157:
	.string	"pg_expand_min_y"
.LASF80:
	.string	"clip_x0"
.LASF81:
	.string	"clip_x1"
.LASF99:
	.string	"draw_l90"
.LASF34:
	.string	"debounce_last_pin_state"
.LASF178:
	.string	"u8g2_pg"
.LASF155:
	.string	"u8g2"
.LASF120:
	.string	"descent_para"
.LASF171:
	.string	"u8g2_DrawTriangle"
.LASF18:
	.string	"display_info"
.LASF86:
	.string	"font_info"
.LASF47:
	.string	"sck_pulse_width_ns"
.LASF38:
	.string	"u8x8_struct"
.LASF176:
	.string	"u8g2_ClearPolygonXY"
.LASF55:
	.string	"default_x_offset"
.LASF139:
	.string	"pg_struct"
.LASF26:
	.string	"encoding"
.LASF88:
	.string	"font_height_mode"
.LASF121:
	.string	"start_pos_upper_A"
.LASF56:
	.string	"flipmode_x_offset"
.LASF108:
	.string	"bits_per_1"
.LASF113:
	.string	"bits_per_delta_x"
.LASF144:
	.string	"pg_edge_struct"
.LASF131:
	.string	"decode_bit_pos"
.LASF130:
	.string	"glyph_height"
.LASF154:
	.string	"sizetype"
.LASF177:
	.string	"pg_prepare"
.LASF71:
	.string	"pixel_curr_row"
.LASF21:
	.string	"cad_cb"
.LASF82:
	.string	"clip_y0"
.LASF83:
	.string	"clip_y1"
.LASF114:
	.string	"max_char_width"
.LASF78:
	.string	"user_y0"
.LASF168:
	.string	"pg_dec"
.LASF52:
	.string	"write_pulse_width_ns"
.LASF72:
	.string	"buf_y0"
.LASF73:
	.string	"buf_y1"
.LASF150:
	.string	"current_x"
.LASF27:
	.string	"x_offset"
.LASF54:
	.string	"tile_height"
.LASF164:
	.string	"pg_AddPolygonXY"
.LASF151:
	.string	"error"
.LASF65:
	.string	"ll_hvline"
.LASF147:
	.string	"error_offset"
.LASF142:
	.string	"is_min_y_not_flat"
.LASF133:
	.string	"fg_color"
.LASF59:
	.string	"u8x8_msg_cb"
.LASF96:
	.string	"u8g2_cb_struct"
.LASF129:
	.string	"glyph_width"
.LASF3:
	.string	"unsigned char"
.LASF117:
	.string	"ascent_A"
.LASF94:
	.string	"is_auto_page_clear"
.LASF137:
	.string	"pg_word_t"
.LASF69:
	.string	"pixel_buf_width"
.LASF5:
	.string	"short int"
.LASF64:
	.string	"u8x8"
.LASF161:
	.string	"pg_line_init"
.LASF76:
	.string	"user_x0"
.LASF77:
	.string	"user_x1"
.LASF51:
	.string	"data_setup_time_ns"
.LASF63:
	.string	"u8g2_struct"
.LASF102:
	.string	"u8g2_draw_l90_cb"
.LASF50:
	.string	"i2c_bus_clock_100kHz"
.LASF16:
	.string	"uint32_t"
.LASF104:
	.string	"_u8g2_font_info_t"
.LASF68:
	.string	"tile_curr_row"
.LASF95:
	.string	"u8g2_cb_t"
.LASF49:
	.string	"spi_mode"
.LASF40:
	.string	"chip_enable_level"
.LASF85:
	.string	"font_decode"
.LASF160:
	.string	"pg_hline"
.LASF110:
	.string	"bits_per_char_height"
.LASF6:
	.string	"__uint16_t"
.LASF93:
	.string	"draw_color"
.LASF138:
	.string	"pg_point_struct"
.LASF42:
	.string	"post_chip_enable_wait_ns"
.LASF174:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF100:
	.string	"u8g2_update_dimension_cb"
.LASF127:
	.string	"target_x"
.LASF128:
	.string	"target_y"
.LASF166:
	.string	"pge_Next"
.LASF17:
	.string	"u8x8_t"
.LASF24:
	.string	"bus_clock"
.LASF79:
	.string	"user_y1"
.LASF125:
	.string	"_u8g2_font_decode_t"
.LASF12:
	.string	"int8_t"
.LASF35:
	.string	"debounce_state"
.LASF149:
	.string	"max_y"
.LASF41:
	.string	"chip_disable_level"
.LASF25:
	.string	"font"
.LASF122:
	.string	"start_pos_lower_a"
.LASF175:
	.string	"u8g2_AddPolygonXY"
.LASF13:
	.string	"uint8_t"
.LASF136:
	.string	"u8g2_font_calc_vref_fnptr"
.LASF30:
	.string	"i2c_started"
.LASF57:
	.string	"pixel_width"
.LASF134:
	.string	"bg_color"
.LASF53:
	.string	"tile_width"
.LASF33:
	.string	"debounce_default_pin_state"
.LASF179:
	.string	"u8g2_DrawHLine"
.LASF39:
	.string	"u8x8_display_info_struct"
.LASF75:
	.string	"height"
.LASF141:
	.string	"list"
.LASF152:
	.string	"next_idx_fn"
.LASF58:
	.string	"pixel_height"
.LASF48:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
