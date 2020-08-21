	.file	"argon2-core.c"
	.text
.Ltext0:
	.section	.text.store32_le,"ax",@progbits
	.align	4
	.type	store32_le, @function
store32_le:
.LFB7:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 1 97 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 99 0
	srli	a9, a3, 8
	extui	a8, a3, 16, 16
	s8i	a3, a2, 0
	extui	a3, a3, 24, 8
.LVL1:
	s8i	a9, a2, 1
	s8i	a8, a2, 2
	s8i	a3, a2, 3
	retw.n
.LFE7:
	.size	store32_le, .-store32_le
	.section	.text.load_block,"ax",@progbits
	.literal_position
	.align	4
	.type	load_block, @function
load_block:
.LFB15:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.c"
	.loc 2 63 0
.LVL2:
	entry	sp, 48
.LCFI1:
.LVL3:
	.loc 2 63 0
	movi.n	a4, 0
	.loc 2 65 0
	movi	a5, 0x400
.LVL4:
.L3:
.LBB6:
.LBB7:
	.loc 1 44 0 discriminator 3
	add.n	a11, a3, a4
.LVL5:
	movi.n	a12, 8
	mov.n	a10, sp
	call8	memcpy
.LVL6:
.LBE7:
.LBE6:
	.loc 2 66 0 discriminator 3
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	add.n	a10, a2, a4
	s32i.n	a8, a10, 0
	s32i.n	a9, a10, 4
	addi.n	a4, a4, 8
.LVL7:
	.loc 2 65 0 discriminator 3
	bne	a4, a5, .L3
	.loc 2 68 0
	retw.n
.LFE15:
	.size	load_block, .-load_block
	.section	.text.initial_hash$part$0,"ax",@progbits
	.literal_position
	.literal .LC2, 4, 0
	.align	4
	.type	initial_hash$part$0, @function
initial_hash$part$0:
.LFB28:
	.loc 2 476 0
.LVL8:
	entry	sp, 48
	movi	a5, -0x1b0
	add.n	a5, sp, a5
	mov.n	a7, sp
.LCFI2:
	.loc 2 476 0
	movsp	sp, a5
	addi	a5, sp, 63
	srli	a5, a5, 6
	slli	a5, a5, 6
	.loc 2 485 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a13, 0x40
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_init
.LVL9:
	.loc 2 488 0
	l32i.n	a11, a3, 48
	mov.n	a10, a7
	call8	store32_le
.LVL10:
	.loc 2 489 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL11:
	.loc 2 491 0
	l32i.n	a11, a3, 4
	mov.n	a10, a7
	call8	store32_le
.LVL12:
	.loc 2 492 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL13:
	.loc 2 494 0
	l32i.n	a11, a3, 44
	mov.n	a10, a7
	call8	store32_le
.LVL14:
	.loc 2 495 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL15:
	.loc 2 497 0
	l32i.n	a11, a3, 40
	mov.n	a10, a7
	call8	store32_le
.LVL16:
	.loc 2 498 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL17:
	.loc 2 500 0
	movi.n	a11, 0x13
	mov.n	a10, a7
	call8	store32_le
.LVL18:
	.loc 2 501 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL19:
	.loc 2 503 0
	mov.n	a11, a4
	mov.n	a10, a7
	call8	store32_le
.LVL20:
	.loc 2 504 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL21:
	.loc 2 506 0
	l32i.n	a11, a3, 12
	mov.n	a10, a7
	call8	store32_le
.LVL22:
	.loc 2 507 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL23:
	.loc 2 509 0
	l32i.n	a11, a3, 8
	beqz.n	a11, .L7
	.loc 2 510 0
	movi.n	a4, 0
.LVL24:
	l32i.n	a12, a3, 12
	mov.n	a13, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL25:
	.loc 2 513 0
	l32i.n	a8, a3, 56
	bbc	a8, a4, .L7
	.loc 2 514 0
	l32i.n	a11, a3, 12
	l32i.n	a10, a3, 8
	call8	sodium_memzero
.LVL26:
	.loc 2 515 0
	s32i.n	a4, a3, 12
.L7:
	.loc 2 519 0
	l32i.n	a11, a3, 20
	mov.n	a10, a7
	call8	store32_le
.LVL27:
	.loc 2 520 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL28:
	.loc 2 522 0
	l32i.n	a11, a3, 16
	beqz.n	a11, .L9
	.loc 2 523 0
	l32i.n	a12, a3, 20
	movi.n	a13, 0
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL29:
.L9:
	.loc 2 527 0
	l32i.n	a11, a3, 28
	mov.n	a10, a7
	call8	store32_le
.LVL30:
	.loc 2 528 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL31:
	.loc 2 530 0
	l32i.n	a11, a3, 24
	beqz.n	a11, .L11
	.loc 2 532 0
	movi.n	a4, 0
	l32i.n	a12, a3, 28
	mov.n	a13, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL32:
	.loc 2 535 0
	l32i.n	a8, a3, 56
	bbci	a8, 1, .L11
	.loc 2 536 0
	l32i.n	a11, a3, 28
	l32i.n	a10, a3, 24
	call8	sodium_memzero
.LVL33:
	.loc 2 537 0
	s32i.n	a4, a3, 28
.L11:
	.loc 2 542 0
	l32i.n	a11, a3, 36
	mov.n	a10, a7
	call8	store32_le
.LVL34:
	.loc 2 543 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a7
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL35:
	.loc 2 545 0
	l32i.n	a11, a3, 32
	beqz.n	a11, .L13
	.loc 2 547 0
	l32i.n	a12, a3, 36
	movi.n	a13, 0
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_update
.LVL36:
.L13:
	.loc 2 552 0
	movi.n	a12, 0x40
	mov.n	a11, a2
	mov.n	a10, a5
	call8	crypto_generichash_blake2b_final
.LVL37:
	retw.n
.LFE28:
	.size	initial_hash$part$0, .-initial_hash$part$0
	.section	.text.init_block_value,"ax",@progbits
	.align	4
	.global	init_block_value
	.type	init_block_value, @function
init_block_value:
.LFB12:
	.loc 2 42 0
.LVL38:
	entry	sp, 32
.LCFI3:
	.loc 2 43 0
	movi	a12, 0x400
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	memset
.LVL39:
	retw.n
.LFE12:
	.size	init_block_value, .-init_block_value
	.section	.text.copy_block,"ax",@progbits
	.align	4
	.global	copy_block
	.type	copy_block, @function
copy_block:
.LFB13:
	.loc 2 48 0
.LVL40:
	entry	sp, 32
.LCFI4:
	.loc 2 49 0
	movi	a12, 0x400
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL41:
	retw.n
.LFE13:
	.size	copy_block, .-copy_block
	.section	.text.xor_block,"ax",@progbits
	.align	4
	.global	xor_block
	.type	xor_block, @function
xor_block:
.LFB14:
	.loc 2 54 0
.LVL42:
	entry	sp, 32
.LCFI5:
.LVL43:
	movi	a8, 0x80
	loop	a8, .L29_LEND
.LVL44:
.L29:
	.loc 2 57 0 discriminator 3
	l32i.n	a10, a2, 0
	l32i.n	a9, a3, 0
	xor	a9, a10, a9
	s32i.n	a9, a2, 0
	l32i.n	a10, a2, 4
	l32i.n	a9, a3, 4
	addi.n	a3, a3, 8
	xor	a9, a10, a9
	s32i.n	a9, a2, 4
	addi.n	a2, a2, 8
	.L29_LEND:
	.loc 2 59 0
	retw.n
.LFE14:
	.size	xor_block, .-xor_block
	.section	.text.finalize,"ax",@progbits
	.literal_position
	.literal .LC3, 4194303
	.align	4
	.global	finalize
	.type	finalize, @function
finalize:
.LFB20:
	.loc 2 187 0
.LVL45:
	entry	sp, 2096
.LCFI6:
	.loc 2 188 0
	beqz.n	a2, .L31
	beqz.n	a3, .L31
.LBB19:
	.loc 2 193 0
	l32i.n	a5, a3, 0
	.loc 2 192 0
	l32i.n	a11, a3, 16
	l32r	a4, .LC3
	addmi	a10, sp, 0x400
	add.n	a4, a11, a4
	l32i.n	a11, a5, 4
	slli	a4, a4, 10
	add.n	a11, a11, a4
	call8	copy_block
.LVL46:
	.loc 2 196 0
	movi.n	a5, 1
	j	.L33
.LVL47:
.L34:
.LBB20:
	.loc 2 199 0 discriminator 3
	l32i.n	a4, a3, 16
	.loc 2 198 0 discriminator 3
	addi.n	a5, a5, 1
.LVL48:
	.loc 2 200 0 discriminator 3
	l32i.n	a8, a3, 0
	.loc 2 199 0 discriminator 3
	mull	a4, a5, a4
.LVL49:
	l32i.n	a11, a8, 4
	addi.n	a4, a4, -1
.LVL50:
	slli	a4, a4, 10
.LVL51:
	add.n	a11, a11, a4
	addmi	a10, sp, 0x400
	call8	xor_block
.LVL52:
.L33:
.LBE20:
	.loc 2 196 0 discriminator 1
	l32i.n	a4, a3, 20
	bltu	a5, a4, .L34
	movi.n	a4, 0
	addmi	a5, sp, 0x800
.LVL53:
.L35:
.LBB21:
.LBB22:
.LBB23:
	.loc 2 75 0
	addmi	a6, sp, 0x400
	add.n	a8, a6, a4
	l32i.n	a9, a8, 4
	l32i.n	a8, a8, 0
.LBB24:
.LBB25:
	.loc 1 64 0
	add.n	a10, sp, a4
.LVL54:
	movi.n	a12, 8
	mov.n	a11, a5
	s32i.n	a8, a5, 0
	s32i.n	a9, a5, 4
.LVL55:
	call8	memcpy
.LVL56:
	addi.n	a4, a4, 8
.LVL57:
.LBE25:
.LBE24:
	.loc 2 74 0
	movi	a8, 0x400
	bne	a4, a8, .L35
.LBE23:
.LBE22:
	.loc 2 207 0
	l32i.n	a11, a2, 4
	l32i.n	a10, a2, 0
	mov.n	a13, a4
	mov.n	a12, sp
	call8	blake2b_long
.LVL58:
	.loc 2 209 0
	mov.n	a11, a4
	addmi	a10, sp, 0x400
	call8	sodium_memzero
.LVL59:
	.loc 2 211 0
	mov.n	a11, a4
	mov.n	a10, sp
	call8	sodium_memzero
.LVL60:
.LBE21:
.LBB26:
.LBB27:
	.loc 2 157 0
	l32i.n	a4, a3, 0
.LVL61:
	.loc 2 157 0
	beqz.n	a4, .L36
	l32i.n	a2, a2, 56
.LVL62:
	bbci	a2, 0, .L36
	.loc 2 159 0
	l32i.n	a11, a3, 8
	l32i.n	a10, a4, 4
	slli	a11, a11, 10
	call8	sodium_memzero
.LVL63:
.L36:
.LBE27:
.LBE26:
	.loc 2 219 0
	l32i.n	a2, a3, 0
.LVL64:
.LBB28:
.LBB29:
	.loc 2 173 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L37
	.loc 2 179 0
	call8	free
.LVL65:
.L37:
	.loc 2 182 0
	mov.n	a10, a2
	call8	free
.LVL66:
.L31:
	retw.n
.LBE29:
.LBE28:
.LBE19:
.LFE20:
	.size	finalize, .-finalize
	.global	__umoddi3
	.section	.text.index_alpha,"ax",@progbits
	.align	4
	.global	index_alpha
	.type	index_alpha, @function
index_alpha:
.LFB21:
	.loc 2 227 0
.LVL67:
	entry	sp, 32
.LCFI7:
	.loc 2 242 0
	l32i.n	a13, a3, 0
	l32i.n	a9, a3, 12
	l32i.n	a12, a2, 16
	bnez.n	a13, .L55
	.loc 2 244 0
	l8ui	a10, a3, 8
	bnez.n	a10, .L56
	.loc 2 246 0
	addi.n	a5, a9, -1
.LVL68:
	j	.L57
.LVL69:
.L56:
	l32i.n	a8, a2, 12
	.loc 2 251 0
	mull	a8, a10, a8
	.loc 2 249 0
	beqz.n	a5, .L58
	.loc 2 251 0
	addi.n	a5, a9, -1
.LVL70:
	add.n	a5, a8, a5
.LVL71:
	j	.L57
.LVL72:
.L58:
	.loc 2 255 0
	movi.n	a5, 1
.LVL73:
	movnez	a5, a13, a9
	j	.L66
.LVL74:
.L55:
	l32i.n	a8, a2, 12
	.loc 2 262 0
	beqz.n	a5, .L59
	.loc 2 263 0
	add.n	a5, a12, a9
.LVL75:
	addi.n	a5, a5, -1
	sub	a5, a5, a8
.LVL76:
	j	.L57
.LVL77:
.L59:
	.loc 2 267 0
	movi.n	a10, 1
	sub	a8, a12, a8
	moveqz	a5, a10, a9
.LVL78:
.L66:
	sub	a5, a8, a5
.LVL79:
.L57:
	.loc 2 278 0
	muluh	a10, a4, a4
	.loc 2 277 0
	movi.n	a11, 1
	.loc 2 278 0
	muluh	a10, a10, a5
	.loc 2 277 0
	addi.n	a5, a5, -1
.LVL80:
	sub	a10, a5, a10
	bltu	a5, a10, .L60
	movi.n	a11, 0
.L60:
	.loc 2 281 0
	movi.n	a4, 0
.LVL81:
	.loc 2 277 0
	neg	a5, a11
.LVL82:
	.loc 2 283 0
	beq	a13, a4, .L61
	.loc 2 284 0
	l8ui	a3, a3, 8
.LVL83:
	.loc 2 286 0
	beqi	a3, 3, .L61
	.loc 2 286 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 12
.LVL84:
	addi.n	a4, a3, 1
	mull	a4, a4, a2
.L61:
.LVL85:
	.loc 2 292 0 is_stmt 1
	add.n	a10, a4, a10
.LVL86:
	movi.n	a11, 1
	bltu	a10, a4, .L62
	movi.n	a11, 0
.L62:
	movi.n	a13, 0
	add.n	a11, a11, a5
	call8	__umoddi3
.LVL87:
	.loc 2 293 0
	mov.n	a2, a10
	retw.n
.LFE21:
	.size	index_alpha, .-index_alpha
	.section	.text.fill_memory_blocks,"ax",@progbits
	.literal_position
	.literal .LC4, fill_segment
	.align	4
	.global	fill_memory_blocks
	.type	fill_memory_blocks, @function
fill_memory_blocks:
.LFB22:
	.loc 2 297 0
.LVL88:
	entry	sp, 48
.LCFI8:
	.loc 2 301 0
	bnez.n	a2, .L68
.L70:
	.loc 2 302 0
	movi.n	a2, 0
.LVL89:
	retw.n
.LVL90:
.L68:
	.loc 2 301 0 discriminator 1
	l32i.n	a3, a2, 20
	beqz.n	a3, .L70
	movi.n	a3, 0
	j	.L71
.LVL91:
.L73:
.LBB30:
.LBB31:
	.loc 2 316 0
	l32r	a8, .LC4
	.loc 2 314 0
	s8i	a5, sp, 8
	.loc 2 316 0
	l32i.n	a8, a8, 0
	l32i.n	a13, sp, 8
	mov.n	a11, a3
	mov.n	a12, a4
	movi.n	a14, 0
	mov.n	a10, a2
	callx8	a8
.LVL92:
	.loc 2 317 0
	beqz.n	a10, .L72
	.loc 2 316 0
	mov.n	a2, a10
.LVL93:
	retw.n
.LVL94:
.L72:
.LBE31:
	.loc 2 309 0
	addi.n	a4, a4, 1
.LVL95:
.L76:
	.loc 2 309 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 20
	bltu	a4, a8, .L73
.LBE30:
	.loc 2 306 0 is_stmt 1 discriminator 2
	addi.n	a5, a5, 1
.LVL96:
	bnei	a5, 4, .L74
	j	.L82
.LVL97:
.L77:
	movi.n	a5, 0
.L74:
.LVL98:
	movi.n	a4, 0
	j	.L76
.LVL99:
.L82:
	.loc 2 305 0 discriminator 2
	addi.n	a3, a3, 1
.LVL100:
.L71:
	.loc 2 305 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 4
	bltu	a3, a4, .L77
	j	.L70
.LFE22:
	.size	fill_memory_blocks, .-fill_memory_blocks
	.section	.text.validate_inputs,"ax",@progbits
	.literal_position
	.literal .LC5, 2097152
	.literal .LC6, 16777215
	.align	4
	.global	validate_inputs
	.type	validate_inputs, @function
validate_inputs:
.LFB23:
	.loc 2 328 0 is_stmt 1
.LVL101:
	entry	sp, 32
.LCFI9:
	.loc 2 331 0
	movi.n	a8, -0x19
	.loc 2 330 0
	beqz.n	a2, .L84
	.loc 2 334 0
	l32i.n	a9, a2, 0
	.loc 2 335 0
	movi.n	a8, -1
	.loc 2 334 0
	beqz.n	a9, .L84
	.loc 2 339 0
	l32i.n	a9, a2, 4
	movi.n	a10, 0xf
	.loc 2 340 0
	movi.n	a8, -2
	.loc 2 339 0
	bgeu	a10, a9, .L84
	.loc 2 348 0
	l32i.n	a8, a2, 8
	bnez.n	a8, .L85
	.loc 2 349 0
	l32i.n	a9, a2, 12
	.loc 2 350 0
	movi.n	a8, -0x12
	.loc 2 349 0
	bnez.n	a9, .L84
.L85:
	.loc 2 363 0
	l32i.n	a8, a2, 16
	l32i.n	a9, a2, 20
	bnez.n	a8, .L86
	.loc 2 365 0
	movi.n	a8, -0x13
	.loc 2 364 0
	beqz.n	a9, .L94
	j	.L84
.L86:
	.loc 2 369 0
	bltui	a9, 8, .L94
	.loc 2 378 0
	l32i.n	a8, a2, 24
	bnez.n	a8, .L87
	.loc 2 379 0
	l32i.n	a9, a2, 28
	.loc 2 380 0
	movi.n	a8, -0x14
	.loc 2 379 0
	bnez.n	a9, .L84
.L87:
	.loc 2 393 0
	l32i.n	a8, a2, 32
	bnez.n	a8, .L88
	.loc 2 394 0
	l32i.n	a9, a2, 36
	.loc 2 395 0
	movi.n	a8, -0x15
	.loc 2 394 0
	bnez.n	a9, .L84
.L88:
	.loc 2 408 0
	l32i.n	a10, a2, 44
	.loc 2 409 0
	movi.n	a8, -0xe
	.loc 2 408 0
	bltui	a10, 8, .L84
	.loc 2 412 0
	l32r	a9, .LC5
	.loc 2 413 0
	movi.n	a8, -0xf
	.loc 2 412 0
	bltu	a9, a10, .L84
	.loc 2 416 0
	l32i.n	a9, a2, 48
	.loc 2 409 0
	movi.n	a8, -0xe
	.loc 2 416 0
	slli	a11, a9, 3
	bltu	a10, a11, .L84
	.loc 2 421 0
	l32i.n	a10, a2, 40
	.loc 2 422 0
	movi.n	a8, -0xc
	.loc 2 421 0
	bltui	a10, 3, .L84
	.loc 2 431 0
	movi.n	a8, -0x10
	.loc 2 430 0
	beqz.n	a9, .L84
	.loc 2 434 0
	l32r	a10, .LC6
	.loc 2 435 0
	movi.n	a8, -0x11
	.loc 2 434 0
	bltu	a10, a9, .L84
	.loc 2 439 0
	l32i.n	a2, a2, 52
.LVL102:
	.loc 2 440 0
	movi.n	a8, -0x1c
	.loc 2 439 0
	beqz.n	a2, .L84
	.loc 2 444 0
	movi.n	a8, -0x1d
	.loc 2 443 0
	bltu	a10, a2, .L84
	.loc 2 448 0
	movi.n	a8, 0
	j	.L84
.LVL103:
.L94:
	.loc 2 370 0
	movi.n	a8, -6
.LVL104:
.L84:
	.loc 2 449 0
	mov.n	a2, a8
	retw.n
.LFE23:
	.size	validate_inputs, .-validate_inputs
	.section	.text.fill_first_blocks,"ax",@progbits
	.align	4
	.global	fill_first_blocks
	.type	fill_first_blocks, @function
fill_first_blocks:
.LFB24:
	.loc 2 453 0
.LVL105:
	entry	sp, 1056
.LCFI10:
.LVL106:
	.loc 2 458 0
	movi.n	a4, 0
	.loc 2 459 0
	addi	a5, a2, 64
	.loc 2 458 0
	j	.L106
.LVL107:
.L107:
	.loc 2 459 0 discriminator 3
	movi.n	a11, 0
	mov.n	a10, a5
	call8	store32_le
.LVL108:
	.loc 2 460 0 discriminator 3
	mov.n	a11, a4
	addi	a10, a2, 68
	call8	store32_le
.LVL109:
	.loc 2 461 0 discriminator 3
	movi.n	a13, 0x48
	mov.n	a12, a2
	movi	a11, 0x400
	mov.n	a10, sp
	call8	blake2b_long
.LVL110:
	.loc 2 463 0 discriminator 3
	l32i.n	a8, a3, 16
	l32i.n	a9, a3, 0
	slli	a8, a8, 10
	mull	a8, a8, a4
	l32i.n	a10, a9, 4
	mov.n	a11, sp
	add.n	a10, a10, a8
	call8	load_block
.LVL111:
	.loc 2 466 0 discriminator 3
	movi.n	a11, 1
	mov.n	a10, a5
	call8	store32_le
.LVL112:
	.loc 2 467 0 discriminator 3
	movi.n	a13, 0x48
	mov.n	a12, a2
	movi	a11, 0x400
	mov.n	a10, sp
	call8	blake2b_long
.LVL113:
	.loc 2 469 0 discriminator 3
	l32i.n	a8, a3, 16
	l32i.n	a9, a3, 0
	mull	a8, a4, a8
	l32i.n	a10, a9, 4
	addi.n	a8, a8, 1
	slli	a8, a8, 10
	mov.n	a11, sp
	add.n	a10, a10, a8
	call8	load_block
.LVL114:
	.loc 2 458 0 discriminator 3
	addi.n	a4, a4, 1
.LVL115:
.L106:
	.loc 2 458 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 20
	bltu	a4, a8, .L107
	.loc 2 472 0 is_stmt 1
	movi	a11, 0x400
	mov.n	a10, sp
	call8	sodium_memzero
.LVL116:
	retw.n
.LFE24:
	.size	fill_first_blocks, .-fill_first_blocks
	.section	.text.initial_hash,"ax",@progbits
	.align	4
	.global	initial_hash
	.type	initial_hash, @function
initial_hash:
.LFB25:
	.loc 2 477 0
.LVL117:
	entry	sp, 32
.LCFI11:
	.loc 2 481 0
	movi.n	a13, 1
	movi.n	a9, 0
	moveqz	a9, a13, a3
	extui	a8, a9, 0, 8
	.loc 2 477 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 2 481 0
	bnez.n	a8, .L108
	moveqz	a8, a13, a2
	bnez.n	a8, .L108
	call8	initial_hash$part$0
.LVL118:
.L108:
	retw.n
.LFE25:
	.size	initial_hash, .-initial_hash
	.section	.text.initialize,"ax",@progbits
	.align	4
	.global	initialize
	.type	initialize, @function
initialize:
.LFB26:
	.loc 2 558 0
.LVL119:
	entry	sp, 112
.LCFI12:
.LVL120:
	.loc 2 562 0
	movi.n	a5, 1
	movi.n	a4, 0
	moveqz	a4, a5, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L115
	moveqz	a4, a5, a3
	bnez.n	a4, .L115
	.loc 2 567 0
	l32i.n	a5, a2, 8
.LVL121:
.LBB35:
.LBB36:
	.loc 2 97 0
	slli	a6, a5, 10
.LVL122:
	.loc 2 98 0
	beqz.n	a5, .L114
	quou	a5, a6, a5
.LVL123:
	movi	a8, 0x400
	bne	a5, a8, .L114
	.loc 2 103 0
	movi.n	a10, 0xc
	call8	malloc
.LVL124:
	s32i.n	a10, a2, 0
	mov.n	a5, a10
	.loc 2 105 0
	beqz.n	a10, .L114
.LVL125:
	.loc 2 127 0
	addi	a10, a6, 63
	bgeu	a10, a6, .L113
.LVL126:
	.loc 2 129 0
	call8	__errno
.LVL127:
	movi.n	a2, 0xc
.LVL128:
	s32i.n	a2, a10, 0
	j	.L114
.LVL129:
.L113:
	.loc 2 130 0
	call8	malloc
.LVL130:
	beqz.n	a10, .L114
.LVL131:
	.loc 2 140 0
	movi	a8, -0x40
	.loc 2 139 0
	s32i.n	a10, a5, 0
	.loc 2 140 0
	addi	a10, a10, 63
.LVL132:
	and	a10, a10, a8
.LVL133:
.LBE36:
.LBE35:
	.loc 2 576 0
	l32i.n	a12, a2, 28
.LBB40:
.LBB37:
	.loc 2 140 0
	s32i.n	a10, a5, 4
.LBE37:
.LBE40:
	.loc 2 576 0
	mov.n	a11, a3
	mov.n	a10, sp
.LVL134:
.LBB41:
.LBB38:
	.loc 2 141 0
	s32i.n	a6, a5, 8
.LVL135:
.LBE38:
.LBE41:
	.loc 2 576 0
	call8	initial_hash
.LVL136:
	.loc 2 578 0
	addi	a10, sp, 64
	movi.n	a11, 8
	call8	sodium_memzero
.LVL137:
	.loc 2 583 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	fill_first_blocks
.LVL138:
	.loc 2 585 0
	movi.n	a11, 0x48
	mov.n	a10, sp
	call8	sodium_memzero
.LVL139:
	.loc 2 587 0
	mov.n	a2, a4
.LVL140:
	retw.n
.LVL141:
.L115:
	.loc 2 563 0
	movi.n	a2, -0x19
.LVL142:
	retw.n
.LVL143:
.L114:
.LBB42:
.LBB39:
	.loc 2 137 0
	movi.n	a2, -0x16
.LBE39:
.LBE42:
	.loc 2 588 0
	retw.n
.LFE26:
	.size	initialize, .-initialize
	.section	.text.argon2_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC7, fill_segment
	.literal .LC8, fill_segment_ref
	.align	4
	.global	argon2_pick_best_implementation
	.type	argon2_pick_best_implementation, @function
argon2_pick_best_implementation:
.LFB27:
	.loc 2 592 0
	entry	sp, 32
.LCFI13:
	.loc 2 600 0
	l32r	a9, .LC8
	l32r	a8, .LC7
	.loc 2 604 0
	movi.n	a2, 0
	.loc 2 600 0
	s32i.n	a9, a8, 0
	.loc 2 604 0
	retw.n
.LFE27:
	.size	argon2_pick_best_implementation, .-argon2_pick_best_implementation
	.section	.data.fill_segment,"aw",@progbits
	.align	4
	.type	fill_segment, @object
	.size	fill_segment, 4
fill_segment:
	.word	fill_segment_ref
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
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI4-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
	.byte	0xe
	.uleb128 0x830
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI7-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x420
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI11-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI12-.LFB26
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI13-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/blake2b-long.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x115d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xc
	.4byte	.LASF156
	.4byte	.LASF157
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x32
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2d
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x39
	.4byte	0x7e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x7
	.uleb128 0x8
	.4byte	.LASF22
	.2byte	0x165
	.byte	0x6
	.byte	0x17
	.4byte	0x137
	.uleb128 0x9
	.string	"h"
	.byte	0x6
	.byte	0x18
	.4byte	0x137
	.byte	0
	.uleb128 0x9
	.string	"t"
	.byte	0x6
	.byte	0x19
	.4byte	0x147
	.byte	0x40
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.byte	0x1a
	.4byte	0x147
	.byte	0x50
	.uleb128 0x9
	.string	"buf"
	.byte	0x6
	.byte	0x1b
	.4byte	0x157
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1c
	.4byte	0x3a
	.2byte	0x160
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x1d
	.4byte	0xb2
	.2byte	0x164
	.byte	0
	.uleb128 0xb
	.4byte	0xc8
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0xc8
	.4byte	0x157
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x167
	.uleb128 0xc
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1e
	.4byte	0xe5
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x4
	.4byte	0x33
	.byte	0x7
	.byte	0x4b
	.4byte	0x25b
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0
	.uleb128 0xf
	.4byte	.LASF24
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF25
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF26
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF27
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF28
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF29
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF30
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF31
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF32
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF33
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF34
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF35
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF39
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF40
	.sleb128 -17
	.uleb128 0xf
	.4byte	.LASF41
	.sleb128 -18
	.uleb128 0xf
	.4byte	.LASF42
	.sleb128 -19
	.uleb128 0xf
	.4byte	.LASF43
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF44
	.sleb128 -21
	.uleb128 0xf
	.4byte	.LASF45
	.sleb128 -22
	.uleb128 0xf
	.4byte	.LASF46
	.sleb128 -23
	.uleb128 0xf
	.4byte	.LASF47
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF48
	.sleb128 -25
	.uleb128 0xf
	.4byte	.LASF49
	.sleb128 -26
	.uleb128 0xf
	.4byte	.LASF50
	.sleb128 -27
	.uleb128 0xf
	.4byte	.LASF51
	.sleb128 -28
	.uleb128 0xf
	.4byte	.LASF52
	.sleb128 -29
	.uleb128 0xf
	.4byte	.LASF53
	.sleb128 -30
	.uleb128 0xf
	.4byte	.LASF54
	.sleb128 -31
	.uleb128 0xf
	.4byte	.LASF55
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LASF56
	.sleb128 -33
	.uleb128 0xf
	.4byte	.LASF57
	.sleb128 -34
	.uleb128 0xf
	.4byte	.LASF58
	.sleb128 -35
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x3c
	.byte	0x7
	.byte	0xa3
	.4byte	0x31b
	.uleb128 0x9
	.string	"out"
	.byte	0x7
	.byte	0xa4
	.4byte	0x31b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa5
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x9
	.string	"pwd"
	.byte	0x7
	.byte	0xa7
	.4byte	0x31b
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x7
	.byte	0xa8
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x7
	.byte	0xaa
	.4byte	0x31b
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x7
	.byte	0xab
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x7
	.byte	0xad
	.4byte	0x31b
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x7
	.byte	0xae
	.4byte	0xbd
	.byte	0x1c
	.uleb128 0x9
	.string	"ad"
	.byte	0x7
	.byte	0xb0
	.4byte	0x31b
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x7
	.byte	0xb1
	.4byte	0xbd
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x7
	.byte	0xb3
	.4byte	0xbd
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x7
	.byte	0xb4
	.4byte	0xbd
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x7
	.byte	0xb5
	.4byte	0xbd
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x7
	.byte	0xb6
	.4byte	0xbd
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x7
	.byte	0xb8
	.4byte	0xbd
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x7
	.byte	0xb9
	.4byte	0x25b
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0xbc
	.4byte	0x343
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x7
	.byte	0xbc
	.4byte	0x32c
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x16
	.4byte	0x38a
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x13
	.uleb128 0x12
	.4byte	.LASF79
	.2byte	0x400
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	.LASF85
	.2byte	0x400
	.byte	0x8
	.byte	0x31
	.4byte	0x3a2
	.uleb128 0x9
	.string	"v"
	.byte	0x8
	.byte	0x32
	.4byte	0x3a2
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xc8
	.4byte	0x3b2
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0x8
	.byte	0x33
	.4byte	0x38a
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0xc
	.byte	0x8
	.byte	0x35
	.4byte	0x3ee
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x8
	.byte	0x36
	.4byte	0xa2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x8
	.byte	0x37
	.4byte	0x3ee
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x8
	.byte	0x38
	.4byte	0x3a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x8
	.byte	0x39
	.4byte	0x3bd
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x24
	.byte	0x8
	.byte	0x4c
	.4byte	0x478
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x8
	.byte	0x4d
	.4byte	0x478
	.byte	0
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x8
	.byte	0x4e
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x8
	.byte	0x4f
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x8
	.byte	0x50
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x8
	.byte	0x51
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x8
	.byte	0x52
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x8
	.byte	0x53
	.4byte	0xbd
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x8
	.byte	0x54
	.4byte	0x343
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x8
	.byte	0x55
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f4
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x8
	.byte	0x56
	.4byte	0x3ff
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x10
	.byte	0x8
	.byte	0x5c
	.4byte	0x4c6
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x8
	.byte	0x5d
	.4byte	0xbd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x8
	.byte	0x5e
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x8
	.byte	0x5f
	.4byte	0xb2
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x8
	.byte	0x60
	.4byte	0xbd
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x8
	.byte	0x61
	.4byte	0x489
	.uleb128 0x6
	.byte	0x4
	.4byte	0x47e
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x8
	.byte	0xb8
	.4byte	0x4e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e8
	.uleb128 0x13
	.4byte	0x33
	.4byte	0x4fc
	.uleb128 0x14
	.4byte	0x4fc
	.uleb128 0x14
	.4byte	0x4c6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x502
	.uleb128 0x15
	.4byte	0x47e
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x1
	.byte	0x3d
	.byte	0x3
	.4byte	0x528
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.byte	0x3d
	.4byte	0x31b
	.uleb128 0x17
	.string	"w"
	.byte	0x1
	.byte	0x3d
	.4byte	0xc8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF158
	.byte	0x2
	.2byte	0x1dc
	.byte	0x1
	.4byte	0x572
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x1dc
	.4byte	0x31b
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x1dc
	.4byte	0x572
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x1dc
	.4byte	0x343
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x1de
	.4byte	0x167
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x1df
	.4byte	0x578
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x321
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x588
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x1
	.byte	0x60
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b8
	.uleb128 0x1c
	.string	"dst"
	.byte	0x1
	.byte	0x60
	.4byte	0x31b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.byte	0x60
	.4byte	0xbd
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0x28
	.4byte	0xc8
	.byte	0x3
	.4byte	0x5dd
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x28
	.4byte	0x5dd
	.uleb128 0x1f
	.string	"w"
	.byte	0x1
	.byte	0x2b
	.4byte	0xc8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e3
	.uleb128 0x15
	.4byte	0xb2
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x2
	.byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66e
	.uleb128 0x1c
	.string	"dst"
	.byte	0x2
	.byte	0x3e
	.4byte	0x3ee
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x2
	.byte	0x3e
	.4byte	0xde
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.byte	0x40
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	0x5b8
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x2
	.byte	0x42
	.uleb128 0x23
	.4byte	0x5c8
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x25
	.4byte	0x5d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LVL6
	.4byte	0x10f4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x528
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x922
	.uleb128 0x29
	.4byte	0x535
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x541
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	0x54d
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	0x559
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.4byte	0x565
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	.LVL9
	.4byte	0x10fd
	.4byte	0x6cc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL10
	.4byte	0x588
	.4byte	0x6e0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL11
	.4byte	0x1108
	.4byte	0x6fa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL12
	.4byte	0x588
	.4byte	0x70e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL13
	.4byte	0x1108
	.4byte	0x728
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL14
	.4byte	0x588
	.4byte	0x73c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL15
	.4byte	0x1108
	.4byte	0x756
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL16
	.4byte	0x588
	.4byte	0x76a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL17
	.4byte	0x1108
	.4byte	0x784
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL18
	.4byte	0x588
	.4byte	0x79d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL19
	.4byte	0x1108
	.4byte	0x7b7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL20
	.4byte	0x588
	.4byte	0x7d1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL21
	.4byte	0x1108
	.4byte	0x7eb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL22
	.4byte	0x588
	.4byte	0x7ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL23
	.4byte	0x1108
	.4byte	0x819
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL25
	.4byte	0x1108
	.4byte	0x82d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL26
	.4byte	0x1113
	.uleb128 0x2a
	.4byte	.LVL27
	.4byte	0x588
	.4byte	0x84a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL28
	.4byte	0x1108
	.4byte	0x864
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL29
	.4byte	0x1108
	.4byte	0x878
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL30
	.4byte	0x588
	.4byte	0x88c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL31
	.4byte	0x1108
	.4byte	0x8a6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL32
	.4byte	0x1108
	.4byte	0x8ba
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL33
	.4byte	0x1113
	.uleb128 0x2a
	.4byte	.LVL34
	.4byte	0x588
	.4byte	0x8d7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL35
	.4byte	0x1108
	.4byte	0x8f1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL36
	.4byte	0x1108
	.4byte	0x905
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL37
	.4byte	0x111e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF115
	.byte	0x2
	.byte	0x29
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96f
	.uleb128 0x1c
	.string	"b"
	.byte	0x2
	.byte	0x29
	.4byte	0x3ee
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"in"
	.byte	0x2
	.byte	0x29
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL39
	.4byte	0x1129
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF116
	.byte	0x2
	.byte	0x2f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bc
	.uleb128 0x1c
	.string	"dst"
	.byte	0x2
	.byte	0x2f
	.4byte	0x3ee
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"src"
	.byte	0x2
	.byte	0x2f
	.4byte	0x9bc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL41
	.4byte	0x10f4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c2
	.uleb128 0x15
	.4byte	0x3b2
	.uleb128 0x2c
	.4byte	.LASF117
	.byte	0x2
	.byte	0x35
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa08
	.uleb128 0x1d
	.string	"dst"
	.byte	0x2
	.byte	0x35
	.4byte	0x3ee
	.4byte	.LLST4
	.uleb128 0x1d
	.string	"src"
	.byte	0x2
	.byte	0x35
	.4byte	0x9bc
	.4byte	.LLST5
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.byte	0x37
	.4byte	0x33
	.4byte	.LLST6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x2
	.byte	0xab
	.byte	0x1
	.4byte	0xa20
	.uleb128 0x2d
	.4byte	.LASF93
	.byte	0x2
	.byte	0xab
	.4byte	0x478
	.byte	0
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x2
	.byte	0x9b
	.byte	0x1
	.4byte	0xa43
	.uleb128 0x2d
	.4byte	.LASF121
	.byte	0x2
	.byte	0x9b
	.4byte	0x4d1
	.uleb128 0x2d
	.4byte	.LASF122
	.byte	0x2
	.byte	0x9b
	.4byte	0x33
	.byte	0
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x2
	.byte	0x47
	.byte	0x1
	.4byte	0xa6f
	.uleb128 0x2d
	.4byte	.LASF124
	.byte	0x2
	.byte	0x47
	.4byte	0xa2
	.uleb128 0x17
	.string	"src"
	.byte	0x2
	.byte	0x47
	.4byte	0x9bc
	.uleb128 0x1f
	.string	"i"
	.byte	0x2
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF125
	.byte	0x2
	.byte	0xba
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc45
	.uleb128 0x2e
	.4byte	.LASF109
	.byte	0x2
	.byte	0xba
	.4byte	0xc45
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF121
	.byte	0x2
	.byte	0xba
	.4byte	0x4d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2f
	.4byte	.LASF108
	.byte	0x2
	.byte	0xbd
	.4byte	0x3b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x21
	.string	"l"
	.byte	0x2
	.byte	0xbe
	.4byte	0xbd
	.4byte	.LLST8
	.uleb128 0x30
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0xaf3
	.uleb128 0x31
	.4byte	.LASF126
	.byte	0x2
	.byte	0xc5
	.4byte	0xbd
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LVL52
	.4byte	0x9c7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0xbcd
	.uleb128 0x2f
	.4byte	.LASF127
	.byte	0x2
	.byte	0xcd
	.4byte	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x32
	.4byte	0xa43
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x2
	.byte	0xce
	.4byte	0xb80
	.uleb128 0x33
	.4byte	0xa5a
	.uleb128 0x33
	.4byte	0xa4f
	.uleb128 0x24
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x34
	.4byte	0xa65
	.uleb128 0x22
	.4byte	0x507
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x2
	.byte	0x4b
	.uleb128 0x23
	.4byte	0x51e
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	0x513
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LVL56
	.4byte	0x10f4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x830
	.byte	0x1c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL58
	.4byte	0x1134
	.4byte	0xb9b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL59
	.4byte	0x1113
	.4byte	0xbb5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL60
	.4byte	0x1113
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xa20
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x2
	.byte	0xd8
	.4byte	0xbfc
	.uleb128 0x23
	.4byte	0xa37
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	0xa2c
	.4byte	.LLST13
	.uleb128 0x2b
	.4byte	.LVL63
	.4byte	0x1113
	.byte	0
	.uleb128 0x32
	.4byte	0xa08
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x2
	.byte	0xdb
	.4byte	0xc32
	.uleb128 0x23
	.4byte	0xa14
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	.LVL65
	.4byte	0x113f
	.uleb128 0x26
	.4byte	.LVL66
	.4byte	0x113f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0x96f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc4b
	.uleb128 0x15
	.4byte	0x321
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xc61
	.uleb128 0x35
	.4byte	0x9b
	.2byte	0x3ff
	.byte	0
	.uleb128 0x36
	.4byte	.LASF135
	.byte	0x2
	.byte	0xe0
	.4byte	0xbd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x2e
	.4byte	.LASF121
	.byte	0x2
	.byte	0xe0
	.4byte	0x4fc
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF128
	.byte	0x2
	.byte	0xe1
	.4byte	0xcef
	.4byte	.LLST16
	.uleb128 0x2e
	.4byte	.LASF129
	.byte	0x2
	.byte	0xe1
	.4byte	0xbd
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LASF130
	.byte	0x2
	.byte	0xe2
	.4byte	0x33
	.4byte	.LLST18
	.uleb128 0x31
	.4byte	.LASF131
	.byte	0x2
	.byte	0xee
	.4byte	0xbd
	.4byte	.LLST19
	.uleb128 0x31
	.4byte	.LASF132
	.byte	0x2
	.byte	0xef
	.4byte	0xc8
	.4byte	.LLST20
	.uleb128 0x31
	.4byte	.LASF133
	.byte	0x2
	.byte	0xf0
	.4byte	0xbd
	.4byte	.LLST21
	.uleb128 0x37
	.4byte	.LASF134
	.byte	0x2
	.byte	0xf0
	.4byte	0xbd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf5
	.uleb128 0x15
	.4byte	0x4c6
	.uleb128 0x38
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x128
	.4byte	0x33
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8c
	.uleb128 0x39
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x128
	.4byte	0x4d1
	.4byte	.LLST22
	.uleb128 0x3a
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x12a
	.4byte	0x33
	.4byte	.LLST23
	.uleb128 0x3b
	.string	"r"
	.byte	0x2
	.2byte	0x12b
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.string	"s"
	.byte	0x2
	.2byte	0x12b
	.4byte	0xbd
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x3c
	.string	"l"
	.byte	0x2
	.2byte	0x133
	.4byte	0xbd
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x3d
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x136
	.4byte	0x4c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.4byte	.LVL92
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF138
	.byte	0x2
	.2byte	0x147
	.4byte	0x33
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb7
	.uleb128 0x39
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x147
	.4byte	0xc45
	.4byte	.LLST26
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF139
	.byte	0x2
	.2byte	0x1c4
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee7
	.uleb128 0x40
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x1c4
	.4byte	0x31b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x40
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x1c4
	.4byte	0x4fc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.string	"l"
	.byte	0x2
	.2byte	0x1c6
	.4byte	0xbd
	.4byte	.LLST27
	.uleb128 0x3d
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x1c9
	.4byte	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x2a
	.4byte	.LVL108
	.4byte	0x588
	.4byte	0xe20
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL109
	.4byte	0x588
	.4byte	0xe3b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL110
	.4byte	0x1134
	.4byte	0xe63
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL111
	.4byte	0x5e8
	.4byte	0xe78
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL112
	.4byte	0x588
	.4byte	0xe91
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL113
	.4byte	0x1134
	.4byte	0xeb9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL114
	.4byte	0x5e8
	.4byte	0xece
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x26
	.4byte	.LVL116
	.4byte	0x1113
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x528
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf36
	.uleb128 0x29
	.4byte	0x535
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x541
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	0x54d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	0x559
	.uleb128 0x34
	.4byte	0x565
	.uleb128 0x26
	.4byte	.LVL118
	.4byte	0x66e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x2
	.byte	0x58
	.4byte	0x33
	.byte	0x1
	.4byte	0xf8b
	.uleb128 0x2d
	.4byte	.LASF93
	.byte	0x2
	.byte	0x58
	.4byte	0xf8b
	.uleb128 0x2d
	.4byte	.LASF68
	.byte	0x2
	.byte	0x58
	.4byte	0xbd
	.uleb128 0x37
	.4byte	.LASF88
	.byte	0x2
	.byte	0x5a
	.4byte	0xa2
	.uleb128 0x37
	.4byte	.LASF89
	.byte	0x2
	.byte	0x5b
	.4byte	0x3ee
	.uleb128 0x37
	.4byte	.LASF142
	.byte	0x2
	.byte	0x5c
	.4byte	0x3a
	.uleb128 0x41
	.uleb128 0x37
	.4byte	.LASF143
	.byte	0x2
	.byte	0x83
	.4byte	0x31b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x478
	.uleb128 0x38
	.4byte	.LASF144
	.byte	0x2
	.2byte	0x22d
	.4byte	0x33
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10bd
	.uleb128 0x39
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x22d
	.4byte	0x4d1
	.4byte	.LLST28
	.uleb128 0x40
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x22d
	.4byte	0x572
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3d
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x22f
	.4byte	0x10bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3a
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x230
	.4byte	0x33
	.4byte	.LLST29
	.uleb128 0x42
	.4byte	0xf36
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.2byte	0x237
	.4byte	0x1056
	.uleb128 0x23
	.4byte	0xf51
	.4byte	.LLST30
	.uleb128 0x23
	.4byte	0xf46
	.4byte	.LLST31
	.uleb128 0x43
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x44
	.4byte	0xf5c
	.4byte	.LLST32
	.uleb128 0x44
	.4byte	0xf67
	.4byte	.LLST33
	.uleb128 0x44
	.4byte	0xf72
	.4byte	.LLST34
	.uleb128 0x2a
	.4byte	.LVL124
	.4byte	0x114a
	.4byte	0x1042
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL127
	.4byte	0x1155
	.uleb128 0x2b
	.4byte	.LVL130
	.4byte	0x114a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL136
	.4byte	0x528
	.4byte	0x1071
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL137
	.4byte	0x1113
	.4byte	0x108a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL138
	.4byte	0xdb7
	.4byte	0x10a5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL139
	.4byte	0x1113
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x10cd
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x47
	.byte	0
	.uleb128 0x45
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x24f
	.4byte	0x33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.4byte	.LASF145
	.byte	0x2
	.byte	0x25
	.4byte	0x4d7
	.uleb128 0x5
	.byte	0x3
	.4byte	fill_segment
	.uleb128 0x46
	.4byte	.LASF160
	.4byte	.LASF160
	.uleb128 0x47
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x6
	.byte	0x59
	.uleb128 0x47
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x6
	.byte	0x65
	.uleb128 0x47
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x9
	.byte	0x16
	.uleb128 0x47
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x6
	.byte	0x6a
	.uleb128 0x47
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0x19
	.uleb128 0x47
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xb
	.byte	0x6
	.uleb128 0x47
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xc
	.byte	0x5a
	.uleb128 0x47
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xc
	.byte	0x65
	.uleb128 0x47
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xd
	.byte	0xf
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE15
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL45
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x9
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x9
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL55
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0xa
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x830
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LVL57
	.2byte	0xa
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x830
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0xa
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x838
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x6
	.byte	0x72
	.sleb128 56
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL67
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
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
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x13
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x15
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL91
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL119
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL120
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL121
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL132
	.4byte	.LVL136-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL143
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL125
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x7a
	.sleb128 63
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x3f
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL122
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL143
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF106:
	.string	"argon2_position_t"
.LASF38:
	.string	"ARGON2_MEMORY_TOO_MUCH"
.LASF54:
	.string	"ARGON2_ENCODING_FAIL"
.LASF140:
	.string	"load64_le"
.LASF53:
	.string	"ARGON2_MISSING_ARGS"
.LASF157:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/libsodium"
.LASF40:
	.string	"ARGON2_LANES_TOO_MANY"
.LASF51:
	.string	"ARGON2_THREADS_TOO_FEW"
.LASF77:
	.string	"argon2_ctx_constants"
.LASF113:
	.string	"load_block"
.LASF47:
	.string	"ARGON2_ALLOCATE_MEMORY_CBK_NULL"
.LASF116:
	.string	"copy_block"
.LASF154:
	.string	"__errno"
.LASF71:
	.string	"flags"
.LASF108:
	.string	"blockhash"
.LASF24:
	.string	"ARGON2_OUTPUT_PTR_NULL"
.LASF78:
	.string	"ARGON2_VERSION_NUMBER"
.LASF79:
	.string	"ARGON2_BLOCK_SIZE"
.LASF73:
	.string	"Argon2_ErrorCodes"
.LASF1:
	.string	"unsigned int"
.LASF81:
	.string	"ARGON2_OWORDS_IN_BLOCK"
.LASF29:
	.string	"ARGON2_SALT_TOO_SHORT"
.LASF61:
	.string	"pwdlen"
.LASF138:
	.string	"validate_inputs"
.LASF25:
	.string	"ARGON2_OUTPUT_TOO_SHORT"
.LASF119:
	.string	"free_memory"
.LASF143:
	.string	"aligned"
.LASF63:
	.string	"saltlen"
.LASF133:
	.string	"start_position"
.LASF17:
	.string	"uint32_t"
.LASF68:
	.string	"m_cost"
.LASF123:
	.string	"store_block"
.LASF94:
	.string	"passes"
.LASF153:
	.string	"malloc"
.LASF88:
	.string	"base"
.LASF105:
	.string	"index"
.LASF130:
	.string	"same_lane"
.LASF142:
	.string	"memory_size"
.LASF137:
	.string	"result"
.LASF0:
	.string	"long long unsigned int"
.LASF32:
	.string	"ARGON2_AD_TOO_LONG"
.LASF49:
	.string	"ARGON2_INCORRECT_TYPE"
.LASF65:
	.string	"secretlen"
.LASF159:
	.string	"argon2_pick_best_implementation"
.LASF121:
	.string	"instance"
.LASF111:
	.string	"value"
.LASF155:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF135:
	.string	"index_alpha"
.LASF104:
	.string	"slice"
.LASF102:
	.string	"pass"
.LASF4:
	.string	"size_t"
.LASF144:
	.string	"initialize"
.LASF124:
	.string	"output"
.LASF136:
	.string	"fill_memory_blocks"
.LASF96:
	.string	"segment_length"
.LASF152:
	.string	"free"
.LASF10:
	.string	"__uint64_t"
.LASF59:
	.string	"Argon2_Context"
.LASF74:
	.string	"Argon2_type"
.LASF131:
	.string	"reference_area_size"
.LASF92:
	.string	"Argon2_instance_t"
.LASF100:
	.string	"argon2_instance_t"
.LASF60:
	.string	"outlen"
.LASF125:
	.string	"finalize"
.LASF139:
	.string	"fill_first_blocks"
.LASF115:
	.string	"init_block_value"
.LASF15:
	.string	"char"
.LASF66:
	.string	"adlen"
.LASF55:
	.string	"ARGON2_DECODING_FAIL"
.LASF20:
	.string	"buflen"
.LASF57:
	.string	"ARGON2_DECODING_LENGTH_FAIL"
.LASF16:
	.string	"uint8_t"
.LASF67:
	.string	"t_cost"
.LASF62:
	.string	"salt"
.LASF44:
	.string	"ARGON2_AD_PTR_MISMATCH"
.LASF43:
	.string	"ARGON2_SECRET_PTR_MISMATCH"
.LASF9:
	.string	"long long int"
.LASF110:
	.string	"BlakeHash"
.LASF145:
	.string	"fill_segment"
.LASF127:
	.string	"blockhash_bytes"
.LASF109:
	.string	"context"
.LASF107:
	.string	"fill_segment_fn"
.LASF28:
	.string	"ARGON2_PWD_TOO_LONG"
.LASF26:
	.string	"ARGON2_OUTPUT_TOO_LONG"
.LASF37:
	.string	"ARGON2_MEMORY_TOO_LITTLE"
.LASF30:
	.string	"ARGON2_SALT_TOO_LONG"
.LASF148:
	.string	"sodium_memzero"
.LASF150:
	.string	"memset"
.LASF23:
	.string	"ARGON2_OK"
.LASF50:
	.string	"ARGON2_OUT_PTR_MISMATCH"
.LASF129:
	.string	"pseudo_rand"
.LASF58:
	.string	"ARGON2_VERIFY_MISMATCH"
.LASF84:
	.string	"ARGON2_PREHASH_SEED_LENGTH"
.LASF90:
	.string	"size"
.LASF97:
	.string	"lane_length"
.LASF27:
	.string	"ARGON2_PWD_TOO_SHORT"
.LASF85:
	.string	"block_"
.LASF117:
	.string	"xor_block"
.LASF128:
	.string	"position"
.LASF22:
	.string	"crypto_generichash_blake2b_state"
.LASF21:
	.string	"last_node"
.LASF120:
	.string	"clear_memory"
.LASF48:
	.string	"ARGON2_INCORRECT_PARAMETER"
.LASF82:
	.string	"ARGON2_ADDRESSES_IN_BLOCK"
.LASF83:
	.string	"ARGON2_PREHASH_DIGEST_LENGTH"
.LASF99:
	.string	"print_internals"
.LASF91:
	.string	"block_region"
.LASF69:
	.string	"lanes"
.LASF11:
	.string	"__uintptr_t"
.LASF42:
	.string	"ARGON2_SALT_PTR_MISMATCH"
.LASF122:
	.string	"clear"
.LASF76:
	.string	"argon2_type"
.LASF103:
	.string	"lane"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF33:
	.string	"ARGON2_SECRET_TOO_SHORT"
.LASF149:
	.string	"crypto_generichash_blake2b_final"
.LASF147:
	.string	"crypto_generichash_blake2b_update"
.LASF141:
	.string	"allocate_memory"
.LASF34:
	.string	"ARGON2_SECRET_TOO_LONG"
.LASF18:
	.string	"uint64_t"
.LASF132:
	.string	"relative_position"
.LASF86:
	.string	"block"
.LASF93:
	.string	"region"
.LASF5:
	.string	"__uint8_t"
.LASF95:
	.string	"memory_blocks"
.LASF19:
	.string	"uintptr_t"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF112:
	.string	"store32_le"
.LASF158:
	.string	"initial_hash"
.LASF70:
	.string	"threads"
.LASF52:
	.string	"ARGON2_THREADS_TOO_MANY"
.LASF72:
	.string	"argon2_context"
.LASF36:
	.string	"ARGON2_TIME_TOO_LARGE"
.LASF114:
	.string	"input"
.LASF89:
	.string	"memory"
.LASF45:
	.string	"ARGON2_MEMORY_ALLOCATION_ERROR"
.LASF98:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF31:
	.string	"ARGON2_AD_TOO_SHORT"
.LASF87:
	.string	"block_region_"
.LASF156:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.c"
.LASF56:
	.string	"ARGON2_THREAD_FAIL"
.LASF35:
	.string	"ARGON2_TIME_TOO_SMALL"
.LASF126:
	.string	"last_block_in_lane"
.LASF46:
	.string	"ARGON2_FREE_MEMORY_CBK_NULL"
.LASF118:
	.string	"store64_le"
.LASF3:
	.string	"signed char"
.LASF75:
	.string	"Argon2_i"
.LASF2:
	.string	"short unsigned int"
.LASF160:
	.string	"memcpy"
.LASF39:
	.string	"ARGON2_LANES_TOO_FEW"
.LASF80:
	.string	"ARGON2_QWORDS_IN_BLOCK"
.LASF151:
	.string	"blake2b_long"
.LASF134:
	.string	"absolute_position"
.LASF41:
	.string	"ARGON2_PWD_PTR_MISMATCH"
.LASF146:
	.string	"crypto_generichash_blake2b_init"
.LASF64:
	.string	"secret"
.LASF101:
	.string	"Argon2_position_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
