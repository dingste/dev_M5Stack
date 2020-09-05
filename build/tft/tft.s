	.file	"tft.c"
	.text
.Ltext0:
	.section	.text.getCharPtr,"ax",@progbits
	.literal_position
	.literal .LC0, cfont
	.literal .LC1, fontChar
	.literal .LC2, font_forceFixed
	.align	4
	.type	getCharPtr, @function
getCharPtr:
.LFB68:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/tft/tft.c"
	.loc 1 1434 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	l32r	a8, .LC1
	.loc 1 1438 0
	l32r	a4, .LC0
	l32i.n	a15, a8, 4
	l32i.n	a12, a4, 0
	l32i.n	a13, a8, 8
	l32i.n	a14, a8, 12
	l32i.n	a11, a8, 16
	l32i.n	a3, a8, 20
	movi.n	a5, 0
	.loc 1 1435 0
	movi.n	a10, 4
	.loc 1 1439 0
	movi	a6, 0xff
	.loc 1 1445 0
	movi	a7, 0x7f
.LVL2:
.L9:
	.loc 1 1438 0
	add.n	a4, a12, a10
	l8ui	a4, a4, 0
	addi.n	a9, a10, 1
	extui	a9, a9, 0, 16
.LVL3:
	.loc 1 1439 0
	bne	a4, a6, .L2
	movi.n	a2, -1
.LVL4:
	s8i	a2, a8, 0
	beqz.n	a5, .L3
	s32i.n	a15, a8, 4
	s32i.n	a13, a8, 8
	s32i.n	a14, a8, 12
	s32i.n	a11, a8, 16
	s32i.n	a3, a8, 20
.L3:
	movi.n	a2, 0
	retw.n
.LVL5:
.L2:
	.loc 1 1442 0
	addi.n	a3, a10, 2
	extui	a3, a3, 0, 16
	add.n	a3, a12, a3
	.loc 1 1444 0
	addi.n	a5, a10, 4
	.loc 1 1442 0
	l8ui	a13, a3, 0
	.loc 1 1444 0
	extui	a5, a5, 0, 16
	.loc 1 1443 0
	addi.n	a3, a10, 3
	extui	a3, a3, 0, 16
	.loc 1 1444 0
	add.n	a5, a12, a5
	.loc 1 1443 0
	add.n	a3, a12, a3
	.loc 1 1444 0
	l8ui	a11, a5, 0
	.loc 1 1441 0
	add.n	a9, a12, a9
	.loc 1 1443 0
	l8ui	a14, a3, 0
	.loc 1 1444 0
	addi.n	a3, a10, 5
	.loc 1 1441 0
	l8ui	a15, a9, 0
.LVL6:
	.loc 1 1444 0
	extui	a3, a3, 0, 16
.LVL7:
	.loc 1 1445 0
	bge	a7, a11, .L5
	.loc 1 1445 0 is_stmt 0 discriminator 2
	sub	a11, a11, a6
.L5:
	.loc 1 1446 0 is_stmt 1 discriminator 4
	addi.n	a9, a10, 6
	add.n	a3, a12, a3
.LVL8:
	extui	a9, a9, 0, 16
.LVL9:
	l8ui	a3, a3, 0
	.loc 1 1448 0 discriminator 4
	beq	a4, a2, .L6
	.loc 1 1449 0
	beqz.n	a13, .L7
	.loc 1 1451 0
	mul16u	a9, a13, a14
	addi.n	a10, a10, 7
.LVL10:
	addi.n	a4, a9, -1
	addi.n	a9, a9, 6
	movltz	a4, a9, a4
	srai	a4, a4, 3
	add.n	a9, a10, a4
.LVL11:
	extui	a9, a9, 0, 16
	j	.L7
.LVL12:
.L8:
	.loc 1 1460 0
	l32r	a3, .LC0
	l8ui	a2, a3, 12
	.loc 1 1461 0
	sub	a13, a2, a13
	.loc 1 1460 0
	s32i.n	a2, a8, 20
	.loc 1 1461 0
	extui	a2, a13, 31, 1
	add.n	a13, a2, a13
	srai	a13, a13, 1
	s32i.n	a13, a8, 16
	j	.L17
.LVL13:
.L6:
	.loc 1 1458 0
	l32r	a2, .LC2
.LVL14:
	s8i	a4, a8, 0
	l8ui	a2, a2, 0
	s32i.n	a15, a8, 4
	s32i.n	a13, a8, 8
	s32i.n	a14, a8, 12
	s32i.n	a11, a8, 16
	s32i.n	a3, a8, 20
	.loc 1 1456 0
	s16i	a9, a8, 24
	.loc 1 1458 0
	bnez.n	a2, .L8
.L17:
	.loc 1 1465 0
	movi.n	a2, 1
	retw.n
.LVL15:
.L7:
	movi.n	a5, 1
	.loc 1 1446 0
	mov.n	a10, a9
	j	.L9
.LFE68:
	.size	getCharPtr, .-getCharPtr
	.section	.text._7seg_width,"ax",@progbits
	.literal_position
	.literal .LC3, cfont
	.align	4
	.type	_7seg_width, @function
_7seg_width:
.LFB74:
	.loc 1 1779 0
	entry	sp, 32
.LCFI1:
	.loc 1 1780 0
	l32r	a9, .LC3
	l8ui	a8, a9, 5
	l8ui	a2, a9, 4
	slli	a8, a8, 2
	addi.n	a8, a8, 2
	.loc 1 1781 0
	add.n	a2, a8, a2
	retw.n
.LFE74:
	.size	_7seg_width, .-_7seg_width
	.section	.text._7seg_height,"ax",@progbits
	.literal_position
	.literal .LC4, cfont
	.align	4
	.type	_7seg_height, @function
_7seg_height:
.LFB75:
	.loc 1 1785 0
	entry	sp, 32
.LCFI2:
	.loc 1 1786 0
	l32r	a8, .LC4
	l8ui	a2, a8, 5
	l8ui	a8, a8, 4
	addx2	a2, a2, a2
	slli	a2, a2, 1
	addi.n	a2, a2, 3
	.loc 1 1787 0
	addx2	a2, a8, a2
	retw.n
.LFE75:
	.size	_7seg_height, .-_7seg_height
	.section	.text._drawPixel,"ax",@progbits
	.literal_position
	.literal .LC5, dispWin
	.align	4
	.type	_drawPixel, @function
_drawPixel:
.LFB29:
	.loc 1 151 0
.LVL16:
	entry	sp, 48
.LCFI3:
	.loc 1 153 0
	l32r	a8, .LC5
	.loc 1 151 0
	s32i.n	a4, sp, 0
	.loc 1 153 0
	l16ui	a9, a8, 0
	.loc 1 151 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a13, a5
	.loc 1 153 0
	blt	a2, a9, .L20
	.loc 1 153 0 is_stmt 0 discriminator 1
	l16ui	a9, a8, 2
	blt	a3, a9, .L20
	.loc 1 153 0 discriminator 2
	l16ui	a9, a8, 4
	blt	a9, a2, .L20
	.loc 1 153 0 discriminator 3
	l16ui	a8, a8, 6
	blt	a8, a3, .L20
	.loc 1 154 0 is_stmt 1
	mov.n	a12, a4
	call8	drawPixel
.LVL17:
.L20:
	retw.n
.LFE29:
	.size	_drawPixel, .-_drawPixel
	.section	.text._drawFastVLine,"ax",@progbits
	.literal_position
	.literal .LC6, dispWin
	.align	4
	.type	_drawFastVLine, @function
_drawFastVLine:
.LFB32:
	.loc 1 175 0
.LVL18:
	entry	sp, 48
.LCFI4:
	.loc 1 177 0
	l32r	a8, .LC6
	.loc 1 175 0
	s32i.n	a5, sp, 0
	.loc 1 177 0
	l16ui	a9, a8, 0
	.loc 1 175 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 177 0
	blt	a2, a9, .L22
	.loc 1 177 0 is_stmt 0 discriminator 1
	l16ui	a9, a8, 4
	blt	a9, a2, .L22
	.loc 1 177 0 discriminator 2
	l16ui	a9, a8, 6
	blt	a9, a3, .L22
	.loc 1 178 0 is_stmt 1
	l16ui	a8, a8, 2
	bge	a3, a8, .L24
	.loc 1 179 0
	sub	a4, a4, a8
.LVL19:
	add.n	a15, a4, a3
	sext	a4, a15, 15
.LVL20:
	.loc 1 180 0
	sext	a11, a8, 15
.LVL21:
.L24:
	movi.n	a8, 0
	max	a15, a4, a8
.LVL22:
	.loc 1 183 0
	add.n	a8, a15, a11
	addi.n	a4, a9, 1
	bge	a4, a8, .L25
	.loc 1 183 0 is_stmt 0 discriminator 1
	sub	a15, a4, a11
.LVL23:
	sext	a15, a15, 15
.LVL24:
.L25:
	.loc 1 184 0 is_stmt 1
	movi.n	a4, 1
	moveqz	a15, a4, a15
.LVL25:
	.loc 1 185 0
	add.n	a13, a15, a11
	l32i.n	a14, sp, 0
	addi.n	a13, a13, -1
	mov.n	a12, a10
	call8	TFT_pushColorRep
.LVL26:
.L22:
	retw.n
.LFE32:
	.size	_drawFastVLine, .-_drawFastVLine
	.section	.text.fillCircleHelper,"ax",@progbits
	.align	4
	.type	fillCircleHelper, @function
fillCircleHelper:
.LFB45:
	.loc 1 392 0
.LVL27:
	entry	sp, 64
.LCFI5:
	.loc 1 392 0
	s32i.n	a7, sp, 0
	.loc 1 393 0
	extui	a7, a4, 0, 16
	.loc 1 392 0
	mov.n	a8, a4
	.loc 1 395 0
	slli	a4, a7, 15
.LVL28:
	.loc 1 392 0
	s32i.n	a2, sp, 16
	.loc 1 395 0
	sub	a4, a4, a7
	.loc 1 398 0
	l32i.n	a9, sp, 16
	.loc 1 395 0
	slli	a4, a4, 1
	addi.n	a6, a6, 1
.LVL29:
	extui	a3, a3, 0, 16
	extui	a6, a6, 0, 16
	sext	a4, a4, 15
	.loc 1 392 0
	mov.n	a10, a5
	.loc 1 393 0
	movi.n	a2, 1
.LVL30:
	.loc 1 398 0
	extui	a5, a9, 0, 16
.LVL31:
	.loc 1 395 0
	s32i.n	a4, sp, 12
	s32i.n	a3, sp, 4
	s32i.n	a6, sp, 8
	.loc 1 400 0
	mov.n	a4, a6
	.loc 1 403 0
	movi.n	a11, 2
	.loc 1 400 0
	mov.n	a6, a3
	movi.n	a3, 1
.LVL32:
	.loc 1 393 0
	sub	a2, a2, a7
	.loc 1 402 0
	and	a9, a10, a3
	.loc 1 398 0
	sub	a7, a5, a7
.LVL33:
	.loc 1 403 0
	and	a11, a10, a11
	.loc 1 392 0
	.loc 1 393 0
	sext	a2, a2, 15
.LVL34:
	.loc 1 398 0
	sext	a7, a7, 15
.LVL35:
	.loc 1 402 0
	s32i.n	a9, sp, 20
	.loc 1 403 0
	s32i.n	a11, sp, 24
	.loc 1 400 0
	j	.L28
.LVL36:
.L36:
	.loc 1 401 0
	bltz	a2, .L29
	.loc 1 402 0
	l32i.n	a9, sp, 20
	beqz.n	a9, .L30
	.loc 1 402 0 is_stmt 0 discriminator 1
	add.n	a10, a5, a8
	l32i.n	a13, sp, 0
	sext	a12, a4, 15
	sext	a11, a6, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 28
	call8	_drawFastVLine
.LVL37:
	l32i.n	a8, sp, 28
.L30:
	.loc 1 403 0 is_stmt 1
	l32i.n	a9, sp, 24
	beqz.n	a9, .L31
	.loc 1 403 0 is_stmt 0 discriminator 1
	sub	a10, a5, a8
	l32i.n	a13, sp, 0
	sext	a12, a4, 15
	sext	a11, a6, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 28
	call8	_drawFastVLine
.LVL38:
	l32i.n	a8, sp, 28
.L31:
	.loc 1 406 0 is_stmt 1
	l32i.n	a9, sp, 12
	.loc 1 404 0
	extui	a8, a8, 0, 16
	.loc 1 406 0
	addi.n	a10, a9, 2
	extui	a10, a10, 0, 16
	.loc 1 404 0
	sub	a7, a5, a8
.LVL39:
	.loc 1 406 0
	sext	a9, a10, 15
	.loc 1 405 0
	addi.n	a8, a8, -1
	.loc 1 407 0
	add.n	a2, a10, a2
.LVL40:
	.loc 1 404 0
	sext	a7, a7, 15
.LVL41:
	.loc 1 405 0
	sext	a8, a8, 15
.LVL42:
	.loc 1 406 0
	s32i.n	a9, sp, 12
.LVL43:
	.loc 1 407 0
	sext	a2, a2, 15
.LVL44:
.L29:
	.loc 1 413 0
	l32i.n	a9, sp, 16
	.loc 1 411 0
	addx2	a2, a3, a2
.LVL45:
	.loc 1 413 0
	sext	a10, a3, 15
	.loc 1 411 0
	addi.n	a2, a2, 1
	.loc 1 413 0
	sub	a10, a9, a10
	.loc 1 411 0
	sext	a2, a2, 15
.LVL46:
	.loc 1 413 0
	bge	a7, a10, .L33
	.loc 1 414 0
	l32i.n	a9, sp, 20
	beqz.n	a9, .L34
	.loc 1 414 0 is_stmt 0 discriminator 1
	l32i.n	a9, sp, 8
	extui	a11, a8, 0, 16
	addx2	a12, a11, a9
	l32i.n	a9, sp, 4
	add.n	a10, a3, a5
	sub	a11, a9, a11
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 28
	call8	_drawFastVLine
.LVL47:
	l32i.n	a8, sp, 28
.L34:
	.loc 1 415 0 is_stmt 1
	l32i.n	a9, sp, 24
	beqz.n	a9, .L33
	.loc 1 415 0 is_stmt 0 discriminator 1
	l32i.n	a9, sp, 8
	extui	a11, a8, 0, 16
	addx2	a12, a11, a9
	l32i.n	a9, sp, 4
	sub	a10, a5, a3
	sub	a11, a9, a11
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 28
	call8	_drawFastVLine
.LVL48:
	l32i.n	a8, sp, 28
.L33:
	addi.n	a9, a3, 1
	addi.n	a6, a6, -1
	addi.n	a4, a4, 2
	extui	a3, a9, 0, 16
.LVL49:
	extui	a6, a6, 0, 16
	extui	a4, a4, 0, 16
.LVL50:
.L28:
	.loc 1 400 0 is_stmt 1
	addi.n	a10, a3, -1
	sext	a10, a10, 15
	blt	a10, a8, .L36
	.loc 1 418 0
	retw.n
.LFE45:
	.size	fillCircleHelper, .-fillCircleHelper
	.section	.text._draw_filled_ellipse_section,"ax",@progbits
	.align	4
	.type	_draw_filled_ellipse_section, @function
_draw_filled_ellipse_section:
.LFB59:
	.loc 1 755 0
.LVL51:
	entry	sp, 48
.LCFI6:
	.loc 1 755 0
	s32i.n	a6, sp, 0
	extui	a7, a7, 0, 8
	.loc 1 757 0
	bbci	a7, 0, .L50
	.loc 1 757 0 is_stmt 0 discriminator 1
	addi.n	a12, a3, 1
	sub	a11, a5, a3
	add.n	a10, a4, a2
	mov.n	a13, a6
	sext	a12, a12, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawFastVLine
.LVL52:
.L50:
	.loc 1 759 0 is_stmt 1
	bbci	a7, 1, .L51
	.loc 1 759 0 is_stmt 0 discriminator 1
	addi.n	a12, a3, 1
	sub	a11, a5, a3
	sub	a10, a4, a2
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawFastVLine
.LVL53:
.L51:
	.loc 1 761 0 is_stmt 1
	bbci	a7, 3, .L52
	.loc 1 761 0 is_stmt 0 discriminator 1
	addi.n	a12, a3, 1
	add.n	a10, a4, a2
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	sext	a11, a5, 15
	sext	a10, a10, 15
	call8	_drawFastVLine
.LVL54:
.L52:
	.loc 1 763 0 is_stmt 1
	bbci	a7, 2, .L49
	.loc 1 763 0 is_stmt 0 discriminator 1
	addi.n	a12, a3, 1
	sub	a10, a4, a2
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	sext	a11, a5, 15
	sext	a10, a10, 15
	call8	_drawFastVLine
.LVL55:
.L49:
	retw.n
.LFE59:
	.size	_draw_filled_ellipse_section, .-_draw_filled_ellipse_section
	.section	.text._drawFastHLine,"ax",@progbits
	.literal_position
	.literal .LC7, dispWin
	.align	4
	.type	_drawFastHLine, @function
_drawFastHLine:
.LFB33:
	.loc 1 190 0 is_stmt 1
.LVL56:
	entry	sp, 48
.LCFI7:
	.loc 1 192 0
	l32r	a8, .LC7
	.loc 1 190 0
	s32i.n	a5, sp, 0
	.loc 1 192 0
	l16ui	a9, a8, 2
	.loc 1 190 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 192 0
	blt	a3, a9, .L66
	.loc 1 192 0 is_stmt 0 discriminator 1
	l16ui	a9, a8, 4
	blt	a9, a2, .L66
	.loc 1 192 0 discriminator 2
	l16ui	a12, a8, 6
	blt	a12, a3, .L66
	.loc 1 193 0 is_stmt 1
	l16ui	a8, a8, 0
	bge	a2, a8, .L68
	.loc 1 194 0
	sub	a4, a4, a8
.LVL57:
	add.n	a15, a4, a2
	sext	a4, a15, 15
.LVL58:
	.loc 1 195 0
	sext	a10, a8, 15
.LVL59:
.L68:
	movi.n	a8, 0
	max	a15, a4, a8
.LVL60:
	.loc 1 198 0
	add.n	a8, a15, a10
	addi.n	a4, a9, 1
	bge	a4, a8, .L69
	.loc 1 198 0 is_stmt 0 discriminator 1
	sub	a15, a4, a10
.LVL61:
	sext	a15, a15, 15
.LVL62:
.L69:
	.loc 1 199 0 is_stmt 1
	movi.n	a4, 1
	moveqz	a15, a4, a15
.LVL63:
	.loc 1 201 0
	add.n	a12, a15, a10
	l32i.n	a14, sp, 0
	mov.n	a13, a11
	addi.n	a12, a12, -1
	call8	TFT_pushColorRep
.LVL64:
.L66:
	retw.n
.LFE33:
	.size	_drawFastHLine, .-_drawFastHLine
	.section	.text._drawLine,"ax",@progbits
	.align	4
	.type	_drawLine, @function
_drawLine:
.LFB36:
	.loc 1 220 0
.LVL65:
	entry	sp, 48
.LCFI8:
	.loc 1 220 0
	s32i.n	a6, sp, 0
	mov.n	a7, a4
	.loc 1 221 0
	bne	a2, a4, .L72
	.loc 1 222 0
	blt	a5, a3, .L73
	.loc 1 222 0 is_stmt 0 discriminator 1
	sub	a12, a5, a3
	mov.n	a13, a6
	sext	a12, a12, 15
	mov.n	a11, a3
	j	.L98
.L73:
	.loc 1 223 0 is_stmt 1
	sub	a12, a3, a5
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	mov.n	a11, a5
.L98:
	mov.n	a10, a2
.LVL66:
.L99:
	call8	_drawFastVLine
.LVL67:
	retw.n
.LVL68:
.L72:
	.loc 1 226 0
	bne	a3, a5, .L75
	.loc 1 227 0
	blt	a4, a2, .L76
	.loc 1 227 0 is_stmt 0 discriminator 1
	sub	a12, a4, a2
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	mov.n	a11, a3
	mov.n	a10, a2
	j	.L100
.L76:
	.loc 1 228 0 is_stmt 1
	sub	a12, a2, a4
	l32i.n	a13, sp, 0
	sext	a12, a12, 15
	mov.n	a11, a3
	mov.n	a10, a4
	j	.L100
.L75:
.LVL69:
	.loc 1 233 0
	sub	a4, a5, a3
.LVL70:
	sub	a6, a7, a2
	abs	a4, a4
	abs	a6, a6
	.loc 1 232 0
	movi.n	a12, 0
	.loc 1 233 0
	bge	a6, a4, .L77
	mov.n	a4, a7
	mov.n	a7, a5
	mov.n	a5, a4
.LVL71:
	mov.n	a4, a2
	movi.n	a12, 1
	mov.n	a2, a3
.LVL72:
	mov.n	a3, a4
.LVL73:
.L77:
	.loc 1 238 0
	bge	a7, a2, .L78
	mov.n	a4, a3
.LBB3:
	.loc 1 240 0
	mov.n	a3, a5
.LVL74:
	mov.n	a5, a4
.LVL75:
.LBE3:
	.loc 1 238 0
	mov.n	a4, a2
.LVL76:
	mov.n	a2, a7
.LVL77:
	mov.n	a7, a4
.LVL78:
.L78:
	.loc 1 243 0
	sub	a6, a7, a2
	sub	a4, a5, a3
	abs	a4, a4
	extui	a6, a6, 0, 16
.LVL79:
	.loc 1 244 0
	movi.n	a8, -1
	.loc 1 243 0
	s32i.n	a4, sp, 8
.LVL80:
	.loc 1 244 0
	sext	a9, a6, 15
	s32i.n	a8, sp, 4
	srai	a4, a9, 1
.LVL81:
	.loc 1 246 0
	bge	a3, a5, .L79
	movi.n	a5, 1
.LVL82:
	s32i.n	a5, sp, 4
.L79:
.LVL83:
	mov.n	a10, a2
	.loc 1 249 0
	beqz.n	a12, .L81
.L80:
	mov.n	a5, a2
	movi.n	a12, 0
	j	.L82
.LVL84:
.L86:
	.loc 1 252 0
	l32i.n	a8, sp, 8
	.loc 1 251 0
	addi.n	a12, a12, 1
.LVL85:
	.loc 1 252 0
	sub	a9, a4, a8
	extui	a10, a9, 0, 16
	sext	a4, a10, 15
.LVL86:
	.loc 1 251 0
	sext	a12, a12, 15
.LVL87:
	addi.n	a5, a5, 1
.LVL88:
	.loc 1 253 0
	bgez	a4, .L83
	.loc 1 254 0
	add.n	a9, a6, a10
	sext	a4, a9, 15
.LVL89:
	.loc 1 255 0
	bnei	a12, 1, .L84
	.loc 1 255 0 is_stmt 0 discriminator 1
	mov.n	a13, a12
	l32i.n	a12, sp, 0
.LVL90:
	mov.n	a11, a2
	mov.n	a10, a3
	call8	_drawPixel
.LVL91:
	j	.L85
.LVL92:
.L84:
	.loc 1 256 0 is_stmt 1
	l32i.n	a13, sp, 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	_drawFastVLine
.LVL93:
.L85:
	.loc 1 258 0
	l32i.n	a2, sp, 4
.LVL94:
	.loc 1 257 0
	movi.n	a12, 0
	.loc 1 258 0
	add.n	a3, a3, a2
.LVL95:
	sext	a3, a3, 15
.LVL96:
	sext	a2, a5, 15
.LVL97:
.L83:
	sext	a5, a5, 15
.LVL98:
.L82:
	.loc 1 250 0 discriminator 1
	bge	a7, a5, .L86
	.loc 1 262 0
	beqz.n	a12, .L71
	.loc 1 262 0 is_stmt 0 discriminator 1
	l32i.n	a13, sp, 0
	mov.n	a11, a2
	mov.n	a10, a3
	j	.L99
.LVL99:
.L91:
	.loc 1 266 0 is_stmt 1
	l32i.n	a5, sp, 8
	.loc 1 265 0
	addi.n	a12, a12, 1
.LVL100:
	.loc 1 266 0
	sub	a9, a4, a5
	extui	a5, a9, 0, 16
	sext	a4, a5, 15
.LVL101:
	.loc 1 265 0
	sext	a12, a12, 15
.LVL102:
	addi.n	a2, a2, 1
.LVL103:
	.loc 1 267 0
	bgez	a4, .L88
	.loc 1 268 0
	add.n	a9, a6, a5
	sext	a4, a9, 15
.LVL104:
	.loc 1 269 0
	bnei	a12, 1, .L89
	.loc 1 269 0 is_stmt 0 discriminator 1
	mov.n	a13, a12
	l32i.n	a12, sp, 0
.LVL105:
	mov.n	a11, a3
	call8	_drawPixel
.LVL106:
	j	.L90
.LVL107:
.L89:
	.loc 1 270 0 is_stmt 1
	l32i.n	a13, sp, 0
	mov.n	a11, a3
	call8	_drawFastHLine
.LVL108:
.L90:
	.loc 1 272 0
	l32i.n	a8, sp, 4
	sext	a10, a2, 15
	add.n	a3, a3, a8
.LVL109:
	sext	a3, a3, 15
.LVL110:
	.loc 1 271 0
	movi.n	a12, 0
.LVL111:
.L88:
	sext	a2, a2, 15
.LVL112:
.L81:
	.loc 1 264 0 discriminator 1
	bge	a7, a2, .L91
	.loc 1 276 0
	beqz.n	a12, .L71
	.loc 1 276 0 is_stmt 0 discriminator 1
	l32i.n	a13, sp, 0
	mov.n	a11, a3
.LVL113:
.L100:
	call8	_drawFastHLine
.LVL114:
.L71:
	retw.n
.LFE36:
	.size	_drawLine, .-_drawLine
	.section	.text._drawTriangle,"ax",@progbits
	.align	4
	.type	_drawTriangle, @function
_drawTriangle:
.LFB51:
	.loc 1 492 0 is_stmt 1
.LVL115:
	entry	sp, 32
.LCFI9:
	.loc 1 493 0
	sext	a2, a2, 15
	sext	a3, a3, 15
	sext	a4, a4, 15
	sext	a5, a5, 15
	l32i.n	a14, sp, 32
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_drawLine
.LVL116:
	.loc 1 492 0
	extui	a7, a7, 0, 16
	.loc 1 494 0
	sext	a6, a6, 15
	sext	a7, a7, 15
.LVL117:
	l32i.n	a14, sp, 32
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a4
	call8	_drawLine
.LVL118:
	.loc 1 495 0
	l32i.n	a14, sp, 32
	mov.n	a13, a3
	mov.n	a12, a2
	mov.n	a11, a7
	mov.n	a10, a6
	.loc 1 492 0
	.loc 1 495 0
	call8	_drawLine
.LVL119:
	retw.n
.LFE51:
	.size	_drawTriangle, .-_drawTriangle
	.section	.text._drawRect,"ax",@progbits
	.align	4
	.type	_drawRect, @function
_drawRect:
.LFB42:
	.loc 1 337 0
.LVL120:
	entry	sp, 48
.LCFI10:
	.loc 1 337 0
	mov.n	a8, a2
	.loc 1 338 0
	sext	a7, a8, 15
	sext	a9, a4, 15
	.loc 1 337 0
	mov.n	a2, a3
.LVL121:
	.loc 1 338 0
	sext	a3, a3, 15
	mov.n	a12, a9
	mov.n	a13, a6
	mov.n	a11, a3
	mov.n	a10, a7
	s32i.n	a9, sp, 8
	.loc 1 337 0
	s32i.n	a6, sp, 0
	.loc 1 338 0
	s32i.n	a8, sp, 4
	call8	_drawFastHLine
.LVL122:
	.loc 1 339 0
	l32i.n	a8, sp, 4
	addi.n	a4, a4, -1
.LVL123:
	sext	a6, a5, 15
	add.n	a10, a8, a4
	l32i.n	a13, sp, 0
	mov.n	a12, a6
	mov.n	a11, a3
	sext	a10, a10, 15
	call8	_drawFastVLine
.LVL124:
	.loc 1 340 0
	l32i.n	a9, sp, 8
	addi.n	a5, a5, -1
.LVL125:
	l32i.n	a13, sp, 0
	add.n	a11, a2, a5
	mov.n	a12, a9
	mov.n	a10, a7
	sext	a11, a11, 15
	call8	_drawFastHLine
.LVL126:
	.loc 1 341 0
	l32i.n	a13, sp, 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a7
	call8	_drawFastVLine
.LVL127:
	retw.n
.LFE42:
	.size	_drawRect, .-_drawRect
	.section	.text._fillTriangle,"ax",@progbits
	.align	4
	.type	_fillTriangle, @function
_fillTriangle:
.LFB53:
	.loc 1 516 0
.LVL128:
	entry	sp, 80
.LCFI11:
	.loc 1 516 0
	extui	a8, a7, 0, 16
	.loc 1 520 0
	bgeu	a5, a3, .L104
.LVL129:
	.loc 1 524 0
	mov.n	a7, a5
.LVL130:
	bgeu	a8, a3, .L121
	mov.n	a5, a8
.LVL131:
	mov.n	a8, a3
.LVL132:
	mov.n	a3, a7
.LVL133:
	mov.n	a7, a4
.LVL134:
.LBB4:
	.loc 1 526 0
	mov.n	a4, a6
.LVL135:
.LBE4:
.LBB5:
	.loc 1 522 0
	mov.n	a6, a2
.LVL136:
	j	.L124
.LVL137:
.L121:
.LBE5:
	mov.n	a5, a3
.LVL138:
	mov.n	a3, a7
.LVL139:
	mov.n	a7, a4
.LVL140:
.LBB6:
	mov.n	a4, a2
.LVL141:
.L124:
	mov.n	a2, a7
.LVL142:
	j	.L105
.LVL143:
.L123:
.LBE6:
	.loc 1 524 0
	mov.n	a7, a5
.LVL144:
	mov.n	a5, a8
.LVL145:
	mov.n	a8, a7
.LVL146:
	mov.n	a7, a4
.LVL147:
.LBB7:
	.loc 1 526 0
	mov.n	a4, a6
.LVL148:
.LBE7:
	.loc 1 524 0
	mov.n	a6, a7
.LVL149:
.L105:
	.loc 1 528 0
	bgeu	a5, a3, .L106
	mov.n	a7, a3
	mov.n	a3, a5
	mov.n	a5, a7
.LVL150:
	mov.n	a7, a2
	mov.n	a2, a4
	mov.n	a4, a7
.LVL151:
.L106:
	sext	a11, a3, 15
	.loc 1 533 0
	bne	a3, a8, .L107
	.loc 1 534 0
	sext	a10, a2, 15
.LVL152:
	mov.n	a12, a10
	.loc 1 535 0
	bge	a4, a10, .L108
.LVL153:
	.loc 1 535 0 is_stmt 0 discriminator 1
	sext	a10, a4, 15
	j	.L109
.LVL154:
.L108:
	.loc 1 536 0 is_stmt 1
	bge	a10, a4, .L109
	.loc 1 536 0 is_stmt 0 discriminator 1
	sext	a12, a4, 15
.LVL155:
.L109:
	.loc 1 537 0 is_stmt 1
	bge	a6, a10, .L110
	.loc 1 537 0 is_stmt 0 discriminator 1
	sext	a10, a6, 15
.LVL156:
	j	.L111
.LVL157:
.L110:
	.loc 1 538 0 is_stmt 1
	bge	a12, a6, .L111
	.loc 1 538 0 is_stmt 0 discriminator 1
	sext	a12, a6, 15
.LVL158:
.L111:
	.loc 1 539 0 is_stmt 1
	addi.n	a12, a12, 1
.LVL159:
	sub	a12, a12, a10
.LVL160:
	l32i	a13, sp, 80
	sext	a12, a12, 15
	call8	_drawFastHLine
.LVL161:
	.loc 1 540 0
	retw.n
.L107:
	.loc 1 544 0
	sub	a7, a4, a2
	sext	a9, a7, 15
	.loc 1 545 0
	sub	a7, a5, a3
	.loc 1 544 0
	s32i.n	a9, sp, 8
.LVL162:
	.loc 1 545 0
	sext	a9, a7, 15
	s32i.n	a9, sp, 12
.LVL163:
	.loc 1 547 0
	sub	a7, a8, a3
	.loc 1 546 0
	sub	a9, a6, a2
	.loc 1 548 0
	sub	a6, a6, a4
	.loc 1 547 0
	sext	a10, a7, 15
	.loc 1 548 0
	sext	a7, a6, 15
	.loc 1 549 0
	sub	a6, a8, a5
	sext	a6, a6, 15
	s32i.n	a6, sp, 16
	.loc 1 561 0
	addi.n	a6, a5, -1
	.loc 1 560 0
	sext	a6, a6, 15
	.loc 1 547 0
	s32i.n	a10, sp, 0
	.loc 1 560 0
	sub	a12, a5, a8
	sext	a10, a5, 15
	movnez	a10, a6, a12
	.loc 1 552 0
	movi.n	a14, 0
	.loc 1 546 0
	sext	a9, a9, 15
.LVL164:
	.loc 1 560 0
	s32i.n	a10, sp, 4
.LVL165:
	.loc 1 563 0
	mov.n	a6, a11
.LVL166:
	.loc 1 551 0
	mov.n	a15, a14
	.loc 1 563 0
	j	.L115
.LVL167:
.L117:
	.loc 1 564 0
	l32i.n	a11, sp, 12
	quos	a10, a15, a11
	.loc 1 565 0
	l32i.n	a11, sp, 0
	.loc 1 564 0
	add.n	a10, a2, a10
	.loc 1 565 0
	quos	a12, a14, a11
	add.n	a12, a2, a12
	l32i.n	a11, sp, 8
	.loc 1 564 0
	sext	a10, a10, 15
.LVL168:
	.loc 1 565 0
	sext	a12, a12, 15
.LVL169:
	add.n	a15, a15, a11
.LVL170:
	add.n	a14, a14, a9
.LVL171:
	.loc 1 572 0
	bge	a12, a10, .L116
	mov.n	a11, a10
	mov.n	a10, a12
.LVL172:
	mov.n	a12, a11
.LVL173:
.L116:
	.loc 1 573 0 discriminator 2
	addi.n	a12, a12, 1
.LVL174:
	sub	a12, a12, a10
.LVL175:
	l32i	a13, sp, 80
	mov.n	a11, a6
	sext	a12, a12, 15
	s32i.n	a8, sp, 32
	s32i.n	a9, sp, 28
	s32i.n	a14, sp, 24
	s32i.n	a15, sp, 20
	call8	_drawFastHLine
.LVL176:
	addi.n	a6, a6, 1
.LVL177:
	l32i.n	a15, sp, 20
	l32i.n	a14, sp, 24
	l32i.n	a9, sp, 28
	l32i.n	a8, sp, 32
	sext	a6, a6, 15
.LVL178:
.L115:
	.loc 1 563 0 discriminator 1
	l32i.n	a10, sp, 4
	bge	a10, a6, .L117
	.loc 1 578 0
	sub	a5, a6, a5
.LVL179:
	.loc 1 579 0
	sub	a3, a6, a3
.LVL180:
	.loc 1 578 0
	mull	a5, a5, a7
.LVL181:
	.loc 1 579 0
	mull	a3, a3, a9
.LVL182:
	.loc 1 580 0
	j	.L118
.L120:
	.loc 1 581 0
	l32i.n	a11, sp, 16
	quos	a10, a5, a11
	.loc 1 582 0
	l32i.n	a11, sp, 0
	.loc 1 581 0
	add.n	a10, a4, a10
	.loc 1 582 0
	quos	a12, a3, a11
	add.n	a12, a2, a12
	.loc 1 581 0
	sext	a10, a10, 15
.LVL183:
	.loc 1 582 0
	sext	a12, a12, 15
.LVL184:
	.loc 1 583 0
	add.n	a5, a5, a7
.LVL185:
	.loc 1 584 0
	add.n	a3, a3, a9
.LVL186:
	.loc 1 589 0
	bge	a12, a10, .L119
	mov.n	a11, a10
	mov.n	a10, a12
.LVL187:
	mov.n	a12, a11
.LVL188:
.L119:
	.loc 1 590 0
	addi.n	a12, a12, 1
.LVL189:
	sub	a12, a12, a10
.LVL190:
	l32i	a13, sp, 80
	mov.n	a11, a6
	sext	a12, a12, 15
	s32i.n	a8, sp, 32
	s32i.n	a9, sp, 28
	call8	_drawFastHLine
.LVL191:
	addi.n	a6, a6, 1
.LVL192:
	l32i.n	a9, sp, 28
	l32i.n	a8, sp, 32
	sext	a6, a6, 15
.LVL193:
.L118:
	.loc 1 580 0 discriminator 1
	bge	a8, a6, .L120
	retw.n
.LVL194:
.L104:
	.loc 1 524 0
	bltu	a8, a5, .L123
	j	.L106
.LFE53:
	.size	_fillTriangle, .-_fillTriangle
	.section	.text._fillRect,"ax",@progbits
	.literal_position
	.literal .LC8, dispWin
	.align	4
	.type	_fillRect, @function
_fillRect:
.LFB38:
	.loc 1 289 0
.LVL195:
	entry	sp, 48
.LCFI12:
	.loc 1 291 0
	l32r	a12, .LC8
	.loc 1 289 0
	s32i.n	a6, sp, 0
	.loc 1 291 0
	l16ui	a8, a12, 4
	.loc 1 289 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 291 0
	bge	a2, a8, .L125
	.loc 1 291 0 is_stmt 0 discriminator 1
	l16ui	a9, a12, 6
	blt	a9, a3, .L125
	.loc 1 293 0 is_stmt 1
	l16ui	a13, a12, 0
	bge	a2, a13, .L127
	.loc 1 294 0
	sub	a4, a4, a13
.LVL196:
	add.n	a4, a4, a2
	sext	a4, a4, 15
.LVL197:
	.loc 1 295 0
	sext	a10, a13, 15
.LVL198:
.L127:
	.loc 1 297 0
	l16ui	a12, a12, 2
	bge	a11, a12, .L128
	.loc 1 298 0
	sub	a5, a5, a12
.LVL199:
	add.n	a11, a5, a11
	sext	a5, a11, 15
.LVL200:
	.loc 1 299 0
	sext	a11, a12, 15
.LVL201:
.L128:
	movi.n	a15, 0
	max	a4, a4, a15
.LVL202:
	.loc 1 304 0
	addi.n	a8, a8, 1
	max	a15, a5, a15
.LVL203:
	add.n	a5, a4, a10
	bge	a8, a5, .L129
	.loc 1 304 0 is_stmt 0 discriminator 1
	sub	a4, a8, a10
.LVL204:
	sext	a4, a4, 15
.LVL205:
.L129:
	.loc 1 305 0 is_stmt 1
	add.n	a8, a15, a11
	addi.n	a5, a9, 1
	bge	a5, a8, .L130
	.loc 1 305 0 is_stmt 0 discriminator 1
	sub	a15, a5, a11
.LVL206:
	sext	a15, a15, 15
.LVL207:
.L130:
	.loc 1 306 0 is_stmt 1
	movi.n	a5, 1
	moveqz	a4, a5, a4
.LVL208:
	.loc 1 307 0
	moveqz	a15, a5, a15
.LVL209:
	.loc 1 308 0
	add.n	a13, a15, a11
	add.n	a12, a4, a10
	mull	a15, a4, a15
.LVL210:
	l32i.n	a14, sp, 0
	addi.n	a13, a13, -1
	addi.n	a12, a12, -1
	call8	TFT_pushColorRep
.LVL211:
.L125:
	retw.n
.LFE38:
	.size	_fillRect, .-_fillRect
	.section	.text.barVert,"ax",@progbits
	.literal_position
	.literal .LC9, cfont
	.align	4
	.type	barVert, @function
barVert:
.LFB78:
	.loc 1 1850 0
.LVL212:
	entry	sp, 96
.LCFI13:
	.loc 1 1851 0
	extui	a8, a4, 0, 16
	slli	a9, a8, 1
	.loc 1 1850 0
	s32i.n	a2, sp, 44
	.loc 1 1851 0
	extui	a2, a2, 0, 16
	s32i.n	a2, sp, 24
	extui	a3, a3, 0, 16
	.loc 1 1850 0
	s32i.n	a7, sp, 20
	.loc 1 1851 0
	addi.n	a7, a2, 1
	extui	a2, a9, 0, 16
.LVL213:
	.loc 1 1850 0
	s32i.n	a5, sp, 48
	.loc 1 1851 0
	s32i.n	a2, sp, 32
	add.n	a5, a2, a3
.LVL214:
	l32i.n	a2, sp, 24
	extui	a5, a5, 0, 16
	add.n	a4, a2, a8
.LVL215:
	addi.n	a2, a3, 1
	add.n	a2, a8, a2
	extui	a4, a4, 0, 16
	extui	a2, a2, 0, 16
	s32i.n	a2, sp, 36
	add.n	a2, a8, a4
	addi.n	a2, a2, -1
	extui	a10, a6, 16, 16
	extui	a7, a7, 0, 16
	extui	a2, a2, 0, 16
	l32i.n	a13, sp, 36
	.loc 1 1850 0
	s32i.n	a6, sp, 16
	.loc 1 1851 0
	s16i	a6, sp, 0
	s8i	a10, sp, 2
	mov.n	a15, a5
	mov.n	a14, a2
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a7
	s32i.n	a8, sp, 56
	s32i.n	a9, sp, 52
	call8	_fillTriangle
.LVL216:
	.loc 1 1852 0
	l32i.n	a6, sp, 48
	l32i.n	a8, sp, 56
	l32i.n	a9, sp, 52
	extui	a6, a6, 0, 16
	add.n	a8, a8, a9
	add.n	a3, a3, a6
.LVL217:
	add.n	a3, a8, a3
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 40
	l16ui	a3, sp, 16
	addi.n	a8, a6, 1
	s16i	a3, sp, 0
	add.n	a8, a5, a8
	l8ui	a3, sp, 18
	extui	a8, a8, 0, 16
	l32i.n	a13, sp, 40
	mov.n	a11, a8
	s32i.n	a6, sp, 28
	s8i	a3, sp, 2
	mov.n	a15, a8
	mov.n	a14, a2
	mov.n	a12, a4
	mov.n	a10, a7
	s32i.n	a8, sp, 56
	call8	_fillTriangle
.LVL218:
	.loc 1 1853 0
	l32i.n	a9, sp, 32
	addi.n	a6, a5, 1
	addi.n	a3, a9, 1
	extui	a6, a6, 0, 16
	extui	a3, a3, 0, 16
	l32i.n	a14, sp, 16
	l32i.n	a13, sp, 48
	l32i.n	a10, sp, 44
	sext	a12, a3, 15
	sext	a11, a6, 15
	call8	_fillRect
.LVL219:
	.loc 1 1854 0
	l32r	a9, .LC9
	.loc 1 1850 0
	.loc 1 1854 0
	l8ui	a9, a9, 6
	beqz.n	a9, .L133
	.loc 1 1855 0
	l8ui	a9, sp, 22
	l16ui	a10, sp, 20
	l32i.n	a13, sp, 36
	mov.n	a15, a5
	mov.n	a11, a5
	s16i	a10, sp, 0
	s8i	a9, sp, 2
	mov.n	a14, a2
	mov.n	a12, a4
	mov.n	a10, a7
	call8	_drawTriangle
.LVL220:
	.loc 1 1856 0
	l32i.n	a8, sp, 56
	l8ui	a5, sp, 22
	l16ui	a9, sp, 20
	l32i.n	a13, sp, 40
	mov.n	a14, a2
	mov.n	a12, a4
	mov.n	a11, a8
	mov.n	a10, a7
	s16i	a9, sp, 0
	s8i	a5, sp, 2
	mov.n	a15, a8
	call8	_drawTriangle
.LVL221:
	.loc 1 1857 0
	l32i.n	a14, sp, 20
	l32i.n	a13, sp, 28
	l32i.n	a10, sp, 24
	mov.n	a12, a3
	mov.n	a11, a6
	call8	_drawRect
.LVL222:
.L133:
	retw.n
.LFE78:
	.size	barVert, .-barVert
	.section	.text.barHor,"ax",@progbits
	.literal_position
	.literal .LC10, cfont
	.align	4
	.type	barHor, @function
barHor:
.LFB79:
	.loc 1 1863 0
.LVL223:
	entry	sp, 96
.LCFI14:
	.loc 1 1864 0
	extui	a9, a4, 0, 16
	.loc 1 1863 0
	s32i.n	a3, sp, 44
	.loc 1 1864 0
	slli	a8, a9, 1
	l32i.n	a4, sp, 44
.LVL224:
	extui	a3, a8, 0, 16
.LVL225:
	s32i.n	a3, sp, 28
	extui	a2, a2, 0, 16
	extui	a4, a4, 0, 16
	s32i.n	a4, sp, 24
	.loc 1 1863 0
	s32i.n	a5, sp, 48
	.loc 1 1864 0
	add.n	a5, a3, a2
.LVL226:
	addi.n	a3, a4, -1
	l32i.n	a4, sp, 28
	.loc 1 1863 0
	s32i.n	a7, sp, 20
	.loc 1 1864 0
	add.n	a3, a4, a3
	addi.n	a4, a2, 1
	add.n	a4, a9, a4
	extui	a4, a4, 0, 16
	s32i.n	a4, sp, 36
	l32i.n	a4, sp, 24
	extui	a5, a5, 0, 16
	add.n	a7, a9, a4
	addi.n	a4, a4, 1
	extui	a10, a6, 16, 16
	extui	a3, a3, 0, 16
	extui	a7, a7, 0, 16
	extui	a4, a4, 0, 16
	l32i.n	a12, sp, 36
	.loc 1 1863 0
	s32i.n	a6, sp, 16
	.loc 1 1864 0
	s16i	a6, sp, 0
	s8i	a10, sp, 2
	mov.n	a15, a4
	mov.n	a14, a5
	mov.n	a13, a7
	mov.n	a11, a3
	mov.n	a10, a5
	s32i.n	a8, sp, 56
	s32i.n	a9, sp, 52
	call8	_fillTriangle
.LVL227:
	.loc 1 1865 0
	l32i.n	a6, sp, 48
	l32i.n	a8, sp, 56
	l32i.n	a9, sp, 52
	extui	a6, a6, 0, 16
	add.n	a8, a9, a8
	add.n	a2, a2, a6
.LVL228:
	add.n	a2, a8, a2
	extui	a2, a2, 0, 16
	s32i.n	a2, sp, 40
	l16ui	a2, sp, 16
	addi.n	a8, a6, 1
	s16i	a2, sp, 0
	add.n	a8, a5, a8
	l8ui	a2, sp, 18
	extui	a8, a8, 0, 16
	l32i.n	a12, sp, 40
	mov.n	a14, a8
	mov.n	a10, a8
	s32i.n	a6, sp, 32
	s8i	a2, sp, 2
	mov.n	a15, a4
	mov.n	a13, a7
	mov.n	a11, a3
	s32i.n	a8, sp, 56
	call8	_fillTriangle
.LVL229:
	.loc 1 1866 0
	l32i.n	a9, sp, 28
	addi.n	a6, a5, 1
	addi.n	a2, a9, 1
	extui	a6, a6, 0, 16
	extui	a2, a2, 0, 16
	l32i.n	a14, sp, 16
	l32i.n	a12, sp, 48
	l32i.n	a11, sp, 44
	sext	a13, a2, 15
	sext	a10, a6, 15
	call8	_fillRect
.LVL230:
	.loc 1 1867 0
	l32r	a9, .LC10
	.loc 1 1863 0
	.loc 1 1867 0
	l8ui	a9, a9, 6
	beqz.n	a9, .L138
	.loc 1 1868 0
	l8ui	a9, sp, 22
	l16ui	a10, sp, 20
	l32i.n	a12, sp, 36
	mov.n	a14, a5
	s16i	a10, sp, 0
	s8i	a9, sp, 2
	mov.n	a10, a5
	mov.n	a15, a4
	mov.n	a13, a7
	mov.n	a11, a3
	call8	_drawTriangle
.LVL231:
	.loc 1 1869 0
	l32i.n	a8, sp, 56
	l8ui	a5, sp, 22
	l16ui	a9, sp, 20
	l32i.n	a12, sp, 40
	mov.n	a14, a8
	mov.n	a13, a7
	mov.n	a11, a3
	mov.n	a10, a8
	s16i	a9, sp, 0
	s8i	a5, sp, 2
	mov.n	a15, a4
	call8	_drawTriangle
.LVL232:
	.loc 1 1870 0
	l32i.n	a14, sp, 20
	l32i.n	a12, sp, 32
	l32i.n	a11, sp, 24
	mov.n	a13, a2
	mov.n	a10, a6
	call8	_drawRect
.LVL233:
.L138:
	retw.n
.LFE79:
	.size	barHor, .-barHor
	.section	.text.drawCircleHelper,"ax",@progbits
	.align	4
	.type	drawCircleHelper, @function
drawCircleHelper:
.LFB44:
	.loc 1 352 0
.LVL234:
	entry	sp, 64
.LCFI15:
	.loc 1 353 0
	extui	a8, a4, 0, 16
	.loc 1 352 0
	s32i.n	a6, sp, 0
	.loc 1 355 0
	slli	a6, a8, 15
	sub	a6, a6, a8
	slli	a6, a6, 1
	sext	a6, a6, 15
	.loc 1 353 0
	movi.n	a7, 1
	sub	a7, a7, a8
	.loc 1 355 0
	s32i.n	a6, sp, 4
	.loc 1 359 0
	call8	disp_select
.LVL235:
	.loc 1 369 0
	movi.n	a8, 4
	and	a8, a5, a8
	.loc 1 353 0
	sext	a7, a7, 15
.LVL236:
	.loc 1 360 0
	movi.n	a6, 1
	.loc 1 369 0
	s32i.n	a8, sp, 8
	.loc 1 370 0
	extui	a2, a2, 0, 16
	.loc 1 360 0
	j	.L144
.LVL237:
.L150:
	.loc 1 361 0
	bltz	a7, .L145
	.loc 1 363 0
	l32i.n	a9, sp, 4
	.loc 1 362 0
	addi.n	a4, a4, -1
.LVL238:
	.loc 1 363 0
	addi.n	a8, a9, 2
	extui	a8, a8, 0, 16
	sext	a9, a8, 15
	.loc 1 364 0
	add.n	a7, a8, a7
.LVL239:
	.loc 1 362 0
	sext	a4, a4, 15
.LVL240:
	.loc 1 363 0
	s32i.n	a9, sp, 4
.LVL241:
	.loc 1 364 0
	sext	a7, a7, 15
.LVL242:
.L145:
	.loc 1 368 0
	addx2	a7, a6, a7
.LVL243:
	.loc 1 369 0
	l32i.n	a8, sp, 8
	.loc 1 368 0
	addi.n	a7, a7, 1
	sext	a7, a7, 15
.LVL244:
	.loc 1 369 0
	beqz.n	a8, .L146
	.loc 1 370 0
	extui	a8, a3, 0, 16
	extui	a9, a4, 0, 16
	add.n	a11, a8, a9
	l32i.n	a12, sp, 0
	add.n	a10, a2, a6
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 12
	s32i.n	a9, sp, 16
	call8	_drawPixel
.LVL245:
	.loc 1 371 0
	l32i.n	a8, sp, 12
	l32i.n	a9, sp, 16
	add.n	a11, a8, a6
	add.n	a10, a2, a9
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL246:
.L146:
	.loc 1 373 0
	bbci	a5, 1, .L147
	.loc 1 374 0
	extui	a8, a3, 0, 16
	extui	a9, a4, 0, 16
	sub	a11, a8, a9
	l32i.n	a12, sp, 0
	add.n	a10, a6, a2
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 12
	s32i.n	a9, sp, 16
	call8	_drawPixel
.LVL247:
	.loc 1 375 0
	l32i.n	a8, sp, 12
	l32i.n	a9, sp, 16
	sub	a11, a8, a6
	add.n	a10, a2, a9
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL248:
.L147:
	.loc 1 377 0
	bbci	a5, 3, .L148
	.loc 1 378 0
	extui	a9, a3, 0, 16
	extui	a11, a4, 0, 16
	add.n	a14, a6, a9
	sub	a10, a2, a11
	l32i.n	a12, sp, 0
	mov.n	a8, a11
	movi.n	a13, 0
	sext	a11, a14, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 12
	s32i.n	a9, sp, 16
	call8	_drawPixel
.LVL249:
	.loc 1 379 0
	l32i.n	a8, sp, 12
	l32i.n	a9, sp, 16
	sub	a10, a2, a6
	add.n	a11, a8, a9
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL250:
.L148:
	.loc 1 381 0
	bbci	a5, 0, .L149
	.loc 1 382 0
	extui	a9, a3, 0, 16
	extui	a11, a4, 0, 16
	sub	a14, a9, a6
	sub	a10, a2, a11
	l32i.n	a12, sp, 0
	mov.n	a8, a11
	movi.n	a13, 0
	sext	a11, a14, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 12
	s32i.n	a9, sp, 16
	call8	_drawPixel
.LVL251:
	.loc 1 383 0
	l32i.n	a8, sp, 12
	l32i.n	a9, sp, 16
	sub	a10, a2, a6
	sub	a11, a9, a8
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL252:
.L149:
	addi.n	a6, a6, 1
.LVL253:
	extui	a6, a6, 0, 16
.LVL254:
.L144:
	.loc 1 360 0
	addi.n	a8, a6, -1
	sext	a8, a8, 15
	blt	a8, a4, .L150
	.loc 1 386 0
	call8	disp_deselect
.LVL255:
	retw.n
.LFE44:
	.size	drawCircleHelper, .-drawCircleHelper
	.section	.text._draw_ellipse_section,"ax",@progbits
	.align	4
	.type	_draw_ellipse_section, @function
_draw_ellipse_section:
.LFB57:
	.loc 1 653 0
.LVL256:
	entry	sp, 48
.LCFI16:
	.loc 1 653 0
	extui	a7, a7, 0, 8
	s32i.n	a6, sp, 0
	.loc 1 654 0
	call8	disp_select
.LVL257:
	.loc 1 656 0
	bbci	a7, 0, .L164
	.loc 1 656 0 is_stmt 0 discriminator 1
	sub	a11, a5, a3
	add.n	a10, a4, a2
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL258:
.L164:
	.loc 1 658 0 is_stmt 1
	bbci	a7, 1, .L165
	.loc 1 658 0 is_stmt 0 discriminator 1
	sub	a11, a5, a3
	sub	a10, a4, a2
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL259:
.L165:
	.loc 1 660 0 is_stmt 1
	bbci	a7, 3, .L166
	.loc 1 660 0 is_stmt 0 discriminator 1
	add.n	a11, a5, a3
	add.n	a10, a4, a2
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL260:
.L166:
	.loc 1 662 0 is_stmt 1
	bbci	a7, 2, .L167
	.loc 1 662 0 is_stmt 0 discriminator 1
	add.n	a11, a5, a3
	sub	a10, a4, a2
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL261:
.L167:
	.loc 1 663 0 is_stmt 1
	call8	disp_deselect
.LVL262:
	retw.n
.LFE57:
	.size	_draw_ellipse_section, .-_draw_ellipse_section
	.global	__divsf3
	.global	__extendsfdf2
	.global	__muldf3
	.global	__divdf3
	.global	__truncdfsf2
	.section	.text._fillArcOffsetted,"ax",@progbits
	.literal_position
	.literal .LC11, 0xc9742400
	.literal .LC12, 0x43b40000
	.literal .LC13, 0x54442eea, 0x400921fb
	.literal .LC14, 0x00000000, 0x40768000
	.literal .LC15, 0x43340000
	.literal .LC16, 0x00000000
	.align	4
	.type	_fillArcOffsetted, @function
_fillArcOffsetted:
.LFB61:
	.loc 1 858 0
.LVL263:
	entry	sp, 80
.LCFI17:
	.loc 1 858 0
	wfr	f1, a6
	.loc 1 861 0
	l32r	a11, .LC12
	rfr	a10, f1
	ssi	f1, sp, 32
	.loc 1 858 0
	s32i.n	a7, sp, 0
	.loc 1 861 0
	call8	__divsf3
.LVL264:
	wfr	f0, a10
	add.s	f0, f0, f0
	.loc 1 858 0
	mov.n	a7, a2
.LVL265:
	mov.n	a6, a3
.LVL266:
	.loc 1 861 0
	rfr	a10, f0
	call8	__extendsfdf2
.LVL267:
	l32r	a12, .LC13
	l32r	a13, .LC13+4
	call8	__muldf3
.LVL268:
	s32i.n	a10, sp, 24
	s32i.n	a11, sp, 28
	call8	cos
.LVL269:
	l32i.n	a8, sp, 24
	l32i.n	a9, sp, 28
	mov.n	a2, a10
.LVL270:
	mov.n	a3, a11
.LVL271:
	mov.n	a10, a8
	mov.n	a11, a9
	call8	sin
.LVL272:
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a10, a2
	mov.n	a11, a3
	s32i.n	a8, sp, 24
	s32i.n	a9, sp, 28
	call8	__muldf3
.LVL273:
	l32i.n	a8, sp, 24
	l32i.n	a9, sp, 28
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	mov.n	a2, a10
	mov.n	a3, a11
	mov.n	a10, a8
	mov.n	a11, a9
	call8	__muldf3
.LVL274:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__divdf3
.LVL275:
	call8	__truncdfsf2
.LVL276:
	.loc 1 862 0
	l32r	a11, .LC12
	.loc 1 861 0
	s32i.n	a10, sp, 4
.LVL277:
	.loc 1 862 0
	l32i.n	a10, sp, 0
.LVL278:
	call8	__divsf3
.LVL279:
	wfr	f2, a10
	add.s	f2, f2, f2
	rfr	a10, f2
	call8	__extendsfdf2
.LVL280:
	l32r	a12, .LC13
	l32r	a13, .LC13+4
	call8	__muldf3
.LVL281:
	s32i.n	a10, sp, 24
	s32i.n	a11, sp, 28
	call8	cos
.LVL282:
	l32i.n	a8, sp, 24
	l32i.n	a9, sp, 28
	mov.n	a2, a10
	mov.n	a3, a11
	mov.n	a10, a8
	mov.n	a11, a9
	call8	sin
.LVL283:
	mov.n	a8, a10
	.loc 1 864 0
	l32r	a10, .LC11
	lsi	f0, sp, 0
	wfr	f3, a10
	l32r	a10, .LC12
	.loc 1 862 0
	mov.n	a9, a11
.LVL284:
	.loc 1 864 0
	wfr	f2, a10
	oeq.s	b0, f0, f2
	lsi	f1, sp, 32
.LVL285:
	bt	b0, .L181
	.loc 1 862 0
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	mov.n	a10, a2
	mov.n	a11, a3
	s32i.n	a8, sp, 24
	s32i.n	a9, sp, 28
	call8	__muldf3
.LVL286:
	l32i.n	a8, sp, 24
	l32i.n	a9, sp, 28
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	mov.n	a2, a10
	mov.n	a3, a11
	mov.n	a10, a8
	mov.n	a11, a9
	call8	__muldf3
.LVL287:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__divdf3
.LVL288:
	call8	__truncdfsf2
.LVL289:
	lsi	f1, sp, 32
.LVL290:
	wfr	f3, a10
.L181:
.LVL291:
	.loc 1 869 0
	ssi	f1, sp, 32
	ssi	f3, sp, 20
	call8	disp_select
.LVL292:
	l32r	a2, .LC15
	.loc 1 866 0
	sub	a5, a4, a5
.LVL293:
.LBB8:
	.loc 1 870 0
	neg	a14, a4
.LBE8:
	.loc 1 866 0
	mull	a5, a5, a5
.LVL294:
	.loc 1 867 0
	mull	a3, a4, a4
.LVL295:
.LBB13:
	.loc 1 870 0
	mov.n	a8, a14
	wfr	f0, a2
	lsi	f1, sp, 32
	lsi	f3, sp, 20
	j	.L182
.LVL296:
.L204:
.LBB9:
.LBB10:
	.loc 1 876 0
	mull	a10, a2, a2
.LVL297:
	add.n	a10, a10, a15
.LVL298:
	bge	a10, a3, .L183
	blt	a10, a5, .L183
	.loc 1 876 0 is_stmt 0 discriminator 1
	blti	a2, 1, .L186
	.loc 1 878 0 is_stmt 1
	olt.s	b0, f1, f0
	bf	b0, .L187
	.loc 1 878 0 is_stmt 0 discriminator 1
	float.s	f2, a2, 0
	lsi	f6, sp, 4
	float.s	f4, a8, 0
	mul.s	f5, f6, f2
	ole.s	b0, f4, f5
	bt	b0, .L189
	j	.L187
.L186:
	.loc 1 878 0 discriminator 3
	beqz.n	a2, .L187
	.loc 1 879 0 is_stmt 1
	olt.s	b0, f0, f1
	bf	b0, .L190
	.loc 1 879 0 is_stmt 0 discriminator 1
	float.s	f4, a2, 0
	lsi	f5, sp, 4
	float.s	f2, a8, 0
	mul.s	f4, f4, f5
	ole.s	b0, f4, f2
	bt	b0, .L192
.L190:
	.loc 1 880 0 is_stmt 1
	ole.s	b0, f1, f0
	bt	b0, .L192
	j	.L193
.L187:
	.loc 1 881 0
	ole.s	b0, f1, f0
	movi.n	a12, 0
	movi.n	a11, 1
	extui	a10, a8, 31, 1
	movf	a11, a12, b0
	bnone	a11, a10, .L193
	beq	a2, a12, .L194
.L193:
	.loc 1 882 0 discriminator 3
	l32r	a10, .LC16
	movi.n	a11, 0
	wfr	f6, a10
	oeq.s	b0, f1, f6
	movi.n	a10, 1
	movf	a10, a11, b0
	bnone	a10, a9, .L183
	beq	a2, a11, .L194
	j	.L183
.L189:
	.loc 1 885 0
	lsi	f5, sp, 0
	olt.s	b0, f5, f0
	bf	b0, .L197
	.loc 1 885 0 is_stmt 0 discriminator 1
	mul.s	f2, f3, f2
	ole.s	b0, f2, f4
	bt	b0, .L199
	j	.L197
.L192:
	.loc 1 886 0 is_stmt 1
	lsi	f6, sp, 0
	olt.s	b0, f0, f6
	bf	b0, .L200
	.loc 1 886 0 is_stmt 0 discriminator 1
	float.s	f2, a2, 0
	float.s	f4, a8, 0
	mul.s	f2, f2, f3
	ole.s	b0, f4, f2
	bt	b0, .L199
	j	.L200
.L194:
	.loc 1 886 0 discriminator 3
	beqz.n	a2, .L200
.L197:
	.loc 1 887 0 is_stmt 1
	lsi	f2, sp, 0
	ole.s	b0, f0, f2
	bt	b0, .L199
	j	.L202
.L200:
	.loc 1 888 0
	lsi	f5, sp, 0
	movi.n	a11, 0
	ole.s	b0, f0, f5
	movi.n	a10, 1
	movf	a10, a11, b0
	extui	a11, a8, 31, 1
	bnone	a10, a11, .L202
	beqz.n	a2, .L199
.L202:
	.loc 1 889 0 discriminator 3
	l32r	a10, .LC16
	movi.n	a11, 0
	wfr	f6, a10
	oeq.s	b0, f1, f6
	movi.n	a10, 1
	movf	a10, a11, b0
	bnone	a10, a9, .L183
	bne	a2, a11, .L183
.L199:
	.loc 1 892 0
	add.n	a10, a7, a8
	add.n	a11, a6, a2
	l32i	a12, sp, 80
	movi.n	a13, 0
	sext	a11, a11, 15
	sext	a10, a10, 15
	s32i.n	a8, sp, 24
	s32i.n	a9, sp, 28
	s32i.n	a14, sp, 8
	s32i.n	a15, sp, 12
	ssi	f0, sp, 16
	ssi	f1, sp, 32
	ssi	f3, sp, 20
	call8	_drawPixel
.LVL299:
	lsi	f3, sp, 20
	lsi	f1, sp, 32
	lsi	f0, sp, 16
	l32i.n	a15, sp, 12
	l32i.n	a14, sp, 8
	l32i.n	a9, sp, 28
	l32i.n	a8, sp, 24
.L183:
.LBE10:
	.loc 1 871 0 discriminator 2
	addi.n	a2, a2, 1
.LVL300:
	bge	a4, a2, .L204
.LBE9:
	.loc 1 870 0 discriminator 2
	addi.n	a8, a8, 1
.LVL301:
	blt	a4, a8, .L205
.LVL302:
.L182:
.LBB12:
.LBB11:
	.loc 1 889 0
	srai	a9, a8, 31
	sub	a9, a9, a8
	.loc 1 872 0
	mull	a15, a8, a8
	mov.n	a2, a14
	.loc 1 889 0
	extui	a9, a9, 31, 1
	j	.L204
.LVL303:
.L205:
.LBE11:
.LBE12:
.LBE13:
	.loc 1 895 0
	call8	disp_deselect
.LVL304:
	retw.n
.LFE61:
	.size	_fillArcOffsetted, .-_fillArcOffsetted
	.section	.text.tjd_buf_input,"ax",@progbits
	.align	4
	.type	tjd_buf_input, @function
tjd_buf_input:
.LFB94:
	.loc 1 2318 0
.LVL305:
	entry	sp, 32
.LCFI18:
	.loc 1 2320 0
	l32i	a5, a2, 120
.LVL306:
	.loc 1 2318 0
	mov.n	a10, a3
	.loc 1 2321 0
	l32i.n	a11, a5, 20
	mov.n	a2, a11
.LVL307:
	beqz.n	a11, .L240
	.loc 1 2322 0
	l32i.n	a9, a5, 24
	l32i.n	a8, a5, 28
	addi.n	a9, a9, 2
	.loc 1 2321 0
	movi.n	a2, 0
	.loc 1 2322 0
	bgeu	a8, a9, .L240
	.loc 1 2324 0
	add.n	a2, a8, a4
	bgeu	a9, a2, .L241
	.loc 1 2324 0 is_stmt 0 discriminator 1
	sub	a4, a9, a8
.LVL308:
.L241:
	.loc 1 2326 0 is_stmt 1
	beqz.n	a10, .L242
	.loc 1 2327 0
	mov.n	a12, a4
	add.n	a11, a11, a8
	call8	memcpy
.LVL309:
	.loc 1 2328 0
	l32i.n	a2, a5, 28
	add.n	a2, a2, a4
	s32i.n	a2, a5, 28
	j	.L245
.L242:
	.loc 1 2331 0
	add.n	a8, a4, a8
	s32i.n	a8, a5, 28
.L245:
	.loc 1 2332 0
	mov.n	a2, a4
.L240:
	.loc 1 2334 0
	retw.n
.LFE94:
	.size	tjd_buf_input, .-tjd_buf_input
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC18:
	.string	"r"
.LC20:
	.string	"Error opening font file '%s'"
.LC22:
	.string	"Error getting font file size"
.LC24:
	.string	"Font memory allocation error"
.LC26:
	.string	"Font read error"
.LC28:
	.string	"RPH_font"
.LC30:
	.string	"Font ID not found"
.LC32:
	.string	"Font size error: found %d expected %d)"
.LC34:
	.string	"Error: %d [%s]\r\n"
	.section	.text.load_file_font,"ax",@progbits
	.literal_position
	.literal .LC17, userfont
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.align	4
	.type	load_file_font, @function
load_file_font:
.LFB64:
	.loc 1 1044 0
.LVL310:
	entry	sp, 352
.LCFI19:
.LVL311:
	.loc 1 1046 0
	movi	a12, 0x100
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL312:
	.loc 1 1048 0
	l32r	a4, .LC17
	l32i.n	a10, a4, 0
	beqz.n	a10, .L247
	.loc 1 1050 0
	movi.n	a5, 0
	.loc 1 1049 0
	call8	free
.LVL313:
	.loc 1 1050 0
	s32i.n	a5, a4, 0
.L247:
	.loc 1 1056 0
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	fopen
.LVL314:
	mov.n	a6, a10
.LVL315:
	.loc 1 1057 0
	bnez.n	a10, .L248
	.loc 1 1058 0
	l32r	a11, .LC21
	mov.n	a12, a2
	mov.n	a10, sp
	call8	sprintf
.LVL316:
	.loc 1 1059 0
	movi.n	a2, 1
.LVL317:
	.loc 1 1060 0
	j	.L249
.LVL318:
.L248:
	.loc 1 1064 0
	mov.n	a10, a2
	addmi	a11, sp, 0x100
	call8	stat
.LVL319:
	mov.n	a2, a10
.LVL320:
	beqz.n	a10, .L250
	.loc 1 1065 0
	l32r	a11, .LC23
	mov.n	a10, sp
	call8	strcpy
.LVL321:
	.loc 1 1066 0
	movi.n	a2, 2
	.loc 1 1067 0
	j	.L249
.LVL322:
.L250:
	.loc 1 1069 0
	l32i	a5, sp, 272
.LVL323:
	.loc 1 1070 0
	movi.n	a7, 0x1d
	blt	a7, a5, .L251
	.loc 1 1071 0
	l32r	a11, .LC23
	mov.n	a10, sp
	call8	strcpy
.LVL324:
	.loc 1 1072 0
	movi.n	a2, 3
	.loc 1 1073 0
	j	.L249
.LVL325:
.L251:
	.loc 1 1076 0
	addi.n	a10, a5, 4
	call8	malloc
.LVL326:
	s32i.n	a10, a4, 0
	.loc 1 1077 0
	bnez.n	a10, .L252
	.loc 1 1078 0
	l32r	a11, .LC25
	mov.n	a10, sp
	call8	strcpy
.LVL327:
	.loc 1 1079 0
	mov.n	a10, a6
	call8	fclose
.LVL328:
	.loc 1 1080 0
	movi.n	a2, 4
	.loc 1 1081 0
	j	.L249
.LVL329:
.L252:
	.loc 1 1084 0
	mov.n	a13, a6
	mov.n	a12, a5
	movi.n	a11, 1
	call8	fread
.LVL330:
	mov.n	a7, a10
.LVL331:
	.loc 1 1086 0
	mov.n	a10, a6
	call8	fclose
.LVL332:
	.loc 1 1088 0
	beq	a5, a7, .L253
	.loc 1 1089 0
	l32r	a11, .LC27
	mov.n	a10, sp
	call8	strcpy
.LVL333:
	.loc 1 1090 0
	movi.n	a2, 5
	.loc 1 1091 0
	j	.L249
.LVL334:
.L253:
	.loc 1 1094 0
	l32i.n	a6, a4, 0
.LVL335:
	.loc 1 1095 0
	l32r	a11, .LC29
	.loc 1 1094 0
	add.n	a8, a6, a5
	.loc 1 1095 0
	addi	a5, a5, -8
.LVL336:
	.loc 1 1094 0
	s8i	a2, a8, 0
	.loc 1 1095 0
	add.n	a10, a6, a5
	call8	strstr
.LVL337:
	bnez.n	a10, .L254
	.loc 1 1096 0
	l32r	a11, .LC31
	mov.n	a10, sp
	call8	strcpy
.LVL338:
	.loc 1 1097 0
	movi.n	a2, 6
	.loc 1 1098 0
	j	.L249
.LVL339:
.L254:
	.loc 1 1104 0
	l8ui	a9, a6, 0
.LVL340:
	.loc 1 1112 0
	beqz.n	a9, .L255
	.loc 1 1105 0
	l8ui	a2, a6, 1
.LVL341:
	.loc 1 1117 0
	l8ui	a6, a6, 3
.LVL342:
	mul16u	a12, a9, a2
	mull	a12, a6, a12
	srai	a12, a12, 3
	addi.n	a12, a12, 4
.LVL343:
	j	.L256
.LVL344:
.L255:
	movi.n	a12, 4
.LBB14:
	.loc 1 1128 0
	movi	a13, 0xff
	.loc 1 1137 0
	movi.n	a10, 1
	.loc 1 1140 0
	movi	a11, -0xff
.LVL345:
.L263:
	.loc 1 1125 0
	add.n	a15, a6, a12
	l8ui	a8, a15, 0
.LVL346:
	.loc 1 1128 0
	beq	a8, a13, .L257
	.loc 1 1126 0
	l8ui	a14, a15, 2
	.loc 1 1130 0
	beqz.n	a14, .L258
	.loc 1 1130 0 is_stmt 0 discriminator 1
	l8ui	a2, a15, 3
	mul16u	a14, a14, a2
	addi.n	a2, a14, -1
	addi.n	a14, a14, 6
	movltz	a2, a14, a2
	srai	a2, a2, 3
	addi.n	a2, a2, 7
	add.n	a12, a12, a2
.LVL347:
	j	.L260
.LVL348:
.L258:
	.loc 1 1131 0 is_stmt 1
	addi.n	a12, a12, 6
.LVL349:
	j	.L260
.LVL350:
.L257:
	.loc 1 1139 0
	addi.n	a12, a12, 1
.LVL351:
.L260:
	.loc 1 1140 0
	bge	a12, a5, .L256
	add.n	a8, a8, a11
	mov.n	a2, a9
	movnez	a2, a10, a8
	bnez.n	a2, .L263
.LVL352:
.L256:
.LBE14:
	.loc 1 1045 0
	movi.n	a2, 0
	.loc 1 1143 0
	beq	a12, a5, .L278
	.loc 1 1144 0
	l32r	a11, .LC33
	mov.n	a13, a5
	mov.n	a10, sp
	call8	sprintf
.LVL353:
	.loc 1 1145 0
	movi.n	a2, 7
	.loc 1 1146 0
	j	.L249
.LVL354:
.L267:
	.loc 1 1163 0
	movi.n	a5, 0
	.loc 1 1162 0
	call8	free
.LVL355:
	.loc 1 1163 0
	s32i.n	a5, a4, 0
.L268:
	.loc 1 1165 0
	beqz.n	a3, .L278
	.loc 1 1165 0 is_stmt 0 discriminator 1
	l32r	a10, .LC35
	mov.n	a12, sp
	mov.n	a11, a2
	call8	printf
.LVL356:
	retw.n
.LVL357:
.L249:
	.loc 1 1161 0 is_stmt 1
	l32i.n	a10, a4, 0
	bnez.n	a10, .L267
	j	.L268
.LVL358:
.L278:
	.loc 1 1168 0
	retw.n
.LFE64:
	.size	load_file_font, .-load_file_font
	.section	.text.tjd_output,"ax",@progbits
	.literal_position
	.literal .LC38, dispWin
	.align	4
	.type	tjd_output, @function
tjd_output:
.LFB95:
	.loc 1 2343 0
.LVL359:
	entry	sp, 64
.LCFI20:
	.loc 1 2345 0
	l32i	a5, a2, 120
.LVL360:
	.loc 1 2358 0
	l32r	a6, .LC38
	.loc 1 2353 0
	l32i.n	a10, a5, 4
	l16ui	a9, a4, 0
	.loc 1 2358 0
	l16ui	a15, a6, 4
	.loc 1 2343 0
	s32i.n	a3, sp, 16
.LVL361:
	.loc 1 2353 0
	add.n	a9, a9, a10
.LVL362:
	.loc 1 2358 0
	movi.n	a2, 1
.LVL363:
	blt	a15, a9, .L286
	.loc 1 2354 0 discriminator 2
	l32i.n	a7, a5, 8
	l16ui	a8, a4, 4
	.loc 1 2358 0 discriminator 2
	l16ui	a14, a6, 6
	.loc 1 2354 0 discriminator 2
	add.n	a8, a8, a7
	.loc 1 2358 0 discriminator 2
	blt	a14, a8, .L286
	.loc 1 2355 0
	l16ui	a11, a4, 2
	.loc 1 2359 0
	l16ui	a12, a6, 0
	.loc 1 2355 0
	add.n	a10, a11, a10
.LVL364:
	.loc 1 2359 0
	blt	a10, a12, .L286
	.loc 1 2356 0 discriminator 2
	l16ui	a4, a4, 6
.LVL365:
	.loc 1 2359 0 discriminator 2
	l16ui	a11, a6, 2
.LVL366:
	.loc 1 2356 0 discriminator 2
	add.n	a4, a4, a7
.LVL367:
	s32i.n	a4, sp, 0
	.loc 1 2359 0 discriminator 2
	blt	a4, a11, .L286
	l32i.n	a3, sp, 0
.LVL368:
	max	a4, a9, a12
.LVL369:
	max	a6, a8, a11
.LVL370:
	min	a7, a10, a15
.LVL371:
	min	a13, a3, a14
.LVL372:
	.loc 1 2371 0
	blt	a15, a4, .L287
	movi.n	a2, 0
.L287:
	movi.n	a15, 1
	blt	a14, a6, .L288
	movi.n	a15, 0
.L288:
	or	a2, a2, a15
	movi.n	a14, 1
	blt	a7, a12, .L289
	movi.n	a14, 0
.L289:
	or	a2, a2, a14
	extui	a2, a2, 0, 8
	bnez.n	a2, .L306
	blt	a13, a11, .L306
	.loc 1 2373 0
	sub	a14, a7, a4
	sub	a11, a13, a6
	addi.n	a14, a14, 1
	addi.n	a11, a11, 1
	mull	a11, a14, a11
	.loc 1 2376 0
	movi	a12, 0x1ff
	.loc 1 2373 0
	s32i.n	a11, sp, 4
.LVL373:
	.loc 1 2376 0
	addi.n	a11, a11, -1
.LVL374:
	bltu	a12, a11, .L291
.LBB15:
	.loc 1 2377 0
	l8ui	a11, a5, 40
	addi.n	a12, a10, 1
	addx4	a11, a11, a5
	s32i.n	a2, sp, 8
	l32i.n	a11, a11, 32
.LVL375:
	blt	a12, a9, .L293
	sub	a12, a12, a9
	addx2	a12, a12, a12
	s32i.n	a12, sp, 8
.L293:
	l32i.n	a3, sp, 16
	.loc 1 2383 0
	movi.n	a14, -4
	.loc 1 2379 0
	j	.L294
.LVL376:
.L300:
	.loc 1 2382 0
	blt	a2, a4, .L295
	blt	a8, a6, .L295
	.loc 1 2382 0 is_stmt 0 discriminator 1
	blt	a7, a2, .L295
	blt	a13, a8, .L295
.LVL377:
	.loc 1 2383 0 is_stmt 1
	l8ui	a15, a12, 0
	and	a15, a15, a14
	s8i	a15, a11, 0
.LVL378:
	.loc 1 2384 0
	l8ui	a15, a12, 1
	and	a15, a15, a14
	s8i	a15, a11, 1
	.loc 1 2385 0
	l8ui	a15, a12, 2
	and	a15, a15, a14
	s8i	a15, a11, 2
	addi.n	a11, a11, 3
.LVL379:
.L295:
	.loc 1 2380 0 discriminator 2
	addi.n	a2, a2, 1
.LVL380:
	addi.n	a12, a12, 3
	j	.L301
.LVL381:
.L307:
	mov.n	a12, a3
	mov.n	a2, a9
.LVL382:
.L301:
	.loc 1 2380 0 is_stmt 0 discriminator 1
	bge	a10, a2, .L300
	l32i.n	a2, sp, 8
.LVL383:
	.loc 1 2379 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL384:
	add.n	a3, a3, a2
.LVL385:
.L294:
	.loc 1 2379 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 0
	bge	a2, a8, .L307
	.loc 1 2389 0 is_stmt 1
	movi.n	a10, 1
	s32i.n	a13, sp, 12
	call8	wait_trans_finish
.LVL386:
	.loc 1 2390 0
	l8ui	a2, a5, 40
	l32i.n	a14, sp, 4
	addx4	a2, a2, a5
	l32i.n	a15, a2, 32
	l32i.n	a13, sp, 12
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a4
	call8	send_data
.LVL387:
	.loc 1 2391 0
	l8ui	a2, a5, 40
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 1
	s8i	a2, a5, 40
	j	.L306
.LVL388:
.L291:
.LBE15:
	.loc 1 2393 0
	movi.n	a10, 1
	call8	wait_trans_finish
.LVL389:
	.loc 1 2395 0
	retw.n
.LVL390:
.L306:
	.loc 1 2358 0
	movi.n	a2, 1
.LVL391:
.L286:
	.loc 1 2399 0
	retw.n
.LFE95:
	.size	tjd_output, .-tjd_output
	.section	.text.tjd_input,"ax",@progbits
	.align	4
	.type	tjd_input, @function
tjd_input:
.LFB93:
	.loc 1 2297 0
.LVL392:
	entry	sp, 32
.LCFI21:
.LVL393:
	.loc 1 2300 0
	l32i	a8, a2, 120
.LVL394:
	.loc 1 2302 0
	beqz.n	a3, .L322
	.loc 1 2303 0
	l32i.n	a13, a8, 0
	mov.n	a12, a4
	movi.n	a11, 1
	mov.n	a10, a3
	call8	fread
.LVL395:
	.loc 1 2304 0
	j	.L323
.LVL396:
.L322:
	.loc 1 2306 0
	l32i.n	a10, a8, 0
	movi.n	a12, 1
	mov.n	a11, a4
	call8	fseek
.LVL397:
	movgez	a3, a4, a10
.LVL398:
	mov.n	a10, a3
.LVL399:
.L323:
	.loc 1 2309 0
	mov.n	a2, a10
.LVL400:
	retw.n
.LFE93:
	.size	tjd_input, .-tjd_input
	.section	.text.TFT_compare_colors,"ax",@progbits
	.align	4
	.global	TFT_compare_colors
	.type	TFT_compare_colors, @function
TFT_compare_colors:
.LFB28:
	.loc 1 140 0
	entry	sp, 48
.LCFI22:
	.loc 1 140 0
	s32i.n	a2, sp, 0
	.loc 1 141 0
	movi.n	a9, -4
	xor	a2, a2, a3
	and	a8, a2, a9
	.loc 1 140 0
	s32i.n	a3, sp, 4
	.loc 1 141 0
	extui	a8, a8, 0, 8
	movi.n	a2, 1
	bnez.n	a8, .L326
	.loc 1 142 0
	l8ui	a10, sp, 1
	l8ui	a8, sp, 5
	xor	a8, a10, a8
	and	a8, a8, a9
	extui	a8, a8, 0, 8
	bnez.n	a8, .L326
	.loc 1 141 0
	l8ui	a11, sp, 2
	l8ui	a10, sp, 6
	xor	a10, a11, a10
	and	a9, a10, a9
	extui	a9, a9, 0, 8
	moveqz	a2, a8, a9
.L326:
	.loc 1 146 0
	retw.n
.LFE28:
	.size	TFT_compare_colors, .-TFT_compare_colors
	.section	.text.TFT_drawPixel,"ax",@progbits
	.literal_position
	.literal .LC39, dispWin
	.align	4
	.global	TFT_drawPixel
	.type	TFT_drawPixel, @function
TFT_drawPixel:
.LFB30:
	.loc 1 159 0
.LVL401:
	entry	sp, 48
.LCFI23:
	.loc 1 161 0
	l32r	a8, .LC39
	extui	a13, a5, 0, 8
	l16ui	a11, a8, 2
	l16ui	a10, a8, 0
	add.n	a11, a3, a11
	add.n	a10, a2, a10
	mov.n	a12, a4
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL402:
	retw.n
.LFE30:
	.size	TFT_drawPixel, .-TFT_drawPixel
	.section	.text.TFT_readPixel,"ax",@progbits
	.literal_position
	.literal .LC40, dispWin
	.align	4
	.global	TFT_readPixel
	.type	TFT_readPixel, @function
TFT_readPixel:
.LFB31:
	.loc 1 166 0
.LVL403:
	entry	sp, 48
.LCFI24:
	.loc 1 168 0
	l32r	a8, .LC40
	.loc 1 166 0
	sext	a10, a2, 15
	.loc 1 168 0
	l16ui	a2, a8, 0
.LVL404:
	.loc 1 166 0
	sext	a11, a3, 15
	.loc 1 168 0
	blt	a10, a2, .L331
	.loc 1 168 0 is_stmt 0 discriminator 2
	l16ui	a2, a8, 2
	blt	a11, a2, .L331
	.loc 1 168 0 discriminator 4
	l16ui	a2, a8, 4
	blt	a2, a10, .L331
	.loc 1 168 0 discriminator 6
	l16ui	a2, a8, 6
	bge	a2, a11, .L332
.L331:
	.loc 1 168 0 discriminator 7
	movi.n	a2, 0
	s8i	a2, sp, 0
	s8i	a2, sp, 1
	s8i	a2, sp, 2
	j	.L333
.L332:
	.loc 1 170 0 is_stmt 1
	call8	readPixel
.LVL405:
	extui	a2, a10, 8, 8
	s8i	a10, sp, 0
	extui	a10, a10, 16, 8
	s8i	a2, sp, 1
	s8i	a10, sp, 2
.L333:
	l8ui	a8, sp, 1
	l8ui	a9, sp, 0
	l8ui	a2, sp, 2
	slli	a8, a8, 8
	or	a8, a9, a8
	slli	a2, a2, 16
	.loc 1 171 0
	or	a2, a8, a2
	retw.n
.LFE31:
	.size	TFT_readPixel, .-TFT_readPixel
	.section	.text.TFT_drawFastVLine,"ax",@progbits
	.literal_position
	.literal .LC43, dispWin
	.align	4
	.global	TFT_drawFastVLine
	.type	TFT_drawFastVLine, @function
TFT_drawFastVLine:
.LFB34:
	.loc 1 206 0
.LVL406:
	entry	sp, 48
.LCFI25:
	.loc 1 207 0
	l32r	a8, .LC43
	mov.n	a13, a5
	l16ui	a11, a8, 2
	l16ui	a10, a8, 0
	add.n	a11, a3, a11
	add.n	a10, a2, a10
	sext	a12, a4, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawFastVLine
.LVL407:
	retw.n
.LFE34:
	.size	TFT_drawFastVLine, .-TFT_drawFastVLine
	.section	.text.TFT_drawFastHLine,"ax",@progbits
	.literal_position
	.literal .LC44, dispWin
	.align	4
	.global	TFT_drawFastHLine
	.type	TFT_drawFastHLine, @function
TFT_drawFastHLine:
.LFB35:
	.loc 1 212 0
.LVL408:
	entry	sp, 48
.LCFI26:
	.loc 1 213 0
	l32r	a8, .LC44
	mov.n	a13, a5
	l16ui	a11, a8, 2
	l16ui	a10, a8, 0
	add.n	a11, a3, a11
	add.n	a10, a2, a10
	sext	a12, a4, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawFastHLine
.LVL409:
	retw.n
.LFE35:
	.size	TFT_drawFastHLine, .-TFT_drawFastHLine
	.section	.text.TFT_drawLine,"ax",@progbits
	.literal_position
	.literal .LC45, dispWin
	.align	4
	.global	TFT_drawLine
	.type	TFT_drawLine, @function
TFT_drawLine:
.LFB37:
	.loc 1 282 0
.LVL410:
	entry	sp, 48
.LCFI27:
	.loc 1 283 0
	l32r	a8, .LC45
	mov.n	a14, a6
	l16ui	a10, a8, 0
	l16ui	a11, a8, 2
	add.n	a12, a4, a10
	add.n	a13, a5, a11
	add.n	a10, a2, a10
	add.n	a11, a3, a11
	sext	a13, a13, 15
	sext	a12, a12, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawLine
.LVL411:
	retw.n
.LFE37:
	.size	TFT_drawLine, .-TFT_drawLine
	.section	.text.TFT_fillRect,"ax",@progbits
	.literal_position
	.literal .LC46, dispWin
	.align	4
	.global	TFT_fillRect
	.type	TFT_fillRect, @function
TFT_fillRect:
.LFB39:
	.loc 1 313 0
.LVL412:
	entry	sp, 48
.LCFI28:
	.loc 1 314 0
	l32r	a8, .LC46
	mov.n	a14, a6
	l16ui	a11, a8, 2
	l16ui	a10, a8, 0
	add.n	a11, a3, a11
	add.n	a10, a2, a10
	sext	a13, a5, 15
	sext	a12, a4, 15
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_fillRect
.LVL413:
	retw.n
.LFE39:
	.size	TFT_fillRect, .-TFT_fillRect
	.section	.text.TFT_fillScreen,"ax",@progbits
	.literal_position
	.literal .LC47, _width
	.literal .LC48, _height
	.align	4
	.global	TFT_fillScreen
	.type	TFT_fillScreen, @function
TFT_fillScreen:
.LFB40:
	.loc 1 319 0
	entry	sp, 48
.LCFI29:
	.loc 1 320 0
	l32r	a8, .LC47
	movi.n	a11, 0
	l32i.n	a12, a8, 0
	l32r	a8, .LC48
	mov.n	a14, a2
	l32i.n	a13, a8, 0
	mov.n	a10, a11
	mull	a15, a12, a13
	addi.n	a13, a13, -1
	addi.n	a12, a12, -1
	call8	TFT_pushColorRep
.LVL414:
	retw.n
.LFE40:
	.size	TFT_fillScreen, .-TFT_fillScreen
	.section	.text.TFT_fillWindow,"ax",@progbits
	.literal_position
	.literal .LC49, dispWin
	.align	4
	.global	TFT_fillWindow
	.type	TFT_fillWindow, @function
TFT_fillWindow:
.LFB41:
	.loc 1 325 0
	entry	sp, 48
.LCFI30:
	.loc 1 326 0
	l32r	a8, .LC49
	mov.n	a14, a2
	.loc 1 327 0
	l16ui	a12, a8, 4
	l16ui	a10, a8, 0
	l16ui	a13, a8, 6
	l16ui	a11, a8, 2
	.loc 1 326 0
	sub	a15, a12, a10
	sub	a8, a13, a11
	addi.n	a8, a8, 1
	addi.n	a15, a15, 1
	mull	a15, a15, a8
	call8	TFT_pushColorRep
.LVL415:
	retw.n
.LFE41:
	.size	TFT_fillWindow, .-TFT_fillWindow
	.section	.text.TFT_drawRect,"ax",@progbits
	.literal_position
	.literal .LC50, dispWin
	.align	4
	.global	TFT_drawRect
	.type	TFT_drawRect, @function
TFT_drawRect:
.LFB43:
	.loc 1 346 0
.LVL416:
	entry	sp, 48
.LCFI31:
	.loc 1 347 0
	l32r	a8, .LC50
	mov.n	a14, a6
	l16ui	a11, a8, 2
	l16ui	a10, a8, 0
	add.n	a11, a3, a11
	add.n	a10, a2, a10
	extui	a13, a5, 0, 16
	extui	a12, a4, 0, 16
	extui	a11, a11, 0, 16
	extui	a10, a10, 0, 16
	call8	_drawRect
.LVL417:
	retw.n
.LFE43:
	.size	TFT_drawRect, .-TFT_drawRect
	.section	.text.TFT_drawRoundRect,"ax",@progbits
	.literal_position
	.literal .LC51, dispWin
	.align	4
	.global	TFT_drawRoundRect
	.type	TFT_drawRoundRect, @function
TFT_drawRoundRect:
.LFB46:
	.loc 1 423 0
.LVL418:
	entry	sp, 48
.LCFI32:
	.loc 1 423 0
	mov.n	a13, a7
	s32i.n	a7, sp, 0
	.loc 1 424 0
	l32r	a7, .LC51
	.loc 1 423 0
	extui	a6, a6, 0, 16
	.loc 1 424 0
	l16ui	a8, a7, 0
	.loc 1 428 0
	slli	a9, a6, 15
	.loc 1 424 0
	add.n	a2, a2, a8
.LVL419:
	.loc 1 428 0
	sub	a9, a9, a6
	.loc 1 423 0
	extui	a15, a4, 0, 16
	.loc 1 428 0
	slli	a9, a9, 1
	.loc 1 424 0
	extui	a4, a2, 0, 16
.LVL420:
	.loc 1 425 0
	l16ui	a2, a7, 2
.LVL421:
	.loc 1 428 0
	extui	a9, a9, 0, 16
	add.n	a14, a9, a15
	.loc 1 425 0
	add.n	a3, a3, a2
.LVL422:
	.loc 1 428 0
	add.n	a2, a4, a6
	sext	a2, a2, 15
	sext	a14, a14, 15
	.loc 1 425 0
	extui	a3, a3, 0, 16
.LVL423:
	.loc 1 428 0
	mov.n	a12, a14
	sext	a11, a3, 15
	mov.n	a10, a2
	.loc 1 423 0
	extui	a5, a5, 0, 16
	.loc 1 428 0
	s32i.n	a15, sp, 12
	s32i.n	a9, sp, 8
	s32i.n	a14, sp, 4
	.loc 1 429 0
	add.n	a7, a3, a5
	.loc 1 428 0
	call8	_drawFastHLine
.LVL424:
	.loc 1 429 0
	l32i.n	a14, sp, 4
	extui	a7, a7, 0, 16
	l32i.n	a13, sp, 0
	addi.n	a11, a7, -1
	mov.n	a12, a14
	mov.n	a10, a2
	sext	a11, a11, 15
	call8	_drawFastHLine
.LVL425:
	.loc 1 430 0
	l32i.n	a9, sp, 8
	add.n	a3, a3, a6
.LVL426:
	add.n	a5, a9, a5
.LVL427:
	sext	a3, a3, 15
	sext	a5, a5, 15
	l32i.n	a13, sp, 0
	mov.n	a12, a5
	mov.n	a11, a3
	sext	a10, a4, 15
	call8	_drawFastVLine
.LVL428:
	.loc 1 431 0
	l32i.n	a15, sp, 12
	l32i.n	a13, sp, 0
	add.n	a4, a4, a15
.LVL429:
	extui	a4, a4, 0, 16
	addi.n	a10, a4, -1
	mov.n	a12, a5
	mov.n	a11, a3
	sext	a10, a10, 15
	call8	_drawFastVLine
.LVL430:
	.loc 1 434 0
	sext	a5, a6, 15
	l32i.n	a14, sp, 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	movi.n	a13, 1
	call8	drawCircleHelper
.LVL431:
	movi.n	a8, -1
	xor	a8, a8, a6
	extui	a6, a8, 0, 16
.LVL432:
	.loc 1 435 0
	add.n	a4, a4, a6
	sext	a4, a4, 15
	l32i.n	a14, sp, 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a4
	movi.n	a13, 2
	call8	drawCircleHelper
.LVL433:
	.loc 1 436 0
	add.n	a6, a7, a6
	sext	a6, a6, 15
	l32i.n	a14, sp, 0
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a4
	movi.n	a13, 4
	call8	drawCircleHelper
.LVL434:
	.loc 1 437 0
	l32i.n	a14, sp, 0
	movi.n	a13, 8
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a2
	.loc 1 423 0
	.loc 1 437 0
	call8	drawCircleHelper
.LVL435:
	retw.n
.LFE46:
	.size	TFT_drawRoundRect, .-TFT_drawRoundRect
	.section	.text.TFT_fillRoundRect,"ax",@progbits
	.literal_position
	.literal .LC52, dispWin
	.align	4
	.global	TFT_fillRoundRect
	.type	TFT_fillRoundRect, @function
TFT_fillRoundRect:
.LFB47:
	.loc 1 443 0
.LVL436:
	entry	sp, 48
.LCFI33:
	.loc 1 443 0
	mov.n	a14, a7
	s32i.n	a7, sp, 0
	.loc 1 444 0
	l32r	a7, .LC52
	.loc 1 443 0
	extui	a6, a6, 0, 16
	.loc 1 444 0
	l16ui	a10, a7, 0
	.loc 1 448 0
	slli	a9, a6, 15
	.loc 1 444 0
	add.n	a2, a2, a10
.LVL437:
	extui	a8, a2, 0, 16
.LVL438:
	.loc 1 448 0
	sub	a9, a9, a6
	.loc 1 445 0
	l16ui	a2, a7, 2
.LVL439:
	.loc 1 448 0
	slli	a9, a9, 1
	extui	a9, a9, 0, 16
	.loc 1 443 0
	extui	a4, a4, 0, 16
	.loc 1 445 0
	add.n	a3, a3, a2
.LVL440:
	.loc 1 448 0
	add.n	a2, a8, a6
	add.n	a12, a9, a4
	sext	a2, a2, 15
	.loc 1 443 0
	extui	a5, a5, 0, 16
	.loc 1 445 0
	extui	a3, a3, 0, 16
.LVL441:
	.loc 1 448 0
	sext	a13, a5, 15
	sext	a11, a3, 15
	mov.n	a10, a2
	sext	a12, a12, 15
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 8
	call8	_fillRect
.LVL442:
	.loc 1 451 0
	l32i.n	a9, sp, 8
	l32i.n	a8, sp, 4
	addi.n	a10, a4, -1
	addi.n	a5, a5, -1
.LVL443:
	add.n	a5, a9, a5
.LVL444:
	add.n	a3, a3, a6
.LVL445:
	sub	a10, a10, a6
	sext	a3, a3, 15
	sext	a7, a6, 15
	sext	a5, a5, 15
	add.n	a10, a8, a10
	l32i.n	a15, sp, 0
	mov.n	a14, a5
	mov.n	a12, a7
	mov.n	a11, a3
	movi.n	a13, 1
	sext	a10, a10, 15
	call8	fillCircleHelper
.LVL446:
	.loc 1 452 0
	l32i.n	a15, sp, 0
	mov.n	a14, a5
	movi.n	a13, 2
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 443 0
	.loc 1 452 0
	call8	fillCircleHelper
.LVL447:
	retw.n
.LFE47:
	.size	TFT_fillRoundRect, .-TFT_fillRoundRect
	.global	__floatsidf
	.global	__adddf3
	.global	__fixdfsi
	.section	.text.TFT_drawLineByAngle,"ax",@progbits
	.literal_position
	.literal .LC53, dispWin
	.literal .LC54, _angleOffset
	.literal .LC55, 0xa252dd11, 0x3f91df46
	.align	4
	.global	TFT_drawLineByAngle
	.type	TFT_drawLineByAngle, @function
TFT_drawLineByAngle:
.LFB50:
	.loc 1 480 0
.LVL448:
	entry	sp, 112
.LCFI34:
	.loc 1 481 0
	l32r	a8, .LC53
	.loc 1 480 0
	s32i.n	a7, sp, 16
	extui	a7, a4, 0, 16
	.loc 1 481 0
	l16ui	a4, a8, 0
.LVL449:
	.loc 1 480 0
	.loc 1 481 0
	add.n	a2, a2, a4
.LVL450:
	.loc 1 482 0
	l16ui	a4, a8, 2
	.loc 1 480 0
	extui	a5, a5, 0, 16
.LVL451:
	.loc 1 482 0
	add.n	a3, a3, a4
.LVL452:
	sext	a2, a2, 15
	sext	a3, a3, 15
	sext	a4, a6, 15
	.loc 1 484 0
	bnez.n	a7, .L344
.LVL453:
	l8ui	a8, sp, 18
.LBB20:
.LBB21:
	.loc 1 464 0 discriminator 1
	mov.n	a10, a5
	s32i	a8, sp, 72
	call8	__floatsidf
.LVL454:
	float.s	f1, a4, 0
	l32r	a4, .LC54
	s32i.n	a10, sp, 24
	lsi	f0, a4, 0
	s32i.n	a11, sp, 28
	add.s	f0, f1, f0
	l8ui	a6, sp, 17
.LVL455:
	l8ui	a7, sp, 16
.LVL456:
	.loc 1 461 0 discriminator 1
	extui	a6, a6, 0, 8
	.loc 1 464 0 discriminator 1
	rfr	a10, f0
	call8	__extendsfdf2
.LVL457:
	l32r	a13, .LC55+4
	l32r	a12, .LC55
	.loc 1 461 0 discriminator 1
	extui	a7, a7, 0, 8
	.loc 1 464 0 discriminator 1
	call8	__muldf3
.LVL458:
	mov.n	a4, a10
	mov.n	a5, a11
.LVL459:
	call8	cos
.LVL460:
	mov.n	a14, a10
	mov.n	a15, a11
	.loc 1 465 0 discriminator 1
	mov.n	a10, a4
	mov.n	a11, a5
	s32i	a14, sp, 64
	s32i	a15, sp, 68
	call8	sin
.LVL461:
	mov.n	a12, a10
	.loc 1 461 0 discriminator 1
	mov.n	a10, a3
	s32i.n	a12, sp, 56
	s32i.n	a11, sp, 60
	call8	__floatsidf
.LVL462:
	mov.n	a4, a10
	mov.n	a5, a11
	l32i.n	a12, sp, 56
	l32i.n	a13, sp, 60
	l32i.n	a10, sp, 24
	l32i.n	a11, sp, 28
	slli	a6, a6, 8
	call8	__muldf3
.LVL463:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__adddf3
.LVL464:
	call8	__fixdfsi
.LVL465:
	sext	a9, a10, 15
	mov.n	a10, a2
	s32i.n	a9, sp, 56
	call8	__floatsidf
.LVL466:
	l32i	a14, sp, 64
	l32i	a15, sp, 68
	mov.n	a4, a10
	mov.n	a5, a11
	l32i.n	a10, sp, 24
	l32i.n	a11, sp, 28
	mov.n	a12, a14
	mov.n	a13, a15
	call8	__muldf3
.LVL467:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__adddf3
.LVL468:
	call8	__fixdfsi
.LVL469:
	l32i	a8, sp, 72
	l32i.n	a9, sp, 56
	extui	a14, a8, 0, 8
	or	a7, a6, a7
	slli	a14, a14, 16
	sext	a12, a10, 15
	or	a14, a14, a7
	mov.n	a13, a9
	mov.n	a11, a3
	mov.n	a10, a2
	j	.L346
.LVL470:
.L344:
	l16ui	a8, sp, 16
	l8ui	a6, sp, 18
.LVL471:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 472 0
	mov.n	a10, a2
	s16i	a8, sp, 0
	s8i	a6, sp, 2
	call8	__floatsidf
.LVL472:
	s32i.n	a10, sp, 24
	mov.n	a10, a7
	s32i.n	a11, sp, 28
	call8	__floatsidf
.LVL473:
	l32r	a2, .LC54
	float.s	f0, a4, 0
	lsi	f1, a2, 0
	s32i.n	a10, sp, 32
	add.s	f1, f0, f1
	s32i.n	a11, sp, 36
	rfr	a10, f1
	call8	__extendsfdf2
.LVL474:
	l32r	a12, .LC55
	l32r	a13, .LC55+4
	call8	__muldf3
.LVL475:
	s32i	a10, sp, 72
	s32i.n	a11, sp, 56
	call8	cos
.LVL476:
	s32i.n	a10, sp, 40
	.loc 1 473 0
	mov.n	a10, a3
	.loc 1 472 0
	s32i.n	a11, sp, 44
	.loc 1 473 0
	call8	__floatsidf
.LVL477:
	l32i	a8, sp, 72
	l32i.n	a9, sp, 56
	s32i.n	a10, sp, 48
	s32i.n	a11, sp, 52
	mov.n	a10, a8
	mov.n	a11, a9
	call8	sin
.LVL478:
	mov.n	a2, a10
	.loc 1 474 0
	add.n	a10, a5, a7
	.loc 1 473 0
	mov.n	a3, a11
	.loc 1 474 0
	call8	__floatsidf
.LVL479:
	mov.n	a4, a10
.LVL480:
	.loc 1 471 0
	mov.n	a12, a10
	mov.n	a13, a11
	.loc 1 474 0
	mov.n	a5, a11
.LVL481:
	.loc 1 471 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__muldf3
.LVL482:
	l32i.n	a12, sp, 48
	l32i.n	a13, sp, 52
	call8	__adddf3
.LVL483:
	call8	__fixdfsi
.LVL484:
	sext	a6, a10, 15
	l32i.n	a11, sp, 44
	l32i.n	a10, sp, 40
	mov.n	a12, a4
	mov.n	a13, a5
	call8	__muldf3
.LVL485:
	l32i.n	a12, sp, 24
	l32i.n	a13, sp, 28
	call8	__adddf3
.LVL486:
	call8	__fixdfsi
.LVL487:
	sext	a4, a10, 15
	l32i.n	a11, sp, 36
	l32i.n	a10, sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	call8	__muldf3
.LVL488:
	l32i.n	a12, sp, 48
	l32i.n	a13, sp, 52
	call8	__adddf3
.LVL489:
	call8	__fixdfsi
.LVL490:
	sext	a2, a10, 15
	l32i.n	a12, sp, 40
	l32i.n	a13, sp, 44
	l32i.n	a10, sp, 32
	l32i.n	a11, sp, 36
	call8	__muldf3
.LVL491:
	l32i.n	a12, sp, 24
	l32i.n	a13, sp, 28
	call8	__adddf3
.LVL492:
	call8	__fixdfsi
.LVL493:
	l32i.n	a14, sp, 0
	mov.n	a13, a6
	mov.n	a12, a4
	mov.n	a11, a2
	sext	a10, a10, 15
.LVL494:
.L346:
	call8	_drawLine
.LVL495:
	retw.n
.LBE23:
.LBE22:
.LFE50:
	.size	TFT_drawLineByAngle, .-TFT_drawLineByAngle
	.section	.text.TFT_drawTriangle,"ax",@progbits
	.literal_position
	.literal .LC58, dispWin
	.align	4
	.global	TFT_drawTriangle
	.type	TFT_drawTriangle, @function
TFT_drawTriangle:
.LFB52:
	.loc 1 500 0
.LVL496:
	entry	sp, 32
.LCFI35:
	.loc 1 501 0
	l32r	a8, .LC58
	.loc 1 508 0
	l32i.n	a14, sp, 32
	.loc 1 501 0
	l16ui	a10, a8, 0
.LVL497:
	.loc 1 502 0
	l16ui	a8, a8, 2
.LVL498:
	.loc 1 508 0
	add.n	a2, a2, a10
.LVL499:
	add.n	a3, a3, a8
.LVL500:
	add.n	a5, a5, a8
.LVL501:
	add.n	a4, a4, a10
.LVL502:
	sext	a2, a2, 15
	sext	a3, a3, 15
	sext	a4, a4, 15
	sext	a5, a5, 15
	.loc 1 506 0
	add.n	a7, a7, a8
.LVL503:
	.loc 1 508 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	.loc 1 505 0
	add.n	a6, a6, a10
.LVL504:
	.loc 1 508 0
	mov.n	a10, a2
.LVL505:
	call8	_drawLine
.LVL506:
	.loc 1 505 0
	extui	a6, a6, 0, 16
.LVL507:
	.loc 1 506 0
	extui	a7, a7, 0, 16
.LVL508:
	.loc 1 509 0
	sext	a6, a6, 15
.LVL509:
	sext	a7, a7, 15
.LVL510:
	l32i.n	a14, sp, 32
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a4
	call8	_drawLine
.LVL511:
	.loc 1 510 0
	l32i.n	a14, sp, 32
	mov.n	a13, a3
	mov.n	a12, a2
	mov.n	a11, a7
	mov.n	a10, a6
	.loc 1 500 0
	.loc 1 510 0
	call8	_drawLine
.LVL512:
	retw.n
.LFE52:
	.size	TFT_drawTriangle, .-TFT_drawTriangle
	.section	.text.TFT_fillTriangle,"ax",@progbits
	.literal_position
	.literal .LC59, dispWin
	.align	4
	.global	TFT_fillTriangle
	.type	TFT_fillTriangle, @function
TFT_fillTriangle:
.LFB54:
	.loc 1 596 0
.LVL513:
	entry	sp, 48
.LCFI36:
	.loc 1 598 0
	l32r	a8, .LC59
	.loc 1 596 0
	.loc 1 598 0
	l16ui	a10, a8, 0
	l16ui	a11, a8, 2
	.loc 1 597 0
	l16ui	a8, sp, 48
	add.n	a15, a7, a11
	s16i	a8, sp, 0
	l8ui	a8, sp, 50
	add.n	a14, a6, a10
	add.n	a13, a5, a11
	add.n	a12, a4, a10
	add.n	a11, a3, a11
	add.n	a10, a2, a10
	s8i	a8, sp, 2
	extui	a15, a15, 0, 16
	extui	a14, a14, 0, 16
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	extui	a10, a10, 0, 16
	call8	_fillTriangle
.LVL514:
	retw.n
.LFE54:
	.size	TFT_fillTriangle, .-TFT_fillTriangle
	.section	.text.TFT_drawCircle,"ax",@progbits
	.literal_position
	.literal .LC60, dispWin
	.align	4
	.global	TFT_drawCircle
	.type	TFT_drawCircle, @function
TFT_drawCircle:
.LFB55:
	.loc 1 606 0
.LVL515:
	entry	sp, 64
.LCFI37:
	.loc 1 607 0
	l32r	a6, .LC60
	.loc 1 606 0
	s32i.n	a5, sp, 0
	.loc 1 607 0
	l16ui	a5, a6, 0
	add.n	a2, a2, a5
.LVL516:
	.loc 1 608 0
	l16ui	a5, a6, 2
	.loc 1 611 0
	slli	a6, a4, 1
	.loc 1 608 0
	add.n	a3, a3, a5
.LVL517:
	.loc 1 611 0
	neg	a6, a6
	.loc 1 607 0
	extui	a2, a2, 0, 16
.LVL518:
	.loc 1 608 0
	extui	a3, a3, 0, 16
.LVL519:
	.loc 1 611 0
	s32i.n	a6, sp, 4
	.loc 1 615 0
	call8	disp_select
.LVL520:
	.loc 1 616 0
	extui	a6, a4, 0, 16
	sext	a7, a2, 15
	l32i.n	a12, sp, 0
	add.n	a11, a3, a6
	mov.n	a10, a7
	movi.n	a13, 0
	sext	a11, a11, 15
	call8	_drawPixel
.LVL521:
	.loc 1 617 0
	l32i.n	a12, sp, 0
	sub	a11, a3, a6
	mov.n	a10, a7
	movi.n	a13, 0
	sext	a11, a11, 15
	call8	_drawPixel
.LVL522:
	.loc 1 618 0
	sext	a7, a3, 15
	l32i.n	a12, sp, 0
	add.n	a10, a2, a6
	movi.n	a13, 0
	mov.n	a11, a7
	sext	a10, a10, 15
	call8	_drawPixel
.LVL523:
	.loc 1 619 0
	sub	a10, a2, a6
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	mov.n	a11, a7
	sext	a10, a10, 15
	.loc 1 609 0
	movi.n	a5, 1
	.loc 1 619 0
	call8	_drawPixel
.LVL524:
	.loc 1 609 0
	sub	a5, a5, a4
.LVL525:
	.loc 1 612 0
	movi.n	a8, 0
	.loc 1 620 0
	j	.L350
.LVL526:
.L352:
	.loc 1 621 0
	bltz	a5, .L351
	.loc 1 623 0
	l32i.n	a6, sp, 4
	.loc 1 622 0
	addi.n	a4, a4, -1
.LVL527:
	.loc 1 623 0
	addi.n	a6, a6, 2
	s32i.n	a6, sp, 4
.LVL528:
	.loc 1 624 0
	add.n	a5, a5, a6
.LVL529:
.L351:
	.loc 1 626 0
	addi.n	a8, a8, 1
.LVL530:
	extui	a7, a8, 0, 16
	.loc 1 629 0
	extui	a6, a4, 0, 16
	add.n	a15, a2, a7
	add.n	a14, a3, a6
	sext	a15, a15, 15
	sext	a14, a14, 15
	l32i.n	a12, sp, 0
	mov.n	a10, a15
	mov.n	a11, a14
	movi.n	a13, 0
	.loc 1 628 0
	addx2	a5, a8, a5
.LVL531:
	.loc 1 629 0
	s32i.n	a8, sp, 20
	s32i.n	a15, sp, 8
	s32i.n	a14, sp, 12
	call8	_drawPixel
.LVL532:
	.loc 1 630 0
	l32i.n	a14, sp, 12
	sub	a9, a2, a7
	sext	a9, a9, 15
	l32i.n	a12, sp, 0
	mov.n	a10, a9
	mov.n	a11, a14
	movi.n	a13, 0
	s32i.n	a9, sp, 16
	call8	_drawPixel
.LVL533:
	.loc 1 631 0
	l32i.n	a15, sp, 8
	sub	a14, a3, a6
	sext	a14, a14, 15
	l32i.n	a12, sp, 0
	mov.n	a10, a15
	mov.n	a11, a14
	movi.n	a13, 0
	s32i.n	a14, sp, 12
	call8	_drawPixel
.LVL534:
	.loc 1 632 0
	l32i.n	a14, sp, 12
	l32i.n	a9, sp, 16
	l32i.n	a12, sp, 0
	mov.n	a11, a14
	mov.n	a10, a9
	movi.n	a13, 0
	call8	_drawPixel
.LVL535:
	.loc 1 633 0
	add.n	a9, a2, a6
	add.n	a14, a3, a7
	sext	a9, a9, 15
	sext	a14, a14, 15
	l32i.n	a12, sp, 0
	mov.n	a10, a9
	mov.n	a11, a14
	movi.n	a13, 0
	s32i.n	a9, sp, 16
	s32i.n	a14, sp, 12
	call8	_drawPixel
.LVL536:
	.loc 1 634 0
	l32i.n	a14, sp, 12
	sub	a6, a2, a6
	sext	a6, a6, 15
	l32i.n	a12, sp, 0
	mov.n	a11, a14
	movi.n	a13, 0
	mov.n	a10, a6
	call8	_drawPixel
.LVL537:
	.loc 1 635 0
	l32i.n	a9, sp, 16
	sub	a7, a3, a7
	sext	a7, a7, 15
	l32i.n	a12, sp, 0
	mov.n	a10, a9
	movi.n	a13, 0
	mov.n	a11, a7
	call8	_drawPixel
.LVL538:
	.loc 1 636 0
	l32i.n	a12, sp, 0
	movi.n	a13, 0
	mov.n	a11, a7
	mov.n	a10, a6
	call8	_drawPixel
.LVL539:
	l32i.n	a8, sp, 20
	.loc 1 628 0
	addi.n	a5, a5, 1
.LVL540:
.L350:
	.loc 1 620 0
	blt	a8, a4, .L352
	.loc 1 638 0
	call8	disp_deselect
.LVL541:
	retw.n
.LFE55:
	.size	TFT_drawCircle, .-TFT_drawCircle
	.section	.text.TFT_fillCircle,"ax",@progbits
	.literal_position
	.literal .LC61, dispWin
	.align	4
	.global	TFT_fillCircle
	.type	TFT_fillCircle, @function
TFT_fillCircle:
.LFB56:
	.loc 1 643 0
.LVL542:
	entry	sp, 48
.LCFI38:
	.loc 1 644 0
	l32r	a9, .LC61
	.loc 1 647 0
	extui	a11, a4, 0, 16
	.loc 1 644 0
	l16ui	a8, a9, 0
	.loc 1 647 0
	slli	a12, a11, 1
	.loc 1 644 0
	add.n	a2, a2, a8
.LVL543:
	.loc 1 645 0
	l16ui	a8, a9, 2
	.loc 1 647 0
	sext	a2, a2, 15
.LVL544:
	.loc 1 645 0
	add.n	a3, a3, a8
.LVL545:
	extui	a3, a3, 0, 16
.LVL546:
	.loc 1 647 0
	sub	a11, a3, a11
	addi.n	a12, a12, 1
	mov.n	a13, a5
	mov.n	a10, a2
	sext	a12, a12, 15
	sext	a11, a11, 15
	.loc 1 643 0
	s32i.n	a5, sp, 0
	.loc 1 647 0
	call8	_drawFastVLine
.LVL547:
	.loc 1 648 0
	l32i.n	a15, sp, 0
	movi.n	a14, 0
	movi.n	a13, 3
	sext	a12, a4, 15
	sext	a11, a3, 15
	mov.n	a10, a2
	call8	fillCircleHelper
.LVL548:
	retw.n
.LFE56:
	.size	TFT_fillCircle, .-TFT_fillCircle
	.section	.text.TFT_drawEllipse,"ax",@progbits
	.literal_position
	.literal .LC62, dispWin
	.align	4
	.global	TFT_drawEllipse
	.type	TFT_drawEllipse, @function
TFT_drawEllipse:
.LFB58:
	.loc 1 668 0
.LVL549:
	entry	sp, 80
.LCFI39:
	.loc 1 668 0
	s32i.n	a6, sp, 0
	extui	a6, a7, 0, 8
	.loc 1 669 0
	l32r	a7, .LC62
.LVL550:
	.loc 1 668 0
	s32i.n	a6, sp, 28
	.loc 1 669 0
	l16ui	a6, a7, 0
.LVL551:
	.loc 1 668 0
	extui	a4, a4, 0, 16
	.loc 1 669 0
	add.n	a2, a2, a6
.LVL552:
	extui	a2, a2, 0, 16
	.loc 1 680 0
	mull	a9, a4, a4
	.loc 1 669 0
	s32i.n	a2, sp, 8
.LVL553:
	.loc 1 670 0
	l16ui	a2, a7, 2
	.loc 1 668 0
	extui	a5, a5, 0, 16
	.loc 1 670 0
	add.n	a3, a3, a2
.LVL554:
	.loc 1 681 0
	slli	a2, a9, 1
	s32i.n	a2, sp, 4
	.loc 1 691 0
	movi.n	a2, 1
	.loc 1 670 0
	extui	a3, a3, 0, 16
	.loc 1 691 0
	sub	a2, a2, a4
	.loc 1 670 0
	s32i.n	a3, sp, 12
.LVL555:
	.loc 1 692 0
	sub	a2, a2, a4
	.loc 1 684 0
	mull	a3, a5, a5
	.loc 1 693 0
	mull	a2, a5, a2
	.loc 1 685 0
	slli	a7, a3, 1
	.loc 1 684 0
	s32i.n	a3, sp, 24
	.loc 1 703 0
	movi.n	a3, 0
	.loc 1 680 0
	s32i.n	a9, sp, 20
	.loc 1 668 0
	.loc 1 679 0
	s32i.n	a4, sp, 16
.LVL556:
	.loc 1 694 0
	mull	a2, a5, a2
.LVL557:
	.loc 1 702 0
	mull	a9, a4, a7
.LVL558:
	.loc 1 699 0
	mov.n	a8, a3
	.loc 1 688 0
	mov.n	a6, a3
	.loc 1 705 0
	j	.L355
.LVL559:
.L357:
	.loc 1 706 0
	l32i.n	a15, sp, 28
	l32i.n	a14, sp, 0
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 8
	mov.n	a11, a6
	mov.n	a10, a4
.LVL560:
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	call8	_draw_ellipse_section
.LVL561:
	.loc 1 708 0
	l32i.n	a10, sp, 4
	.loc 1 709 0
	l32i.n	a8, sp, 40
	.loc 1 708 0
	add.n	a3, a3, a10
.LVL562:
	.loc 1 709 0
	l32i.n	a10, sp, 32
	.loc 1 707 0
	addi.n	a6, a6, 1
.LVL563:
	.loc 1 709 0
	add.n	a8, a8, a10
	.loc 1 711 0
	addx2	a10, a8, a2
	.loc 1 707 0
	extui	a6, a6, 0, 16
.LVL564:
	.loc 1 711 0
	l32i.n	a9, sp, 36
	blti	a10, 1, .L355
	.loc 1 712 0
	addi.n	a4, a4, -1
.LVL565:
	extui	a4, a4, 0, 16
.LVL566:
	.loc 1 713 0
	sub	a9, a9, a7
.LVL567:
	.loc 1 714 0
	sub	a8, a10, a8
.LVL568:
	.loc 1 715 0
	add.n	a2, a2, a7
.LVL569:
.L355:
	l32i.n	a10, sp, 20
	add.n	a10, a10, a3
	s32i.n	a10, sp, 32
.LVL570:
	.loc 1 705 0
	bge	a9, a3, .L357
.LVL571:
	.loc 1 726 0
	movi.n	a2, 1
	.loc 1 728 0
	l32i.n	a3, sp, 16
.LVL572:
	.loc 1 726 0
	sub	a2, a2, a5
.LVL573:
	.loc 1 727 0
	sub	a2, a2, a5
.LVL574:
	.loc 1 728 0
	mull	a2, a3, a2
.LVL575:
	.loc 1 736 0
	l32i.n	a6, sp, 4
	.loc 1 729 0
	mull	a2, a3, a2
.LVL576:
	.loc 1 733 0
	movi.n	a3, 0
	.loc 1 736 0
	mull	a8, a6, a5
.LVL577:
	.loc 1 719 0
	mov.n	a4, a3
	.loc 1 731 0
	mov.n	a6, a3
	.loc 1 738 0
	j	.L358
.LVL578:
.L360:
	.loc 1 739 0
	l32i.n	a15, sp, 28
	l32i.n	a14, sp, 0
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 8
	mov.n	a10, a4
	mov.n	a11, a5
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	call8	_draw_ellipse_section
.LVL579:
	.loc 1 742 0
	l32i.n	a9, sp, 36
	.loc 1 740 0
	addi.n	a4, a4, 1
.LVL580:
	.loc 1 742 0
	add.n	a6, a6, a9
.LVL581:
	.loc 1 744 0
	addx2	a9, a6, a2
	.loc 1 740 0
	extui	a4, a4, 0, 16
.LVL582:
	.loc 1 741 0
	add.n	a3, a3, a7
.LVL583:
	.loc 1 744 0
	l32i.n	a8, sp, 40
	blti	a9, 1, .L358
	.loc 1 746 0
	l32i.n	a10, sp, 4
	.loc 1 745 0
	addi.n	a5, a5, -1
.LVL584:
	extui	a5, a5, 0, 16
.LVL585:
	.loc 1 746 0
	sub	a8, a8, a10
.LVL586:
	.loc 1 747 0
	sub	a6, a9, a6
.LVL587:
	.loc 1 748 0
	add.n	a2, a2, a10
.LVL588:
.L358:
	l32i.n	a10, sp, 24
	add.n	a9, a10, a3
.LVL589:
	.loc 1 738 0
	bge	a8, a3, .L360
	.loc 1 751 0
	retw.n
.LFE58:
	.size	TFT_drawEllipse, .-TFT_drawEllipse
	.section	.text.TFT_fillEllipse,"ax",@progbits
	.literal_position
	.literal .LC63, dispWin
	.align	4
	.global	TFT_fillEllipse
	.type	TFT_fillEllipse, @function
TFT_fillEllipse:
.LFB60:
	.loc 1 768 0
.LVL590:
	entry	sp, 80
.LCFI40:
	.loc 1 768 0
	s32i.n	a6, sp, 0
	extui	a6, a7, 0, 8
	.loc 1 769 0
	l32r	a7, .LC63
.LVL591:
	.loc 1 768 0
	s32i.n	a6, sp, 28
	.loc 1 769 0
	l16ui	a6, a7, 0
.LVL592:
	.loc 1 768 0
	extui	a4, a4, 0, 16
	.loc 1 769 0
	add.n	a2, a2, a6
.LVL593:
	extui	a2, a2, 0, 16
	.loc 1 780 0
	mull	a9, a4, a4
	.loc 1 769 0
	s32i.n	a2, sp, 8
.LVL594:
	.loc 1 770 0
	l16ui	a2, a7, 2
	.loc 1 768 0
	extui	a5, a5, 0, 16
	.loc 1 770 0
	add.n	a3, a3, a2
.LVL595:
	.loc 1 781 0
	slli	a2, a9, 1
	s32i.n	a2, sp, 4
	.loc 1 791 0
	movi.n	a2, 1
	.loc 1 770 0
	extui	a3, a3, 0, 16
	.loc 1 791 0
	sub	a2, a2, a4
	.loc 1 770 0
	s32i.n	a3, sp, 12
.LVL596:
	.loc 1 792 0
	sub	a2, a2, a4
	.loc 1 784 0
	mull	a3, a5, a5
	.loc 1 793 0
	mull	a2, a5, a2
	.loc 1 785 0
	slli	a7, a3, 1
	.loc 1 784 0
	s32i.n	a3, sp, 24
	.loc 1 803 0
	movi.n	a3, 0
	.loc 1 780 0
	s32i.n	a9, sp, 20
	.loc 1 768 0
	.loc 1 779 0
	s32i.n	a4, sp, 16
.LVL597:
	.loc 1 794 0
	mull	a2, a5, a2
.LVL598:
	.loc 1 802 0
	mull	a9, a4, a7
.LVL599:
	.loc 1 799 0
	mov.n	a8, a3
	.loc 1 788 0
	mov.n	a6, a3
	.loc 1 805 0
	j	.L362
.LVL600:
.L364:
	.loc 1 806 0
	l32i.n	a15, sp, 28
	l32i.n	a14, sp, 0
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 8
	mov.n	a11, a6
	mov.n	a10, a4
.LVL601:
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	call8	_draw_filled_ellipse_section
.LVL602:
	.loc 1 808 0
	l32i.n	a10, sp, 4
	.loc 1 809 0
	l32i.n	a8, sp, 40
	.loc 1 808 0
	add.n	a3, a3, a10
.LVL603:
	.loc 1 809 0
	l32i.n	a10, sp, 32
	.loc 1 807 0
	addi.n	a6, a6, 1
.LVL604:
	.loc 1 809 0
	add.n	a8, a8, a10
	.loc 1 811 0
	addx2	a10, a8, a2
	.loc 1 807 0
	extui	a6, a6, 0, 16
.LVL605:
	.loc 1 811 0
	l32i.n	a9, sp, 36
	blti	a10, 1, .L362
	.loc 1 812 0
	addi.n	a4, a4, -1
.LVL606:
	extui	a4, a4, 0, 16
.LVL607:
	.loc 1 813 0
	sub	a9, a9, a7
.LVL608:
	.loc 1 814 0
	sub	a8, a10, a8
.LVL609:
	.loc 1 815 0
	add.n	a2, a2, a7
.LVL610:
.L362:
	l32i.n	a10, sp, 20
	add.n	a10, a10, a3
	s32i.n	a10, sp, 32
.LVL611:
	.loc 1 805 0
	bge	a9, a3, .L364
.LVL612:
	.loc 1 826 0
	movi.n	a2, 1
	.loc 1 828 0
	l32i.n	a3, sp, 16
.LVL613:
	.loc 1 826 0
	sub	a2, a2, a5
.LVL614:
	.loc 1 827 0
	sub	a2, a2, a5
.LVL615:
	.loc 1 828 0
	mull	a2, a3, a2
.LVL616:
	.loc 1 836 0
	l32i.n	a6, sp, 4
	.loc 1 829 0
	mull	a2, a3, a2
.LVL617:
	.loc 1 833 0
	movi.n	a3, 0
	.loc 1 836 0
	mull	a8, a6, a5
.LVL618:
	.loc 1 819 0
	mov.n	a4, a3
	.loc 1 831 0
	mov.n	a6, a3
	.loc 1 838 0
	j	.L365
.LVL619:
.L367:
	.loc 1 839 0
	l32i.n	a15, sp, 28
	l32i.n	a14, sp, 0
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 8
	mov.n	a10, a4
	mov.n	a11, a5
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 36
	call8	_draw_filled_ellipse_section
.LVL620:
	.loc 1 842 0
	l32i.n	a9, sp, 36
	.loc 1 840 0
	addi.n	a4, a4, 1
.LVL621:
	.loc 1 842 0
	add.n	a6, a6, a9
.LVL622:
	.loc 1 844 0
	addx2	a9, a6, a2
	.loc 1 840 0
	extui	a4, a4, 0, 16
.LVL623:
	.loc 1 841 0
	add.n	a3, a3, a7
.LVL624:
	.loc 1 844 0
	l32i.n	a8, sp, 40
	blti	a9, 1, .L365
	.loc 1 846 0
	l32i.n	a10, sp, 4
	.loc 1 845 0
	addi.n	a5, a5, -1
.LVL625:
	extui	a5, a5, 0, 16
.LVL626:
	.loc 1 846 0
	sub	a8, a8, a10
.LVL627:
	.loc 1 847 0
	sub	a6, a9, a6
.LVL628:
	.loc 1 848 0
	add.n	a2, a2, a10
.LVL629:
.L365:
	l32i.n	a10, sp, 24
	add.n	a9, a10, a3
.LVL630:
	.loc 1 838 0
	bge	a8, a3, .L367
	.loc 1 851 0
	retw.n
.LFE60:
	.size	TFT_fillEllipse, .-TFT_fillEllipse
	.section	.text.TFT_drawArc,"ax",@progbits
	.literal_position
	.literal .LC64, 0x43b40000
	.literal .LC65, dispWin
	.literal .LC66, _angleOffset
	.literal .LC67, 0x00000000
	.literal .LC68, 0xa252dd11, 0x3f91df46
	.align	4
	.global	TFT_drawArc
	.type	TFT_drawArc, @function
TFT_drawArc:
.LFB62:
	.loc 1 901 0
.LVL631:
	entry	sp, 96
.LCFI41:
	.loc 1 901 0
	wfr	f0, a7
	.loc 1 902 0
	l32r	a7, .LC65
.LVL632:
	.loc 1 901 0
	wfr	f1, a6
	extui	a6, a4, 0, 16
.LVL633:
	.loc 1 902 0
	l16ui	a4, a7, 0
.LVL634:
	.loc 1 908 0
	l32i	a11, sp, 96
	.loc 1 902 0
	add.n	a2, a2, a4
.LVL635:
	.loc 1 908 0
	l32i	a10, sp, 100
	.loc 1 903 0
	l16ui	a4, a7, 2
	.loc 1 901 0
	extui	a5, a5, 0, 16
	.loc 1 908 0
	ssi	f0, sp, 60
	.loc 1 903 0
	add.n	a3, a3, a4
.LVL636:
	.loc 1 908 0
	ssi	f1, sp, 56
	.loc 1 905 0
	movi.n	a4, 1
	.loc 1 908 0
	call8	TFT_compare_colors
.LVL637:
	.loc 1 910 0
	lsi	f1, sp, 56
.LVL638:
	.loc 1 905 0
	moveqz	a5, a4, a5
.LVL639:
	.loc 1 910 0
	l32r	a4, .LC64
	.loc 1 908 0
	mov.n	a7, a10
	.loc 1 910 0
	mov.n	a11, a4
	rfr	a10, f1
	call8	fmodf
.LVL640:
	.loc 1 911 0
	lsi	f0, sp, 60
	.loc 1 910 0
	wfr	f1, a10
	.loc 1 911 0
	mov.n	a11, a4
	rfr	a10, f0
	ssi	f1, sp, 56
	call8	fmodf
.LVL641:
	.loc 1 913 0
	l32r	a8, .LC66
	lsi	f1, sp, 56
	lsi	f0, a8, 0
	.loc 1 916 0
	l32r	a8, .LC67
	.loc 1 913 0
	add.s	f1, f1, f0
	.loc 1 901 0
	.loc 1 902 0
	extui	a2, a2, 0, 16
.LVL642:
	.loc 1 903 0
	extui	a3, a3, 0, 16
.LVL643:
	.loc 1 913 0
	ssi	f1, sp, 16
	.loc 1 914 0
	wfr	f1, a10
	add.s	f1, f1, f0
	.loc 1 916 0
	lsi	f0, sp, 16
	minu	a5, a5, a6
.LVL644:
	.loc 1 914 0
	ssi	f1, sp, 24
.LVL645:
	.loc 1 916 0
	wfr	f1, a8
.LVL646:
	olt.s	b0, f0, f1
	wfr	f0, a4
.LVL647:
	bf	b0, .L370
	.loc 1 916 0 is_stmt 0 discriminator 1
	lsi	f2, sp, 16
	add.s	f2, f2, f0
	ssi	f2, sp, 16
.LVL648:
.L370:
	.loc 1 917 0 is_stmt 1
	lsi	f2, sp, 24
	olt.s	b0, f2, f1
	bf	b0, .L372
	.loc 1 917 0 is_stmt 0 discriminator 1
	add.s	f2, f2, f0
	ssi	f2, sp, 24
.LVL649:
.L372:
	.loc 1 919 0 is_stmt 1
	lsi	f2, sp, 24
	l16ui	a4, sp, 100
	oeq.s	b0, f2, f1
	.loc 1 922 0
	l8ui	a8, sp, 102
	.loc 1 921 0
	lsi	f1, sp, 16
	.loc 1 919 0
	movt.s	f2, f0, b0
	ssi	f2, sp, 24
.LVL650:
	.loc 1 921 0
	olt.s	b0, f2, f1
	.loc 1 922 0
	s16i	a4, sp, 0
	s8i	a8, sp, 2
	.loc 1 921 0
	bf	b0, .L389
	.loc 1 922 0
	rfr	a15, f0
	rfr	a14, f1
	ssi	f0, sp, 60
	mov.n	a13, a5
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL651:
	.loc 1 923 0
	l8ui	a8, sp, 102
	l32r	a4, .LC67
	l16ui	a9, sp, 100
	l32i.n	a15, sp, 24
	s16i	a9, sp, 0
	s8i	a8, sp, 2
	mov.n	a14, a4
	mov.n	a13, a5
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL652:
	.loc 1 924 0
	lsi	f0, sp, 60
	beqz.n	a7, .L368
	.loc 1 925 0
	l16ui	a7, sp, 96
.LVL653:
	l32i.n	a14, sp, 16
	s16i	a7, sp, 0
	l8ui	a7, sp, 98
	rfr	a15, f0
	s8i	a7, sp, 2
	movi.n	a13, 1
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL654:
	.loc 1 926 0
	l16ui	a7, sp, 96
	l32i.n	a15, sp, 24
	s16i	a7, sp, 0
	l8ui	a7, sp, 98
	mov.n	a14, a4
	s8i	a7, sp, 2
	movi.n	a13, 1
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL655:
	.loc 1 927 0
	l16ui	a8, sp, 96
	lsi	f0, sp, 60
	s16i	a8, sp, 0
	sub	a7, a6, a5
	l8ui	a8, sp, 98
	extui	a7, a7, 0, 16
	l32i.n	a14, sp, 16
	s8i	a8, sp, 2
	rfr	a15, f0
	movi.n	a13, 1
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL656:
	.loc 1 928 0
	l16ui	a8, sp, 96
	l32i.n	a15, sp, 24
	s16i	a8, sp, 0
	l8ui	a8, sp, 98
	mov.n	a14, a4
	s8i	a8, sp, 2
	movi.n	a13, 1
	mov.n	a12, a7
	j	.L390
.LVL657:
.L389:
	.loc 1 931 0
	l32i.n	a15, sp, 24
	l32i.n	a14, sp, 16
	mov.n	a13, a5
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL658:
	.loc 1 932 0
	beqz.n	a7, .L368
	.loc 1 933 0
	l16ui	a4, sp, 96
	l32i.n	a15, sp, 24
	s16i	a4, sp, 0
	l8ui	a4, sp, 98
	l32i.n	a14, sp, 16
	s8i	a4, sp, 2
	movi.n	a13, 1
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL659:
	.loc 1 934 0
	l16ui	a4, sp, 96
	sub	a12, a6, a5
	s16i	a4, sp, 0
	l8ui	a4, sp, 98
	l32i.n	a15, sp, 24
	l32i.n	a14, sp, 16
	s8i	a4, sp, 2
	movi.n	a13, 1
	extui	a12, a12, 0, 16
.LVL660:
.L390:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_fillArcOffsetted
.LVL661:
	.loc 1 938 0
	mov.n	a10, a2
	call8	__floatsidf
.LVL662:
	s32i.n	a10, sp, 32
	sub	a10, a6, a5
	s32i.n	a11, sp, 36
	call8	__floatsidf
.LVL663:
	s32i.n	a10, sp, 40
	l32i.n	a10, sp, 16
	s32i.n	a11, sp, 44
	call8	__extendsfdf2
.LVL664:
	l32r	a12, .LC68
	l32r	a13, .LC68+4
	call8	__muldf3
.LVL665:
	mov.n	a4, a10
	mov.n	a5, a11
.LVL666:
	call8	cos
.LVL667:
	s32i.n	a10, sp, 48
	mov.n	a10, a3
	s32i.n	a11, sp, 52
	call8	__floatsidf
.LVL668:
	s32i.n	a10, sp, 16
.LVL669:
	s32i.n	a11, sp, 20
	mov.n	a10, a4
	mov.n	a11, a5
	call8	sin
.LVL670:
	mov.n	a4, a10
	.loc 1 939 0
	addi.n	a10, a6, -1
	.loc 1 938 0
	mov.n	a5, a11
	.loc 1 939 0
	call8	__floatsidf
.LVL671:
	mov.n	a2, a10
.LVL672:
	mov.n	a3, a11
.LVL673:
	.loc 1 938 0
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__muldf3
.LVL674:
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	call8	__adddf3
.LVL675:
	call8	__fixdfsi
.LVL676:
	sext	a7, a10, 15
	l32i.n	a11, sp, 52
	l32i.n	a10, sp, 48
	mov.n	a12, a2
	mov.n	a13, a3
	call8	__muldf3
.LVL677:
	l32i.n	a12, sp, 32
	l32i.n	a13, sp, 36
	call8	__adddf3
.LVL678:
	call8	__fixdfsi
.LVL679:
	sext	a6, a10, 15
.LVL680:
	l32i.n	a11, sp, 44
	l32i.n	a10, sp, 40
	mov.n	a12, a4
	mov.n	a13, a5
	call8	__muldf3
.LVL681:
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	call8	__adddf3
.LVL682:
	call8	__fixdfsi
.LVL683:
	sext	a4, a10, 15
	l32i.n	a12, sp, 48
	l32i.n	a13, sp, 52
	l32i.n	a10, sp, 40
	l32i.n	a11, sp, 44
	call8	__muldf3
.LVL684:
	l32i.n	a12, sp, 32
	l32i.n	a13, sp, 36
	call8	__adddf3
.LVL685:
	call8	__fixdfsi
.LVL686:
	l32i	a14, sp, 96
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	sext	a10, a10, 15
	call8	_drawLine
.LVL687:
	.loc 1 940 0
	l32i.n	a10, sp, 24
	call8	__extendsfdf2
.LVL688:
	l32r	a12, .LC68
	l32r	a13, .LC68+4
	call8	__muldf3
.LVL689:
	s32i.n	a10, sp, 56
	s32i.n	a11, sp, 60
	call8	cos
.LVL690:
	l32i.n	a8, sp, 56
	l32i.n	a9, sp, 60
	mov.n	a4, a10
	mov.n	a5, a11
	mov.n	a10, a8
	mov.n	a11, a9
	call8	sin
.LVL691:
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	s32i.n	a8, sp, 56
	s32i.n	a9, sp, 60
	call8	__muldf3
.LVL692:
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	call8	__adddf3
.LVL693:
	call8	__fixdfsi
.LVL694:
	sext	a6, a10, 15
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__muldf3
.LVL695:
	l32i.n	a12, sp, 32
	l32i.n	a13, sp, 36
	call8	__adddf3
.LVL696:
	call8	__fixdfsi
.LVL697:
	l32i.n	a8, sp, 56
	l32i.n	a9, sp, 60
	sext	a2, a10, 15
	l32i.n	a11, sp, 44
	l32i.n	a10, sp, 40
	mov.n	a12, a8
	mov.n	a13, a9
	call8	__muldf3
.LVL698:
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	call8	__adddf3
.LVL699:
	call8	__fixdfsi
.LVL700:
	sext	a3, a10, 15
	l32i.n	a11, sp, 44
	l32i.n	a10, sp, 40
	mov.n	a12, a4
	mov.n	a13, a5
	call8	__muldf3
.LVL701:
	l32i.n	a12, sp, 32
	l32i.n	a13, sp, 36
	call8	__adddf3
.LVL702:
	call8	__fixdfsi
.LVL703:
	l32i	a14, sp, 96
	mov.n	a13, a6
	mov.n	a12, a2
	mov.n	a11, a3
	sext	a10, a10, 15
	call8	_drawLine
.LVL704:
.L368:
	retw.n
.LFE62:
	.size	TFT_drawArc, .-TFT_drawArc
	.section	.text.TFT_drawPolygon,"ax",@progbits
	.literal_position
	.literal .LC71, dispWin
	.literal .LC72, _angleOffset
	.literal .LC73, 0xa252dd11, 0x3f91df46
	.literal .LC74, 0x54442eea, 0x400921fb
	.align	4
	.global	TFT_drawPolygon
	.type	TFT_drawPolygon, @function
TFT_drawPolygon:
.LFB63:
	.loc 1 947 0
.LVL705:
	entry	sp, 128
	.loc 1 947 0
	mov.n	a10, a7
	mov	a7, sp
.LCFI42:
	s32i	a5, a7, 72
	l8ui	a5, a7, 132
.LVL706:
	.loc 1 952 0
	mov.n	a11, a6
	.loc 1 947 0
	s32i	a5, a7, 76
	.loc 1 948 0
	l32r	a5, .LC71
	.loc 1 947 0
	s32i.n	a6, a7, 16
	.loc 1 948 0
	l16ui	a8, a5, 0
	.loc 1 947 0
	s32i.n	a10, a7, 20
	.loc 1 948 0
	add.n	a8, a8, a2
	.loc 1 949 0
	l16ui	a2, a5, 2
.LVL707:
	.loc 1 948 0
	s32i.n	a8, a7, 28
.LVL708:
	.loc 1 949 0
	add.n	a2, a2, a3
	s32i.n	a2, a7, 32
.LVL709:
	.loc 1 951 0
	l32i	a2, a7, 128
.LVL710:
	float.s	f0, a2, 0
	l32r	a2, .LC72
	lsi	f1, a2, 0
	sub.s	f0, f0, f1
	trunc.s	a8, f0, 0
.LVL711:
	s32i.n	a8, a7, 56
.LVL712:
	.loc 1 952 0
	call8	TFT_compare_colors
.LVL713:
	s32i.n	a10, a7, 44
.LVL714:
	.loc 1 954 0
	blti	a4, 3, .L405
	.loc 1 955 0
	movi.n	a2, 0x3c
	min	a4, a4, a2
.LVL715:
	j	.L393
.LVL716:
.L405:
	.loc 1 954 0
	movi.n	a4, 3
.LVL717:
.L393:
	.loc 1 957 0
	slli	a3, a4, 2
	addi	a2, a3, 18
	srli	a2, a2, 4
	slli	a2, a2, 4
	sub	a5, sp, a2
	movsp	sp, a5
	sub	a2, sp, a2
	addi	a6, sp, 16
.LVL718:
	movsp	sp, a2
	movi	a2, 0x168
	addi	a8, sp, 16
	quos	a2, a2, a4
	add.n	a3, a6, a3
	.loc 1 958 0
	l32i.n	a5, a7, 56
	s32i.n	a2, a7, 60
	s32i.n	a3, a7, 40
	.loc 1 957 0
	s32i.n	a8, a7, 24
.LVL719:
	.loc 1 958 0
	mov.n	a3, a8
	mov.n	a2, a6
.LVL720:
.L394:
.LBB24:
	.loc 1 961 0 discriminator 3
	l32i.n	a10, a7, 28
	call8	__floatsidf
.LVL721:
	float.s	f0, a5, 0
	s32i	a10, a7, 64
	s32i	a11, a7, 68
	rfr	a10, f0
	call8	__extendsfdf2
.LVL722:
	l32r	a12, .LC73
	l32r	a13, .LC73+4
	call8	__muldf3
.LVL723:
	l32r	a12, .LC74
	l32r	a13, .LC74+4
	call8	__adddf3
.LVL724:
	s32i	a10, a7, 88
	s32i	a11, a7, 92
	call8	sin
.LVL725:
	s32i.n	a10, a7, 48
	l32i	a10, a7, 72
	s32i.n	a11, a7, 52
	call8	__floatsidf
.LVL726:
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a12, a10
	mov.n	a13, a11
	l32i.n	a10, a7, 48
	l32i.n	a11, a7, 52
	s32i	a8, a7, 80
	s32i	a9, a7, 84
	call8	__muldf3
.LVL727:
	l32i	a12, a7, 64
	l32i	a13, a7, 68
	call8	__adddf3
.LVL728:
	call8	__fixdfsi
.LVL729:
	s32i.n	a10, a2, 0
	.loc 1 962 0 discriminator 3
	l32i.n	a10, a7, 32
	addi.n	a2, a2, 4
	call8	__floatsidf
.LVL730:
	l32i	a14, a7, 88
	l32i	a15, a7, 92
	s32i.n	a10, a7, 48
	s32i.n	a11, a7, 52
	mov.n	a10, a14
	mov.n	a11, a15
	call8	cos
.LVL731:
	l32i	a8, a7, 80
	l32i	a9, a7, 84
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a8
	mov.n	a11, a9
	call8	__muldf3
.LVL732:
	l32i.n	a12, a7, 48
	l32i.n	a13, a7, 52
	call8	__adddf3
.LVL733:
	call8	__fixdfsi
.LVL734:
	s32i.n	a10, a3, 0
	l32i.n	a8, a7, 60
	addi.n	a3, a3, 4
	add.n	a5, a5, a8
	.loc 1 960 0 discriminator 3
	l32i.n	a8, a7, 40
	bne	a2, a8, .L394
.LBE24:
	.loc 1 966 0
	l32i.n	a2, a7, 44
	beqz.n	a2, .L395
.LBB25:
	.loc 1 968 0
	l32i.n	a8, a7, 32
.LBE25:
	l32i.n	a3, a7, 24
	mov.n	a2, a6
.LBB26:
	extui	a5, a8, 0, 16
.LVL735:
.L397:
	l32i.n	a8, a7, 40
	addi.n	a2, a2, 4
	beq	a2, a8, .L396
	.loc 1 968 0 is_stmt 0 discriminator 1
	addi	a8, a2, -4
	l16ui	a12, a8, 0
	l16ui	a8, a7, 20
	l16ui	a15, a3, 4
	l16ui	a13, a3, 0
	l16ui	a14, a2, 0
	s16i	a8, sp, 0
	l8ui	a8, a7, 22
	mov.n	a11, a5
	s8i	a8, sp, 2
	l32i.n	a8, a7, 28
	addi.n	a3, a3, 4
	extui	a10, a8, 0, 16
	call8	_fillTriangle
.LVL736:
	j	.L397
.L396:
	.loc 1 969 0 is_stmt 1
	l32i.n	a3, a7, 24
	addi.n	a2, a4, -1
	slli	a2, a2, 2
	l16ui	a15, a3, 0
	add.n	a3, a3, a2
	add.n	a2, a6, a2
	l16ui	a12, a2, 0
	l16ui	a2, a7, 20
	l16ui	a14, a6, 0
	l16ui	a13, a3, 0
	s16i	a2, sp, 0
	l8ui	a2, a7, 22
	s8i	a2, sp, 2
	l32i.n	a5, a7, 32
	l32i.n	a8, a7, 28
	extui	a11, a5, 0, 16
	extui	a10, a8, 0, 16
	call8	_fillTriangle
.LVL737:
.L395:
.LBE26:
	.loc 1 973 0
	l32i	a8, a7, 76
	movi.n	a5, 0
	bne	a8, a5, .L398
.LBB27:
	retw.n
.LVL738:
.L403:
	.loc 1 975 0
	bnez.n	a5, .L408
.L401:
.LVL739:
	l32i.n	a3, a7, 24
	mov.n	a2, a6
	j	.L400
.LVL740:
.L408:
.LBB28:
	.loc 1 977 0
	l32i	a2, a7, 72
.LBE28:
	l32i.n	a14, a7, 24
.LBB29:
	sub	a2, a2, a5
.LBE29:
	l32i.n	a15, a7, 56
	mov.n	a4, a6
.LBB30:
	s32i.n	a2, a7, 44
.L399:
	.loc 1 977 0 is_stmt 0 discriminator 3
	float.s	f0, a15, 0
	s32i	a14, a7, 88
	s32i	a15, a7, 92
	rfr	a10, f0
	call8	__extendsfdf2
.LVL741:
	l32r	a12, .LC73
	l32r	a13, .LC73+4
	call8	__muldf3
.LVL742:
	l32r	a12, .LC74
	l32r	a13, .LC74+4
	call8	__adddf3
.LVL743:
	s32i	a10, a7, 80
	s32i	a11, a7, 84
	call8	sin
.LVL744:
	s32i.n	a10, a7, 32
	l32i.n	a10, a7, 44
	s32i.n	a11, a7, 36
	call8	__floatsidf
.LVL745:
	mov.n	a2, a10
	mov.n	a3, a11
	mov.n	a12, a10
	mov.n	a13, a11
	l32i.n	a10, a7, 32
	l32i.n	a11, a7, 36
	call8	__muldf3
.LVL746:
	l32i	a12, a7, 64
	l32i	a13, a7, 68
	call8	__adddf3
.LVL747:
	call8	__fixdfsi
.LVL748:
	.loc 1 978 0 is_stmt 1 discriminator 3
	l32i	a8, a7, 80
	l32i	a9, a7, 84
	.loc 1 977 0 discriminator 3
	s32i.n	a10, a4, 0
	.loc 1 978 0 discriminator 3
	mov.n	a11, a9
	mov.n	a10, a8
	call8	cos
.LVL749:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__muldf3
.LVL750:
	l32i.n	a12, a7, 48
	l32i.n	a13, a7, 52
	addi.n	a4, a4, 4
	call8	__adddf3
.LVL751:
	call8	__fixdfsi
.LVL752:
	l32i	a14, a7, 88
	l32i	a15, a7, 92
	l32i.n	a2, a7, 60
	.loc 1 976 0 discriminator 3
	l32i.n	a3, a7, 40
	.loc 1 978 0 discriminator 3
	s32i.n	a10, a14, 0
.LVL753:
	add.n	a15, a15, a2
	addi.n	a14, a14, 4
	.loc 1 976 0 discriminator 3
	bne	a4, a3, .L399
	j	.L401
.L400:
.LBE30:
.LBB31:
	.loc 1 982 0
	l32i.n	a4, a7, 40
	addi.n	a2, a2, 4
	beq	a2, a4, .L402
	.loc 1 983 0
	addi	a4, a2, -4
	l16si	a13, a3, 4
	l16si	a11, a3, 0
	l32i.n	a14, a7, 16
	l16si	a12, a2, 0
	l16si	a10, a4, 0
	addi.n	a3, a3, 4
	call8	_drawLine
.LVL754:
	j	.L400
.L402:
	.loc 1 985 0
	l32i.n	a8, a7, 24
	l32i.n	a2, a7, 28
	l32i.n	a14, a7, 16
	add.n	a3, a8, a2
	add.n	a2, a6, a2
	l16si	a13, a8, 0
	l16si	a12, a6, 0
	l16si	a11, a3, 0
	l16si	a10, a2, 0
.LBE31:
	.loc 1 974 0
	addi.n	a5, a5, 1
.LVL755:
.LBB32:
	.loc 1 985 0
	call8	_drawLine
.LVL756:
	j	.L414
.LVL757:
.L398:
	addi.n	a4, a4, -1
.LVL758:
	.loc 1 985 0 is_stmt 0 discriminator 1
	slli	a4, a4, 2
.LVL759:
	s32i.n	a4, a7, 28
.L414:
.LVL760:
.LBE32:
	.loc 1 974 0 is_stmt 1 discriminator 1
	l32i	a4, a7, 76
	blt	a5, a4, .L403
	retw.n
.LBE27:
.LFE63:
	.size	TFT_drawPolygon, .-TFT_drawPolygon
	.section	.rodata.str1.1
.LC75:
	.string	".c"
.LC77:
	.string	"not a .c file"
.LC79:
	.string	"fon"
.LC81:
	.string	"Error opening source file '%s'"
.LC83:
	.string	"rb"
.LC85:
	.string	"wb"
.LC87:
	.string	"error opening destination file"
.LC89:
	.string	"source file size error"
.LC91:
	.string	"memory allocation error"
.LC93:
	.string	"error reading from source file"
.LC95:
	.string	"};"
.LC97:
	.string	"wrong source file format"
.LC99:
	.string	"0x"
.LC101:
	.string	"0X"
.LC105:
	.string	"Error compiling file!"
.LC107:
	.string	"File compiled successfully."
.LC109:
	.string	"error writing to destination file"
.LC111:
	.string	"%s\r\n"
	.section	.text.compile_font_file,"ax",@progbits
	.literal_position
	.literal .LC76, .LC75
	.literal .LC78, .LC77
	.literal .LC80, .LC79
	.literal .LC82, .LC81
	.literal .LC84, .LC83
	.literal .LC86, .LC85
	.literal .LC88, .LC87
	.literal .LC90, .LC89
	.literal .LC92, .LC91
	.literal .LC94, .LC93
	.literal .LC96, .LC95
	.literal .LC98, .LC97
	.literal .LC100, .LC99
	.literal .LC102, .LC101
	.literal .LC103, .LC28
	.literal .LC104, userfont
	.literal .LC106, .LC105
	.literal .LC108, .LC107
	.literal .LC110, .LC109
	.literal .LC112, .LC111
	.align	4
	.global	compile_font_file
	.type	compile_font_file, @function
compile_font_file:
.LFB65:
	.loc 1 1172 0
.LVL761:
	entry	sp, 400
.LCFI43:
.LVL762:
	.loc 1 1172 0
	extui	a3, a3, 0, 8
	s32i	a3, sp, 348
	.loc 1 1174 0
	movi	a3, 0x80
.LVL763:
	mov.n	a12, a3
	movi.n	a11, 0
	add.n	a10, a3, sp
	call8	memset
.LVL764:
	.loc 1 1175 0
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL765:
	.loc 1 1182 0
	mov.n	a10, a2
	call8	strlen
.LVL766:
	.loc 1 1185 0
	addi	a3, a10, -3
	movi	a4, 0x7a
	bltu	a4, a3, .L416
	.loc 1 1185 0 is_stmt 0 discriminator 1
	addi	a10, a10, -2
.LVL767:
	l32r	a11, .LC76
	add.n	a10, a2, a10
.LVL768:
	call8	strcmp
.LVL769:
	beqz.n	a10, .L417
.L416:
	.loc 1 1186 0 is_stmt 1
	l32r	a11, .LC78
	movi	a10, 0x80
	add.n	a10, sp, a10
	call8	strcpy
.LVL770:
	.loc 1 1187 0
	movi.n	a2, 1
.LVL771:
	.loc 1 1188 0
	j	.L447
.LVL772:
.L417:
	.loc 1 1191 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	strcpy
.LVL773:
	.loc 1 1192 0
	mov.n	a10, sp
	call8	strlen
.LVL774:
	l32r	a3, .LC80
.LVL775:
	addi.n	a10, a10, -1
	mov.n	a11, a3
	add.n	a10, sp, a10
	call8	strcpy
.LVL776:
	.loc 1 1195 0
	addmi	a7, sp, 0x100
	mov.n	a11, a7
	mov.n	a10, a2
	call8	stat
.LVL777:
	mov.n	a6, a10
	beqz.n	a10, .L419
	.loc 1 1196 0
	l32r	a11, .LC82
	movi	a10, 0x80
	mov.n	a12, a2
	add.n	a10, a10, sp
	call8	sprintf
.LVL778:
	.loc 1 1197 0
	movi.n	a2, 2
.LVL779:
	.loc 1 1198 0
	j	.L447
.LVL780:
.L419:
	.loc 1 1201 0
	l32r	a11, .LC84
	mov.n	a10, a2
	call8	fopen
.LVL781:
	mov.n	a4, a10
.LVL782:
	.loc 1 1202 0
	bnez.n	a10, .L420
	.loc 1 1203 0
	l32r	a11, .LC82
	movi	a10, 0x80
	mov.n	a12, a2
	add.n	a10, a10, sp
	call8	sprintf
.LVL783:
	.loc 1 1204 0
	movi.n	a2, 3
.LVL784:
	.loc 1 1205 0
	j	.L447
.LVL785:
.L420:
	.loc 1 1209 0
	l32r	a11, .LC86
	mov.n	a10, sp
	call8	fopen
.LVL786:
	mov.n	a3, a10
.LVL787:
	.loc 1 1210 0
	bnez.n	a10, .L421
	.loc 1 1211 0
	l32r	a11, .LC88
	movi	a10, 0x80
	add.n	a10, a10, sp
	call8	strcpy
.LVL788:
	.loc 1 1212 0
	movi.n	a2, 4
.LVL789:
	.loc 1 1213 0
	j	.L422
.LVL790:
.L421:
	.loc 1 1217 0
	l32i.n	a5, a7, 16
.LVL791:
	.loc 1 1218 0
	bgei	a5, 1, .L423
	.loc 1 1219 0
	l32r	a11, .LC90
	movi	a10, 0x80
	add.n	a10, a10, sp
	call8	strcpy
.LVL792:
	.loc 1 1220 0
	movi.n	a2, 5
.LVL793:
	.loc 1 1221 0
	j	.L422
.LVL794:
.L423:
	.loc 1 1224 0
	addi.n	a10, a5, 4
	call8	malloc
.LVL795:
	s32i	a10, sp, 336
.LVL796:
	.loc 1 1225 0
	bnez.n	a10, .L424
	.loc 1 1226 0
	l32r	a11, .LC92
	movi	a10, 0x80
.LVL797:
	add.n	a10, a10, sp
	call8	strcpy
.LVL798:
	.loc 1 1227 0
	movi.n	a2, 6
.LVL799:
	.loc 1 1228 0
	j	.L422
.LVL800:
.L424:
	.loc 1 1232 0
	l32i	a10, sp, 336
.LVL801:
	mov.n	a13, a4
	mov.n	a12, a5
	movi.n	a11, 1
	call8	fread
.LVL802:
	mov.n	a9, a10
.LVL803:
	.loc 1 1233 0
	mov.n	a10, a4
	s32i	a9, sp, 352
	call8	fclose
.LVL804:
	.loc 1 1236 0
	l32i	a9, sp, 352
	beq	a5, a9, .L425
	.loc 1 1237 0
	l32r	a11, .LC94
	movi	a10, 0x80
	add.n	a10, a10, sp
	call8	strcpy
.LVL805:
	.loc 1 1238 0
	movi.n	a2, 7
.LVL806:
	.loc 1 1239 0
	j	.L426
.LVL807:
.L425:
	.loc 1 1242 0
	l32i	a4, sp, 336
	.loc 1 1244 0
	movi	a11, 0x7b
	.loc 1 1242 0
	add.n	a8, a4, a5
	s8i	a6, a8, 0
	.loc 1 1244 0
	mov.n	a10, a4
	call8	strchr
.LVL808:
	.loc 1 1245 0
	l32r	a11, .LC96
	.loc 1 1244 0
	mov.n	a5, a10
.LVL809:
	.loc 1 1245 0
	call8	strstr
.LVL810:
	s32i	a10, sp, 340
.LVL811:
	.loc 1 1247 0
	beqz.n	a10, .L427
	.loc 1 1247 0 discriminator 1
	sub	a4, a10, a5
	movi.n	a9, 0x15
	blt	a9, a4, .L428
.L427:
	.loc 1 1248 0
	l32r	a11, .LC98
	movi	a10, 0x80
.LVL812:
	add.n	a10, sp, a10
	call8	strcpy
.LVL813:
	.loc 1 1249 0
	movi.n	a2, 8
.LVL814:
	.loc 1 1250 0
	j	.L426
.LVL815:
.L428:
	.loc 1 1254 0
	l32i	a6, sp, 340
	movi.n	a4, 0
	.loc 1 1258 0
	l32r	a11, .LC100
	.loc 1 1254 0
	s8i	a4, a6, 0
	.loc 1 1258 0
	addi.n	a10, a5, 1
.LVL816:
	.loc 1 1255 0
	movi.n	a4, 0
	s32i.n	a4, a7, 60
	s8i	a4, a7, 64
.LVL817:
	.loc 1 1263 0
	mov.n	a5, a4
	.loc 1 1258 0
	call8	strstr
.LVL818:
	.loc 1 1256 0
	s32i	a4, sp, 344
	.loc 1 1283 0
	movi	a4, 0x13c
	.loc 1 1258 0
	mov.n	a6, a10
.LVL819:
	.loc 1 1283 0
	add.n	a4, sp, a4
	.loc 1 1265 0
	j	.L429
.LVL820:
.L439:
	.loc 1 1266 0
	movi.n	a11, 0xa
	mov.n	a10, a6
	call8	strchr
.LVL821:
	.loc 1 1270 0
	movi.n	a8, 0
	s32i	a8, sp, 344
.LVL822:
	addi.n	a7, a10, 1
.LVL823:
	.loc 1 1267 0
	bne	a10, a8, .L431
	.loc 1 1268 0
	l32i	a8, sp, 340
	addi.n	a7, a8, -1
.LVL824:
	.loc 1 1269 0
	movi.n	a8, 1
	s32i	a8, sp, 344
	j	.L431
.LVL825:
.L438:
	.loc 1 1273 0
	l32r	a11, .LC100
	mov.n	a10, a6
	call8	strstr
.LVL826:
	mov.n	a9, a10
.LVL827:
	.loc 1 1274 0
	beqz.n	a10, .L433
	.loc 1 1274 0 discriminator 2
	addi.n	a10, a6, 4
	bgeu	a7, a10, .L434
.L433:
	.loc 1 1274 0 is_stmt 0 discriminator 3
	l32r	a11, .LC102
	mov.n	a10, a6
	call8	strstr
.LVL828:
	mov.n	a9, a10
.LVL829:
	.loc 1 1275 0 is_stmt 1 discriminator 3
	beqz.n	a10, .L435
.L434:
.LVL830:
	.loc 1 1275 0 discriminator 1
	addi.n	a6, a9, 4
.LVL831:
	bltu	a7, a6, .L435
.LVL832:
	.loc 1 1277 0
	movi	a10, 0x7f
	bge	a10, a5, .L436
	.loc 1 1279 0
	mov.n	a13, a3
	movi	a12, 0x80
	movi.n	a11, 1
	mov.n	a10, sp
	s32i	a9, sp, 352
	call8	fwrite
.LVL833:
	l32i	a9, sp, 352
	bnei	a10, 128, .L437
	.loc 1 1280 0
	movi.n	a5, 0
.LVL834:
.L436:
	.loc 1 1283 0
	l8ui	a10, a9, 0
	l8ui	a11, a9, 1
	s8i	a10, a4, 0
	l8ui	a10, a9, 2
	l8ui	a9, a9, 3
	s8i	a11, a4, 1
	s8i	a10, a4, 2
	s8i	a9, a4, 3
	.loc 1 1284 0
	movi.n	a10, 0
	addmi	a9, sp, 0x100
	.loc 1 1285 0
	movi.n	a12, 0
	.loc 1 1284 0
	s8i	a10, a9, 64
	.loc 1 1285 0
	mov.n	a11, a12
	addi.n	a9, a5, 1
.LVL835:
	mov.n	a10, a4
	s32i	a9, sp, 352
	call8	strtol
.LVL836:
	add.n	a8, sp, a5
	s8i	a10, a8, 0
.LVL837:
	l32i	a9, sp, 352
	mov.n	a5, a9
.LVL838:
.L431:
	.loc 1 1272 0
	bltu	a6, a7, .L438
.LVL839:
.L435:
	.loc 1 1285 0
	mov.n	a6, a7
.LVL840:
.L429:
	.loc 1 1265 0
	movi.n	a8, 1
	movi.n	a9, 0
	movnez	a9, a8, a6
	l32i	a8, sp, 340
	movi.n	a7, 1
	bltu	a6, a8, .L441
	movi.n	a7, 0
.L441:
	bnone	a9, a7, .L450
	l32i	a8, sp, 344
	bnei	a8, 1, .L439
.L450:
	.loc 1 1292 0
	bnez.n	a5, .L442
.L444:
	.loc 1 1298 0
	l32r	a11, .LC103
	mov.n	a10, sp
	call8	strcpy
.LVL841:
	.loc 1 1299 0
	mov.n	a13, a3
	movi.n	a12, 8
	movi.n	a11, 1
	mov.n	a10, sp
	call8	fwrite
.LVL842:
	bnei	a10, 8, .L437
	j	.L470
.L442:
	.loc 1 1294 0
	mov.n	a13, a3
	mov.n	a12, a5
	movi.n	a11, 1
	mov.n	a10, sp
	call8	fwrite
.LVL843:
	bne	a5, a10, .L437
	j	.L444
.L470:
	.loc 1 1301 0
	mov.n	a10, a3
	call8	fclose
.LVL844:
	.loc 1 1305 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	strcpy
.LVL845:
	.loc 1 1306 0
	mov.n	a10, sp
	call8	strlen
.LVL846:
	l32r	a11, .LC80
	addi.n	a10, a10, -1
	add.n	a10, sp, a10
	call8	strcpy
.LVL847:
	.loc 1 1308 0
	l32r	a3, .LC104
	.loc 1 1309 0
	movi.n	a2, 0
.LVL848:
	.loc 1 1310 0
	movi.n	a11, 1
	mov.n	a10, sp
	.loc 1 1308 0
	l32i.n	a4, a3, 0
.LVL849:
	.loc 1 1309 0
	s32i.n	a2, a3, 0
	.loc 1 1310 0
	call8	load_file_font
.LVL850:
	mov.n	a2, a10
	movi	a6, 0x80
.LVL851:
	beqz.n	a10, .L445
	.loc 1 1311 0
	l32r	a11, .LC106
	add.n	a10, sp, a6
	call8	strcpy
.LVL852:
	.loc 1 1312 0
	movi.n	a2, 0xa
	j	.L446
.LVL853:
.L445:
	.loc 1 1314 0
	l32i.n	a10, a3, 0
	call8	free
.LVL854:
	.loc 1 1315 0
	l32r	a11, .LC108
	add.n	a10, sp, a6
	call8	strcpy
.LVL855:
.L446:
	.loc 1 1317 0
	s32i.n	a4, a3, 0
	.loc 1 1302 0
	movi.n	a3, 0
	.loc 1 1319 0
	j	.L426
.LVL856:
.L437:
.LDL1:
	.loc 1 1322 0
	l32r	a11, .LC110
	movi	a10, 0x80
	add.n	a10, sp, a10
	call8	strcpy
.LVL857:
	.loc 1 1323 0
	movi.n	a2, 9
.LVL858:
	j	.L426
.LVL859:
.L449:
	.loc 1 1328 0
	beqz.n	a3, .L447
	.loc 1 1328 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	fclose
.LVL860:
.L447:
	.loc 1 1330 0 is_stmt 1
	l32i	a3, sp, 348
	beqz.n	a3, .L457
	.loc 1 1330 0 is_stmt 0 discriminator 1
	movi	a11, 0x80
	l32r	a10, .LC112
	add.n	a11, sp, a11
	call8	printf
.LVL861:
	.loc 1 1332 0 is_stmt 1 discriminator 1
	retw.n
.LVL862:
.L426:
	.loc 1 1326 0
	l32i	a10, sp, 336
	call8	free
.LVL863:
	j	.L449
.LVL864:
.L422:
	.loc 1 1327 0
	mov.n	a10, a4
	call8	fclose
.LVL865:
	j	.L449
.LVL866:
.L457:
	.loc 1 1333 0
	retw.n
.LFE65:
	.size	compile_font_file, .-compile_font_file
	.section	.text.getFontCharacters,"ax",@progbits
	.literal_position
	.literal .LC113, cfont
	.align	4
	.global	getFontCharacters
	.type	getFontCharacters, @function
getFontCharacters:
.LFB66:
	.loc 1 1355 0
.LVL867:
	entry	sp, 32
.LCFI44:
	.loc 1 1356 0
	l32r	a10, .LC113
	l8ui	a3, a10, 13
	bnei	a3, 2, .L472
	mov.n	a9, a2
	movi.n	a3, 0x30
.LBB33:
	.loc 1 1358 0
	movi.n	a8, 0xb
	loop	a8, .L473_LEND
.L473:
.LVL868:
	.loc 1 1359 0 discriminator 3
	s8i	a3, a9, 0
.LVL869:
	addi.n	a3, a3, 1
.LVL870:
	extui	a3, a3, 0, 8
.LVL871:
	addi.n	a9, a9, 1
	.loc 1 1358 0 discriminator 3
	.L473_LEND:
.LBE33:
	.loc 1 1361 0
	movi.n	a3, 0x2e
	s8i	a3, a2, 11
	.loc 1 1362 0
	movi.n	a3, 0x2d
	s8i	a3, a2, 12
	.loc 1 1363 0
	movi.n	a3, 0x2f
	s8i	a3, a2, 13
	.loc 1 1364 0
	movi.n	a3, 0
	s8i	a3, a2, 14
	.loc 1 1366 0
	retw.n
.L472:
	.loc 1 1369 0
	l8ui	a12, a10, 4
	movi.n	a8, 0
	bnez.n	a12, .L476
	j	.L475
.LVL872:
.L477:
.LBB34:
	.loc 1 1371 0 discriminator 3
	l8ui	a3, a10, 6
	add.n	a9, a2, a8
	add.n	a3, a8, a3
	.loc 1 1370 0 discriminator 3
	addi.n	a8, a8, 1
.LVL873:
	.loc 1 1371 0 discriminator 3
	s8i	a3, a9, 0
	.loc 1 1370 0 discriminator 3
	extui	a8, a8, 0, 8
.LVL874:
.L476:
	.loc 1 1370 0 is_stmt 0 discriminator 1
	l16ui	a3, a10, 8
	bltu	a8, a3, .L477
.LBE34:
	.loc 1 1373 0 is_stmt 1
	add.n	a2, a2, a3
.LVL875:
	movi.n	a3, 0
	s8i	a3, a2, 0
	.loc 1 1374 0
	retw.n
.LVL876:
.L475:
	.loc 1 1381 0
	l32i.n	a3, a10, 0
	movi.n	a11, 5
	l8ui	a14, a3, 4
.LVL877:
	.loc 1 1382 0
	movi	a15, 0xff
	j	.L478
.LVL878:
.L481:
	.loc 1 1383 0
	l16ui	a8, a10, 8
	.loc 1 1385 0
	l32i.n	a13, a10, 0
	addi.n	a9, a11, 1
	.loc 1 1383 0
	addi.n	a8, a8, 1
	.loc 1 1385 0
	extui	a9, a9, 0, 16
	.loc 1 1383 0
	s16i	a8, a10, 8
.LVL879:
	.loc 1 1385 0
	add.n	a9, a13, a9
	.loc 1 1386 0
	addi.n	a8, a11, 2
	extui	a8, a8, 0, 16
	.loc 1 1385 0
	l8ui	a9, a9, 0
.LVL880:
	.loc 1 1386 0
	add.n	a8, a13, a8
	l8ui	a13, a8, 0
.LVL881:
	.loc 1 1388 0
	addi.n	a8, a11, 5
.LVL882:
	.loc 1 1389 0
	beqz.n	a9, .L483
.L479:
	.loc 1 1391 0
	mul16u	a13, a9, a13
	addi.n	a8, a11, 6
	addi.n	a9, a13, -1
	addi.n	a13, a13, 6
	movltz	a9, a13, a9
	srai	a9, a9, 3
	add.n	a8, a8, a9
.L483:
	.loc 1 1393 0
	s8i	a14, a3, 0
.LVL883:
	.loc 1 1394 0
	l32i.n	a3, a10, 0
	.loc 1 1391 0
	extui	a8, a8, 0, 16
.LVL884:
	.loc 1 1394 0
	addi.n	a11, a8, 1
	add.n	a8, a3, a8
.LVL885:
	.loc 1 1393 0
	addi.n	a12, a12, 1
.LVL886:
	.loc 1 1394 0
	l8ui	a14, a8, 0
.LVL887:
	extui	a11, a11, 0, 16
.LVL888:
	.loc 1 1393 0
	extui	a12, a12, 0, 8
.LVL889:
.L478:
	add.n	a3, a2, a12
	.loc 1 1382 0
	bne	a14, a15, .L481
	.loc 1 1396 0
	movi.n	a2, 0
.LVL890:
	s8i	a2, a3, 0
	retw.n
.LFE66:
	.size	getFontCharacters, .-getFontCharacters
	.section	.text.TFT_setFont,"ax",@progbits
	.literal_position
	.literal .LC114, cfont
	.literal .LC115, _fg
	.literal .LC116, tft_DefaultFont
	.literal .LC117, userfont
	.literal .LC118, MontserratEB90
	.literal .LC119, MontserratSB24
	.literal .LC120, MontserratR20
	.align	4
	.global	TFT_setFont
	.type	TFT_setFont, @function
TFT_setFont:
.LFB69:
	.loc 1 1505 0
.LVL891:
	entry	sp, 32
.LCFI45:
	.loc 1 1506 0
	l32r	a8, .LC114
	movi.n	a11, 0
	.loc 1 1505 0
	extui	a2, a2, 0, 8
	.loc 1 1506 0
	s32i.n	a11, a8, 0
	.loc 1 1508 0
	movi.n	a9, 9
	.loc 1 1505 0
	mov.n	a10, a3
	mov.n	a4, a8
	.loc 1 1508 0
	bne	a2, a9, .L485
	.loc 1 1509 0
	movi.n	a2, 2
.LVL892:
	s8i	a2, a8, 13
	.loc 1 1510 0
	movi.n	a2, 0x18
	s8i	a2, a8, 4
	.loc 1 1511 0
	movi.n	a2, 6
	s8i	a2, a8, 5
	.loc 1 1513 0
	l32r	a2, .LC115
	.loc 1 1512 0
	s8i	a11, a8, 6
	.loc 1 1513 0
	l8ui	a10, a2, 0
	l8ui	a9, a2, 1
	l8ui	a2, a2, 2
	addi.n	a4, a8, 14
	s8i	a10, a8, 14
	s8i	a9, a8, 15
	s8i	a2, a8, 16
	retw.n
.L485:
	.loc 1 1515 0
	bnei	a2, 10, .L487
	.loc 1 1516 0
	call8	load_file_font
.LVL893:
	beqz.n	a10, .L488
.L492:
	.loc 1 1516 0 is_stmt 0 discriminator 1
	l32r	a2, .LC116
	j	.L502
.L488:
	.loc 1 1517 0 is_stmt 1
	l32r	a2, .LC117
	l32i.n	a2, a2, 0
	j	.L502
.L487:
	.loc 1 1519 0
	bnei	a2, 3, .L490
	.loc 1 1519 0 is_stmt 0 discriminator 1
	l32r	a2, .LC118
	j	.L502
.L490:
	.loc 1 1520 0 is_stmt 1
	bnei	a2, 4, .L491
	.loc 1 1520 0 is_stmt 0 discriminator 1
	l32r	a2, .LC119
	j	.L502
.L491:
	.loc 1 1521 0 is_stmt 1
	bnei	a2, 5, .L492
	.loc 1 1521 0 is_stmt 0 discriminator 1
	l32r	a2, .LC120
.L502:
	s32i.n	a2, a4, 0
	.loc 1 1525 0 is_stmt 1 discriminator 1
	l32i.n	a11, a4, 0
	.loc 1 1524 0 discriminator 1
	movi.n	a2, 1
	s8i	a2, a4, 13
	.loc 1 1525 0 discriminator 1
	l8ui	a8, a11, 0
	s8i	a8, a4, 4
	.loc 1 1526 0 discriminator 1
	l8ui	a2, a11, 1
	s8i	a2, a4, 5
	.loc 1 1527 0 discriminator 1
	beqz.n	a8, .L493
	.loc 1 1528 0
	l8ui	a9, a11, 2
	s8i	a9, a4, 6
	.loc 1 1529 0
	l8ui	a9, a11, 3
	.loc 1 1530 0
	mul16u	a8, a8, a9
	.loc 1 1529 0
	s16i	a9, a4, 8
	.loc 1 1530 0
	mul16u	a2, a8, a2
	s16i	a2, a4, 10
	retw.n
.L493:
	.loc 1 1532 0
	movi.n	a2, 4
	s8i	a2, a4, 6
.LVL894:
.LBB37:
.LBB38:
	.loc 1 1406 0
	s16i	a8, a4, 8
	.loc 1 1407 0
	s8i	a8, a4, 12
.LVL895:
	.loc 1 1409 0
	l8ui	a2, a11, 4
.LVL896:
	movi.n	a10, 5
	.loc 1 1410 0
	movi	a13, 0xff
	j	.L494
.LVL897:
.L501:
	.loc 1 1411 0
	l16ui	a2, a4, 8
.LVL898:
	.loc 1 1414 0
	addi.n	a15, a10, 2
	.loc 1 1411 0
	addi.n	a2, a2, 1
	.loc 1 1413 0
	addi.n	a8, a10, 1
	.loc 1 1414 0
	extui	a15, a15, 0, 16
	.loc 1 1411 0
	s16i	a2, a4, 8
.LVL899:
	.loc 1 1414 0
	add.n	a15, a11, a15
	.loc 1 1412 0
	add.n	a2, a11, a10
	.loc 1 1413 0
	extui	a8, a8, 0, 16
	.loc 1 1412 0
	l8ui	a14, a2, 0
.LVL900:
	.loc 1 1413 0
	add.n	a8, a11, a8
	.loc 1 1414 0
	l8ui	a12, a15, 0
	.loc 1 1416 0
	addi.n	a15, a10, 4
	.loc 1 1413 0
	l8ui	a9, a8, 0
.LVL901:
	.loc 1 1416 0
	extui	a15, a15, 0, 16
	.loc 1 1418 0
	l8ui	a8, a4, 12
.LVL902:
	.loc 1 1416 0
	add.n	a15, a11, a15
	.loc 1 1417 0
	add.n	a14, a14, a12
	.loc 1 1416 0
	l8ui	a2, a15, 0
.LVL903:
	.loc 1 1417 0
	extui	a14, a14, 0, 8
.LVL904:
	.loc 1 1418 0
	bgeu	a8, a9, .L495
	s8i	a9, a4, 12
.LVL905:
.L495:
	.loc 1 1419 0
	l8ui	a8, a4, 12
	bgeu	a8, a2, .L496
	s8i	a2, a4, 12
.L496:
	.loc 1 1420 0
	l8ui	a2, a4, 5
.LVL906:
	bgeu	a2, a12, .L497
	s8i	a12, a4, 5
.L497:
	.loc 1 1421 0
	l8ui	a2, a4, 5
	bgeu	a2, a14, .L498
	s8i	a14, a4, 5
.L498:
	.loc 1 1416 0
	addi.n	a8, a10, 5
	.loc 1 1422 0
	beqz.n	a9, .L503
.L499:
	.loc 1 1424 0
	mul16u	a12, a9, a12
.LVL907:
	addi.n	a8, a10, 6
	addi.n	a9, a12, -1
.LVL908:
	addi.n	a12, a12, 6
	movltz	a9, a12, a9
	srai	a9, a9, 3
	add.n	a8, a8, a9
.L503:
	extui	a8, a8, 0, 16
.LVL909:
	.loc 1 1426 0
	addi.n	a10, a8, 1
	add.n	a8, a11, a8
.LVL910:
	l8ui	a2, a8, 0
	extui	a10, a10, 0, 16
.LVL911:
.L494:
	.loc 1 1410 0
	bne	a2, a13, .L501
	.loc 1 1428 0
	s16i	a10, a4, 10
	retw.n
.LBE38:
.LBE37:
.LFE69:
	.size	TFT_setFont, .-TFT_setFont
	.section	.text.TFT_getStringWidth,"ax",@progbits
	.literal_position
	.literal .LC121, cfont
	.literal .LC122, fontChar
	.align	4
	.global	TFT_getStringWidth
	.type	TFT_getStringWidth, @function
TFT_getStringWidth:
.LFB76:
	.loc 1 1793 0
.LVL912:
	entry	sp, 32
.LCFI46:
.LVL913:
	.loc 1 1796 0
	l32r	a3, .LC121
	l8ui	a4, a3, 13
	bnei	a4, 2, .L505
.LVL914:
.LBB43:
.LBB44:
	call8	_7seg_width
.LVL915:
	mov.n	a3, a10
	mov.n	a10, a2
	call8	strlen
.LVL916:
	addi.n	a3, a3, 2
	mull	a10, a3, a10
	addi	a2, a10, -2
.LVL917:
	retw.n
.LVL918:
.L505:
.LBE44:
.LBE43:
	.loc 1 1797 0
	l8ui	a3, a3, 4
	bnez.n	a3, .L507
.LBB45:
	.loc 1 1803 0
	l32r	a4, .LC122
	j	.L508
.L507:
.LBE45:
	.loc 1 1797 0 discriminator 1
	mov.n	a10, a2
	call8	strlen
.LVL919:
	mull	a2, a3, a10
.LVL920:
	retw.n
.LVL921:
.L510:
.LBB46:
	.loc 1 1802 0
	addi.n	a2, a2, 1
.LVL922:
	call8	getCharPtr
.LVL923:
	beqz.n	a10, .L508
	.loc 1 1803 0
	l32i.n	a9, a4, 20
	l32i.n	a8, a4, 8
	max	a8, a9, a8
	addi.n	a8, a8, 1
	add.n	a3, a3, a8
.LVL924:
.L508:
	.loc 1 1801 0
	l8ui	a10, a2, 0
	bnez.n	a10, .L510
	.loc 1 1806 0
	addi.n	a2, a3, -1
.LVL925:
.LBE46:
	.loc 1 1809 0
	retw.n
.LFE76:
	.size	TFT_getStringWidth, .-TFT_getStringWidth
	.section	.text.TFT_print,"ax",@progbits
	.literal_position
	.literal .LC125, cfont
	.literal .LC126, font_rotate
	.literal .LC127, -9002
	.literal .LC128, 6999
	.literal .LC129, TFT_OFFSET
	.literal .LC130, -7000
	.literal .LC131, TFT_X
	.literal .LC132, dispWin
	.literal .LC133, 7999
	.literal .LC134, -8000
	.literal .LC135, TFT_Y
	.literal .LC136, -9004
	.literal .LC137, -9003
	.literal .LC138, font_transparent
	.literal .LC139, _bg
	.literal .LC140, 16777215
	.literal .LC142, font_line_space
	.literal .LC143, fontChar
	.literal .LC144, text_wrap
	.literal .LC145, font_buffered_char
	.literal .LC146, _fg
	.literal .LC147, 0xa252dd11, 0x3f91df46
	.literal .LC148, 0x1eb851ec, 0x3f91eb85
	.literal .LC149, font_bcd
	.literal .LC150, 2048
	.literal .LC151, cfont+14
	.align	4
	.global	TFT_print
	.type	TFT_print, @function
TFT_print:
.LFB81:
	.loc 1 1960 0
.LVL926:
	entry	sp, 176
.LCFI47:
	.loc 1 1964 0
	l32r	a6, .LC125
	.loc 1 1960 0
	s32i	a2, sp, 72
	.loc 1 1964 0
	l8ui	a2, a6, 13
.LVL927:
	beqz.n	a2, .L514
	.loc 1 1967 0
	l32r	a2, .LC126
	l16ui	a2, a2, 0
	beqz.n	a2, .L516
	.loc 1 1967 0 is_stmt 0 discriminator 1
	l32r	a5, .LC127
	blt	a3, a5, .L514
	blt	a4, a5, .L514
.L516:
	.loc 1 1969 0 is_stmt 1 discriminator 2
	l32r	a5, .LC128
	bge	a5, a3, .L639
	bnez.n	a2, .L520
.L639:
	.loc 1 1969 0 is_stmt 0 discriminator 3
	l32r	a2, .LC129
	movi.n	a5, 0
	s32i.n	a5, a2, 0
.L520:
	.loc 1 1971 0 is_stmt 1
	l32r	a2, .LC130
	movi	a5, 0x3e7
	add.n	a2, a3, a2
	l32r	a7, .LC132
	bltu	a5, a2, .L523
	.loc 1 1971 0 is_stmt 0 discriminator 1
	l32r	a3, .LC131
.LVL928:
	l32i.n	a3, a3, 0
	j	.L734
.LVL929:
.L523:
	.loc 1 1972 0 is_stmt 1
	l32r	a2, .LC127
	blt	a3, a2, .L524
	.loc 1 1972 0 is_stmt 0 discriminator 1
	l16ui	a2, a7, 0
.LVL930:
.L734:
	add.n	a3, a3, a2
.LVL931:
.L524:
	.loc 1 1974 0 is_stmt 1
	l32r	a2, .LC133
	bge	a2, a4, .L525
	.loc 1 1974 0 is_stmt 0 discriminator 1
	l32r	a2, .LC134
	add.n	a4, a4, a2
.LVL932:
	l32r	a2, .LC135
	l32i.n	a2, a2, 0
	j	.L735
.LVL933:
.L525:
	.loc 1 1975 0 is_stmt 1
	l32r	a2, .LC127
	blt	a4, a2, .L526
	.loc 1 1975 0 is_stmt 0 discriminator 1
	l16ui	a2, a7, 2
.LVL934:
.L735:
	add.n	a4, a4, a2
.LVL935:
.L526:
	.loc 1 1978 0 is_stmt 1
	l32i	a10, sp, 72
	call8	strlen
.LVL936:
	s32i	a10, sp, 120
.LVL937:
	.loc 1 1981 0
	l32i	a10, sp, 72
.LVL938:
	call8	TFT_getStringWidth
.LVL939:
	.loc 1 1982 0
	l8ui	a2, a6, 5
	.loc 1 1983 0
	l8ui	a8, a6, 4
	.loc 1 1982 0
	s32i.n	a2, sp, 36
.LVL940:
	mov.n	a9, a2
	.loc 1 1983 0
	beqz.n	a8, .L527
	.loc 1 1983 0 is_stmt 0 discriminator 1
	l8ui	a2, a6, 13
.LVL941:
	bnei	a2, 2, .L527
	.loc 1 1985 0 is_stmt 1
	addx2	a9, a9, a9
.LVL942:
	slli	a9, a9, 1
	addi.n	a9, a9, 3
	addx2	a9, a8, a9
.LVL943:
.L527:
	.loc 1 1988 0
	l32r	a2, .LC136
	bne	a3, a2, .L528
	.loc 1 1988 0 is_stmt 0 discriminator 1
	l16ui	a3, a7, 4
.LVL944:
	sub	a10, a3, a10
.LVL945:
	l16ui	a3, a7, 0
	j	.L736
.LVL946:
.L528:
	.loc 1 1989 0 is_stmt 1
	l32r	a2, .LC137
	bne	a3, a2, .L529
	.loc 1 1989 0 is_stmt 0 discriminator 1
	l16ui	a3, a7, 0
.LVL947:
	l16ui	a2, a7, 4
	sub	a2, a2, a3
	addi.n	a2, a2, 1
	sub	a10, a2, a10
.LVL948:
	extui	a2, a10, 31, 1
	add.n	a10, a2, a10
	srai	a10, a10, 1
.L736:
	add.n	a3, a10, a3
.LVL949:
.L529:
	.loc 1 1991 0 is_stmt 1
	l32r	a2, .LC136
	bne	a4, a2, .L530
	.loc 1 1991 0 is_stmt 0 discriminator 1
	l16ui	a4, a7, 6
.LVL950:
	sub	a9, a4, a9
.LVL951:
	l16ui	a4, a7, 2
	add.n	a4, a9, a4
.LVL952:
	j	.L531
.LVL953:
.L530:
	.loc 1 1992 0 is_stmt 1
	l32r	a2, .LC137
	bne	a4, a2, .L531
	.loc 1 1992 0 is_stmt 0 discriminator 1
	l16ui	a4, a7, 2
.LVL954:
	l16ui	a2, a7, 6
	sub	a2, a2, a4
	addi.n	a5, a2, 1
	extui	a2, a9, 31, 1
	add.n	a2, a2, a9
	srai	a2, a2, 1
	sub	a2, a5, a2
	extui	a5, a2, 31, 1
	add.n	a2, a5, a2
	srai	a2, a2, 1
	add.n	a4, a2, a4
.LVL955:
.L531:
	.loc 1 1994 0 is_stmt 1
	l16ui	a10, a7, 0
	.loc 1 1996 0
	l16ui	a2, a7, 4
	max	a3, a3, a10
.LVL956:
	s32i.n	a3, sp, 60
.LVL957:
	blt	a2, a3, .L514
	.loc 1 1995 0 discriminator 1
	l16ui	a2, a7, 2
	.loc 1 1996 0 discriminator 1
	l16ui	a3, a7, 6
.LVL958:
	max	a4, a4, a2
.LVL959:
	s32i.n	a4, sp, 56
	blt	a3, a4, .L514
	.loc 1 1998 0
	l32r	a2, .LC131
	l32i.n	a4, sp, 60
	.loc 1 1999 0
	l32i.n	a5, sp, 56
	.loc 1 1998 0
	s32i.n	a4, a2, 0
	.loc 1 1999 0
	l32r	a2, .LC135
	.loc 1 2004 0
	s32i.n	a8, sp, 48
	.loc 1 1999 0
	s32i.n	a5, a2, 0
.LVL960:
	.loc 1 2005 0
	beqz.n	a8, .L532
.LVL961:
	.loc 1 2006 0
	l8ui	a2, a6, 13
	bnei	a2, 2, .L533
	.loc 1 2007 0
	call8	_7seg_width
.LVL962:
	s32i.n	a10, sp, 48
.LVL963:
	.loc 1 2008 0
	call8	_7seg_height
.LVL964:
	s32i.n	a10, sp, 36
.LVL965:
	j	.L533
.LVL966:
.L532:
	.loc 1 2010 0
	l32r	a2, .LC129
	l32i.n	a6, sp, 48
	s32i.n	a6, a2, 0
.LVL967:
.L533:
	.loc 1 2012 0
	l32i.n	a8, sp, 36
	l32i.n	a9, sp, 56
	add.n	a2, a8, a9
	addi.n	a2, a2, -1
	blt	a3, a2, .L514
	.loc 1 2014 0
	l32r	a2, .LC129
	l32i.n	a2, a2, 0
	s32i	a2, sp, 64
.LVL968:
	.loc 1 2016 0
	movi.n	a2, 0
.LVL969:
	s32i.n	a2, sp, 52
	j	.L534
.LVL970:
.L634:
	.loc 1 2017 0
	l32i	a5, sp, 72
.LVL971:
	l32i.n	a6, sp, 52
	.loc 1 2019 0
	movi.n	a8, 0xd
	.loc 1 2017 0
	add.n	a2, a5, a6
	l8ui	a7, a2, 0
.LVL972:
	.loc 1 2019 0
	bne	a7, a8, .L535
	.loc 1 2020 0
	l32r	a2, .LC138
	l8ui	a2, a2, 0
	bnez.n	a2, .L536
	.loc 1 2020 0 is_stmt 0 discriminator 1
	l32r	a2, .LC126
	l16ui	a2, a2, 0
	bnez.n	a2, .L536
	.loc 1 2020 0 discriminator 2
	l32r	a2, .LC131
	l32r	a4, .LC139
	l32i.n	a10, a2, 0
	l32r	a2, .LC132
	l8ui	a3, a4, 0
	l16ui	a12, a2, 4
	l8ui	a2, a4, 1
	l8ui	a14, a4, 2
	slli	a2, a2, 8
	or	a2, a2, a3
	slli	a14, a14, 16
	or	a14, a14, a2
	l32r	a2, .LC135
	l32i.n	a9, sp, 36
	addi.n	a12, a12, 1
	sub	a12, a12, a10
	l16si	a11, a2, 0
	sext	a13, a9, 15
	sext	a12, a12, 15
	sext	a10, a10, 15
	call8	_fillRect
.LVL973:
	j	.L536
.L535:
	.loc 1 2021 0 is_stmt 1
	bnei	a7, 10, .L537
	.loc 1 2022 0
	l32r	a10, .LC125
	l8ui	a2, a10, 13
	bnei	a2, 1, .L536
	.loc 1 2023 0
	l32r	a2, .LC142
	l32i.n	a4, sp, 36
	l8ui	a2, a2, 0
	.loc 1 2024 0
	l32i.n	a5, sp, 36
	.loc 1 2023 0
	add.n	a3, a2, a4
	l32r	a4, .LC135
	l32i.n	a2, a4, 0
	add.n	a2, a3, a2
	s32i.n	a2, a4, 0
	.loc 1 2024 0
	l32r	a4, .LC132
	l16ui	a3, a4, 6
	sub	a3, a3, a5
	blt	a3, a2, .L514
	.loc 1 2025 0
	l16ui	a3, a4, 0
	l32r	a2, .LC131
	s32i.n	a3, a2, 0
	j	.L536
.L537:
	.loc 1 2028 0
	l32r	a6, .LC125
	l8ui	a2, a6, 4
	bnez.n	a2, .L538
	.loc 1 2030 0
	mov.n	a10, a7
	call8	getCharPtr
.LVL974:
	beqz.n	a10, .L536
	.loc 1 2030 0 is_stmt 0 discriminator 1
	l32r	a2, .LC143
	l32i.n	a2, a2, 20
	s32i.n	a2, sp, 48
.LVL975:
.L538:
	.loc 1 2035 0 is_stmt 1
	l32r	a3, .LC131
	l32r	a4, .LC132
	l32i.n	a2, a3, 0
	l32i.n	a8, sp, 48
	l16ui	a5, a4, 4
	add.n	a2, a8, a2
	bge	a5, a2, .L539
	.loc 1 2036 0
	l32r	a2, .LC144
	l8ui	a2, a2, 0
	beqz.n	a2, .L514
	.loc 1 2037 0
	l32r	a2, .LC142
	l32i.n	a9, sp, 36
	l8ui	a2, a2, 0
	l32r	a6, .LC135
	add.n	a5, a2, a9
	l32i.n	a2, a6, 0
	add.n	a2, a5, a2
	.loc 1 2038 0
	l16ui	a5, a4, 6
	.loc 1 2037 0
	s32i.n	a2, a6, 0
	.loc 1 2038 0
	sub	a5, a5, a9
	blt	a5, a2, .L514
	.loc 1 2039 0
	l16ui	a2, a4, 0
	s32i.n	a2, a3, 0
.L539:
	.loc 1 2043 0
	l32r	a4, .LC125
	l8ui	a2, a4, 4
	bnez.n	a2, .L540
	.loc 1 2045 0
	l32r	a5, .LC126
	l16ui	a10, a5, 0
	bnez.n	a10, .L541
	.loc 1 2045 0 is_stmt 0 discriminator 1
	l32r	a2, .LC135
	l32i.n	a3, a3, 0
	l32i.n	a2, a2, 0
	s32i.n	a3, sp, 16
	s32i.n	a2, sp, 20
.LVL976:
.LBB67:
.LBB68:
	.loc 1 1563 0 is_stmt 1 discriminator 1
	l32r	a2, .LC143
.LVL977:
	l32i.n	a3, a2, 20
.LVL978:
	l32i.n	a2, a2, 8
	max	a3, a3, a2
.LVL979:
	.loc 1 1565 0 discriminator 1
	l32r	a2, .LC145
	l8ui	a2, a2, 0
	beqz.n	a2, .L542
	.loc 1 1565 0 is_stmt 0
	l32r	a2, .LC138
	l8ui	a2, a2, 0
	bnez.n	a2, .L542
.LBB69:
	.loc 1 1569 0 is_stmt 1
	l8ui	a4, a4, 5
	.loc 1 1570 0
	movi.n	a11, 8
	.loc 1 1569 0
	mull	a4, a4, a3
.LVL980:
	.loc 1 1570 0
	addx2	a10, a4, a4
	call8	heap_caps_malloc
.LVL981:
	mov.n	a6, a10
.LVL982:
	.loc 1 1571 0
	beqz.n	a10, .L542
	mov.n	a5, a10
.LBB70:
.LBB71:
	.loc 1 1574 0
	l32r	a7, .LC139
.LVL983:
	j	.L543
.LVL984:
.L544:
	l8ui	a8, a7, 0
	l8ui	a9, a7, 1
	s8i	a8, a5, 0
	l8ui	a8, a7, 2
	.loc 1 1573 0
	addi.n	a2, a2, 1
.LVL985:
	.loc 1 1574 0
	s8i	a9, a5, 1
	s8i	a8, a5, 2
	addi.n	a5, a5, 3
.LVL986:
.L543:
	.loc 1 1573 0
	blt	a2, a4, .L544
.LBE71:
	.loc 1 1578 0
	l32r	a9, .LC143
.LBB72:
	.loc 1 1573 0
	movi.n	a5, 0
	movi	a8, 0x80
	mov.n	a12, a5
.LBE72:
	.loc 1 1579 0
	mov.n	a10, a9
	.loc 1 1586 0
	mov.n	a13, a9
	.loc 1 1587 0
	l32r	a11, .LC146
	j	.L545
.LVL987:
.L548:
	.loc 1 1580 0
	mull	a2, a5, a2
	add.n	a2, a2, a7
	extui	a2, a2, 0, 3
	bnez.n	a2, .L546
.LVL988:
	.loc 1 1582 0
	l16ui	a2, a10, 24
	l32r	a12, .LC125
.LVL989:
	addi.n	a8, a2, 1
	s16i	a8, a10, 24
	l32i.n	a8, a12, 0
	add.n	a2, a8, a2
	l8ui	a12, a2, 0
.LVL990:
	.loc 1 1581 0
	movi	a8, 0x80
.LVL991:
.L546:
	.loc 1 1584 0
	bnone	a12, a8, .L547
.LVL992:
	.loc 1 1587 0
	l32i.n	a14, a13, 4
	l32i.n	a2, a13, 16
	add.n	a14, a5, a14
	mull	a14, a14, a3
	add.n	a2, a7, a2
	add.n	a2, a2, a14
.LVL993:
	addx2	a2, a2, a2
.LVL994:
	l8ui	a14, a11, 0
	add.n	a2, a6, a2
	l8ui	a15, a11, 1
	s8i	a14, a2, 0
	l8ui	a14, a11, 2
	s8i	a15, a2, 1
	s8i	a14, a2, 2
.LVL995:
.L547:
	.loc 1 1600 0
	srli	a8, a8, 1
.LVL996:
	.loc 1 1579 0
	addi.n	a7, a7, 1
.LVL997:
.L550:
	l32i.n	a2, a10, 8
	blt	a7, a2, .L548
	.loc 1 1578 0
	addi.n	a5, a5, 1
.LVL998:
.L545:
	l32i.n	a2, a9, 12
	bge	a5, a2, .L549
	movi.n	a7, 0
	j	.L550
.L549:
	.loc 1 1604 0
	call8	disp_select
.LVL999:
	.loc 1 1605 0
	l32r	a2, .LC125
	l32i.n	a5, sp, 16
.LVL1000:
	l8ui	a13, a2, 5
	l32i.n	a2, sp, 20
	add.n	a12, a5, a3
	add.n	a13, a13, a2
	mov.n	a15, a6
	mov.n	a14, a4
	addi.n	a13, a13, -1
	addi.n	a12, a12, -1
	mov.n	a11, a2
	mov.n	a10, a5
	call8	send_data
.LVL1001:
	.loc 1 1606 0
	call8	disp_deselect
.LVL1002:
	.loc 1 1607 0
	mov.n	a10, a6
	call8	free
.LVL1003:
	j	.L551
.LVL1004:
.L542:
.LBE70:
.LBE69:
	.loc 1 1615 0
	l32r	a2, .LC138
	l8ui	a2, a2, 0
	bnez.n	a2, .L552
	l32r	a5, .LC139
	l32i.n	a6, sp, 20
	l8ui	a2, a5, 1
	l8ui	a4, a5, 0
	l8ui	a14, a5, 2
	slli	a2, a2, 8
	or	a2, a2, a4
	slli	a14, a14, 16
	or	a14, a14, a2
	l32r	a2, .LC125
	l32i.n	a8, sp, 16
	addi.n	a12, a3, 1
	l8ui	a13, a2, 5
	sext	a12, a12, 15
	sext	a11, a6, 15
	sext	a10, a8, 15
	call8	_fillRect
.LVL1005:
.L552:
	.loc 1 1620 0
	movi.n	a2, 0
	.loc 1 1619 0
	call8	disp_select
.LVL1006:
	.loc 1 1618 0
	movi	a6, 0x80
	.loc 1 1560 0
	mov.n	a5, a2
	j	.L553
.LVL1007:
.L556:
	.loc 1 1622 0
	mull	a9, a2, a9
	add.n	a9, a9, a4
	extui	a9, a9, 0, 3
	bnez.n	a9, .L554
.LVL1008:
	.loc 1 1624 0
	l32r	a6, .LC125
	l32i.n	a8, a6, 0
	l16ui	a6, a7, 24
	addi.n	a9, a6, 1
	add.n	a6, a8, a6
	l8ui	a5, a6, 0
.LVL1009:
	s16i	a9, a7, 24
	.loc 1 1623 0
	movi	a6, 0x80
.LVL1010:
.L554:
	.loc 1 1627 0
	bnone	a5, a6, .L555
.LVL1011:
	.loc 1 1629 0
	l32r	a9, .LC143
	.loc 1 1630 0
	l32r	a13, .LC146
	l32i.n	a11, a9, 4
	l32i.n	a10, a9, 16
	l32i.n	a9, sp, 16
	l32i.n	a8, sp, 20
	add.n	a10, a10, a9
	l8ui	a9, a13, 1
	l8ui	a14, a13, 0
	l8ui	a12, a13, 2
	add.n	a11, a11, a8
	slli	a9, a9, 8
	add.n	a11, a11, a2
	add.n	a10, a10, a4
	or	a9, a9, a14
	slli	a12, a12, 16
	movi.n	a13, 0
	or	a12, a12, a9
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	_drawPixel
.LVL1012:
.L555:
	.loc 1 1632 0
	srli	a6, a6, 1
.LVL1013:
	.loc 1 1621 0
	addi.n	a4, a4, 1
.LVL1014:
.L558:
	l32i.n	a9, a7, 8
	blt	a4, a9, .L556
	.loc 1 1620 0
	addi.n	a2, a2, 1
.LVL1015:
.L553:
	l32r	a10, .LC143
	l32i.n	a4, a10, 12
	bge	a2, a4, .L557
	movi.n	a4, 0
	.loc 1 1621 0
	mov.n	a7, a10
	j	.L558
.L557:
	.loc 1 1635 0
	call8	disp_deselect
.LVL1016:
.L551:
.LBE68:
.LBE67:
	.loc 1 2045 0
	l32r	a4, .LC131
	addi.n	a3, a3, 1
.LVL1017:
	l32i.n	a2, a4, 0
	add.n	a3, a3, a2
.LVL1018:
	s32i.n	a3, a4, 0
	j	.L536
.LVL1019:
.L541:
.LBB73:
.LBB74:
	.loc 1 1712 0
	call8	__floatsidf
.LVL1020:
	l32r	a12, .LC147
	l32r	a13, .LC147+4
	.loc 1 1716 0
	movi	a6, 0x80
	.loc 1 1712 0
	call8	__muldf3
.LVL1021:
	mov.n	a4, a10
	mov.n	a5, a11
.LVL1022:
	.loc 1 1713 0
	call8	cos
.LVL1023:
	call8	__truncdfsf2
.LVL1024:
	s32i.n	a10, sp, 16
.LVL1025:
	.loc 1 1714 0
	mov.n	a11, a5
	mov.n	a10, a4
.LVL1026:
	call8	sin
.LVL1027:
	call8	__truncdfsf2
.LVL1028:
	s32i.n	a10, sp, 20
.LVL1029:
	.loc 1 1711 0
	mov.n	a4, a2
.LVL1030:
	.loc 1 1717 0
	call8	disp_select
.LVL1031:
.LBB75:
	.loc 1 1718 0
	l32r	a3, .LC143
	j	.L559
.LVL1032:
.L563:
.LBB76:
.LBB77:
	.loc 1 1720 0
	mull	a8, a2, a8
	add.n	a8, a8, a5
	extui	a8, a8, 0, 3
	bnez.n	a8, .L560
.LVL1033:
	.loc 1 1722 0
	l32r	a4, .LC125
.LVL1034:
	l32i.n	a6, a4, 0
	l16ui	a4, a7, 24
	addi.n	a8, a4, 1
	add.n	a4, a6, a4
	l8ui	a4, a4, 0
.LVL1035:
	s16i	a8, a7, 24
	.loc 1 1721 0
	movi	a6, 0x80
.LVL1036:
.L560:
	.loc 1 1725 0
	l32i	a9, sp, 64
	lsi	f3, sp, 16
	add.n	a8, a9, a5
	float.s	f0, a8, 0
	l32r	a8, .LC143
	mul.s	f2, f3, f0
	l32i.n	a8, a8, 4
	lsi	f3, sp, 20
	add.n	a8, a2, a8
	float.s	f1, a8, 0
	l32i.n	a8, sp, 60
	msub.s	f2, f3, f1
	float.s	f3, a8, 0
	.loc 1 1726 0
	l32i.n	a8, sp, 56
	.loc 1 1725 0
	add.s	f2, f2, f3
	.loc 1 1726 0
	lsi	f3, sp, 16
	.loc 1 1725 0
	trunc.s	a10, f2, 0
.LVL1037:
	.loc 1 1726 0
	lsi	f2, sp, 20
	mul.s	f0, f2, f0
	madd.s	f0, f3, f1
	float.s	f1, a8, 0
	add.s	f0, f0, f1
	trunc.s	a11, f0, 0
.LVL1038:
	.loc 1 1728 0
	bnone	a4, a6, .L561
	l32r	a9, .LC146
	l8ui	a8, a9, 1
	l8ui	a13, a9, 0
	l8ui	a12, a9, 2
	slli	a8, a8, 8
	or	a8, a8, a13
	slli	a12, a12, 16
	movi.n	a13, 0
	j	.L737
.L561:
	.loc 1 1729 0
	l32r	a8, .LC138
	l8ui	a13, a8, 0
	bnez.n	a13, .L562
	l32r	a9, .LC139
	l8ui	a8, a9, 1
	l8ui	a14, a9, 0
	l8ui	a12, a9, 2
	slli	a8, a8, 8
	or	a8, a8, a14
	slli	a12, a12, 16
.L737:
	or	a12, a12, a8
	sext	a11, a11, 15
.LVL1039:
	sext	a10, a10, 15
.LVL1040:
	call8	_drawPixel
.LVL1041:
.L562:
	.loc 1 1731 0
	srli	a6, a6, 1
.LVL1042:
.LBE77:
	.loc 1 1719 0
	addi.n	a5, a5, 1
.LVL1043:
.L565:
	l32i.n	a8, a7, 8
	blt	a5, a8, .L563
.LBE76:
	.loc 1 1718 0
	addi.n	a2, a2, 1
.LVL1044:
.L559:
	l32i.n	a5, a3, 12
	bge	a2, a5, .L564
	movi.n	a5, 0
.LBB78:
	.loc 1 1719 0
	mov.n	a7, a3
	j	.L565
.L564:
.LBE78:
.LBE75:
	.loc 1 1734 0
	call8	disp_deselect
.LVL1045:
.LBE74:
.LBE73:
	.loc 1 2048 0
	l32i.n	a2, a3, 20
.LVL1046:
	l32i	a9, sp, 64
	addi.n	a2, a2, 1
	add.n	a9, a9, a2
	.loc 1 2049 0
	l32r	a2, .LC129
	.loc 1 2048 0
	s32i	a9, sp, 64
.LVL1047:
	.loc 1 2049 0
	s32i.n	a9, a2, 0
	j	.L536
.LVL1048:
.L540:
	.loc 1 2052 0
	l8ui	a3, a4, 13
	bnei	a3, 1, .L566
	.loc 1 2054 0
	l8ui	a3, a4, 6
	bltu	a7, a3, .L638
	.loc 1 2054 0 is_stmt 0 discriminator 2
	l16ui	a6, a4, 8
	sub	a5, a7, a3
	blt	a6, a5, .L638
	j	.L567
.L638:
.LVL1049:
	mov.n	a7, a3
.LVL1050:
.L567:
	.loc 1 2055 0 is_stmt 1
	l32r	a4, .LC126
	sub	a7, a7, a3
.LVL1051:
	l16ui	a10, a4, 0
	bnez.n	a10, .L568
	.loc 1 2056 0
	l32r	a3, .LC131
.LBB79:
.LBB80:
	.loc 1 1649 0
	extui	a4, a2, 0, 3
.LBE80:
.LBE79:
	.loc 1 2056 0
	l32i.n	a3, a3, 0
.LBB88:
.LBB85:
	.loc 1 1649 0
	mov.n	a5, a4
.LBE85:
.LBE88:
	.loc 1 2056 0
	s32i.n	a3, sp, 16
	l32r	a3, .LC135
.LBB89:
.LBB86:
	.loc 1 1649 0
	movi.n	a6, 1
.LBE86:
.LBE89:
	.loc 1 2056 0
	l32i.n	a3, a3, 0
	s32i.n	a3, sp, 20
.LVL1052:
.LBB90:
.LBB87:
	.loc 1 1648 0
	srli	a3, a2, 3
.LVL1053:
	s32i.n	a3, sp, 24
.LVL1054:
	.loc 1 1649 0
	movi.n	a3, 0
	mov.n	a4, a3
	.loc 1 1652 0
	l32r	a3, .LC125
	.loc 1 1649 0
	movnez	a4, a6, a5
	.loc 1 1652 0
	l8ui	a14, a3, 5
	.loc 1 1649 0
	l32i.n	a5, sp, 24
	.loc 1 1652 0
	mul16u	a7, a7, a14
	.loc 1 1649 0
	add.n	a5, a5, a4
	.loc 1 1652 0
	extui	a6, a5, 0, 16
	.loc 1 1654 0
	l32r	a3, .LC145
	.loc 1 1652 0
	mul16u	a7, a7, a6
	.loc 1 1654 0
	l8ui	a3, a3, 0
	.loc 1 1652 0
	addi.n	a7, a7, 4
	.loc 1 1649 0
	s32i.n	a5, sp, 24
.LVL1055:
	.loc 1 1652 0
	s32i.n	a6, sp, 28
	extui	a7, a7, 0, 16
.LVL1056:
	.loc 1 1654 0
	beqz.n	a3, .L570
	l32r	a3, .LC138
	l8ui	a4, a3, 0
	bnez.n	a4, .L570
.LBB81:
	.loc 1 1656 0
	mull	a2, a2, a14
.LVL1057:
	.loc 1 1657 0
	movi.n	a11, 8
	addx2	a10, a2, a2
	call8	heap_caps_malloc
.LVL1058:
	mov.n	a3, a10
.LVL1059:
	mov.n	a5, a10
.LBB82:
	.loc 1 1661 0
	l32r	a6, .LC139
.LBE82:
	.loc 1 1658 0
	bnez.n	a10, .L571
	j	.L570
.LVL1060:
.L572:
.LBB83:
	.loc 1 1661 0
	l8ui	a8, a6, 0
	l8ui	a9, a6, 1
	s8i	a8, a5, 0
	l8ui	a8, a6, 2
	.loc 1 1660 0
	addi.n	a4, a4, 1
.LVL1061:
	.loc 1 1661 0
	s8i	a9, a5, 1
	s8i	a8, a5, 2
	addi.n	a5, a5, 3
.LVL1062:
.L571:
	.loc 1 1660 0
	blt	a4, a2, .L572
.LBE83:
	.loc 1 1664 0
	l32r	a4, .LC125
.LVL1063:
.LBB84:
	.loc 1 1660 0
	movi.n	a9, 0
.LBE84:
	.loc 1 1666 0
	mov.n	a15, a4
	.loc 1 1669 0
	l32r	a11, .LC146
	j	.L573
.LVL1064:
.L576:
	.loc 1 1666 0
	l32i.n	a5, a15, 0
	.loc 1 1669 0
	slli	a13, a10, 3
	.loc 1 1666 0
	add.n	a5, a5, a7
	add.n	a5, a5, a10
	l8ui	a5, a5, 0
	addi.n	a10, a10, 1
.LVL1065:
	s32i.n	a5, sp, 24
.LVL1066:
	.loc 1 1667 0
	movi	a14, 0x80
	.loc 1 1669 0
	movi.n	a12, 8
	loop	a12, .L575_LEND
.LVL1067:
.L575:
	l32i.n	a8, sp, 24
	bnone	a8, a14, .L574
	l32r	a5, .LC125
	l8ui	a6, a11, 1
	l8ui	a8, a5, 4
	l8ui	a5, a11, 0
	mul16u	a8, a9, a8
	add.n	a8, a8, a13
	addx2	a8, a8, a8
	add.n	a8, a3, a8
	s8i	a5, a8, 0
	l8ui	a5, a11, 2
	s8i	a6, a8, 1
	s8i	a5, a8, 2
.L574:
	.loc 1 1670 0
	srli	a14, a14, 1
.LVL1068:
	addi.n	a13, a13, 1
	.L575_LEND:
.LVL1069:
.L578:
	.loc 1 1665 0
	l32i.n	a6, sp, 28
	extui	a5, a10, 0, 16
	bltu	a5, a6, .L576
	.loc 1 1673 0
	add.n	a7, a6, a7
.LVL1070:
	.loc 1 1664 0
	addi.n	a9, a9, 1
.LVL1071:
	.loc 1 1673 0
	extui	a7, a7, 0, 16
.LVL1072:
	.loc 1 1664 0
	extui	a9, a9, 0, 8
.LVL1073:
.L573:
	l8ui	a5, a4, 5
	bgeu	a9, a5, .L577
	movi.n	a10, 0
	j	.L578
.L577:
	.loc 1 1676 0
	call8	disp_select
.LVL1074:
	.loc 1 1677 0
	l32i.n	a8, sp, 20
	l32i.n	a9, sp, 16
	l8ui	a13, a4, 5
	l8ui	a12, a4, 4
	add.n	a13, a13, a8
	add.n	a12, a12, a9
	mov.n	a15, a3
	mov.n	a14, a2
	addi.n	a13, a13, -1
	addi.n	a12, a12, -1
	mov.n	a11, a8
	mov.n	a10, a9
	call8	send_data
.LVL1075:
	.loc 1 1678 0
	call8	disp_deselect
.LVL1076:
	.loc 1 1679 0
	mov.n	a10, a3
	call8	free
.LVL1077:
	j	.L579
.LVL1078:
.L570:
.LBE81:
	.loc 1 1685 0
	l32r	a2, .LC138
	l8ui	a2, a2, 0
	bnez.n	a2, .L580
	l32r	a5, .LC139
	l32r	a4, .LC125
	l8ui	a2, a5, 1
	l8ui	a3, a5, 0
	l8ui	a14, a5, 2
	slli	a2, a2, 8
	or	a2, a2, a3
	slli	a14, a14, 16
	or	a14, a14, a2
	l32i.n	a3, sp, 16
	l32i.n	a2, sp, 20
	l8ui	a13, a4, 5
	l8ui	a12, a4, 4
	sext	a11, a2, 15
	sext	a10, a3, 15
	call8	_fillRect
.LVL1079:
.L580:
	.loc 1 1687 0
	call8	disp_select
.LVL1080:
	.loc 1 1688 0
	movi.n	a3, 0
	j	.L581
.LVL1081:
.L584:
	.loc 1 1690 0
	l32r	a8, .LC125
	.loc 1 1696 0
	l32r	a9, .LC146
	.loc 1 1690 0
	l32i.n	a6, a8, 0
	.loc 1 1691 0
	movi	a8, 0x80
	.loc 1 1690 0
	add.n	a6, a6, a4
	l8ui	a15, a6, 0
.LVL1082:
	addi.n	a6, a2, 8
.LVL1083:
	extui	a6, a6, 0, 16
.LVL1084:
.L583:
	.loc 1 1693 0
	bnone	a15, a8, .L582
.LVL1085:
	.loc 1 1696 0
	l8ui	a12, a9, 1
	l8ui	a11, a9, 0
	slli	a12, a12, 8
	or	a10, a12, a11
	l8ui	a12, a9, 2
	movi.n	a13, 0
	slli	a12, a12, 16
	or	a12, a12, a10
	l32r	a10, .LC140
	mov.n	a11, a5
	and	a12, a12, a10
	sext	a10, a2, 15
	s32i	a8, sp, 132
	s32i	a9, sp, 136
	s32i	a14, sp, 124
	s32i	a15, sp, 128
	call8	_drawPixel
.LVL1086:
	l32i	a15, sp, 128
	l32i	a14, sp, 124
	l32i	a9, sp, 136
	l32i	a8, sp, 132
.LVL1087:
.L582:
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 16
	.loc 1 1698 0
	srli	a8, a8, 1
.LVL1088:
	.loc 1 1692 0
	bne	a2, a6, .L583
	addi.n	a4, a4, 1
.LVL1089:
.L586:
	.loc 1 1689 0
	bne	a14, a4, .L584
	.loc 1 1701 0
	l32i.n	a2, sp, 28
	.loc 1 1688 0
	addi.n	a3, a3, 1
.LVL1090:
	.loc 1 1701 0
	add.n	a7, a2, a7
.LVL1091:
	extui	a7, a7, 0, 16
.LVL1092:
	.loc 1 1688 0
	extui	a3, a3, 0, 8
.LVL1093:
.L581:
	l32r	a4, .LC125
	l8ui	a2, a4, 5
	bgeu	a3, a2, .L585
	l32i.n	a5, sp, 16
	.loc 1 1696 0
	l32i.n	a8, sp, 20
	l32i.n	a6, sp, 24
	extui	a2, a5, 0, 16
	add.n	a5, a8, a3
	mov.n	a4, a7
	add.n	a14, a6, a7
	sext	a5, a5, 15
	j	.L586
.L585:
	.loc 1 1703 0
	call8	disp_deselect
.LVL1094:
.L579:
.LBE87:
.LBE90:
	.loc 1 2057 0
	l32r	a3, .LC131
	l32i.n	a9, sp, 48
	l32i.n	a2, a3, 0
	add.n	a2, a2, a9
	j	.L739
.LVL1095:
.L568:
.LBB91:
.LBB92:
	.loc 1 1746 0
	call8	__floatsidf
.LVL1096:
	l32r	a12, .LC148
	l32r	a13, .LC148+4
	call8	__muldf3
.LVL1097:
	mov.n	a4, a10
	mov.n	a5, a11
.LVL1098:
	.loc 1 1747 0
	call8	cos
.LVL1099:
	call8	__truncdfsf2
.LVL1100:
	s32i.n	a10, sp, 16
.LVL1101:
	.loc 1 1748 0
	mov.n	a11, a5
	mov.n	a10, a4
.LVL1102:
	call8	sin
.LVL1103:
	call8	__truncdfsf2
.LVL1104:
	s32i.n	a10, sp, 20
.LVL1105:
	.loc 1 1751 0
	bltui	a2, 8, .L587
	.loc 1 1752 0
	srli	a2, a2, 3
.LVL1106:
.L587:
	.loc 1 1753 0
	l32r	a4, .LC125
.LVL1107:
	extui	a3, a2, 0, 16
	s32i.n	a3, sp, 24
	l8ui	a3, a4, 5
	l32i.n	a5, sp, 24
	mul16u	a3, a3, a7
	.loc 1 1755 0
	call8	disp_select
.LVL1108:
	.loc 1 1753 0
	mul16u	a3, a3, a5
	.loc 1 1756 0
	movi.n	a4, 0
	.loc 1 1753 0
	addi.n	a3, a3, 4
	extui	a3, a3, 0, 16
.LVL1109:
	j	.L588
.LVL1110:
.L592:
	.loc 1 1758 0
	l32r	a6, .LC125
	.loc 1 1761 0
	float.s	f0, a4, 0
	.loc 1 1758 0
	l32i.n	a8, a6, 0
	.loc 1 1761 0
	lsi	f1, sp, 20
	.loc 1 1762 0
	lsi	f2, sp, 16
	.loc 1 1761 0
	mul.s	f1, f1, f0
	.loc 1 1758 0
	add.n	a8, a8, a3
	.loc 1 1762 0
	mul.s	f0, f2, f0
	.loc 1 1758 0
	add.n	a8, a8, a7
	l8ui	a8, a8, 0
	slli	a5, a7, 3
	s32i.n	a5, sp, 44
	s32i.n	a8, sp, 28
.LVL1111:
	.loc 1 1761 0
	ssi	f1, sp, 32
	.loc 1 1762 0
	ssi	f0, sp, 40
	movi.n	a5, 0
	.loc 1 1759 0
	movi	a6, 0x80
.LVL1112:
.L591:
	.loc 1 1761 0
	l32r	a8, .LC125
	l32i.n	a9, sp, 52
	l8ui	a10, a8, 4
	l32i.n	a8, sp, 44
	mull	a11, a10, a9
	add.n	a10, a5, a8
	add.n	a10, a11, a10
	float.s	f0, a10, 0
	lsi	f2, sp, 16
	lsi	f3, sp, 32
	mul.s	f1, f2, f0
	l32i.n	a8, sp, 60
	.loc 1 1762 0
	l32i.n	a9, sp, 56
	.loc 1 1761 0
	sub.s	f2, f1, f3
	float.s	f1, a8, 0
	.loc 1 1762 0
	lsi	f3, sp, 20
	.loc 1 1764 0
	l32i.n	a8, sp, 28
	.loc 1 1761 0
	add.s	f1, f2, f1
	.loc 1 1762 0
	float.s	f2, a9, 0
	.loc 1 1761 0
	trunc.s	a10, f1, 0
.LVL1113:
	.loc 1 1762 0
	lsi	f1, sp, 40
	madd.s	f1, f3, f0
	add.s	f0, f2, f1
	trunc.s	a11, f0, 0
.LVL1114:
	.loc 1 1764 0
	bnone	a8, a6, .L589
	l32r	a13, .LC146
	l8ui	a12, a13, 1
	l8ui	a15, a13, 0
	slli	a12, a12, 8
	or	a14, a12, a15
	l8ui	a12, a13, 2
	movi.n	a13, 0
	slli	a12, a12, 16
	j	.L738
.L589:
	.loc 1 1765 0
	l32r	a12, .LC138
	l8ui	a13, a12, 0
	bnez.n	a13, .L590
	l32r	a15, .LC139
	l8ui	a12, a15, 1
	l8ui	a14, a15, 0
	slli	a12, a12, 8
	or	a14, a12, a14
	l8ui	a12, a15, 2
	slli	a12, a12, 16
.L738:
	or	a12, a12, a14
	sext	a11, a11, 15
.LVL1115:
	sext	a10, a10, 15
.LVL1116:
	call8	_drawPixel
.LVL1117:
.L590:
	addi.n	a5, a5, 1
.LVL1118:
	.loc 1 1766 0
	srli	a6, a6, 1
.LVL1119:
	.loc 1 1760 0
	bnei	a5, 8, .L591
	.loc 1 1757 0
	addi.n	a7, a7, 1
.LVL1120:
.L594:
	blt	a7, a2, .L592
	.loc 1 1769 0
	l32i.n	a9, sp, 24
	.loc 1 1756 0
	addi.n	a4, a4, 1
.LVL1121:
	.loc 1 1769 0
	add.n	a3, a9, a3
.LVL1122:
	extui	a3, a3, 0, 16
.LVL1123:
	.loc 1 1756 0
	extui	a4, a4, 0, 8
.LVL1124:
.L588:
	l32r	a10, .LC125
	l8ui	a6, a10, 5
	bgeu	a4, a6, .L593
	movi.n	a7, 0
	j	.L594
.L593:
	.loc 1 1771 0
	call8	disp_deselect
.LVL1125:
	.loc 1 1773 0
	l32i.n	a3, sp, 52
.LVL1126:
	l32r	a4, .LC125
.LVL1127:
	addi.n	a2, a3, 1
.LVL1128:
	l8ui	a3, a4, 4
	l32i.n	a5, sp, 60
	mull	a2, a2, a3
	lsi	f2, sp, 16
	float.s	f0, a2, 0
	float.s	f1, a5, 0
	l32r	a3, .LC131
	madd.s	f1, f2, f0
	.loc 1 1774 0
	lsi	f2, sp, 20
	.loc 1 1773 0
	trunc.s	a2, f1, 0
	s32i.n	a2, a3, 0
	.loc 1 1774 0
	l32i.n	a2, sp, 56
	l32r	a3, .LC135
	float.s	f1, a2, 0
	madd.s	f1, f2, f0
	trunc.s	a2, f1, 0
.LVL1129:
.L739:
	s32i.n	a2, a3, 0
	j	.L536
.LVL1130:
.L566:
.LBE92:
.LBE91:
	.loc 1 2059 0
	bnei	a3, 2, .L536
	.loc 1 2061 0
	l32r	a3, .LC131
	l32i.n	a3, a3, 0
	s32i.n	a3, sp, 32
	sext	a3, a3, 15
	s32i.n	a3, sp, 24
	l32r	a3, .LC135
	l32i.n	a3, a3, 0
	sext	a5, a3, 15
	s32i.n	a3, sp, 20
	l8ui	a3, a4, 5
.LVL1131:
	l32r	a4, .LC146
	s32i.n	a5, sp, 40
.LVL1132:
	l8ui	a6, a4, 0
	l8ui	a5, a4, 1
	l8ui	a4, a4, 2
	s8i	a6, sp, 0
	s8i	a4, sp, 2
	s8i	a5, sp, 1
.LBB93:
.LBB94:
	.loc 1 1879 0
	sext	a4, a7, 7
	bnei	a4, 32, .L595
.LBB95:
	.loc 1 1882 0
	l32r	a4, .LC139
	l32i.n	a6, sp, 32
	l8ui	a14, a4, 1
	l8ui	a5, a4, 0
	l32i.n	a9, sp, 20
	.loc 1 1880 0
	addx2	a7, a3, a2
.LVL1133:
	.loc 1 1882 0
	slli	a14, a14, 8
	.loc 1 1880 0
	addi.n	a7, a7, 1
.LVL1134:
	.loc 1 1882 0
	or	a10, a14, a5
	l8ui	a14, a4, 2
	add.n	a8, a7, a6
.LVL1135:
	add.n	a6, a7, a9
	extui	a6, a6, 0, 16
	slli	a14, a14, 16
	sext	a8, a8, 15
	sext	a9, a6, 15
	or	a14, a14, a10
	mov.n	a15, a14
	mov.n	a10, a8
	mov.n	a13, a2
	mov.n	a12, a3
	mov.n	a11, a9
	l32r	a5, .LC140
	s32i	a8, sp, 132
	s32i	a9, sp, 136
	call8	barVert
.LVL1136:
	.loc 1 1883 0
	l8ui	a14, a4, 1
	l8ui	a11, a4, 0
	slli	a14, a14, 8
	or	a10, a14, a11
	l8ui	a14, a4, 2
	l32i	a9, sp, 136
	slli	a14, a14, 16
	or	a14, a14, a10
	and	a14, a14, a5
	l32i.n	a10, sp, 24
	mov.n	a11, a9
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	call8	barVert
.LVL1137:
	.loc 1 1884 0
	l8ui	a14, a4, 1
	l8ui	a11, a4, 0
	slli	a14, a14, 8
	or	a10, a14, a11
	l8ui	a14, a4, 2
	l32i	a8, sp, 132
	slli	a14, a14, 16
	or	a14, a14, a10
	and	a14, a14, a5
	l32i.n	a11, sp, 40
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	mov.n	a10, a8
	call8	barVert
.LVL1138:
	.loc 1 1885 0
	l8ui	a14, a4, 1
	l8ui	a10, a4, 0
	slli	a14, a14, 8
	or	a8, a14, a10
	l8ui	a14, a4, 2
	l32i.n	a11, sp, 40
	slli	a14, a14, 16
	or	a14, a14, a8
	and	a14, a14, a5
	l32i.n	a10, sp, 24
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	call8	barVert
.LVL1139:
	.loc 1 1886 0
	l8ui	a14, a4, 1
	add.n	a11, a7, a6
	l8ui	a7, a4, 0
.LVL1140:
	slli	a14, a14, 8
	or	a6, a14, a7
	l8ui	a14, a4, 2
	l32i.n	a10, sp, 24
	slli	a14, a14, 16
	or	a14, a14, a6
	and	a14, a14, a5
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	call8	barHor
.LVL1141:
	.loc 1 1887 0
	l8ui	a14, a4, 1
	l8ui	a7, a4, 0
	slli	a14, a14, 8
	or	a6, a14, a7
	l8ui	a14, a4, 2
	l32i	a9, sp, 136
	slli	a14, a14, 16
	or	a14, a14, a6
	and	a14, a14, a5
	l32i.n	a10, sp, 24
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	mov.n	a11, a9
	call8	barHor
.LVL1142:
	.loc 1 1888 0
	l8ui	a14, a4, 1
	l8ui	a7, a4, 0
	slli	a14, a14, 8
	or	a6, a14, a7
	l8ui	a14, a4, 2
	l32i.n	a11, sp, 40
	slli	a14, a14, 16
	or	a14, a14, a6
	and	a14, a14, a5
	l32i.n	a10, sp, 24
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	call8	barHor
.LVL1143:
	j	.L596
.LVL1144:
.L595:
.LBE95:
.LBB96:
	.loc 1 1890 0
	addi	a10, a7, -45
	extui	a10, a10, 0, 8
	movi.n	a12, 0xd
	bltu	a12, a10, .L596
	.loc 1 1892 0
	l32r	a5, .LC149
	addi	a4, a4, -45
	addx2	a4, a4, a5
	.loc 1 1893 0
	slli	a5, a3, 1
	.loc 1 1892 0
	l16ui	a4, a4, 0
.LVL1145:
	.loc 1 1893 0
	add.n	a6, a2, a5
	addi.n	a6, a6, 1
	s32i.n	a6, sp, 16
	extui	a8, a4, 0, 1
.LVL1146:
	sext	a6, a6, 15
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 44
.LVL1147:
	s32i	a8, sp, 76
	.loc 1 1896 0
	bnez.n	a8, .L598
	l32r	a7, .LC139
.LVL1148:
	l32i.n	a9, sp, 16
	l32i.n	a6, sp, 32
	l8ui	a14, a7, 1
	l32i.n	a5, sp, 20
	add.n	a10, a9, a6
	l8ui	a6, a7, 0
	slli	a14, a14, 8
	add.n	a11, a9, a5
	or	a5, a14, a6
	l8ui	a14, a7, 2
	mov.n	a13, a2
	slli	a14, a14, 16
	or	a14, a14, a5
	mov.n	a15, a14
	mov.n	a12, a3
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	barVert
.LVL1149:
.L598:
	movi.n	a5, 2
	and	a5, a4, a5
	s32i	a5, sp, 80
	.loc 1 1897 0
	bnez.n	a5, .L599
	l32r	a7, .LC139
	l32i.n	a8, sp, 16
	l8ui	a14, a7, 1
	l8ui	a6, a7, 0
	slli	a14, a14, 8
	or	a5, a14, a6
	l8ui	a14, a7, 2
	l32i.n	a9, sp, 20
	slli	a14, a14, 16
	add.n	a11, a8, a9
	or	a14, a14, a5
	l32i.n	a10, sp, 24
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	call8	barVert
.LVL1150:
.L599:
	movi.n	a5, 4
	and	a5, a4, a5
	s32i	a5, sp, 84
	.loc 1 1898 0
	bnez.n	a5, .L600
	l32r	a7, .LC139
	l32i.n	a5, sp, 16
	l32i.n	a6, sp, 32
	l8ui	a14, a7, 1
	add.n	a10, a5, a6
	l8ui	a6, a7, 0
	slli	a14, a14, 8
	or	a5, a14, a6
	l8ui	a14, a7, 2
	l32i.n	a11, sp, 40
	slli	a14, a14, 16
	or	a14, a14, a5
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a10, a10, 15
	call8	barVert
.LVL1151:
.L600:
	movi.n	a5, 8
	and	a5, a4, a5
	s32i	a5, sp, 88
	.loc 1 1899 0
	bnez.n	a5, .L601
	l32r	a7, .LC139
	l32i.n	a11, sp, 40
	l8ui	a14, a7, 1
	l8ui	a6, a7, 0
	slli	a14, a14, 8
	or	a5, a14, a6
	l8ui	a14, a7, 2
	l32i.n	a10, sp, 24
	slli	a14, a14, 16
	or	a14, a14, a5
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	call8	barVert
.LVL1152:
.L601:
	movi.n	a5, 0x10
	and	a5, a4, a5
	s32i	a5, sp, 92
	.loc 1 1900 0
	bnez.n	a5, .L602
	l32r	a7, .LC139
	l32i.n	a8, sp, 16
	l8ui	a14, a7, 1
	l8ui	a6, a7, 0
	slli	a14, a14, 8
	or	a5, a14, a6
	l8ui	a14, a7, 2
	l32i.n	a9, sp, 20
	slli	a14, a14, 16
	addx2	a11, a8, a9
	or	a14, a14, a5
	l32i.n	a10, sp, 24
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	call8	barHor
.LVL1153:
.L602:
	movi.n	a5, 0x20
	and	a5, a4, a5
	s32i	a5, sp, 96
	.loc 1 1901 0
	bnez.n	a5, .L603
	l32r	a7, .LC139
	l32i.n	a5, sp, 16
	l32i.n	a6, sp, 20
	l8ui	a14, a7, 1
	add.n	a11, a5, a6
	l8ui	a6, a7, 0
	slli	a14, a14, 8
	or	a5, a14, a6
	l8ui	a14, a7, 2
	l32i.n	a10, sp, 24
	slli	a14, a14, 16
	or	a14, a14, a5
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	call8	barHor
.LVL1154:
.L603:
	movi.n	a5, 0x40
	and	a5, a4, a5
	s32i	a5, sp, 100
	.loc 1 1902 0
	bnez.n	a5, .L604
	l32r	a7, .LC139
	l32i.n	a11, sp, 40
	l8ui	a14, a7, 1
	l8ui	a6, a7, 0
	slli	a14, a14, 8
	or	a5, a14, a6
	l8ui	a14, a7, 2
	l32i.n	a10, sp, 24
	slli	a14, a14, 16
	or	a14, a14, a5
	mov.n	a15, a14
	mov.n	a13, a2
	mov.n	a12, a3
	call8	barHor
.LVL1155:
.L604:
	movi	a5, 0x80
	and	a5, a4, a5
	s32i	a5, sp, 104
	.loc 1 1904 0
	bnez.n	a5, .L606
	.loc 1 1906 0
	l32i.n	a8, sp, 44
	l32i.n	a9, sp, 32
	l32i.n	a6, sp, 16
	srai	a5, a8, 1
	l32i.n	a8, sp, 20
	add.n	a5, a5, a9
	addx2	a7, a6, a8
	l32i.n	a9, sp, 28
	l32r	a6, .LC139
	addi.n	a8, a9, 1
	l8ui	a9, a6, 1
	l8ui	a10, a6, 0
	l8ui	a14, a6, 2
	slli	a9, a9, 8
	or	a9, a9, a10
	extui	a5, a5, 0, 16
	extui	a7, a7, 0, 16
	slli	a14, a14, 16
	or	a14, a14, a9
	mov.n	a13, a8
	mov.n	a12, a8
	sext	a11, a7, 15
	sext	a10, a5, 15
	s32i	a8, sp, 132
	call8	_fillRect
.LVL1156:
	.loc 1 1907 0
	l32r	a9, .LC125
	l32i	a8, sp, 132
	l8ui	a9, a9, 6
	beqz.n	a9, .L606
	l8ui	a9, a6, 1
	l8ui	a10, a6, 0
	l8ui	a6, a6, 2
	slli	a9, a9, 8
	or	a9, a9, a10
	slli	a6, a6, 16
	l32r	a14, .LC140
	or	a6, a6, a9
	and	a14, a6, a14
	mov.n	a13, a8
	mov.n	a12, a8
	mov.n	a11, a7
	mov.n	a10, a5
	call8	_drawRect
.LVL1157:
.L606:
	sext	a5, a2, 15
	s32i	a5, sp, 68
	movi	a5, 0x100
	and	a5, a4, a5
	s32i	a5, sp, 108
	.loc 1 1909 0
	bnez.n	a5, .L609
	.loc 1 1911 0
	l32i.n	a8, sp, 44
	l32i.n	a9, sp, 32
	srai	a6, a8, 1
	l32i.n	a8, sp, 20
	add.n	a6, a6, a9
	l32i.n	a9, sp, 28
	l32r	a7, .LC139
	l32i	a10, sp, 68
	addi.n	a5, a8, 1
	l32i.n	a8, sp, 16
	add.n	a5, a9, a5
	add.n	a5, a8, a5
	addi.n	a8, a9, 1
	srai	a9, a10, 1
	l8ui	a10, a7, 1
	l8ui	a11, a7, 0
	l8ui	a14, a7, 2
	slli	a10, a10, 8
	or	a10, a10, a11
	extui	a6, a6, 0, 16
	extui	a5, a5, 0, 16
	slli	a14, a14, 16
	or	a14, a14, a10
	mov.n	a13, a9
	mov.n	a12, a8
	sext	a10, a6, 15
	sext	a11, a5, 15
	s32i	a8, sp, 132
	s32i	a9, sp, 136
	call8	_fillRect
.LVL1158:
	.loc 1 1912 0
	l32r	a10, .LC125
	l32i	a8, sp, 132
	l8ui	a10, a10, 6
	l32i	a9, sp, 136
	beqz.n	a10, .L609
	l8ui	a10, a7, 1
	l8ui	a11, a7, 0
	l8ui	a7, a7, 2
	slli	a10, a10, 8
	or	a10, a10, a11
	slli	a7, a7, 16
	l32r	a14, .LC140
	or	a7, a7, a10
	and	a14, a7, a14
	mov.n	a13, a9
	mov.n	a12, a8
	mov.n	a11, a5
	mov.n	a10, a6
	call8	_drawRect
.LVL1159:
.L609:
	l32r	a5, .LC150
	and	a5, a4, a5
	s32i	a5, sp, 112
	.loc 1 1914 0
	bnez.n	a5, .L612
	.loc 1 1916 0
	l32i.n	a5, sp, 44
	l32i.n	a8, sp, 32
	l32i	a9, sp, 68
	srai	a6, a5, 1
	add.n	a6, a6, a8
	srai	a8, a9, 1
	l32i.n	a9, sp, 20
	l32r	a7, .LC139
	addi.n	a5, a9, 1
	l32i.n	a9, sp, 28
	l8ui	a10, a7, 1
	l8ui	a11, a7, 0
	l8ui	a14, a7, 2
	add.n	a5, a9, a5
	add.n	a5, a5, a8
	slli	a10, a10, 8
	addi.n	a9, a9, 1
	or	a10, a10, a11
	extui	a6, a6, 0, 16
	extui	a5, a5, 0, 16
	slli	a14, a14, 16
	or	a14, a14, a10
	mov.n	a13, a8
	mov.n	a12, a9
	sext	a10, a6, 15
	sext	a11, a5, 15
	s32i	a8, sp, 132
	s32i	a9, sp, 136
	call8	_fillRect
.LVL1160:
	.loc 1 1917 0
	l32r	a10, .LC125
	l32i	a8, sp, 132
	l8ui	a10, a10, 6
	l32i	a9, sp, 136
	beqz.n	a10, .L612
	l8ui	a10, a7, 1
	l8ui	a11, a7, 0
	l8ui	a7, a7, 2
	slli	a10, a10, 8
	or	a10, a10, a11
	slli	a7, a7, 16
	l32r	a14, .LC140
	or	a7, a7, a10
	and	a14, a7, a14
	mov.n	a13, a8
	mov.n	a12, a9
	mov.n	a11, a5
	mov.n	a10, a6
	call8	_drawRect
.LVL1161:
.L612:
	movi	a5, 0x200
	and	a5, a4, a5
	s32i	a5, sp, 116
	.loc 1 1919 0
	bnez.n	a5, .L615
	.loc 1 1921 0
	l32i.n	a5, sp, 32
	l32i.n	a6, sp, 28
	addi.n	a4, a5, 1
.LVL1162:
	l32i.n	a5, sp, 28
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	addi.n	a7, a5, 1
	l32r	a5, .LC139
	add.n	a4, a6, a4
	add.n	a6, a8, a9
	l8ui	a8, a5, 1
	l8ui	a9, a5, 0
	l8ui	a14, a5, 2
	slli	a8, a8, 8
	or	a8, a8, a9
	extui	a4, a4, 0, 16
	extui	a6, a6, 0, 16
	slli	a14, a14, 16
	or	a14, a14, a8
	mov.n	a13, a7
	mov.n	a12, a2
	sext	a11, a6, 15
	sext	a10, a4, 15
	call8	_fillRect
.LVL1163:
	.loc 1 1922 0
	l32r	a8, .LC125
	l8ui	a8, a8, 6
	beqz.n	a8, .L615
	l8ui	a8, a5, 1
	l8ui	a9, a5, 0
	l8ui	a5, a5, 2
	slli	a8, a8, 8
	or	a8, a8, a9
	slli	a5, a5, 16
	l32r	a14, .LC140
	or	a5, a5, a8
	and	a14, a5, a14
	mov.n	a13, a7
	mov.n	a12, a2
	mov.n	a11, a6
	mov.n	a10, a4
	call8	_drawRect
.LVL1164:
.L615:
	.loc 1 1926 0
	l32i	a6, sp, 76
	beqz.n	a6, .L617
	l32r	a4, .LC125
	l32i.n	a8, sp, 16
	l16ui	a15, a4, 14
	l32i.n	a9, sp, 20
	l32i.n	a5, sp, 32
	l8ui	a4, a4, 16
	add.n	a11, a8, a9
	add.n	a10, a8, a5
	slli	a4, a4, 16
	l32i.n	a14, sp, 0
	or	a15, a4, a15
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	sext	a10, a10, 15
	call8	barVert
.LVL1165:
.L617:
	.loc 1 1927 0
	l32i	a6, sp, 80
	beqz.n	a6, .L618
	l32r	a4, .LC125
	l32i.n	a8, sp, 16
	l16ui	a15, a4, 14
	l32i.n	a9, sp, 20
	l8ui	a4, a4, 16
	add.n	a11, a8, a9
	slli	a4, a4, 16
	l32i.n	a14, sp, 0
	l32i.n	a10, sp, 24
	or	a15, a4, a15
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	call8	barVert
.LVL1166:
.L618:
	.loc 1 1928 0
	l32i	a4, sp, 84
	beqz.n	a4, .L619
	l32r	a4, .LC125
	l32i.n	a5, sp, 16
	l16ui	a15, a4, 14
	l32i.n	a6, sp, 32
	l8ui	a4, a4, 16
	add.n	a10, a5, a6
	slli	a4, a4, 16
	l32i.n	a14, sp, 0
	l32i.n	a11, sp, 40
	or	a15, a4, a15
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a10, a10, 15
	call8	barVert
.LVL1167:
.L619:
	.loc 1 1929 0
	l32i	a8, sp, 88
	beqz.n	a8, .L620
	l32r	a4, .LC125
	l32i.n	a14, sp, 0
	l16ui	a15, a4, 14
	l8ui	a4, a4, 16
	l32i.n	a11, sp, 40
	slli	a4, a4, 16
	l32i.n	a10, sp, 24
	or	a15, a4, a15
	mov.n	a13, a2
	mov.n	a12, a3
	call8	barVert
.LVL1168:
.L620:
	.loc 1 1930 0
	l32i	a9, sp, 92
	beqz.n	a9, .L621
	l32r	a4, .LC125
	l32i.n	a5, sp, 16
	l16ui	a15, a4, 14
	l32i.n	a6, sp, 20
	l8ui	a4, a4, 16
	addx2	a11, a5, a6
	slli	a4, a4, 16
	l32i.n	a14, sp, 0
	l32i.n	a10, sp, 24
	or	a15, a4, a15
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	call8	barHor
.LVL1169:
.L621:
	.loc 1 1931 0
	l32i	a8, sp, 96
	beqz.n	a8, .L622
	l32r	a4, .LC125
	l32i.n	a9, sp, 16
	l16ui	a15, a4, 14
	l32i.n	a5, sp, 20
	l8ui	a4, a4, 16
	add.n	a11, a9, a5
	slli	a4, a4, 16
	l32i.n	a14, sp, 0
	l32i.n	a10, sp, 24
	or	a15, a4, a15
	mov.n	a13, a2
	mov.n	a12, a3
	sext	a11, a11, 15
	call8	barHor
.LVL1170:
.L622:
	.loc 1 1932 0
	l32i	a6, sp, 100
	beqz.n	a6, .L623
	l32r	a4, .LC125
	l32i.n	a14, sp, 0
	l16ui	a15, a4, 14
	l8ui	a4, a4, 16
	l32i.n	a11, sp, 40
	slli	a4, a4, 16
	l32i.n	a10, sp, 24
	or	a15, a4, a15
	mov.n	a13, a2
	mov.n	a12, a3
	call8	barHor
.LVL1171:
.L623:
	.loc 1 1934 0
	l32i	a8, sp, 104
	beqz.n	a8, .L625
	.loc 1 1936 0
	l32i.n	a9, sp, 44
	l32i.n	a4, sp, 32
	l32i.n	a5, sp, 16
	l32i.n	a6, sp, 20
	srai	a3, a9, 1
.LVL1172:
	l32i.n	a8, sp, 28
	add.n	a3, a3, a4
	addx2	a4, a5, a6
	extui	a3, a3, 0, 16
	addi.n	a5, a8, 1
	extui	a4, a4, 0, 16
	l32i.n	a14, sp, 0
	mov.n	a13, a5
	mov.n	a12, a5
	sext	a11, a4, 15
	sext	a10, a3, 15
	call8	_fillRect
.LVL1173:
	.loc 1 1937 0
	l32r	a6, .LC125
	l8ui	a7, a6, 6
	beqz.n	a7, .L625
	l16ui	a14, a6, 14
	l8ui	a6, a6, 16
	mov.n	a13, a5
	slli	a6, a6, 16
	or	a14, a6, a14
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	_drawRect
.LVL1174:
.L625:
	.loc 1 1939 0
	l32i	a9, sp, 108
	beqz.n	a9, .L628
	.loc 1 1941 0
	l32i.n	a3, sp, 44
	l32i.n	a6, sp, 20
	l32i.n	a8, sp, 28
	l32i.n	a5, sp, 32
	srai	a4, a3, 1
	l32i.n	a9, sp, 16
	addi.n	a3, a6, 1
	add.n	a4, a4, a5
	add.n	a3, a8, a3
	addi.n	a5, a8, 1
	l32i	a8, sp, 68
	add.n	a3, a9, a3
	srai	a6, a8, 1
	extui	a4, a4, 0, 16
	extui	a3, a3, 0, 16
	l32i.n	a14, sp, 0
	mov.n	a13, a6
	mov.n	a12, a5
	sext	a11, a3, 15
	sext	a10, a4, 15
	call8	_fillRect
.LVL1175:
	.loc 1 1942 0
	l32r	a7, .LC125
	l8ui	a8, a7, 6
	beqz.n	a8, .L628
	l16ui	a14, a7, 14
	l8ui	a7, a7, 16
	mov.n	a13, a6
	slli	a7, a7, 16
	or	a14, a7, a14
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	_drawRect
.LVL1176:
.L628:
	.loc 1 1944 0
	l32i	a9, sp, 112
	beqz.n	a9, .L631
	.loc 1 1946 0
	l32i.n	a4, sp, 44
	l32i.n	a8, sp, 20
	l32i.n	a5, sp, 32
	l32i	a6, sp, 68
	l32i.n	a9, sp, 28
	srai	a3, a4, 1
	addi.n	a4, a8, 1
	add.n	a3, a3, a5
	add.n	a4, a9, a4
	srai	a5, a6, 1
	add.n	a4, a4, a5
	addi.n	a6, a9, 1
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 16
	l32i.n	a14, sp, 0
	mov.n	a13, a5
	mov.n	a12, a6
	sext	a11, a4, 15
	sext	a10, a3, 15
	call8	_fillRect
.LVL1177:
	.loc 1 1947 0
	l32r	a7, .LC125
	l8ui	a8, a7, 6
	beqz.n	a8, .L631
	l16ui	a14, a7, 14
	l8ui	a7, a7, 16
	mov.n	a13, a5
	slli	a7, a7, 16
	or	a14, a7, a14
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a3
	call8	_drawRect
.LVL1178:
.L631:
	.loc 1 1949 0
	l32i	a3, sp, 116
	beqz.n	a3, .L596
	.loc 1 1951 0
	l32i.n	a4, sp, 32
	l32i.n	a5, sp, 28
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	addi.n	a3, a4, 1
	add.n	a3, a5, a3
	add.n	a6, a8, a9
	addi.n	a4, a5, 1
	extui	a3, a3, 0, 16
	extui	a6, a6, 0, 16
	l32i.n	a14, sp, 0
	sext	a10, a3, 15
	mov.n	a13, a4
	mov.n	a12, a2
	sext	a11, a6, 15
	call8	_fillRect
.LVL1179:
	.loc 1 1952 0
	l32r	a10, .LC125
	l8ui	a5, a10, 6
	beqz.n	a5, .L596
	l32r	a12, .LC151
	mov.n	a13, a4
	l8ui	a5, a12, 2
	l16ui	a14, a12, 0
	slli	a5, a5, 16
	or	a14, a5, a14
	mov.n	a12, a2
	mov.n	a11, a6
	mov.n	a10, a3
	call8	_drawRect
.LVL1180:
.L596:
.LBE96:
.LBE94:
.LBE93:
	.loc 1 2062 0
	l32r	a4, .LC131
	l32i.n	a3, sp, 48
	addi.n	a2, a3, 2
.LVL1181:
	l32i.n	a3, a4, 0
	add.n	a2, a2, a3
	s32i.n	a2, a4, 0
.LVL1182:
.L536:
	.loc 1 2016 0 discriminator 2
	l32i.n	a4, sp, 52
	addi.n	a4, a4, 1
	s32i.n	a4, sp, 52
.LVL1183:
.L534:
	.loc 1 2016 0 is_stmt 0 discriminator 1
	l32i.n	a5, sp, 52
	l32i	a6, sp, 120
	blt	a5, a6, .L634
.LVL1184:
.L514:
	retw.n
.LFE81:
	.size	TFT_print, .-TFT_print
	.section	.text.TFT_setRotation,"ax",@progbits
	.literal_position
	.literal .LC161, orientation
	.literal .LC162, dispWin
	.literal .LC163, _width
	.literal .LC164, _height
	.literal .LC165, _bg
	.align	4
	.global	TFT_setRotation
	.type	TFT_setRotation, @function
TFT_setRotation:
.LFB82:
	.loc 1 2076 0 is_stmt 1
.LVL1185:
	entry	sp, 48
.LCFI48:
	.loc 1 2076 0
	extui	a10, a2, 0, 8
	.loc 1 2077 0
	bltui	a10, 4, .L741
.LBB97:
	.loc 1 2078 0
	movi.n	a2, -8
.LVL1186:
	and	a10, a10, a2
.LVL1187:
	s8i	a10, sp, 0
	.loc 1 2079 0
	call8	disp_select
.LVL1188:
	bnez.n	a10, .L743
	.loc 1 2080 0
	movi.n	a12, 1
	mov.n	a11, sp
	movi.n	a10, 0x36
	call8	disp_spi_transfer_cmd_data
.LVL1189:
	.loc 1 2081 0
	call8	disp_deselect
.LVL1190:
	j	.L743
.LVL1191:
.L741:
.LBE97:
	.loc 1 2084 0
	l32r	a2, .LC161
.LVL1192:
	s8i	a10, a2, 0
	.loc 1 2085 0
	call8	_tft_setRotation
.LVL1193:
.L743:
	.loc 1 2088 0
	l32r	a8, .LC162
	movi.n	a2, 0
	s16i	a2, a8, 0
	.loc 1 2089 0
	s16i	a2, a8, 2
	.loc 1 2090 0
	l32r	a2, .LC163
	.loc 1 2093 0
	l32r	a11, .LC165
	.loc 1 2090 0
	l32i.n	a9, a2, 0
	.loc 1 2091 0
	l32r	a2, .LC164
	.loc 1 2090 0
	addi.n	a9, a9, -1
	s16i	a9, a8, 4
	.loc 1 2091 0
	l32i.n	a9, a2, 0
	.loc 1 2093 0
	l8ui	a10, a11, 2
	.loc 1 2091 0
	addi.n	a9, a9, -1
	s16i	a9, a8, 6
	.loc 1 2093 0
	l8ui	a8, a11, 1
	l8ui	a9, a11, 0
	slli	a8, a8, 8
	or	a8, a8, a9
	slli	a10, a10, 16
	or	a10, a10, a8
	call8	TFT_fillScreen
.LVL1194:
	retw.n
.LFE82:
	.size	TFT_setRotation, .-TFT_setRotation
	.section	.rodata.str1.1
.LC168:
	.string	"TFT_invertDisplay ERROR !!!!"
	.section	.text.TFT_invertDisplay,"ax",@progbits
	.literal_position
	.literal .LC169, .LC168
	.align	4
	.global	TFT_invertDisplay
	.type	TFT_invertDisplay, @function
TFT_invertDisplay:
.LFB83:
	.loc 1 2100 0
.LVL1195:
	entry	sp, 32
.LCFI49:
	.loc 1 2100 0
	extui	a2, a2, 0, 8
	.loc 1 2101 0
	call8	disp_select
.LVL1196:
	beqz.n	a10, .L745
	.loc 1 2102 0
	l32r	a10, .LC169
	call8	puts
.LVL1197:
	.loc 1 2103 0
	retw.n
.L745:
	.loc 1 2105 0
	movi.n	a10, 0x21
	beqi	a2, 1, .L749
.L747:
	.loc 1 2106 0
	movi.n	a10, 0x20
.L749:
	call8	disp_spi_transfer_cmd
.LVL1198:
	.loc 1 2108 0
	call8	disp_deselect
.LVL1199:
	retw.n
.LFE83:
	.size	TFT_invertDisplay, .-TFT_invertDisplay
	.section	.text.TFT_setGammaCurve,"ax",@progbits
	.align	4
	.global	TFT_setGammaCurve
	.type	TFT_setGammaCurve, @function
TFT_setGammaCurve:
.LFB84:
	.loc 1 2115 0
.LVL1200:
	entry	sp, 48
.LCFI50:
	.loc 1 2116 0
	movi.n	a12, 1
	extui	a2, a2, 0, 2
.LVL1201:
	ssl	a2
	sll	a2, a12
	.loc 1 2117 0
	mov.n	a11, sp
	movi.n	a10, 0x26
	.loc 1 2116 0
	s8i	a2, sp, 0
	.loc 1 2117 0
	call8	disp_spi_transfer_cmd_data
.LVL1202:
	retw.n
.LFE84:
	.size	TFT_setGammaCurve, .-TFT_setGammaCurve
	.global	__subdf3
	.global	__fixunsdfsi
	.section	.text.HSBtoRGB,"ax",@progbits
	.literal_position
	.literal .LC170, 0x00000000
	.literal .LC171, 0x43b40000
	.literal .LC172, 0x00000000, 0x404e0000
	.literal .LC173, 0x00000000, 0x3ff00000
	.literal .LC174, .L755
	.literal .LC175, 0x00000000, 0x406fe000
	.align	4
	.global	HSBtoRGB
	.type	HSBtoRGB, @function
HSBtoRGB:
.LFB85:
	.loc 1 2122 0
.LVL1203:
	entry	sp, 80
.LCFI51:
.LVL1204:
	.loc 1 2122 0
	wfr	f4, a2
	.loc 1 2127 0
	l32r	a2, .LC170
.LVL1205:
	.loc 1 2122 0
	wfr	f3, a3
	.loc 1 2127 0
	wfr	f5, a2
	oeq.s	b0, f3, f5
	.loc 1 2122 0
	wfr	f0, a4
	.loc 1 2130 0
	wfr	f1, a4
	.loc 1 2129 0
	wfr	f2, a4
	.loc 1 2127 0
	bt	b0, .L752
.LBB98:
	.loc 1 2133 0
	l32r	a2, .LC171
	.loc 1 2136 0
	rfr	a10, f5
	.loc 1 2133 0
	wfr	f1, a2
	oeq.s	b0, f4, f1
.LVL1206:
	.loc 1 2136 0
	rfr	a2, f4
	movf	a10, a2, b0
.LVL1207:
	s32i.n	a4, sp, 36
	s32i.n	a3, sp, 28
	call8	__extendsfdf2
.LVL1208:
	l32r	a12, .LC172
	l32r	a13, .LC172+4
	call8	__divdf3
.LVL1209:
	mov.n	a5, a11
	mov.n	a4, a10
.LVL1210:
	call8	__fixdfsi
.LVL1211:
	mov.n	a2, a10
.LVL1212:
	.loc 1 2137 0
	call8	__floatsidf
.LVL1213:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__subdf3
.LVL1214:
	call8	__truncdfsf2
.LVL1215:
	.loc 1 2139 0
	lsi	f0, sp, 36
.LVL1216:
	.loc 1 2137 0
	s32i.n	a10, sp, 16
.LVL1217:
	.loc 1 2139 0
	rfr	a10, f0
.LVL1218:
	call8	__extendsfdf2
.LVL1219:
	lsi	f3, sp, 28
	mov.n	a4, a10
	rfr	a10, f3
	mov.n	a5, a11
	call8	__extendsfdf2
.LVL1220:
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a12, a10
	mov.n	a13, a11
	l32r	a10, .LC173
	l32r	a11, .LC173+4
	s32i.n	a8, sp, 20
	s32i.n	a9, sp, 24
	call8	__subdf3
.LVL1221:
	mov.n	a12, a4
	mov.n	a13, a5
	call8	__muldf3
.LVL1222:
	call8	__truncdfsf2
.LVL1223:
	.loc 1 2140 0
	lsi	f3, sp, 28
	lsi	f1, sp, 16
	.loc 1 2139 0
	wfr	f2, a10
.LVL1224:
	.loc 1 2140 0
	mul.s	f1, f3, f1
	ssi	f2, sp, 32
	rfr	a10, f1
.LVL1225:
	call8	__extendsfdf2
.LVL1226:
	mov.n	a12, a10
	mov.n	a13, a11
	l32r	a10, .LC173
	l32r	a11, .LC173+4
	call8	__subdf3
.LVL1227:
	mov.n	a12, a4
	mov.n	a13, a5
	call8	__muldf3
.LVL1228:
	call8	__truncdfsf2
.LVL1229:
	wfr	f1, a10
.LVL1230:
	.loc 1 2141 0
	l32i.n	a10, sp, 16
.LVL1231:
	ssi	f1, sp, 28
	call8	__extendsfdf2
.LVL1232:
	mov.n	a12, a10
	mov.n	a13, a11
	l32r	a10, .LC173
	l32r	a11, .LC173+4
	call8	__subdf3
.LVL1233:
	l32i.n	a8, sp, 20
	l32i.n	a9, sp, 24
	mov.n	a12, a8
	mov.n	a13, a9
	call8	__muldf3
.LVL1234:
	mov.n	a12, a10
	mov.n	a13, a11
	l32r	a10, .LC173
	l32r	a11, .LC173+4
	call8	__subdf3
.LVL1235:
	mov.n	a12, a4
	mov.n	a13, a5
	call8	__muldf3
.LVL1236:
	call8	__truncdfsf2
.LVL1237:
	wfr	f3, a10
.LVL1238:
	.loc 1 2143 0
	lsi	f0, sp, 36
.LVL1239:
	lsi	f1, sp, 28
.LVL1240:
	lsi	f2, sp, 32
.LVL1241:
	bgeui	a2, 6, .L762
	l32r	a3, .LC174
.LVL1242:
	addx4	a2, a2, a3
.LVL1243:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.HSBtoRGB,"a",@progbits
	.align	4
	.align	4
.L755:
	.word	.L763
	.word	.L756
	.word	.L757
	.word	.L758
	.word	.L759
	.word	.L752
	.section	.text.HSBtoRGB
.L756:
.LVL1244:
	.loc 1 2153 0
	mov.s	f3, f0
	.loc 1 2150 0
	mov.s	f0, f1
.LVL1245:
.L763:
	.loc 1 2152 0
	mov.s	f1, f2
.LVL1246:
.L764:
	.loc 1 2151 0
	mov.s	f2, f3
.LVL1247:
	.loc 1 2153 0
	j	.L752
.LVL1248:
.L757:
	.loc 1 2158 0
	mov.s	f3, f0
	.loc 1 2157 0
	wfr	f1, a10
.LVL1249:
	.loc 1 2155 0
	mov.s	f0, f2
.LVL1250:
	j	.L764
.LVL1251:
.L758:
	.loc 1 2163 0
	mov.s	f3, f0
	.loc 1 2160 0
	mov.s	f0, f2
.LVL1252:
	.loc 1 2161 0
	mov.s	f2, f1
.LVL1253:
	.loc 1 2162 0
	mov.s	f1, f3
.LVL1254:
	.loc 1 2163 0
	j	.L752
.LVL1255:
.L759:
	.loc 1 2167 0
	mov.s	f1, f0
.LVL1256:
	.loc 1 2165 0
	wfr	f0, a10
.LVL1257:
	.loc 1 2168 0
	j	.L752
.LVL1258:
.L762:
	.loc 1 2177 0
	l32r	a2, .LC170
.LVL1259:
	wfr	f1, a2
.LVL1260:
	.loc 1 2176 0
	wfr	f2, a2
.LVL1261:
	.loc 1 2175 0
	wfr	f0, a2
.LVL1262:
.L752:
.LBE98:
	.loc 1 2187 0
	rfr	a10, f0
	ssi	f1, sp, 28
	ssi	f2, sp, 32
	call8	__extendsfdf2
.LVL1263:
	l32r	a12, .LC175
	l32r	a13, .LC175+4
	movi.n	a3, -4
	call8	__muldf3
.LVL1264:
	call8	__fixunsdfsi
.LVL1265:
	lsi	f2, sp, 32
.LVL1266:
	and	a2, a10, a3
	rfr	a10, f2
	call8	__extendsfdf2
.LVL1267:
	l32r	a12, .LC175
	l32r	a13, .LC175+4
	extui	a2, a2, 0, 8
	call8	__muldf3
.LVL1268:
	call8	__fixunsdfsi
.LVL1269:
	lsi	f1, sp, 28
.LVL1270:
	and	a4, a10, a3
	rfr	a10, f1
	call8	__extendsfdf2
.LVL1271:
	l32r	a12, .LC175
	l32r	a13, .LC175+4
	extui	a4, a4, 0, 8
	call8	__muldf3
.LVL1272:
	call8	__fixunsdfsi
.LVL1273:
	and	a10, a10, a3
	slli	a4, a4, 8
	extui	a10, a10, 0, 8
	slli	a10, a10, 16
	or	a2, a2, a4
	.loc 1 2188 0
	or	a2, a2, a10
	retw.n
.LFE85:
	.size	HSBtoRGB, .-HSBtoRGB
	.section	.text.TFT_setclipwin,"ax",@progbits
	.literal_position
	.literal .LC178, dispWin
	.literal .LC179, _width
	.literal .LC180, _height
	.align	4
	.global	TFT_setclipwin
	.type	TFT_setclipwin, @function
TFT_setclipwin:
.LFB86:
	.loc 1 2191 0
.LVL1274:
	entry	sp, 32
.LCFI52:
	.loc 1 2197 0
	l32r	a9, .LC179
	.loc 1 2192 0
	l32r	a8, .LC178
	.loc 1 2191 0
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 16
	extui	a5, a5, 0, 16
	.loc 1 2197 0
	l32i.n	a9, a9, 0
	.loc 1 2192 0
	s16i	a2, a8, 0
	.loc 1 2193 0
	s16i	a3, a8, 2
	.loc 1 2194 0
	s16i	a4, a8, 4
	.loc 1 2195 0
	s16i	a5, a8, 6
	.loc 1 2197 0
	blt	a4, a9, .L766
	.loc 1 2197 0 is_stmt 0 discriminator 1
	addi.n	a9, a9, -1
	s16i	a9, a8, 4
.L766:
	.loc 1 2198 0 is_stmt 1
	l32r	a4, .LC180
.LVL1275:
	l32i.n	a9, a4, 0
	blt	a5, a9, .L767
	.loc 1 2198 0 is_stmt 0 discriminator 1
	addi.n	a9, a9, -1
	s16i	a9, a8, 6
.L767:
	.loc 1 2199 0 is_stmt 1
	l16ui	a9, a8, 4
	bgeu	a9, a2, .L768
	.loc 1 2199 0 is_stmt 0 discriminator 1
	s16i	a9, a8, 0
.L768:
	.loc 1 2200 0 is_stmt 1
	l16ui	a9, a8, 6
	bgeu	a9, a3, .L765
	.loc 1 2200 0 is_stmt 0 discriminator 1
	s16i	a9, a8, 2
.L765:
	retw.n
.LFE86:
	.size	TFT_setclipwin, .-TFT_setclipwin
	.section	.text.TFT_resetclipwin,"ax",@progbits
	.literal_position
	.literal .LC181, dispWin
	.literal .LC182, _width
	.literal .LC183, _height
	.align	4
	.global	TFT_resetclipwin
	.type	TFT_resetclipwin, @function
TFT_resetclipwin:
.LFB87:
	.loc 1 2205 0 is_stmt 1
	entry	sp, 32
.LCFI53:
	.loc 1 2206 0
	l32r	a9, .LC182
	l32r	a8, .LC181
	l32i.n	a9, a9, 0
	addi.n	a9, a9, -1
	s16i	a9, a8, 4
	.loc 1 2207 0
	l32r	a9, .LC183
	l32i.n	a9, a9, 0
	addi.n	a9, a9, -1
	s16i	a9, a8, 6
	.loc 1 2208 0
	movi.n	a9, 0
	s16i	a9, a8, 0
	.loc 1 2209 0
	s16i	a9, a8, 2
	retw.n
.LFE87:
	.size	TFT_resetclipwin, .-TFT_resetclipwin
	.section	.text.set_7seg_font_atrib,"ax",@progbits
	.literal_position
	.literal .LC184, cfont
	.align	4
	.global	set_7seg_font_atrib
	.type	set_7seg_font_atrib, @function
set_7seg_font_atrib:
.LFB88:
	.loc 1 2214 0
.LVL1276:
	entry	sp, 48
.LCFI54:
	.loc 1 2215 0
	l32r	a8, .LC184
	.loc 1 2214 0
	s32i.n	a5, sp, 0
	.loc 1 2215 0
	l8ui	a9, a8, 13
	.loc 1 2214 0
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 2215 0
	bnei	a9, 2, .L771
	.loc 1 2217 0
	bltui	a2, 6, .L776
	.loc 1 2218 0
	movi.n	a9, 0x28
	minu	a2, a2, a9
.LVL1277:
	j	.L774
.L776:
	.loc 1 2217 0
	movi.n	a2, 6
.LVL1278:
.L774:
	.loc 1 2219 0
	movi.n	a9, 1
	ssr	a9
	srl	a10, a2
	.loc 1 2223 0
	s8i	a2, a8, 4
	.loc 1 2226 0
	l16ui	a2, sp, 0
.LVL1279:
	.loc 1 2219 0
	moveqz	a3, a9, a3
.LVL1280:
	movi.n	a9, 0xc
	minu	a9, a10, a9
.LVL1281:
	.loc 1 2226 0
	s16i	a2, a8, 14
	l8ui	a2, sp, 2
	.loc 1 2224 0
	minu	a3, a3, a9
.LVL1282:
	s8i	a3, a8, 5
	.loc 1 2225 0
	s8i	a4, a8, 6
	.loc 1 2226 0
	s8i	a2, a8, 16
.LVL1283:
.L771:
	retw.n
.LFE88:
	.size	set_7seg_font_atrib, .-set_7seg_font_atrib
	.section	.text.TFT_getfontsize,"ax",@progbits
	.literal_position
	.literal .LC185, cfont
	.align	4
	.global	TFT_getfontsize
	.type	TFT_getfontsize, @function
TFT_getfontsize:
.LFB89:
	.loc 1 2231 0
.LVL1284:
	entry	sp, 32
.LCFI55:
	.loc 1 2232 0
	l32r	a8, .LC185
	l8ui	a9, a8, 13
	bnei	a9, 1, .L779
	.loc 1 2233 0
	l8ui	a9, a8, 4
	beqz.n	a9, .L780
	j	.L784
.L780:
	.loc 1 2234 0
	l8ui	a9, a8, 12
.L784:
	s32i.n	a9, a2, 0
	.loc 1 2235 0
	l8ui	a2, a8, 5
.LVL1285:
	s32i.n	a2, a3, 0
	j	.L785
.LVL1286:
.L779:
	.loc 1 2236 0
	bnei	a9, 2, .L783
	.loc 1 2238 0
	call8	_7seg_width
.LVL1287:
	s32i.n	a10, a2, 0
	.loc 1 2239 0
	call8	_7seg_height
.LVL1288:
	s32i.n	a10, a3, 0
.LVL1289:
.L785:
	.loc 1 2245 0
	movi.n	a2, 1
	retw.n
.LVL1290:
.L783:
	.loc 1 2241 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 2242 0
	s32i.n	a8, a3, 0
	.loc 1 2243 0
	mov.n	a2, a8
.LVL1291:
	.loc 1 2246 0
	retw.n
.LFE89:
	.size	TFT_getfontsize, .-TFT_getfontsize
	.section	.text.TFT_getfontheight,"ax",@progbits
	.literal_position
	.literal .LC186, cfont
	.align	4
	.global	TFT_getfontheight
	.type	TFT_getfontheight, @function
TFT_getfontheight:
.LFB90:
	.loc 1 2250 0
	entry	sp, 32
.LCFI56:
	.loc 1 2251 0
	l32r	a9, .LC186
	l8ui	a8, a9, 13
	bnei	a8, 1, .L787
	.loc 1 2251 0 is_stmt 0 discriminator 1
	l8ui	a10, a9, 5
	j	.L788
.L787:
	.loc 1 2253 0 is_stmt 1
	movi.n	a10, 0
	.loc 1 2252 0
	bnei	a8, 2, .L788
	.loc 1 2252 0 is_stmt 0 discriminator 1
	call8	_7seg_height
.LVL1292:
.L788:
	.loc 1 2254 0 is_stmt 1
	mov.n	a2, a10
	retw.n
.LFE90:
	.size	TFT_getfontheight, .-TFT_getfontheight
	.section	.text.TFT_clearStringRect,"ax",@progbits
	.literal_position
	.literal .LC187, _bg
	.literal .LC188, dispWin
	.align	4
	.global	TFT_clearStringRect
	.type	TFT_clearStringRect, @function
TFT_clearStringRect:
.LFB77:
	.loc 1 1813 0
.LVL1293:
	entry	sp, 32
.LCFI57:
	.loc 1 1814 0
	mov.n	a10, a4
	call8	TFT_getStringWidth
.LVL1294:
	mov.n	a4, a10
.LVL1295:
	.loc 1 1815 0
	call8	TFT_getfontheight
.LVL1296:
	.loc 1 1816 0
	l32r	a8, .LC188
	l32r	a13, .LC187
	l16ui	a9, a8, 2
	l16ui	a8, a8, 0
	add.n	a11, a3, a9
	add.n	a2, a2, a8
.LVL1297:
	l8ui	a8, a13, 1
	l8ui	a9, a13, 0
	l8ui	a14, a13, 2
	slli	a8, a8, 8
	or	a8, a8, a9
	slli	a14, a14, 16
	sext	a13, a10, 15
	or	a14, a14, a8
	sext	a12, a4, 15
	sext	a11, a11, 15
	sext	a10, a2, 15
.LVL1298:
	call8	TFT_fillRect
.LVL1299:
	retw.n
.LFE77:
	.size	TFT_clearStringRect, .-TFT_clearStringRect
	.section	.text.TFT_saveClipWin,"ax",@progbits
	.literal_position
	.literal .LC191, dispWinTemp
	.literal .LC192, dispWin
	.align	4
	.global	TFT_saveClipWin
	.type	TFT_saveClipWin, @function
TFT_saveClipWin:
.LFB91:
	.loc 1 2258 0
	entry	sp, 32
.LCFI58:
	.loc 1 2259 0
	l32r	a9, .LC192
	l32r	a8, .LC191
	l16ui	a10, a9, 0
	s16i	a10, a8, 0
	.loc 1 2260 0
	l16ui	a10, a9, 2
	s16i	a10, a8, 2
	.loc 1 2261 0
	l16ui	a10, a9, 4
	.loc 1 2262 0
	l16ui	a9, a9, 6
	.loc 1 2261 0
	s16i	a10, a8, 4
	.loc 1 2262 0
	s16i	a9, a8, 6
	retw.n
.LFE91:
	.size	TFT_saveClipWin, .-TFT_saveClipWin
	.section	.text.TFT_restoreClipWin,"ax",@progbits
	.literal_position
	.literal .LC193, dispWin
	.literal .LC194, dispWinTemp
	.align	4
	.global	TFT_restoreClipWin
	.type	TFT_restoreClipWin, @function
TFT_restoreClipWin:
.LFB92:
	.loc 1 2267 0
	entry	sp, 32
.LCFI59:
	.loc 1 2268 0
	l32r	a9, .LC194
	l32r	a8, .LC193
	l16ui	a10, a9, 0
	s16i	a10, a8, 0
	.loc 1 2269 0
	l16ui	a10, a9, 2
	s16i	a10, a8, 2
	.loc 1 2270 0
	l16ui	a10, a9, 4
	.loc 1 2271 0
	l16ui	a9, a9, 6
	.loc 1 2270 0
	s16i	a10, a8, 4
	.loc 1 2271 0
	s16i	a9, a8, 6
	retw.n
.LFE92:
	.size	TFT_restoreClipWin, .-TFT_restoreClipWin
	.section	.rodata.str1.1
.LC195:
	.string	"File error: %ss\r\n"
.LC198:
	.string	"Error opening file: %s\r\n"
.LC206:
	.string	"Error allocating line buffer #0\r"
.LC208:
	.string	"Error allocating line buffer #1\r"
.LC211:
	.string	"jpg decompression error %d\r\n"
.LC213:
	.string	"jpg prepare error %d\r\n"
.LC215:
	.string	"work buffer allocation error\r"
	.section	.text.TFT_jpg_image,"ax",@progbits
	.literal_position
	.literal .LC196, .LC195
	.literal .LC197, .LC18
	.literal .LC199, .LC198
	.literal .LC200, 3800
	.literal .LC201, tjd_buf_input
	.literal .LC202, tjd_input
	.literal .LC203, -9003
	.literal .LC204, dispWin
	.literal .LC205, -9004
	.literal .LC207, .LC206
	.literal .LC209, .LC208
	.literal .LC210, tjd_output
	.literal .LC212, .LC211
	.literal .LC214, .LC213
	.literal .LC216, .LC215
	.align	4
	.global	TFT_jpg_image
	.type	TFT_jpg_image, @function
TFT_jpg_image:
.LFB96:
	.loc 1 2405 0
.LVL1300:
	entry	sp, 288
.LCFI60:
.LVL1301:
	.loc 1 2413 0
	movi.n	a8, 0
	s32i	a8, sp, 216
	.loc 1 2414 0
	s32i	a8, sp, 220
	.loc 1 2415 0
	s8i	a8, sp, 224
	.loc 1 2417 0
	s32i	a8, sp, 184
	.loc 1 2405 0
	extui	a5, a5, 0, 8
	.loc 1 2418 0
	bne	a6, a8, .L794
	.loc 1 2421 0
	l32i	a8, sp, 288
	.loc 1 2420 0
	s32i	a7, sp, 204
	.loc 1 2421 0
	s32i	a8, sp, 208
	.loc 1 2422 0
	s32i	a6, sp, 212
	j	.L795
.L794:
	.loc 1 2429 0
	addi	a11, sp, 124
	mov.n	a10, a6
	.loc 1 2425 0
	s32i	a8, sp, 204
	.loc 1 2426 0
	s32i	a8, sp, 208
	.loc 1 2427 0
	s32i	a8, sp, 212
	.loc 1 2429 0
	call8	stat
.LVL1302:
	beqz.n	a10, .L796
	.loc 1 2430 0
	call8	__errno
.LVL1303:
	l32i.n	a10, a10, 0
	call8	strerror
.LVL1304:
	mov.n	a11, a10
	l32r	a10, .LC196
	j	.L829
.L796:
	.loc 1 2434 0
	l32r	a11, .LC197
	mov.n	a10, a6
	call8	fopen
.LVL1305:
	s32i	a10, sp, 184
	.loc 1 2435 0
	bnez.n	a10, .L795
	.loc 1 2436 0
	call8	__errno
.LVL1306:
	l32i.n	a10, a10, 0
	call8	strerror
.LVL1307:
	mov.n	a11, a10
	l32r	a10, .LC199
.L829:
	call8	printf
.LVL1308:
	.loc 1 2437 0
	j	.L816
.L795:
.LVL1309:
	.loc 1 2443 0
	l32r	a13, .LC200
	mov.n	a10, a13
	s32i	a13, sp, 240
	call8	malloc
.LVL1310:
	mov.n	a6, a10
.LVL1311:
	.loc 1 2444 0
	l32i	a13, sp, 240
	beqz.n	a10, .L798
	.loc 1 2445 0
	l32i	a8, sp, 204
	movi	a14, 0xb8
	add.n	a14, sp, a14
	mov.n	a12, a10
	l32r	a11, .LC201
	bnez.n	a8, .L827
.L799:
	.loc 1 2446 0
	l32r	a11, .LC202
.L827:
	mov.n	a10, sp
	call8	jd_prepare
.LVL1312:
	.loc 1 2447 0
	bnez.n	a10, .L801
	.loc 1 2448 0
	l32r	a8, .LC203
	movi.n	a12, 3
	minu	a5, a5, a12
.LVL1313:
	l32r	a10, .LC204
.LVL1314:
	bne	a3, a8, .L802
	.loc 1 2448 0 is_stmt 0 discriminator 1
	l16ui	a3, a10, 0
.LVL1315:
	l16ui	a8, a10, 4
	sub	a8, a8, a3
	addi.n	a9, a8, 1
	l32i.n	a8, sp, 28
	ssr	a5
	srl	a8, a8
	sub	a8, a9, a8
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	add.n	a3, a8, a3
.LVL1316:
	j	.L803
.L802:
	.loc 1 2449 0 is_stmt 1
	l32r	a8, .LC205
	bne	a3, a8, .L803
	.loc 1 2449 0 is_stmt 0 discriminator 1
	l16ui	a3, a10, 4
.LVL1317:
	addi.n	a8, a3, 1
	l32i.n	a3, sp, 28
	ssr	a5
	srl	a3, a3
	sub	a3, a8, a3
.LVL1318:
.L803:
	.loc 1 2451 0 is_stmt 1
	l32r	a8, .LC203
	bne	a4, a8, .L804
	.loc 1 2451 0 is_stmt 0 discriminator 1
	l16ui	a4, a10, 2
.LVL1319:
	l16ui	a8, a10, 6
	sub	a8, a8, a4
	addi.n	a9, a8, 1
	l32i.n	a8, sp, 32
	ssr	a5
	srl	a8, a8
	sub	a8, a9, a8
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	add.n	a4, a8, a4
.LVL1320:
	j	.L805
.L804:
	.loc 1 2452 0 is_stmt 1
	l32r	a8, .LC205
	bne	a4, a8, .L805
	.loc 1 2452 0 is_stmt 0 discriminator 1
	l16ui	a4, a10, 6
.LVL1321:
	addi.n	a8, a4, 1
	l32i.n	a4, sp, 32
	ssr	a5
	srl	a4, a4
	sub	a4, a8, a4
.LVL1322:
.L805:
	.loc 1 2454 0 is_stmt 1
	l16ui	a11, a10, 4
	movi.n	a8, 1
	sub	a9, a8, a11
	max	a3, a3, a9
.LVL1323:
	.loc 1 2455 0
	l16ui	a9, a10, 6
	sub	a8, a8, a9
	max	a4, a4, a8
.LVL1324:
	.loc 1 2456 0
	blt	a3, a11, .L806
	.loc 1 2456 0 is_stmt 0 discriminator 1
	addi.n	a3, a11, -1
.LVL1325:
.L806:
	.loc 1 2457 0 is_stmt 1
	blt	a4, a9, .L807
	.loc 1 2457 0 is_stmt 0 discriminator 1
	addi.n	a4, a9, -1
.LVL1326:
.L807:
	.loc 1 2462 0 is_stmt 1
	movi.n	a11, 8
	movi	a10, 0x600
	.loc 1 2459 0
	s32i	a3, sp, 188
	.loc 1 2460 0
	s32i	a4, sp, 192
	.loc 1 2462 0
	call8	heap_caps_malloc
.LVL1327:
	s32i	a10, sp, 216
	.loc 1 2463 0
	bnez.n	a10, .L808
	.loc 1 2464 0
	l32r	a10, .LC207
	j	.L830
.L808:
	.loc 1 2467 0
	movi.n	a11, 8
	movi	a10, 0x600
	call8	heap_caps_malloc
.LVL1328:
	s32i	a10, sp, 220
	.loc 1 2468 0
	bnez.n	a10, .L810
	.loc 1 2469 0
	l32r	a10, .LC209
.L830:
	call8	puts
.LVL1329:
	.loc 1 2470 0
	j	.L809
.L810:
	.loc 1 2472 0
	l32i.n	a3, sp, 28
.LVL1330:
	s32i	a3, sp, 196
	.loc 1 2473 0
	l32i.n	a3, sp, 32
	s32i	a3, sp, 200
	.loc 1 2475 0
	call8	disp_select
.LVL1331:
	.loc 1 2476 0
	l32r	a11, .LC210
	mov.n	a12, a5
	mov.n	a10, sp
	call8	jd_decomp
.LVL1332:
	mov.n	a3, a10
.LVL1333:
	.loc 1 2477 0
	call8	disp_deselect
.LVL1334:
	.loc 1 2480 0
	mov.n	a11, a3
	l32r	a10, .LC212
	.loc 1 2479 0
	bnez.n	a3, .L828
	j	.L812
.LVL1335:
.L801:
	.loc 1 2484 0
	mov.n	a11, a10
	l32r	a10, .LC214
.LVL1336:
.L828:
	call8	printf
.LVL1337:
	j	.L812
.LVL1338:
.L798:
	.loc 1 2487 0
	l32r	a10, .LC216
	call8	puts
.LVL1339:
.L812:
	.loc 1 2490 0
	movi	a11, 0xb8
	movi.n	a12, 0x2c
	add.n	a11, sp, a11
	mov.n	a10, a2
	call8	memcpy
.LVL1340:
	retw.n
.LVL1341:
.L816:
	.loc 1 2494 0
	l32i	a10, sp, 216
	beqz.n	a10, .L813
	.loc 1 2494 0 is_stmt 0 discriminator 1
	call8	free
.LVL1342:
.L813:
	.loc 1 2495 0 is_stmt 1
	l32i	a10, sp, 220
	beqz.n	a10, .L814
	.loc 1 2495 0 is_stmt 0 discriminator 1
	call8	free
.LVL1343:
.L814:
	.loc 1 2496 0 is_stmt 1
	l32i	a10, sp, 184
	beqz.n	a10, .L812
	.loc 1 2496 0 is_stmt 0 discriminator 1
	call8	fclose
.LVL1344:
	j	.L812
.LVL1345:
.L809:
	.loc 1 2493 0 is_stmt 1
	mov.n	a10, a6
	call8	free
.LVL1346:
	j	.L816
.LFE96:
	.size	TFT_jpg_image, .-TFT_jpg_image
	.section	.rodata.str1.1
.LC217:
	.string	"opening file"
.LC220:
	.string	"reading header"
.LC225:
	.string	"out of display area (%d,%d"
.LC227:
	.string	"image too small"
.LC229:
	.string	"allocating line buffer #1"
.LC231:
	.string	"allocating line buffer #2"
.LC233:
	.string	"allocating scale buffer"
.LC235:
	.string	"file seek at %d"
.LC237:
	.string	"EOF reached: %d > %d"
.LC239:
	.string	"file read at %d (%d<>%d)"
	.section	.text.TFT_bmp_image,"ax",@progbits
	.literal_position
	.literal .LC218, .LC217
	.literal .LC219, .LC18
	.literal .LC221, .LC220
	.literal .LC222, -9003
	.literal .LC223, dispWin
	.literal .LC224, -9004
	.literal .LC226, .LC225
	.literal .LC228, .LC227
	.literal .LC230, .LC229
	.literal .LC232, .LC231
	.literal .LC234, .LC233
	.literal .LC236, .LC235
	.literal .LC238, .LC237
	.literal .LC240, .LC239
	.literal .LC241, image_debug
	.literal .LC242, .LC34
	.align	4
	.global	TFT_bmp_image
	.type	TFT_bmp_image, @function
TFT_bmp_image:
.LFB97:
	.loc 1 2504 0
.LVL1347:
	entry	sp, 352
.LCFI61:
.LVL1348:
	.loc 1 2504 0
	s32i	a2, sp, 224
	.loc 1 2516 0
	movi.n	a2, 0
.LVL1349:
	.loc 1 2504 0
	s32i	a3, sp, 228
	s32i	a6, sp, 264
	s32i	a7, sp, 252
	.loc 1 2520 0
	s16i	a2, sp, 188
	s16i	a2, sp, 190
	s16i	a2, sp, 192
	.loc 1 2504 0
	extui	a4, a4, 0, 8
.LVL1350:
	.loc 1 2526 0
	beq	a5, a2, .L832
	.loc 1 2528 0
	addi	a11, sp, 64
	mov.n	a10, a5
	call8	stat
.LVL1351:
	beq	a10, a2, .L833
	.loc 1 2529 0
	l32r	a11, .LC218
	mov.n	a10, sp
	call8	strcpy
.LVL1352:
	.loc 1 2530 0
	movi.n	a2, -1
	.loc 1 2531 0
	j	.L888
.LVL1353:
.L833:
	.loc 1 2533 0
	l32i	a2, sp, 80
	.loc 1 2534 0
	l32r	a11, .LC219
	mov.n	a10, a5
	.loc 1 2533 0
	s32i	a2, sp, 252
.LVL1354:
	.loc 1 2534 0
	call8	fopen
.LVL1355:
	mov.n	a6, a10
.LVL1356:
	.loc 1 2535 0
	bnez.n	a10, .L835
	.loc 1 2536 0
	l32r	a11, .LC218
	mov.n	a10, sp
	call8	strcpy
.LVL1357:
	.loc 1 2537 0
	movi.n	a2, -2
.LVL1358:
	.loc 1 2538 0
	j	.L888
.LVL1359:
.L835:
	.loc 1 2541 0
	mov.n	a13, a10
	movi.n	a12, 0x36
	movi.n	a11, 1
	addi	a10, sp, 124
	call8	fread
.LVL1360:
	mov.n	a2, a10
.LVL1361:
	j	.L836
.LVL1362:
.L832:
	.loc 1 2544 0
	l32i	a3, sp, 264
.LVL1363:
	movi.n	a2, 1
	moveqz	a2, a5, a3
	extui	a2, a2, 0, 8
	beqz.n	a2, .L889
	l32i	a8, sp, 252
	movi.n	a2, 0x36
	bge	a2, a8, .L889
	.loc 1 2545 0
	mov.n	a12, a2
	mov.n	a11, a3
	addi	a10, sp, 124
	call8	memcpy
.LVL1364:
	.loc 1 2505 0
	mov.n	a6, a5
.LVL1365:
	j	.L836
.LVL1366:
.L889:
	.loc 1 2547 0
	movi.n	a2, 0
	.loc 1 2505 0
	mov.n	a6, a2
.LVL1367:
.L836:
	.loc 1 2550 0
	l32r	a11, .LC221
	mov.n	a10, sp
	.loc 1 2551 0
	movi.n	a3, 0x36
	.loc 1 2550 0
	call8	strcpy
.LVL1368:
	.loc 1 2551 0
	bne	a2, a3, .L890
.LVL1369:
	.loc 1 2557 0
	l8ui	a3, sp, 124
	movi.n	a2, 0x42
	bne	a3, a2, .L892
	.loc 1 2557 0 is_stmt 0 discriminator 1
	l8ui	a3, sp, 125
	movi.n	a2, 0x4d
	bne	a3, a2, .L892
	.loc 1 2562 0 is_stmt 1
	l16ui	a2, sp, 126
	.loc 1 2563 0
	l32i	a9, sp, 252
	.loc 1 2562 0
	s16i	a2, sp, 196
	l16ui	a2, sp, 128
	s16i	a2, sp, 198
	.loc 1 2563 0
	l32i	a2, sp, 196
	bne	a2, a9, .L893
	.loc 1 2568 0
	l16ui	a3, sp, 134
	l16ui	a2, sp, 136
	s16i	a3, sp, 200
	s16i	a2, sp, 202
	.loc 1 2570 0
	l16ui	a3, sp, 138
	l16ui	a2, sp, 140
	s16i	a3, sp, 196
	s16i	a2, sp, 198
	.loc 1 2571 0
	l32i	a3, sp, 196
	movi.n	a2, 0x28
	bne	a3, a2, .L894
	.loc 1 2576 0
	l16ui	a2, sp, 150
	s16i	a2, sp, 212
	.loc 1 2577 0
	extui	a2, a2, 0, 16
	bnei	a2, 1, .L895
	.loc 1 2582 0
	l16ui	a2, sp, 152
	.loc 1 2583 0
	movi.n	a3, 0x18
	.loc 1 2582 0
	s16i	a2, sp, 212
	.loc 1 2583 0
	extui	a2, a2, 0, 16
	bne	a2, a3, .L896
	.loc 1 2588 0
	l16ui	a2, sp, 156
	l16ui	a3, sp, 154
	s16i	a2, sp, 198
	s16i	a3, sp, 196
	.loc 1 2589 0
	l32i	a2, sp, 196
	bnez.n	a2, .L897
	movi.n	a2, 7
	minu	a2, a4, a2
	.loc 1 2594 0
	l16ui	a3, sp, 142
	s32i	a2, sp, 276
	l16ui	a2, sp, 144
	s16i	a3, sp, 208
	.loc 1 2595 0
	l16ui	a3, sp, 146
	.loc 1 2594 0
	s16i	a2, sp, 210
	.loc 1 2595 0
	l16ui	a2, sp, 148
	s16i	a3, sp, 204
	.loc 1 2524 0
	l32i	a3, sp, 276
	.loc 1 2595 0
	s16i	a2, sp, 206
	.loc 1 2600 0
	l32i	a10, sp, 208
	.loc 1 2524 0
	addi.n	a2, a3, 1
	.loc 1 2601 0
	l32i	a8, sp, 204
	.loc 1 2524 0
	extui	a2, a2, 0, 8
	.loc 1 2600 0
	quos	a4, a10, a2
.LVL1370:
	.loc 1 2524 0
	s32i	a2, sp, 236
	.loc 1 2601 0
	quos	a5, a8, a2
.LVL1371:
	.loc 1 2603 0
	l32i	a9, sp, 224
	l32r	a2, .LC222
	.loc 1 2600 0
	s32i	a4, sp, 232
.LVL1372:
	l32r	a4, .LC223
.LVL1373:
	.loc 1 2603 0
	bne	a9, a2, .L838
	.loc 1 2603 0 is_stmt 0 discriminator 1
	l16ui	a2, a4, 0
	l16ui	a3, a4, 4
	l32i	a9, sp, 232
	sub	a3, a3, a2
	addi.n	a3, a3, 1
	sub	a3, a3, a9
	extui	a7, a3, 31, 1
	add.n	a3, a7, a3
	srai	a3, a3, 1
	add.n	a3, a3, a2
	s32i	a3, sp, 224
.LVL1374:
	j	.L839
.LVL1375:
.L838:
	.loc 1 2604 0 is_stmt 1
	l32r	a2, .LC224
	l32i	a9, sp, 224
	bne	a9, a2, .L839
	.loc 1 2604 0 is_stmt 0 discriminator 1
	l16ui	a2, a4, 4
	l32i	a3, sp, 232
	addi.n	a2, a2, 1
	sub	a2, a2, a3
	s32i	a2, sp, 224
.LVL1376:
.L839:
	.loc 1 2606 0 is_stmt 1
	l32r	a2, .LC222
	l32i	a9, sp, 228
	bne	a9, a2, .L840
	.loc 1 2606 0 is_stmt 0 discriminator 1
	l16ui	a3, a4, 2
	l16ui	a2, a4, 6
	sub	a2, a2, a3
	addi.n	a2, a2, 1
	sub	a2, a2, a5
	extui	a7, a2, 31, 1
	add.n	a2, a7, a2
	srai	a2, a2, 1
	add.n	a2, a2, a3
	s32i	a2, sp, 228
.LVL1377:
	j	.L841
.LVL1378:
.L840:
	.loc 1 2607 0 is_stmt 1
	l32r	a2, .LC224
	l32i	a3, sp, 228
	bne	a3, a2, .L841
	.loc 1 2607 0 is_stmt 0 discriminator 1
	l16ui	a3, a4, 6
	addi.n	a3, a3, 1
	sub	a3, a3, a5
	s32i	a3, sp, 228
.LVL1379:
.L841:
	.loc 1 2609 0 is_stmt 1
	l16ui	a3, a4, 4
	movi.n	a7, -1
	l32i	a9, sp, 224
	xor	a2, a7, a3
	blt	a9, a2, .L842
	.loc 1 2609 0 is_stmt 0 discriminator 1
	addi.n	a2, a3, 1
	blt	a2, a9, .L842
	.loc 1 2609 0 discriminator 2
	l16ui	a2, a4, 6
	l32i	a9, sp, 228
	xor	a7, a7, a2
	blt	a9, a7, .L842
	.loc 1 2609 0 discriminator 3
	addi.n	a7, a2, 1
	bge	a7, a9, .L843
.L842:
	.loc 1 2610 0 is_stmt 1
	l32i	a13, sp, 228
	l32i	a12, sp, 224
	l32r	a11, .LC226
	mov.n	a10, sp
	call8	sprintf
.LVL1380:
	.loc 1 2611 0
	movi.n	a2, -0xa
	.loc 1 2612 0
	j	.L834
.LVL1381:
.L843:
	.loc 1 2622 0
	movi.n	a9, 0
.LVL1382:
	s32i	a9, sp, 256
	.loc 1 2616 0
	l16ui	a4, a4, 0
	l32i	a9, sp, 224
	bge	a9, a4, .L844
.LVL1383:
	.loc 1 2618 0
	neg	a9, a9
	.loc 1 2619 0
	l32i	a11, sp, 224
	.loc 1 2618 0
	s32i	a9, sp, 256
.LVL1384:
	.loc 1 2619 0
	l32i	a9, sp, 232
.LVL1385:
	s32i	a4, sp, 224
.LVL1386:
	add.n	a9, a9, a11
	s32i	a9, sp, 232
.LVL1387:
.L844:
	.loc 1 2624 0
	l32r	a4, .LC223
	l32i	a9, sp, 228
	l16ui	a7, a4, 2
	.loc 1 2630 0
	movi.n	a4, 0
	.loc 1 2624 0
	bge	a9, a7, .L845
.LVL1388:
	.loc 1 2626 0
	neg	a4, a9
.LVL1389:
	.loc 1 2627 0
	add.n	a5, a5, a9
.LVL1390:
	s32i	a7, sp, 228
.LVL1391:
.L845:
	.loc 1 2632 0
	l32i	a9, sp, 232
	l32i	a11, sp, 224
	add.n	a7, a9, a11
	addi.n	a9, a7, -1
	s32i	a9, sp, 268
.LVL1392:
	.loc 1 2633 0
	l32i	a9, sp, 228
.LVL1393:
	add.n	a7, a5, a9
	addi.n	a9, a7, -1
	s32i	a9, sp, 244
.LVL1394:
	.loc 1 2634 0
	l32i	a9, sp, 268
.LVL1395:
	bge	a3, a9, .L846
.LVL1396:
	.loc 1 2636 0
	sub	a7, a3, a11
	addi.n	a9, a7, 1
	s32i	a9, sp, 232
.LVL1397:
	s32i	a3, sp, 268
.LVL1398:
.L846:
	.loc 1 2638 0
	l32i	a3, sp, 244
	bge	a2, a3, .L847
.LVL1399:
	.loc 1 2640 0
	l32i	a9, sp, 228
	s32i	a2, sp, 244
	sub	a5, a2, a9
.LVL1400:
	addi.n	a5, a5, 1
.LVL1401:
.L847:
	.loc 1 2643 0
	l32i	a2, sp, 232
	movi.n	a3, 1
	blti	a2, 8, .L848
	movi.n	a3, 0
.L848:
	movi.n	a2, 1
	blti	a5, 8, .L849
	movi.n	a2, 0
.L849:
	or	a2, a3, a2
	extui	a2, a2, 0, 8
	bnez.n	a2, .L850
	.loc 1 2643 0 is_stmt 0 discriminator 1
	l32i	a5, sp, 256
.LVL1402:
	addi	a3, a10, -2
	bge	a5, a3, .L850
	.loc 1 2643 0 discriminator 2
	sub	a3, a8, a4
	bgei	a3, 2, .L851
.L850:
	.loc 1 2644 0 is_stmt 1
	l32r	a11, .LC228
	mov.n	a10, sp
	call8	strcpy
.LVL1403:
	.loc 1 2645 0
	movi.n	a2, -0xb
	.loc 1 2646 0
	j	.L834
.LVL1404:
.L851:
	.loc 1 2650 0
	addx2	a5, a10, a10
	movi.n	a11, 8
	mov.n	a10, a5
	call8	heap_caps_malloc
.LVL1405:
	s32i	a10, sp, 180
	mov.n	a3, a10
	.loc 1 2651 0
	bnez.n	a10, .L852
	.loc 1 2652 0
	l32r	a11, .LC230
	mov.n	a10, sp
	call8	strcpy
.LVL1406:
	.loc 1 2653 0
	movi.n	a2, -0xc
	.loc 1 2654 0
	j	.L834
.LVL1407:
.L852:
	.loc 1 2657 0
	movi.n	a11, 8
	mov.n	a10, a5
	call8	heap_caps_malloc
.LVL1408:
	s32i	a10, sp, 184
	.loc 1 2658 0
	bnez.n	a10, .L853
	.loc 1 2659 0
	l32r	a11, .LC232
	mov.n	a10, sp
	call8	strcpy
.LVL1409:
	.loc 1 2660 0
	movi.n	a2, -0xd
	.loc 1 2661 0
	j	.L854
.LVL1410:
.L853:
	.loc 1 2673 0
	l32i	a8, sp, 232
	.loc 1 2664 0
	l32i	a9, sp, 276
	.loc 1 2673 0
	addx2	a8, a8, a8
	s32i	a8, sp, 240
.LVL1411:
	.loc 1 2518 0
	s32i	a2, sp, 248
	.loc 1 2664 0
	beqz.n	a9, .L856
	.loc 1 2666 0
	l32i	a2, sp, 236
	mull	a8, a8, a2
.LVL1412:
	.loc 1 2667 0
	mull	a10, a2, a8
	.loc 1 2666 0
	s32i	a8, sp, 240
.LVL1413:
	.loc 1 2667 0
	call8	malloc
.LVL1414:
	s32i	a10, sp, 248
.LVL1415:
	.loc 1 2668 0
	bnez.n	a10, .L856
	.loc 1 2669 0
	l32r	a11, .LC234
	mov.n	a10, sp
.LVL1416:
	call8	strcpy
.LVL1417:
	.loc 1 2670 0
	movi.n	a2, -0xe
	.loc 1 2671 0
	j	.L854
.LVL1418:
.L856:
	.loc 1 2692 0
	l32i	a2, sp, 208
	addx2	a2, a2, a2
	mull	a4, a2, a4
.LVL1419:
	l32i	a2, sp, 200
	add.n	a4, a4, a2
	s32i	a4, sp, 200
	.loc 1 2693 0
	beqz.n	a6, .L857
	.loc 1 2694 0
	movi.n	a12, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	fseek
.LVL1420:
	beqz.n	a10, .L857
	.loc 1 2695 0
	l32r	a11, .LC236
	mov.n	a12, a4
	mov.n	a10, sp
	call8	sprintf
.LVL1421:
	.loc 1 2785 0
	l32i	a4, sp, 248
	.loc 1 2696 0
	movi.n	a2, -0xf
	.loc 1 2785 0
	bnez.n	a4, .L858
	j	.L854
.LVL1422:
.L857:
	.loc 1 2705 0
	call8	disp_select
.LVL1423:
	l32i	a8, sp, 232
	.loc 1 2724 0
	l32i	a5, sp, 256
	l32i	a9, sp, 236
	addx2	a5, a5, a5
	addx2	a8, a8, a8
	addx2	a9, a9, a9
	s32i	a5, sp, 292
	s32i	a8, sp, 296
	s32i	a9, sp, 300
	.loc 1 2517 0
	movi.n	a7, 0
	.loc 1 2707 0
	j	.L860
.LVL1424:
.L881:
	.loc 1 2708 0
	l32i	a3, sp, 252
.LVL1425:
	bge	a3, a5, .L861
	.loc 1 2709 0
	l32r	a11, .LC238
	mov.n	a13, a3
	mov.n	a12, a5
	mov.n	a10, sp
	call8	sprintf
.LVL1426:
	j	.L940
.LVL1427:
.L861:
	.loc 1 2713 0
	l32i	a8, sp, 276
	bnez.n	a8, .L863
	slli	a3, a7, 2
	.loc 1 2716 0
	add.n	a3, sp, a3
	.loc 1 2715 0
	beqz.n	a6, .L864
	.loc 1 2716 0
	l32i	a10, a3, 180
	mov.n	a13, a6
	mov.n	a12, a4
	movi.n	a11, 1
	call8	fread
.LVL1428:
	.loc 1 2717 0
	beq	a4, a10, .L865
	.loc 1 2718 0
	l32r	a11, .LC240
	mov.n	a13, a10
	mov.n	a14, a4
	mov.n	a12, a5
	mov.n	a10, sp
.LVL1429:
	call8	sprintf
.LVL1430:
.L940:
	.loc 1 2719 0
	movi.n	a2, -0x10
	.loc 1 2720 0
	j	.L862
.LVL1431:
.L864:
	.loc 1 2722 0
	l32i	a9, sp, 264
	l32i	a10, a3, 180
	mov.n	a12, a4
	add.n	a11, a9, a5
	call8	memcpy
.LVL1432:
.L865:
	.loc 1 2724 0
	l32i	a3, sp, 256
	blti	a3, 1, .L866
	.loc 1 2724 0 is_stmt 0 discriminator 1
	addx4	a3, a7, sp
	l32i	a10, a3, 180
	l32i	a4, sp, 292
	l32i	a12, sp, 240
	add.n	a11, a10, a4
	call8	memmove
.LVL1433:
.L866:
	.loc 1 2727 0 is_stmt 1 discriminator 1
	addx4	a3, a7, sp
	l32i	a8, a3, 180
	movi.n	a5, -4
	mov.n	a3, a8
.LVL1434:
.L867:
	.loc 1 2727 0 is_stmt 0 discriminator 3
	l8ui	a4, a3, 2
	.loc 1 2728 0 is_stmt 1 discriminator 3
	l8ui	a9, a3, 0
	.loc 1 2727 0 discriminator 3
	and	a4, a4, a5
.LVL1435:
	.loc 1 2729 0 discriminator 3
	s8i	a4, a3, 0
	.loc 1 2730 0 discriminator 3
	l8ui	a4, a3, 1
.LVL1436:
	.loc 1 2728 0 discriminator 3
	and	a9, a9, a5
	.loc 1 2730 0 discriminator 3
	and	a4, a4, a5
	.loc 1 2728 0 discriminator 3
	s8i	a9, a3, 2
.LVL1437:
	.loc 1 2730 0 discriminator 3
	s8i	a4, a3, 1
.LVL1438:
	.loc 1 2726 0 discriminator 3
	l32i	a9, sp, 240
	addi.n	a3, a3, 3
.LVL1439:
	sub	a4, a3, a8
	blt	a4, a9, .L867
	.loc 1 2732 0
	s32i	a2, sp, 200
	j	.L868
.LVL1440:
.L863:
	l32i	a2, sp, 248
	.loc 1 2713 0
	movi.n	a5, 0
	s32i	a2, sp, 272
	mov.n	a3, a2
	.loc 1 2744 0
	movi	a8, 0xb4
	addx4	a2, a7, sp
	.loc 1 2713 0
	s32i	a5, sp, 260
	.loc 1 2744 0
	add.n	a2, a2, a8
.L872:
.LVL1441:
	.loc 1 2736 0
	l32i	a5, sp, 200
	l32i	a9, sp, 252
	blt	a9, a5, .L869
	.loc 1 2737 0
	beqz.n	a6, .L870
	.loc 1 2738 0
	l32i.n	a10, a2, 0
	mov.n	a13, a6
	mov.n	a12, a4
	movi.n	a11, 1
	call8	fread
.LVL1442:
	.loc 1 2739 0
	beq	a4, a10, .L871
	.loc 1 2740 0
	l32r	a11, .LC240
	mov.n	a13, a10
	mov.n	a14, a4
	mov.n	a12, a5
	mov.n	a10, sp
.LVL1443:
	call8	sprintf
.LVL1444:
	.loc 1 2741 0
	movi.n	a2, -0x11
	.loc 1 2742 0
	j	.L862
.LVL1445:
.L870:
	.loc 1 2744 0
	l32i	a8, sp, 264
	l32i.n	a10, a2, 0
	mov.n	a12, a4
	add.n	a11, a8, a5
	call8	memcpy
.LVL1446:
.L871:
	.loc 1 2748 0 discriminator 2
	l32i	a9, sp, 256
	l32i.n	a11, a2, 0
	l32i	a12, sp, 240
	.loc 1 2745 0 discriminator 2
	add.n	a5, a4, a5
	.loc 1 2748 0 discriminator 2
	add.n	a11, a11, a9
	mov.n	a10, a3
	.loc 1 2745 0 discriminator 2
	s32i	a5, sp, 200
	.loc 1 2748 0 discriminator 2
	call8	memcpy
.LVL1447:
	.loc 1 2735 0 discriminator 2
	l32i	a5, sp, 260
	l32i	a8, sp, 240
	addi.n	a5, a5, 1
	l32i	a9, sp, 236
	s32i	a5, sp, 260
.LVL1448:
	add.n	a3, a3, a8
	blt	a5, a9, .L872
.LVL1449:
.L869:
.LBB99:
	.loc 1 2769 0 discriminator 1
	addx4	a2, a7, sp
	movi	a11, 0xb4
	add.n	a2, a2, a11
.LBB100:
	.loc 1 2757 0 discriminator 1
	movi.n	a13, 0
.LBE100:
	.loc 1 2769 0 discriminator 1
	s32i	a2, sp, 304
	j	.L873
.LVL1450:
.L880:
	.loc 1 2753 0
	movi.n	a2, 0
	l32i	a3, sp, 236
	s32i	a2, sp, 188
	s16i	a2, sp, 192
.LVL1451:
	mov.n	a11, a2
	mov.n	a10, a2
	mov.n	a9, a2
	movi.n	a2, 1
	blti	a3, 1, .L875
	mov.n	a2, a3
.L875:
	extui	a2, a2, 0, 8
	s32i	a2, sp, 288
.LBB102:
	.loc 1 2757 0
	movi.n	a2, 0
	l32i	a12, sp, 272
	mov.n	a8, a2
	mov.n	a14, a2
	j	.L876
.LVL1452:
.L878:
.LBB101:
	.loc 1 2763 0
	l8ui	a5, a12, 1
	.loc 1 2762 0
	l8ui	a4, a12, 0
	.loc 1 2763 0
	s32i	a5, sp, 284
	l32i	a2, sp, 284
	.loc 1 2764 0
	l8ui	a5, a12, 2
	add.n	a11, a4, a11
	add.n	a10, a2, a10
	add.n	a9, a5, a9
	.loc 1 2762 0
	s32i	a4, sp, 280
	extui	a11, a11, 0, 16
	extui	a10, a10, 0, 16
	extui	a9, a9, 0, 16
	.loc 1 2761 0
	movi.n	a15, 0
	j	.L877
.LVL1453:
.L901:
	l32i	a11, sp, 308
	mov.n	a9, a2
	mov.n	a10, a3
.LVL1454:
.L877:
	l32i	a3, sp, 280
	add.n	a2, a9, a5
	add.n	a4, a3, a11
	extui	a4, a4, 0, 16
	s32i	a4, sp, 308
	l32i	a4, sp, 284
	.loc 1 2761 0 is_stmt 0 discriminator 3
	addi.n	a15, a15, 1
.LVL1455:
	add.n	a3, a10, a4
	l32i	a4, sp, 236
	extui	a3, a3, 0, 16
	extui	a2, a2, 0, 16
	blt	a15, a4, .L901
	l32i	a5, sp, 288
	l32i	a2, sp, 240
	add.n	a8, a5, a8
	add.n	a12, a12, a2
.LBE101:
	.loc 1 2757 0 is_stmt 1 discriminator 2
	addi.n	a14, a14, 1
.LVL1456:
	extui	a8, a8, 0, 8
	movi.n	a2, 1
.LVL1457:
.L876:
	.loc 1 2757 0 is_stmt 0 discriminator 1
	l32i	a3, sp, 260
	bne	a14, a3, .L878
	beqz.n	a2, .L879
	s16i	a11, sp, 188
	s16i	a10, sp, 190
	s16i	a9, sp, 192
.L879:
.LBE102:
	.loc 1 2769 0 is_stmt 1 discriminator 2
	l32i	a4, sp, 304
	l16ui	a3, sp, 188
	l32i.n	a2, a4, 0
	quos	a3, a3, a8
	add.n	a2, a2, a13
	s8i	a3, a2, 2
	.loc 1 2770 0 discriminator 2
	l16ui	a3, sp, 190
	l32i	a5, sp, 272
	quos	a3, a3, a8
	s8i	a3, a2, 1
	.loc 1 2771 0 discriminator 2
	l16ui	a3, sp, 192
	.loc 1 2752 0 discriminator 2
	addi.n	a13, a13, 3
.LVL1458:
	.loc 1 2771 0 discriminator 2
	quos	a8, a3, a8
.LVL1459:
	s8i	a8, a2, 0
	l32i	a8, sp, 300
	add.n	a5, a5, a8
	s32i	a5, sp, 272
.LVL1460:
.L873:
	.loc 1 2752 0 discriminator 1
	l32i	a9, sp, 296
	blt	a13, a9, .L880
.LVL1461:
.L868:
.LBE99:
	.loc 1 2775 0
	movi.n	a10, 1
	call8	wait_trans_finish
.LVL1462:
	.loc 1 2776 0
	addx4	a2, a7, sp
	l32i	a13, sp, 244
	l32i	a15, a2, 180
	l32i	a14, sp, 232
	l32i	a12, sp, 268
	l32i	a10, sp, 224
	.loc 1 2777 0
	addi.n	a2, a7, 1
	.loc 1 2776 0
	mov.n	a11, a13
	call8	send_data
.LVL1463:
	.loc 1 2777 0
	extui	a7, a2, 0, 1
.LVL1464:
	.loc 1 2779 0
	l32i	a2, sp, 244
	addi.n	a2, a2, -1
	s32i	a2, sp, 244
.LVL1465:
.L860:
	.loc 1 2707 0
	l32i	a3, sp, 244
	l32i	a8, sp, 228
	blt	a3, a8, .L902
	.loc 1 2707 0 is_stmt 0 discriminator 1
	l32i	a4, sp, 208
	l32i	a5, sp, 200
	addx2	a4, a4, a4
	l32i	a9, sp, 252
	add.n	a2, a4, a5
	bge	a9, a2, .L881
.L902:
	.loc 1 2781 0 is_stmt 1
	movi.n	a2, 0
.LVL1466:
.L862:
	.loc 1 2783 0
	call8	disp_deselect
.LVL1467:
.LDL2:
	.loc 1 2785 0
	l32i	a3, sp, 248
	beqz.n	a3, .L882
.LVL1468:
.L858:
	.loc 1 2785 0 is_stmt 0 discriminator 1
	l32i	a10, sp, 248
	call8	free
.LVL1469:
.L882:
	.loc 1 2786 0 is_stmt 1
	l32i	a10, sp, 180
	beqz.n	a10, .L883
.LVL1470:
.L859:
	.loc 1 2786 0 is_stmt 0 discriminator 1
	call8	free
.LVL1471:
.L883:
	.loc 1 2787 0 is_stmt 1
	l32i	a10, sp, 184
	beqz.n	a10, .L884
	.loc 1 2787 0 is_stmt 0 discriminator 1
	call8	free
.LVL1472:
.L884:
	.loc 1 2788 0 is_stmt 1
	beqz.n	a6, .L885
.LVL1473:
.L887:
	.loc 1 2788 0 is_stmt 0 discriminator 1
	mov.n	a10, a6
	call8	fclose
.LVL1474:
.L885:
	.loc 1 2789 0 is_stmt 1
	beqz.n	a2, .L916
.LVL1475:
.L888:
	.loc 1 2789 0 is_stmt 0 discriminator 1
	l32r	a3, .LC241
	l8ui	a3, a3, 0
	beqz.n	a3, .L916
	.loc 1 2789 0 discriminator 2
	l32r	a10, .LC242
	mov.n	a12, sp
	mov.n	a11, a2
	call8	printf
.LVL1476:
	.loc 1 2791 0 is_stmt 1 discriminator 2
	retw.n
.LVL1477:
.L854:
	.loc 1 2696 0
	mov.n	a10, a3
	j	.L859
.LVL1478:
.L890:
	.loc 1 2552 0
	movi.n	a2, -3
.LVL1479:
	j	.L834
.LVL1480:
.L892:
	.loc 1 2558 0
	movi.n	a2, -4
	j	.L834
.LVL1481:
.L893:
	.loc 1 2564 0
	movi.n	a2, -5
	j	.L834
.L894:
	.loc 1 2572 0
	movi.n	a2, -6
	j	.L834
.L895:
	.loc 1 2578 0
	movi.n	a2, -7
	j	.L834
.L896:
	.loc 1 2584 0
	movi.n	a2, -8
	j	.L834
.L897:
	.loc 1 2590 0
	movi.n	a2, -9
.LVL1482:
.L834:
	.loc 1 2788 0
	bnez.n	a6, .L887
	j	.L888
.LVL1483:
.L916:
	.loc 1 2792 0
	retw.n
.LFE97:
	.size	TFT_bmp_image, .-TFT_bmp_image
	.section	.rodata.font_bcd,"a",@progbits
	.align	2
	.type	font_bcd, @object
	.size	font_bcd, 28
font_bcd:
	.short	512
	.short	128
	.short	108
	.short	95
	.short	5
	.short	118
	.short	117
	.short	45
	.short	121
	.short	123
	.short	69
	.short	127
	.short	125
	.short	2304
	.section	.bss.fontChar,"aw",@nobits
	.align	4
	.type	fontChar, @object
	.size	fontChar, 28
fontChar:
	.zero	28
	.section	.bss.TFT_OFFSET,"aw",@nobits
	.align	4
	.type	TFT_OFFSET, @object
	.size	TFT_OFFSET, 4
TFT_OFFSET:
	.zero	4
	.section	.bss.userfont,"aw",@nobits
	.align	4
	.type	userfont, @object
	.size	userfont, 4
userfont:
	.zero	4
	.section	.bss.dispWinTemp,"aw",@nobits
	.align	2
	.type	dispWinTemp, @object
	.size	dispWinTemp, 8
dispWinTemp:
	.zero	8
	.global	font_line_space
	.section	.bss.font_line_space,"aw",@nobits
	.type	font_line_space, @object
	.size	font_line_space, 1
font_line_space:
	.zero	1
	.global	font_buffered_char
	.section	.data.font_buffered_char,"aw",@progbits
	.type	font_buffered_char, @object
	.size	font_buffered_char, 1
font_buffered_char:
	.byte	1
	.global	cfont
	.section	.data.cfont,"aw",@progbits
	.align	4
	.type	cfont, @object
	.size	cfont, 20
cfont:
	.word	tft_DefaultFont
	.byte	0
	.byte	11
	.byte	0
	.zero	1
	.short	95
	.zero	3
	.byte	1
	.zero	6
	.global	dispWin
	.section	.data.dispWin,"aw",@progbits
	.align	2
	.type	dispWin, @object
	.size	dispWin, 8
dispWin:
	.short	0
	.short	0
	.short	320
	.short	240
	.global	tp_caly
	.section	.data.tp_caly,"aw",@progbits
	.align	4
	.type	tp_caly, @object
	.size	tp_caly, 4
tp_caly:
	.word	122224794
	.global	tp_calx
	.section	.data.tp_calx,"aw",@progbits
	.align	4
	.type	tp_calx, @object
	.size	tp_calx, 4
tp_calx:
	.word	7472920
	.global	TFT_Y
	.section	.bss.TFT_Y,"aw",@nobits
	.align	4
	.type	TFT_Y, @object
	.size	TFT_Y, 4
TFT_Y:
	.zero	4
	.global	TFT_X
	.section	.bss.TFT_X,"aw",@nobits
	.align	4
	.type	TFT_X, @object
	.size	TFT_X, 4
TFT_X:
	.zero	4
	.global	_angleOffset
	.section	.data._angleOffset,"aw",@progbits
	.align	4
	.type	_angleOffset, @object
	.size	_angleOffset, 4
_angleOffset:
	.word	3266576384
	.global	image_debug
	.section	.bss.image_debug,"aw",@nobits
	.type	image_debug, @object
	.size	image_debug, 1
image_debug:
	.zero	1
	.global	_bg
	.section	.bss._bg,"aw",@nobits
	.type	_bg, @object
	.size	_bg, 3
_bg:
	.zero	3
	.global	_fg
	.section	.data._fg,"aw",@progbits
	.type	_fg, @object
	.size	_fg, 3
_fg:
	.byte	0
	.byte	-1
	.byte	0
	.global	text_wrap
	.section	.bss.text_wrap,"aw",@nobits
	.type	text_wrap, @object
	.size	text_wrap, 1
text_wrap:
	.zero	1
	.global	font_forceFixed
	.section	.bss.font_forceFixed,"aw",@nobits
	.type	font_forceFixed, @object
	.size	font_forceFixed, 1
font_forceFixed:
	.zero	1
	.global	font_transparent
	.section	.bss.font_transparent,"aw",@nobits
	.type	font_transparent, @object
	.size	font_transparent, 1
font_transparent:
	.zero	1
	.global	font_rotate
	.section	.bss.font_rotate,"aw",@nobits
	.align	2
	.type	font_rotate, @object
	.size	font_rotate, 2
font_rotate:
	.zero	2
	.global	orientation
	.section	.data.orientation,"aw",@progbits
	.type	orientation, @object
	.size	orientation, 1
orientation:
	.byte	1
	.global	TFT_PINK
	.section	.rodata.TFT_PINK,"a",@progbits
	.type	TFT_PINK, @object
	.size	TFT_PINK, 3
TFT_PINK:
	.byte	-4
	.byte	-64
	.byte	-54
	.global	TFT_GREENYELLOW
	.section	.rodata.TFT_GREENYELLOW,"a",@progbits
	.type	TFT_GREENYELLOW, @object
	.size	TFT_GREENYELLOW, 3
TFT_GREENYELLOW:
	.byte	-84
	.byte	-4
	.byte	44
	.global	TFT_ORANGE
	.section	.rodata.TFT_ORANGE,"a",@progbits
	.type	TFT_ORANGE, @object
	.size	TFT_ORANGE, 3
TFT_ORANGE:
	.byte	-4
	.byte	-92
	.byte	0
	.global	TFT_WHITE
	.section	.rodata.TFT_WHITE,"a",@progbits
	.type	TFT_WHITE, @object
	.size	TFT_WHITE, 3
TFT_WHITE:
	.byte	-4
	.byte	-4
	.byte	-4
	.global	TFT_YELLOW
	.section	.rodata.TFT_YELLOW,"a",@progbits
	.type	TFT_YELLOW, @object
	.size	TFT_YELLOW, 3
TFT_YELLOW:
	.byte	-4
	.byte	-4
	.byte	0
	.global	TFT_MAGENTA
	.section	.rodata.TFT_MAGENTA,"a",@progbits
	.type	TFT_MAGENTA, @object
	.size	TFT_MAGENTA, 3
TFT_MAGENTA:
	.byte	-4
	.byte	0
	.byte	-1
	.global	TFT_RED
	.section	.rodata.TFT_RED,"a",@progbits
	.type	TFT_RED, @object
	.size	TFT_RED, 3
TFT_RED:
	.byte	-4
	.byte	0
	.byte	0
	.global	TFT_CYAN
	.section	.rodata.TFT_CYAN,"a",@progbits
	.type	TFT_CYAN, @object
	.size	TFT_CYAN, 3
TFT_CYAN:
	.byte	0
	.byte	-1
	.byte	-1
	.global	TFT_GREEN
	.section	.rodata.TFT_GREEN,"a",@progbits
	.type	TFT_GREEN, @object
	.size	TFT_GREEN, 3
TFT_GREEN:
	.byte	0
	.byte	-1
	.byte	0
	.global	TFT_BLUE
	.section	.rodata.TFT_BLUE,"a",@progbits
	.type	TFT_BLUE, @object
	.size	TFT_BLUE, 3
TFT_BLUE:
	.byte	0
	.byte	0
	.byte	-1
	.global	TFT_DARKGREY
	.section	.rodata.TFT_DARKGREY,"a",@progbits
	.type	TFT_DARKGREY, @object
	.size	TFT_DARKGREY, 3
TFT_DARKGREY:
	.byte	-128
	.byte	-128
	.byte	-128
	.global	TFT_LIGHTGREY
	.section	.rodata.TFT_LIGHTGREY,"a",@progbits
	.type	TFT_LIGHTGREY, @object
	.size	TFT_LIGHTGREY, 3
TFT_LIGHTGREY:
	.byte	-64
	.byte	-64
	.byte	-64
	.global	TFT_OLIVE
	.section	.rodata.TFT_OLIVE,"a",@progbits
	.type	TFT_OLIVE, @object
	.size	TFT_OLIVE, 3
TFT_OLIVE:
	.byte	-128
	.byte	-128
	.byte	0
	.global	TFT_PURPLE
	.section	.rodata.TFT_PURPLE,"a",@progbits
	.type	TFT_PURPLE, @object
	.size	TFT_PURPLE, 3
TFT_PURPLE:
	.byte	-128
	.byte	0
	.byte	-128
	.global	TFT_MAROON
	.section	.rodata.TFT_MAROON,"a",@progbits
	.type	TFT_MAROON, @object
	.size	TFT_MAROON, 3
TFT_MAROON:
	.byte	-128
	.byte	0
	.byte	0
	.global	TFT_DARKCYAN
	.section	.rodata.TFT_DARKCYAN,"a",@progbits
	.type	TFT_DARKCYAN, @object
	.size	TFT_DARKCYAN, 3
TFT_DARKCYAN:
	.byte	0
	.byte	-128
	.byte	-128
	.global	TFT_DARKGREEN
	.section	.rodata.TFT_DARKGREEN,"a",@progbits
	.type	TFT_DARKGREEN, @object
	.size	TFT_DARKGREEN, 3
TFT_DARKGREEN:
	.byte	0
	.byte	-128
	.byte	0
	.global	TFT_NAVY
	.section	.rodata.TFT_NAVY,"a",@progbits
	.type	TFT_NAVY, @object
	.size	TFT_NAVY, 3
TFT_NAVY:
	.byte	0
	.byte	0
	.byte	-128
	.global	TFT_BLACK
	.section	.rodata.TFT_BLACK,"a",@progbits
	.type	TFT_BLACK, @object
	.size	TFT_BLACK, 3
TFT_BLACK:
	.zero	3
	.comm	spiffs_mutex,4,4
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
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI0-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI1-.LFB74
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI2-.LFB75
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI4-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI5-.LFB45
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI6-.LFB59
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI8-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI9-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI10-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI11-.LFB53
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI13-.LFB78
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI14-.LFB79
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI15-.LFB44
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI16-.LFB57
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI17-.LFB61
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.byte	0x4
	.4byte	.LCFI18-.LFB94
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI19-.LFB64
	.byte	0xe
	.uleb128 0x160
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI20-.LFB95
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI21-.LFB93
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI22-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI23-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI24-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI25-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI26-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI27-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI28-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI29-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI30-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI31-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI32-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI33-.LFB47
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI34-.LFB50
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI35-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI36-.LFB54
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI37-.LFB55
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI38-.LFB56
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI39-.LFB58
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI40-.LFB60
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI41-.LFB62
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI42-.LFB63
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x80
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI43-.LFB65
	.byte	0xe
	.uleb128 0x190
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI44-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI45-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI46-.LFB76
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI47-.LFB81
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI48-.LFB82
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI49-.LFB83
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI50-.LFB84
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x4
	.4byte	.LCFI51-.LFB85
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x4
	.4byte	.LCFI52-.LFB86
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI53-.LFB87
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x4
	.4byte	.LCFI54-.LFB88
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x4
	.4byte	.LCFI55-.LFB89
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI56-.LFB90
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI57-.LFB77
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x4
	.4byte	.LCFI58-.LFB91
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x4
	.4byte	.LCFI59-.LFB92
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE118:
.LSFDE120:
	.4byte	.LEFDE120-.LASFDE120
.LASFDE120:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x4
	.4byte	.LCFI60-.LFB96
	.byte	0xe
	.uleb128 0x120
	.align	4
.LEFDE120:
.LSFDE122:
	.4byte	.LEFDE122-.LASFDE122
.LASFDE122:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x4
	.4byte	.LCFI61-.LFB97
	.byte	0xe
	.uleb128 0x160
	.align	4
.LEFDE122:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/reent.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/stat.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 12 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/tft/tftspi.h"
	.file 13 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/tft/tft.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/tjpgd.h"
	.file 15 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_config.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/math.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 20 "<built-in>"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6675
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF513
	.byte	0xc
	.4byte	.LASF514
	.4byte	.LASF515
	.4byte	.Ldebug_ranges0+0x170
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x11
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1a
	.4byte	0x98
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0xd8
	.4byte	0x98
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0xb
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0xc
	.4byte	0xba
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x10
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x14
	.4byte	0x69
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x18
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x27
	.4byte	0xdb
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x165
	.4byte	0x98
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x4a
	.4byte	0x139
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4c
	.4byte	0x10e
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x4d
	.4byte	0x139
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x149
	.uleb128 0xa
	.4byte	0x149
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.4byte	0x171
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x49
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x4e
	.4byte	0x11a
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x5
	.byte	0x4f
	.4byte	0x150
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x53
	.4byte	0xc5
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.byte	0x16
	.4byte	0x192
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF33
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x1ec
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x2f
	.4byte	0x1ec
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x31
	.4byte	0x1f2
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x199
	.uleb128 0x9
	.4byte	0x187
	.4byte	0x202
	.uleb128 0xa
	.4byte	0x149
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x27b
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x37
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x38
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x39
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x3a
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3b
	.4byte	0x33
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x3c
	.4byte	0x33
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x3d
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x3e
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x3f
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF49
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x2bb
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x49
	.4byte	0x2bb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x4a
	.4byte	0x2bb
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x6
	.byte	0x4c
	.4byte	0x187
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x6
	.byte	0x4f
	.4byte	0x187
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0xb8
	.4byte	0x2cb
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8c
	.byte	0x6
	.byte	0x53
	.4byte	0x308
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x54
	.4byte	0x308
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x55
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0x56
	.4byte	0x30e
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0x57
	.4byte	0x325
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2cb
	.uleb128 0x9
	.4byte	0x31e
	.4byte	0x31e
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x324
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x27b
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x350
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0x74
	.4byte	0x350
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0x75
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0xf0
	.byte	0x6
	.2byte	0x172
	.4byte	0x49c
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x176
	.4byte	0x33
	.byte	0
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x17b
	.4byte	0x6d1
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x17b
	.4byte	0x6d1
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x17b
	.4byte	0x6d1
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x17d
	.4byte	0x33
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x17f
	.4byte	0x5ea
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x181
	.4byte	0x33
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x183
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x184
	.4byte	0x61b
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x6
	.2byte	0x186
	.4byte	0x81e
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x188
	.4byte	0x82f
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x18a
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x18d
	.4byte	0x33
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x18e
	.4byte	0x5ea
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x190
	.4byte	0x835
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x191
	.4byte	0x83b
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x192
	.4byte	0x5ea
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x195
	.4byte	0x84c
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x199
	.4byte	0x308
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x19a
	.4byte	0x2cb
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x19d
	.4byte	0x696
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x19e
	.4byte	0x6d1
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x19f
	.4byte	0x858
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x1a0
	.4byte	0x5ea
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x356
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x5cc
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb4
	.4byte	0x350
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb5
	.4byte	0x33
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb6
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xb7
	.4byte	0x69
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xb8
	.4byte	0x69
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xb9
	.4byte	0x32b
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xba
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xbd
	.4byte	0x49c
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xc1
	.4byte	0xb8
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xc3
	.4byte	0x5f7
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xc5
	.4byte	0x626
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xc8
	.4byte	0x64a
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x6
	.byte	0xc9
	.4byte	0x664
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xcc
	.4byte	0x32b
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcd
	.4byte	0x350
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xce
	.4byte	0x33
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x6
	.byte	0xd1
	.4byte	0x66a
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x6
	.byte	0xd2
	.4byte	0x67a
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd5
	.4byte	0x32b
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x6
	.byte	0xd8
	.4byte	0x33
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x6
	.byte	0xd9
	.4byte	0xd0
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x6
	.byte	0xe0
	.4byte	0x17c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x6
	.byte	0xe2
	.4byte	0x171
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x6
	.byte	0xe3
	.4byte	0x33
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x5ea
	.uleb128 0x17
	.4byte	0x49c
	.uleb128 0x17
	.4byte	0xb8
	.uleb128 0x17
	.4byte	0x5ea
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5f0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF101
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5cc
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x61b
	.uleb128 0x17
	.4byte	0x49c
	.uleb128 0x17
	.4byte	0xb8
	.uleb128 0x17
	.4byte	0x61b
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x621
	.uleb128 0x18
	.4byte	0x5f0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5fd
	.uleb128 0x16
	.4byte	0x103
	.4byte	0x64a
	.uleb128 0x17
	.4byte	0x49c
	.uleb128 0x17
	.4byte	0xb8
	.uleb128 0x17
	.4byte	0x103
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62c
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x664
	.uleb128 0x17
	.4byte	0x49c
	.uleb128 0x17
	.4byte	0xb8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x650
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x67a
	.uleb128 0xa
	.4byte	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x68a
	.uleb128 0xa
	.4byte	0x149
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x11d
	.4byte	0x4a2
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x6cb
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x123
	.4byte	0x6cb
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x124
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x125
	.4byte	0x6d1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x696
	.uleb128 0xf
	.byte	0x4
	.4byte	0x68a
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x18
	.byte	0x6
	.2byte	0x13d
	.4byte	0x719
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x13e
	.4byte	0x719
	.byte	0
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x13f
	.4byte	0x719
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x140
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x143
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x7b
	.4byte	0x729
	.uleb128 0xa
	.4byte	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x10
	.byte	0x6
	.2byte	0x156
	.4byte	0x76b
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x159
	.4byte	0x1ec
	.byte	0
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x15a
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x15b
	.4byte	0x1ec
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x15c
	.4byte	0x76b
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x50
	.byte	0x6
	.2byte	0x160
	.4byte	0x80e
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x163
	.4byte	0x5ea
	.byte	0
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x164
	.4byte	0x171
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x165
	.4byte	0x171
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x166
	.4byte	0x171
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x167
	.4byte	0x80e
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x168
	.4byte	0x33
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x169
	.4byte	0x171
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x16a
	.4byte	0x171
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x16b
	.4byte	0x171
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x16c
	.4byte	0x171
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x16d
	.4byte	0x171
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x5f0
	.4byte	0x81e
	.uleb128 0xa
	.4byte	0x149
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x729
	.uleb128 0x19
	.4byte	0x82f
	.uleb128 0x17
	.4byte	0x49c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x824
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x202
	.uleb128 0x19
	.4byte	0x84c
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x852
	.uleb128 0xf
	.byte	0x4
	.4byte	0x841
	.uleb128 0xf
	.byte	0x4
	.4byte	0x771
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x7
	.byte	0x7a
	.4byte	0xdb
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x7
	.byte	0x9b
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x7
	.byte	0xb8
	.4byte	0xd0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x7
	.byte	0xb9
	.4byte	0xe2
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x7
	.byte	0xba
	.4byte	0xed
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x7
	.byte	0xbb
	.4byte	0xf8
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x7
	.byte	0xd9
	.4byte	0x98
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x7
	.byte	0xde
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x8
	.byte	0x34
	.4byte	0x68a
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x3c
	.byte	0x9
	.byte	0x1a
	.4byte	0x99a
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x9
	.byte	0x1c
	.4byte	0x87f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0x9
	.byte	0x1d
	.4byte	0x869
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x9
	.byte	0x1e
	.4byte	0x8a0
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x9
	.byte	0x1f
	.4byte	0x8ab
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x9
	.byte	0x20
	.4byte	0x88a
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x9
	.byte	0x21
	.4byte	0x895
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x9
	.byte	0x22
	.4byte	0x87f
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x9
	.byte	0x23
	.4byte	0x874
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x9
	.byte	0x31
	.4byte	0x85e
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0x9
	.byte	0x32
	.4byte	0xdb
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0x9
	.byte	0x33
	.4byte	0x85e
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0x9
	.byte	0x34
	.4byte	0xdb
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0x9
	.byte	0x35
	.4byte	0x85e
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x9
	.byte	0x36
	.4byte	0xdb
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x9
	.byte	0x37
	.4byte	0xdb
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x9
	.byte	0x38
	.4byte	0xdb
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x9
	.byte	0x39
	.4byte	0x99a
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.4byte	0xdb
	.4byte	0x9aa
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0xa
	.byte	0x14
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0xa
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xa
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0xa
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0xa
	.byte	0x2c
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0xa
	.byte	0x2d
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF161
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0xb
	.byte	0x58
	.4byte	0xb8
	.uleb128 0x9
	.4byte	0x5f0
	.4byte	0xa0e
	.uleb128 0xa
	.4byte	0x149
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.byte	0x3
	.byte	0xc
	.byte	0x5d
	.4byte	0xa35
	.uleb128 0xe
	.string	"r"
	.byte	0xc
	.byte	0x5f
	.4byte	0x9b5
	.byte	0
	.uleb128 0xe
	.string	"g"
	.byte	0xc
	.byte	0x60
	.4byte	0x9b5
	.byte	0x1
	.uleb128 0xe
	.string	"b"
	.byte	0xc
	.byte	0x61
	.4byte	0x9b5
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0xc
	.byte	0x62
	.4byte	0xa0e
	.uleb128 0xb
	.byte	0x8
	.byte	0xd
	.byte	0xe
	.4byte	0xa75
	.uleb128 0xe
	.string	"x1"
	.byte	0xd
	.byte	0x10
	.4byte	0x9cb
	.byte	0
	.uleb128 0xe
	.string	"y1"
	.byte	0xd
	.byte	0x11
	.4byte	0x9cb
	.byte	0x2
	.uleb128 0xe
	.string	"x2"
	.byte	0xd
	.byte	0x12
	.4byte	0x9cb
	.byte	0x4
	.uleb128 0xe
	.string	"y2"
	.byte	0xd
	.byte	0x13
	.4byte	0x9cb
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0xd
	.byte	0x14
	.4byte	0xa40
	.uleb128 0xb
	.byte	0x14
	.byte	0xd
	.byte	0x16
	.4byte	0xaf5
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xd
	.byte	0x18
	.4byte	0xaf5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xd
	.byte	0x19
	.4byte	0x9b5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xd
	.byte	0x1a
	.4byte	0x9b5
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xd
	.byte	0x1b
	.4byte	0x9b5
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xd
	.byte	0x1c
	.4byte	0x9cb
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xd
	.byte	0x1d
	.4byte	0x9cb
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0xd
	.byte	0x1e
	.4byte	0x9b5
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0xd
	.byte	0x1f
	.4byte	0x9b5
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xd
	.byte	0x20
	.4byte	0xa35
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9b5
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0xd
	.byte	0x21
	.4byte	0xa80
	.uleb128 0xb
	.byte	0x2c
	.byte	0xd
	.byte	0x8a
	.4byte	0xb83
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xd
	.byte	0x8c
	.4byte	0xb83
	.byte	0
	.uleb128 0xe
	.string	"x"
	.byte	0xd
	.byte	0x8d
	.4byte	0x33
	.byte	0x4
	.uleb128 0xe
	.string	"y"
	.byte	0xd
	.byte	0x8e
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0xd
	.byte	0x8f
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0xd
	.byte	0x90
	.4byte	0x33
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0xd
	.byte	0x91
	.4byte	0xaf5
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF179
	.byte	0xd
	.byte	0x92
	.4byte	0x9e1
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0xd
	.byte	0x93
	.4byte	0x9e1
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF181
	.byte	0xd
	.byte	0x94
	.4byte	0xb89
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF182
	.byte	0xd
	.byte	0x95
	.4byte	0x9b5
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8b6
	.uleb128 0x9
	.4byte	0xb99
	.4byte	0xb99
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa35
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0xd
	.byte	0x96
	.4byte	0xb06
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF184
	.uleb128 0x4
	.4byte	.LASF185
	.byte	0xe
	.byte	0x16
	.4byte	0x98
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0xe
	.byte	0x1b
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0xe
	.byte	0x1e
	.4byte	0x69
	.uleb128 0x4
	.4byte	.LASF188
	.byte	0xe
	.byte	0x20
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF189
	.byte	0xe
	.byte	0x24
	.4byte	0xdb
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x98
	.byte	0xe
	.byte	0x2a
	.4byte	0xc2b
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0x7
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF199
	.byte	0xe
	.byte	0x34
	.4byte	0xbe8
	.uleb128 0xb
	.byte	0x8
	.byte	0xe
	.byte	0x39
	.4byte	0xc6f
	.uleb128 0xc
	.4byte	.LASF200
	.byte	0xe
	.byte	0x3a
	.4byte	0xbd2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF201
	.byte	0xe
	.byte	0x3a
	.4byte	0xbd2
	.byte	0x2
	.uleb128 0xe
	.string	"top"
	.byte	0xe
	.byte	0x3a
	.4byte	0xbd2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF202
	.byte	0xe
	.byte	0x3a
	.4byte	0xbd2
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF203
	.byte	0xe
	.byte	0x3b
	.4byte	0xc36
	.uleb128 0x4
	.4byte	.LASF204
	.byte	0xe
	.byte	0x40
	.4byte	0xc85
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0x7c
	.byte	0xe
	.byte	0x41
	.4byte	0xd9a
	.uleb128 0xc
	.4byte	.LASF205
	.byte	0xe
	.byte	0x42
	.4byte	0xbb1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF206
	.byte	0xe
	.byte	0x43
	.4byte	0xd9a
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF207
	.byte	0xe
	.byte	0x44
	.4byte	0xd9a
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF208
	.byte	0xe
	.byte	0x45
	.4byte	0xbbc
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF209
	.byte	0xe
	.byte	0x46
	.4byte	0xbbc
	.byte	0xd
	.uleb128 0xe
	.string	"msx"
	.byte	0xe
	.byte	0x47
	.4byte	0xbbc
	.byte	0xe
	.uleb128 0xe
	.string	"msy"
	.byte	0xe
	.byte	0x47
	.4byte	0xbbc
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF210
	.byte	0xe
	.byte	0x48
	.4byte	0xda0
	.byte	0x10
	.uleb128 0xe
	.string	"dcv"
	.byte	0xe
	.byte	0x49
	.4byte	0xdb0
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF211
	.byte	0xe
	.byte	0x4a
	.4byte	0xbd2
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0xe
	.byte	0x4b
	.4byte	0xbb1
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0xe
	.byte	0x4b
	.4byte	0xbb1
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF212
	.byte	0xe
	.byte	0x4c
	.4byte	0xdc0
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF213
	.byte	0xe
	.byte	0x4d
	.4byte	0xdd6
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF214
	.byte	0xe
	.byte	0x4e
	.4byte	0xdc0
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF215
	.byte	0xe
	.byte	0x4f
	.4byte	0xdf2
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF216
	.byte	0xe
	.byte	0x50
	.4byte	0xb8
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF217
	.byte	0xe
	.byte	0x51
	.4byte	0xd9a
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF218
	.byte	0xe
	.byte	0x52
	.4byte	0xb8
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF219
	.byte	0xe
	.byte	0x53
	.4byte	0xbb1
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF220
	.byte	0xe
	.byte	0x54
	.4byte	0xe27
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF221
	.byte	0xe
	.byte	0x55
	.4byte	0xb8
	.byte	0x78
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbbc
	.uleb128 0x9
	.4byte	0xbbc
	.4byte	0xdb0
	.uleb128 0xa
	.4byte	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0xbc7
	.4byte	0xdc0
	.uleb128 0xa
	.4byte	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0xd9a
	.4byte	0xdd6
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0xdec
	.4byte	0xdec
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbd2
	.uleb128 0x9
	.4byte	0xe02
	.4byte	0xe02
	.uleb128 0xa
	.4byte	0x149
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbdd
	.uleb128 0x16
	.4byte	0xbb1
	.4byte	0xe21
	.uleb128 0x17
	.4byte	0xe21
	.uleb128 0x17
	.4byte	0xd9a
	.uleb128 0x17
	.4byte	0xbb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc7a
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe08
	.uleb128 0xb
	.byte	0x1c
	.byte	0x1
	.byte	0x6f
	.4byte	0xe8a
	.uleb128 0xc
	.4byte	.LASF222
	.byte	0x1
	.byte	0x70
	.4byte	0x9b5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF223
	.byte	0x1
	.byte	0x71
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0x1
	.byte	0x72
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0x1
	.byte	0x73
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF224
	.byte	0x1
	.byte	0x74
	.4byte	0x33
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF225
	.byte	0x1
	.byte	0x75
	.4byte	0x33
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF226
	.byte	0x1
	.byte	0x76
	.4byte	0x9cb
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF227
	.byte	0x1
	.byte	0x77
	.4byte	0xe2d
	.uleb128 0x1c
	.4byte	.LASF516
	.byte	0x1
	.2byte	0x701
	.4byte	0x33
	.byte	0x1
	.4byte	0xecd
	.uleb128 0x1d
	.string	"str"
	.byte	0x1
	.2byte	0x701
	.4byte	0x5ea
	.uleb128 0x1e
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x702
	.4byte	0x33
	.uleb128 0x1f
	.uleb128 0x1e
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x708
	.4byte	0x5ea
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x59a
	.4byte	0x9b5
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf06
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.2byte	0x59a
	.4byte	0x9b5
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x59b
	.4byte	0x9cb
	.4byte	.LLST1
	.byte	0
	.uleb128 0x23
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x6f3
	.4byte	0x33
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x6f9
	.4byte	0x33
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF232
	.byte	0x1
	.byte	0x97
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf95
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x97
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x97
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0x97
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"sel"
	.byte	0x1
	.byte	0x97
	.4byte	0x9b5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x64c7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF233
	.byte	0x1
	.byte	0xaf
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff4
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0xaf
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.byte	0xaf
	.4byte	0x9c0
	.4byte	.LLST2
	.uleb128 0x29
	.string	"h"
	.byte	0x1
	.byte	0xaf
	.4byte	0x9c0
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0xaf
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0x64d3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x188
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1135
	.uleb128 0x21
	.string	"x0"
	.byte	0x1
	.2byte	0x188
	.4byte	0x9c0
	.4byte	.LLST4
	.uleb128 0x21
	.string	"y0"
	.byte	0x1
	.2byte	0x188
	.4byte	0x9c0
	.4byte	.LLST5
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.2byte	0x188
	.4byte	0x9c0
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x188
	.4byte	0x9b5
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x188
	.4byte	0x9c0
	.4byte	.LLST8
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x188
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x189
	.4byte	0x9c0
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x18a
	.4byte	0x9c0
	.4byte	.LLST10
	.uleb128 0x2e
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x18b
	.4byte	0x9c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x18c
	.4byte	0x9c0
	.4byte	.LLST11
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x9c0
	.4byte	.LLST12
	.uleb128 0x2d
	.string	"ylm"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x9c0
	.4byte	.LLST13
	.uleb128 0x2f
	.4byte	.LVL37
	.4byte	0xf95
	.4byte	0x10e0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL38
	.4byte	0xf95
	.4byte	0x1102
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL47
	.4byte	0xf95
	.4byte	0x111d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.4byte	.LVL48
	.4byte	0xf95
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x2f3
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1259
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y"
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"x0"
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"y0"
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x2f3
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x9b5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LVL52
	.4byte	0xf95
	.4byte	0x11cc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL53
	.4byte	0xf95
	.4byte	0x11fe
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL54
	.4byte	0xf95
	.4byte	0x122d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.4byte	.LVL55
	.4byte	0xf95
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF242
	.byte	0x1
	.byte	0xbe
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b8
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.byte	0xbe
	.4byte	0x9c0
	.4byte	.LLST14
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0xbe
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"w"
	.byte	0x1
	.byte	0xbe
	.4byte	0x9c0
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0xbe
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL64
	.4byte	0x64d3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF243
	.byte	0x1
	.byte	0xdc
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13ff
	.uleb128 0x29
	.string	"x0"
	.byte	0x1
	.byte	0xdc
	.4byte	0x9c0
	.4byte	.LLST16
	.uleb128 0x29
	.string	"y0"
	.byte	0x1
	.byte	0xdc
	.4byte	0x9c0
	.4byte	.LLST17
	.uleb128 0x29
	.string	"x1"
	.byte	0x1
	.byte	0xdc
	.4byte	0x9c0
	.4byte	.LLST18
	.uleb128 0x29
	.string	"y1"
	.byte	0x1
	.byte	0xdc
	.4byte	0x9c0
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0xdc
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LASF244
	.byte	0x1
	.byte	0xe8
	.4byte	0x33
	.4byte	.LLST20
	.uleb128 0x32
	.string	"dx"
	.byte	0x1
	.byte	0xf3
	.4byte	0x9c0
	.4byte	.LLST21
	.uleb128 0x32
	.string	"dy"
	.byte	0x1
	.byte	0xf3
	.4byte	0x9c0
	.4byte	.LLST22
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.byte	0xf4
	.4byte	0x9c0
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LASF245
	.byte	0x1
	.byte	0xf4
	.4byte	0x9c0
	.4byte	.LLST24
	.uleb128 0x32
	.string	"xs"
	.byte	0x1
	.byte	0xf4
	.4byte	0x9c0
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	.LASF246
	.byte	0x1
	.byte	0xf4
	.4byte	0x9c0
	.4byte	.LLST26
	.uleb128 0x33
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1390
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.byte	0xf0
	.4byte	0x9c0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL67
	.4byte	0xf95
	.uleb128 0x2f
	.4byte	.LVL91
	.4byte	0xf32
	.4byte	0x13b3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL93
	.4byte	0xf95
	.4byte	0x13cd
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL106
	.4byte	0xf32
	.4byte	0x13e1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL108
	.4byte	0x1259
	.4byte	0x13f5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL114
	.4byte	0x1259
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1ec
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e3
	.uleb128 0x30
	.string	"x0"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y0"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"x1"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"y1"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.string	"x2"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.string	"y2"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x9cb
	.4byte	.LLST27
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1ec
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.4byte	.LVL116
	.4byte	0x12b8
	.4byte	0x149a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL118
	.4byte	0x12b8
	.4byte	0x14c0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL119
	.4byte	0x12b8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x151
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15bc
	.uleb128 0x21
	.string	"x1"
	.byte	0x1
	.2byte	0x151
	.4byte	0x9cb
	.4byte	.LLST28
	.uleb128 0x30
	.string	"y1"
	.byte	0x1
	.2byte	0x151
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.2byte	0x151
	.4byte	0x9cb
	.4byte	.LLST29
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.2byte	0x151
	.4byte	0x9cb
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x151
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LVL122
	.4byte	0x1259
	.4byte	0x1564
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL124
	.4byte	0xf95
	.4byte	0x157e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL126
	.4byte	0x1259
	.4byte	0x159f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.4byte	.LVL127
	.4byte	0xf95
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x204
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1749
	.uleb128 0x21
	.string	"x0"
	.byte	0x1
	.2byte	0x204
	.4byte	0x9cb
	.4byte	.LLST31
	.uleb128 0x21
	.string	"y0"
	.byte	0x1
	.2byte	0x204
	.4byte	0x9cb
	.4byte	.LLST32
	.uleb128 0x21
	.string	"x1"
	.byte	0x1
	.2byte	0x204
	.4byte	0x9cb
	.4byte	.LLST33
	.uleb128 0x21
	.string	"y1"
	.byte	0x1
	.2byte	0x204
	.4byte	0x9cb
	.4byte	.LLST34
	.uleb128 0x21
	.string	"x2"
	.byte	0x1
	.2byte	0x204
	.4byte	0x9cb
	.4byte	.LLST35
	.uleb128 0x21
	.string	"y2"
	.byte	0x1
	.2byte	0x204
	.4byte	0x9cb
	.4byte	.LLST36
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x204
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"a"
	.byte	0x1
	.2byte	0x205
	.4byte	0x9c0
	.4byte	.LLST37
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.2byte	0x205
	.4byte	0x9c0
	.4byte	.LLST38
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x205
	.4byte	0x9c0
	.4byte	.LLST39
	.uleb128 0x22
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x205
	.4byte	0x9c0
	.4byte	.LLST40
	.uleb128 0x22
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x220
	.4byte	0x9c0
	.4byte	.LLST41
	.uleb128 0x22
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x221
	.4byte	0x9c0
	.4byte	.LLST42
	.uleb128 0x22
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x222
	.4byte	0x9c0
	.4byte	.LLST43
	.uleb128 0x22
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x223
	.4byte	0x9c0
	.4byte	.LLST44
	.uleb128 0x22
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x224
	.4byte	0x9c0
	.4byte	.LLST45
	.uleb128 0x22
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x225
	.4byte	0x9c0
	.4byte	.LLST46
	.uleb128 0x2d
	.string	"sa"
	.byte	0x1
	.2byte	0x227
	.4byte	0x9d6
	.4byte	.LLST47
	.uleb128 0x2d
	.string	"sb"
	.byte	0x1
	.2byte	0x228
	.4byte	0x9d6
	.4byte	.LLST48
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1707
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x9c0
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x171b
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.2byte	0x20a
	.4byte	0x9c0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL161
	.4byte	0x1259
	.uleb128 0x2f
	.4byte	.LVL176
	.4byte	0x1259
	.4byte	0x1738
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL191
	.4byte	0x1259
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x121
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b0
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x121
	.4byte	0x9c0
	.4byte	.LLST49
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x121
	.4byte	0x9c0
	.4byte	.LLST50
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.2byte	0x121
	.4byte	0x9c0
	.4byte	.LLST51
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.2byte	0x121
	.4byte	0x9c0
	.4byte	.LLST52
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x121
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.4byte	.LVL211
	.4byte	0x64d3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x73a
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1947
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x73a
	.4byte	0x9c0
	.4byte	.LLST53
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x73a
	.4byte	0x9c0
	.4byte	.LLST54
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.2byte	0x73a
	.4byte	0x9c0
	.4byte	.LLST55
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.2byte	0x73a
	.4byte	0x9c0
	.4byte	.LLST56
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x73a
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x73a
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.4byte	.LVL216
	.4byte	0x15bc
	.4byte	0x1851
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL218
	.4byte	0x15bc
	.4byte	0x1896
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xb
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL219
	.4byte	0x1749
	.4byte	0x18c6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL220
	.4byte	0x13ff
	.4byte	0x18f9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL221
	.4byte	0x13ff
	.4byte	0x1920
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL222
	.4byte	0x14e3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x747
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1add
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x747
	.4byte	0x9c0
	.4byte	.LLST57
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x747
	.4byte	0x9c0
	.4byte	.LLST58
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.2byte	0x747
	.4byte	0x9c0
	.4byte	.LLST59
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.2byte	0x747
	.4byte	0x9c0
	.4byte	.LLST60
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x747
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x747
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.4byte	.LVL227
	.4byte	0x15bc
	.4byte	0x19e8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL229
	.4byte	0x15bc
	.4byte	0x1a2d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0xb
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL230
	.4byte	0x1749
	.4byte	0x1a5d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL231
	.4byte	0x13ff
	.4byte	0x1a90
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL232
	.4byte	0x13ff
	.4byte	0x1ab7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL233
	.4byte	0x14e3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x160
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cce
	.uleb128 0x30
	.string	"x0"
	.byte	0x1
	.2byte	0x160
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y0"
	.byte	0x1
	.2byte	0x160
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.2byte	0x160
	.4byte	0x9c0
	.4byte	.LLST61
	.uleb128 0x2c
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x160
	.4byte	0x9b5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x160
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x161
	.4byte	0x9c0
	.4byte	.LLST62
	.uleb128 0x22
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x162
	.4byte	0x9c0
	.4byte	.LLST63
	.uleb128 0x2e
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x163
	.4byte	0x9c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x164
	.4byte	0x9c0
	.4byte	.LLST64
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x165
	.4byte	0x9c0
	.4byte	.LLST65
	.uleb128 0x35
	.4byte	.LVL235
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL245
	.4byte	0xf32
	.4byte	0x1bbf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x11
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL246
	.4byte	0xf32
	.4byte	0x1bd2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL247
	.4byte	0xf32
	.4byte	0x1c07
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x11
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL248
	.4byte	0xf32
	.4byte	0x1c1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL249
	.4byte	0xf32
	.4byte	0x1c4f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL250
	.4byte	0xf32
	.4byte	0x1c6f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL251
	.4byte	0xf32
	.4byte	0x1ca4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL252
	.4byte	0xf32
	.4byte	0x1cc4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL255
	.4byte	0x64eb
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x28d
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dfa
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"x0"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"y0"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x28d
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x28d
	.4byte	0x9b5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x35
	.4byte	.LVL257
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL258
	.4byte	0xf32
	.4byte	0x1d69
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL259
	.4byte	0xf32
	.4byte	0x1d96
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL260
	.4byte	0xf32
	.4byte	0x1dc3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL261
	.4byte	0xf32
	.4byte	0x1df0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL262
	.4byte	0x64eb
	.byte	0
	.uleb128 0x38
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x35a
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f58
	.uleb128 0x21
	.string	"cx"
	.byte	0x1
	.2byte	0x35a
	.4byte	0x9cb
	.4byte	.LLST66
	.uleb128 0x21
	.string	"cy"
	.byte	0x1
	.2byte	0x35a
	.4byte	0x9cb
	.4byte	.LLST67
	.uleb128 0x2c
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x35a
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x35a
	.4byte	0x9cb
	.4byte	.LLST68
	.uleb128 0x2b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x35a
	.4byte	0x25
	.4byte	.LLST69
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.2byte	0x35a
	.4byte	0x25
	.4byte	.LLST70
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x35a
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x35d
	.4byte	0x25
	.4byte	.LLST71
	.uleb128 0x22
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x35e
	.4byte	0x25
	.4byte	.LLST72
	.uleb128 0x39
	.string	"ir2"
	.byte	0x1
	.2byte	0x362
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x39
	.string	"or2"
	.byte	0x1
	.2byte	0x363
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x1f21
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x366
	.4byte	0x33
	.4byte	.LLST73
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x367
	.4byte	0x33
	.4byte	.LLST74
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x39
	.string	"x2"
	.byte	0x1
	.2byte	0x368
	.4byte	0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2d
	.string	"y2"
	.byte	0x1
	.2byte	0x369
	.4byte	0x33
	.4byte	.LLST75
	.uleb128 0x27
	.4byte	.LVL299
	.4byte	0xf32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL269
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL272
	.4byte	0x6502
	.uleb128 0x35
	.4byte	.LVL282
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL283
	.4byte	0x6502
	.uleb128 0x35
	.4byte	.LVL292
	.4byte	0x64df
	.uleb128 0x35
	.4byte	.LVL304
	.4byte	0x64eb
	.byte	0
	.uleb128 0x20
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x90a
	.4byte	0xbb1
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fbd
	.uleb128 0x21
	.string	"jd"
	.byte	0x1
	.2byte	0x90b
	.4byte	0xe21
	.4byte	.LLST76
	.uleb128 0x2c
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x90c
	.4byte	0xd9a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"nd"
	.byte	0x1
	.2byte	0x90d
	.4byte	0xbb1
	.4byte	.LLST77
	.uleb128 0x39
	.string	"dev"
	.byte	0x1
	.2byte	0x910
	.4byte	0x1fbd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LVL309
	.4byte	0x650d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb9f
	.uleb128 0x20
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x414
	.4byte	0x33
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22f5
	.uleb128 0x2b
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x414
	.4byte	0x61b
	.4byte	.LLST78
	.uleb128 0x2c
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x414
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x415
	.4byte	0x33
	.4byte	.LLST79
	.uleb128 0x2e
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x416
	.4byte	0x9fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x39
	.string	"sb"
	.byte	0x1
	.2byte	0x41d
	.4byte	0x8c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x420
	.4byte	0xb83
	.4byte	.LLST80
	.uleb128 0x3b
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x487
	.uleb128 0x22
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x42d
	.4byte	0x33
	.4byte	.LLST81
	.uleb128 0x22
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x43c
	.4byte	0x33
	.4byte	.LLST82
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x44e
	.4byte	0x33
	.4byte	.LLST83
	.uleb128 0x22
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x44f
	.4byte	0x33
	.4byte	.LLST84
	.uleb128 0x22
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x450
	.4byte	0x33
	.4byte	.LLST85
	.uleb128 0x22
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x451
	.4byte	0x33
	.4byte	.LLST86
	.uleb128 0x22
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x452
	.4byte	0x9b5
	.4byte	.LLST87
	.uleb128 0x22
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x453
	.4byte	0x9b5
	.4byte	.LLST88
	.uleb128 0x22
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x455
	.4byte	0x33
	.4byte	.LLST89
	.uleb128 0x22
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x456
	.4byte	0x33
	.4byte	.LLST90
	.uleb128 0x33
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x2110
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x461
	.4byte	0x9b5
	.4byte	.LLST91
	.uleb128 0x22
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x462
	.4byte	0x33
	.4byte	.LLST92
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL312
	.4byte	0x6516
	.4byte	0x2131
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x35
	.4byte	.LVL313
	.4byte	0x651f
	.uleb128 0x2f
	.4byte	.LVL314
	.4byte	0x652a
	.4byte	0x2157
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL316
	.4byte	0x6535
	.4byte	0x217b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL319
	.4byte	0x6540
	.4byte	0x2196
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL321
	.4byte	0x654b
	.4byte	0x21b4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL324
	.4byte	0x654b
	.4byte	0x21d2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL326
	.4byte	0x655a
	.4byte	0x21e6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL327
	.4byte	0x654b
	.4byte	0x2204
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL328
	.4byte	0x6565
	.4byte	0x2218
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL330
	.4byte	0x6570
	.4byte	0x2237
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL332
	.4byte	0x6565
	.4byte	0x224b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL333
	.4byte	0x654b
	.4byte	0x2269
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL337
	.4byte	0x657b
	.4byte	0x2289
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL338
	.4byte	0x654b
	.4byte	0x22a7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL353
	.4byte	0x6535
	.4byte	0x22cb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL355
	.4byte	0x651f
	.uleb128 0x27
	.4byte	.LVL356
	.4byte	0x6586
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x923
	.4byte	0xbb1
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246c
	.uleb128 0x21
	.string	"jd"
	.byte	0x1
	.2byte	0x924
	.4byte	0xe21
	.4byte	.LLST93
	.uleb128 0x2b
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x925
	.4byte	0xb8
	.4byte	.LLST94
	.uleb128 0x2b
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x926
	.4byte	0x246c
	.4byte	.LLST95
	.uleb128 0x39
	.string	"dev"
	.byte	0x1
	.2byte	0x929
	.4byte	0x1fbd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x92c
	.4byte	0x33
	.4byte	.LLST96
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x92d
	.4byte	0x33
	.4byte	.LLST97
	.uleb128 0x22
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x92e
	.4byte	0x33
	.4byte	.LLST98
	.uleb128 0x22
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x92e
	.4byte	0x33
	.4byte	.LLST99
	.uleb128 0x22
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x92e
	.4byte	0x33
	.4byte	.LLST100
	.uleb128 0x22
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x92e
	.4byte	0x33
	.4byte	.LLST101
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.2byte	0x92f
	.4byte	0xd9a
	.4byte	.LLST102
	.uleb128 0x22
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x931
	.4byte	0x33
	.4byte	.LLST103
	.uleb128 0x2d
	.string	"top"
	.byte	0x1
	.2byte	0x932
	.4byte	0x33
	.4byte	.LLST104
	.uleb128 0x22
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x933
	.4byte	0x33
	.4byte	.LLST105
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x934
	.4byte	0x33
	.4byte	.LLST106
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.2byte	0x945
	.4byte	0x9e1
	.4byte	.LLST107
	.uleb128 0x33
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x245c
	.uleb128 0x22
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x949
	.4byte	0xaf5
	.4byte	.LLST108
	.uleb128 0x2f
	.4byte	.LVL386
	.4byte	0x6591
	.4byte	0x2438
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL387
	.4byte	0x659d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL389
	.4byte	0x6591
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc6f
	.uleb128 0x20
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x8f5
	.4byte	0xbb1
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x250c
	.uleb128 0x21
	.string	"jd"
	.byte	0x1
	.2byte	0x8f6
	.4byte	0xe21
	.4byte	.LLST109
	.uleb128 0x2b
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x8f7
	.4byte	0xd9a
	.4byte	.LLST110
	.uleb128 0x30
	.string	"nd"
	.byte	0x1
	.2byte	0x8f8
	.4byte	0xbb1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"rb"
	.byte	0x1
	.2byte	0x8fa
	.4byte	0x33
	.4byte	.LLST111
	.uleb128 0x2d
	.string	"dev"
	.byte	0x1
	.2byte	0x8fc
	.4byte	0x1fbd
	.4byte	.LLST112
	.uleb128 0x2f
	.4byte	.LVL395
	.4byte	0x6570
	.4byte	0x24f6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL397
	.4byte	0x65a9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF291
	.byte	0x1
	.byte	0x8c
	.4byte	0x33
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2540
	.uleb128 0x25
	.string	"c1"
	.byte	0x1
	.byte	0x8c
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"c2"
	.byte	0x1
	.byte	0x8c
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF293
	.byte	0x1
	.byte	0x9f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x259a
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x9f
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x9f
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0x9f
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"sel"
	.byte	0x1
	.byte	0x9f
	.4byte	0x9b5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LVL402
	.4byte	0xf32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF292
	.byte	0x1
	.byte	0xa6
	.4byte	0xa35
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25d5
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.byte	0xa6
	.4byte	0x9c0
	.4byte	.LLST113
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0xa6
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.4byte	.LVL405
	.4byte	0x65b4
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF294
	.byte	0x1
	.byte	0xce
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x262e
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0xce
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0xce
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"h"
	.byte	0x1
	.byte	0xce
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0xce
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL407
	.4byte	0xf95
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF295
	.byte	0x1
	.byte	0xd4
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2687
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0xd4
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0xd4
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"w"
	.byte	0x1
	.byte	0xd4
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0xd4
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL409
	.4byte	0x1259
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x11a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26ea
	.uleb128 0x30
	.string	"x0"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y0"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"x1"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"y1"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x11a
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.4byte	.LVL411
	.4byte	0x12b8
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x275e
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.2byte	0x139
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y"
	.byte	0x1
	.2byte	0x139
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"w"
	.byte	0x1
	.2byte	0x139
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"h"
	.byte	0x1
	.2byte	0x139
	.4byte	0x9c0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x139
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL413
	.4byte	0x1749
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x13f
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2798
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x13f
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL414
	.4byte	0x64d3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x145
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27c7
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x145
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.4byte	.LVL415
	.4byte	0x64d3
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x15a
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x283d
	.uleb128 0x30
	.string	"x1"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y1"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"w"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"h"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x15a
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL417
	.4byte	0x14e3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x1a7
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29da
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x9c0
	.4byte	.LLST114
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x9c0
	.4byte	.LLST115
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x9cb
	.4byte	.LLST116
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x9cb
	.4byte	.LLST117
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x9cb
	.4byte	.LLST118
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1a7
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LVL424
	.4byte	0x1259
	.4byte	0x28e3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL425
	.4byte	0x1259
	.4byte	0x2901
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x77
	.sleb128 -1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL428
	.4byte	0xf95
	.4byte	0x2925
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL430
	.4byte	0xf95
	.4byte	0x2949
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x74
	.sleb128 -1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL431
	.4byte	0x1add
	.4byte	0x296e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL433
	.4byte	0x1add
	.4byte	0x2993
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL434
	.4byte	0x1add
	.4byte	0x29b8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL435
	.4byte	0x1add
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x1bb
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ace
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x9c0
	.4byte	.LLST119
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x9c0
	.4byte	.LLST120
	.uleb128 0x30
	.string	"w"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x9cb
	.4byte	.LLST121
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1bb
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LVL442
	.4byte	0x1749
	.4byte	0x2a81
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL446
	.4byte	0xff4
	.4byte	0x2aa6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL447
	.4byte	0xff4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x1cc
	.byte	0x1
	.4byte	0x2b14
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x9c0
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x9c0
	.uleb128 0x40
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x9c0
	.uleb128 0x40
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x9cb
	.uleb128 0x40
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xa35
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x1d6
	.byte	0x1
	.4byte	0x2b66
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x9c0
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x9c0
	.uleb128 0x40
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x9c0
	.uleb128 0x40
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x9cb
	.uleb128 0x40
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x9cb
	.uleb128 0x40
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xa35
	.byte	0
	.uleb128 0x41
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x1e0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c87
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x9cb
	.4byte	.LLST122
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x9cb
	.4byte	.LLST123
	.uleb128 0x2b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x9cb
	.4byte	.LLST124
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x9cb
	.4byte	.LLST125
	.uleb128 0x2b
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x9cb
	.4byte	.LLST126
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.4byte	0x2ace
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x2c2c
	.uleb128 0x43
	.4byte	0x2b07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x44
	.4byte	0x2afb
	.4byte	.LLST127
	.uleb128 0x44
	.4byte	0x2aef
	.4byte	.LLST128
	.uleb128 0x44
	.4byte	0x2ae5
	.4byte	.LLST129
	.uleb128 0x44
	.4byte	0x2adb
	.4byte	.LLST130
	.uleb128 0x35
	.4byte	.LVL460
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL461
	.4byte	0x6502
	.byte	0
	.uleb128 0x45
	.4byte	0x2b14
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x1e5
	.uleb128 0x43
	.4byte	0x2b59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x44
	.4byte	0x2b4d
	.4byte	.LLST131
	.uleb128 0x44
	.4byte	0x2b41
	.4byte	.LLST132
	.uleb128 0x44
	.4byte	0x2b35
	.4byte	.LLST133
	.uleb128 0x46
	.4byte	0x2b2b
	.uleb128 0x46
	.4byte	0x2b21
	.uleb128 0x35
	.4byte	.LVL476
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL478
	.4byte	0x6502
	.uleb128 0x35
	.4byte	.LVL495
	.4byte	0x12b8
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x1f4
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d75
	.uleb128 0x21
	.string	"x0"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x9cb
	.4byte	.LLST134
	.uleb128 0x21
	.string	"y0"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x9cb
	.4byte	.LLST135
	.uleb128 0x21
	.string	"x1"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x9cb
	.4byte	.LLST136
	.uleb128 0x21
	.string	"y1"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x9cb
	.4byte	.LLST137
	.uleb128 0x21
	.string	"x2"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x9cb
	.4byte	.LLST138
	.uleb128 0x21
	.string	"y2"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x9cb
	.4byte	.LLST139
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.4byte	.LVL506
	.4byte	0x12b8
	.4byte	0x2d2c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL511
	.4byte	0x12b8
	.4byte	0x2d52
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL512
	.4byte	0x12b8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x254
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2df2
	.uleb128 0x30
	.string	"x0"
	.byte	0x1
	.2byte	0x254
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y0"
	.byte	0x1
	.2byte	0x254
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"x1"
	.byte	0x1
	.2byte	0x254
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"y1"
	.byte	0x1
	.2byte	0x254
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.string	"x2"
	.byte	0x1
	.2byte	0x254
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.string	"y2"
	.byte	0x1
	.2byte	0x254
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x254
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.4byte	.LVL514
	.4byte	0x15bc
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x25e
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3036
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x9c0
	.4byte	.LLST140
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x9c0
	.4byte	.LLST141
	.uleb128 0x2b
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x25e
	.4byte	0x33
	.4byte	.LLST142
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x25e
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x261
	.4byte	0x33
	.4byte	.LLST143
	.uleb128 0x22
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x262
	.4byte	0x33
	.4byte	.LLST144
	.uleb128 0x22
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x263
	.4byte	0x33
	.4byte	.LLST145
	.uleb128 0x2d
	.string	"x1"
	.byte	0x1
	.2byte	0x264
	.4byte	0x33
	.4byte	.LLST146
	.uleb128 0x39
	.string	"y1"
	.byte	0x1
	.2byte	0x265
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LVL520
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL521
	.4byte	0xf32
	.4byte	0x2ebc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL522
	.4byte	0xf32
	.4byte	0x2ee2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL523
	.4byte	0xf32
	.4byte	0x2f08
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL524
	.4byte	0xf32
	.4byte	0x2f2e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL532
	.4byte	0xf32
	.4byte	0x2f5b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL533
	.4byte	0xf32
	.4byte	0x2f7b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL534
	.4byte	0xf32
	.4byte	0x2f9b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL535
	.4byte	0xf32
	.4byte	0x2fae
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL536
	.4byte	0xf32
	.4byte	0x2fdb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL537
	.4byte	0xf32
	.4byte	0x2ff4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL538
	.4byte	0xf32
	.4byte	0x300d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL539
	.4byte	0xf32
	.4byte	0x302c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL541
	.4byte	0x64eb
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x283
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30eb
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x283
	.4byte	0x9c0
	.4byte	.LLST147
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x283
	.4byte	0x9c0
	.4byte	.LLST148
	.uleb128 0x2c
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x283
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x283
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LVL547
	.4byte	0xf95
	.4byte	0x30bc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xe
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.4byte	.LVL548
	.4byte	0xff4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x29c
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3246
	.uleb128 0x21
	.string	"x0"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x9cb
	.4byte	.LLST149
	.uleb128 0x21
	.string	"y0"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x9cb
	.4byte	.LLST150
	.uleb128 0x21
	.string	"rx"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x9cb
	.4byte	.LLST151
	.uleb128 0x21
	.string	"ry"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x9cb
	.4byte	.LLST152
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x29c
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x29c
	.4byte	0x9b5
	.4byte	.LLST153
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x9cb
	.4byte	.LLST154
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x9cb
	.4byte	.LLST155
	.uleb128 0x22
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x9d6
	.4byte	.LLST156
	.uleb128 0x22
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x9d6
	.4byte	.LLST157
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x9d6
	.4byte	.LLST158
	.uleb128 0x2e
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x9d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x9d6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x9d6
	.4byte	.LLST159
	.uleb128 0x22
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x9d6
	.4byte	.LLST160
	.uleb128 0x2f
	.4byte	.LVL561
	.4byte	0x1cce
	.4byte	0x3218
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL579
	.4byte	0x1cce
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x300
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33a1
	.uleb128 0x21
	.string	"x0"
	.byte	0x1
	.2byte	0x300
	.4byte	0x9cb
	.4byte	.LLST161
	.uleb128 0x21
	.string	"y0"
	.byte	0x1
	.2byte	0x300
	.4byte	0x9cb
	.4byte	.LLST162
	.uleb128 0x21
	.string	"rx"
	.byte	0x1
	.2byte	0x300
	.4byte	0x9cb
	.4byte	.LLST163
	.uleb128 0x21
	.string	"ry"
	.byte	0x1
	.2byte	0x300
	.4byte	0x9cb
	.4byte	.LLST164
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x300
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x300
	.4byte	0x9b5
	.4byte	.LLST165
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x304
	.4byte	0x9cb
	.4byte	.LLST166
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x304
	.4byte	0x9cb
	.4byte	.LLST167
	.uleb128 0x22
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x305
	.4byte	0x9d6
	.4byte	.LLST168
	.uleb128 0x22
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x305
	.4byte	0x9d6
	.4byte	.LLST169
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x306
	.4byte	0x9d6
	.4byte	.LLST170
	.uleb128 0x2e
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x307
	.4byte	0x9d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x308
	.4byte	0x9d6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x309
	.4byte	0x9d6
	.4byte	.LLST171
	.uleb128 0x22
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x309
	.4byte	0x9d6
	.4byte	.LLST172
	.uleb128 0x2f
	.4byte	.LVL602
	.4byte	0x1135
	.4byte	0x3373
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL620
	.4byte	0x1135
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x385
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x368e
	.uleb128 0x21
	.string	"cx"
	.byte	0x1
	.2byte	0x385
	.4byte	0x9cb
	.4byte	.LLST173
	.uleb128 0x21
	.string	"cy"
	.byte	0x1
	.2byte	0x385
	.4byte	0x9cb
	.4byte	.LLST174
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.2byte	0x385
	.4byte	0x9cb
	.4byte	.LLST175
	.uleb128 0x21
	.string	"th"
	.byte	0x1
	.2byte	0x385
	.4byte	0x9cb
	.4byte	.LLST176
	.uleb128 0x2b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x385
	.4byte	0x25
	.4byte	.LLST177
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.2byte	0x385
	.4byte	0x25
	.4byte	.LLST178
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x385
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x385
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x38c
	.4byte	0x33
	.4byte	.LLST179
	.uleb128 0x22
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x38e
	.4byte	0x25
	.4byte	.LLST180
	.uleb128 0x22
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x38f
	.4byte	0x25
	.4byte	.LLST181
	.uleb128 0x35
	.4byte	.LVL637
	.4byte	0x250c
	.uleb128 0x2f
	.4byte	.LVL640
	.4byte	0x65c0
	.4byte	0x3485
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL641
	.4byte	0x65c0
	.4byte	0x349a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL651
	.4byte	0x1dfa
	.4byte	0x34d5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43b40000
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL652
	.4byte	0x1dfa
	.4byte	0x350c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL654
	.4byte	0x1dfa
	.4byte	0x353b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL655
	.4byte	0x1dfa
	.4byte	0x3571
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL656
	.4byte	0x1dfa
	.4byte	0x35a0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL658
	.4byte	0x1dfa
	.4byte	0x35da
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL659
	.4byte	0x1dfa
	.4byte	0x3613
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL661
	.4byte	0x1dfa
	.4byte	0x362d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL667
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL670
	.4byte	0x6502
	.uleb128 0x2f
	.4byte	.LVL687
	.4byte	0x12b8
	.4byte	0x365f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL690
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL691
	.4byte	0x6502
	.uleb128 0x27
	.4byte	.LVL704
	.4byte	0x12b8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x3b3
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x387c
	.uleb128 0x21
	.string	"cx"
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x33
	.4byte	.LLST182
	.uleb128 0x21
	.string	"cy"
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x33
	.4byte	.LLST183
	.uleb128 0x2b
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x33
	.4byte	.LLST184
	.uleb128 0x2b
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x33
	.4byte	.LLST185
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x3b3
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x3b3
	.4byte	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.string	"rot"
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"th"
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x9b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"deg"
	.byte	0x1
	.2byte	0x3b7
	.4byte	0x33
	.4byte	.LLST186
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x3b8
	.4byte	0x33
	.4byte	.LLST187
	.uleb128 0x47
	.4byte	0x388f
	.4byte	.LLST188
	.uleb128 0x2e
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x3bd
	.4byte	0x387c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x47
	.4byte	0x38a7
	.4byte	.LLST189
	.uleb128 0x22
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x3bd
	.4byte	0x3894
	.4byte	.LLST190
	.uleb128 0x22
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x3be
	.4byte	0x33
	.4byte	.LLST191
	.uleb128 0x33
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x37ae
	.uleb128 0x2d
	.string	"idx"
	.byte	0x1
	.2byte	0x3c0
	.4byte	0x33
	.4byte	.LLST192
	.uleb128 0x35
	.4byte	.LVL725
	.4byte	0x6502
	.uleb128 0x35
	.4byte	.LVL731
	.4byte	0x64f7
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x3806
	.uleb128 0x37
	.string	"idx"
	.byte	0x1
	.2byte	0x3c7
	.4byte	0x33
	.uleb128 0x2f
	.4byte	.LVL736
	.4byte	0x15bc
	.4byte	0x37e4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 -100
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL737
	.4byte	0x15bc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 -100
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x3872
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x33
	.4byte	.LLST193
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x3849
	.uleb128 0x37
	.string	"idx"
	.byte	0x1
	.2byte	0x3d0
	.4byte	0x33
	.uleb128 0x35
	.4byte	.LVL744
	.4byte	0x6502
	.uleb128 0x35
	.4byte	.LVL749
	.4byte	0x64f7
	.byte	0
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0xb0
	.uleb128 0x2d
	.string	"idx"
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x33
	.4byte	.LLST194
	.uleb128 0x35
	.4byte	.LVL754
	.4byte	0x12b8
	.uleb128 0x35
	.4byte	.LVL756
	.4byte	0x12b8
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL713
	.4byte	0x250c
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x388f
	.uleb128 0x48
	.4byte	0x149
	.4byte	0x373d
	.byte	0
	.uleb128 0x18
	.4byte	0x149
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x38a7
	.uleb128 0x48
	.4byte	0x149
	.4byte	0x3755
	.byte	0
	.uleb128 0x18
	.4byte	0x149
	.uleb128 0x49
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x494
	.4byte	0x33
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f11
	.uleb128 0x2b
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x494
	.4byte	0x5ea
	.4byte	.LLST195
	.uleb128 0x21
	.string	"dbg"
	.byte	0x1
	.2byte	0x494
	.4byte	0x9b5
	.4byte	.LLST196
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x495
	.4byte	0x33
	.4byte	.LLST197
	.uleb128 0x2e
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x496
	.4byte	0x3f11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2e
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x497
	.4byte	0x3f11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.2byte	0x498
	.4byte	0xad
	.4byte	.LLST198
	.uleb128 0x39
	.string	"sb"
	.byte	0x1
	.2byte	0x499
	.4byte	0x8c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.string	"ffd"
	.byte	0x1
	.2byte	0x49a
	.4byte	0xb83
	.4byte	.LLST199
	.uleb128 0x22
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x49b
	.4byte	0xb83
	.4byte	.LLST200
	.uleb128 0x22
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x49c
	.4byte	0x5ea
	.4byte	.LLST201
	.uleb128 0x3b
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x52d
	.uleb128 0x22
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x4c1
	.4byte	0x33
	.4byte	.LLST202
	.uleb128 0x22
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x4ce
	.4byte	0x5ea
	.4byte	.LLST203
	.uleb128 0x22
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x4d0
	.4byte	0x33
	.4byte	.LLST204
	.uleb128 0x22
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x4dd
	.4byte	0x5ea
	.4byte	.LLST205
	.uleb128 0x2e
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x3f21
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x22
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x4e8
	.4byte	0x33
	.4byte	.LLST206
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x4eb
	.4byte	0x33
	.4byte	.LLST207
	.uleb128 0x22
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x5ea
	.4byte	.LLST208
	.uleb128 0x22
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x5ea
	.4byte	.LLST209
	.uleb128 0x22
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x4ef
	.4byte	0x33
	.4byte	.LLST210
	.uleb128 0x4a
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x529
	.4byte	.LDL1
	.uleb128 0x2d
	.string	"uf"
	.byte	0x1
	.2byte	0x51c
	.4byte	0xaf5
	.4byte	.LLST211
	.uleb128 0x2f
	.4byte	.LVL764
	.4byte	0x6516
	.4byte	0x3a4e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x190
	.byte	0x1c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL765
	.4byte	0x6516
	.4byte	0x3a6e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL766
	.4byte	0x65cc
	.4byte	0x3a82
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL769
	.4byte	0x65d7
	.4byte	0x3aa4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL770
	.4byte	0x654b
	.4byte	0x3ac2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL773
	.4byte	0x654b
	.4byte	0x3add
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL774
	.4byte	0x65cc
	.4byte	0x3af2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL776
	.4byte	0x654b
	.4byte	0x3b06
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL777
	.4byte	0x6540
	.4byte	0x3b20
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL778
	.4byte	0x6535
	.4byte	0x3b44
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL781
	.4byte	0x652a
	.4byte	0x3b61
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL783
	.4byte	0x6535
	.4byte	0x3b85
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL786
	.4byte	0x652a
	.4byte	0x3ba3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL788
	.4byte	0x654b
	.4byte	0x3bc1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL792
	.4byte	0x654b
	.4byte	0x3bdf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL795
	.4byte	0x655a
	.4byte	0x3bf3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL798
	.4byte	0x654b
	.4byte	0x3c11
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL802
	.4byte	0x6570
	.4byte	0x3c37
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL804
	.4byte	0x6565
	.4byte	0x3c4b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL805
	.4byte	0x654b
	.4byte	0x3c69
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL808
	.4byte	0x65e2
	.4byte	0x3c83
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL810
	.4byte	0x657b
	.4byte	0x3ca0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL813
	.4byte	0x654b
	.4byte	0x3cbe
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL818
	.4byte	0x657b
	.4byte	0x3cd5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL821
	.4byte	0x65e2
	.4byte	0x3cee
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL826
	.4byte	0x657b
	.4byte	0x3d0b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL828
	.4byte	0x657b
	.4byte	0x3d28
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC101
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL833
	.4byte	0x65ed
	.4byte	0x3d4e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL836
	.4byte	0x65f8
	.4byte	0x3d6c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL841
	.4byte	0x654b
	.4byte	0x3d8a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL842
	.4byte	0x65ed
	.4byte	0x3daf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL843
	.4byte	0x65ed
	.4byte	0x3dd5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL844
	.4byte	0x6565
	.4byte	0x3de9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL845
	.4byte	0x654b
	.4byte	0x3e04
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL846
	.4byte	0x65cc
	.4byte	0x3e19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL847
	.4byte	0x654b
	.4byte	0x3e30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL850
	.4byte	0x1fc3
	.4byte	0x3e4a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL852
	.4byte	0x654b
	.4byte	0x3e6e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x190
	.byte	0x1c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.byte	0
	.uleb128 0x35
	.4byte	.LVL854
	.4byte	0x651f
	.uleb128 0x2f
	.4byte	.LVL855
	.4byte	0x654b
	.4byte	0x3e9b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x190
	.byte	0x1c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL857
	.4byte	0x654b
	.4byte	0x3eb9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC109
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL860
	.4byte	0x6565
	.4byte	0x3ecd
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL861
	.4byte	0x6586
	.4byte	0x3eeb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC111
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL863
	.4byte	0x651f
	.4byte	0x3f00
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL865
	.4byte	0x6565
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x5f0
	.4byte	0x3f21
	.uleb128 0xa
	.4byte	0x149
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x5f0
	.4byte	0x3f31
	.uleb128 0xa
	.4byte	0x149
	.byte	0x4
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x54b
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fd7
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.2byte	0x54b
	.4byte	0xaf5
	.4byte	.LLST212
	.uleb128 0x22
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x561
	.4byte	0x9cb
	.4byte	.LLST213
	.uleb128 0x2d
	.string	"cc"
	.byte	0x1
	.2byte	0x562
	.4byte	0x9b5
	.4byte	.LLST214
	.uleb128 0x2d
	.string	"cw"
	.byte	0x1
	.2byte	0x562
	.4byte	0x9b5
	.4byte	.LLST215
	.uleb128 0x2d
	.string	"ch"
	.byte	0x1
	.2byte	0x562
	.4byte	0x9b5
	.4byte	.LLST216
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.2byte	0x562
	.4byte	0x9b5
	.4byte	.LLST217
	.uleb128 0x33
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x3fbe
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.2byte	0x54e
	.4byte	0x9b5
	.4byte	.LLST218
	.byte	0
	.uleb128 0x4b
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.2byte	0x55a
	.4byte	0x9b5
	.4byte	.LLST219
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF517
	.byte	0x1
	.2byte	0x57a
	.byte	0x1
	.4byte	0x4028
	.uleb128 0x1e
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x57b
	.4byte	0x9cb
	.uleb128 0x37
	.string	"cc"
	.byte	0x1
	.2byte	0x57c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"cw"
	.byte	0x1
	.2byte	0x57c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"ch"
	.byte	0x1
	.2byte	0x57c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"cd"
	.byte	0x1
	.2byte	0x57c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"cy"
	.byte	0x1
	.2byte	0x57c
	.4byte	0x9b5
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x5e1
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40bb
	.uleb128 0x2b
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x5e1
	.4byte	0x9b5
	.4byte	.LLST220
	.uleb128 0x2c
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x5e1
	.4byte	0x61b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x42
	.4byte	0x3fd7
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.2byte	0x5fd
	.4byte	0x40b1
	.uleb128 0x4b
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x4d
	.4byte	0x3fe4
	.4byte	.LLST221
	.uleb128 0x4d
	.4byte	0x3ff0
	.4byte	.LLST222
	.uleb128 0x4d
	.4byte	0x3ffb
	.4byte	.LLST223
	.uleb128 0x4d
	.4byte	0x4006
	.4byte	.LLST224
	.uleb128 0x4d
	.4byte	0x4011
	.4byte	.LLST225
	.uleb128 0x4d
	.4byte	0x401c
	.4byte	.LLST226
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL893
	.4byte	0x1fc3
	.byte	0
	.uleb128 0x4e
	.4byte	0xe95
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4150
	.uleb128 0x44
	.4byte	0xea6
	.4byte	.LLST227
	.uleb128 0x4d
	.4byte	0xeb2
	.4byte	.LLST228
	.uleb128 0x33
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x4123
	.uleb128 0x44
	.4byte	0xea6
	.4byte	.LLST229
	.uleb128 0x4b
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x4d
	.4byte	0xeb2
	.4byte	.LLST230
	.uleb128 0x35
	.4byte	.LVL915
	.4byte	0xf06
	.uleb128 0x27
	.4byte	.LVL916
	.4byte	0x65cc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0x413f
	.uleb128 0x4d
	.4byte	0xebf
	.4byte	.LLST231
	.uleb128 0x35
	.4byte	.LVL923
	.4byte	0xecd
	.byte	0
	.uleb128 0x27
	.4byte	.LVL919
	.4byte	0x65cc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x617
	.4byte	0x33
	.byte	0x1
	.4byte	0x4203
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.2byte	0x617
	.4byte	0x33
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.2byte	0x617
	.4byte	0x33
	.uleb128 0x37
	.string	"ch"
	.byte	0x1
	.2byte	0x618
	.4byte	0x9b5
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x619
	.4byte	0x33
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.2byte	0x619
	.4byte	0x33
	.uleb128 0x1e
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x619
	.4byte	0x33
	.uleb128 0x37
	.string	"cx"
	.byte	0x1
	.2byte	0x64d
	.4byte	0x33
	.uleb128 0x37
	.string	"cy"
	.byte	0x1
	.2byte	0x64d
	.4byte	0x33
	.uleb128 0x1e
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x652
	.4byte	0x9b5
	.uleb128 0x1f
	.uleb128 0x37
	.string	"len"
	.byte	0x1
	.2byte	0x61e
	.4byte	0x33
	.uleb128 0x1e
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x61e
	.4byte	0x33
	.uleb128 0x1e
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x622
	.4byte	0xb99
	.uleb128 0x1f
	.uleb128 0x1e
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x629
	.4byte	0x9b5
	.uleb128 0x1f
	.uleb128 0x37
	.string	"n"
	.byte	0x1
	.2byte	0x625
	.4byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x6ae
	.4byte	0x33
	.byte	0x1
	.4byte	0x42a2
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.2byte	0x6ae
	.4byte	0x33
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.2byte	0x6ae
	.4byte	0x33
	.uleb128 0x40
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x6ae
	.4byte	0x33
	.uleb128 0x37
	.string	"ch"
	.byte	0x1
	.2byte	0x6af
	.4byte	0x9b5
	.uleb128 0x1e
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x6b0
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x6b1
	.4byte	0x25
	.uleb128 0x1e
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x6b2
	.4byte	0x25
	.uleb128 0x1e
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x6b4
	.4byte	0x9b5
	.uleb128 0x1f
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.2byte	0x6b6
	.4byte	0x33
	.uleb128 0x1f
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x6b7
	.4byte	0x33
	.uleb128 0x1f
	.uleb128 0x1e
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x6bd
	.4byte	0x33
	.uleb128 0x1e
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x6be
	.4byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x66b
	.byte	0x1
	.4byte	0x4356
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.2byte	0x66b
	.4byte	0x9b5
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.2byte	0x66b
	.4byte	0x33
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.2byte	0x66b
	.4byte	0x33
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x66c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.2byte	0x66c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"ch"
	.byte	0x1
	.2byte	0x66c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"fz"
	.byte	0x1
	.2byte	0x66c
	.4byte	0x9b5
	.uleb128 0x1e
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x66c
	.4byte	0x9b5
	.uleb128 0x37
	.string	"k"
	.byte	0x1
	.2byte	0x66d
	.4byte	0x9cb
	.uleb128 0x1e
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x66d
	.4byte	0x9cb
	.uleb128 0x37
	.string	"cx"
	.byte	0x1
	.2byte	0x66d
	.4byte	0x9cb
	.uleb128 0x37
	.string	"cy"
	.byte	0x1
	.2byte	0x66d
	.4byte	0x9cb
	.uleb128 0x37
	.string	"len"
	.byte	0x1
	.2byte	0x66d
	.4byte	0x9cb
	.uleb128 0x1f
	.uleb128 0x1e
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x679
	.4byte	0xb99
	.uleb128 0x1f
	.uleb128 0x37
	.string	"n"
	.byte	0x1
	.2byte	0x67c
	.4byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x6ce
	.byte	0x1
	.4byte	0x4417
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x9b5
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x33
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x33
	.uleb128 0x1d
	.string	"pos"
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x33
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x9b5
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x9b5
	.uleb128 0x37
	.string	"ch"
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x9b5
	.uleb128 0x37
	.string	"fz"
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x9b5
	.uleb128 0x1e
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x9b5
	.uleb128 0x1e
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x6d0
	.4byte	0x9cb
	.uleb128 0x1e
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x6d1
	.4byte	0x33
	.uleb128 0x1e
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x6d1
	.4byte	0x33
	.uleb128 0x1e
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x6d2
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x6d3
	.4byte	0x25
	.uleb128 0x1e
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x6d4
	.4byte	0x25
	.uleb128 0x37
	.string	"zz"
	.byte	0x1
	.2byte	0x6d5
	.4byte	0x33
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x754
	.byte	0x1
	.4byte	0x448b
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.2byte	0x754
	.4byte	0x9c0
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.2byte	0x754
	.4byte	0x9c0
	.uleb128 0x1d
	.string	"num"
	.byte	0x1
	.2byte	0x754
	.4byte	0x9aa
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.2byte	0x754
	.4byte	0x9c0
	.uleb128 0x1d
	.string	"l"
	.byte	0x1
	.2byte	0x754
	.4byte	0x9c0
	.uleb128 0x40
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x754
	.4byte	0xa35
	.uleb128 0x50
	.4byte	0x4474
	.uleb128 0x37
	.string	"d"
	.byte	0x1
	.2byte	0x758
	.4byte	0x9c0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.2byte	0x764
	.4byte	0x9c0
	.uleb128 0x37
	.string	"d"
	.byte	0x1
	.2byte	0x765
	.4byte	0x9c0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x7a8
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5124
	.uleb128 0x21
	.string	"st"
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x61b
	.4byte	.LLST232
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x33
	.4byte	.LLST233
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x33
	.4byte	.LLST234
	.uleb128 0x2d
	.string	"stl"
	.byte	0x1
	.2byte	0x7a9
	.4byte	0x33
	.4byte	.LLST235
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x7a9
	.4byte	0x33
	.4byte	.LLST236
	.uleb128 0x22
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x7a9
	.4byte	0x33
	.4byte	.LLST237
	.uleb128 0x22
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x7a9
	.4byte	0x33
	.4byte	.LLST238
	.uleb128 0x2d
	.string	"fh"
	.byte	0x1
	.2byte	0x7a9
	.4byte	0x33
	.4byte	.LLST239
	.uleb128 0x2d
	.string	"ch"
	.byte	0x1
	.2byte	0x7aa
	.4byte	0x9b5
	.4byte	.LLST240
	.uleb128 0x22
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x7de
	.4byte	0x33
	.4byte	.LLST241
	.uleb128 0x42
	.4byte	0x4150
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.2byte	0x7fd
	.4byte	0x46bc
	.uleb128 0x44
	.4byte	0x416b
	.4byte	.LLST242
	.uleb128 0x44
	.4byte	0x4161
	.4byte	.LLST243
	.uleb128 0x4b
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x4d
	.4byte	0x4175
	.4byte	.LLST244
	.uleb128 0x4d
	.4byte	0x4180
	.4byte	.LLST245
	.uleb128 0x4d
	.4byte	0x418a
	.4byte	.LLST246
	.uleb128 0x4d
	.4byte	0x4194
	.4byte	.LLST247
	.uleb128 0x4d
	.4byte	0x41a0
	.4byte	.LLST248
	.uleb128 0x4d
	.4byte	0x41ab
	.4byte	.LLST249
	.uleb128 0x4d
	.4byte	0x41b6
	.4byte	.LLST250
	.uleb128 0x33
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.4byte	0x4666
	.uleb128 0x4d
	.4byte	0x41c3
	.4byte	.LLST251
	.uleb128 0x4d
	.4byte	0x41cf
	.4byte	.LLST252
	.uleb128 0x4d
	.4byte	0x41db
	.4byte	.LLST253
	.uleb128 0x33
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.4byte	0x464b
	.uleb128 0x4d
	.4byte	0x41e8
	.4byte	.LLST254
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0x45f7
	.uleb128 0x4d
	.4byte	0x41f5
	.4byte	.LLST255
	.byte	0
	.uleb128 0x35
	.4byte	.LVL999
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1001
	.4byte	0x659d
	.4byte	0x4631
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1002
	.4byte	0x64eb
	.uleb128 0x27
	.4byte	.LVL1003
	.4byte	0x651f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL981
	.4byte	0x6603
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1005
	.4byte	0x1749
	.4byte	0x4695
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 -160
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1006
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1012
	.4byte	0xf32
	.4byte	0x46b1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1016
	.4byte	0x64eb
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x4203
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.2byte	0x800
	.4byte	0x478a
	.uleb128 0x44
	.4byte	0x4228
	.4byte	.LLST256
	.uleb128 0x46
	.4byte	0x421e
	.uleb128 0x46
	.4byte	0x4214
	.uleb128 0x4b
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.uleb128 0x4d
	.4byte	0x4234
	.4byte	.LLST257
	.uleb128 0x4d
	.4byte	0x423f
	.4byte	.LLST258
	.uleb128 0x4d
	.4byte	0x424b
	.4byte	.LLST259
	.uleb128 0x4d
	.4byte	0x4257
	.4byte	.LLST260
	.uleb128 0x4d
	.4byte	0x4263
	.4byte	.LLST261
	.uleb128 0x33
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.4byte	0x4764
	.uleb128 0x4d
	.4byte	0x4270
	.4byte	.LLST262
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x4d
	.4byte	0x427b
	.4byte	.LLST263
	.uleb128 0x4b
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.uleb128 0x4d
	.4byte	0x4286
	.4byte	.LLST264
	.uleb128 0x4d
	.4byte	0x4292
	.4byte	.LLST265
	.uleb128 0x35
	.4byte	.LVL1041
	.4byte	0xf32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1023
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL1027
	.4byte	0x6502
	.uleb128 0x35
	.4byte	.LVL1031
	.4byte	0x64df
	.uleb128 0x35
	.4byte	.LVL1045
	.4byte	0x64eb
	.byte	0
	.byte	0
	.uleb128 0x51
	.4byte	0x42a2
	.4byte	.LBB79
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0x808
	.4byte	0x48fd
	.uleb128 0x44
	.4byte	0x42c3
	.4byte	.LLST266
	.uleb128 0x44
	.4byte	0x42b9
	.4byte	.LLST267
	.uleb128 0x46
	.4byte	0x42af
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x4d
	.4byte	0x42cd
	.4byte	.LLST268
	.uleb128 0x4d
	.4byte	0x42d7
	.4byte	.LLST269
	.uleb128 0x4d
	.4byte	0x42e1
	.4byte	.LLST270
	.uleb128 0x4d
	.4byte	0x42ec
	.4byte	.LLST271
	.uleb128 0x4d
	.4byte	0x42f7
	.4byte	.LLST272
	.uleb128 0x4d
	.4byte	0x4303
	.4byte	.LLST273
	.uleb128 0x4d
	.4byte	0x430d
	.4byte	.LLST274
	.uleb128 0x4d
	.4byte	0x4319
	.4byte	.LLST275
	.uleb128 0x52
	.4byte	0x4324
	.uleb128 0x4d
	.4byte	0x432f
	.4byte	.LLST276
	.uleb128 0x33
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0x48a4
	.uleb128 0x4d
	.4byte	0x433c
	.4byte	.LLST277
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x138
	.4byte	0x4839
	.uleb128 0x4d
	.4byte	0x4349
	.4byte	.LLST278
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1058
	.4byte	0x6603
	.4byte	0x4857
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1074
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1075
	.4byte	0x659d
	.4byte	0x488a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1076
	.4byte	0x64eb
	.uleb128 0x27
	.4byte	.LVL1077
	.4byte	0x651f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1079
	.4byte	0x1749
	.4byte	0x48c6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1080
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1086
	.4byte	0xf32
	.4byte	0x48f2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1094
	.4byte	0x64eb
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x4356
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.2byte	0x80a
	.4byte	0x49cd
	.uleb128 0x44
	.4byte	0x4381
	.4byte	.LLST279
	.uleb128 0x46
	.4byte	0x4377
	.uleb128 0x46
	.4byte	0x436d
	.uleb128 0x46
	.4byte	0x4363
	.uleb128 0x4b
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.uleb128 0x4d
	.4byte	0x438d
	.4byte	.LLST280
	.uleb128 0x4d
	.4byte	0x4397
	.4byte	.LLST281
	.uleb128 0x4d
	.4byte	0x43a1
	.4byte	.LLST282
	.uleb128 0x4d
	.4byte	0x43ac
	.4byte	.LLST283
	.uleb128 0x4d
	.4byte	0x43b7
	.4byte	.LLST284
	.uleb128 0x4d
	.4byte	0x43c3
	.4byte	.LLST285
	.uleb128 0x4d
	.4byte	0x43cf
	.4byte	.LLST286
	.uleb128 0x4d
	.4byte	0x43db
	.4byte	.LLST287
	.uleb128 0x4d
	.4byte	0x43e7
	.4byte	.LLST288
	.uleb128 0x4d
	.4byte	0x43f3
	.4byte	.LLST289
	.uleb128 0x4d
	.4byte	0x43ff
	.4byte	.LLST290
	.uleb128 0x4d
	.4byte	0x440b
	.4byte	.LLST291
	.uleb128 0x35
	.4byte	.LVL1099
	.4byte	0x64f7
	.uleb128 0x35
	.4byte	.LVL1103
	.4byte	0x6502
	.uleb128 0x35
	.4byte	.LVL1108
	.4byte	0x64df
	.uleb128 0x35
	.4byte	.LVL1117
	.4byte	0xf32
	.uleb128 0x35
	.4byte	.LVL1125
	.4byte	0x64eb
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x4417
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.byte	0x1
	.2byte	0x80d
	.4byte	0x50ba
	.uleb128 0x43
	.4byte	0x4458
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x44
	.4byte	0x444e
	.4byte	.LLST292
	.uleb128 0x44
	.4byte	0x4444
	.4byte	.LLST293
	.uleb128 0x44
	.4byte	0x4438
	.4byte	.LLST294
	.uleb128 0x44
	.4byte	0x442e
	.4byte	.LLST295
	.uleb128 0x44
	.4byte	0x4424
	.4byte	.LLST296
	.uleb128 0x33
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.4byte	0x4b5d
	.uleb128 0x4d
	.4byte	0x4469
	.4byte	.LLST297
	.uleb128 0x2f
	.4byte	.LVL1136
	.4byte	0x17b0
	.4byte	0x4a60
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1137
	.4byte	0x17b0
	.4byte	0x4a82
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1138
	.4byte	0x17b0
	.4byte	0x4aa4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1139
	.4byte	0x17b0
	.4byte	0x4ace
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1141
	.4byte	0x1947
	.4byte	0x4b14
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x20
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1142
	.4byte	0x1947
	.4byte	0x4b36
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL1143
	.4byte	0x1947
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.uleb128 0x4d
	.4byte	0x4475
	.4byte	.LLST298
	.uleb128 0x4d
	.4byte	0x447f
	.4byte	.LLST299
	.uleb128 0x2f
	.4byte	.LVL1149
	.4byte	0x17b0
	.4byte	0x4bb4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1150
	.4byte	0x17b0
	.4byte	0x4be7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1151
	.4byte	0x17b0
	.4byte	0x4c1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1152
	.4byte	0x17b0
	.4byte	0x4c44
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1153
	.4byte	0x1947
	.4byte	0x4c79
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1154
	.4byte	0x1947
	.4byte	0x4cac
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1155
	.4byte	0x1947
	.4byte	0x4cd6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1156
	.4byte	0x1749
	.4byte	0x4d0c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1157
	.4byte	0x14e3
	.4byte	0x4d26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1158
	.4byte	0x1749
	.4byte	0x4d5c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x31
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1159
	.4byte	0x14e3
	.4byte	0x4d76
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1160
	.4byte	0x1749
	.4byte	0x4dac
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x31
	.byte	0x26
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1161
	.4byte	0x14e3
	.4byte	0x4dc6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1163
	.4byte	0x1749
	.4byte	0x4df4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1164
	.4byte	0x14e3
	.4byte	0x4e1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1165
	.4byte	0x17b0
	.4byte	0x4e54
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1166
	.4byte	0x17b0
	.4byte	0x4e87
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1167
	.4byte	0x17b0
	.4byte	0x4eb6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1168
	.4byte	0x17b0
	.4byte	0x4ee0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1169
	.4byte	0x1947
	.4byte	0x4f11
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1170
	.4byte	0x1947
	.4byte	0x4f42
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1171
	.4byte	0x1947
	.4byte	0x4f6c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1173
	.4byte	0x1749
	.4byte	0x4f9a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1174
	.4byte	0x14e3
	.4byte	0x4fc0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1175
	.4byte	0x1749
	.4byte	0x4fee
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1176
	.4byte	0x14e3
	.4byte	0x5014
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1177
	.4byte	0x1749
	.4byte	0x5042
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1178
	.4byte	0x14e3
	.4byte	0x5068
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1179
	.4byte	0x1749
	.4byte	0x5096
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL1180
	.4byte	0x14e3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL936
	.4byte	0x65cc
	.4byte	0x50d0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL939
	.4byte	0xe95
	.4byte	0x50e6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.uleb128 0x35
	.4byte	.LVL962
	.4byte	0xf06
	.uleb128 0x35
	.4byte	.LVL964
	.4byte	0xf1c
	.uleb128 0x2f
	.4byte	.LVL973
	.4byte	0x1749
	.4byte	0x5113
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.byte	0x91
	.sleb128 -140
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.4byte	.LVL974
	.4byte	0xecd
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x81c
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51ab
	.uleb128 0x21
	.string	"rot"
	.byte	0x1
	.2byte	0x81c
	.4byte	0x9b5
	.4byte	.LLST300
	.uleb128 0x33
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.4byte	0x5198
	.uleb128 0x2e
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x81e
	.4byte	0x9b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.4byte	.LVL1188
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1189
	.4byte	0x660e
	.4byte	0x518e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1190
	.4byte	0x64eb
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1193
	.4byte	0x661a
	.uleb128 0x35
	.4byte	.LVL1194
	.4byte	0x275e
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x834
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5202
	.uleb128 0x2c
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x834
	.4byte	0x5202
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LVL1196
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1197
	.4byte	0x6626
	.4byte	0x51ef
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC168
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1198
	.4byte	0x6635
	.uleb128 0x35
	.4byte	.LVL1199
	.4byte	0x64eb
	.byte	0
	.uleb128 0x18
	.4byte	0x9b5
	.uleb128 0x3e
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x843
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5257
	.uleb128 0x21
	.string	"gm"
	.byte	0x1
	.2byte	0x843
	.4byte	0x9b5
	.4byte	.LLST301
	.uleb128 0x2e
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x844
	.4byte	0x9b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL1202
	.4byte	0x660e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x84a
	.4byte	0xa35
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5339
	.uleb128 0x2b
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x84a
	.4byte	0x25
	.4byte	.LLST302
	.uleb128 0x2b
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x84a
	.4byte	0x25
	.4byte	.LLST303
	.uleb128 0x2b
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x84a
	.4byte	0x25
	.4byte	.LLST304
	.uleb128 0x2d
	.string	"red"
	.byte	0x1
	.2byte	0x84b
	.4byte	0x25
	.4byte	.LLST305
	.uleb128 0x22
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x84c
	.4byte	0x25
	.4byte	.LLST306
	.uleb128 0x22
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x84d
	.4byte	0x25
	.4byte	.LLST307
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x886
	.4byte	0xa35
	.4byte	.LLST308
	.uleb128 0x4b
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.uleb128 0x22
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x858
	.4byte	0x33
	.4byte	.LLST309
	.uleb128 0x22
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x859
	.4byte	0x25
	.4byte	.LLST310
	.uleb128 0x2d
	.string	"aa"
	.byte	0x1
	.2byte	0x85b
	.4byte	0x25
	.4byte	.LLST311
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.2byte	0x85c
	.4byte	0x25
	.4byte	.LLST312
	.uleb128 0x2d
	.string	"cc"
	.byte	0x1
	.2byte	0x85d
	.4byte	0x25
	.4byte	.LLST313
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x88f
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5386
	.uleb128 0x30
	.string	"x1"
	.byte	0x1
	.2byte	0x88f
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"y1"
	.byte	0x1
	.2byte	0x88f
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"x2"
	.byte	0x1
	.2byte	0x88f
	.4byte	0x9cb
	.4byte	.LLST314
	.uleb128 0x30
	.string	"y2"
	.byte	0x1
	.2byte	0x88f
	.4byte	0x9cb
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x54
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x89d
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x8a6
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53e8
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.2byte	0x8a6
	.4byte	0x9b5
	.4byte	.LLST315
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.2byte	0x8a6
	.4byte	0x9b5
	.4byte	.LLST316
	.uleb128 0x2c
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x8a6
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x8a6
	.4byte	0xa35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x49
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x8b7
	.4byte	0x33
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5433
	.uleb128 0x2b
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x8b7
	.4byte	0x5433
	.4byte	.LLST317
	.uleb128 0x2c
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x8b7
	.4byte	0x5433
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.4byte	.LVL1287
	.4byte	0xf06
	.uleb128 0x35
	.4byte	.LVL1288
	.4byte	0xf1c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x33
	.uleb128 0x55
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x8ca
	.4byte	0x33
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x545d
	.uleb128 0x35
	.4byte	.LVL1292
	.4byte	0xf1c
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x715
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54f3
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x715
	.4byte	0x33
	.4byte	.LLST318
	.uleb128 0x30
	.string	"y"
	.byte	0x1
	.2byte	0x715
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"str"
	.byte	0x1
	.2byte	0x715
	.4byte	0x5ea
	.4byte	.LLST319
	.uleb128 0x39
	.string	"w"
	.byte	0x1
	.2byte	0x716
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"h"
	.byte	0x1
	.2byte	0x717
	.4byte	0x33
	.4byte	.LLST320
	.uleb128 0x2f
	.4byte	.LVL1294
	.4byte	0xe95
	.4byte	0x54cb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1296
	.4byte	0x5439
	.uleb128 0x27
	.4byte	.LVL1299
	.4byte	0x26ea
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x8d2
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x54
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x8db
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x49
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x965
	.4byte	0xb9f
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x575c
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x965
	.4byte	0x33
	.4byte	.LLST321
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x965
	.4byte	0x33
	.4byte	.LLST322
	.uleb128 0x2b
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x965
	.4byte	0x9b5
	.4byte	.LLST323
	.uleb128 0x2b
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x965
	.4byte	0x61b
	.4byte	.LLST324
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.2byte	0x965
	.4byte	0xaf5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x965
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"dev"
	.byte	0x1
	.2byte	0x966
	.4byte	0xb9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x39
	.string	"sb"
	.byte	0x1
	.2byte	0x967
	.4byte	0x8c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x22
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x968
	.4byte	0x5ea
	.4byte	.LLST325
	.uleb128 0x56
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x969
	.4byte	0xbb1
	.2byte	0xed8
	.uleb128 0x39
	.string	"jd"
	.byte	0x1
	.2byte	0x96a
	.4byte	0xc7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2d
	.string	"rc"
	.byte	0x1
	.2byte	0x96b
	.4byte	0xc2b
	.4byte	.LLST326
	.uleb128 0x3b
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x9bc
	.uleb128 0x2f
	.4byte	.LVL1302
	.4byte	0x6540
	.4byte	0x5608
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1303
	.4byte	0x6641
	.uleb128 0x35
	.4byte	.LVL1304
	.4byte	0x664c
	.uleb128 0x2f
	.4byte	.LVL1305
	.4byte	0x652a
	.4byte	0x5637
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1306
	.4byte	0x6641
	.uleb128 0x35
	.4byte	.LVL1307
	.4byte	0x664c
	.uleb128 0x35
	.4byte	.LVL1308
	.4byte	0x6586
	.uleb128 0x2f
	.4byte	.LVL1310
	.4byte	0x655a
	.4byte	0x5667
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xed8
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1312
	.4byte	0x6657
	.4byte	0x567c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1327
	.4byte	0x6603
	.4byte	0x5696
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x600
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1328
	.4byte	0x6603
	.4byte	0x56b0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x600
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1329
	.4byte	0x6626
	.uleb128 0x35
	.4byte	.LVL1331
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1332
	.4byte	0x6662
	.4byte	0x56e6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tjd_output
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1334
	.4byte	0x64eb
	.uleb128 0x35
	.4byte	.LVL1337
	.4byte	0x6586
	.uleb128 0x2f
	.4byte	.LVL1339
	.4byte	0x6626
	.4byte	0x570f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC215
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1340
	.4byte	0x650d
	.4byte	0x5730
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1342
	.4byte	0x651f
	.uleb128 0x35
	.4byte	.LVL1343
	.4byte	0x651f
	.uleb128 0x35
	.4byte	.LVL1344
	.4byte	0x6565
	.uleb128 0x27
	.4byte	.LVL1346
	.4byte	0x651f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x9c8
	.4byte	0x33
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e48
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x9c8
	.4byte	0x33
	.4byte	.LLST327
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.2byte	0x9c8
	.4byte	0x33
	.4byte	.LLST328
	.uleb128 0x2b
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x9c8
	.4byte	0x9b5
	.4byte	.LLST329
	.uleb128 0x2b
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x9c8
	.4byte	0x5ea
	.4byte	.LLST330
	.uleb128 0x2b
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x9c8
	.4byte	0xaf5
	.4byte	.LLST331
	.uleb128 0x2b
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x9c8
	.4byte	0x33
	.4byte	.LLST332
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x9c9
	.4byte	0xb83
	.4byte	.LLST333
	.uleb128 0x39
	.string	"sb"
	.byte	0x1
	.2byte	0x9ca
	.4byte	0x8c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x9cb
	.4byte	0x33
	.4byte	.LLST334
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x9cb
	.4byte	0x33
	.4byte	.LLST335
	.uleb128 0x2e
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x9cc
	.4byte	0x33
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x9cc
	.4byte	0x33
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x22
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x9cc
	.4byte	0x33
	.4byte	.LLST336
	.uleb128 0x22
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x9cc
	.4byte	0x33
	.4byte	.LLST337
	.uleb128 0x22
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x9cc
	.4byte	0x33
	.4byte	.LLST338
	.uleb128 0x22
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x9cc
	.4byte	0x33
	.4byte	.LLST339
	.uleb128 0x2e
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x9cd
	.4byte	0x33
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1e
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x9cd
	.4byte	0x33
	.uleb128 0x22
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x9cd
	.4byte	0x33
	.4byte	.LLST340
	.uleb128 0x22
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x9cd
	.4byte	0x33
	.4byte	.LLST341
	.uleb128 0x22
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x9ce
	.4byte	0x9b5
	.4byte	.LLST342
	.uleb128 0x2e
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x9cf
	.4byte	0x9cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2e
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x9d0
	.4byte	0x9e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x22
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x9d1
	.4byte	0x33
	.4byte	.LLST343
	.uleb128 0x22
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x9d1
	.4byte	0x33
	.4byte	.LLST344
	.uleb128 0x22
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x9d1
	.4byte	0x33
	.4byte	.LLST345
	.uleb128 0x22
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x9d1
	.4byte	0x33
	.4byte	.LLST346
	.uleb128 0x39
	.string	"buf"
	.byte	0x1
	.2byte	0x9d2
	.4byte	0x5e48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2e
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x9d3
	.4byte	0x5e58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2e
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x9d4
	.4byte	0x5e68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x22
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x9d5
	.4byte	0x9b5
	.4byte	.LLST347
	.uleb128 0x22
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x9d6
	.4byte	0xaf5
	.4byte	.LLST348
	.uleb128 0x22
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x9d7
	.4byte	0x9b5
	.4byte	.LLST349
	.uleb128 0x39
	.string	"co"
	.byte	0x1
	.2byte	0x9d8
	.4byte	0x5e78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x22
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x9d9
	.4byte	0x9b5
	.4byte	.LLST350
	.uleb128 0x4a
	.4byte	.LASF335
	.byte	0x1
	.2byte	0xae0
	.4byte	.LDL2
	.uleb128 0x4a
	.4byte	.LASF418
	.byte	0x1
	.2byte	0xade
	.4byte	.L862
	.uleb128 0x33
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.4byte	0x59fe
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.2byte	0xac0
	.4byte	0x33
	.4byte	.LLST351
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x158
	.uleb128 0x22
	.4byte	.LASF419
	.byte	0x1
	.2byte	0xac5
	.4byte	0x33
	.4byte	.LLST352
	.uleb128 0x4b
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.uleb128 0x22
	.4byte	.LASF420
	.byte	0x1
	.2byte	0xac9
	.4byte	0x33
	.4byte	.LLST353
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1351
	.4byte	0x6540
	.4byte	0x5a19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1352
	.4byte	0x654b
	.4byte	0x5a37
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC217
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1355
	.4byte	0x652a
	.4byte	0x5a54
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1357
	.4byte	0x654b
	.4byte	0x5a72
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC217
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1360
	.4byte	0x6570
	.4byte	0x5a98
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1364
	.4byte	0x650d
	.4byte	0x5ab9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1368
	.4byte	0x654b
	.4byte	0x5ad7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC220
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1380
	.4byte	0x6535
	.4byte	0x5b05
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC225
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -124
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1403
	.4byte	0x654b
	.4byte	0x5b23
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC227
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1405
	.4byte	0x6603
	.4byte	0x5b3c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1406
	.4byte	0x654b
	.4byte	0x5b5a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC229
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1408
	.4byte	0x6603
	.4byte	0x5b73
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1409
	.4byte	0x654b
	.4byte	0x5b91
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC231
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1414
	.4byte	0x655a
	.4byte	0x5baa
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0x1e
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1417
	.4byte	0x654b
	.4byte	0x5bc8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC233
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1420
	.4byte	0x65a9
	.4byte	0x5be7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1421
	.4byte	0x6535
	.4byte	0x5c0b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC235
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1423
	.4byte	0x64df
	.uleb128 0x2f
	.4byte	.LVL1426
	.4byte	0x6535
	.4byte	0x5c3e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC237
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1428
	.4byte	0x6570
	.4byte	0x5c65
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 180
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1430
	.4byte	0x6535
	.4byte	0x5c8f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC239
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1432
	.4byte	0x650d
	.4byte	0x5cb6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 180
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1433
	.4byte	0x666d
	.4byte	0x5cdf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 180
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 180
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1442
	.4byte	0x6570
	.4byte	0x5d05
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1444
	.4byte	0x6535
	.4byte	0x5d2f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC239
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1446
	.4byte	0x650d
	.4byte	0x5d55
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1447
	.4byte	0x650d
	.4byte	0x5d7d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1462
	.4byte	0x6591
	.4byte	0x5d90
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1463
	.4byte	0x659d
	.4byte	0x5dd5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xac
	.byte	0x1c
	.byte	0x6
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1467
	.4byte	0x64eb
	.uleb128 0x2f
	.4byte	.LVL1469
	.4byte	0x651f
	.4byte	0x5df4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1471
	.4byte	0x651f
	.uleb128 0x2f
	.4byte	.LVL1472
	.4byte	0x651f
	.4byte	0x5e13
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL1474
	.4byte	0x6565
	.4byte	0x5e27
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL1476
	.4byte	0x6586
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x5e58
	.uleb128 0xa
	.4byte	0x149
	.byte	0x37
	.byte	0
	.uleb128 0x9
	.4byte	0x5f0
	.4byte	0x5e68
	.uleb128 0xa
	.4byte	0x149
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0xaf5
	.4byte	0x5e78
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x9cb
	.4byte	0x5e88
	.uleb128 0xa
	.4byte	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x5e98
	.uleb128 0xa
	.4byte	0x149
	.byte	0x4d
	.byte	0
	.uleb128 0x57
	.4byte	.LASF421
	.byte	0xc
	.byte	0xd0
	.4byte	0x5ef2
	.byte	0x4e
	.byte	0xf
	.byte	0xb2
	.byte	0x5
	.byte	0xc
	.byte	0xc
	.byte	0
	.byte	0x33
	.byte	0x33
	.byte	0xb7
	.byte	0x1
	.byte	0x45
	.byte	0xbb
	.byte	0x1
	.byte	0x2b
	.byte	0xc0
	.byte	0x1
	.byte	0x2c
	.byte	0xc2
	.byte	0x2
	.byte	0x1
	.byte	0xff
	.byte	0xc3
	.byte	0x1
	.byte	0x11
	.byte	0xc4
	.byte	0x1
	.byte	0x20
	.byte	0xc6
	.byte	0x1
	.byte	0xf
	.byte	0xd0
	.byte	0x2
	.byte	0xa4
	.byte	0xa1
	.byte	0xe0
	.byte	0xe
	.byte	0xd0
	.byte	0
	.byte	0x5
	.byte	0xe
	.byte	0x15
	.byte	0xd
	.byte	0x37
	.byte	0x43
	.byte	0x47
	.byte	0x9
	.byte	0x15
	.byte	0x12
	.byte	0x16
	.byte	0x19
	.byte	0xe1
	.byte	0xe
	.byte	0xd0
	.byte	0
	.byte	0x5
	.byte	0xd
	.byte	0xc
	.byte	0x6
	.byte	0x2d
	.byte	0x44
	.byte	0x40
	.byte	0xe
	.byte	0x1c
	.byte	0x18
	.byte	0x16
	.byte	0x19
	.byte	0x36
	.byte	0x1
	.byte	0x48
	.byte	0x3a
	.byte	0x1
	.byte	0x66
	.byte	0x11
	.byte	0x80
	.byte	0x78
	.byte	0x29
	.byte	0x80
	.byte	0x78
	.uleb128 0x18
	.4byte	0x5e88
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x5f07
	.uleb128 0xa
	.4byte	0x149
	.byte	0x76
	.byte	0
	.uleb128 0x57
	.4byte	.LASF422
	.byte	0xc
	.byte	0xeb
	.4byte	0x5f8a
	.byte	0x77
	.byte	0x17
	.byte	0xcb
	.byte	0x5
	.byte	0x39
	.byte	0x2c
	.byte	0
	.byte	0x34
	.byte	0x2
	.byte	0xcf
	.byte	0x3
	.byte	0
	.byte	0xc1
	.byte	0x30
	.byte	0xef
	.byte	0x3
	.byte	0x3
	.byte	0x80
	.byte	0x2
	.byte	0xe8
	.byte	0x3
	.byte	0x85
	.byte	0
	.byte	0x78
	.byte	0xea
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0xed
	.byte	0x4
	.byte	0x64
	.byte	0x3
	.byte	0x12
	.byte	0x81
	.byte	0xf7
	.byte	0x1
	.byte	0x20
	.byte	0xc0
	.byte	0x1
	.byte	0x23
	.byte	0xc1
	.byte	0x1
	.byte	0x10
	.byte	0xc5
	.byte	0x2
	.byte	0x3e
	.byte	0x28
	.byte	0xc7
	.byte	0x1
	.byte	0x86
	.byte	0x36
	.byte	0x1
	.byte	0x48
	.byte	0x3a
	.byte	0x1
	.byte	0x66
	.byte	0x20
	.byte	0
	.byte	0xb1
	.byte	0x2
	.byte	0
	.byte	0x18
	.byte	0xb6
	.byte	0x4
	.byte	0x8
	.byte	0x82
	.byte	0x27
	.byte	0
	.byte	0x30
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x3f
	.byte	0xf2
	.byte	0x1
	.byte	0
	.byte	0x26
	.byte	0x1
	.byte	0x1
	.byte	0xe0
	.byte	0xf
	.byte	0xf
	.byte	0x31
	.byte	0x2b
	.byte	0xc
	.byte	0xe
	.byte	0x8
	.byte	0x4e
	.byte	0xf1
	.byte	0x37
	.byte	0x7
	.byte	0x10
	.byte	0x3
	.byte	0xe
	.byte	0x9
	.byte	0
	.byte	0xe1
	.byte	0xf
	.byte	0
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.byte	0x11
	.byte	0x7
	.byte	0x31
	.byte	0xc1
	.byte	0x48
	.byte	0x8
	.byte	0xf
	.byte	0xc
	.byte	0x31
	.byte	0x36
	.byte	0xf
	.byte	0x11
	.byte	0x80
	.byte	0xc8
	.byte	0x29
	.byte	0x80
	.byte	0xc8
	.uleb128 0x18
	.4byte	0x5ef7
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x5f9f
	.uleb128 0xa
	.4byte	0x149
	.byte	0x55
	.byte	0
	.uleb128 0x58
	.4byte	.LASF423
	.byte	0xc
	.2byte	0x113
	.4byte	0x6002
	.byte	0x56
	.byte	0x11
	.byte	0xe0
	.byte	0xf
	.byte	0
	.byte	0x3
	.byte	0x9
	.byte	0x8
	.byte	0x16
	.byte	0xa
	.byte	0x3f
	.byte	0x78
	.byte	0x4c
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.byte	0x16
	.byte	0x1a
	.byte	0xf
	.byte	0xe1
	.byte	0xf
	.byte	0
	.byte	0x16
	.byte	0x19
	.byte	0x3
	.byte	0xf
	.byte	0x5
	.byte	0x32
	.byte	0x45
	.byte	0x46
	.byte	0x4
	.byte	0xe
	.byte	0xd
	.byte	0x35
	.byte	0x37
	.byte	0xf
	.byte	0xc0
	.byte	0x2
	.byte	0x17
	.byte	0x15
	.byte	0xc1
	.byte	0x1
	.byte	0x41
	.byte	0xc5
	.byte	0x3
	.byte	0
	.byte	0x12
	.byte	0x80
	.byte	0x36
	.byte	0x1
	.byte	0x48
	.byte	0x3a
	.byte	0x1
	.byte	0x66
	.byte	0xb0
	.byte	0x1
	.byte	0
	.byte	0xb1
	.byte	0x1
	.byte	0xa0
	.byte	0xb4
	.byte	0x1
	.byte	0x2
	.byte	0xb6
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0xe9
	.byte	0x1
	.byte	0
	.byte	0x53
	.byte	0x1
	.byte	0x28
	.byte	0x51
	.byte	0x1
	.byte	0x7f
	.byte	0xf7
	.byte	0x4
	.byte	0xa9
	.byte	0x51
	.byte	0x2c
	.byte	0x2
	.byte	0x11
	.byte	0x80
	.byte	0x78
	.byte	0x29
	.byte	0
	.uleb128 0x18
	.4byte	0x5f8f
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x6017
	.uleb128 0xa
	.4byte	0x149
	.byte	0x60
	.byte	0
	.uleb128 0x58
	.4byte	.LASF424
	.byte	0xc
	.2byte	0x158
	.4byte	0x6085
	.byte	0x61
	.byte	0x10
	.byte	0x3a
	.byte	0x81
	.byte	0x6
	.byte	0xa
	.byte	0xb1
	.byte	0x83
	.byte	0
	.byte	0x6
	.byte	0x3
	.byte	0xa
	.byte	0x36
	.byte	0x1
	.byte	0x8
	.byte	0xb6
	.byte	0x2
	.byte	0x15
	.byte	0x2
	.byte	0xb4
	.byte	0x1
	.byte	0
	.byte	0xc0
	.byte	0x82
	.byte	0x2
	.byte	0x70
	.byte	0xa
	.byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0xc2
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0xc5
	.byte	0x82
	.byte	0x3c
	.byte	0x38
	.byte	0xa
	.byte	0xfc
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.byte	0xe0
	.byte	0x10
	.byte	0x9
	.byte	0x16
	.byte	0x9
	.byte	0x20
	.byte	0x21
	.byte	0x1b
	.byte	0x13
	.byte	0x19
	.byte	0x17
	.byte	0x15
	.byte	0x1e
	.byte	0x2b
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.byte	0xe
	.byte	0xe1
	.byte	0x90
	.byte	0xb
	.byte	0x14
	.byte	0x8
	.byte	0x1e
	.byte	0x22
	.byte	0x1d
	.byte	0x18
	.byte	0x1e
	.byte	0x1b
	.byte	0x1a
	.byte	0x24
	.byte	0x2b
	.byte	0x6
	.byte	0x6
	.byte	0x2
	.byte	0xf
	.byte	0xa
	.byte	0x2a
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0x81
	.byte	0x2b
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0x81
	.byte	0x13
	.byte	0x80
	.byte	0xa
	.byte	0x29
	.byte	0x80
	.byte	0xff
	.uleb128 0x18
	.4byte	0x6007
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x609a
	.uleb128 0xa
	.4byte	0x149
	.byte	0x38
	.byte	0
	.uleb128 0x58
	.4byte	.LASF425
	.byte	0xc
	.2byte	0x198
	.4byte	0x60e0
	.byte	0x39
	.byte	0xe
	.byte	0x11
	.byte	0x80
	.byte	0xff
	.byte	0xb1
	.byte	0x3
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0xb2
	.byte	0x3
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0xb3
	.byte	0x6
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0xb4
	.byte	0x1
	.byte	0x7
	.byte	0xc0
	.byte	0x3
	.byte	0xa2
	.byte	0x2
	.byte	0x84
	.byte	0xc1
	.byte	0x1
	.byte	0xc5
	.byte	0xc2
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0xc3
	.byte	0x2
	.byte	0x8a
	.byte	0x2a
	.byte	0xc4
	.byte	0x2
	.byte	0x8a
	.byte	0xee
	.byte	0xc5
	.byte	0x1
	.byte	0xe
	.byte	0x20
	.byte	0
	.byte	0x36
	.byte	0x1
	.byte	0xc0
	.byte	0x3a
	.byte	0x81
	.byte	0x6
	.byte	0xa
	.uleb128 0x18
	.4byte	0x608a
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x60f5
	.uleb128 0xa
	.4byte	0x149
	.byte	0xc
	.byte	0
	.uleb128 0x58
	.4byte	.LASF426
	.byte	0xc
	.2byte	0x1c5
	.4byte	0x610f
	.byte	0xd
	.byte	0x2
	.byte	0x2a
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0x81
	.byte	0x2b
	.byte	0x4
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0xa0
	.uleb128 0x18
	.4byte	0x60e5
	.uleb128 0x58
	.4byte	.LASF427
	.byte	0xc
	.2byte	0x1d1
	.4byte	0x612e
	.byte	0xd
	.byte	0x2
	.byte	0x2a
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7f
	.byte	0x2b
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9f
	.uleb128 0x18
	.4byte	0x60e5
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x6143
	.uleb128 0xa
	.4byte	0x149
	.byte	0x2a
	.byte	0
	.uleb128 0x58
	.4byte	.LASF428
	.byte	0xc
	.2byte	0x1dd
	.4byte	0x617b
	.byte	0x2b
	.byte	0x4
	.byte	0xe0
	.byte	0x10
	.byte	0x2
	.byte	0x1c
	.byte	0x7
	.byte	0x12
	.byte	0x37
	.byte	0x32
	.byte	0x29
	.byte	0x2d
	.byte	0x29
	.byte	0x25
	.byte	0x2b
	.byte	0x39
	.byte	0
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.byte	0xe1
	.byte	0x10
	.byte	0x3
	.byte	0x1d
	.byte	0x7
	.byte	0x6
	.byte	0x2e
	.byte	0x2c
	.byte	0x29
	.byte	0x2d
	.byte	0x2e
	.byte	0x2e
	.byte	0x37
	.byte	0x3f
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x10
	.byte	0x13
	.byte	0x80
	.byte	0xa
	.byte	0x29
	.byte	0x80
	.byte	0x64
	.uleb128 0x18
	.4byte	0x6133
	.uleb128 0x59
	.4byte	.LASF429
	.byte	0x1
	.byte	0x79
	.4byte	0xa75
	.uleb128 0x5
	.byte	0x3
	.4byte	dispWinTemp
	.uleb128 0x59
	.4byte	.LASF430
	.byte	0x1
	.byte	0x7b
	.4byte	0xaf5
	.uleb128 0x5
	.byte	0x3
	.4byte	userfont
	.uleb128 0x59
	.4byte	.LASF431
	.byte	0x1
	.byte	0x7c
	.4byte	0x33
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_OFFSET
	.uleb128 0x59
	.4byte	.LASF432
	.byte	0x1
	.byte	0x7d
	.4byte	0xe8a
	.uleb128 0x5
	.byte	0x3
	.4byte	fontChar
	.uleb128 0x57
	.4byte	.LASF433
	.byte	0x1
	.byte	0x7e
	.4byte	0x61d4
	.byte	0x4
	.4byte	0x43b40000
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x9cb
	.4byte	0x61e9
	.uleb128 0xa
	.4byte	0x149
	.byte	0xd
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF434
	.byte	0x1
	.2byte	0x727
	.4byte	0x61fb
	.uleb128 0x5
	.byte	0x3
	.4byte	font_bcd
	.uleb128 0x18
	.4byte	0x61d9
	.uleb128 0x5a
	.4byte	.LASF435
	.byte	0xf
	.byte	0x22
	.4byte	0x9f3
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_mutex
	.uleb128 0x5b
	.4byte	.LASF436
	.byte	0xc
	.byte	0x50
	.4byte	0x33
	.uleb128 0x5b
	.4byte	.LASF437
	.byte	0xc
	.byte	0x51
	.4byte	0x33
	.uleb128 0x5a
	.4byte	.LASF438
	.byte	0x1
	.byte	0x4a
	.4byte	0x9b5
	.uleb128 0x5
	.byte	0x3
	.4byte	orientation
	.uleb128 0x5a
	.4byte	.LASF439
	.byte	0x1
	.byte	0x4b
	.4byte	0x9cb
	.uleb128 0x5
	.byte	0x3
	.4byte	font_rotate
	.uleb128 0x5a
	.4byte	.LASF440
	.byte	0x1
	.byte	0x4c
	.4byte	0x9b5
	.uleb128 0x5
	.byte	0x3
	.4byte	font_transparent
	.uleb128 0x5a
	.4byte	.LASF441
	.byte	0x1
	.byte	0x4d
	.4byte	0x9b5
	.uleb128 0x5
	.byte	0x3
	.4byte	font_forceFixed
	.uleb128 0x5a
	.4byte	.LASF442
	.byte	0x1
	.byte	0x6b
	.4byte	0x9b5
	.uleb128 0x5
	.byte	0x3
	.4byte	font_buffered_char
	.uleb128 0x5a
	.4byte	.LASF443
	.byte	0x1
	.byte	0x6c
	.4byte	0x9b5
	.uleb128 0x5
	.byte	0x3
	.4byte	font_line_space
	.uleb128 0x5a
	.4byte	.LASF444
	.byte	0x1
	.byte	0x4e
	.4byte	0x9b5
	.uleb128 0x5
	.byte	0x3
	.4byte	text_wrap
	.uleb128 0x5c
	.string	"_fg"
	.byte	0x1
	.byte	0x4f
	.4byte	0xa35
	.uleb128 0x5
	.byte	0x3
	.4byte	_fg
	.uleb128 0x5c
	.string	"_bg"
	.byte	0x1
	.byte	0x50
	.4byte	0xa35
	.uleb128 0x5
	.byte	0x3
	.4byte	_bg
	.uleb128 0x5a
	.4byte	.LASF445
	.byte	0x1
	.byte	0x5b
	.4byte	0xa75
	.uleb128 0x5
	.byte	0x3
	.4byte	dispWin
	.uleb128 0x5a
	.4byte	.LASF446
	.byte	0x1
	.byte	0x53
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_angleOffset
	.uleb128 0x5a
	.4byte	.LASF447
	.byte	0x1
	.byte	0x51
	.4byte	0x9b5
	.uleb128 0x5
	.byte	0x3
	.4byte	image_debug
	.uleb128 0x5a
	.4byte	.LASF448
	.byte	0x1
	.byte	0x62
	.4byte	0xafb
	.uleb128 0x5
	.byte	0x3
	.4byte	cfont
	.uleb128 0x5a
	.4byte	.LASF449
	.byte	0x1
	.byte	0x55
	.4byte	0x33
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_X
	.uleb128 0x5a
	.4byte	.LASF450
	.byte	0x1
	.byte	0x56
	.4byte	0x33
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_Y
	.uleb128 0x5a
	.4byte	.LASF451
	.byte	0x1
	.byte	0x58
	.4byte	0x9e1
	.uleb128 0x5
	.byte	0x3
	.4byte	tp_calx
	.uleb128 0x5a
	.4byte	.LASF452
	.byte	0x1
	.byte	0x59
	.4byte	0x9e1
	.uleb128 0x5
	.byte	0x3
	.4byte	tp_caly
	.uleb128 0x5a
	.4byte	.LASF453
	.byte	0x1
	.byte	0x33
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_BLACK
	.uleb128 0x18
	.4byte	0xa35
	.uleb128 0x5a
	.4byte	.LASF454
	.byte	0x1
	.byte	0x34
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_NAVY
	.uleb128 0x5a
	.4byte	.LASF455
	.byte	0x1
	.byte	0x35
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_DARKGREEN
	.uleb128 0x5a
	.4byte	.LASF456
	.byte	0x1
	.byte	0x36
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_DARKCYAN
	.uleb128 0x5a
	.4byte	.LASF457
	.byte	0x1
	.byte	0x37
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_MAROON
	.uleb128 0x5a
	.4byte	.LASF458
	.byte	0x1
	.byte	0x38
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_PURPLE
	.uleb128 0x5a
	.4byte	.LASF459
	.byte	0x1
	.byte	0x39
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_OLIVE
	.uleb128 0x5a
	.4byte	.LASF460
	.byte	0x1
	.byte	0x3a
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_LIGHTGREY
	.uleb128 0x5a
	.4byte	.LASF461
	.byte	0x1
	.byte	0x3b
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_DARKGREY
	.uleb128 0x5a
	.4byte	.LASF462
	.byte	0x1
	.byte	0x3c
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_BLUE
	.uleb128 0x5a
	.4byte	.LASF463
	.byte	0x1
	.byte	0x3d
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_GREEN
	.uleb128 0x5a
	.4byte	.LASF464
	.byte	0x1
	.byte	0x3e
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_CYAN
	.uleb128 0x5a
	.4byte	.LASF465
	.byte	0x1
	.byte	0x3f
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_RED
	.uleb128 0x5a
	.4byte	.LASF466
	.byte	0x1
	.byte	0x40
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_MAGENTA
	.uleb128 0x5a
	.4byte	.LASF467
	.byte	0x1
	.byte	0x41
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_YELLOW
	.uleb128 0x5a
	.4byte	.LASF468
	.byte	0x1
	.byte	0x42
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_WHITE
	.uleb128 0x5a
	.4byte	.LASF469
	.byte	0x1
	.byte	0x43
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_ORANGE
	.uleb128 0x5a
	.4byte	.LASF470
	.byte	0x1
	.byte	0x44
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_GREENYELLOW
	.uleb128 0x5a
	.4byte	.LASF471
	.byte	0x1
	.byte	0x45
	.4byte	0x6359
	.uleb128 0x5
	.byte	0x3
	.4byte	TFT_PINK
	.uleb128 0x9
	.4byte	0x9b5
	.4byte	0x649b
	.uleb128 0x5d
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF472
	.byte	0x1
	.byte	0x2e
	.4byte	0x6490
	.uleb128 0x5b
	.4byte	.LASF473
	.byte	0x1
	.byte	0x2f
	.4byte	0x6490
	.uleb128 0x5b
	.4byte	.LASF474
	.byte	0x1
	.byte	0x30
	.4byte	0x6490
	.uleb128 0x5b
	.4byte	.LASF475
	.byte	0x1
	.byte	0x31
	.4byte	0x6490
	.uleb128 0x5e
	.4byte	.LASF476
	.4byte	.LASF476
	.byte	0xc
	.2byte	0x1f6
	.uleb128 0x5e
	.4byte	.LASF477
	.4byte	.LASF477
	.byte	0xc
	.2byte	0x1f8
	.uleb128 0x5e
	.4byte	.LASF478
	.4byte	.LASF478
	.byte	0xc
	.2byte	0x204
	.uleb128 0x5e
	.4byte	.LASF479
	.4byte	.LASF479
	.byte	0xc
	.2byte	0x200
	.uleb128 0x5f
	.string	"cos"
	.string	"cos"
	.byte	0x10
	.byte	0x6d
	.uleb128 0x5f
	.string	"sin"
	.string	"sin"
	.byte	0x10
	.byte	0x6e
	.uleb128 0x60
	.4byte	.LASF480
	.4byte	.LASF480
	.uleb128 0x60
	.4byte	.LASF481
	.4byte	.LASF481
	.uleb128 0x61
	.4byte	.LASF482
	.4byte	.LASF482
	.byte	0x11
	.byte	0x5a
	.uleb128 0x61
	.4byte	.LASF483
	.4byte	.LASF483
	.byte	0x8
	.byte	0xdd
	.uleb128 0x61
	.4byte	.LASF484
	.4byte	.LASF484
	.byte	0x8
	.byte	0xde
	.uleb128 0x61
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.byte	0x97
	.uleb128 0x62
	.4byte	.LASF503
	.4byte	.LASF505
	.byte	0x14
	.byte	0
	.4byte	.LASF503
	.uleb128 0x61
	.4byte	.LASF485
	.4byte	.LASF485
	.byte	0x11
	.byte	0x65
	.uleb128 0x61
	.4byte	.LASF486
	.4byte	.LASF486
	.byte	0x8
	.byte	0xa9
	.uleb128 0x61
	.4byte	.LASF487
	.4byte	.LASF487
	.byte	0x8
	.byte	0xc9
	.uleb128 0x61
	.4byte	.LASF488
	.4byte	.LASF488
	.byte	0x12
	.byte	0x28
	.uleb128 0x61
	.4byte	.LASF489
	.4byte	.LASF489
	.byte	0x8
	.byte	0xb2
	.uleb128 0x5e
	.4byte	.LASF490
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x1f3
	.uleb128 0x5e
	.4byte	.LASF491
	.4byte	.LASF491
	.byte	0xc
	.2byte	0x1f7
	.uleb128 0x61
	.4byte	.LASF492
	.4byte	.LASF492
	.byte	0x8
	.byte	0xd0
	.uleb128 0x5e
	.4byte	.LASF493
	.4byte	.LASF493
	.byte	0xc
	.2byte	0x1fa
	.uleb128 0x5e
	.4byte	.LASF494
	.4byte	.LASF494
	.byte	0x10
	.2byte	0x151
	.uleb128 0x61
	.4byte	.LASF495
	.4byte	.LASF495
	.byte	0x12
	.byte	0x21
	.uleb128 0x61
	.4byte	.LASF496
	.4byte	.LASF496
	.byte	0x12
	.byte	0x1c
	.uleb128 0x61
	.4byte	.LASF497
	.4byte	.LASF497
	.byte	0x12
	.byte	0x1b
	.uleb128 0x61
	.4byte	.LASF498
	.4byte	.LASF498
	.byte	0x8
	.byte	0xca
	.uleb128 0x61
	.4byte	.LASF499
	.4byte	.LASF499
	.byte	0x11
	.byte	0x9d
	.uleb128 0x61
	.4byte	.LASF500
	.4byte	.LASF500
	.byte	0x13
	.byte	0x37
	.uleb128 0x5e
	.4byte	.LASF501
	.4byte	.LASF501
	.byte	0xc
	.2byte	0x1f5
	.uleb128 0x5e
	.4byte	.LASF502
	.4byte	.LASF502
	.byte	0xc
	.2byte	0x210
	.uleb128 0x62
	.4byte	.LASF504
	.4byte	.LASF506
	.byte	0x14
	.byte	0
	.4byte	.LASF504
	.uleb128 0x5e
	.4byte	.LASF507
	.4byte	.LASF507
	.byte	0xc
	.2byte	0x1f4
	.uleb128 0x61
	.4byte	.LASF508
	.4byte	.LASF508
	.byte	0x15
	.byte	0xf
	.uleb128 0x61
	.4byte	.LASF509
	.4byte	.LASF509
	.byte	0x12
	.byte	0x20
	.uleb128 0x61
	.4byte	.LASF510
	.4byte	.LASF510
	.byte	0xe
	.byte	0x5b
	.uleb128 0x61
	.4byte	.LASF511
	.4byte	.LASF511
	.byte	0xe
	.byte	0x5c
	.uleb128 0x61
	.4byte	.LASF512
	.4byte	.LASF512
	.byte	0x12
	.byte	0x18
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5e
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
	.uleb128 0x5f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x60
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
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x62
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
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE68
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x7a
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7a
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE45
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL88
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL69
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL80
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL91-1
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93-1
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL104
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL106-1
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL108-1
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL81
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL117
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL125
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL143
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL140
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL194
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL129
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL149
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL129
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL194
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL128
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL194
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL194
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL157
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL173
	.4byte	.LVL176-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL188
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL165
	.4byte	.LVL194
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL162
	.4byte	.LVL194
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL163
	.4byte	.LVL194
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL164
	.4byte	.LVL194
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL164
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL164
	.4byte	.LVL194
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL176-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL181
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL176-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL178
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL182
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL195
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LVL211-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL195
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL201
	.4byte	.LVL211-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL205
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL195
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL203
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL207
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LFE78
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL212
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL212
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL215
	.4byte	.LVL216-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL216-1
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL214
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL223
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL225
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL224
	.4byte	.LVL227-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL227-1
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL223
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL226
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL234
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL237
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL236
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL244
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL242
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL253
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x7
	.byte	0x76
	.sleb128 -1
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LFE44
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LFE44
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL236
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL263
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL263
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL271
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL263
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL293
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL263
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL266
	.4byte	.LVL285
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL285
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL286-1
	.4byte	.LVL290
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL292-1
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL292-1
	.4byte	.LFE61
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL263
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL265
	.4byte	.LFE61
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL278
	.4byte	.LFE61
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL284
	.4byte	.LVL286-1
	.2byte	0x22
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x40768000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x40768000
	.byte	0x1e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL292-1
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL301
	.4byte	.LVL304-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL296
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL303
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL298
	.4byte	.LVL300
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL302
	.2byte	0x6
	.byte	0x72
	.sleb128 -1
	.byte	0x72
	.sleb128 -1
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL303
	.4byte	.LFE61
	.2byte	0x6
	.byte	0x72
	.sleb128 -1
	.byte	0x72
	.sleb128 -1
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL305
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL307
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL305
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL308
	.4byte	.LFE94
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL310
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL318
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL320
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL311
	.4byte	.LVL316
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL318
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL318
	.4byte	.LVL321
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL322
	.4byte	.LVL324
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LVL328
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LVL333
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL333
	.4byte	.LVL334
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL334
	.4byte	.LVL338
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL339
	.4byte	.LVL353
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL353
	.4byte	.LVL354
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL354
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL315
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL323
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL336
	.4byte	.LVL354
	.2byte	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL331
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL339
	.4byte	.LVL343
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL345
	.4byte	.LVL353-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL339
	.4byte	.LVL341
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x8
	.byte	0x76
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL340
	.4byte	.LVL353-1
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL340
	.4byte	.LVL342
	.2byte	0x8
	.byte	0x76
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL344
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LVL352
	.2byte	0x8
	.byte	0x76
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x2
	.byte	0x76
	.sleb128 2
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0xc
	.byte	0x76
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x76
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL340
	.4byte	.LVL345
	.2byte	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL340
	.4byte	.LVL345
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL346
	.4byte	.LVL352
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL346
	.4byte	.LVL347
	.2byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL348
	.4byte	.LVL349
	.2byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL349
	.4byte	.LVL350
	.2byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL350
	.4byte	.LVL351
	.2byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL359
	.4byte	.LVL363
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL363
	.4byte	.LFE95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL359
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL368
	.4byte	.LFE95
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL359
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL365
	.4byte	.LFE95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL376
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL376
	.4byte	.LVL386-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL369
	.4byte	.LVL391
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL370
	.4byte	.LVL391
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL371
	.4byte	.LVL391
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL372
	.4byte	.LVL386-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL388
	.4byte	.LVL389-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL360
	.4byte	.LVL361
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL376
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL378
	.4byte	.LVL379
	.2byte	0x3
	.byte	0x7c
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL382
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL385
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL362
	.4byte	.LVL386-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL388
	.4byte	.LVL389-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL362
	.4byte	.LVL365
	.2byte	0xd
	.byte	0x74
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL376
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL389-1
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL362
	.4byte	.LVL364
	.2byte	0xc
	.byte	0x74
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL364
	.4byte	.LVL365
	.2byte	0xd
	.byte	0x74
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL366
	.2byte	0xb
	.byte	0x7b
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL366
	.4byte	.LVL376
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL389-1
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL362
	.4byte	.LVL365
	.2byte	0xd
	.byte	0x74
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL367
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL367
	.4byte	.LVL376
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL389-1
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL374
	.4byte	.LVL390
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL375
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL378
	.4byte	.LVL379
	.2byte	0x3
	.byte	0x7b
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL379
	.4byte	.LVL386-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL392
	.4byte	.LVL400
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL400
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL392
	.4byte	.LVL398
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL398
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL393
	.4byte	.LVL395
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL395
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL396
	.4byte	.LVL399
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL394
	.4byte	.LVL395-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL396
	.4byte	.LVL397-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL403
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL404
	.4byte	.LVL405-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL405-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL418
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL419
	.4byte	.LVL420
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL420
	.4byte	.LVL421
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL421
	.4byte	.LVL429
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL418
	.4byte	.LVL422
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL422
	.4byte	.LVL423
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL423
	.4byte	.LVL426
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL418
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL420
	.4byte	.LVL424-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL424-1
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL418
	.4byte	.LVL427
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL427
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL418
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL432
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL436
	.4byte	.LVL437
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL437
	.4byte	.LVL438
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL438
	.4byte	.LVL439
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL439
	.4byte	.LVL442-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL436
	.4byte	.LVL440
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL440
	.4byte	.LVL441
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL441
	.4byte	.LVL445
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL436
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL443
	.4byte	.LVL444
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL444
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL448
	.4byte	.LVL450
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL450
	.4byte	.LVL451
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL448
	.4byte	.LVL452
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL448
	.4byte	.LVL449
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL449
	.4byte	.LVL456
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL456
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL448
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL459
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL448
	.4byte	.LVL455
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL455
	.4byte	.LVL470
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL470
	.4byte	.LVL471
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL471
	.4byte	.LVL480
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL480
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL453
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL459
	.4byte	.LVL470
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL453
	.4byte	.LVL455
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL455
	.4byte	.LVL470
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL453
	.4byte	.LVL470
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL453
	.4byte	.LVL470
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL470
	.4byte	.LVL481
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL481
	.4byte	.LVL494
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL470
	.4byte	.LVL494
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL470
	.4byte	.LVL471
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL471
	.4byte	.LVL480
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL480
	.4byte	.LVL494
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL496
	.4byte	.LVL497
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL497
	.4byte	.LVL499
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL499
	.4byte	.LVL505
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL506-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3
	.4byte	dispWin
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL496
	.4byte	.LVL498
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL498
	.4byte	.LVL500
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL500
	.4byte	.LVL506-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL496
	.4byte	.LVL498
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL498
	.4byte	.LVL502
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL502
	.4byte	.LVL505
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL506-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3
	.4byte	dispWin
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL496
	.4byte	.LVL498
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL498
	.4byte	.LVL501
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL501
	.4byte	.LVL506-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL496
	.4byte	.LVL504
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL504
	.4byte	.LVL507
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL507
	.4byte	.LVL509
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL496
	.4byte	.LVL503
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL503
	.4byte	.LVL508
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL508
	.4byte	.LVL510
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL515
	.4byte	.LVL516
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL516
	.4byte	.LVL518
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL518
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL515
	.4byte	.LVL517
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL517
	.4byte	.LVL519
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL519
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL515
	.4byte	.LVL526
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL526
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL525
	.4byte	.LVL531
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL540
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL525
	.4byte	.LVL526
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL526
	.4byte	.LVL532-1
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL540
	.4byte	.LVL541-1
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL526
	.4byte	.LVL528
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL528
	.4byte	.LVL529
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL529
	.4byte	.LFE55
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL525
	.4byte	.LVL526
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL526
	.4byte	.LVL532-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL540
	.4byte	.LVL541-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL542
	.4byte	.LVL543
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL543
	.4byte	.LVL544
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL542
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL545
	.4byte	.LVL546
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL546
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL549
	.4byte	.LVL552
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL552
	.4byte	.LVL553
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL553
	.4byte	.LFE58
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL549
	.4byte	.LVL554
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL554
	.4byte	.LVL555
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL555
	.4byte	.LFE58
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL549
	.4byte	.LVL559
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL559
	.4byte	.LFE58
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL549
	.4byte	.LVL578
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL578
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL549
	.4byte	.LVL550
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL550
	.4byte	.LVL551
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL551
	.4byte	.LFE58
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL556
	.4byte	.LVL565
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL565
	.4byte	.LVL566
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL566
	.4byte	.LVL569
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL570
	.4byte	.LVL571
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL571
	.4byte	.LVL578
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL578
	.4byte	.LVL580
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL580
	.4byte	.LVL582
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL582
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL589
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL556
	.4byte	.LVL559
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL559
	.4byte	.LVL563
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL563
	.4byte	.LVL564
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL564
	.4byte	.LVL569
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL570
	.4byte	.LVL571
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL571
	.4byte	.LVL584
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL584
	.4byte	.LVL585
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL585
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL589
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL556
	.4byte	.LVL571
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL571
	.4byte	.LVL578
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL578
	.4byte	.LVL579-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL579-1
	.4byte	.LVL583
	.2byte	0x7
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL589
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL557
	.4byte	.LVL558
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL558
	.4byte	.LVL559
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL559
	.4byte	.LVL560
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL560
	.4byte	.LVL564
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL570
	.4byte	.LVL571
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL571
	.4byte	.LVL573
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL573
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL557
	.4byte	.LVL559
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL559
	.4byte	.LVL561-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL564
	.4byte	.LVL569
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL570
	.4byte	.LVL576
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL576
	.4byte	.LVL578
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL578
	.4byte	.LVL581
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL583
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL589
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL557
	.4byte	.LVL558
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL558
	.4byte	.LVL561-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL567
	.4byte	.LVL569
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL570
	.4byte	.LVL576
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL576
	.4byte	.LVL578
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL578
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL589
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL558
	.4byte	.LVL559
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL559
	.4byte	.LVL562
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL564
	.4byte	.LVL569
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL570
	.4byte	.LVL572
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL576
	.4byte	.LVL577
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL577
	.4byte	.LVL579-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL586
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL589
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL590
	.4byte	.LVL593
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL593
	.4byte	.LVL594
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL594
	.4byte	.LFE60
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL590
	.4byte	.LVL595
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL595
	.4byte	.LVL596
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL596
	.4byte	.LFE60
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL590
	.4byte	.LVL600
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL600
	.4byte	.LFE60
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL590
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL619
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL590
	.4byte	.LVL591
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL591
	.4byte	.LVL592
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL592
	.4byte	.LFE60
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL597
	.4byte	.LVL606
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL606
	.4byte	.LVL607
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL607
	.4byte	.LVL610
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL611
	.4byte	.LVL612
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL612
	.4byte	.LVL619
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL619
	.4byte	.LVL621
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL621
	.4byte	.LVL623
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL623
	.4byte	.LVL629
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL630
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL597
	.4byte	.LVL600
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL600
	.4byte	.LVL604
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL604
	.4byte	.LVL605
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL605
	.4byte	.LVL610
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL611
	.4byte	.LVL612
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL612
	.4byte	.LVL625
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL625
	.4byte	.LVL626
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL626
	.4byte	.LVL629
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL630
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL597
	.4byte	.LVL612
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL612
	.4byte	.LVL619
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL619
	.4byte	.LVL620-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL620-1
	.4byte	.LVL624
	.2byte	0x7
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL630
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL598
	.4byte	.LVL599
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL599
	.4byte	.LVL600
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL600
	.4byte	.LVL601
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL601
	.4byte	.LVL605
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL611
	.4byte	.LVL612
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL612
	.4byte	.LVL614
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL614
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL598
	.4byte	.LVL600
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL600
	.4byte	.LVL602-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL605
	.4byte	.LVL610
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL611
	.4byte	.LVL617
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL617
	.4byte	.LVL619
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL619
	.4byte	.LVL622
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL624
	.4byte	.LVL629
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL630
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL598
	.4byte	.LVL599
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL599
	.4byte	.LVL602-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL608
	.4byte	.LVL610
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL611
	.4byte	.LVL617
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL617
	.4byte	.LVL619
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL619
	.4byte	.LVL629
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL630
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL599
	.4byte	.LVL600
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL600
	.4byte	.LVL603
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL605
	.4byte	.LVL610
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL611
	.4byte	.LVL613
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL617
	.4byte	.LVL618
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL618
	.4byte	.LVL620-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL627
	.4byte	.LVL629
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL630
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL631
	.4byte	.LVL635
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL635
	.4byte	.LVL642
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL642
	.4byte	.LVL672
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL631
	.4byte	.LVL636
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL636
	.4byte	.LVL643
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL643
	.4byte	.LVL673
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL631
	.4byte	.LVL634
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL634
	.4byte	.LVL680
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL680
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL631
	.4byte	.LVL639
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL639
	.4byte	.LVL643
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL643
	.4byte	.LVL666
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL666
	.4byte	.LVL680
	.2byte	0x2a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 0
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
	.4byte	.LVL680
	.4byte	.LFE62
	.2byte	0x2f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xa
	.2byte	0xffff
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
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL631
	.4byte	.LVL633
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL633
	.4byte	.LVL637-1
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL637-1
	.4byte	.LVL638
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL638
	.4byte	.LVL640-1
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL640-1
	.4byte	.LFE62
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL631
	.4byte	.LVL632
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL632
	.4byte	.LVL637-1
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL637-1
	.4byte	.LFE62
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL644
	.4byte	.LVL653
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL657
	.4byte	.LVL660
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL644
	.4byte	.LVL647
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL647
	.4byte	.LVL669
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL644
	.4byte	.LVL645
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL645
	.4byte	.LVL646
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL646
	.4byte	.LVL650
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL650
	.4byte	.LVL651-1
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL651-1
	.4byte	.LVL657
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL657
	.4byte	.LVL658-1
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL658-1
	.4byte	.LFE62
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL705
	.4byte	.LVL707
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL707
	.4byte	.LVL708
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL708
	.4byte	.LVL711
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL711
	.4byte	.LVL735
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL705
	.4byte	.LVL709
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL709
	.4byte	.LVL710
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL710
	.4byte	.LVL735
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL705
	.4byte	.LVL715
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL715
	.4byte	.LVL716
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL716
	.4byte	.LVL738
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL757
	.4byte	.LVL758
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL758
	.4byte	.LVL759
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL705
	.4byte	.LVL706
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL706
	.4byte	.LVL735
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL735
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL712
	.4byte	.LVL713-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL713-1
	.4byte	.LVL735
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL714
	.4byte	.LVL720
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL720
	.4byte	.LVL735
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL717
	.4byte	.LVL738
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL757
	.4byte	.LVL758
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL758
	.4byte	.LVL759
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL718
	.4byte	.LVL738
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL757
	.4byte	.LVL758
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL758
	.4byte	.LVL759
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL719
	.4byte	.LVL720
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL720
	.4byte	.LVL735
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.4byte	.LVL735
	.4byte	.LFE63
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL719
	.4byte	.LVL720
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL720
	.4byte	.LVL735
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL735
	.4byte	.LVL738
	.2byte	0x7
	.byte	0xa
	.2byte	0x168
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL757
	.4byte	.LVL758
	.2byte	0x7
	.byte	0xa
	.2byte	0x168
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL758
	.4byte	.LVL759
	.2byte	0x7
	.byte	0xa
	.2byte	0x168
	.byte	0x74
	.sleb128 1
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL719
	.4byte	.LVL720
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL738
	.4byte	.LVL755
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL755
	.4byte	.LVL756
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL756
	.4byte	.LVL757
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL760
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL739
	.4byte	.LVL740
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL761
	.4byte	.LVL771
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL771
	.4byte	.LVL772
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL772
	.4byte	.LVL779
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL779
	.4byte	.LVL780
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL780
	.4byte	.LVL784
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL784
	.4byte	.LVL785
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL785
	.4byte	.LVL789
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL789
	.4byte	.LVL790
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL790
	.4byte	.LVL793
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL793
	.4byte	.LVL794
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL794
	.4byte	.LVL799
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL799
	.4byte	.LVL800
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL800
	.4byte	.LVL806
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL806
	.4byte	.LVL807
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL807
	.4byte	.LVL814
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL814
	.4byte	.LVL815
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL815
	.4byte	.LVL848
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL848
	.4byte	.LVL856
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL856
	.4byte	.LVL858
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL858
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL761
	.4byte	.LVL763
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL763
	.4byte	.LFE65
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL762
	.4byte	.LVL770
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL770
	.4byte	.LVL772
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL772
	.4byte	.LVL778
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL778
	.4byte	.LVL780
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL780
	.4byte	.LVL783
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL783
	.4byte	.LVL785
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL785
	.4byte	.LVL788
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL788
	.4byte	.LVL790
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL790
	.4byte	.LVL792
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL792
	.4byte	.LVL794
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL794
	.4byte	.LVL798
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL798
	.4byte	.LVL800
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL800
	.4byte	.LVL805
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL805
	.4byte	.LVL807
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL807
	.4byte	.LVL813
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL813
	.4byte	.LVL815
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL815
	.4byte	.LVL852
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL852
	.4byte	.LVL853
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL853
	.4byte	.LVL855
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL855
	.4byte	.LVL856
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL856
	.4byte	.LVL857
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL857
	.4byte	.LVL859
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL859
	.4byte	.LVL860
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL862
	.4byte	.LVL866
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL766
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL767
	.4byte	.LVL768
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL768
	.4byte	.LVL775
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL765
	.4byte	.LVL782
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL782
	.4byte	.LVL804
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL804
	.4byte	.LVL859
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL862
	.4byte	.LVL864
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL864
	.4byte	.LVL866
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL765
	.4byte	.LVL787
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL787
	.4byte	.LVL844
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL844
	.4byte	.LVL856
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL856
	.4byte	.LVL860
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL862
	.4byte	.LVL866
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL765
	.4byte	.LVL796
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL796
	.4byte	.LVL797
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL797
	.4byte	.LVL800
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL800
	.4byte	.LVL801
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL801
	.4byte	.LVL859
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL862
	.4byte	.LVL864
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL864
	.4byte	.LVL866
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL791
	.4byte	.LVL809
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL800
	.4byte	.LVL809
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL809
	.4byte	.LVL815
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL815
	.4byte	.LVL816
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL816
	.4byte	.LVL818-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL819
	.4byte	.LVL831
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL832
	.4byte	.LVL833-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL833-1
	.4byte	.LVL837
	.2byte	0x3
	.byte	0x76
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL837
	.4byte	.LVL839
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL840
	.4byte	.LVL851
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL803
	.4byte	.LVL804-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL811
	.4byte	.LVL812
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL812
	.4byte	.LVL815
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL815
	.4byte	.LVL816
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL816
	.4byte	.LVL859
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL817
	.4byte	.LVL820
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL820
	.4byte	.LVL822
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL824
	.4byte	.LVL825
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL840
	.4byte	.LVL856
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL819
	.4byte	.LVL820
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL821
	.4byte	.LVL823
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL823
	.4byte	.LVL840
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL827
	.4byte	.LVL828-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL829
	.4byte	.LVL830
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL819
	.4byte	.LVL820
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL820
	.4byte	.LVL835
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL835
	.4byte	.LVL836-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL836-1
	.4byte	.LVL838
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL838
	.4byte	.LVL859
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL849
	.4byte	.LVL856
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL867
	.4byte	.LVL875
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL875
	.4byte	.LVL876
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL876
	.4byte	.LVL890
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL890
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL876
	.4byte	.LVL878
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL878
	.4byte	.LVL879
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL879
	.4byte	.LVL880
	.2byte	0x3
	.byte	0x7b
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL880
	.4byte	.LVL881
	.2byte	0x3
	.byte	0x7b
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL881
	.4byte	.LVL884
	.2byte	0x3
	.byte	0x7b
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL884
	.4byte	.LVL885
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL885
	.4byte	.LVL888
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL888
	.4byte	.LFE66
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL877
	.4byte	.LVL878
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL878
	.4byte	.LVL887
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL888
	.4byte	.LVL889
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL889
	.4byte	.LFE66
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL880
	.4byte	.LVL881
	.2byte	0x9
	.byte	0x7b
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.4byte	.LVL881
	.4byte	.LVL883
	.2byte	0xd
	.byte	0x7b
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	cfont
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL881
	.4byte	.LVL882
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL882
	.4byte	.LVL883
	.2byte	0xd
	.byte	0x7b
	.sleb128 2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	cfont
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL876
	.4byte	.LVL878
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL878
	.4byte	.LFE66
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL868
	.4byte	.LVL869
	.2byte	0x3
	.byte	0x73
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL869
	.4byte	.LVL870
	.2byte	0x3
	.byte	0x73
	.sleb128 -47
	.byte	0x9f
	.4byte	.LVL870
	.4byte	.LVL871
	.2byte	0x3
	.byte	0x73
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL872
	.4byte	.LVL873
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL873
	.4byte	.LVL874
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL874
	.4byte	.LVL876
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL891
	.4byte	.LVL892
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL892
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL894
	.4byte	.LVL895
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL895
	.4byte	.LVL897
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL897
	.4byte	.LVL899
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL899
	.4byte	.LVL900
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL900
	.4byte	.LVL901
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL901
	.4byte	.LVL909
	.2byte	0x3
	.byte	0x7a
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL909
	.4byte	.LVL910
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL910
	.4byte	.LVL911
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL911
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL896
	.4byte	.LVL897
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	.LVL897
	.4byte	.LVL898
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL911
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL901
	.4byte	.LVL902
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL902
	.4byte	.LVL905
	.2byte	0x9
	.byte	0x7a
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.4byte	.LVL905
	.4byte	.LVL908
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL901
	.4byte	.LVL905
	.2byte	0x9
	.byte	0x7a
	.sleb128 2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.4byte	.LVL905
	.4byte	.LVL907
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL903
	.4byte	.LVL905
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	.LVL905
	.4byte	.LVL906
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL900
	.4byte	.LVL903
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL903
	.4byte	.LVL904
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL904
	.4byte	.LVL911
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL912
	.4byte	.LVL917
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL917
	.4byte	.LVL918
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL918
	.4byte	.LVL920
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL920
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL913
	.4byte	.LVL920
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL920
	.4byte	.LVL921
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL921
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL925
	.4byte	.LFE76
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL914
	.4byte	.LVL917
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL917
	.4byte	.LVL918
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL917
	.4byte	.LVL918
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL921
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL926
	.4byte	.LVL927
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL927
	.4byte	.LFE81
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL926
	.4byte	.LVL928
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL928
	.4byte	.LVL929
	.2byte	0x4
	.byte	0x72
	.sleb128 7000
	.byte	0x9f
	.4byte	.LVL929
	.4byte	.LVL930
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL930
	.4byte	.LVL931
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL931
	.4byte	.LVL944
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL946
	.4byte	.LVL947
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL949
	.4byte	.LVL956
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL957
	.4byte	.LVL958
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL958
	.4byte	.LVL966
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	.LVL966
	.4byte	.LVL970
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL970
	.4byte	.LVL1184
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL926
	.4byte	.LVL932
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL932
	.4byte	.LVL933
	.2byte	0x4
	.byte	0x74
	.sleb128 8000
	.byte	0x9f
	.4byte	.LVL933
	.4byte	.LVL934
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL934
	.4byte	.LVL935
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL935
	.4byte	.LVL950
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL952
	.4byte	.LVL954
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL955
	.4byte	.LVL957
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL957
	.4byte	.LVL959
	.2byte	0x17
	.byte	0x3
	.4byte	dispWin+2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LVL937
	.4byte	.LVL938
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL938
	.4byte	.LVL1184
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL968
	.4byte	.LVL970
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL970
	.4byte	.LVL971
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL971
	.4byte	.LVL1184
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL939
	.4byte	.LVL945
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL946
	.4byte	.LVL948
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL960
	.4byte	.LVL961
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL961
	.4byte	.LVL962-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL962-1
	.4byte	.LVL963
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL963
	.4byte	.LVL964-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL964-1
	.4byte	.LVL966
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL966
	.4byte	.LVL967
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL967
	.4byte	.LVL1019
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1019
	.4byte	.LVL1020-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1020-1
	.4byte	.LVL1048
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1048
	.4byte	.LVL1058-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1058-1
	.4byte	.LVL1095
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1095
	.4byte	.LVL1096-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1096-1
	.4byte	.LVL1130
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1130
	.4byte	.LVL1135
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1135
	.4byte	.LVL1144
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1144
	.4byte	.LVL1146
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1146
	.4byte	.LVL1184
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL960
	.4byte	.LVL965
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL965
	.4byte	.LVL966
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL966
	.4byte	.LVL1184
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL940
	.4byte	.LVL941
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL941
	.4byte	.LVL942
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL942
	.4byte	.LVL943
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL943
	.4byte	.LVL951
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL953
	.4byte	.LVL955
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LVL972
	.4byte	.LVL983
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1004
	.4byte	.LVL1007
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1019
	.4byte	.LVL1032
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1048
	.4byte	.LVL1049
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1049
	.4byte	.LVL1050
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1050
	.4byte	.LVL1051
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1130
	.4byte	.LVL1133
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1144
	.4byte	.LVL1148
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST241:
	.4byte	.LVL968
	.4byte	.LVL969
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL969
	.4byte	.LVL970
	.2byte	0x5
	.byte	0x3
	.4byte	TFT_OFFSET
	.4byte	.LVL970
	.4byte	.LVL1047
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL1047
	.4byte	.LVL1048
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1048
	.4byte	.LVL1184
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL976
	.4byte	.LVL977
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL977
	.4byte	.LVL981-1
	.2byte	0x5
	.byte	0x3
	.4byte	TFT_Y
	.4byte	.LVL981-1
	.4byte	.LVL1019
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LLST243:
	.4byte	.LVL976
	.4byte	.LVL978
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL978
	.4byte	.LVL981-1
	.2byte	0x5
	.byte	0x3
	.4byte	TFT_X
	.4byte	.LVL981-1
	.4byte	.LVL1019
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LVL976
	.4byte	.LVL987
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL987
	.4byte	.LVL989
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL990
	.4byte	.LVL991
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL991
	.4byte	.LVL999-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1004
	.4byte	.LVL1007
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1007
	.4byte	.LVL1009
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1009
	.4byte	.LVL1010
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL1010
	.4byte	.LVL1016
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LVL987
	.4byte	.LVL998
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1007
	.4byte	.LVL1015
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST246:
	.4byte	.LVL987
	.4byte	.LVL1000
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1006
	.4byte	.LVL1007
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1007
	.4byte	.LVL1016
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL979
	.4byte	.LVL1017
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1017
	.4byte	.LVL1018
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST248:
	.4byte	.LVL1011
	.4byte	.LVL1012-1
	.2byte	0x15
	.byte	0x3
	.4byte	fontChar+16
	.byte	0x94
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -160
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST249:
	.4byte	.LVL1011
	.4byte	.LVL1012-1
	.2byte	0x15
	.byte	0x3
	.4byte	fontChar+4
	.byte	0x94
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -156
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST250:
	.4byte	.LVL1005
	.4byte	.LVL1007
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL1007
	.4byte	.LVL1008
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1008
	.4byte	.LVL1010
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL1010
	.4byte	.LVL1016
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST251:
	.4byte	.LVL980
	.4byte	.LVL1004
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST252:
	.4byte	.LVL992
	.4byte	.LVL993
	.2byte	0x17
	.byte	0x3
	.4byte	fontChar+4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	fontChar+16
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL993
	.4byte	.LVL994
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL994
	.4byte	.LVL995
	.2byte	0x17
	.byte	0x3
	.4byte	fontChar+4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	fontChar+16
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST253:
	.4byte	.LVL982
	.4byte	.LVL1004
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST254:
	.4byte	.LVL987
	.4byte	.LVL988
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL988
	.4byte	.LVL991
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL991
	.4byte	.LVL999-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST255:
	.4byte	.LVL984
	.4byte	.LVL987
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST256:
	.4byte	.LVL1019
	.4byte	.LVL1047
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST257:
	.4byte	.LVL1019
	.4byte	.LVL1032
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1032
	.4byte	.LVL1034
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1035
	.4byte	.LVL1036
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL1036
	.4byte	.LVL1048
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST258:
	.4byte	.LVL1022
	.4byte	.LVL1030
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST259:
	.4byte	.LVL1025
	.4byte	.LVL1026
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1026
	.4byte	.LVL1048
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST260:
	.4byte	.LVL1029
	.4byte	.LVL1031-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1031-1
	.4byte	.LVL1048
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LLST261:
	.4byte	.LVL1029
	.4byte	.LVL1032
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL1032
	.4byte	.LVL1033
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1033
	.4byte	.LVL1036
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL1036
	.4byte	.LVL1048
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST262:
	.4byte	.LVL1031
	.4byte	.LVL1032
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1032
	.4byte	.LVL1046
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST263:
	.4byte	.LVL1032
	.4byte	.LVL1044
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST264:
	.4byte	.LVL1037
	.4byte	.LVL1040
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST265:
	.4byte	.LVL1038
	.4byte	.LVL1039
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1039
	.4byte	.LVL1041-1
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST266:
	.4byte	.LVL1052
	.4byte	.LVL1053
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1053
	.4byte	.LVL1058-1
	.2byte	0x5
	.byte	0x3
	.4byte	TFT_Y
	.4byte	.LVL1058-1
	.4byte	.LVL1095
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LLST267:
	.4byte	.LVL1052
	.4byte	.LVL1058-1
	.2byte	0x5
	.byte	0x3
	.4byte	TFT_X
	.4byte	.LVL1058-1
	.4byte	.LVL1095
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST268:
	.4byte	.LVL1066
	.4byte	.LVL1068
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1068
	.4byte	.LVL1069
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL1082
	.4byte	.LVL1084
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST269:
	.4byte	.LVL1064
	.4byte	.LVL1071
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1071
	.4byte	.LVL1073
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL1073
	.4byte	.LVL1074-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1080
	.4byte	.LVL1081
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1081
	.4byte	.LVL1090
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1090
	.4byte	.LVL1093
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL1093
	.4byte	.LVL1094
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST270:
	.4byte	.LVL1066
	.4byte	.LVL1069
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	.LVL1082
	.4byte	.LVL1083
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL1083
	.4byte	.LVL1084
	.2byte	0x9
	.byte	0x3
	.4byte	cfont
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST271:
	.4byte	.LVL1054
	.4byte	.LVL1064
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	.LVL1078
	.4byte	.LVL1094
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	0
	.4byte	0
.LLST272:
	.4byte	.LVL1066
	.4byte	.LVL1067
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL1067
	.4byte	.LVL1069
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1082
	.4byte	.LVL1084
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL1084
	.4byte	.LVL1086-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1088
	.4byte	.LVL1089
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST273:
	.4byte	.LVL1064
	.4byte	.LVL1065
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1065
	.4byte	.LVL1069
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL1069
	.4byte	.LVL1073
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST274:
	.4byte	.LVL1056
	.4byte	.LVL1070
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1072
	.4byte	.LVL1091
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1092
	.4byte	.LVL1094
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST275:
	.4byte	.LVL1085
	.4byte	.LVL1087
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST276:
	.4byte	.LVL1057
	.4byte	.LVL1078
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST277:
	.4byte	.LVL1059
	.4byte	.LVL1078
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST278:
	.4byte	.LVL1060
	.4byte	.LVL1063
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST279:
	.4byte	.LVL1095
	.4byte	.LVL1129
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	0
	.4byte	0
.LLST280:
	.4byte	.LVL1111
	.4byte	.LVL1112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1112
	.4byte	.LVL1118
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1118
	.4byte	.LVL1119
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST281:
	.4byte	.LVL1109
	.4byte	.LVL1110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1110
	.4byte	.LVL1121
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1121
	.4byte	.LVL1124
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL1124
	.4byte	.LVL1127
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST282:
	.4byte	.LVL1111
	.4byte	.LVL1120
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	0
	.4byte	0
.LLST283:
	.4byte	.LVL1106
	.4byte	.LVL1128
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST284:
	.4byte	.LVL1111
	.4byte	.LVL1112
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL1112
	.4byte	.LVL1120
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST285:
	.4byte	.LVL1109
	.4byte	.LVL1122
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1123
	.4byte	.LVL1126
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST286:
	.4byte	.LVL1113
	.4byte	.LVL1116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1116
	.4byte	.LVL1117-1
	.2byte	0x37
	.byte	0x3
	.4byte	cfont+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.sleb128 -124
	.byte	0x6
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.byte	0x22
	.byte	0x22
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -160
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0x1e
	.byte	0x91
	.sleb128 -144
	.byte	0xf6
	.byte	0x4
	.uleb128 0x25
	.byte	0x1c
	.byte	0x91
	.sleb128 -116
	.byte	0x6
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x22
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST287:
	.4byte	.LVL1114
	.4byte	.LVL1115
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1115
	.4byte	.LVL1117-1
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST288:
	.4byte	.LVL1098
	.4byte	.LVL1107
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST289:
	.4byte	.LVL1101
	.4byte	.LVL1102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1102
	.4byte	.LVL1129
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST290:
	.4byte	.LVL1105
	.4byte	.LVL1108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1108-1
	.4byte	.LVL1129
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LLST291:
	.4byte	.LVL1110
	.4byte	.LVL1124
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST292:
	.4byte	.LVL1131
	.4byte	.LVL1181
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST293:
	.4byte	.LVL1131
	.4byte	.LVL1172
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST294:
	.4byte	.LVL1131
	.4byte	.LVL1133
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1144
	.4byte	.LVL1148
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST295:
	.4byte	.LVL1131
	.4byte	.LVL1132
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	0
	.4byte	0
.LLST296:
	.4byte	.LVL1131
	.4byte	.LVL1182
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	0
	.4byte	0
.LLST297:
	.4byte	.LVL1134
	.4byte	.LVL1140
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1140
	.4byte	.LVL1144
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST298:
	.4byte	.LVL1145
	.4byte	.LVL1148
	.2byte	0x11
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x8
	.byte	0x2d
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	font_bcd
	.byte	0x22
	.4byte	.LVL1148
	.4byte	.LVL1162
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST299:
	.4byte	.LVL1147
	.4byte	.LVL1180
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	0
	.4byte	0
.LLST300:
	.4byte	.LVL1185
	.4byte	.LVL1186
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1186
	.4byte	.LVL1187
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1187
	.4byte	.LVL1191
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL1191
	.4byte	.LVL1192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1192
	.4byte	.LVL1193-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1193-1
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST301:
	.4byte	.LVL1200
	.4byte	.LVL1201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1201
	.4byte	.LFE84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST302:
	.4byte	.LVL1203
	.4byte	.LVL1205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1205
	.4byte	.LVL1206
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL1207
	.4byte	.LVL1208-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1208-1
	.4byte	.LVL1212
	.2byte	0x1d
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43b40000
	.byte	0x29
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1212
	.4byte	.LVL1262
	.2byte	0x21
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43b40000
	.byte	0x29
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST303:
	.4byte	.LVL1203
	.4byte	.LVL1242
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1242
	.4byte	.LVL1258
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL1258
	.4byte	.LVL1262
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1262
	.4byte	.LFE85
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST304:
	.4byte	.LVL1203
	.4byte	.LVL1210
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1210
	.4byte	.LVL1216
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL1216
	.4byte	.LVL1219-1
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1219-1
	.4byte	.LVL1239
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL1239
	.4byte	.LVL1245
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1245
	.4byte	.LVL1248
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL1248
	.4byte	.LVL1250
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1250
	.4byte	.LVL1251
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL1251
	.4byte	.LVL1252
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1252
	.4byte	.LVL1255
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL1255
	.4byte	.LVL1257
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1257
	.4byte	.LVL1258
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1258
	.4byte	.LVL1262
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1262
	.4byte	.LFE85
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST305:
	.4byte	.LVL1204
	.4byte	.LVL1244
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1244
	.4byte	.LVL1245
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1248
	.4byte	.LVL1253
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1253
	.4byte	.LVL1255
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1255
	.4byte	.LVL1258
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1258
	.4byte	.LVL1262
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1262
	.4byte	.LVL1263-1
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST306:
	.4byte	.LVL1204
	.4byte	.LVL1244
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1244
	.4byte	.LVL1245
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1248
	.4byte	.LVL1250
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1250
	.4byte	.LVL1251
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL1251
	.4byte	.LVL1254
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1254
	.4byte	.LVL1258
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1258
	.4byte	.LVL1262
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1262
	.4byte	.LVL1263-1
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1266
	.4byte	.LVL1267-1
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST307:
	.4byte	.LVL1204
	.4byte	.LVL1244
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1244
	.4byte	.LVL1245
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1248
	.4byte	.LVL1251
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1251
	.4byte	.LVL1252
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1252
	.4byte	.LVL1255
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL1255
	.4byte	.LVL1257
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1257
	.4byte	.LVL1258
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1258
	.4byte	.LVL1262
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1262
	.4byte	.LVL1263-1
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1270
	.4byte	.LVL1271-1
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST308:
	.4byte	.LVL1262
	.4byte	.LVL1263-1
	.2byte	0x51
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x406fe000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf7
	.uleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x406fe000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf7
	.uleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x406fe000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf7
	.uleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL1266
	.4byte	.LVL1267-1
	.2byte	0x1f
	.byte	0x93
	.uleb128 0x1
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x406fe000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf7
	.uleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL1270
	.4byte	.LVL1271-1
	.2byte	0x1d
	.byte	0x93
	.uleb128 0x2
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x406fe000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf7
	.uleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.4byte	0
	.4byte	0
.LLST309:
	.4byte	.LVL1212
	.4byte	.LVL1243
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1258
	.4byte	.LVL1259
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST310:
	.4byte	.LVL1217
	.4byte	.LVL1218
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1218
	.4byte	.LVL1262
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST311:
	.4byte	.LVL1224
	.4byte	.LVL1225
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1225
	.4byte	.LVL1226-1
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1241
	.4byte	.LVL1247
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1248
	.4byte	.LVL1253
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1253
	.4byte	.LVL1255
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL1255
	.4byte	.LVL1261
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST312:
	.4byte	.LVL1230
	.4byte	.LVL1231
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1231
	.4byte	.LVL1232-1
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1240
	.4byte	.LVL1246
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1248
	.4byte	.LVL1249
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1251
	.4byte	.LVL1254
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1254
	.4byte	.LVL1255
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL1255
	.4byte	.LVL1256
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL1258
	.4byte	.LVL1260
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST313:
	.4byte	.LVL1238
	.4byte	.LVL1262
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST314:
	.4byte	.LVL1274
	.4byte	.LVL1275
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1275
	.4byte	.LFE86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST315:
	.4byte	.LVL1276
	.4byte	.LVL1277
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1277
	.4byte	.LVL1278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL1278
	.4byte	.LVL1279
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST316:
	.4byte	.LVL1276
	.4byte	.LVL1280
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1280
	.4byte	.LVL1281
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1281
	.4byte	.LVL1282
	.2byte	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1282
	.4byte	.LVL1283
	.2byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST317:
	.4byte	.LVL1284
	.4byte	.LVL1285
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1285
	.4byte	.LVL1286
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL1286
	.4byte	.LVL1289
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1289
	.4byte	.LVL1290
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL1290
	.4byte	.LVL1291
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1291
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST318:
	.4byte	.LVL1293
	.4byte	.LVL1297
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1297
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST319:
	.4byte	.LVL1293
	.4byte	.LVL1295
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1295
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST320:
	.4byte	.LVL1296
	.4byte	.LVL1298
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST321:
	.4byte	.LVL1300
	.4byte	.LVL1315
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1315
	.4byte	.LVL1316
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL1316
	.4byte	.LVL1317
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1317
	.4byte	.LVL1318
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL1318
	.4byte	.LVL1330
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1335
	.4byte	.LVL1336
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1338
	.4byte	.LVL1339
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1341
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST322:
	.4byte	.LVL1300
	.4byte	.LVL1319
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1319
	.4byte	.LVL1320
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL1320
	.4byte	.LVL1321
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1321
	.4byte	.LVL1322
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL1322
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST323:
	.4byte	.LVL1300
	.4byte	.LVL1309
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1309
	.4byte	.LVL1313
	.2byte	0x13
	.byte	0x75
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1313
	.4byte	.LVL1335
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1335
	.4byte	.LVL1336
	.2byte	0x13
	.byte	0x75
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1336
	.4byte	.LVL1338
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1338
	.4byte	.LVL1339
	.2byte	0x13
	.byte	0x75
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1345
	.4byte	.LFE96
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST324:
	.4byte	.LVL1300
	.4byte	.LVL1311
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1311
	.4byte	.LFE96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST325:
	.4byte	.LVL1301
	.4byte	.LVL1311
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1311
	.4byte	.LVL1339
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1345
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST326:
	.4byte	.LVL1312
	.4byte	.LVL1314
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1333
	.4byte	.LVL1335
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1335
	.4byte	.LVL1336
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1336
	.4byte	.LVL1337-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST327:
	.4byte	.LVL1347
	.4byte	.LVL1349
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1349
	.4byte	.LVL1374
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1374
	.4byte	.LVL1375
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1375
	.4byte	.LVL1386
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1478
	.4byte	.LVL1482
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST328:
	.4byte	.LVL1347
	.4byte	.LVL1363
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1363
	.4byte	.LVL1377
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	.LVL1377
	.4byte	.LVL1378
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1378
	.4byte	.LVL1381
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	.LVL1381
	.4byte	.LVL1382
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1382
	.4byte	.LVL1391
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	.LVL1478
	.4byte	.LVL1482
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	0
	.4byte	0
.LLST329:
	.4byte	.LVL1347
	.4byte	.LVL1350
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1350
	.4byte	.LVL1370
	.2byte	0x13
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1370
	.4byte	.LVL1478
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1478
	.4byte	.LVL1482
	.2byte	0x13
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1482
	.4byte	.LFE97
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST330:
	.4byte	.LVL1347
	.4byte	.LVL1371
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1371
	.4byte	.LVL1478
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL1478
	.4byte	.LVL1482
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1482
	.4byte	.LFE97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST331:
	.4byte	.LVL1347
	.4byte	.LVL1356
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1356
	.4byte	.LVL1362
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL1362
	.4byte	.LVL1365
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1365
	.4byte	.LVL1366
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL1366
	.4byte	.LVL1367
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1367
	.4byte	.LFE97
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST332:
	.4byte	.LVL1347
	.4byte	.LVL1354
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1354
	.4byte	.LVL1358
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1358
	.4byte	.LVL1359
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL1359
	.4byte	.LVL1361
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1361
	.4byte	.LVL1362
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL1362
	.4byte	.LVL1367
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1367
	.4byte	.LVL1481
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL1481
	.4byte	.LVL1482
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1482
	.4byte	.LFE97
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST333:
	.4byte	.LVL1348
	.4byte	.LVL1356
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1356
	.4byte	.LVL1362
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1362
	.4byte	.LVL1367
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1367
	.4byte	.LVL1475
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1477
	.4byte	.LVL1483
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST334:
	.4byte	.LVL1361
	.4byte	.LVL1362
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1364
	.4byte	.LVL1366
	.2byte	0x3
	.byte	0x8
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL1367
	.4byte	.LVL1369
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1369
	.4byte	.LVL1424
	.2byte	0x3
	.byte	0x8
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL1428
	.4byte	.LVL1429
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1429
	.4byte	.LVL1430-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1433
	.4byte	.LVL1434
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1434
	.4byte	.LVL1438
	.2byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xac
	.byte	0x1c
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL1438
	.4byte	.LVL1439
	.2byte	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xac
	.byte	0x1c
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	.LVL1439
	.4byte	.LVL1440
	.2byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xac
	.byte	0x1c
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL1442
	.4byte	.LVL1443
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1443
	.4byte	.LVL1444-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x3
	.byte	0x8
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL1478
	.4byte	.LVL1479
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1480
	.4byte	.LVL1482
	.2byte	0x3
	.byte	0x8
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST335:
	.4byte	.LVL1348
	.4byte	.LVL1352
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1352
	.4byte	.LVL1353
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL1353
	.4byte	.LVL1357
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1357
	.4byte	.LVL1359
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL1359
	.4byte	.LVL1380
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1380
	.4byte	.LVL1381
	.2byte	0x3
	.byte	0x9
	.byte	0xf6
	.byte	0x9f
	.4byte	.LVL1381
	.4byte	.LVL1403
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1403
	.4byte	.LVL1404
	.2byte	0x3
	.byte	0x9
	.byte	0xf5
	.byte	0x9f
	.4byte	.LVL1404
	.4byte	.LVL1406
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1406
	.4byte	.LVL1407
	.2byte	0x3
	.byte	0x9
	.byte	0xf4
	.byte	0x9f
	.4byte	.LVL1407
	.4byte	.LVL1409
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1409
	.4byte	.LVL1410
	.2byte	0x3
	.byte	0x9
	.byte	0xf3
	.byte	0x9f
	.4byte	.LVL1410
	.4byte	.LVL1417
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1417
	.4byte	.LVL1418
	.2byte	0x3
	.byte	0x9
	.byte	0xf2
	.byte	0x9f
	.4byte	.LVL1418
	.4byte	.LVL1421
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1421
	.4byte	.LVL1422
	.2byte	0x3
	.byte	0x9
	.byte	0xf1
	.byte	0x9f
	.4byte	.LVL1422
	.4byte	.LVL1426
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1426
	.4byte	.LVL1427
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL1427
	.4byte	.LVL1430
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1430
	.4byte	.LVL1431
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL1431
	.4byte	.LVL1444
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1444
	.4byte	.LVL1445
	.2byte	0x3
	.byte	0x9
	.byte	0xef
	.byte	0x9f
	.4byte	.LVL1445
	.4byte	.LVL1466
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1466
	.4byte	.LVL1468
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1478
	.4byte	.LVL1482
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1482
	.4byte	.LVL1483
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST336:
	.4byte	.LVL1384
	.4byte	.LVL1385
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1385
	.4byte	.LVL1473
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST337:
	.4byte	.LVL1372
	.4byte	.LVL1373
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1373
	.4byte	.LVL1397
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	.LVL1397
	.4byte	.LVL1398
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1398
	.4byte	.LVL1473
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	0
	.4byte	0
.LLST338:
	.4byte	.LVL1389
	.4byte	.LVL1419
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST339:
	.4byte	.LVL1372
	.4byte	.LVL1400
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1401
	.4byte	.LVL1402
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST340:
	.4byte	.LVL1441
	.4byte	.LVL1448
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL1448
	.4byte	.LVL1449
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1449
	.4byte	.LVL1461
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST341:
	.4byte	.LVL1411
	.4byte	.LVL1412
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1412
	.4byte	.LVL1413
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL1413
	.4byte	.LVL1414-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1414-1
	.4byte	.LVL1470
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST342:
	.4byte	.LVL1435
	.4byte	.LVL1436
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1436
	.4byte	.LVL1437
	.2byte	0xb
	.byte	0x73
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST343:
	.4byte	.LVL1383
	.4byte	.LVL1387
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1387
	.4byte	.LVL1473
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST344:
	.4byte	.LVL1392
	.4byte	.LVL1393
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1393
	.4byte	.LVL1396
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL1396
	.4byte	.LVL1398
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1398
	.4byte	.LVL1473
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST345:
	.4byte	.LVL1388
	.4byte	.LVL1391
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1391
	.4byte	.LVL1473
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	0
	.4byte	0
.LLST346:
	.4byte	.LVL1394
	.4byte	.LVL1395
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL1395
	.4byte	.LVL1399
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL1399
	.4byte	.LVL1401
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1401
	.4byte	.LVL1424
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL1424
	.4byte	.LVL1425
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1425
	.4byte	.LVL1473
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL1477
	.4byte	.LVL1478
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST347:
	.4byte	.LVL1349
	.4byte	.LVL1424
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1424
	.4byte	.LVL1468
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1477
	.4byte	.LVL1483
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST348:
	.4byte	.LVL1349
	.4byte	.LVL1415
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1415
	.4byte	.LVL1416
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1416
	.4byte	.LVL1470
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL1477
	.4byte	.LVL1483
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST349:
	.4byte	.LVL1350
	.4byte	.LVL1370
	.2byte	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL1370
	.4byte	.LVL1478
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL1478
	.4byte	.LVL1482
	.2byte	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL1482
	.4byte	.LFE97
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST350:
	.4byte	.LVL1451
	.4byte	.LVL1452
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1452
	.4byte	.LVL1453
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1457
	.4byte	.LVL1459
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST351:
	.4byte	.LVL1450
	.4byte	.LVL1461
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST352:
	.4byte	.LVL1451
	.4byte	.LVL1452
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1452
	.4byte	.LVL1460
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST353:
	.4byte	.LVL1452
	.4byte	.LVL1453
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1453
	.4byte	.LVL1457
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x204
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
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
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0
	.4byte	0
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	0
	.4byte	0
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	0
	.4byte	0
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0
	.4byte	0
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"_on_exit_args_ptr"
.LASF256:
	.string	"dy12"
.LASF225:
	.string	"xDelta"
.LASF165:
	.string	"font"
.LASF213:
	.string	"huffcode"
.LASF381:
	.string	"TFT_setclipwin"
.LASF133:
	.string	"gid_t"
.LASF396:
	.string	"img_ysize"
.LASF373:
	.string	"HSBtoRGB"
.LASF5:
	.string	"__uint8_t"
.LASF423:
	.string	"ILI9488_init"
.LASF171:
	.string	"max_x_size"
.LASF161:
	.string	"_Bool"
.LASF99:
	.string	"_mbstate"
.LASF54:
	.string	"_atexit"
.LASF469:
	.string	"TFT_ORANGE"
.LASF405:
	.string	"tmpc"
.LASF366:
	.string	"tmph"
.LASF312:
	.string	"TFT_drawEllipse"
.LASF419:
	.string	"sc_line"
.LASF498:
	.string	"fwrite"
.LASF338:
	.string	"fend"
.LASF365:
	.string	"tmpw"
.LASF350:
	.string	"color_line"
.LASF309:
	.string	"TFT_fillTriangle"
.LASF356:
	.string	"newX"
.LASF357:
	.string	"newY"
.LASF44:
	.string	"__tm_mon"
.LASF52:
	.string	"_fntypes"
.LASF303:
	.string	"angle"
.LASF331:
	.string	"compile_font_file"
.LASF361:
	.string	"newx"
.LASF66:
	.string	"_inc"
.LASF55:
	.string	"_ind"
.LASF277:
	.string	"read"
.LASF474:
	.string	"MontserratR20"
.LASF158:
	.string	"uint16_t"
.LASF128:
	.string	"time_t"
.LASF192:
	.string	"JDR_INP"
.LASF344:
	.string	"getFontCharacters"
.LASF85:
	.string	"_flags"
.LASF304:
	.string	"length"
.LASF374:
	.string	"_hue"
.LASF73:
	.string	"_cvtlen"
.LASF438:
	.string	"orientation"
.LASF514:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/tft/tft.c"
.LASF242:
	.string	"_drawFastHLine"
.LASF78:
	.string	"_sig_func"
.LASF145:
	.string	"st_size"
.LASF409:
	.string	"disp_ystart"
.LASF468:
	.string	"TFT_WHITE"
.LASF442:
	.string	"font_buffered_char"
.LASF272:
	.string	"load_file_font"
.LASF412:
	.string	"line_buf"
.LASF177:
	.string	"height"
.LASF186:
	.string	"BYTE"
.LASF328:
	.string	"Xpoints"
.LASF98:
	.string	"_lock"
.LASF95:
	.string	"_nbuf"
.LASF284:
	.string	"rect"
.LASF445:
	.string	"dispWin"
.LASF517:
	.string	"getMaxWidthHeight"
.LASF407:
	.string	"disp_xstart"
.LASF406:
	.string	"wtemp"
.LASF461:
	.string	"TFT_DARKGREY"
.LASF267:
	.string	"sslope"
.LASF358:
	.string	"printChar"
.LASF70:
	.string	"_current_locale"
.LASF202:
	.string	"bottom"
.LASF152:
	.string	"st_blksize"
.LASF159:
	.string	"int32_t"
.LASF426:
	.string	"Rcmd2green"
.LASF348:
	.string	"mask"
.LASF109:
	.string	"_add"
.LASF367:
	.string	"TFT_setRotation"
.LASF144:
	.string	"st_rdev"
.LASF129:
	.string	"ino_t"
.LASF480:
	.string	"memcpy"
.LASF143:
	.string	"st_gid"
.LASF508:
	.string	"__errno"
.LASF299:
	.string	"TFT_fillWindow"
.LASF288:
	.string	"dbottom"
.LASF87:
	.string	"_lbfsize"
.LASF141:
	.string	"st_nlink"
.LASF431:
	.string	"TFT_OFFSET"
.LASF322:
	.string	"astart"
.LASF88:
	.string	"_data"
.LASF482:
	.string	"free"
.LASF210:
	.string	"qtid"
.LASF61:
	.string	"_reent"
.LASF289:
	.string	"dest"
.LASF81:
	.string	"__sf"
.LASF59:
	.string	"_base"
.LASF424:
	.string	"STP7735_init"
.LASF487:
	.string	"fread"
.LASF120:
	.string	"_mbtowc_state"
.LASF403:
	.string	"scan_lines"
.LASF421:
	.string	"ST7789V_init"
.LASF280:
	.string	"pminwidth"
.LASF237:
	.string	"tempPtr"
.LASF351:
	.string	"printProportionalChar"
.LASF39:
	.string	"__tm"
.LASF478:
	.string	"disp_select"
.LASF439:
	.string	"font_rotate"
.LASF427:
	.string	"Rcmd2red"
.LASF301:
	.string	"TFT_drawRoundRect"
.LASF47:
	.string	"__tm_yday"
.LASF451:
	.string	"tp_calx"
.LASF452:
	.string	"tp_caly"
.LASF229:
	.string	"tempStrptr"
.LASF21:
	.string	"__uid_t"
.LASF6:
	.string	"__int16_t"
.LASF379:
	.string	"slice"
.LASF307:
	.string	"TFT_drawLineByAngle"
.LASF8:
	.string	"__uint16_t"
.LASF496:
	.string	"strcmp"
.LASF484:
	.string	"sprintf"
.LASF188:
	.string	"WORD"
.LASF212:
	.string	"huffbits"
.LASF359:
	.string	"temp"
.LASF222:
	.string	"charCode"
.LASF207:
	.string	"inbuf"
.LASF113:
	.string	"_result_k"
.LASF370:
	.string	"mode"
.LASF65:
	.string	"_stderr"
.LASF112:
	.string	"_result"
.LASF265:
	.string	"thickness"
.LASF51:
	.string	"_dso_handle"
.LASF355:
	.string	"sin_radian"
.LASF46:
	.string	"__tm_wday"
.LASF274:
	.string	"info"
.LASF48:
	.string	"__tm_isdst"
.LASF411:
	.string	"err_buf"
.LASF515:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/tft"
.LASF334:
	.string	"sourcebuf"
.LASF295:
	.string	"TFT_drawFastHLine"
.LASF372:
	.string	"gamma_curve"
.LASF485:
	.string	"malloc"
.LASF2:
	.string	"unsigned char"
.LASF64:
	.string	"_stdout"
.LASF440:
	.string	"font_transparent"
.LASF460:
	.string	"TFT_LIGHTGREY"
.LASF206:
	.string	"dptr"
.LASF211:
	.string	"nrst"
.LASF392:
	.string	"sz_work"
.LASF125:
	.string	"_mbsrtowcs_state"
.LASF337:
	.string	"rdsize"
.LASF37:
	.string	"_wds"
.LASF491:
	.string	"send_data"
.LASF82:
	.string	"_misc"
.LASF0:
	.string	"float"
.LASF243:
	.string	"_drawLine"
.LASF193:
	.string	"JDR_MEM1"
.LASF194:
	.string	"JDR_MEM2"
.LASF314:
	.string	"ychg"
.LASF329:
	.string	"Ypoints"
.LASF462:
	.string	"TFT_BLUE"
.LASF60:
	.string	"_size"
.LASF463:
	.string	"TFT_GREEN"
.LASF236:
	.string	"delta"
.LASF275:
	.string	"err_msg"
.LASF308:
	.string	"TFT_drawTriangle"
.LASF91:
	.string	"_write"
.LASF175:
	.string	"fhndl"
.LASF282:
	.string	"charwidth"
.LASF130:
	.string	"off_t"
.LASF378:
	.string	"blue"
.LASF511:
	.string	"jd_decomp"
.LASF345:
	.string	"TFT_setFont"
.LASF343:
	.string	"bptr"
.LASF382:
	.string	"set_7seg_font_atrib"
.LASF45:
	.string	"__tm_year"
.LASF108:
	.string	"_mult"
.LASF506:
	.string	"__builtin_puts"
.LASF223:
	.string	"adjYOffset"
.LASF123:
	.string	"_mbrlen_state"
.LASF325:
	.string	"sides"
.LASF470:
	.string	"TFT_GREENYELLOW"
.LASF191:
	.string	"JDR_INTR"
.LASF63:
	.string	"_stdin"
.LASF335:
	.string	"exit"
.LASF172:
	.string	"bitmap"
.LASF249:
	.string	"_fillTriangle"
.LASF170:
	.string	"size"
.LASF136:
	.string	"FILE"
.LASF217:
	.string	"mcubuf"
.LASF394:
	.string	"imgbuf"
.LASF414:
	.string	"scale_buf"
.LASF201:
	.string	"right"
.LASF287:
	.string	"dright"
.LASF283:
	.string	"tjd_output"
.LASF230:
	.string	"_7seg_width"
.LASF18:
	.string	"_off_t"
.LASF417:
	.string	"error"
.LASF15:
	.string	"size_t"
.LASF76:
	.string	"_localtime_buf"
.LASF354:
	.string	"cos_radian"
.LASF28:
	.string	"__count"
.LASF156:
	.string	"uint8_t"
.LASF305:
	.string	"_drawLineByAngle"
.LASF410:
	.string	"disp_yend"
.LASF231:
	.string	"_7seg_height"
.LASF507:
	.string	"disp_spi_transfer_cmd"
.LASF384:
	.string	"TFT_getfontheight"
.LASF74:
	.string	"_cvtbuf"
.LASF446:
	.string	"_angleOffset"
.LASF203:
	.string	"JRECT"
.LASF467:
	.string	"TFT_YELLOW"
.LASF453:
	.string	"TFT_BLACK"
.LASF296:
	.string	"TFT_drawLine"
.LASF316:
	.string	"ryry2"
.LASF26:
	.string	"__wchb"
.LASF124:
	.string	"_mbrtowc_state"
.LASF42:
	.string	"__tm_hour"
.LASF279:
	.string	"first"
.LASF24:
	.string	"wint_t"
.LASF516:
	.string	"TFT_getStringWidth"
.LASF104:
	.string	"_niobs"
.LASF327:
	.string	"fill"
.LASF214:
	.string	"huffdata"
.LASF139:
	.string	"st_ino"
.LASF140:
	.string	"st_mode"
.LASF62:
	.string	"_errno"
.LASF232:
	.string	"_drawPixel"
.LASF43:
	.string	"__tm_mday"
.LASF341:
	.string	"nextline"
.LASF50:
	.string	"_fnargs"
.LASF257:
	.string	"_fillRect"
.LASF224:
	.string	"xOffset"
.LASF510:
	.string	"jd_prepare"
.LASF268:
	.string	"eslope"
.LASF502:
	.string	"_tft_setRotation"
.LASF34:
	.string	"_next"
.LASF83:
	.string	"_signal_buf"
.LASF443:
	.string	"font_line_space"
.LASF387:
	.string	"TFT_saveClipWin"
.LASF89:
	.string	"_cookie"
.LASF458:
	.string	"TFT_PURPLE"
.LASF418:
	.string	"exit1"
.LASF346:
	.string	"font_file"
.LASF163:
	.string	"color_t"
.LASF436:
	.string	"_width"
.LASF477:
	.string	"TFT_pushColorRep"
.LASF486:
	.string	"fclose"
.LASF276:
	.string	"fsize"
.LASF347:
	.string	"char_width"
.LASF167:
	.string	"y_size"
.LASF228:
	.string	"strWidth"
.LASF509:
	.string	"strerror"
.LASF233:
	.string	"_drawFastVLine"
.LASF40:
	.string	"__tm_sec"
.LASF400:
	.string	"img_ylen"
.LASF454:
	.string	"TFT_NAVY"
.LASF49:
	.string	"_on_exit_args"
.LASF385:
	.string	"TFT_clearStringRect"
.LASF166:
	.string	"x_size"
.LASF500:
	.string	"heap_caps_malloc"
.LASF126:
	.string	"_wcrtomb_state"
.LASF142:
	.string	"st_uid"
.LASF395:
	.string	"img_xsize"
.LASF428:
	.string	"Rcmd3"
.LASF227:
	.string	"propFont"
.LASF215:
	.string	"qttbl"
.LASF481:
	.string	"memset"
.LASF320:
	.string	"TFT_drawArc"
.LASF260:
	.string	"barHor"
.LASF155:
	.string	"int8_t"
.LASF415:
	.string	"scale_pix"
.LASF32:
	.string	"__ULong"
.LASF183:
	.string	"JPGIODEV"
.LASF425:
	.string	"STP7735R_init"
.LASF420:
	.string	"sc_col"
.LASF504:
	.string	"puts"
.LASF390:
	.string	"fname"
.LASF117:
	.string	"_strtok_last"
.LASF270:
	.string	"tjd_buf_input"
.LASF380:
	.string	"hue_frac"
.LASF190:
	.string	"JDR_OK"
.LASF27:
	.string	"sizetype"
.LASF107:
	.string	"_seed"
.LASF92:
	.string	"_seek"
.LASF195:
	.string	"JDR_PAR"
.LASF271:
	.string	"buff"
.LASF157:
	.string	"int16_t"
.LASF401:
	.string	"img_pos"
.LASF9:
	.string	"short unsigned int"
.LASF3:
	.string	"signed char"
.LASF402:
	.string	"img_pix_pos"
.LASF150:
	.string	"st_ctime"
.LASF266:
	.string	"start"
.LASF386:
	.string	"TFT_resetclipwin"
.LASF297:
	.string	"TFT_fillRect"
.LASF162:
	.string	"QueueHandle_t"
.LASF247:
	.string	"_drawTriangle"
.LASF286:
	.string	"dtop"
.LASF393:
	.string	"TFT_bmp_image"
.LASF404:
	.string	"rd_len"
.LASF377:
	.string	"green"
.LASF115:
	.string	"_freelist"
.LASF501:
	.string	"disp_spi_transfer_cmd_data"
.LASF258:
	.string	"barVert"
.LASF447:
	.string	"image_debug"
.LASF245:
	.string	"ystep"
.LASF97:
	.string	"_offset"
.LASF58:
	.string	"__sbuf"
.LASF121:
	.string	"_l64a_buf"
.LASF292:
	.string	"TFT_readPixel"
.LASF248:
	.string	"_drawRect"
.LASF174:
	.string	"Font"
.LASF311:
	.string	"TFT_fillCircle"
.LASF187:
	.string	"SHORT"
.LASF77:
	.string	"_asctime_buf"
.LASF25:
	.string	"__wch"
.LASF368:
	.string	"madctl"
.LASF127:
	.string	"_wcsrtombs_state"
.LASF376:
	.string	"_brightness"
.LASF278:
	.string	"numchar"
.LASF17:
	.string	"_LOCK_RECURSIVE_T"
.LASF471:
	.string	"TFT_PINK"
.LASF472:
	.string	"tft_DefaultFont"
.LASF185:
	.string	"UINT"
.LASF19:
	.string	"long int"
.LASF441:
	.string	"font_forceFixed"
.LASF246:
	.string	"dlen"
.LASF119:
	.string	"_wctomb_state"
.LASF234:
	.string	"fillCircleHelper"
.LASF321:
	.string	"fillcolor"
.LASF293:
	.string	"TFT_drawPixel"
.LASF294:
	.string	"TFT_drawFastVLine"
.LASF281:
	.string	"pmaxwidth"
.LASF147:
	.string	"st_spare1"
.LASF149:
	.string	"st_spare2"
.LASF151:
	.string	"st_spare3"
.LASF154:
	.string	"st_spare4"
.LASF105:
	.string	"_iobs"
.LASF67:
	.string	"_emergency"
.LASF352:
	.string	"rotatePropChar"
.LASF448:
	.string	"cfont"
.LASF323:
	.string	"aend"
.LASF434:
	.string	"font_bcd"
.LASF110:
	.string	"_rand_next"
.LASF449:
	.string	"TFT_X"
.LASF450:
	.string	"TFT_Y"
.LASF488:
	.string	"strstr"
.LASF179:
	.string	"bufsize"
.LASF250:
	.string	"last"
.LASF160:
	.string	"uint32_t"
.LASF35:
	.string	"_maxwds"
.LASF391:
	.string	"work"
.LASF182:
	.string	"linbuf_idx"
.LASF221:
	.string	"device"
.LASF499:
	.string	"strtol"
.LASF184:
	.string	"long double"
.LASF433:
	.string	"_arcAngleMax"
.LASF263:
	.string	"_fillArcOffsetted"
.LASF259:
	.string	"outline"
.LASF33:
	.string	"long unsigned int"
.LASF490:
	.string	"wait_trans_finish"
.LASF479:
	.string	"disp_deselect"
.LASF353:
	.string	"radian"
.LASF204:
	.string	"JDEC"
.LASF505:
	.string	"__builtin_strcpy"
.LASF464:
	.string	"TFT_CYAN"
.LASF148:
	.string	"st_mtime"
.LASF16:
	.string	"_lock_t"
.LASF93:
	.string	"_close"
.LASF101:
	.string	"char"
.LASF339:
	.string	"hexstr"
.LASF432:
	.string	"fontChar"
.LASF103:
	.string	"_glue"
.LASF475:
	.string	"MontserratSB24"
.LASF383:
	.string	"TFT_getfontsize"
.LASF20:
	.string	"__dev_t"
.LASF173:
	.string	"color"
.LASF38:
	.string	"_Bigint"
.LASF116:
	.string	"_misc_reent"
.LASF364:
	.string	"TFT_print"
.LASF269:
	.string	"getCharPtr"
.LASF430:
	.string	"userfont"
.LASF473:
	.string	"MontserratEB90"
.LASF79:
	.string	"_atexit0"
.LASF169:
	.string	"numchars"
.LASF495:
	.string	"strlen"
.LASF300:
	.string	"TFT_drawRect"
.LASF360:
	.string	"rotateChar"
.LASF340:
	.string	"lastline"
.LASF244:
	.string	"steep"
.LASF122:
	.string	"_getdate_err"
.LASF330:
	.string	"rads"
.LASF389:
	.string	"TFT_jpg_image"
.LASF492:
	.string	"fseek"
.LASF219:
	.string	"sz_pool"
.LASF429:
	.string	"dispWinTemp"
.LASF332:
	.string	"outfile"
.LASF135:
	.string	"nlink_t"
.LASF457:
	.string	"TFT_MAROON"
.LASF493:
	.string	"readPixel"
.LASF302:
	.string	"TFT_fillRoundRect"
.LASF285:
	.string	"dleft"
.LASF298:
	.string	"TFT_fillScreen"
.LASF96:
	.string	"_blksize"
.LASF94:
	.string	"_ubuf"
.LASF118:
	.string	"_mblen_state"
.LASF80:
	.string	"__sglue"
.LASF333:
	.string	"ffd_out"
.LASF71:
	.string	"__cleanup"
.LASF349:
	.string	"bufPos"
.LASF455:
	.string	"TFT_DARKGREEN"
.LASF23:
	.string	"_fpos_t"
.LASF86:
	.string	"_file"
.LASF164:
	.string	"dispWin_t"
.LASF196:
	.string	"JDR_FMT1"
.LASF197:
	.string	"JDR_FMT2"
.LASF198:
	.string	"JDR_FMT3"
.LASF84:
	.string	"__sFILE"
.LASF238:
	.string	"ddF_x"
.LASF239:
	.string	"ddF_y"
.LASF1:
	.string	"double"
.LASF56:
	.string	"_fns"
.LASF30:
	.string	"_mbstate_t"
.LASF138:
	.string	"st_dev"
.LASF476:
	.string	"drawPixel"
.LASF369:
	.string	"TFT_invertDisplay"
.LASF494:
	.string	"fmodf"
.LASF456:
	.string	"TFT_DARKCYAN"
.LASF209:
	.string	"scale"
.LASF10:
	.string	"__int32_t"
.LASF11:
	.string	"__uint32_t"
.LASF435:
	.string	"spiffs_mutex"
.LASF489:
	.string	"printf"
.LASF326:
	.string	"diameter"
.LASF29:
	.string	"__value"
.LASF262:
	.string	"_draw_ellipse_section"
.LASF53:
	.string	"_is_cxa"
.LASF111:
	.string	"_mprec"
.LASF114:
	.string	"_p5s"
.LASF240:
	.string	"_draw_filled_ellipse_section"
.LASF176:
	.string	"width"
.LASF200:
	.string	"left"
.LASF375:
	.string	"_sat"
.LASF437:
	.string	"_height"
.LASF503:
	.string	"strcpy"
.LASF22:
	.string	"__gid_t"
.LASF134:
	.string	"mode_t"
.LASF413:
	.string	"lb_idx"
.LASF273:
	.string	"fontfile"
.LASF14:
	.string	"long long unsigned int"
.LASF512:
	.string	"memmove"
.LASF168:
	.string	"offset"
.LASF444:
	.string	"text_wrap"
.LASF132:
	.string	"uid_t"
.LASF189:
	.string	"LONG"
.LASF72:
	.string	"_gamma_signgam"
.LASF153:
	.string	"st_blocks"
.LASF178:
	.string	"membuff"
.LASF218:
	.string	"pool"
.LASF459:
	.string	"TFT_OLIVE"
.LASF69:
	.string	"_current_category"
.LASF181:
	.string	"linbuf"
.LASF483:
	.string	"fopen"
.LASF290:
	.string	"tjd_input"
.LASF317:
	.string	"stopx"
.LASF318:
	.string	"stopy"
.LASF336:
	.string	"fbuf"
.LASF313:
	.string	"xchg"
.LASF466:
	.string	"TFT_MAGENTA"
.LASF68:
	.string	"__sdidinit"
.LASF342:
	.string	"numptr"
.LASF199:
	.string	"JRESULT"
.LASF315:
	.string	"rxrx2"
.LASF31:
	.string	"_flock_t"
.LASF388:
	.string	"TFT_restoreClipWin"
.LASF416:
	.string	"npix"
.LASF251:
	.string	"dx01"
.LASF253:
	.string	"dx02"
.LASF497:
	.string	"strchr"
.LASF131:
	.string	"dev_t"
.LASF220:
	.string	"infunc"
.LASF216:
	.string	"workbuf"
.LASF13:
	.string	"long long int"
.LASF100:
	.string	"_flags2"
.LASF310:
	.string	"TFT_drawCircle"
.LASF255:
	.string	"dx12"
.LASF146:
	.string	"st_atime"
.LASF399:
	.string	"img_ystart"
.LASF241:
	.string	"option"
.LASF226:
	.string	"dataPtr"
.LASF397:
	.string	"img_xstart"
.LASF180:
	.string	"bufptr"
.LASF208:
	.string	"dmsk"
.LASF291:
	.string	"TFT_compare_colors"
.LASF422:
	.string	"ILI9341_init"
.LASF363:
	.string	"_draw7seg"
.LASF102:
	.string	"__FILE"
.LASF36:
	.string	"_sign"
.LASF4:
	.string	"__int8_t"
.LASF306:
	.string	"_DrawLineByAngle"
.LASF465:
	.string	"TFT_RED"
.LASF41:
	.string	"__tm_min"
.LASF261:
	.string	"drawCircleHelper"
.LASF12:
	.string	"unsigned int"
.LASF75:
	.string	"_r48"
.LASF371:
	.string	"TFT_setGammaCurve"
.LASF235:
	.string	"cornername"
.LASF319:
	.string	"TFT_fillEllipse"
.LASF513:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"short int"
.LASF90:
	.string	"_read"
.LASF398:
	.string	"img_xlen"
.LASF106:
	.string	"_rand48"
.LASF252:
	.string	"dy01"
.LASF254:
	.string	"dy02"
.LASF205:
	.string	"dctr"
.LASF137:
	.string	"stat"
.LASF408:
	.string	"disp_xend"
.LASF264:
	.string	"radius"
.LASF362:
	.string	"newy"
.LASF324:
	.string	"TFT_drawPolygon"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
