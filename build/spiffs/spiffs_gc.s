	.file	"spiffs_gc.c"
	.text
.Ltext0:
	.section	.text.spiffs_gc_erase_block,"ax",@progbits
	.align	4
	.type	spiffs_gc_erase_block, @function
spiffs_gc_erase_block:
.LFB17:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_gc.c"
	.loc 1 11 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 15 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	spiffs_erase_block
.LVL1:
	mov.n	a5, a10
.LVL2:
	.loc 1 16 0
	bltz	a10, .L5
	movi.n	a4, 0
	j	.L3
.LVL3:
.L4:
.LBB2:
	.loc 1 22 0 discriminator 3
	mul16u	a11, a11, a3
	mov.n	a10, a2
	add.n	a11, a11, a4
	extui	a11, a11, 0, 16
	call8	spiffs_cache_drop_page
.LVL4:
	.loc 1 21 0 discriminator 3
	addi.n	a4, a4, 1
.LVL5:
.L3:
	.loc 1 21 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 24
	l32i.n	a11, a2, 28
	quou	a11, a8, a11
	bltu	a4, a11, .L4
.LVL6:
.L5:
.LBE2:
	.loc 1 27 0 is_stmt 1
	mov.n	a2, a5
.LVL7:
	retw.n
.LFE17:
	.size	spiffs_gc_erase_block, .-spiffs_gc_erase_block
	.section	.text.spiffs_gc_quick,"ax",@progbits
	.literal_position
	.literal .LC2, -10029
	.literal .LC3, 65535
	.align	4
	.global	spiffs_gc_quick
	.type	spiffs_gc_quick, @function
spiffs_gc_quick:
.LFB18:
	.loc 1 33 0
.LVL8:
	entry	sp, 64
.LCFI1:
.LVL9:
	.loc 1 33 0
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 8
	.loc 1 35 0
	l32i.n	a3, a2, 32
.LVL10:
	.loc 1 39 0
	l32i.n	a4, a2, 52
	.loc 1 35 0
	s32i.n	a3, sp, 0
.LVL11:
	.loc 1 46 0
	l32i.n	a3, a2, 28
.LVL12:
	.loc 1 39 0
	s32i.n	a4, sp, 12
.LVL13:
	.loc 1 46 0
	srli	a3, a3, 1
	s32i.n	a3, sp, 4
.LVL14:
	l32i.n	a7, sp, 0
	.loc 1 37 0
	movi.n	a8, 0
.LBB3:
	.loc 1 56 0
	movi.n	a9, 1
	j	.L7
.LVL15:
.L18:
.LBB4:
	.loc 1 58 0
	l32i.n	a10, a2, 16
	mull	a13, a3, a14
	add.n	a10, a8, a10
	l32i.n	a15, a2, 52
	add.n	a13, a10, a13
	movi.n	a12, 0
	movi.n	a11, 0x14
	mov.n	a10, a2
	s32i.n	a8, sp, 20
	s32i.n	a9, sp, 24
	call8	spiffs_phys_rd
.LVL16:
	.loc 1 61 0
	l32i.n	a8, sp, 20
	l32i.n	a9, sp, 24
	bnez.n	a10, .L8
	.loc 1 57 0
	l32i.n	a11, sp, 4
	l32i.n	a12, sp, 12
	mull	a14, a11, a3
	sub	a13, a6, a14
	addx2	a13, a13, a12
	j	.L9
.L14:
.LBB5:
	.loc 1 64 0
	l16ui	a12, a13, 0
.LVL17:
	.loc 1 65 0
	bnez.n	a12, .L10
	.loc 1 66 0
	addi.n	a5, a5, 1
.LVL18:
	extui	a5, a5, 0, 16
.LVL19:
	j	.L11
.L10:
	.loc 1 67 0
	l32r	a15, .LC3
	bne	a12, a15, .L12
	.loc 1 69 0
	addi.n	a4, a4, 1
.LVL20:
	.loc 1 70 0
	l32i.n	a12, sp, 8
	.loc 1 69 0
	extui	a4, a4, 0, 16
.LVL21:
	.loc 1 70 0
	bgeu	a12, a4, .L11
.LVL22:
.L12:
	.loc 1 77 0
	movi.n	a3, 1
	.loc 1 78 0
	mov.n	a10, a3
.LVL23:
	.loc 1 77 0
	moveqz	a10, a10, a11
	movnez	a3, a11, a11
	j	.L8
.LVL24:
.L11:
	.loc 1 81 0
	addi.n	a6, a6, 1
.LVL25:
	addi.n	a13, a13, 2
.LVL26:
.L9:
.LBE5:
	.loc 1 61 0 discriminator 1
	l32i.n	a15, sp, 4
	sub	a11, a6, a14
	bge	a11, a15, .L8
	.loc 1 63 0
	l32i.n	a15, a2, 28
	l32i.n	a12, a2, 24
	quou	a12, a12, a15
	slli	a11, a12, 1
	quou	a11, a11, a15
	mov.n	a15, a9
	movnez	a15, a11, a11
	.loc 1 62 0
	sub	a12, a12, a15
	blt	a6, a12, .L14
.LVL27:
.L8:
	.loc 1 83 0
	addi.n	a3, a3, 1
.LVL28:
.LBE4:
	.loc 1 56 0
	beqz.n	a10, .L15
	j	.L40
.LVL29:
.L24:
.LBE3:
	movi.n	a3, 0
.LVL30:
	mov.n	a4, a3
	mov.n	a5, a3
	mov.n	a6, a3
.LVL31:
.L15:
.LBB6:
	.loc 1 56 0 is_stmt 0 discriminator 1
	l32i.n	a14, a2, 28
	l32i.n	a10, a2, 24
	quou	a10, a10, a14
	slli	a10, a10, 1
	quou	a10, a10, a14
	moveqz	a10, a9, a10
	blt	a3, a10, .L18
	j	.L19
.LVL32:
.L40:
	.loc 1 85 0 is_stmt 1
	bnei	a10, 1, .L20
.LVL33:
.L19:
	.loc 1 88 0
	l32i.n	a11, a2, 28
	l32i.n	a3, a2, 24
	add.n	a10, a5, a4
	quou	a3, a3, a11
	slli	a6, a3, 1
	quou	a6, a6, a11
	moveqz	a6, a9, a6
	sub	a3, a3, a6
	mov.n	a6, a10
	bne	a3, a10, .L30
	.loc 1 88 0 is_stmt 0 discriminator 4
	l32i.n	a3, sp, 8
	bltu	a3, a4, .L30
	.loc 1 91 0 is_stmt 1
	l32i	a3, a2, 80
	.loc 1 92 0
	l32i.n	a11, sp, 16
	.loc 1 91 0
	sub	a5, a3, a5
	s32i	a5, a2, 80
	.loc 1 92 0
	mov.n	a10, a2
	call8	spiffs_gc_erase_block
.LVL34:
	.loc 1 93 0
	j	.L23
.LVL35:
.L30:
	movi.n	a10, 0
.LVL36:
.L20:
	.loc 1 98 0
	l32i.n	a3, a2, 24
	addi.n	a7, a7, -1
.LVL37:
	add.n	a8, a8, a3
.LVL38:
.LBE6:
	.loc 1 50 0
	bnez.n	a10, .L23
.LVL39:
.L7:
	l32i.n	a4, sp, 0
	sub	a3, a4, a7
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 16
.LVL40:
	.loc 1 50 0 is_stmt 0 discriminator 1
	bnez.n	a7, .L24
	.loc 1 102 0 is_stmt 1
	l32r	a10, .LC2
.LVL41:
.L23:
	.loc 1 105 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE18:
	.size	spiffs_gc_quick, .-spiffs_gc_quick
	.section	.text.spiffs_gc_erase_page_stats,"ax",@progbits
	.literal_position
	.literal .LC4, 65535
	.align	4
	.global	spiffs_gc_erase_page_stats
	.type	spiffs_gc_erase_page_stats, @function
spiffs_gc_erase_page_stats:
.LFB20:
	.loc 1 201 0
.LVL43:
	entry	sp, 48
.LCFI2:
.LVL44:
	.loc 1 201 0
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 4
	.loc 1 205 0
	l32i.n	a3, a2, 52
.LVL45:
	.loc 1 204 0
	l32i.n	a6, a2, 28
	.loc 1 205 0
	s32i.n	a3, sp, 0
	movi.n	a3, 0
	.loc 1 204 0
	srli	a6, a6, 1
.LVL46:
	.loc 1 208 0
	mov.n	a8, a3
	.loc 1 207 0
	mov.n	a7, a3
	.loc 1 206 0
	mov.n	a4, a3
	.loc 1 203 0
	mov.n	a5, a3
	.loc 1 211 0
	movi.n	a9, 1
	j	.L42
.LVL47:
.L51:
.LBB7:
	.loc 1 213 0
	l32i.n	a10, sp, 4
	l32i.n	a15, a2, 52
	mull	a13, a10, a13
	l32i.n	a10, a2, 16
	movi.n	a12, 0
	add.n	a13, a13, a10
	mull	a10, a5, a14
	movi.n	a11, 0x14
	add.n	a13, a13, a10
	mov.n	a10, a2
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	call8	spiffs_phys_rd
.LVL48:
	.loc 1 216 0
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	bnez.n	a10, .L43
	l32i.n	a11, sp, 0
	sub	a13, a4, a3
	addx2	a13, a13, a11
.LBB8:
	.loc 1 219 0
	l32r	a14, .LC4
	j	.L44
.LVL49:
.L48:
	.loc 1 218 0
	l16ui	a11, a13, 0
.LVL50:
	.loc 1 219 0
	beq	a11, a14, .L45
	.loc 1 220 0
	bnez.n	a11, .L46
	.loc 1 221 0
	addi.n	a7, a7, 1
.LVL51:
	j	.L45
.L46:
	.loc 1 223 0
	addi.n	a8, a8, 1
.LVL52:
.L45:
	.loc 1 225 0
	addi.n	a4, a4, 1
.LVL53:
	addi.n	a13, a13, 2
.LVL54:
.L44:
.LBE8:
	.loc 1 216 0 discriminator 1
	sub	a11, a4, a3
	bge	a11, a6, .L43
	.loc 1 217 0
	l32i.n	a15, a2, 28
	l32i.n	a11, a2, 24
	quou	a11, a11, a15
	slli	a12, a11, 1
	quou	a12, a12, a15
	moveqz	a12, a9, a12
	sub	a11, a11, a12
	blt	a4, a11, .L48
.L43:
	.loc 1 227 0
	addi.n	a5, a5, 1
.LVL55:
	add.n	a3, a3, a6
.LBE7:
	.loc 1 211 0
	bnez.n	a10, .L49
.LVL56:
.L42:
	.loc 1 211 0 is_stmt 0 discriminator 1
	l32i.n	a14, a2, 28
	l32i.n	a13, a2, 24
	quou	a10, a13, a14
	slli	a10, a10, 1
	quou	a10, a10, a14
	moveqz	a10, a9, a10
	blt	a5, a10, .L51
	movi.n	a10, 0
.LVL57:
.L49:
	.loc 1 230 0 is_stmt 1
	l32i	a3, a2, 76
	sub	a8, a3, a8
.LVL58:
	.loc 1 231 0
	l32i	a3, a2, 80
	.loc 1 230 0
	s32i	a8, a2, 76
	.loc 1 231 0
	sub	a7, a3, a7
.LVL59:
	s32i	a7, a2, 80
	.loc 1 233 0
	mov.n	a2, a10
.LVL60:
	retw.n
.LFE20:
	.size	spiffs_gc_erase_page_stats, .-spiffs_gc_erase_page_stats
	.section	.text.spiffs_gc_find_candidate,"ax",@progbits
	.literal_position
	.literal .LC7, -1431655765
	.literal .LC8, 65535
	.align	4
	.global	spiffs_gc_find_candidate
	.type	spiffs_gc_find_candidate, @function
spiffs_gc_find_candidate:
.LFB21:
	.loc 1 240 0
.LVL61:
	entry	sp, 112
.LCFI3:
.LVL62:
	.loc 1 242 0
	l32i.n	a6, a2, 32
	.loc 1 249 0
	l32r	a7, .LC7
	.loc 1 242 0
	s32i.n	a6, sp, 24
.LVL63:
	.loc 1 249 0
	l32i.n	a6, a2, 28
.LVL64:
	.loc 1 245 0
	l32i.n	a8, a2, 52
	.loc 1 249 0
	addi	a6, a6, -8
	muluh	a6, a6, a7
	.loc 1 250 0
	movi.n	a7, 0
	.loc 1 249 0
	l32i.n	a9, sp, 24
	.loc 1 250 0
	s32i.n	a7, a4, 0
.LVL65:
	.loc 1 249 0
	srli	a6, a6, 2
	.loc 1 251 0
	l32i.n	a12, a2, 28
	l32i.n	a10, a2, 56
	.loc 1 249 0
	minu	a6, a6, a9
	.loc 1 251 0
	movi	a11, 0xff
	.loc 1 245 0
	s32i.n	a8, sp, 56
.LVL66:
	.loc 1 249 0
	s32i.n	a6, sp, 16
.LVL67:
	.loc 1 251 0
	call8	memset
.LVL68:
	.loc 1 254 0
	l32i.n	a6, a2, 56
.LVL69:
	.loc 1 258 0
	l32i.n	a8, sp, 16
	.loc 1 254 0
	s32i.n	a6, sp, 28
.LVL70:
	.loc 1 260 0
	l32i.n	a9, sp, 28
	.loc 1 240 0
	extui	a5, a5, 0, 8
	.loc 1 260 0
	s32i.n	a9, a3, 0
	.loc 1 262 0
	l32i.n	a3, a2, 28
.LVL71:
	.loc 1 258 0
	addx2	a8, a8, a6
.LVL72:
	.loc 1 262 0
	srli	a3, a3, 1
	s32i.n	a3, sp, 44
	movi.n	a3, 0x32
	movnez	a3, a7, a5
	.loc 1 258 0
	s32i.n	a8, sp, 40
	movi.n	a6, -4
.LVL73:
	addi.n	a8, a8, 3
	s32i.n	a3, sp, 52
	l32i.n	a3, sp, 16
	and	a6, a8, a6
	addx4	a3, a3, a6
	s32i.n	a6, sp, 32
.LVL74:
	s32i.n	a3, sp, 48
	.loc 1 262 0
	l32i.n	a6, sp, 24
.LVL75:
	.loc 1 244 0
	s32i.n	a7, sp, 36
	j	.L55
.LVL76:
.L64:
.LBB9:
.LBB10:
	.loc 1 273 0
	l32i.n	a10, a2, 16
	l32i.n	a11, sp, 36
	mull	a13, a9, a14
	add.n	a10, a11, a10
	l32i.n	a15, a2, 52
	add.n	a13, a10, a13
	movi.n	a12, 0
	movi.n	a11, 0x14
	mov.n	a10, a2
	s32i	a8, sp, 64
	s32i.n	a9, sp, 60
	call8	spiffs_phys_rd
.LVL77:
	.loc 1 276 0
	l32i	a8, sp, 64
	l32i.n	a9, sp, 60
	bnez.n	a10, .L56
	l32i.n	a12, sp, 56
	sub	a13, a7, a5
	addx2	a13, a13, a12
.LBB11:
	.loc 1 280 0
	l32r	a14, .LC8
	j	.L57
.LVL78:
.L61:
	.loc 1 279 0
	l16ui	a11, a13, 0
.LVL79:
	.loc 1 280 0
	beq	a11, a14, .L80
	.loc 1 284 0
	bnez.n	a11, .L58
	.loc 1 285 0
	addi.n	a3, a3, 1
.LVL80:
	extui	a3, a3, 0, 16
.LVL81:
	j	.L59
.L58:
	.loc 1 287 0
	addi.n	a8, a8, 1
.LVL82:
	extui	a8, a8, 0, 16
.LVL83:
.L59:
	.loc 1 289 0
	addi.n	a7, a7, 1
.LVL84:
	addi.n	a13, a13, 2
.LVL85:
.L57:
.LBE11:
	.loc 1 276 0 discriminator 1
	l32i.n	a15, sp, 44
	sub	a11, a7, a5
	bge	a11, a15, .L56
	.loc 1 278 0
	l32i.n	a15, a2, 28
	l32i.n	a11, a2, 24
	quou	a11, a11, a15
	slli	a12, a11, 1
	quou	a12, a12, a15
	movi.n	a15, 1
	moveqz	a12, a15, a12
	.loc 1 277 0
	sub	a11, a11, a12
	blt	a7, a11, .L61
	j	.L56
.LVL86:
.L80:
.LBB12:
	.loc 1 282 0
	movi.n	a10, 1
.LVL87:
.L56:
	l32i.n	a11, sp, 44
.LBE12:
	.loc 1 291 0
	addi.n	a9, a9, 1
.LVL88:
	add.n	a5, a5, a11
.LBE10:
	.loc 1 271 0
	bnez.n	a10, .L62
.LVL89:
.L79:
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32i.n	a14, a2, 28
	l32i.n	a10, a2, 24
	movi.n	a12, 1
	quou	a10, a10, a14
	slli	a10, a10, 1
	quou	a10, a10, a14
	moveqz	a10, a12, a10
	blt	a9, a10, .L64
	j	.L65
.LVL90:
.L62:
	.loc 1 293 0 is_stmt 1
	bnei	a10, 1, .L66
.LVL91:
.L65:
.LBB13:
	.loc 1 300 0
	l32i.n	a10, a2, 28
	l32i.n	a9, a2, 24
	l32i.n	a11, sp, 20
	quou	a5, a9, a10
	slli	a5, a5, 1
	l32i.n	a13, a2, 16
	quou	a5, a5, a10
	movi.n	a15, 1
	mull	a9, a11, a9
	moveqz	a5, a15, a5
	mull	a5, a5, a10
	addi	a7, a13, -2
	add.n	a13, a9, a7
	mov.n	a15, sp
	movi.n	a14, 2
	add.n	a13, a13, a5
	movi.n	a12, 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	s32i	a8, sp, 64
	call8	spiffs_phys_rd
.LVL92:
	.loc 1 303 0
	l32i	a8, sp, 64
	bltz	a10, .L69
	.loc 1 306 0
	l16ui	a5, a2, 86
	l16ui	a7, sp, 0
	bgeu	a7, a5, .L70
	j	.L85
.L70:
	.loc 1 309 0
	addi.n	a5, a5, -1
.L85:
	.loc 1 312 0
	addx4	a3, a3, a3
	.loc 1 309 0
	sub	a5, a5, a7
	.loc 1 312 0
	sub	a8, a3, a8
	l32i.n	a3, sp, 52
	.loc 1 309 0
	extui	a5, a5, 0, 16
.LVL93:
	.loc 1 312 0
	mull	a5, a5, a3
.LVL94:
	.loc 1 318 0
	l32i.n	a7, sp, 32
	.loc 1 312 0
	add.n	a8, a8, a5
.LVL95:
	.loc 1 316 0
	movi.n	a3, 0
	l32i.n	a5, sp, 28
	.loc 1 319 0
	l32r	a13, .LC8
	.loc 1 318 0
	j	.L72
.LVL96:
.L78:
	.loc 1 319 0
	l16ui	a9, a5, 0
	mov.n	a12, a5
	bne	a9, a13, .L73
	.loc 1 320 0
	l32i.n	a9, sp, 20
	s16i	a9, a5, 0
	.loc 1 321 0
	l32i.n	a5, sp, 32
	addx4	a3, a3, a5
.LVL97:
	s32i.n	a8, a3, 0
	.loc 1 322 0
	j	.L74
.LVL98:
.L73:
	.loc 1 323 0
	l32i.n	a11, a7, 0
	mov.n	a9, a7
	addi.n	a5, a5, 2
	addi.n	a7, a7, 4
	bge	a11, a8, .L75
.LBB14:
	.loc 1 324 0
	l32i.n	a5, sp, 16
	.loc 1 325 0
	l32i.n	a7, sp, 40
	.loc 1 324 0
	addi	a11, a5, -2
.LVL99:
	.loc 1 325 0
	l32i.n	a5, sp, 48
	j	.L76
.L77:
	.loc 1 326 0
	addi	a14, a7, -2
	l16ui	a14, a14, 0
	.loc 1 327 0
	addi	a5, a5, -8
	l32i.n	a5, a5, 0
	.loc 1 326 0
	s16i	a14, a7, 0
	.loc 1 327 0
	s32i.n	a5, a13, 0
	.loc 1 328 0
	addi.n	a11, a11, -1
.LVL100:
	mov.n	a5, a13
.L76:
	addi	a7, a7, -2
	addi	a13, a5, -4
	.loc 1 325 0
	bge	a11, a3, .L77
	.loc 1 330 0
	l32i.n	a3, sp, 20
.LVL101:
	s16i	a3, a12, 0
	.loc 1 331 0
	s32i.n	a8, a9, 0
	.loc 1 332 0
	j	.L74
.LVL102:
.L75:
.LBE14:
	.loc 1 334 0
	addi.n	a3, a3, 1
.LVL103:
.L72:
	.loc 1 318 0
	l32i.n	a9, sp, 16
	blt	a3, a9, .L78
.LVL104:
.L74:
	.loc 1 336 0
	l32i.n	a3, a4, 0
	addi.n	a3, a3, 1
	s32i.n	a3, a4, 0
.LVL105:
.L66:
.LBE13:
	.loc 1 341 0
	l32i.n	a5, sp, 36
	l32i.n	a3, a2, 24
	addi.n	a6, a6, -1
.LVL106:
	add.n	a5, a5, a3
	s32i.n	a5, sp, 36
.LVL107:
.LBE9:
	.loc 1 265 0
	bnez.n	a10, .L69
.LVL108:
.L55:
	l32i.n	a8, sp, 24
	sub	a3, a8, a6
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 20
.LVL109:
	.loc 1 265 0 is_stmt 0 discriminator 1
	beqz.n	a6, .L84
	.loc 1 265 0
	movi.n	a5, 0
	mov.n	a9, a5
	mov.n	a8, a5
	mov.n	a3, a5
	mov.n	a7, a5
	j	.L79
.L84:
	mov.n	a10, a6
.LVL110:
.L69:
	.loc 1 345 0 is_stmt 1
	mov.n	a2, a10
.LVL111:
	retw.n
.LFE21:
	.size	spiffs_gc_find_candidate, .-spiffs_gc_find_candidate
	.section	.text.spiffs_gc_clean,"ax",@progbits
	.literal_position
	.literal .LC9, -10012
	.literal .LC10, -10004
	.literal .LC11, -10005
	.literal .LC12, -10006
	.literal .LC13, -10013
	.literal .LC14, 32766
	.literal .LC15, -32768
	.literal .LC16, -10002
	.align	4
	.global	spiffs_gc_clean
	.type	spiffs_gc_clean, @function
spiffs_gc_clean:
.LFB22:
	.loc 1 377 0
.LVL112:
	entry	sp, 112
.LCFI4:
.LVL113:
	.loc 1 377 0
	mov.n	a6, a2
	.loc 1 379 0
	l32i.n	a2, a2, 28
.LVL114:
	.loc 1 377 0
	extui	a3, a3, 0, 16
	.loc 1 379 0
	srli	a2, a2, 1
	.loc 1 377 0
	s32i.n	a3, sp, 52
	.loc 1 379 0
	s32i.n	a2, sp, 56
.LVL115:
	.loc 1 385 0
	l32i.n	a3, a6, 56
.LVL116:
	.loc 1 382 0
	l32i.n	a2, a6, 52
.LVL117:
	.loc 1 390 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	addi	a10, sp, 16
	.loc 1 382 0
	s32i	a2, sp, 68
.LVL118:
	.loc 1 385 0
	s32i.n	a3, sp, 48
.LVL119:
	.loc 1 390 0
	call8	memset
.LVL120:
	.loc 1 393 0
	l16ui	a2, a6, 36
.LVL121:
	l32i.n	a5, sp, 52
	bne	a2, a5, .L87
	.loc 1 395 0
	l32i.n	a3, a6, 32
.LVL122:
	addi.n	a2, a5, 1
	remu	a2, a2, a3
	s16i	a2, a6, 36
	.loc 1 396 0
	movi.n	a2, 0
	s32i.n	a2, a6, 40
.L87:
.LBB15:
	.loc 1 596 0
	movi.n	a5, 0
	mov.n	a4, a5
	j	.L88
.LVL123:
.L131:
	.loc 1 405 0
	l32i.n	a2, sp, 56
	.loc 1 402 0
	movi.n	a8, 0
	.loc 1 405 0
	quos	a7, a4, a2
.LVL124:
	mull	a3, a2, a7
	.loc 1 402 0
	s8i	a8, sp, 32
	s32i.n	a3, sp, 60
	.loc 1 406 0
	movi.n	a10, 1
	.loc 1 408 0
	movi.n	a3, 0
	j	.L89
.LVL125:
.L116:
.LBB16:
	.loc 1 410 0
	l32i.n	a8, sp, 52
	l32i.n	a2, a6, 16
	mull	a13, a13, a8
	l32i.n	a15, a6, 52
	add.n	a13, a13, a2
	mull	a2, a14, a7
	movi.n	a12, 0
	add.n	a13, a13, a2
	movi.n	a11, 0x14
	mov.n	a10, a6
	call8	spiffs_phys_rd
.LVL126:
	l32i.n	a8, sp, 60
	mov.n	a3, a10
	sub	a2, a4, a8
	l32i	a8, sp, 68
	.loc 1 414 0
	movi.n	a10, 1
.LVL127:
	addx2	a2, a2, a8
	s32i	a2, sp, 64
.LVL128:
	j	.L90
.LVL129:
.L113:
.LBB17:
	.loc 1 417 0
	l32i.n	a8, sp, 52
	.loc 1 416 0
	l32i	a5, sp, 64
	.loc 1 417 0
	mul16u	a3, a3, a8
	.loc 1 416 0
	l16ui	a9, a5, 0
.LVL130:
	.loc 1 417 0
	extui	a3, a3, 0, 16
	extui	a5, a10, 0, 16
.LVL131:
	movi.n	a8, 1
	moveqz	a5, a8, a10
	add.n	a3, a3, a4
	.loc 1 420 0
	l32i.n	a11, sp, 16
	.loc 1 417 0
	add.n	a5, a5, a3
	extui	a5, a5, 0, 16
.LVL132:
	.loc 1 420 0
	beq	a11, a8, .L93
	.loc 1 420 0 is_stmt 0 discriminator 4
	beqz.n	a11, .L94
	beqi	a11, 2, .L95
	j	.L175
.L94:
	.loc 1 423 0 is_stmt 1
	sext	a2, a9, 15
	movi.n	a10, 1
.LVL133:
	mov.n	a3, a11
	blt	a2, a10, .L92
	.loc 1 427 0
	movi.n	a2, 1
	s8i	a2, sp, 32
	.loc 1 428 0
	s16i	a9, sp, 20
	.loc 1 429 0
	s16i	a5, sp, 26
.LVL134:
	.loc 1 430 0
	mov.n	a10, a11
	j	.L92
.LVL135:
.L93:
	.loc 1 436 0
	l16ui	a12, sp, 20
	mov.n	a10, a11
.LVL136:
	mov.n	a3, a2
	bne	a12, a9, .L92
.LBB18:
	.loc 1 438 0
	l32i.n	a10, a6, 16
	mull	a13, a5, a13
	addi	a15, sp, 36
	add.n	a13, a13, a10
	movi.n	a14, 5
	mov.n	a12, a2
	movi.n	a11, 0x15
	mov.n	a10, a6
	s32i	a9, sp, 72
	call8	spiffs_phys_rd
.LVL137:
	mov.n	a3, a10
	.loc 1 440 0
	l32i	a9, sp, 72
	bltz	a10, .L150
	.loc 1 442 0
	l32i.n	a11, a6, 28
	movi	a12, -0x8e
	add.n	a12, a11, a12
	l16ui	a10, sp, 38
.LVL138:
	srli	a12, a12, 1
	mov.n	a13, a2
	bltu	a10, a12, .L97
	.loc 1 442 0 is_stmt 0 discriminator 1
	addi	a2, a11, -8
	sub	a10, a10, a12
	srli	a2, a2, 1
	quou	a2, a10, a2
	addi.n	a13, a2, 1
.L97:
	.loc 1 442 0 discriminator 4
	l16ui	a2, sp, 22
	bne	a13, a2, .L132
.LBB19:
	.loc 1 446 0 is_stmt 1
	l8ui	a3, sp, 40
.LVL139:
	sext	a3, a3, 7
	bgez	a3, .L99
	.loc 1 448 0
	addi	a3, sp, 42
	movi.n	a12, 0
	s32i.n	a3, sp, 0
	mov.n	a15, a5
	addi	a14, sp, 36
	mov.n	a13, a9
	mov.n	a11, a12
	mov.n	a10, a6
	call8	spiffs_page_move
.LVL140:
	.loc 1 450 0
	bltz	a10, .L155
	.loc 1 452 0
	l32i.n	a3, sp, 52
	l32i.n	a13, a6, 24
	l32i.n	a14, a6, 28
	mull	a13, a3, a13
	l32i.n	a3, a6, 16
	l32i.n	a15, a6, 52
	add.n	a3, a13, a3
	mull	a13, a7, a14
	movi.n	a12, 0
	add.n	a13, a3, a13
	movi.n	a11, 0x14
	mov.n	a10, a6
.LVL141:
	call8	spiffs_phys_rd
.LVL142:
	mov.n	a3, a10
.LVL143:
	.loc 1 455 0
	bgez	a10, .L101
	j	.L150
.LVL144:
.L99:
	.loc 1 461 0
	mov.n	a11, a5
	mov.n	a10, a6
	call8	spiffs_page_delete
.LVL145:
	mov.n	a3, a10
	.loc 1 462 0
	bltz	a10, .L150
	.loc 1 463 0
	movi.n	a9, -1
	s16i	a9, sp, 42
.LVL146:
.L101:
	l16ui	a9, sp, 38
	l16ui	a10, sp, 42
	.loc 1 466 0
	bnez.n	a2, .L102
	.loc 1 468 0
	l32i.n	a8, sp, 48
	addx2	a9, a9, a8
	s16i	a10, a9, 142
	j	.L132
.L102:
	.loc 1 472 0
	l32i.n	a2, a6, 28
	movi	a11, -0x8e
	add.n	a11, a2, a11
	srli	a11, a11, 1
	bgeu	a9, a11, .L104
	j	.L177
.L104:
	.loc 1 472 0 is_stmt 0 discriminator 2
	addi	a2, a2, -8
	sub	a9, a9, a11
	srli	a2, a2, 1
	remu	a9, a9, a2
.L177:
	addi.n	a9, a9, 4
	l32i.n	a2, sp, 48
	slli	a9, a9, 1
	add.n	a9, a2, a9
	s16i	a10, a9, 0
	j	.L132
.LVL147:
.L95:
.LBE19:
.LBE18:
	.loc 1 480 0 is_stmt 1
	addmi	a11, a9, -0x8000
	mov.n	a3, a2
	l32r	a2, .LC14
	extui	a11, a11, 0, 16
	movi.n	a10, 1
.LVL148:
	bltu	a2, a11, .L92
.LBB20:
	.loc 1 486 0
	l32i.n	a2, a6, 16
	mull	a13, a5, a13
	addi	a15, sp, 36
	movi.n	a14, 5
	add.n	a13, a13, a2
	mov.n	a12, a3
	movi.n	a11, 0x15
	mov.n	a10, a6
	s32i	a9, sp, 72
	call8	spiffs_phys_rd
.LVL149:
	.loc 1 488 0
	l32i	a9, sp, 72
	bltz	a10, .L155
	.loc 1 489 0
	l8ui	a2, sp, 40
	sext	a2, a2, 7
	bgez	a2, .L108
	.loc 1 491 0
	movi.n	a12, 0
	addi	a2, sp, 42
	mov.n	a13, a9
	s32i.n	a2, sp, 0
	mov.n	a15, a5
	addi	a14, sp, 36
	mov.n	a11, a12
	mov.n	a10, a6
.LVL150:
	call8	spiffs_page_move
.LVL151:
	.loc 1 493 0
	l32i	a9, sp, 72
	bltz	a10, .L155
	.loc 1 494 0
	l16ui	a15, sp, 42
	l16ui	a14, sp, 38
	movi.n	a2, 0
	mov.n	a13, a9
	movi.n	a12, 3
	addi	a11, sp, 36
	mov.n	a10, a6
.LVL152:
	s32i.n	a2, sp, 0
	call8	spiffs_cb_object_event
.LVL153:
	.loc 1 497 0
	l32i.n	a13, a6, 24
	l32i.n	a3, sp, 52
	l32i.n	a14, a6, 28
	mull	a13, a3, a13
	l32i.n	a3, a6, 16
	l32i.n	a15, a6, 52
	add.n	a3, a13, a3
	mull	a13, a7, a14
	mov.n	a12, a2
	add.n	a13, a3, a13
	movi.n	a11, 0x14
	mov.n	a10, a6
	call8	spiffs_phys_rd
.LVL154:
	mov.n	a3, a10
.LVL155:
	.loc 1 500 0
	bge	a10, a2, .L132
	j	.L150
.LVL156:
.L108:
	.loc 1 506 0
	mov.n	a11, a5
	mov.n	a10, a6
.LVL157:
	s32i	a9, sp, 72
	call8	spiffs_page_delete
.LVL158:
	mov.n	a3, a10
.LVL159:
	.loc 1 507 0
	l32i	a9, sp, 72
	bnez.n	a10, .L110
	.loc 1 508 0
	l16ui	a14, sp, 38
	s32i.n	a10, sp, 0
	mov.n	a11, a10
	mov.n	a15, a5
	mov.n	a13, a9
	movi.n	a12, 2
	mov.n	a10, a6
	call8	spiffs_cb_object_event
.LVL160:
	j	.L132
.L110:
	.loc 1 512 0
	bltz	a10, .L150
.L132:
.LVL161:
	movi.n	a10, 1
	j	.L92
.LVL162:
.L175:
.LBE20:
	.loc 1 516 0
	mov.n	a10, a2
.LVL163:
	.loc 1 420 0
	mov.n	a3, a2
.LVL164:
.L92:
	l32i	a8, sp, 64
	.loc 1 519 0
	addi.n	a4, a4, 1
.LVL165:
	addi.n	a8, a8, 2
	s32i	a8, sp, 64
.LVL166:
.L90:
.LBE17:
	.loc 1 414 0
	movi.n	a2, 0
	bne	a3, a2, .L111
	bbc	a10, a2, .L111
	.loc 1 414 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 60
	sub	a3, a4, a8
	l32i.n	a8, sp, 56
	bge	a3, a8, .L147
	.loc 1 415 0 is_stmt 1
	l32i.n	a13, a6, 28
	l32i.n	a3, a6, 24
	movi.n	a9, 1
	quou	a3, a3, a13
	slli	a10, a3, 1
	quou	a10, a10, a13
	movnez	a9, a10, a10
	sub	a9, a3, a9
	blt	a4, a9, .L113
.L147:
.LVL167:
	movi.n	a10, 1
.LVL168:
	mov.n	a3, a2
.LVL169:
.L111:
	l32i.n	a2, sp, 60
	l32i.n	a8, sp, 56
	.loc 1 521 0
	addi.n	a7, a7, 1
.LVL170:
	add.n	a2, a2, a8
	s32i.n	a2, sp, 60
.LVL171:
.L89:
.LBE16:
	.loc 1 408 0
	bnez.n	a3, .L114
	bbci	a10, 0, .L114
	.loc 1 408 0 is_stmt 0 discriminator 1
	l32i.n	a14, a6, 28
	l32i.n	a13, a6, 24
	movi.n	a3, 1
	quou	a2, a13, a14
	slli	a2, a2, 1
	quou	a2, a2, a14
	moveqz	a2, a3, a2
	blt	a7, a2, .L116
	j	.L117
.L114:
	.loc 1 523 0 is_stmt 1
	bnez.n	a3, .L150
.L117:
	.loc 1 526 0
	l32i.n	a7, sp, 16
.LVL172:
	beqi	a7, 1, .L119
	beqz.n	a7, .L120
	beqi	a7, 2, .L121
	j	.L176
.L120:
	.loc 1 528 0
	l8ui	a2, sp, 32
	beqz.n	a2, .L122
.LBB21:
	.loc 1 535 0
	movi.n	a2, 1
	s32i.n	a2, sp, 16
	.loc 1 536 0
	l32i.n	a2, a6, 28
	l32i.n	a13, a6, 16
	mull	a2, a5, a2
	addi	a15, sp, 36
	movi.n	a14, 5
	add.n	a13, a2, a13
	mov.n	a12, a7
	movi.n	a11, 0x15
	mov.n	a10, a6
	.loc 1 533 0
	s32i.n	a4, sp, 28
.LVL173:
	.loc 1 536 0
	call8	spiffs_phys_rd
.LVL174:
	.loc 1 538 0
	bltz	a10, .L155
	.loc 1 539 0
	l32i.n	a3, a6, 28
	movi	a9, -0x8e
	add.n	a9, a3, a9
	l16ui	a2, sp, 38
	srli	a9, a9, 1
	bltu	a2, a9, .L124
	.loc 1 539 0 is_stmt 0 discriminator 1
	addi	a7, a3, -8
	sub	a2, a2, a9
	srli	a7, a7, 1
	quou	a7, a2, a7
	addi.n	a7, a7, 1
	extui	a7, a7, 0, 16
.L124:
	.loc 1 541 0 is_stmt 1 discriminator 4
	l32r	a2, .LC15
	l16ui	a11, sp, 20
	addi	a14, sp, 42
	or	a11, a11, a2
	movi.n	a13, 0
	mov.n	a12, a7
	extui	a11, a11, 0, 16
	mov.n	a10, a6
.LVL175:
	.loc 1 539 0 discriminator 4
	s16i	a7, sp, 22
	.loc 1 541 0 discriminator 4
	call8	spiffs_obj_lu_find_id_and_span
.LVL176:
	.loc 1 542 0 discriminator 4
	l32r	a2, .LC16
	bne	a10, a2, .L125
	.loc 1 547 0
	l16ui	a11, sp, 26
	mov.n	a10, a6
.LVL177:
	call8	spiffs_page_delete
.LVL178:
	mov.n	a2, a10
.LVL179:
	.loc 1 548 0
	bltz	a10, .L106
.LVL180:
	.loc 1 551 0
	movi.n	a3, 0
	s32i.n	a3, sp, 16
	j	.L126
.LVL181:
.L125:
	.loc 1 554 0
	bltz	a10, .L155
	.loc 1 556 0
	l32i.n	a14, a6, 28
	l16ui	a2, sp, 42
	l32i.n	a13, a6, 16
	mull	a2, a2, a14
	l32i.n	a15, a6, 56
	add.n	a13, a2, a13
	movi.n	a12, 0
	movi.n	a11, 0x15
	mov.n	a10, a6
.LVL182:
	call8	spiffs_phys_rd
.LVL183:
	mov.n	a2, a10
.LVL184:
	.loc 1 558 0
	bltz	a10, .L106
	.loc 1 561 0
	l32i.n	a8, sp, 48
	l8ui	a4, a8, 4
	bbsi	a4, 0, .L157
	.loc 1 561 0 is_stmt 0 discriminator 2
	sext	a3, a4, 7
	bgez	a3, .L158
	.loc 1 561 0 discriminator 4
	bbsi	a4, 1, .L159
	.loc 1 561 0 discriminator 6
	movi.n	a3, 4
	and	a4, a4, a3
	bnez.n	a4, .L160
	.loc 1 561 0 discriminator 8
	l8ui	a3, a8, 3
	l8ui	a9, a8, 2
	slli	a3, a3, 8
	or	a3, a3, a9
	bne	a7, a3, .L161
	.loc 1 562 0 is_stmt 1
	l16ui	a3, sp, 42
	s16i	a3, sp, 24
.LBE21:
	j	.L126
.LVL185:
.L155:
.LBB22:
	.loc 1 541 0
	mov.n	a2, a10
	retw.n
.LVL186:
.L157:
	.loc 1 561 0
	l32r	a2, .LC9
.LVL187:
	retw.n
.LVL188:
.L158:
	l32r	a2, .LC10
.LVL189:
	retw.n
.LVL190:
.L159:
	l32r	a2, .LC11
.LVL191:
	retw.n
.LVL192:
.L160:
	l32r	a2, .LC12
.LVL193:
	retw.n
.LVL194:
.L161:
	l32r	a2, .LC13
.LVL195:
	retw.n
.LVL196:
.L122:
.LBE22:
	.loc 1 565 0
	movi.n	a3, 2
	s32i.n	a3, sp, 16
.LVL197:
	.loc 1 566 0
	mov.n	a4, a2
	j	.L88
.LVL198:
.L119:
.LBB23:
	.loc 1 574 0
	movi.n	a3, 0
	.loc 1 576 0
	l16ui	a11, sp, 22
	.loc 1 574 0
	s32i.n	a3, sp, 16
	.loc 1 575 0
	l32i.n	a4, sp, 28
.LVL199:
	l32r	a2, .LC15
	l16ui	a13, sp, 24
	.loc 1 576 0
	bne	a11, a3, .L128
	.loc 1 578 0
	l16ui	a12, sp, 20
	l32i.n	a14, a6, 56
	or	a12, a2, a12
	addi	a2, sp, 36
	s32i.n	a2, sp, 8
	s32i.n	a11, sp, 4
	s32i.n	a11, sp, 0
	mov.n	a15, a11
	extui	a12, a12, 0, 16
	mov.n	a10, a6
	call8	spiffs_object_update_index_hdr
.LVL200:
	mov.n	a2, a10
.LVL201:
	.loc 1 580 0
	bge	a10, a3, .L126
	retw.n
.LVL202:
.L128:
	.loc 1 583 0
	l16ui	a7, sp, 20
	addi	a9, sp, 36
	or	a2, a7, a2
	l32i.n	a12, a6, 56
	mov.n	a15, a13
	s32i.n	a9, sp, 0
	extui	a13, a2, 0, 16
	mov.n	a14, a3
	mov.n	a11, a3
	mov.n	a10, a6
	call8	spiffs_page_move
.LVL203:
	mov.n	a2, a10
.LVL204:
	.loc 1 585 0
	bltz	a10, .L106
	.loc 1 587 0
	l32i.n	a8, sp, 48
	.loc 1 586 0
	l16ui	a15, sp, 36
	.loc 1 587 0
	l8ui	a9, a8, 3
	l8ui	a14, a8, 2
	slli	a9, a9, 8
	.loc 1 586 0
	l32i.n	a11, a6, 56
	s32i.n	a3, sp, 0
	or	a14, a9, a14
	mov.n	a13, a7
	mov.n	a12, a3
	mov.n	a10, a6
	call8	spiffs_cb_object_event
.LVL205:
.LBE23:
	.loc 1 590 0
	j	.L126
.LVL206:
.L121:
	.loc 1 593 0
	movi.n	a2, 3
	s32i.n	a2, sp, 16
	.loc 1 594 0
	j	.L88
.LVL207:
.L126:
.LBE15:
	.loc 1 400 0
	beqz.n	a2, .L88
	retw.n
.LVL208:
.L176:
.LBB24:
	.loc 1 596 0
	movi.n	a4, 0
.LVL209:
.L88:
.LBE24:
	.loc 1 400 0 discriminator 1
	l32i.n	a2, sp, 16
	bnei	a2, 3, .L131
	movi.n	a2, 0
	retw.n
.LVL210:
.L150:
	mov.n	a2, a3
.LVL211:
.L106:
	.loc 1 604 0
	retw.n
.LFE22:
	.size	spiffs_gc_clean, .-spiffs_gc_clean
	.section	.text.spiffs_gc_check,"ax",@progbits
	.literal_position
	.literal .LC17, -10001
	.align	4
	.global	spiffs_gc_check
	.type	spiffs_gc_check, @function
spiffs_gc_check:
.LFB19:
	.loc 1 111 0
.LVL212:
	entry	sp, 64
.LCFI5:
	.loc 1 114 0
	l32i.n	a4, a2, 28
	l32i.n	a5, a2, 24
	movi.n	a6, 1
	quou	a5, a5, a4
	slli	a7, a5, 1
	quou	a7, a7, a4
	moveqz	a7, a6, a7
	.loc 1 115 0
	l32i.n	a6, a2, 32
	sub	a5, a5, a7
	addi	a6, a6, -2
	mull	a5, a6, a5
	l32i	a6, a2, 76
	.loc 1 118 0
	l32i	a7, a2, 72
	.loc 1 115 0
	sub	a6, a5, a6
	.loc 1 113 0
	l32i	a5, a2, 80
	addi	a8, a4, -5
	sub	a5, a6, a5
.LVL213:
	.loc 1 118 0
	bltui	a7, 4, .L180
	.loc 1 118 0 is_stmt 0 discriminator 1
	mull	a7, a8, a5
	.loc 1 120 0 is_stmt 1 discriminator 1
	movi.n	a10, 0
	.loc 1 118 0 discriminator 1
	blt	a3, a7, .L181
.L180:
.LVL214:
	.loc 1 128 0
	addi	a4, a4, -6
.LVL215:
	add.n	a4, a4, a3
	quou	a8, a4, a8
	s32i.n	a8, sp, 16
	blt	a6, a8, .L182
	movi.n	a7, 5
	j	.L183
.LVL216:
.L191:
	mov.n	a5, a8
.LVL217:
.L183:
.LBB25:
	.loc 1 144 0
	addi.n	a6, a5, -1
	or	a6, a5, a6
	extui	a6, a6, 31, 1
	mov.n	a13, a6
	mov.n	a12, sp
	addi.n	a11, sp, 4
	mov.n	a10, a2
	call8	spiffs_gc_find_candidate
.LVL218:
	.loc 1 145 0
	bltz	a10, .L181
	.loc 1 146 0
	l32i.n	a10, sp, 0
.LVL219:
	bnez.n	a10, .L185
	.loc 1 148 0
	l32i.n	a2, sp, 16
.LVL220:
	bge	a2, a5, .L182
	j	.L181
.LVL221:
.L185:
	.loc 1 153 0
	l32i.n	a8, sp, 4
	.loc 1 154 0
	movi.n	a9, 1
	.loc 1 153 0
	l16ui	a4, a8, 0
.LVL222:
	.loc 1 156 0
	mov.n	a10, a2
	.loc 1 154 0
	s8i	a9, a2, 84
.LVL223:
	.loc 1 156 0
	mov.n	a11, a4
	call8	spiffs_gc_clean
.LVL224:
	.loc 1 157 0
	movi.n	a9, 0
	s8i	a9, a2, 84
	.loc 1 163 0
	bltz	a10, .L181
	.loc 1 165 0
	mov.n	a11, a4
	mov.n	a10, a2
.LVL225:
	call8	spiffs_gc_erase_page_stats
.LVL226:
	.loc 1 166 0
	bltz	a10, .L181
	.loc 1 168 0
	mov.n	a11, a4
	mov.n	a10, a2
.LVL227:
	call8	spiffs_gc_erase_block
.LVL228:
	.loc 1 169 0
	bltz	a10, .L181
	.loc 1 172 0
	l32i.n	a11, a2, 28
	l32i.n	a15, a2, 24
	movi.n	a8, 1
	quou	a15, a15, a11
	slli	a12, a15, 1
	quou	a12, a12, a11
	l32i.n	a9, a2, 32
	movnez	a8, a12, a12
	addi	a9, a9, -2
	.loc 1 171 0
	sub	a8, a15, a8
	.loc 1 173 0
	l32i	a14, a2, 76
	.loc 1 171 0
	mull	a8, a8, a9
	.loc 1 173 0
	l32i	a13, a2, 80
	.loc 1 171 0
	sub	a8, a8, a14
	sub	a8, a8, a13
.LVL229:
	.loc 1 175 0
	bne	a5, a8, .L201
	.loc 1 175 0 is_stmt 0 discriminator 4
	bnez.n	a6, .L190
.L201:
.LVL230:
	addi.n	a7, a7, -1
.LVL231:
.LBE25:
	.loc 1 182 0 is_stmt 1
	bnez.n	a7, .L189
	j	.L190
.L189:
	.loc 1 181 0
	l32i	a5, a2, 72
.LVL232:
	bltui	a5, 3, .L191
	.loc 1 181 0 is_stmt 0 discriminator 1
	addi	a5, a11, -5
	mull	a5, a5, a8
	blt	a5, a3, .L191
.LVL233:
.L190:
	.loc 1 185 0 is_stmt 1
	movi.n	a2, 1
.LVL234:
	moveqz	a12, a2, a12
.LVL235:
	.loc 1 187 0
	sub	a4, a15, a12
.LVL236:
	mull	a5, a4, a9
	addi	a2, a11, -5
	sub	a4, a5, a14
	sub	a4, a4, a13
.LVL237:
	mull	a9, a4, a2
	bge	a9, a3, .L181
.LVL238:
.L182:
	.loc 1 188 0
	l32r	a10, .LC17
.LVL239:
.L181:
	.loc 1 196 0
	mov.n	a2, a10
	retw.n
.LFE19:
	.size	spiffs_gc_check, .-spiffs_gc_check
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 5 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_config.h"
	.file 6 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs.h"
	.file 7 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_nucleus.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1097
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0xc
	.4byte	.LASF157
	.4byte	.LASF158
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xa9
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x58
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1b
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1c
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1e
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x20
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x162
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x165
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x169
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x16d
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x4b
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x5b
	.4byte	0x115
	.uleb128 0x7
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x8
	.4byte	0xa3
	.4byte	0x134
	.uleb128 0x9
	.4byte	0xae
	.uleb128 0x9
	.4byte	0xae
	.uleb128 0x9
	.4byte	0x134
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x5d
	.4byte	0x115
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x5f
	.4byte	0x150
	.uleb128 0x7
	.byte	0x4
	.4byte	0x156
	.uleb128 0x8
	.4byte	0xa3
	.4byte	0x16a
	.uleb128 0x9
	.4byte	0xae
	.uleb128 0x9
	.4byte	0xae
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x63
	.4byte	0x189
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x67
	.4byte	0x16a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x6a
	.4byte	0x1cb
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.byte	0x72
	.4byte	0x194
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x6
	.byte	0x79
	.4byte	0x1e1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0xc
	.4byte	0x201
	.uleb128 0x9
	.4byte	0x189
	.uleb128 0x9
	.4byte	0x1cb
	.uleb128 0x9
	.4byte	0xae
	.uleb128 0x9
	.4byte	0xae
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x7e
	.4byte	0x220
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x6
	.byte	0x85
	.4byte	0x201
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x6
	.byte	0x88
	.4byte	0x236
	.uleb128 0x7
	.byte	0x4
	.4byte	0x23c
	.uleb128 0xc
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x220
	.uleb128 0x9
	.4byte	0xe7
	.uleb128 0x9
	.4byte	0xdb
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25c
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0x74
	.byte	0x6
	.byte	0xe4
	.4byte	0x389
	.uleb128 0xe
	.string	"cfg"
	.byte	0x6
	.byte	0xe6
	.4byte	0x3f2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x6
	.byte	0xe8
	.4byte	0xae
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x6
	.byte	0xeb
	.4byte	0xcf
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x6
	.byte	0xed
	.4byte	0x48
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0xef
	.4byte	0xcf
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x6
	.byte	0xf1
	.4byte	0x48
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x6
	.byte	0xf4
	.4byte	0x134
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0xf6
	.4byte	0x134
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x6
	.byte	0xf8
	.4byte	0x134
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x6
	.byte	0xfa
	.4byte	0xae
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x6
	.byte	0xfd
	.4byte	0xa3
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x100
	.4byte	0xae
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x102
	.4byte	0xae
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x104
	.4byte	0xae
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x106
	.4byte	0xc4
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x108
	.4byte	0xe7
	.byte	0x56
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x110
	.4byte	0x68
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x112
	.4byte	0xae
	.byte	0x5c
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x11a
	.4byte	0x1d6
	.byte	0x60
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x11c
	.4byte	0x22b
	.byte	0x64
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x11e
	.4byte	0xc4
	.byte	0x68
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x120
	.4byte	0x68
	.byte	0x6c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x122
	.4byte	0xae
	.byte	0x70
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x6
	.byte	0xc5
	.4byte	0x3f2
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x6
	.byte	0xc7
	.4byte	0x10a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0xc9
	.4byte	0x13a
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x6
	.byte	0xcb
	.4byte	0x145
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x6
	.byte	0xce
	.4byte	0xae
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x6
	.byte	0xd1
	.4byte	0xae
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x6
	.byte	0xd3
	.4byte	0xae
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x6
	.byte	0xd8
	.4byte	0xae
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x6
	.byte	0xdb
	.4byte	0xae
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x6
	.byte	0xe2
	.4byte	0x389
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x123
	.4byte	0x25c
	.uleb128 0x12
	.4byte	0xc4
	.4byte	0x419
	.uleb128 0x13
	.4byte	0x71
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3fd
	.uleb128 0x14
	.byte	0x5
	.byte	0x7
	.2byte	0x1ca
	.4byte	0x450
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x1cc
	.4byte	0xe7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x1ce
	.4byte	0xf3
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1d0
	.4byte	0xc4
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1d1
	.4byte	0x41f
	.uleb128 0x14
	.byte	0x8e
	.byte	0x7
	.2byte	0x1d4
	.4byte	0x4b4
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1da
	.4byte	0x450
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1dc
	.4byte	0x4b4
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x1de
	.4byte	0xae
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x1e0
	.4byte	0xff
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x1e2
	.4byte	0x409
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x1e5
	.4byte	0x409
	.byte	0x4d
	.byte	0
	.uleb128 0x12
	.4byte	0xc4
	.4byte	0x4c4
	.uleb128 0x13
	.4byte	0x71
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x1e7
	.4byte	0x45c
	.uleb128 0x14
	.byte	0x8
	.byte	0x7
	.2byte	0x1ea
	.4byte	0x4f4
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1eb
	.4byte	0x450
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1ec
	.4byte	0x4b4
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x1ed
	.4byte	0x4d0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.2byte	0x15b
	.4byte	0x526
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x160
	.4byte	0x500
	.uleb128 0x14
	.byte	0x14
	.byte	0x1
	.2byte	0x162
	.4byte	0x597
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x163
	.4byte	0x526
	.byte	0
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x164
	.4byte	0xe7
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x165
	.4byte	0xf3
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x166
	.4byte	0xdb
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x167
	.4byte	0xdb
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x168
	.4byte	0x48
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x169
	.4byte	0xc4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x16a
	.4byte	0x532
	.uleb128 0x16
	.4byte	.LASF160
	.byte	0x1
	.byte	0x9
	.4byte	0xa3
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x626
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0xa
	.4byte	0x419
	.4byte	.LLST0
	.uleb128 0x18
	.string	"bix"
	.byte	0x1
	.byte	0xb
	.4byte	0xcf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"res"
	.byte	0x1
	.byte	0xc
	.4byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x60f
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0xae
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL1
	.4byte	0x1032
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x20
	.4byte	0xa3
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x762
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0x21
	.4byte	0x419
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x21
	.4byte	0xb9
	.4byte	.LLST3
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x22
	.4byte	0xa3
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF103
	.byte	0x1
	.byte	0x23
	.4byte	0xae
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.byte	0x24
	.4byte	0xcf
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x1
	.byte	0x25
	.4byte	0xae
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0x26
	.4byte	0x48
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF107
	.byte	0x1
	.byte	0x27
	.4byte	0x762
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LASF108
	.byte	0x1
	.byte	0x2e
	.4byte	0x48
	.4byte	.LLST10
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x1
	.byte	0x33
	.4byte	0xb9
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LASF110
	.byte	0x1
	.byte	0x34
	.4byte	0xb9
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0x36
	.4byte	0x48
	.4byte	.LLST13
	.uleb128 0x1a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x749
	.uleb128 0x22
	.4byte	.LASF112
	.byte	0x1
	.byte	0x39
	.4byte	0x48
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x72e
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.byte	0x40
	.4byte	0xe7
	.4byte	.LLST14
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x103e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL34
	.4byte	0x5a3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe7
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x1
	.byte	0xc7
	.4byte	0xa3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x852
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0xc8
	.4byte	0x419
	.4byte	.LLST15
	.uleb128 0x17
	.string	"bix"
	.byte	0x1
	.byte	0xc9
	.4byte	0xcf
	.4byte	.LLST16
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0xca
	.4byte	0xa3
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0xcb
	.4byte	0x48
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LASF108
	.byte	0x1
	.byte	0xcc
	.4byte	0x48
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF107
	.byte	0x1
	.byte	0xcd
	.4byte	0x762
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0xce
	.4byte	0x48
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LASF115
	.byte	0x1
	.byte	0xcf
	.4byte	0xae
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.LASF116
	.byte	0x1
	.byte	0xd0
	.4byte	0xae
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x24
	.4byte	.LASF112
	.byte	0x1
	.byte	0xd4
	.4byte	0x48
	.uleb128 0x1a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x836
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.byte	0xda
	.4byte	0xe7
	.4byte	.LLST23
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL48
	.4byte	0x103e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF117
	.byte	0x1
	.byte	0xec
	.4byte	0xa3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa66
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0xed
	.4byte	0x419
	.4byte	.LLST24
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x1
	.byte	0xee
	.4byte	0xa66
	.4byte	.LLST25
	.uleb128 0x25
	.4byte	.LASF119
	.byte	0x1
	.byte	0xef
	.4byte	0xa72
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.byte	0xf0
	.4byte	0x7f
	.4byte	.LLST26
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0xf1
	.4byte	0xa3
	.4byte	.LLST27
	.uleb128 0x20
	.4byte	.LASF103
	.byte	0x1
	.byte	0xf2
	.4byte	0xae
	.4byte	.LLST28
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.byte	0xf3
	.4byte	0xcf
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x1
	.byte	0xf4
	.4byte	0xae
	.4byte	.LLST30
	.uleb128 0x20
	.4byte	.LASF107
	.byte	0x1
	.byte	0xf5
	.4byte	0x762
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0xf6
	.4byte	0x48
	.4byte	.LLST32
	.uleb128 0x20
	.4byte	.LASF121
	.byte	0x1
	.byte	0xf9
	.4byte	0x48
	.4byte	.LLST33
	.uleb128 0x20
	.4byte	.LASF122
	.byte	0x1
	.byte	0xfe
	.4byte	0xa6c
	.4byte	.LLST34
	.uleb128 0x20
	.4byte	.LASF123
	.byte	0x1
	.byte	0xff
	.4byte	0xa78
	.4byte	.LLST35
	.uleb128 0x26
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x106
	.4byte	0x48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xa55
	.uleb128 0x27
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x10a
	.4byte	0xb9
	.4byte	.LLST36
	.uleb128 0x27
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x10b
	.4byte	0xb9
	.4byte	.LLST37
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x10d
	.4byte	0x48
	.4byte	.LLST38
	.uleb128 0x1a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x9c6
	.uleb128 0x28
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x110
	.4byte	0x48
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x9ab
	.uleb128 0x27
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x117
	.4byte	0xe7
	.4byte	.LLST39
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL77
	.4byte	0x103e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x26
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x12b
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x131
	.4byte	0xe7
	.4byte	.LLST40
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x138
	.4byte	0xa3
	.4byte	.LLST41
	.uleb128 0x27
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x13c
	.4byte	0x48
	.4byte	.LLST42
	.uleb128 0x1a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xa2d
	.uleb128 0x27
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x144
	.4byte	0x48
	.4byte	.LLST43
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL92
	.4byte	0x103e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL68
	.4byte	0x104a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa6c
	.uleb128 0x7
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x7
	.byte	0x4
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x2a
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x179
	.4byte	0xa3
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xedf
	.uleb128 0x2b
	.string	"fs"
	.byte	0x1
	.2byte	0x179
	.4byte	0x419
	.4byte	.LLST44
	.uleb128 0x2b
	.string	"bix"
	.byte	0x1
	.2byte	0x179
	.4byte	0xcf
	.4byte	.LLST45
	.uleb128 0x2c
	.string	"res"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.4byte	.LLST46
	.uleb128 0x27
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x17b
	.4byte	0xedf
	.4byte	.LLST47
	.uleb128 0x27
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x17d
	.4byte	0x48
	.4byte	.LLST48
	.uleb128 0x27
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x17e
	.4byte	0x762
	.4byte	.LLST49
	.uleb128 0x2d
	.string	"gc"
	.byte	0x1
	.2byte	0x17f
	.4byte	0x597
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x180
	.4byte	0xdb
	.4byte	.LLST50
	.uleb128 0x27
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x181
	.4byte	0xee4
	.4byte	.LLST51
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x182
	.4byte	0xeea
	.4byte	.LLST51
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xec3
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x195
	.4byte	0x48
	.4byte	.LLST53
	.uleb128 0x27
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x196
	.4byte	0xc4
	.4byte	.LLST54
	.uleb128 0x1a
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0xd8f
	.uleb128 0x27
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x199
	.4byte	0x48
	.4byte	.LLST55
	.uleb128 0x1a
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xd74
	.uleb128 0x27
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xe7
	.4byte	.LLST56
	.uleb128 0x1a
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0xc62
	.uleb128 0x26
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0xc3a
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2e
	.4byte	.LVL140
	.4byte	0x1055
	.4byte	0xc05
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL142
	.4byte	0x103e
	.4byte	0xc23
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL145
	.4byte	0x1061
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL137
	.4byte	0x103e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x26
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2e
	.4byte	.LVL149
	.4byte	0x103e
	.4byte	0xcb6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL151
	.4byte	0x1055
	.4byte	0xcea
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL153
	.4byte	0x106d
	.4byte	0xd11
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL154
	.4byte	0x103e
	.4byte	0xd30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL158
	.4byte	0x1061
	.4byte	0xd4a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL160
	.4byte	0x106d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL126
	.4byte	0x103e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0xe38
	.uleb128 0x26
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x213
	.4byte	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x214
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2e
	.4byte	.LVL174
	.4byte	0x103e
	.4byte	0xde3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL176
	.4byte	0x1079
	.4byte	0xe09
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL178
	.4byte	0x1061
	.4byte	0xe1d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL183
	.4byte	0x103e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x23d
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.4byte	.LVL200
	.4byte	0x1085
	.4byte	0xe6c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL203
	.4byte	0x1055
	.4byte	0xe9e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL205
	.4byte	0x106d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL120
	.4byte	0x1091
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4c4
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4f4
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x6d
	.4byte	0xa3
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1015
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0x6e
	.4byte	0x419
	.4byte	.LLST57
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x6f
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x70
	.4byte	0xa3
	.4byte	.LLST58
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.byte	0x71
	.4byte	0xa3
	.4byte	.LLST59
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0x1
	.byte	0x74
	.4byte	0x48
	.4byte	.LLST60
	.uleb128 0x20
	.4byte	.LASF142
	.byte	0x1
	.byte	0x7b
	.4byte	0xae
	.4byte	.LLST61
	.uleb128 0x23
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x22
	.4byte	.LASF143
	.byte	0x1
	.byte	0x8b
	.4byte	0xa6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.4byte	.LASF144
	.byte	0x1
	.byte	0x8c
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.byte	0x8d
	.4byte	0xcf
	.4byte	.LLST62
	.uleb128 0x20
	.4byte	.LASF146
	.byte	0x1
	.byte	0x8e
	.4byte	0xa3
	.4byte	.LLST63
	.uleb128 0x2e
	.4byte	.LVL218
	.4byte	0x852
	.4byte	0xfc9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL224
	.4byte	0xa7e
	.4byte	0xfe3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL226
	.4byte	0x768
	.4byte	0xffd
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL228
	.4byte	0x5a3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF161
	.byte	0x5
	.byte	0x22
	.4byte	0x98
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_mutex
	.uleb128 0x31
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x7
	.2byte	0x300
	.uleb128 0x31
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x7
	.2byte	0x233
	.uleb128 0x31
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x7
	.2byte	0x209
	.uleb128 0x32
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x8
	.byte	0x19
	.uleb128 0x31
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x7
	.2byte	0x26f
	.uleb128 0x31
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x7
	.2byte	0x278
	.uleb128 0x31
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x7
	.2byte	0x29b
	.uleb128 0x31
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x7
	.2byte	0x255
	.uleb128 0x31
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x7
	.2byte	0x286
	.uleb128 0x33
	.4byte	.LASF150
	.4byte	.LASF150
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	.LVL15
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL43
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x72
	.sleb128 52
	.4byte	.LVL47
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL61
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	.LVL65
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68-1
	.4byte	.LVL76
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL76
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL63
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL63
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL66
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68-1
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL69
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0xa
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0xa
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL75
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL79
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL95
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL113
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL115
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL181
	.4byte	.LVL185
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL118
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL132
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL124
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL125
	.4byte	.LVL171
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL131
	.4byte	.LVL137-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.4byte	.LVL147
	.4byte	.LVL149-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL212
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL228
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x4
	.byte	0xb
	.2byte	0xd8ef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL213
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL217
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL229
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL235
	.4byte	.LVL237
	.2byte	0xf
	.byte	0x7f
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x79
	.sleb128 0
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL213
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL230
	.2byte	0x5
	.byte	0x35
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x5
	.byte	0x36
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL233
	.2byte	0x5
	.byte	0x35
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x36
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x74
	.sleb128 -5
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x15
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x36
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x35
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL223
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL217
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"user_data"
.LASF72:
	.string	"phys_erase_block"
.LASF131:
	.string	"cur_pix"
.LASF76:
	.string	"spiffs"
.LASF34:
	.string	"SPIFFS_CHECK_FIX_LOOKUP"
.LASF84:
	.string	"type"
.LASF38:
	.string	"spiffs_check_report"
.LASF30:
	.string	"spiffs_check_type"
.LASF78:
	.string	"span_ix"
.LASF92:
	.string	"FINISHED"
.LASF15:
	.string	"s32_t"
.LASF27:
	.string	"SPIFFS_CHECK_LOOKUP"
.LASF14:
	.string	"QueueHandle_t"
.LASF146:
	.string	"prev_free_pages"
.LASF102:
	.string	"max_free_pages"
.LASF26:
	.string	"spiffs_erase"
.LASF12:
	.string	"intptr_t"
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF37:
	.string	"SPIFFS_CHECK_DELETE_BAD_FILE"
.LASF135:
	.string	"new_data_pix"
.LASF22:
	.string	"spiffs_span_ix"
.LASF158:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spiffs"
.LASF94:
	.string	"state"
.LASF32:
	.string	"SPIFFS_CHECK_ERROR"
.LASF7:
	.string	"long int"
.LASF134:
	.string	"scan"
.LASF23:
	.string	"spiffs_obj_type"
.LASF152:
	.string	"spiffs_page_delete"
.LASF108:
	.string	"entries_per_page"
.LASF125:
	.string	"erase_count"
.LASF61:
	.string	"cache_size"
.LASF161:
	.string	"spiffs_mutex"
.LASF127:
	.string	"score"
.LASF148:
	.string	"spiffs_erase_block"
.LASF110:
	.string	"free_pages_in_block"
.LASF59:
	.string	"max_erase_count"
.LASF48:
	.string	"cursor_block_ix"
.LASF39:
	.string	"spiffs_check_callback"
.LASF117:
	.string	"spiffs_gc_find_candidate"
.LASF133:
	.string	"objix"
.LASF42:
	.string	"SPIFFS_CB_DELETED"
.LASF68:
	.string	"hal_write_f"
.LASF53:
	.string	"fd_count"
.LASF119:
	.string	"candidate_count"
.LASF41:
	.string	"SPIFFS_CB_UPDATED"
.LASF57:
	.string	"stats_p_deleted"
.LASF139:
	.string	"spiffs_gc_check"
.LASF96:
	.string	"cur_objix_spix"
.LASF9:
	.string	"long unsigned int"
.LASF21:
	.string	"spiffs_obj_id"
.LASF20:
	.string	"spiffs_page_ix"
.LASF16:
	.string	"u32_t"
.LASF156:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF90:
	.string	"MOVE_OBJ_DATA"
.LASF85:
	.string	"name"
.LASF83:
	.string	"size"
.LASF73:
	.string	"log_block_size"
.LASF93:
	.string	"spiffs_gc_clean_state"
.LASF101:
	.string	"spiffs_gc"
.LASF130:
	.string	"spiffs_gc_clean"
.LASF52:
	.string	"fd_space"
.LASF50:
	.string	"lu_work"
.LASF91:
	.string	"MOVE_OBJ_IX"
.LASF124:
	.string	"used_pages_in_block"
.LASF132:
	.string	"objix_hdr"
.LASF80:
	.string	"spiffs_page_header"
.LASF75:
	.string	"spiffs_config"
.LASF47:
	.string	"free_cursor_obj_lu_entry"
.LASF63:
	.string	"file_cb_f"
.LASF103:
	.string	"blocks"
.LASF147:
	.string	"spiffs_cache_drop_page"
.LASF11:
	.string	"__intptr_t"
.LASF143:
	.string	"cands"
.LASF153:
	.string	"spiffs_cb_object_event"
.LASF18:
	.string	"u8_t"
.LASF8:
	.string	"sizetype"
.LASF129:
	.string	"reorder_cand_ix"
.LASF120:
	.string	"fs_crammed"
.LASF54:
	.string	"err_code"
.LASF154:
	.string	"spiffs_obj_lu_find_id_and_span"
.LASF19:
	.string	"spiffs_block_ix"
.LASF144:
	.string	"count"
.LASF69:
	.string	"hal_erase_f"
.LASF122:
	.string	"cand_blocks"
.LASF55:
	.string	"free_blocks"
.LASF159:
	.string	"spiffs_t"
.LASF45:
	.string	"block_count"
.LASF106:
	.string	"cur_entry"
.LASF126:
	.string	"erase_age"
.LASF82:
	.string	"_align"
.LASF74:
	.string	"log_page_size"
.LASF140:
	.string	"free_pages"
.LASF115:
	.string	"dele"
.LASF28:
	.string	"SPIFFS_CHECK_INDEX"
.LASF36:
	.string	"SPIFFS_CHECK_DELETE_PAGE"
.LASF142:
	.string	"needed_pages"
.LASF62:
	.string	"check_cb_f"
.LASF113:
	.string	"spiffs_gc_quick"
.LASF40:
	.string	"SPIFFS_CB_CREATED"
.LASF13:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF141:
	.string	"tries"
.LASF89:
	.string	"FIND_OBJ_DATA"
.LASF88:
	.string	"spiffs_page_object_ix"
.LASF3:
	.string	"short int"
.LASF86:
	.string	"meta"
.LASF137:
	.string	"objix_pix"
.LASF138:
	.string	"new_objix_pix"
.LASF136:
	.string	"new_pix"
.LASF58:
	.string	"cleaning"
.LASF109:
	.string	"deleted_pages_in_block"
.LASF99:
	.string	"stored_scan_entry_index"
.LASF25:
	.string	"spiffs_write"
.LASF116:
	.string	"allo"
.LASF70:
	.string	"phys_size"
.LASF29:
	.string	"SPIFFS_CHECK_PAGE"
.LASF145:
	.string	"cand"
.LASF71:
	.string	"phys_addr"
.LASF98:
	.string	"cur_data_pix"
.LASF43:
	.string	"spiffs_fileop_type"
.LASF155:
	.string	"spiffs_object_update_index_hdr"
.LASF105:
	.string	"cur_block_addr"
.LASF149:
	.string	"spiffs_phys_rd"
.LASF151:
	.string	"spiffs_page_move"
.LASF10:
	.string	"char"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"free_cursor_block_ix"
.LASF160:
	.string	"spiffs_gc_erase_block"
.LASF128:
	.string	"cand_ix"
.LASF56:
	.string	"stats_p_allocated"
.LASF49:
	.string	"cursor_obj_lu_entry"
.LASF35:
	.string	"SPIFFS_CHECK_DELETE_ORPHANED_INDEX"
.LASF67:
	.string	"hal_read_f"
.LASF51:
	.string	"work"
.LASF4:
	.string	"short unsigned int"
.LASF104:
	.string	"cur_block"
.LASF97:
	.string	"cur_objix_pix"
.LASF111:
	.string	"obj_lookup_page"
.LASF17:
	.string	"u16_t"
.LASF112:
	.string	"entry_offset"
.LASF150:
	.string	"memset"
.LASF66:
	.string	"config_magic"
.LASF121:
	.string	"max_candidates"
.LASF100:
	.string	"obj_id_found"
.LASF79:
	.string	"flags"
.LASF24:
	.string	"spiffs_read"
.LASF157:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_gc.c"
.LASF64:
	.string	"mounted"
.LASF44:
	.string	"spiffs_file_callback"
.LASF114:
	.string	"spiffs_gc_erase_page_stats"
.LASF33:
	.string	"SPIFFS_CHECK_FIX_INDEX"
.LASF118:
	.string	"block_candidates"
.LASF95:
	.string	"cur_obj_id"
.LASF87:
	.string	"spiffs_page_object_ix_header"
.LASF107:
	.string	"obj_lu_buf"
.LASF81:
	.string	"p_hdr"
.LASF77:
	.string	"obj_id"
.LASF123:
	.string	"cand_scores"
.LASF60:
	.string	"cache"
.LASF31:
	.string	"SPIFFS_CHECK_PROGRESS"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
