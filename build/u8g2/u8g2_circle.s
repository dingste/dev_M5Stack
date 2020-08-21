	.file	"u8g2_circle.c"
	.text
.Ltext0:
	.section	.text.u8g2_draw_circle_section,"ax",@progbits
	.align	4
	.type	u8g2_draw_circle_section, @function
u8g2_draw_circle_section:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_circle.c"
	.loc 1 44 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 44 0
	extui	a7, a7, 0, 8
	.loc 1 46 0
	bbci	a7, 0, .L2
	.loc 1 48 0
	sub	a12, a6, a4
	add.n	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL1:
	.loc 1 49 0
	sub	a12, a6, a3
	add.n	a11, a5, a4
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL2:
.L2:
	.loc 1 53 0
	bbci	a7, 1, .L3
	.loc 1 55 0
	sub	a12, a6, a4
	sub	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL3:
	.loc 1 56 0
	sub	a12, a6, a3
	sub	a11, a5, a4
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL4:
.L3:
	.loc 1 60 0
	bbci	a7, 3, .L4
	.loc 1 62 0
	add.n	a12, a6, a4
	add.n	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL5:
	.loc 1 63 0
	add.n	a12, a3, a6
	add.n	a11, a5, a4
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL6:
.L4:
	.loc 1 67 0
	bbci	a7, 2, .L1
	.loc 1 69 0
	add.n	a12, a6, a4
	sub	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL7:
	.loc 1 70 0
	add.n	a12, a3, a6
	sub	a11, a5, a4
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL8:
.L1:
	retw.n
.LFE0:
	.size	u8g2_draw_circle_section, .-u8g2_draw_circle_section
	.section	.text.u8g2_draw_ellipse_section,"ax",@progbits
	.align	4
	.type	u8g2_draw_ellipse_section, @function
u8g2_draw_ellipse_section:
.LFB6:
	.loc 1 218 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 218 0
	extui	a7, a7, 0, 8
	.loc 1 220 0
	bbci	a7, 0, .L19
	.loc 1 222 0
	sub	a12, a6, a4
	add.n	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL10:
.L19:
	.loc 1 226 0
	bbci	a7, 1, .L20
	.loc 1 228 0
	sub	a12, a6, a4
	sub	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL11:
.L20:
	.loc 1 232 0
	bbci	a7, 3, .L21
	.loc 1 234 0
	add.n	a12, a6, a4
	add.n	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL12:
.L21:
	.loc 1 238 0
	bbci	a7, 2, .L18
	.loc 1 240 0
	add.n	a12, a6, a4
	sub	a11, a5, a3
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawPixel
.LVL13:
.L18:
	retw.n
.LFE6:
	.size	u8g2_draw_ellipse_section, .-u8g2_draw_ellipse_section
	.section	.text.u8g2_draw_disc_section,"ax",@progbits
	.align	4
	.type	u8g2_draw_disc_section, @function
u8g2_draw_disc_section:
.LFB3:
	.loc 1 130 0
.LVL14:
	entry	sp, 32
.LCFI2:
	.loc 1 130 0
	extui	a7, a7, 0, 8
	.loc 1 132 0
	bbci	a7, 0, .L36
	.loc 1 134 0
	addi.n	a13, a4, 1
	sub	a12, a6, a4
	add.n	a11, a5, a3
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL15:
	.loc 1 135 0
	addi.n	a13, a3, 1
	sub	a12, a6, a3
	add.n	a11, a5, a4
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL16:
.L36:
	.loc 1 139 0
	bbci	a7, 1, .L37
	.loc 1 141 0
	addi.n	a13, a4, 1
	sub	a12, a6, a4
	sub	a11, a5, a3
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL17:
	.loc 1 142 0
	addi.n	a13, a3, 1
	sub	a12, a6, a3
	sub	a11, a5, a4
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL18:
.L37:
	.loc 1 146 0
	bbci	a7, 3, .L38
	.loc 1 148 0
	addi.n	a13, a4, 1
	add.n	a11, a5, a3
	extui	a13, a13, 0, 16
	mov.n	a12, a6
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL19:
	.loc 1 149 0
	addi.n	a13, a3, 1
	add.n	a11, a5, a4
	extui	a13, a13, 0, 16
	mov.n	a12, a6
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL20:
.L38:
	.loc 1 153 0
	bbci	a7, 2, .L35
	.loc 1 155 0
	addi.n	a13, a4, 1
	sub	a11, a5, a3
	extui	a13, a13, 0, 16
	mov.n	a12, a6
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL21:
	.loc 1 156 0
	addi.n	a13, a3, 1
	sub	a11, a5, a4
	extui	a13, a13, 0, 16
	mov.n	a12, a6
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL22:
.L35:
	retw.n
.LFE3:
	.size	u8g2_draw_disc_section, .-u8g2_draw_disc_section
	.section	.text.u8g2_draw_filled_ellipse_section,"ax",@progbits
	.align	4
	.type	u8g2_draw_filled_ellipse_section, @function
u8g2_draw_filled_ellipse_section:
.LFB9:
	.loc 1 351 0
.LVL23:
	entry	sp, 32
.LCFI3:
	.loc 1 351 0
	extui	a7, a7, 0, 8
	.loc 1 353 0
	bbci	a7, 0, .L53
	.loc 1 355 0
	addi.n	a13, a4, 1
	sub	a12, a6, a4
	add.n	a11, a5, a3
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL24:
.L53:
	.loc 1 359 0
	bbci	a7, 1, .L54
	.loc 1 361 0
	addi.n	a13, a4, 1
	sub	a12, a6, a4
	sub	a11, a5, a3
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL25:
.L54:
	.loc 1 365 0
	bbci	a7, 3, .L55
	.loc 1 367 0
	addi.n	a13, a4, 1
	add.n	a11, a5, a3
	extui	a13, a13, 0, 16
	mov.n	a12, a6
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL26:
.L55:
	.loc 1 371 0
	bbci	a7, 2, .L52
	.loc 1 373 0
	addi.n	a13, a4, 1
	sub	a11, a5, a3
	extui	a13, a13, 0, 16
	mov.n	a12, a6
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	u8g2_DrawVLine
.LVL27:
.L52:
	retw.n
.LFE9:
	.size	u8g2_draw_filled_ellipse_section, .-u8g2_draw_filled_ellipse_section
	.section	.text.u8g2_DrawCircle,"ax",@progbits
	.align	4
	.global	u8g2_DrawCircle
	.type	u8g2_DrawCircle, @function
u8g2_DrawCircle:
.LFB2:
	.loc 1 110 0
.LVL28:
	entry	sp, 48
.LCFI4:
	.loc 1 110 0
	extui	a5, a5, 0, 16
	extui	a4, a4, 0, 16
	extui	a3, a3, 0, 16
	.loc 1 114 0
	addi.n	a14, a4, 1
	addi.n	a13, a5, 1
	add.n	a14, a5, a14
	add.n	a13, a3, a13
	sub	a12, a4, a5
	sub	a11, a3, a5
	.loc 1 110 0
	extui	a6, a6, 0, 8
	.loc 1 114 0
	extui	a14, a14, 0, 16
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	.loc 1 110 0
	s32i.n	a6, sp, 0
	.loc 1 114 0
	call8	u8g2_IsIntersection
.LVL29:
	beqz.n	a10, .L69
.LVL30:
.LBB4:
.LBB5:
	.loc 1 83 0
	movi.n	a8, 1
	.loc 1 91 0
	l32i.n	a15, sp, 0
	.loc 1 83 0
	sub	a8, a8, a5
	.loc 1 87 0
	neg	a7, a5
	.loc 1 91 0
	mov.n	a14, a4
	mov.n	a13, a3
	mov.n	a12, a5
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 83 0
	sext	a6, a8, 15
.LVL31:
	.loc 1 87 0
	slli	a7, a7, 1
	.loc 1 91 0
	call8	u8g2_draw_circle_section
.LVL32:
	.loc 1 87 0
	sext	a7, a7, 15
.LVL33:
	.loc 1 88 0
	movi.n	a9, 0
	j	.L71
.LVL34:
.L73:
	.loc 1 95 0
	bltz	a6, .L72
	.loc 1 98 0
	addi.n	a7, a7, 2
.LVL35:
	extui	a10, a7, 0, 16
	.loc 1 97 0
	addi.n	a5, a5, -1
.LVL36:
	.loc 1 99 0
	add.n	a8, a10, a6
	.loc 1 97 0
	extui	a5, a5, 0, 16
.LVL37:
	.loc 1 98 0
	sext	a7, a10, 15
.LVL38:
	.loc 1 99 0
	sext	a6, a8, 15
.LVL39:
.L72:
	.loc 1 101 0
	addi.n	a9, a9, 1
.LVL40:
	extui	a9, a9, 0, 16
.LVL41:
	.loc 1 103 0
	addx2	a8, a9, a6
	.loc 1 105 0
	l32i.n	a15, sp, 0
	.loc 1 103 0
	addi.n	a8, a8, 1
	.loc 1 105 0
	mov.n	a11, a9
	mov.n	a14, a4
	mov.n	a13, a3
	mov.n	a12, a5
	mov.n	a10, a2
	s32i.n	a9, sp, 4
	.loc 1 103 0
	sext	a6, a8, 15
.LVL42:
	.loc 1 105 0
	call8	u8g2_draw_circle_section
.LVL43:
	l32i.n	a9, sp, 4
.LVL44:
.L71:
	.loc 1 93 0
	bltu	a9, a5, .L73
.LVL45:
.L69:
	retw.n
.LBE5:
.LBE4:
.LFE2:
	.size	u8g2_DrawCircle, .-u8g2_DrawCircle
	.section	.text.u8g2_DrawDisc,"ax",@progbits
	.align	4
	.global	u8g2_DrawDisc
	.type	u8g2_DrawDisc, @function
u8g2_DrawDisc:
.LFB5:
	.loc 1 196 0
.LVL46:
	entry	sp, 48
.LCFI5:
	.loc 1 196 0
	extui	a5, a5, 0, 16
	extui	a4, a4, 0, 16
	extui	a3, a3, 0, 16
	.loc 1 200 0
	addi.n	a14, a4, 1
	addi.n	a13, a5, 1
	add.n	a14, a5, a14
	add.n	a13, a3, a13
	sub	a12, a4, a5
	sub	a11, a3, a5
	.loc 1 196 0
	extui	a6, a6, 0, 8
	.loc 1 200 0
	extui	a14, a14, 0, 16
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	.loc 1 196 0
	s32i.n	a6, sp, 0
	.loc 1 200 0
	call8	u8g2_IsIntersection
.LVL47:
	beqz.n	a10, .L75
.LVL48:
.LBB8:
.LBB9:
	.loc 1 169 0
	movi.n	a8, 1
	.loc 1 177 0
	l32i.n	a15, sp, 0
	.loc 1 169 0
	sub	a8, a8, a5
	.loc 1 173 0
	neg	a7, a5
	.loc 1 177 0
	mov.n	a14, a4
	mov.n	a13, a3
	mov.n	a12, a5
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 169 0
	sext	a6, a8, 15
.LVL49:
	.loc 1 173 0
	slli	a7, a7, 1
	.loc 1 177 0
	call8	u8g2_draw_disc_section
.LVL50:
	.loc 1 173 0
	sext	a7, a7, 15
.LVL51:
	.loc 1 174 0
	movi.n	a9, 0
	j	.L77
.LVL52:
.L79:
	.loc 1 181 0
	bltz	a6, .L78
	.loc 1 184 0
	addi.n	a7, a7, 2
.LVL53:
	extui	a10, a7, 0, 16
	.loc 1 183 0
	addi.n	a5, a5, -1
.LVL54:
	.loc 1 185 0
	add.n	a8, a10, a6
	.loc 1 183 0
	extui	a5, a5, 0, 16
.LVL55:
	.loc 1 184 0
	sext	a7, a10, 15
.LVL56:
	.loc 1 185 0
	sext	a6, a8, 15
.LVL57:
.L78:
	.loc 1 187 0
	addi.n	a9, a9, 1
.LVL58:
	extui	a9, a9, 0, 16
.LVL59:
	.loc 1 189 0
	addx2	a8, a9, a6
	.loc 1 191 0
	l32i.n	a15, sp, 0
	.loc 1 189 0
	addi.n	a8, a8, 1
	.loc 1 191 0
	mov.n	a11, a9
	mov.n	a14, a4
	mov.n	a13, a3
	mov.n	a12, a5
	mov.n	a10, a2
	s32i.n	a9, sp, 4
	.loc 1 189 0
	sext	a6, a8, 15
.LVL60:
	.loc 1 191 0
	call8	u8g2_draw_disc_section
.LVL61:
	l32i.n	a9, sp, 4
.LVL62:
.L77:
	.loc 1 179 0
	bltu	a9, a5, .L79
.LVL63:
.L75:
	retw.n
.LBE9:
.LBE8:
.LFE5:
	.size	u8g2_DrawDisc, .-u8g2_DrawDisc
	.section	.text.u8g2_DrawEllipse,"ax",@progbits
	.align	4
	.global	u8g2_DrawEllipse
	.type	u8g2_DrawEllipse, @function
u8g2_DrawEllipse:
.LFB8:
	.loc 1 334 0
.LVL64:
	entry	sp, 80
.LCFI6:
	.loc 1 334 0
	extui	a5, a5, 0, 16
	extui	a6, a6, 0, 16
	extui	a3, a3, 0, 16
	s32i.n	a2, sp, 16
	extui	a4, a4, 0, 16
	.loc 1 338 0
	addi.n	a14, a6, 1
	addi.n	a13, a5, 1
	add.n	a14, a4, a14
	add.n	a13, a3, a13
	sub	a12, a4, a6
	sub	a11, a3, a5
	l32i.n	a10, sp, 16
	.loc 1 334 0
	extui	a2, a7, 0, 8
.LVL65:
	.loc 1 338 0
	extui	a14, a14, 0, 16
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	.loc 1 334 0
	s32i.n	a3, sp, 8
	s32i.n	a2, sp, 32
	.loc 1 338 0
	call8	u8g2_IsIntersection
.LVL66:
	beqz.n	a10, .L81
.LVL67:
.LBB12:
.LBB13:
	.loc 1 254 0
	mull	a3, a5, a5
.LVL68:
	.loc 1 258 0
	mull	a2, a6, a6
	.loc 1 265 0
	movi.n	a8, 1
	sub	a8, a8, a5
	.loc 1 255 0
	slli	a9, a3, 1
	.loc 1 254 0
	s32i.n	a3, sp, 24
	.loc 1 266 0
	sub	a8, a8, a5
	.loc 1 259 0
	slli	a3, a2, 1
	.loc 1 255 0
	s32i.n	a9, sp, 0
	.loc 1 267 0
	mull	a8, a6, a8
	.loc 1 276 0
	mull	a9, a5, a3
	.loc 1 258 0
	s32i.n	a2, sp, 28
	.loc 1 277 0
	movi.n	a2, 0
	.loc 1 259 0
	s32i.n	a3, sp, 4
	.loc 1 253 0
	s32i.n	a5, sp, 20
.LVL69:
	.loc 1 268 0
	mull	a8, a6, a8
.LVL70:
	.loc 1 276 0
	s32i.n	a9, sp, 12
.LVL71:
	.loc 1 273 0
	mov.n	a3, a2
.LVL72:
	.loc 1 262 0
	mov.n	a7, a2
.LVL73:
	j	.L83
.LVL74:
.L85:
	.loc 1 281 0
	l32i.n	a10, sp, 16
.LVL75:
	l32i.n	a15, sp, 32
	l32i.n	a13, sp, 8
	mov.n	a12, a7
	mov.n	a14, a4
	mov.n	a11, a5
	s32i.n	a8, sp, 36
	s32i.n	a9, sp, 40
	call8	u8g2_draw_ellipse_section
.LVL76:
	.loc 1 284 0
	l32i.n	a9, sp, 40
	.loc 1 286 0
	l32i.n	a8, sp, 36
	.loc 1 283 0
	l32i.n	a10, sp, 0
	.loc 1 284 0
	add.n	a3, a3, a9
.LVL77:
	.loc 1 282 0
	addi.n	a7, a7, 1
.LVL78:
	.loc 1 286 0
	addx2	a9, a3, a8
	.loc 1 282 0
	extui	a7, a7, 0, 16
.LVL79:
	.loc 1 283 0
	add.n	a2, a2, a10
.LVL80:
	.loc 1 286 0
	blti	a9, 1, .L83
	.loc 1 289 0
	l32i.n	a11, sp, 12
	l32i.n	a10, sp, 4
	.loc 1 288 0
	addi.n	a5, a5, -1
.LVL81:
	.loc 1 289 0
	sub	a11, a11, a10
	.loc 1 288 0
	extui	a5, a5, 0, 16
.LVL82:
	.loc 1 289 0
	s32i.n	a11, sp, 12
.LVL83:
	.loc 1 290 0
	sub	a3, a9, a3
.LVL84:
	.loc 1 291 0
	add.n	a8, a8, a10
.LVL85:
.L83:
	l32i.n	a11, sp, 24
	.loc 1 279 0
	l32i.n	a10, sp, 12
	add.n	a9, a11, a2
.LVL86:
	bge	a10, a2, .L85
.LVL87:
	.loc 1 302 0
	movi.n	a2, 1
.LVL88:
	.loc 1 304 0
	l32i.n	a3, sp, 20
.LVL89:
	.loc 1 302 0
	sub	a2, a2, a6
.LVL90:
	.loc 1 303 0
	sub	a2, a2, a6
.LVL91:
	.loc 1 304 0
	mull	a2, a3, a2
.LVL92:
	.loc 1 312 0
	l32i.n	a9, sp, 0
	.loc 1 305 0
	mull	a2, a3, a2
.LVL93:
	.loc 1 309 0
	movi.n	a3, 0
	.loc 1 312 0
	mull	a8, a9, a6
.LVL94:
	.loc 1 307 0
	mov.n	a7, a3
	.loc 1 295 0
	mov.n	a5, a3
	j	.L86
.LVL95:
.L88:
	.loc 1 317 0
	l32i.n	a10, sp, 16
	l32i.n	a15, sp, 32
	l32i.n	a13, sp, 8
	mov.n	a11, a5
	mov.n	a14, a4
	mov.n	a12, a6
	s32i.n	a8, sp, 36
	s32i.n	a9, sp, 40
	call8	u8g2_draw_ellipse_section
.LVL96:
	.loc 1 320 0
	l32i.n	a9, sp, 40
	.loc 1 319 0
	l32i.n	a10, sp, 4
	.loc 1 320 0
	add.n	a7, a7, a9
.LVL97:
	.loc 1 318 0
	addi.n	a5, a5, 1
.LVL98:
	.loc 1 322 0
	addx2	a9, a7, a2
	.loc 1 318 0
	extui	a5, a5, 0, 16
.LVL99:
	.loc 1 319 0
	add.n	a3, a3, a10
.LVL100:
	.loc 1 322 0
	l32i.n	a8, sp, 36
	blti	a9, 1, .L86
	.loc 1 325 0
	l32i.n	a11, sp, 0
	.loc 1 324 0
	addi.n	a6, a6, -1
.LVL101:
	extui	a6, a6, 0, 16
.LVL102:
	.loc 1 325 0
	sub	a8, a8, a11
.LVL103:
	.loc 1 326 0
	sub	a7, a9, a7
.LVL104:
	.loc 1 327 0
	add.n	a2, a2, a11
.LVL105:
.L86:
	l32i.n	a10, sp, 28
	add.n	a9, a10, a3
.LVL106:
	.loc 1 315 0
	bge	a8, a3, .L88
.LVL107:
.L81:
	retw.n
.LBE13:
.LBE12:
.LFE8:
	.size	u8g2_DrawEllipse, .-u8g2_DrawEllipse
	.section	.text.u8g2_DrawFilledEllipse,"ax",@progbits
	.align	4
	.global	u8g2_DrawFilledEllipse
	.type	u8g2_DrawFilledEllipse, @function
u8g2_DrawFilledEllipse:
.LFB11:
	.loc 1 467 0
.LVL108:
	entry	sp, 80
.LCFI7:
	.loc 1 467 0
	extui	a5, a5, 0, 16
	extui	a6, a6, 0, 16
	extui	a3, a3, 0, 16
	s32i.n	a2, sp, 16
	extui	a4, a4, 0, 16
	.loc 1 471 0
	addi.n	a14, a6, 1
	addi.n	a13, a5, 1
	add.n	a14, a4, a14
	add.n	a13, a3, a13
	sub	a12, a4, a6
	sub	a11, a3, a5
	l32i.n	a10, sp, 16
	.loc 1 467 0
	extui	a2, a7, 0, 8
.LVL109:
	.loc 1 471 0
	extui	a14, a14, 0, 16
	extui	a13, a13, 0, 16
	extui	a12, a12, 0, 16
	extui	a11, a11, 0, 16
	.loc 1 467 0
	s32i.n	a3, sp, 8
	s32i.n	a2, sp, 32
	.loc 1 471 0
	call8	u8g2_IsIntersection
.LVL110:
	beqz.n	a10, .L90
.LVL111:
.LBB16:
.LBB17:
	.loc 1 387 0
	mull	a3, a5, a5
.LVL112:
	.loc 1 391 0
	mull	a2, a6, a6
	.loc 1 398 0
	movi.n	a8, 1
	sub	a8, a8, a5
	.loc 1 388 0
	slli	a9, a3, 1
	.loc 1 387 0
	s32i.n	a3, sp, 24
	.loc 1 399 0
	sub	a8, a8, a5
	.loc 1 392 0
	slli	a3, a2, 1
	.loc 1 388 0
	s32i.n	a9, sp, 0
	.loc 1 400 0
	mull	a8, a6, a8
	.loc 1 409 0
	mull	a9, a5, a3
	.loc 1 391 0
	s32i.n	a2, sp, 28
	.loc 1 410 0
	movi.n	a2, 0
	.loc 1 392 0
	s32i.n	a3, sp, 4
	.loc 1 386 0
	s32i.n	a5, sp, 20
.LVL113:
	.loc 1 401 0
	mull	a8, a6, a8
.LVL114:
	.loc 1 409 0
	s32i.n	a9, sp, 12
.LVL115:
	.loc 1 406 0
	mov.n	a3, a2
.LVL116:
	.loc 1 395 0
	mov.n	a7, a2
.LVL117:
	j	.L92
.LVL118:
.L94:
	.loc 1 414 0
	l32i.n	a10, sp, 16
.LVL119:
	l32i.n	a15, sp, 32
	l32i.n	a13, sp, 8
	mov.n	a12, a7
	mov.n	a14, a4
	mov.n	a11, a5
	s32i.n	a8, sp, 36
	s32i.n	a9, sp, 40
	call8	u8g2_draw_filled_ellipse_section
.LVL120:
	.loc 1 417 0
	l32i.n	a9, sp, 40
	.loc 1 419 0
	l32i.n	a8, sp, 36
	.loc 1 416 0
	l32i.n	a10, sp, 0
	.loc 1 417 0
	add.n	a3, a3, a9
.LVL121:
	.loc 1 415 0
	addi.n	a7, a7, 1
.LVL122:
	.loc 1 419 0
	addx2	a9, a3, a8
	.loc 1 415 0
	extui	a7, a7, 0, 16
.LVL123:
	.loc 1 416 0
	add.n	a2, a2, a10
.LVL124:
	.loc 1 419 0
	blti	a9, 1, .L92
	.loc 1 422 0
	l32i.n	a11, sp, 12
	l32i.n	a10, sp, 4
	.loc 1 421 0
	addi.n	a5, a5, -1
.LVL125:
	.loc 1 422 0
	sub	a11, a11, a10
	.loc 1 421 0
	extui	a5, a5, 0, 16
.LVL126:
	.loc 1 422 0
	s32i.n	a11, sp, 12
.LVL127:
	.loc 1 423 0
	sub	a3, a9, a3
.LVL128:
	.loc 1 424 0
	add.n	a8, a8, a10
.LVL129:
.L92:
	l32i.n	a11, sp, 24
	.loc 1 412 0
	l32i.n	a10, sp, 12
	add.n	a9, a11, a2
.LVL130:
	bge	a10, a2, .L94
.LVL131:
	.loc 1 435 0
	movi.n	a2, 1
.LVL132:
	.loc 1 437 0
	l32i.n	a3, sp, 20
.LVL133:
	.loc 1 435 0
	sub	a2, a2, a6
.LVL134:
	.loc 1 436 0
	sub	a2, a2, a6
.LVL135:
	.loc 1 437 0
	mull	a2, a3, a2
.LVL136:
	.loc 1 445 0
	l32i.n	a9, sp, 0
	.loc 1 438 0
	mull	a2, a3, a2
.LVL137:
	.loc 1 442 0
	movi.n	a3, 0
	.loc 1 445 0
	mull	a8, a9, a6
.LVL138:
	.loc 1 440 0
	mov.n	a7, a3
	.loc 1 428 0
	mov.n	a5, a3
	j	.L95
.LVL139:
.L97:
	.loc 1 450 0
	l32i.n	a10, sp, 16
	l32i.n	a15, sp, 32
	l32i.n	a13, sp, 8
	mov.n	a11, a5
	mov.n	a14, a4
	mov.n	a12, a6
	s32i.n	a8, sp, 36
	s32i.n	a9, sp, 40
	call8	u8g2_draw_filled_ellipse_section
.LVL140:
	.loc 1 453 0
	l32i.n	a9, sp, 40
	.loc 1 452 0
	l32i.n	a10, sp, 4
	.loc 1 453 0
	add.n	a7, a7, a9
.LVL141:
	.loc 1 451 0
	addi.n	a5, a5, 1
.LVL142:
	.loc 1 455 0
	addx2	a9, a7, a2
	.loc 1 451 0
	extui	a5, a5, 0, 16
.LVL143:
	.loc 1 452 0
	add.n	a3, a3, a10
.LVL144:
	.loc 1 455 0
	l32i.n	a8, sp, 36
	blti	a9, 1, .L95
	.loc 1 458 0
	l32i.n	a11, sp, 0
	.loc 1 457 0
	addi.n	a6, a6, -1
.LVL145:
	extui	a6, a6, 0, 16
.LVL146:
	.loc 1 458 0
	sub	a8, a8, a11
.LVL147:
	.loc 1 459 0
	sub	a7, a9, a7
.LVL148:
	.loc 1 460 0
	add.n	a2, a2, a11
.LVL149:
.L95:
	l32i.n	a10, sp, 28
	add.n	a9, a10, a3
.LVL150:
	.loc 1 448 0
	bge	a8, a3, .L97
.LVL151:
.L90:
	retw.n
.LBE17:
.LBE16:
.LFE11:
	.size	u8g2_DrawFilledEllipse, .-u8g2_DrawFilledEllipse
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI6-.LFB8
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI7-.LFB11
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.file 5 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16c6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0xc
	.4byte	.LASF167
	.4byte	.LASF168
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x19
	.4byte	0x78
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x20
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0xc3
	.4byte	0xee
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.4byte	0x1f3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x148
	.4byte	0x358
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x149
	.4byte	0x32d
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2f8
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2f8
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2f8
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2f8
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x14e
	.4byte	0xd6
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x14f
	.4byte	0x363
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x150
	.4byte	0xc0
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x151
	.4byte	0xaa
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x152
	.4byte	0xaa
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x153
	.4byte	0xaa
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x156
	.4byte	0xaa
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x158
	.4byte	0xaa
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x159
	.4byte	0xaa
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x15a
	.4byte	0xaa
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x15b
	.4byte	0xaa
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x15c
	.4byte	0xaa
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x15d
	.4byte	0xaa
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x4
	.byte	0xc4
	.4byte	0x1fe
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.4byte	0x2f8
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xe1
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xe2
	.4byte	0xaa
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xe4
	.4byte	0xaa
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0xe5
	.4byte	0xaa
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0xe6
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.byte	0xe7
	.4byte	0xaa
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.byte	0xee
	.4byte	0xaa
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.byte	0xf2
	.4byte	0xaa
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.byte	0xf5
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.byte	0xff
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x102
	.4byte	0xaa
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x108
	.4byte	0xaa
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x10a
	.4byte	0xaa
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x10d
	.4byte	0xaa
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x10e
	.4byte	0xaa
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x110
	.4byte	0xaa
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x111
	.4byte	0xaa
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x119
	.4byte	0xc0
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x11a
	.4byte	0xc0
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc7
	.4byte	0x303
	.uleb128 0xa
	.byte	0x4
	.4byte	0x309
	.uleb128 0xb
	.4byte	0xaa
	.4byte	0x327
	.uleb128 0xc
	.4byte	0x327
	.uleb128 0xc
	.4byte	0xaa
	.uleb128 0xc
	.4byte	0xaa
	.uleb128 0xc
	.4byte	0xe1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe3
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x4
	.byte	0xc8
	.4byte	0x338
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33e
	.uleb128 0xb
	.4byte	0xc0
	.4byte	0x352
	.uleb128 0xc
	.4byte	0x327
	.uleb128 0xc
	.4byte	0xaa
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x35e
	.uleb128 0xd
	.4byte	0x1f3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x369
	.uleb128 0xd
	.4byte	0xaa
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x5
	.byte	0xb2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x5
	.byte	0xb3
	.4byte	0xb5
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x5
	.byte	0xb4
	.4byte	0xcb
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x5
	.byte	0xbc
	.4byte	0x39a
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x94
	.byte	0x5
	.2byte	0x11b
	.4byte	0x554
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x11d
	.4byte	0xe3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x11e
	.4byte	0x5f1
	.byte	0x2c
	.uleb128 0xe
	.string	"cb"
	.byte	0x5
	.2byte	0x11f
	.4byte	0x7cb
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x122
	.4byte	0x352
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x123
	.4byte	0xaa
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x124
	.4byte	0xaa
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x127
	.4byte	0x36e
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x128
	.4byte	0x36e
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x129
	.4byte	0x36e
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x12f
	.4byte	0x36e
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x130
	.4byte	0x36e
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x133
	.4byte	0x36e
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x134
	.4byte	0x36e
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x139
	.4byte	0x36e
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x13a
	.4byte	0x36e
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x13b
	.4byte	0x36e
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x13c
	.4byte	0x36e
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x140
	.4byte	0x36e
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x141
	.4byte	0x36e
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x142
	.4byte	0x36e
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x143
	.4byte	0x36e
	.byte	0x56
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x148
	.4byte	0x363
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x14c
	.4byte	0x7aa
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x14d
	.4byte	0x79e
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x14e
	.4byte	0x6f9
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x152
	.4byte	0xaa
	.byte	0x8c
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x155
	.4byte	0xaa
	.byte	0x8d
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x156
	.4byte	0x9f
	.byte	0x8e
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x157
	.4byte	0x9f
	.byte	0x8f
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x159
	.4byte	0x9f
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x15b
	.4byte	0xaa
	.byte	0x91
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x15d
	.4byte	0xaa
	.byte	0x92
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x161
	.4byte	0xaa
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x5
	.byte	0xbd
	.4byte	0x55f
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0xc
	.byte	0x5
	.2byte	0x111
	.4byte	0x594
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x113
	.4byte	0x594
	.byte	0
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x114
	.4byte	0x5b6
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x115
	.4byte	0x5c1
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x5
	.byte	0xbf
	.4byte	0x59f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5a5
	.uleb128 0xf
	.4byte	0x5b0
	.uleb128 0xc
	.4byte	0x5b0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x38f
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x5
	.byte	0xc0
	.4byte	0x59f
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x5
	.byte	0xc1
	.4byte	0x5cc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5d2
	.uleb128 0xf
	.4byte	0x5f1
	.uleb128 0xc
	.4byte	0x5b0
	.uleb128 0xc
	.4byte	0x36e
	.uleb128 0xc
	.4byte	0x36e
	.uleb128 0xc
	.4byte	0x36e
	.uleb128 0xc
	.4byte	0xaa
	.byte	0
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x5
	.byte	0xc2
	.4byte	0x5cc
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x18
	.byte	0x5
	.byte	0xc8
	.4byte	0x6f9
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.byte	0xcb
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x5
	.byte	0xcc
	.4byte	0xaa
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x5
	.byte	0xcd
	.4byte	0xaa
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x5
	.byte	0xce
	.4byte	0xaa
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x5
	.byte	0xd1
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x5
	.byte	0xd2
	.4byte	0xaa
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x5
	.byte	0xd3
	.4byte	0xaa
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.byte	0xd4
	.4byte	0xaa
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x5
	.byte	0xd5
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x5
	.byte	0xd8
	.4byte	0x9f
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x5
	.byte	0xd9
	.4byte	0x9f
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0xda
	.4byte	0x9f
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x5
	.byte	0xdb
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x5
	.byte	0xde
	.4byte	0x9f
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x5
	.byte	0xdf
	.4byte	0x9f
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x5
	.byte	0xe0
	.4byte	0x9f
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x5
	.byte	0xe1
	.4byte	0x9f
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x5
	.byte	0xe4
	.4byte	0xc0
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x5
	.byte	0xe5
	.4byte	0xc0
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.byte	0xe9
	.4byte	0xc0
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x5
	.byte	0xec
	.4byte	0x5fc
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x14
	.byte	0x5
	.byte	0xef
	.4byte	0x79e
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x5
	.byte	0xf1
	.4byte	0x363
	.byte	0
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x5
	.byte	0xf3
	.4byte	0x36e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x5
	.byte	0xf4
	.4byte	0x36e
	.byte	0x6
	.uleb128 0x10
	.string	"x"
	.byte	0x5
	.byte	0xf6
	.4byte	0x9f
	.byte	0x8
	.uleb128 0x10
	.string	"y"
	.byte	0x5
	.byte	0xf7
	.4byte	0x9f
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x5
	.byte	0xf8
	.4byte	0x9f
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x5
	.byte	0xf9
	.4byte	0x9f
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x5
	.byte	0xfb
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x5
	.byte	0xfc
	.4byte	0xaa
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x5
	.byte	0xfd
	.4byte	0xaa
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x5
	.byte	0xfe
	.4byte	0xaa
	.byte	0xf
	.uleb128 0xe
	.string	"dir"
	.byte	0x5
	.2byte	0x100
	.4byte	0xaa
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x5
	.2byte	0x103
	.4byte	0x704
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x5
	.2byte	0x118
	.4byte	0x7b6
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7bc
	.uleb128 0xb
	.4byte	0x36e
	.4byte	0x7cb
	.uleb128 0xc
	.4byte	0x5b0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7d1
	.uleb128 0xd
	.4byte	0x554
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a0
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.byte	0x2b
	.4byte	0x5b0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x2b
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"y"
	.byte	0x1
	.byte	0x2b
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"x0"
	.byte	0x1
	.byte	0x2b
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"y0"
	.byte	0x1
	.byte	0x2b
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0x2b
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x16a5
	.4byte	0x861
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x16a5
	.4byte	0x88f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0x16a5
	.4byte	0x8bd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x16a5
	.4byte	0x8eb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x16a5
	.4byte	0x919
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x16a5
	.4byte	0x947
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x16a5
	.4byte	0x975
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x16a5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0x1
	.byte	0xd9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab2
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.byte	0xd9
	.4byte	0x5b0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0xd9
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"y"
	.byte	0x1
	.byte	0xd9
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"x0"
	.byte	0x1
	.byte	0xd9
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"y0"
	.byte	0x1
	.byte	0xd9
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0xd9
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x16a5
	.4byte	0xa2b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x16a5
	.4byte	0xa59
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x16a5
	.4byte	0xa87
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL13
	.4byte	0x16a5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0x1
	.byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb0
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.byte	0x81
	.4byte	0x5b0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x81
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"y"
	.byte	0x1
	.byte	0x81
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"x0"
	.byte	0x1
	.byte	0x81
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"y0"
	.byte	0x1
	.byte	0x81
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0x81
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x16b1
	.4byte	0xb47
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0x16b1
	.4byte	0xb7f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0x16b1
	.4byte	0xbb7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0x16b1
	.4byte	0xbef
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0x16b1
	.4byte	0xc20
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0x16b1
	.4byte	0xc51
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0x16b1
	.4byte	0xc82
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0x16b1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x73
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x15e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde3
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x15e
	.4byte	0x5b0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"y"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"x0"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"y0"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x15e
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LVL24
	.4byte	0x16b1
	.4byte	0xd4c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0x16b1
	.4byte	0xd84
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0x16b1
	.4byte	0xdb5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0x16b1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	0xe56
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x4a
	.4byte	0x5b0
	.uleb128 0x1d
	.string	"x0"
	.byte	0x1
	.byte	0x4a
	.4byte	0x36e
	.uleb128 0x1d
	.string	"y0"
	.byte	0x1
	.byte	0x4a
	.4byte	0x36e
	.uleb128 0x1d
	.string	"rad"
	.byte	0x1
	.byte	0x4a
	.4byte	0x36e
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.byte	0x4a
	.4byte	0xaa
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.byte	0x4c
	.4byte	0x379
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.byte	0x4d
	.4byte	0x379
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.byte	0x4e
	.4byte	0x379
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0x4f
	.4byte	0x36e
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.byte	0x50
	.4byte	0x36e
	.byte	0
	.uleb128 0x20
	.4byte	.LASF151
	.byte	0x1
	.byte	0x6d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfca
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.byte	0x6d
	.4byte	0x5b0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"x0"
	.byte	0x1
	.byte	0x6d
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"y0"
	.byte	0x1
	.byte	0x6d
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"rad"
	.byte	0x1
	.byte	0x6d
	.4byte	0x36e
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x1
	.byte	0x6d
	.4byte	0xaa
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	0xde3
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x79
	.4byte	0xf81
	.uleb128 0x24
	.4byte	0xe19
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	0xe0e
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	0xe04
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	0xdfa
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	0xdef
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x26
	.4byte	0xe24
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	0xe2d
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	0xe38
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	0xe43
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	0xe4c
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x7d6
	.4byte	0xf56
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0x7d6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0x16bd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0xb
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	0x103d
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x1
	.byte	0xa0
	.4byte	0x5b0
	.uleb128 0x1d
	.string	"x0"
	.byte	0x1
	.byte	0xa0
	.4byte	0x36e
	.uleb128 0x1d
	.string	"y0"
	.byte	0x1
	.byte	0xa0
	.4byte	0x36e
	.uleb128 0x1d
	.string	"rad"
	.byte	0x1
	.byte	0xa0
	.4byte	0x36e
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.byte	0xa0
	.4byte	0xaa
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.byte	0xa2
	.4byte	0x379
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.byte	0xa3
	.4byte	0x379
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.byte	0xa4
	.4byte	0x379
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0xa5
	.4byte	0x36e
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.byte	0xa6
	.4byte	0x36e
	.byte	0
	.uleb128 0x20
	.4byte	.LASF152
	.byte	0x1
	.byte	0xc3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b1
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.byte	0xc3
	.4byte	0x5b0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"x0"
	.byte	0x1
	.byte	0xc3
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"y0"
	.byte	0x1
	.byte	0xc3
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"rad"
	.byte	0x1
	.byte	0xc3
	.4byte	0x36e
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x1
	.byte	0xc3
	.4byte	0xaa
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	0xfca
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xce
	.4byte	0x1168
	.uleb128 0x24
	.4byte	0x1000
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	0xff5
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	0xfeb
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	0xfe1
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	0xfd6
	.4byte	.LLST18
	.uleb128 0x25
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x26
	.4byte	0x100b
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	0x1014
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	0x101f
	.4byte	.LLST21
	.uleb128 0x26
	.4byte	0x102a
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	0x1033
	.4byte	.LLST23
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0xab2
	.4byte	0x113d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0xab2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0x16bd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0xb
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	0x125b
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x1
	.byte	0xf4
	.4byte	0x5b0
	.uleb128 0x1d
	.string	"x0"
	.byte	0x1
	.byte	0xf4
	.4byte	0x36e
	.uleb128 0x1d
	.string	"y0"
	.byte	0x1
	.byte	0xf4
	.4byte	0x36e
	.uleb128 0x1d
	.string	"rx"
	.byte	0x1
	.byte	0xf4
	.4byte	0x36e
	.uleb128 0x1d
	.string	"ry"
	.byte	0x1
	.byte	0xf4
	.4byte	0x36e
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.byte	0xf4
	.4byte	0xaa
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0xf6
	.4byte	0x36e
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.byte	0xf6
	.4byte	0x36e
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x1
	.byte	0xf7
	.4byte	0x384
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x1
	.byte	0xf7
	.4byte	0x384
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.byte	0xf8
	.4byte	0x384
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.byte	0xf9
	.4byte	0x384
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.byte	0xfa
	.4byte	0x384
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x1
	.byte	0xfb
	.4byte	0x384
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.byte	0xfb
	.4byte	0x384
	.byte	0
	.uleb128 0x27
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x14d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1423
	.uleb128 0x28
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x14d
	.4byte	0x5b0
	.4byte	.LLST24
	.uleb128 0x29
	.string	"x0"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x36e
	.4byte	.LLST25
	.uleb128 0x1a
	.string	"y0"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.string	"rx"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x36e
	.4byte	.LLST26
	.uleb128 0x29
	.string	"ry"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x36e
	.4byte	.LLST27
	.uleb128 0x28
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x14d
	.4byte	0xaa
	.4byte	.LLST28
	.uleb128 0x2a
	.4byte	0x11b1
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x157
	.4byte	0x13d9
	.uleb128 0x24
	.4byte	0x11f0
	.4byte	.LLST29
	.uleb128 0x24
	.4byte	0x11e6
	.4byte	.LLST30
	.uleb128 0x24
	.4byte	0x11dc
	.4byte	.LLST31
	.uleb128 0x24
	.4byte	0x11d2
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	0x11c8
	.4byte	.LLST33
	.uleb128 0x24
	.4byte	0x11bd
	.4byte	.LLST34
	.uleb128 0x25
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x26
	.4byte	0x11fb
	.4byte	.LLST35
	.uleb128 0x26
	.4byte	0x1204
	.4byte	.LLST36
	.uleb128 0x26
	.4byte	0x120d
	.4byte	.LLST37
	.uleb128 0x26
	.4byte	0x1218
	.4byte	.LLST38
	.uleb128 0x26
	.4byte	0x1223
	.4byte	.LLST39
	.uleb128 0x26
	.4byte	0x122e
	.4byte	.LLST40
	.uleb128 0x26
	.4byte	0x1239
	.4byte	.LLST41
	.uleb128 0x26
	.4byte	0x1244
	.4byte	.LLST42
	.uleb128 0x26
	.4byte	0x124f
	.4byte	.LLST43
	.uleb128 0x15
	.4byte	.LVL76
	.4byte	0x9a0
	.4byte	0x13a5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL96
	.4byte	0x9a0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL66
	.4byte	0x16bd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0xb
	.byte	0x74
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
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x179
	.byte	0x1
	.4byte	0x14dd
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x179
	.4byte	0x5b0
	.uleb128 0x2d
	.string	"x0"
	.byte	0x1
	.2byte	0x179
	.4byte	0x36e
	.uleb128 0x2d
	.string	"y0"
	.byte	0x1
	.2byte	0x179
	.4byte	0x36e
	.uleb128 0x2d
	.string	"rx"
	.byte	0x1
	.2byte	0x179
	.4byte	0x36e
	.uleb128 0x2d
	.string	"ry"
	.byte	0x1
	.2byte	0x179
	.4byte	0x36e
	.uleb128 0x2c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x179
	.4byte	0xaa
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x36e
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x36e
	.uleb128 0x2f
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x17c
	.4byte	0x384
	.uleb128 0x2f
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x17c
	.4byte	0x384
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x384
	.uleb128 0x2f
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x17e
	.4byte	0x384
	.uleb128 0x2f
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x17f
	.4byte	0x384
	.uleb128 0x2f
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x180
	.4byte	0x384
	.uleb128 0x2f
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x180
	.4byte	0x384
	.byte	0
	.uleb128 0x27
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1d2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a5
	.uleb128 0x28
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x5b0
	.4byte	.LLST44
	.uleb128 0x29
	.string	"x0"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x36e
	.4byte	.LLST45
	.uleb128 0x1a
	.string	"y0"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.string	"rx"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x36e
	.4byte	.LLST46
	.uleb128 0x29
	.string	"ry"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x36e
	.4byte	.LLST47
	.uleb128 0x28
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xaa
	.4byte	.LLST48
	.uleb128 0x2a
	.4byte	0x1423
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x165b
	.uleb128 0x24
	.4byte	0x1468
	.4byte	.LLST49
	.uleb128 0x24
	.4byte	0x145d
	.4byte	.LLST50
	.uleb128 0x24
	.4byte	0x1452
	.4byte	.LLST51
	.uleb128 0x24
	.4byte	0x1447
	.4byte	.LLST52
	.uleb128 0x24
	.4byte	0x143c
	.4byte	.LLST53
	.uleb128 0x24
	.4byte	0x1430
	.4byte	.LLST54
	.uleb128 0x25
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x26
	.4byte	0x1474
	.4byte	.LLST55
	.uleb128 0x26
	.4byte	0x147e
	.4byte	.LLST56
	.uleb128 0x26
	.4byte	0x1488
	.4byte	.LLST57
	.uleb128 0x26
	.4byte	0x1494
	.4byte	.LLST58
	.uleb128 0x26
	.4byte	0x14a0
	.4byte	.LLST59
	.uleb128 0x26
	.4byte	0x14ac
	.4byte	.LLST60
	.uleb128 0x26
	.4byte	0x14b8
	.4byte	.LLST61
	.uleb128 0x26
	.4byte	0x14c4
	.4byte	.LLST62
	.uleb128 0x26
	.4byte	0x14d0
	.4byte	.LLST63
	.uleb128 0x15
	.4byte	.LVL120
	.4byte	0xcb0
	.4byte	0x1627
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL140
	.4byte	0xcb0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL110
	.4byte	0x16bd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0xb
	.byte	0x74
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
	.byte	0
	.uleb128 0x30
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x4e0
	.uleb128 0x30
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x5
	.2byte	0x4df
	.uleb128 0x30
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x5
	.2byte	0x4f0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL30
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL30
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x7
	.byte	0x79
	.sleb128 -1
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x77
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50-1
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61-1
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x7
	.byte	0x79
	.sleb128 -1
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x77
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE8
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL64
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL107
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL64
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL95
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL64
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL73
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL67
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL67
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL95
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL67
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL67
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL67
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL67
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL69
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL87
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL69
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL96-1
	.4byte	.LVL100
	.2byte	0x7
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76-1
	.4byte	.LVL80
	.2byte	0x7
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL69
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110-1
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL108
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL118
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL151
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL108
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL139
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL108
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL117
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL111
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL111
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL139
	.4byte	.LVL151
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL111
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL118
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL111
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL111
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL111
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL113
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL113
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL131
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL113
	.4byte	.LVL120-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL140-1
	.4byte	.LVL144
	.2byte	0x7
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL118
	.4byte	.LVL120-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL120-1
	.4byte	.LVL124
	.2byte	0x7
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL144
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL113
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL127
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL130
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL138
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF115:
	.string	"bits_per_char_x"
.LASF88:
	.string	"font_calc_vref"
.LASF127:
	.string	"start_pos_unicode"
.LASF46:
	.string	"reset_pulse_width_ms"
.LASF105:
	.string	"u8g2_update_page_win_cb"
.LASF70:
	.string	"tile_buf_ptr"
.LASF1:
	.string	"__uint8_t"
.LASF24:
	.string	"byte_cb"
.LASF139:
	.string	"u8g2_font_decode_t"
.LASF109:
	.string	"glyph_cnt"
.LASF101:
	.string	"update_dimension"
.LASF12:
	.string	"long long unsigned int"
.LASF149:
	.string	"u8g2_draw_circle"
.LASF0:
	.string	"__int8_t"
.LASF47:
	.string	"post_reset_wait_ms"
.LASF110:
	.string	"bbx_mode"
.LASF33:
	.string	"utf8_state"
.LASF120:
	.string	"y_offset"
.LASF34:
	.string	"gpio_result"
.LASF15:
	.string	"int16_t"
.LASF116:
	.string	"bits_per_char_y"
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"u8g2_uint_t"
.LASF30:
	.string	"is_font_inverse_mode"
.LASF145:
	.string	"u8g2_draw_disc_section"
.LASF22:
	.string	"display_cb"
.LASF158:
	.string	"stopx"
.LASF123:
	.string	"ascent_para"
.LASF95:
	.string	"glyph_x_offset"
.LASF45:
	.string	"pre_chip_disable_wait_ns"
.LASF150:
	.string	"u8g2_draw_disc"
.LASF162:
	.string	"u8g2_DrawFilledEllipse"
.LASF167:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_circle.c"
.LASF102:
	.string	"update_page_win"
.LASF119:
	.string	"max_char_height"
.LASF16:
	.string	"uint16_t"
.LASF21:
	.string	"next_cb"
.LASF62:
	.string	"u8x8_char_cb"
.LASF25:
	.string	"gpio_and_delay_cb"
.LASF128:
	.string	"u8g2_font_info_t"
.LASF94:
	.string	"font_ref_descent"
.LASF65:
	.string	"u8g2_long_t"
.LASF39:
	.string	"u8x8_display_info_t"
.LASF9:
	.string	"__uint32_t"
.LASF111:
	.string	"bits_per_0"
.LASF48:
	.string	"sda_setup_time_ns"
.LASF93:
	.string	"font_ref_ascent"
.LASF4:
	.string	"__int16_t"
.LASF107:
	.string	"u8g2_draw_ll_hvline_cb"
.LASF122:
	.string	"descent_g"
.LASF113:
	.string	"bits_per_char_width"
.LASF38:
	.string	"debounce_result_msg"
.LASF10:
	.string	"unsigned int"
.LASF74:
	.string	"pixel_buf_height"
.LASF165:
	.string	"u8g2_IsIntersection"
.LASF136:
	.string	"is_transparent"
.LASF31:
	.string	"i2c_address"
.LASF66:
	.string	"u8g2_t"
.LASF142:
	.string	"option"
.LASF166:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF147:
	.string	"ddF_x"
.LASF130:
	.string	"decode_ptr"
.LASF78:
	.string	"width"
.LASF151:
	.string	"u8g2_DrawCircle"
.LASF71:
	.string	"tile_buf_height"
.LASF7:
	.string	"short unsigned int"
.LASF91:
	.string	"is_page_clip_window_intersection"
.LASF96:
	.string	"bitmap_transparency"
.LASF152:
	.string	"u8g2_DrawDisc"
.LASF84:
	.string	"clip_x0"
.LASF85:
	.string	"clip_x1"
.LASF103:
	.string	"draw_l90"
.LASF36:
	.string	"debounce_last_pin_state"
.LASF141:
	.string	"u8g2"
.LASF124:
	.string	"descent_para"
.LASF20:
	.string	"display_info"
.LASF90:
	.string	"font_info"
.LASF49:
	.string	"sck_pulse_width_ns"
.LASF155:
	.string	"ychg"
.LASF40:
	.string	"u8x8_struct"
.LASF133:
	.string	"glyph_width"
.LASF57:
	.string	"default_x_offset"
.LASF28:
	.string	"encoding"
.LASF92:
	.string	"font_height_mode"
.LASF156:
	.string	"rxrx2"
.LASF125:
	.string	"start_pos_upper_A"
.LASF58:
	.string	"flipmode_x_offset"
.LASF112:
	.string	"bits_per_1"
.LASF117:
	.string	"bits_per_delta_x"
.LASF159:
	.string	"stopy"
.LASF135:
	.string	"decode_bit_pos"
.LASF157:
	.string	"ryry2"
.LASF134:
	.string	"glyph_height"
.LASF160:
	.string	"u8g2_DrawEllipse"
.LASF75:
	.string	"pixel_curr_row"
.LASF23:
	.string	"cad_cb"
.LASF86:
	.string	"clip_y0"
.LASF87:
	.string	"clip_y1"
.LASF118:
	.string	"max_char_width"
.LASF82:
	.string	"user_y0"
.LASF54:
	.string	"write_pulse_width_ns"
.LASF154:
	.string	"xchg"
.LASF76:
	.string	"buf_y0"
.LASF77:
	.string	"buf_y1"
.LASF29:
	.string	"x_offset"
.LASF144:
	.string	"u8g2_draw_ellipse_section"
.LASF56:
	.string	"tile_height"
.LASF164:
	.string	"u8g2_DrawVLine"
.LASF69:
	.string	"ll_hvline"
.LASF137:
	.string	"fg_color"
.LASF61:
	.string	"u8x8_msg_cb"
.LASF100:
	.string	"u8g2_cb_struct"
.LASF17:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF121:
	.string	"ascent_A"
.LASF161:
	.string	"u8g2_draw_filled_ellipse"
.LASF98:
	.string	"is_auto_page_clear"
.LASF73:
	.string	"pixel_buf_width"
.LASF5:
	.string	"short int"
.LASF68:
	.string	"u8x8"
.LASF64:
	.string	"u8g2_int_t"
.LASF80:
	.string	"user_x0"
.LASF81:
	.string	"user_x1"
.LASF153:
	.string	"u8g2_draw_ellipse"
.LASF53:
	.string	"data_setup_time_ns"
.LASF67:
	.string	"u8g2_struct"
.LASF106:
	.string	"u8g2_draw_l90_cb"
.LASF52:
	.string	"i2c_bus_clock_100kHz"
.LASF18:
	.string	"uint32_t"
.LASF108:
	.string	"_u8g2_font_info_t"
.LASF72:
	.string	"tile_curr_row"
.LASF99:
	.string	"u8g2_cb_t"
.LASF51:
	.string	"spi_mode"
.LASF42:
	.string	"chip_enable_level"
.LASF89:
	.string	"font_decode"
.LASF114:
	.string	"bits_per_char_height"
.LASF6:
	.string	"__uint16_t"
.LASF97:
	.string	"draw_color"
.LASF44:
	.string	"post_chip_enable_wait_ns"
.LASF8:
	.string	"__int32_t"
.LASF168:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF146:
	.string	"u8g2_draw_filled_ellipse_section"
.LASF104:
	.string	"u8g2_update_dimension_cb"
.LASF131:
	.string	"target_x"
.LASF132:
	.string	"target_y"
.LASF19:
	.string	"u8x8_t"
.LASF26:
	.string	"bus_clock"
.LASF83:
	.string	"user_y1"
.LASF129:
	.string	"_u8g2_font_decode_t"
.LASF13:
	.string	"int8_t"
.LASF37:
	.string	"debounce_state"
.LASF143:
	.string	"u8g2_draw_circle_section"
.LASF43:
	.string	"chip_disable_level"
.LASF27:
	.string	"font"
.LASF126:
	.string	"start_pos_lower_a"
.LASF163:
	.string	"u8g2_DrawPixel"
.LASF148:
	.string	"ddF_y"
.LASF14:
	.string	"uint8_t"
.LASF140:
	.string	"u8g2_font_calc_vref_fnptr"
.LASF32:
	.string	"i2c_started"
.LASF59:
	.string	"pixel_width"
.LASF138:
	.string	"bg_color"
.LASF55:
	.string	"tile_width"
.LASF35:
	.string	"debounce_default_pin_state"
.LASF41:
	.string	"u8x8_display_info_struct"
.LASF79:
	.string	"height"
.LASF60:
	.string	"pixel_height"
.LASF50:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
