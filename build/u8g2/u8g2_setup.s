	.file	"u8g2_setup.c"
	.text
.Ltext0:
	.section	.text.u8g2_update_dimension_common,"ax",@progbits
	.align	4
	.type	u8g2_update_dimension_common, @function
u8g2_update_dimension_common:
.LFB5:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_setup.c"
	.loc 1 139 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 143 0
	l8ui	a14, a2, 56
	.loc 1 140 0
	l32i.n	a9, a2, 0
.LVL1:
	.loc 1 143 0
	extui	a8, a14, 0, 16
.LVL2:
	.loc 1 145 0
	slli	a10, a8, 3
	s16i	a10, a2, 60
	.loc 1 155 0
	l8ui	a11, a2, 57
	.loc 1 147 0
	l8ui	a10, a9, 16
.LVL3:
	.loc 1 155 0
	extui	a13, a11, 0, 16
.LVL4:
	.loc 1 153 0
	slli	a10, a10, 3
	.loc 1 156 0
	slli	a12, a13, 3
.LVL5:
	.loc 1 153 0
	s16i	a10, a2, 58
	.loc 1 157 0
	s16i	a12, a2, 62
.LVL6:
	.loc 1 161 0
	l8ui	a10, a9, 17
	add.n	a11, a14, a11
	bge	a10, a11, .L2
	.loc 1 162 0
	sub	a10, a10, a13
	extui	a8, a10, 0, 16
.LVL7:
.L2:
	.loc 1 167 0
	addx8	a8, a8, a12
.LVL8:
	s16i	a8, a2, 66
	.loc 1 171 0
	l16ui	a8, a9, 20
	.loc 1 165 0
	s16i	a12, a2, 64
	.loc 1 171 0
	s16i	a8, a2, 68
	.loc 1 172 0
	l16ui	a8, a9, 22
	s16i	a8, a2, 70
	retw.n
.LFE5:
	.size	u8g2_update_dimension_common, .-u8g2_update_dimension_common
	.section	.text.u8g2_update_dimension_r2,"ax",@progbits
	.align	4
	.global	u8g2_update_dimension_r2
	.type	u8g2_update_dimension_r2, @function
u8g2_update_dimension_r2:
.LFB11:
	.loc 1 254 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 255 0
	mov.n	a10, a2
	call8	u8g2_update_dimension_common
.LVL10:
	retw.n
.LFE11:
	.size	u8g2_update_dimension_r2, .-u8g2_update_dimension_r2
	.section	.text.u8g2_update_dimension_r3,"ax",@progbits
	.align	4
	.global	u8g2_update_dimension_r3
	.type	u8g2_update_dimension_r3, @function
u8g2_update_dimension_r3:
.LFB13:
	.loc 1 277 0
.LVL11:
	entry	sp, 32
.LCFI2:
	.loc 1 278 0
	mov.n	a10, a2
	call8	u8g2_update_dimension_common
.LVL12:
	.loc 1 280 0
	l32i.n	a8, a2, 0
	l16ui	a9, a8, 20
	.loc 1 281 0
	l16ui	a8, a8, 22
	.loc 1 280 0
	s16i	a9, a2, 70
	.loc 1 281 0
	s16i	a8, a2, 68
	retw.n
.LFE13:
	.size	u8g2_update_dimension_r3, .-u8g2_update_dimension_r3
	.section	.text.u8g2_update_dimension_r1,"ax",@progbits
	.align	4
	.global	u8g2_update_dimension_r1
	.type	u8g2_update_dimension_r1, @function
u8g2_update_dimension_r1:
.LFB23:
	entry	sp, 32
.LCFI3:
	mov.n	a10, a2
	call8	u8g2_update_dimension_r3
	retw.n
.LFE23:
	.size	u8g2_update_dimension_r1, .-u8g2_update_dimension_r1
	.section	.text.u8g2_draw_l90_r0,"ax",@progbits
	.align	4
	.global	u8g2_draw_l90_r0
	.type	u8g2_draw_l90_r0, @function
u8g2_draw_l90_r0:
.LFB15:
	.loc 1 308 0
.LVL13:
	.loc 1 308 0
	entry	sp, 32
.LCFI4:
	.loc 1 312 0
	extui	a14, a6, 0, 8
	extui	a13, a5, 0, 16
	extui	a12, a4, 0, 16
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	u8g2_draw_hv_line_2dir
.LVL14:
	retw.n
.LFE15:
	.size	u8g2_draw_l90_r0, .-u8g2_draw_l90_r0
	.section	.text.u8g2_draw_l90_mirrorr_r0,"ax",@progbits
	.align	4
	.global	u8g2_draw_l90_mirrorr_r0
	.type	u8g2_draw_l90_mirrorr_r0, @function
u8g2_draw_l90_mirrorr_r0:
.LFB16:
	.loc 1 316 0
.LVL15:
	entry	sp, 32
.LCFI5:
	.loc 1 318 0
	l16ui	a8, a2, 68
.LVL16:
	.loc 1 316 0
	extui	a14, a6, 0, 8
	.loc 1 319 0
	sub	a3, a8, a3
.LVL17:
	extui	a3, a3, 0, 16
.LVL18:
	.loc 1 326 0
	addi.n	a11, a3, -1
	.loc 1 316 0
	mov.n	a10, a2
	extui	a12, a4, 0, 16
	extui	a13, a5, 0, 16
	.loc 1 326 0
	extui	a11, a11, 0, 16
	.loc 1 320 0
	bbsi	a14, 0, .L9
	.loc 1 322 0
	sub	a3, a3, a13
.LVL19:
	extui	a11, a3, 0, 16
.LVL20:
.L9:
	.loc 1 328 0
	call8	u8g2_draw_hv_line_2dir
.LVL21:
	retw.n
.LFE16:
	.size	u8g2_draw_l90_mirrorr_r0, .-u8g2_draw_l90_mirrorr_r0
	.section	.text.u8g2_draw_l90_r1,"ax",@progbits
	.align	4
	.global	u8g2_draw_l90_r1
	.type	u8g2_draw_l90_r1, @function
u8g2_draw_l90_r1:
.LFB17:
	.loc 1 333 0
.LVL22:
	entry	sp, 32
.LCFI6:
	l16ui	a11, a2, 70
	.loc 1 346 0
	addi.n	a6, a6, 1
.LVL23:
	addi.n	a11, a11, -1
	.loc 1 344 0
	sub	a4, a11, a4
.LVL24:
	.loc 1 346 0
	extui	a14, a6, 0, 8
	.loc 1 333 0
	mov.n	a10, a2
	extui	a12, a3, 0, 16
.LVL25:
	extui	a13, a5, 0, 16
	.loc 1 344 0
	extui	a11, a4, 0, 16
.LVL26:
	.loc 1 347 0
	bnei	a14, 2, .L11
.LVL27:
	.loc 1 350 0
	sub	a11, a11, a13
.LVL28:
	addi.n	a11, a11, 1
	extui	a11, a11, 0, 16
.LVL29:
	.loc 1 351 0
	movi.n	a14, 0
.LVL30:
.L11:
	.loc 1 354 0
	call8	u8g2_draw_hv_line_2dir
.LVL31:
	retw.n
.LFE17:
	.size	u8g2_draw_l90_r1, .-u8g2_draw_l90_r1
	.section	.text.u8g2_draw_l90_r2,"ax",@progbits
	.align	4
	.global	u8g2_draw_l90_r2
	.type	u8g2_draw_l90_r2, @function
u8g2_draw_l90_r2:
.LFB18:
	.loc 1 358 0
.LVL32:
	entry	sp, 32
.LCFI7:
	.loc 1 382 0
	l16ui	a12, a2, 70
.LVL33:
	.loc 1 385 0
	l16ui	a11, a2, 68
	.loc 1 383 0
	sub	a4, a12, a4
.LVL34:
	.loc 1 386 0
	sub	a3, a11, a3
.LVL35:
	.loc 1 358 0
	extui	a14, a6, 0, 8
	mov.n	a10, a2
	extui	a13, a5, 0, 16
	.loc 1 383 0
	extui	a12, a4, 0, 16
.LVL36:
	.loc 1 386 0
	extui	a11, a3, 0, 16
.LVL37:
	.loc 1 388 0
	bnez.n	a14, .L13
	.loc 1 390 0
	addi.n	a12, a12, -1
	.loc 1 391 0
	sub	a11, a11, a13
	.loc 1 390 0
	extui	a12, a12, 0, 16
.LVL38:
	.loc 1 391 0
	extui	a11, a11, 0, 16
.LVL39:
	j	.L14
.LVL40:
.L13:
	.loc 1 393 0
	bnei	a14, 1, .L14
	.loc 1 395 0
	addi.n	a11, a11, -1
	.loc 1 396 0
	sub	a12, a12, a13
	.loc 1 395 0
	extui	a11, a11, 0, 16
.LVL41:
	.loc 1 396 0
	extui	a12, a12, 0, 16
.LVL42:
.L14:
	.loc 1 399 0
	call8	u8g2_draw_hv_line_2dir
.LVL43:
	retw.n
.LFE18:
	.size	u8g2_draw_l90_r2, .-u8g2_draw_l90_r2
	.section	.text.u8g2_draw_l90_r3,"ax",@progbits
	.align	4
	.global	u8g2_draw_l90_r3
	.type	u8g2_draw_l90_r3, @function
u8g2_draw_l90_r3:
.LFB19:
	.loc 1 403 0
.LVL44:
	entry	sp, 32
.LCFI8:
	.loc 1 408 0
	l16ui	a12, a2, 68
	.loc 1 403 0
	extui	a6, a6, 0, 8
	.loc 1 409 0
	sub	a3, a12, a3
.LVL45:
	.loc 1 403 0
	mov.n	a10, a2
	extui	a11, a4, 0, 16
.LVL46:
	extui	a13, a5, 0, 16
	.loc 1 409 0
	extui	a12, a3, 0, 16
.LVL47:
	.loc 1 411 0
	bnez.n	a6, .L16
.LVL48:
	.loc 1 415 0
	sub	a12, a12, a13
.LVL49:
	extui	a12, a12, 0, 16
.LVL50:
	.loc 1 416 0
	movi.n	a14, 1
	j	.L17
.LVL51:
.L16:
	.loc 1 420 0
	addi.n	a12, a12, -1
	extui	a12, a12, 0, 16
.LVL52:
	.loc 1 421 0
	movi.n	a14, 0
.LVL53:
.L17:
	.loc 1 425 0
	call8	u8g2_draw_hv_line_2dir
.LVL54:
	retw.n
.LFE19:
	.size	u8g2_draw_l90_r3, .-u8g2_draw_l90_r3
	.section	.text.u8g2_apply_clip_window,"ax",@progbits
	.align	4
	.type	u8g2_apply_clip_window, @function
u8g2_apply_clip_window:
.LFB6:
	.loc 1 187 0
.LVL55:
	entry	sp, 32
.LCFI9:
	.loc 1 189 0
	l16ui	a14, a2, 86
	l16ui	a13, a2, 82
	l16ui	a12, a2, 84
	l16ui	a11, a2, 80
	mov.n	a10, a2
	call8	u8g2_IsIntersection
.LVL56:
	bnez.n	a10, .L19
	.loc 1 191 0
	s8i	a10, a2, 140
	retw.n
.L19:
.LVL57:
.LBB4:
.LBB5:
	.loc 1 195 0
	movi.n	a8, 1
	s8i	a8, a2, 140
	.loc 1 197 0
	l16ui	a9, a2, 72
	l16ui	a8, a2, 80
	bgeu	a9, a8, .L21
	.loc 1 198 0
	s16i	a8, a2, 72
.L21:
	.loc 1 199 0
	l16ui	a8, a2, 82
	l16ui	a9, a2, 74
	bgeu	a8, a9, .L22
	.loc 1 200 0
	s16i	a8, a2, 74
.L22:
	.loc 1 201 0
	l16ui	a8, a2, 84
	l16ui	a9, a2, 76
	bgeu	a9, a8, .L23
	.loc 1 202 0
	s16i	a8, a2, 76
.L23:
	.loc 1 203 0
	l16ui	a8, a2, 86
	l16ui	a9, a2, 78
	bgeu	a8, a9, .L18
	.loc 1 204 0
	s16i	a8, a2, 78
.L18:
	retw.n
.LBE5:
.LBE4:
.LFE6:
	.size	u8g2_apply_clip_window, .-u8g2_apply_clip_window
	.section	.text.u8g2_update_page_win_r0,"ax",@progbits
	.align	4
	.global	u8g2_update_page_win_r0
	.type	u8g2_update_page_win_r0, @function
u8g2_update_page_win_r0:
.LFB8:
	.loc 1 218 0
.LVL58:
	entry	sp, 32
.LCFI10:
	.loc 1 219 0
	movi.n	a8, 0
	s16i	a8, a2, 72
	.loc 1 220 0
	l16ui	a8, a2, 68
	.loc 1 218 0
	mov.n	a10, a2
	.loc 1 220 0
	s16i	a8, a2, 74
	.loc 1 222 0
	l16ui	a8, a2, 64
	s16i	a8, a2, 76
	.loc 1 223 0
	l16ui	a8, a2, 66
	s16i	a8, a2, 78
	.loc 1 226 0
	call8	u8g2_apply_clip_window
.LVL59:
	retw.n
.LFE8:
	.size	u8g2_update_page_win_r0, .-u8g2_update_page_win_r0
	.section	.text.u8g2_update_page_win_r1,"ax",@progbits
	.align	4
	.global	u8g2_update_page_win_r1
	.type	u8g2_update_page_win_r1, @function
u8g2_update_page_win_r1:
.LFB10:
	.loc 1 241 0
.LVL60:
	entry	sp, 32
.LCFI11:
	.loc 1 242 0
	l16ui	a8, a2, 64
	.loc 1 241 0
	mov.n	a10, a2
	.loc 1 242 0
	s16i	a8, a2, 72
	.loc 1 243 0
	l16ui	a8, a2, 66
	s16i	a8, a2, 74
	.loc 1 245 0
	movi.n	a8, 0
	s16i	a8, a2, 76
	.loc 1 246 0
	l16ui	a8, a2, 70
	s16i	a8, a2, 78
	.loc 1 249 0
	call8	u8g2_apply_clip_window
.LVL61:
	retw.n
.LFE10:
	.size	u8g2_update_page_win_r1, .-u8g2_update_page_win_r1
	.section	.text.u8g2_update_page_win_r2,"ax",@progbits
	.align	4
	.global	u8g2_update_page_win_r2
	.type	u8g2_update_page_win_r2, @function
u8g2_update_page_win_r2:
.LFB12:
	.loc 1 259 0
.LVL62:
	entry	sp, 32
.LCFI12:
	.loc 1 261 0
	l16ui	a9, a2, 68
	.loc 1 260 0
	movi.n	a8, 0
	s16i	a8, a2, 72
	.loc 1 261 0
	s16i	a9, a2, 74
	.loc 1 265 0
	s16i	a8, a2, 76
	.loc 1 266 0
	l16ui	a9, a2, 66
	l16ui	a8, a2, 70
	.loc 1 259 0
	mov.n	a10, a2
	.loc 1 266 0
	bltu	a8, a9, .L27
	.loc 1 267 0
	sub	a9, a8, a9
	s16i	a9, a2, 76
.L27:
	.loc 1 268 0
	l16ui	a9, a10, 64
	sub	a8, a8, a9
	s16i	a8, a10, 78
	.loc 1 271 0
	call8	u8g2_apply_clip_window
.LVL63:
	retw.n
.LFE12:
	.size	u8g2_update_page_win_r2, .-u8g2_update_page_win_r2
	.section	.text.u8g2_update_page_win_r3,"ax",@progbits
	.align	4
	.global	u8g2_update_page_win_r3
	.type	u8g2_update_page_win_r3, @function
u8g2_update_page_win_r3:
.LFB14:
	.loc 1 286 0
.LVL64:
	entry	sp, 32
.LCFI13:
	.loc 1 289 0
	movi.n	a8, 0
	s16i	a8, a2, 72
	.loc 1 290 0
	l16ui	a9, a2, 66
	l16ui	a8, a2, 68
	.loc 1 286 0
	mov.n	a10, a2
	.loc 1 290 0
	bltu	a8, a9, .L29
	.loc 1 291 0
	sub	a9, a8, a9
	s16i	a9, a2, 72
.L29:
	.loc 1 292 0
	l16ui	a9, a10, 64
	sub	a8, a8, a9
	s16i	a8, a10, 74
	.loc 1 294 0
	movi.n	a8, 0
	s16i	a8, a10, 76
	.loc 1 295 0
	l16ui	a8, a10, 70
	s16i	a8, a10, 78
	.loc 1 298 0
	call8	u8g2_apply_clip_window
.LVL65:
	retw.n
.LFE14:
	.size	u8g2_update_page_win_r3, .-u8g2_update_page_win_r3
	.section	.text.u8g2_update_dimension_r0,"ax",@progbits
	.align	4
	.global	u8g2_update_dimension_r0
	.type	u8g2_update_dimension_r0, @function
u8g2_update_dimension_r0:
.LFB25:
	entry	sp, 32
.LCFI14:
	mov.n	a10, a2
	call8	u8g2_update_dimension_common
	retw.n
.LFE25:
	.size	u8g2_update_dimension_r0, .-u8g2_update_dimension_r0
	.section	.text.u8g2_SetMaxClipWindow,"ax",@progbits
	.align	4
	.global	u8g2_SetMaxClipWindow
	.type	u8g2_SetMaxClipWindow, @function
u8g2_SetMaxClipWindow:
.LFB0:
	.loc 1 47 0
.LVL66:
	.loc 1 47 0
	entry	sp, 32
.LCFI15:
	.loc 1 48 0
	movi.n	a8, 0
	s16i	a8, a2, 80
	.loc 1 49 0
	s16i	a8, a2, 84
	.loc 1 50 0
	movi.n	a8, -1
	s16i	a8, a2, 82
	.loc 1 51 0
	s16i	a8, a2, 86
	.loc 1 53 0
	l32i.n	a8, a2, 48
	.loc 1 47 0
	mov.n	a10, a2
	.loc 1 53 0
	l32i.n	a8, a8, 4
	callx8	a8
.LVL67:
	retw.n
.LFE0:
	.size	u8g2_SetMaxClipWindow, .-u8g2_SetMaxClipWindow
	.section	.text.u8g2_SetClipWindow,"ax",@progbits
	.align	4
	.global	u8g2_SetClipWindow
	.type	u8g2_SetClipWindow, @function
u8g2_SetClipWindow:
.LFB1:
	.loc 1 57 0
.LVL68:
	entry	sp, 32
.LCFI16:
	.loc 1 62 0
	l32i.n	a8, a2, 48
	.loc 1 57 0
	mov.n	a10, a2
	.loc 1 62 0
	l32i.n	a8, a8, 4
	.loc 1 58 0
	s16i	a3, a2, 80
	.loc 1 59 0
	s16i	a4, a2, 84
	.loc 1 60 0
	s16i	a5, a2, 82
	.loc 1 61 0
	s16i	a6, a2, 86
	.loc 1 62 0
	callx8	a8
.LVL69:
	retw.n
.LFE1:
	.size	u8g2_SetClipWindow, .-u8g2_SetClipWindow
	.section	.text.u8g2_SetupBuffer,"ax",@progbits
	.align	4
	.global	u8g2_SetupBuffer
	.type	u8g2_SetupBuffer, @function
u8g2_SetupBuffer:
.LFB2:
	.loc 1 72 0
.LVL70:
	entry	sp, 32
.LCFI17:
	.loc 1 73 0
	movi.n	a7, 0
	.loc 1 88 0
	movi.n	a8, 1
	s8i	a8, a2, 146
	.loc 1 89 0
	s8i	a8, a2, 147
	.loc 1 81 0
	s8i	a4, a2, 56
	.loc 1 83 0
	s8i	a7, a2, 57
	.loc 1 85 0
	s8i	a7, a2, 109
	.loc 1 86 0
	s8i	a7, a2, 145
	.loc 1 91 0
	s32i.n	a6, a2, 48
	.loc 1 92 0
	l32i.n	a6, a6, 0
.LVL71:
	mov.n	a10, a2
	.loc 1 73 0
	s32i	a7, a2, 88
	.loc 1 78 0
	s32i.n	a5, a2, 44
	.loc 1 80 0
	s32i.n	a3, a2, 52
	.loc 1 92 0
	callx8	a6
.LVL72:
	.loc 1 94 0
	mov.n	a10, a2
	call8	u8g2_SetMaxClipWindow
.LVL73:
	.loc 1 99 0
	mov.n	a10, a2
	call8	u8g2_SetFontPosBaseline
.LVL74:
	.loc 1 102 0
	s8i	a7, a2, 112
	retw.n
.LFE2:
	.size	u8g2_SetupBuffer, .-u8g2_SetupBuffer
	.section	.text.u8g2_SetDisplayRotation,"ax",@progbits
	.align	4
	.global	u8g2_SetDisplayRotation
	.type	u8g2_SetDisplayRotation, @function
u8g2_SetDisplayRotation:
.LFB3:
	.loc 1 111 0
.LVL75:
	entry	sp, 32
.LCFI18:
	.loc 1 112 0
	s32i.n	a3, a2, 48
	.loc 1 113 0
	l32i.n	a3, a3, 0
.LVL76:
	mov.n	a10, a2
	callx8	a3
.LVL77:
	.loc 1 114 0
	l32i.n	a3, a2, 48
	mov.n	a10, a2
	l32i.n	a3, a3, 4
	callx8	a3
.LVL78:
	retw.n
.LFE3:
	.size	u8g2_SetDisplayRotation, .-u8g2_SetDisplayRotation
	.section	.text.u8g2_SendF,"ax",@progbits
	.align	4
	.global	u8g2_SendF
	.type	u8g2_SendF, @function
u8g2_SendF:
.LFB4:
	.loc 1 120 0
.LVL79:
	entry	sp, 80
.LCFI19:
	.loc 1 122 0
	addi	a13, sp, 16
	addi	a12, sp, 48
	movi.n	a14, 8
	.loc 1 123 0
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 122 0
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	s32i.n	a13, sp, 4
	s32i.n	a12, sp, 0
	s32i.n	a14, sp, 8
	.loc 1 123 0
	call8	u8x8_cad_vsendf
.LVL80:
	retw.n
.LFE4:
	.size	u8g2_SendF, .-u8g2_SendF
	.section	.text.u8g2_Setup_null,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_cad_empty
	.literal .LC1, u8x8_d_null_cb
	.literal .LC2, u8g2_ll_hvline_vertical_top_lsb
	.literal .LC3, buf$9214
	.align	4
	.global	u8g2_Setup_null
	.type	u8g2_Setup_null, @function
u8g2_Setup_null:
.LFB20:
	.loc 1 443 0
.LVL81:
	entry	sp, 32
.LCFI20:
	.loc 1 445 0
	l32r	a12, .LC0
	l32r	a11, .LC1
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a10, a2
	call8	u8x8_Setup
.LVL82:
	.loc 1 446 0
	l32r	a13, .LC2
	l32r	a11, .LC3
	mov.n	a14, a3
	movi.n	a12, 1
	mov.n	a10, a2
	call8	u8g2_SetupBuffer
.LVL83:
	retw.n
.LFE20:
	.size	u8g2_Setup_null, .-u8g2_Setup_null
	.section	.bss.buf$9214,"aw",@nobits
	.type	buf$9214, @object
	.size	buf$9214, 8
buf$9214:
	.zero	8
	.global	u8g2_cb_mirror
	.section	.rodata.u8g2_cb_mirror,"a",@progbits
	.align	4
	.type	u8g2_cb_mirror, @object
	.size	u8g2_cb_mirror, 12
u8g2_cb_mirror:
	.word	u8g2_update_dimension_r0
	.word	u8g2_update_page_win_r0
	.word	u8g2_draw_l90_mirrorr_r0
	.global	u8g2_cb_r3
	.section	.rodata.u8g2_cb_r3,"a",@progbits
	.align	4
	.type	u8g2_cb_r3, @object
	.size	u8g2_cb_r3, 12
u8g2_cb_r3:
	.word	u8g2_update_dimension_r3
	.word	u8g2_update_page_win_r3
	.word	u8g2_draw_l90_r3
	.global	u8g2_cb_r2
	.section	.rodata.u8g2_cb_r2,"a",@progbits
	.align	4
	.type	u8g2_cb_r2, @object
	.size	u8g2_cb_r2, 12
u8g2_cb_r2:
	.word	u8g2_update_dimension_r2
	.word	u8g2_update_page_win_r2
	.word	u8g2_draw_l90_r2
	.global	u8g2_cb_r1
	.section	.rodata.u8g2_cb_r1,"a",@progbits
	.align	4
	.type	u8g2_cb_r1, @object
	.size	u8g2_cb_r1, 12
u8g2_cb_r1:
	.word	u8g2_update_dimension_r1
	.word	u8g2_update_page_win_r1
	.word	u8g2_draw_l90_r1
	.global	u8g2_cb_r0
	.section	.rodata.u8g2_cb_r0,"a",@progbits
	.align	4
	.type	u8g2_cb_r0, @object
	.size	u8g2_cb_r0, 12
u8g2_cb_r0:
	.word	u8g2_update_dimension_r0
	.word	u8g2_update_page_win_r0
	.word	u8g2_draw_l90_r0
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI1-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI9-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI10-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI11-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI13-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI14-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI15-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI16-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI17-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI18-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI19-.LFB4
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h"
	.file 5 "<built-in>"
	.file 6 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.file 7 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf7d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0xc
	.4byte	.LASF176
	.4byte	.LASF177
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
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x28
	.4byte	0xc0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0xc
	.byte	0x5
	.byte	0
	.4byte	0xf1
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0
	.4byte	0xf1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0
	.4byte	0xf1
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.4byte	0x62
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x62
	.4byte	0xb5
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0xc3
	.4byte	0x109
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2c
	.byte	0x6
	.2byte	0x146
	.4byte	0x20e
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x148
	.4byte	0x373
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x149
	.4byte	0x348
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x14a
	.4byte	0x313
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x14b
	.4byte	0x313
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x14c
	.4byte	0x313
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x14d
	.4byte	0x313
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x14e
	.4byte	0xaa
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x14f
	.4byte	0x37e
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x150
	.4byte	0x9f
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x151
	.4byte	0x94
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x152
	.4byte	0x94
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x153
	.4byte	0x94
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x156
	.4byte	0x94
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x158
	.4byte	0x94
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x159
	.4byte	0x94
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x15a
	.4byte	0x94
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x15b
	.4byte	0x94
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x15c
	.4byte	0x94
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x15d
	.4byte	0x94
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x6
	.byte	0xc4
	.4byte	0x219
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xdd
	.4byte	0x313
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x6
	.byte	0xe1
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x6
	.byte	0xe2
	.4byte	0x94
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x6
	.byte	0xe4
	.4byte	0x94
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x6
	.byte	0xe5
	.4byte	0x94
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x6
	.byte	0xe6
	.4byte	0x94
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x6
	.byte	0xe7
	.4byte	0x94
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x6
	.byte	0xee
	.4byte	0x94
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x6
	.byte	0xf2
	.4byte	0x94
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x6
	.byte	0xf5
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x6
	.byte	0xff
	.4byte	0x94
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x102
	.4byte	0x94
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x108
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x10a
	.4byte	0x94
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x10d
	.4byte	0x94
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x10e
	.4byte	0x94
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x110
	.4byte	0x94
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x111
	.4byte	0x94
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x119
	.4byte	0x9f
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x11a
	.4byte	0x9f
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x6
	.byte	0xc7
	.4byte	0x31e
	.uleb128 0xa
	.byte	0x4
	.4byte	0x324
	.uleb128 0xb
	.4byte	0x94
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x94
	.uleb128 0xc
	.4byte	0x94
	.uleb128 0xc
	.4byte	0xf1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x6
	.byte	0xc8
	.4byte	0x353
	.uleb128 0xa
	.byte	0x4
	.4byte	0x359
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x36d
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x379
	.uleb128 0xd
	.4byte	0x20e
	.uleb128 0xa
	.byte	0x4
	.4byte	0x384
	.uleb128 0xd
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x7
	.byte	0xb2
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x7
	.byte	0xbc
	.4byte	0x39f
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x94
	.byte	0x7
	.2byte	0x11b
	.4byte	0x559
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x11d
	.4byte	0xfe
	.byte	0
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x11e
	.4byte	0x5f6
	.byte	0x2c
	.uleb128 0xe
	.string	"cb"
	.byte	0x7
	.2byte	0x11f
	.4byte	0x7d0
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x122
	.4byte	0x36d
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x123
	.4byte	0x94
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x124
	.4byte	0x94
	.byte	0x39
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x127
	.4byte	0x389
	.byte	0x3a
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x128
	.4byte	0x389
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x129
	.4byte	0x389
	.byte	0x3e
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x12f
	.4byte	0x389
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x130
	.4byte	0x389
	.byte	0x42
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x133
	.4byte	0x389
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x134
	.4byte	0x389
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x139
	.4byte	0x389
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x13a
	.4byte	0x389
	.byte	0x4a
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x13b
	.4byte	0x389
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x13c
	.4byte	0x389
	.byte	0x4e
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x140
	.4byte	0x389
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x141
	.4byte	0x389
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x142
	.4byte	0x389
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x143
	.4byte	0x389
	.byte	0x56
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x148
	.4byte	0x37e
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x14c
	.4byte	0x7af
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x14d
	.4byte	0x7a3
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x14e
	.4byte	0x6fe
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x152
	.4byte	0x94
	.byte	0x8c
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x155
	.4byte	0x94
	.byte	0x8d
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x156
	.4byte	0x89
	.byte	0x8e
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x157
	.4byte	0x89
	.byte	0x8f
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x159
	.4byte	0x89
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x15b
	.4byte	0x94
	.byte	0x91
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x15d
	.4byte	0x94
	.byte	0x92
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x161
	.4byte	0x94
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x7
	.byte	0xbd
	.4byte	0x564
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0xc
	.byte	0x7
	.2byte	0x111
	.4byte	0x599
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x113
	.4byte	0x599
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x114
	.4byte	0x5bb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x115
	.4byte	0x5c6
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x7
	.byte	0xbf
	.4byte	0x5a4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5aa
	.uleb128 0xf
	.4byte	0x5b5
	.uleb128 0xc
	.4byte	0x5b5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x394
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x7
	.byte	0xc0
	.4byte	0x5a4
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x7
	.byte	0xc1
	.4byte	0x5d1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5d7
	.uleb128 0xf
	.4byte	0x5f6
	.uleb128 0xc
	.4byte	0x5b5
	.uleb128 0xc
	.4byte	0x389
	.uleb128 0xc
	.4byte	0x389
	.uleb128 0xc
	.4byte	0x389
	.uleb128 0xc
	.4byte	0x94
	.byte	0
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x7
	.byte	0xc2
	.4byte	0x5d1
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x18
	.byte	0x7
	.byte	0xc8
	.4byte	0x6fe
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0x7
	.byte	0xcb
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x7
	.byte	0xcc
	.4byte	0x94
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x7
	.byte	0xcd
	.4byte	0x94
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x7
	.byte	0xce
	.4byte	0x94
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x7
	.byte	0xd1
	.4byte	0x94
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x7
	.byte	0xd2
	.4byte	0x94
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x7
	.byte	0xd3
	.4byte	0x94
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x7
	.byte	0xd4
	.4byte	0x94
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0x7
	.byte	0xd5
	.4byte	0x94
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0x7
	.byte	0xd8
	.4byte	0x89
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x7
	.byte	0xd9
	.4byte	0x89
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0xda
	.4byte	0x89
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x7
	.byte	0xdb
	.4byte	0x89
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x7
	.byte	0xde
	.4byte	0x89
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x7
	.byte	0xdf
	.4byte	0x89
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x7
	.byte	0xe0
	.4byte	0x89
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x7
	.byte	0xe1
	.4byte	0x89
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x7
	.byte	0xe4
	.4byte	0x9f
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0x7
	.byte	0xe5
	.4byte	0x9f
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x7
	.byte	0xe9
	.4byte	0x9f
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x7
	.byte	0xec
	.4byte	0x601
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0x14
	.byte	0x7
	.byte	0xef
	.4byte	0x7a3
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x7
	.byte	0xf1
	.4byte	0x37e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x7
	.byte	0xf3
	.4byte	0x389
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0x7
	.byte	0xf4
	.4byte	0x389
	.byte	0x6
	.uleb128 0x10
	.string	"x"
	.byte	0x7
	.byte	0xf6
	.4byte	0x89
	.byte	0x8
	.uleb128 0x10
	.string	"y"
	.byte	0x7
	.byte	0xf7
	.4byte	0x89
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x7
	.byte	0xf8
	.4byte	0x89
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0x7
	.byte	0xf9
	.4byte	0x89
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0x7
	.byte	0xfb
	.4byte	0x94
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0x7
	.byte	0xfc
	.4byte	0x94
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF137
	.byte	0x7
	.byte	0xfd
	.4byte	0x94
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF138
	.byte	0x7
	.byte	0xfe
	.4byte	0x94
	.byte	0xf
	.uleb128 0xe
	.string	"dir"
	.byte	0x7
	.2byte	0x100
	.4byte	0x94
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x7
	.2byte	0x103
	.4byte	0x709
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x118
	.4byte	0x7bb
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7c1
	.uleb128 0xb
	.4byte	0x389
	.4byte	0x7d0
	.uleb128 0xc
	.4byte	0x5b5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7d6
	.uleb128 0xd
	.4byte	0x559
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF141
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF142
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF143
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF144
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7fd
	.uleb128 0xd
	.4byte	0x7f0
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0x81a
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x1
	.byte	0xba
	.4byte	0x5b5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF179
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x857
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0x8a
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8c
	.4byte	0x373
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x8d
	.4byte	0x389
	.4byte	.LLST0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF180
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.4byte	0x86f
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x1
	.byte	0xfd
	.4byte	0x5b5
	.byte	0
	.uleb128 0x19
	.4byte	0x857
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89a
	.uleb128 0x1a
	.4byte	0x863
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x81a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x114
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8cf
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x114
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL12
	.4byte	0x81a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x133
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95f
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x133
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.2byte	0x133
	.4byte	0x389
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.2byte	0x133
	.4byte	0x389
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x133
	.4byte	0x389
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"dir"
	.byte	0x1
	.2byte	0x133
	.4byte	0x94
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0xf44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x13b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d2
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x13b
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x389
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x389
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x389
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"dir"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x94
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.string	"xx"
	.byte	0x1
	.2byte	0x13d
	.4byte	0x389
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LVL21
	.4byte	0xf44
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x14c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa54
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x14c
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x389
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x389
	.4byte	.LLST3
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x389
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"dir"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x21
	.string	"xx"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x389
	.4byte	.LLST5
	.uleb128 0x23
	.string	"yy"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x389
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL31
	.4byte	0xf44
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x165
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad8
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x165
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x165
	.4byte	0x389
	.4byte	.LLST6
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x165
	.4byte	0x389
	.4byte	.LLST7
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x165
	.4byte	0x389
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"dir"
	.byte	0x1
	.2byte	0x165
	.4byte	0x94
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.string	"xx"
	.byte	0x1
	.2byte	0x167
	.4byte	0x389
	.4byte	.LLST8
	.uleb128 0x21
	.string	"yy"
	.byte	0x1
	.2byte	0x167
	.4byte	0x389
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LVL43
	.4byte	0xf44
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x192
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5a
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x192
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x192
	.4byte	0x389
	.4byte	.LLST10
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.2byte	0x192
	.4byte	0x389
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x192
	.4byte	0x389
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"dir"
	.byte	0x1
	.2byte	0x192
	.4byte	0x94
	.4byte	.LLST11
	.uleb128 0x23
	.string	"xx"
	.byte	0x1
	.2byte	0x194
	.4byte	0x389
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"yy"
	.byte	0x1
	.2byte	0x194
	.4byte	0x389
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LVL54
	.4byte	0xf44
	.byte	0
	.uleb128 0x19
	.4byte	0x802
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9a
	.uleb128 0x1a
	.4byte	0x80e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xb89
	.uleb128 0x1a
	.4byte	0x80e
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL56
	.4byte	0xf50
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF152
	.byte	0x1
	.byte	0xd9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcd
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0xd9
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0x802
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF153
	.byte	0x1
	.byte	0xf0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc00
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf0
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0x802
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x102
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc35
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x102
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x802
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x11d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6a
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x11d
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL65
	.4byte	0x802
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc99
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0x2e
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL67
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0x1
	.byte	0x38
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfc
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0x38
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0x38
	.4byte	0x389
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0x38
	.4byte	0x389
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x38
	.4byte	0x389
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x1
	.byte	0x38
	.4byte	0x389
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	.LVL69
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x1
	.byte	0x47
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8c
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0x47
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0x47
	.4byte	0x36d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0x47
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0x1
	.byte	0x47
	.4byte	0x5f6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x1
	.byte	0x47
	.4byte	0x7d0
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	.LVL72
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.4byte	0xd67
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL73
	.4byte	0xc6a
	.4byte	0xd7b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL74
	.4byte	0xf5c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF161
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde0
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0x6e
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x1
	.byte	0x6e
	.4byte	0x7d0
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	.LVL77
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xdd0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL78
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.byte	0x77
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe35
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0x77
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.byte	0x77
	.4byte	0x7f7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.uleb128 0x2d
	.string	"va"
	.byte	0x1
	.byte	0x79
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.4byte	.LVL80
	.4byte	0xf68
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
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1ba
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeda
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x7d0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x313
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x313
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xeda
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$9214
	.uleb128 0x2a
	.4byte	.LVL82
	.4byte	0xf74
	.4byte	0xeb5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL83
	.4byte	0xcfc
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
	.4byte	buf$9214
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x94
	.4byte	0xeea
	.uleb128 0x2f
	.4byte	0x7e2
	.byte	0x7
	.byte	0
	.uleb128 0x30
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1af
	.4byte	0x7d6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_cb_r0
	.uleb128 0x30
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x7d6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_cb_r1
	.uleb128 0x30
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x7d6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_cb_r2
	.uleb128 0x30
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x7d6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_cb_r3
	.uleb128 0x30
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x7d6
	.uleb128 0x5
	.byte	0x3
	.4byte	u8g2_cb_mirror
	.uleb128 0x31
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x130
	.uleb128 0x31
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x4f0
	.uleb128 0x31
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x545
	.uleb128 0x31
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x6
	.2byte	0x25b
	.uleb128 0x31
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x6
	.2byte	0x215
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x72
	.sleb128 68
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x72
	.sleb128 68
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x72
	.sleb128 70
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x72
	.sleb128 68
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0x20
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x2
	.byte	0x72
	.sleb128 48
	.4byte	.LVL72-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x2
	.byte	0x72
	.sleb128 48
	.4byte	.LVL77-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"pre_chip_disable_wait_ns"
.LASF39:
	.string	"debounce_last_pin_state"
.LASF108:
	.string	"_u8g2_font_info_t"
.LASF103:
	.string	"draw_l90"
.LASF36:
	.string	"utf8_state"
.LASF62:
	.string	"pixel_height"
.LASF117:
	.string	"bits_per_delta_x"
.LASF106:
	.string	"u8g2_draw_l90_cb"
.LASF130:
	.string	"decode_ptr"
.LASF173:
	.string	"u8x8_cad_vsendf"
.LASF111:
	.string	"bits_per_0"
.LASF112:
	.string	"bits_per_1"
.LASF90:
	.string	"font_info"
.LASF101:
	.string	"update_dimension"
.LASF8:
	.string	"unsigned int"
.LASF68:
	.string	"u8x8"
.LASF165:
	.string	"u8g2_cb_r0"
.LASF166:
	.string	"u8g2_cb_r1"
.LASF167:
	.string	"u8g2_cb_r2"
.LASF168:
	.string	"u8g2_cb_r3"
.LASF149:
	.string	"u8g2_draw_l90_r1"
.LASF157:
	.string	"u8g2_SetClipWindow"
.LASF88:
	.string	"font_calc_vref"
.LASF172:
	.string	"u8g2_SetFontPosBaseline"
.LASF118:
	.string	"max_char_width"
.LASF164:
	.string	"rotation"
.LASF120:
	.string	"y_offset"
.LASF124:
	.string	"descent_para"
.LASF95:
	.string	"glyph_x_offset"
.LASF52:
	.string	"sck_clock_hz"
.LASF14:
	.string	"uint32_t"
.LASF11:
	.string	"int8_t"
.LASF137:
	.string	"fg_color"
.LASF180:
	.string	"u8g2_update_dimension_r2"
.LASF146:
	.string	"u8g2_update_dimension_r3"
.LASF159:
	.string	"ll_hvline_cb"
.LASF109:
	.string	"glyph_cnt"
.LASF10:
	.string	"long long unsigned int"
.LASF126:
	.string	"start_pos_lower_a"
.LASF119:
	.string	"max_char_height"
.LASF5:
	.string	"__uint16_t"
.LASF140:
	.string	"u8g2_font_calc_vref_fnptr"
.LASF125:
	.string	"start_pos_upper_A"
.LASF104:
	.string	"u8g2_update_dimension_cb"
.LASF24:
	.string	"next_cb"
.LASF63:
	.string	"u8x8_msg_cb"
.LASF17:
	.string	"__va_reg"
.LASF89:
	.string	"font_decode"
.LASF175:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"gpio_and_delay_cb"
.LASF132:
	.string	"target_y"
.LASF69:
	.string	"ll_hvline"
.LASF15:
	.string	"__gnuc_va_list"
.LASF134:
	.string	"glyph_height"
.LASF78:
	.string	"width"
.LASF129:
	.string	"_u8g2_font_decode_t"
.LASF121:
	.string	"ascent_A"
.LASF177:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF46:
	.string	"post_chip_enable_wait_ns"
.LASF58:
	.string	"tile_height"
.LASF38:
	.string	"debounce_default_pin_state"
.LASF54:
	.string	"i2c_bus_clock_100kHz"
.LASF122:
	.string	"descent_g"
.LASF91:
	.string	"is_page_clip_window_intersection"
.LASF43:
	.string	"u8x8_display_info_struct"
.LASF144:
	.string	"char"
.LASF57:
	.string	"tile_width"
.LASF131:
	.string	"target_x"
.LASF31:
	.string	"encoding"
.LASF160:
	.string	"u8g2_cb"
.LASF59:
	.string	"default_x_offset"
.LASF123:
	.string	"ascent_para"
.LASF12:
	.string	"uint8_t"
.LASF114:
	.string	"bits_per_char_height"
.LASF174:
	.string	"u8x8_Setup"
.LASF107:
	.string	"u8g2_draw_ll_hvline_cb"
.LASF19:
	.string	"va_list"
.LASF162:
	.string	"u8g2_SendF"
.LASF66:
	.string	"u8g2_t"
.LASF9:
	.string	"long long int"
.LASF27:
	.string	"byte_cb"
.LASF73:
	.string	"pixel_buf_width"
.LASF33:
	.string	"is_font_inverse_mode"
.LASF34:
	.string	"i2c_address"
.LASF67:
	.string	"u8g2_struct"
.LASF35:
	.string	"i2c_started"
.LASF76:
	.string	"buf_y0"
.LASF77:
	.string	"buf_y1"
.LASF161:
	.string	"u8g2_SetDisplayRotation"
.LASF128:
	.string	"u8g2_font_info_t"
.LASF135:
	.string	"decode_bit_pos"
.LASF80:
	.string	"user_x0"
.LASF81:
	.string	"user_x1"
.LASF127:
	.string	"start_pos_unicode"
.LASF158:
	.string	"u8g2_SetupBuffer"
.LASF178:
	.string	"u8g2_apply_clip_window"
.LASF97:
	.string	"draw_color"
.LASF136:
	.string	"is_transparent"
.LASF49:
	.string	"post_reset_wait_ms"
.LASF79:
	.string	"height"
.LASF102:
	.string	"update_page_win"
.LASF26:
	.string	"cad_cb"
.LASF56:
	.string	"write_pulse_width_ns"
.LASF115:
	.string	"bits_per_char_x"
.LASF116:
	.string	"bits_per_char_y"
.LASF48:
	.string	"reset_pulse_width_ms"
.LASF0:
	.string	"__int8_t"
.LASF82:
	.string	"user_y0"
.LASF83:
	.string	"user_y1"
.LASF153:
	.string	"u8g2_update_page_win_r1"
.LASF148:
	.string	"u8g2_draw_l90_mirrorr_r0"
.LASF75:
	.string	"pixel_curr_row"
.LASF152:
	.string	"u8g2_update_page_win_r0"
.LASF13:
	.string	"uint16_t"
.LASF154:
	.string	"u8g2_update_page_win_r2"
.LASF155:
	.string	"u8g2_update_page_win_r3"
.LASF22:
	.string	"u8x8_struct"
.LASF18:
	.string	"__va_ndx"
.LASF70:
	.string	"tile_buf_ptr"
.LASF65:
	.string	"u8g2_uint_t"
.LASF71:
	.string	"tile_buf_height"
.LASF92:
	.string	"font_height_mode"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"__va_stk"
.LASF20:
	.string	"u8x8_t"
.LASF98:
	.string	"is_auto_page_clear"
.LASF141:
	.string	"long int"
.LASF61:
	.string	"pixel_width"
.LASF170:
	.string	"u8g2_draw_hv_line_2dir"
.LASF105:
	.string	"u8g2_update_page_win_cb"
.LASF84:
	.string	"clip_x0"
.LASF85:
	.string	"clip_x1"
.LASF53:
	.string	"spi_mode"
.LASF41:
	.string	"debounce_result_msg"
.LASF139:
	.string	"u8g2_font_decode_t"
.LASF93:
	.string	"font_ref_ascent"
.LASF40:
	.string	"debounce_state"
.LASF21:
	.string	"__va_list_tag"
.LASF94:
	.string	"font_ref_descent"
.LASF42:
	.string	"u8x8_display_info_t"
.LASF29:
	.string	"bus_clock"
.LASF1:
	.string	"__uint8_t"
.LASF37:
	.string	"gpio_result"
.LASF86:
	.string	"clip_y0"
.LASF87:
	.string	"clip_y1"
.LASF30:
	.string	"font"
.LASF142:
	.string	"sizetype"
.LASF143:
	.string	"long unsigned int"
.LASF110:
	.string	"bbx_mode"
.LASF32:
	.string	"x_offset"
.LASF138:
	.string	"bg_color"
.LASF176:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_setup.c"
.LASF55:
	.string	"data_setup_time_ns"
.LASF171:
	.string	"u8g2_IsIntersection"
.LASF44:
	.string	"chip_enable_level"
.LASF74:
	.string	"pixel_buf_height"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF179:
	.string	"u8g2_update_dimension_common"
.LASF72:
	.string	"tile_curr_row"
.LASF163:
	.string	"u8g2_Setup_null"
.LASF169:
	.string	"u8g2_cb_mirror"
.LASF51:
	.string	"sck_pulse_width_ns"
.LASF113:
	.string	"bits_per_char_width"
.LASF100:
	.string	"u8g2_cb_struct"
.LASF133:
	.string	"glyph_width"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"short unsigned int"
.LASF64:
	.string	"u8x8_char_cb"
.LASF99:
	.string	"u8g2_cb_t"
.LASF156:
	.string	"u8g2_SetMaxClipWindow"
.LASF45:
	.string	"chip_disable_level"
.LASF50:
	.string	"sda_setup_time_ns"
.LASF96:
	.string	"bitmap_transparency"
.LASF60:
	.string	"flipmode_x_offset"
.LASF25:
	.string	"display_cb"
.LASF23:
	.string	"display_info"
.LASF147:
	.string	"u8g2_draw_l90_r0"
.LASF145:
	.string	"u8g2"
.LASF150:
	.string	"u8g2_draw_l90_r2"
.LASF151:
	.string	"u8g2_draw_l90_r3"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
