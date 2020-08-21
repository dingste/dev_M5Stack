	.file	"pwhash_scryptsalsa208sha256_nosse.c"
	.text
.Ltext0:
	.section	.text.salsa20_8,"ax",@progbits
	.literal_position
	.align	4
	.type	salsa20_8, @function
salsa20_8:
.LFB16:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/pwhash_scryptsalsa208sha256_nosse.c"
	.loc 1 115 0
.LVL0:
	entry	sp, 144
.LCFI0:
.LVL1:
	.loc 1 115 0
	s32i	a2, sp, 96
.LVL2:
	movi.n	a3, 0x10
	movi.n	a2, 0
	loop	a3, .L2_LEND
.LVL3:
.L2:
.LBB4:
.LBB5:
	.loc 1 48 0
	l32i	a6, sp, 96
	add.n	a4, sp, a2
	add.n	a5, a6, a2
	l32i.n	a5, a5, 0
	addi.n	a2, a2, 4
	s32i.n	a5, a4, 0
	.L2_LEND:
	l32i.n	a13, sp, 12
	l32i.n	a8, sp, 8
	s32i	a13, sp, 76
	l32i.n	a13, sp, 28
	s32i	a8, sp, 64
	s32i	a13, sp, 68
	l32i.n	a7, sp, 16
	.loc 1 47 0
	movi.n	a13, 4
	l32i.n	a4, sp, 0
	l32i.n	a11, sp, 48
	l32i.n	a3, sp, 32
	l32i.n	a6, sp, 36
	l32i.n	a2, sp, 20
	l32i.n	a10, sp, 4
	l32i.n	a15, sp, 52
	l32i.n	a5, sp, 56
	l32i.n	a14, sp, 40
	l32i.n	a9, sp, 24
	l32i.n	a12, sp, 60
	l32i.n	a8, sp, 44
	s32i	a13, sp, 88
.L3:
.LBE5:
.LBE4:
	.loc 1 124 0 discriminator 3
	add.n	a13, a11, a4
	ssai	25
	src	a13, a13, a13
	xor	a13, a13, a7
	.loc 1 125 0 discriminator 3
	add.n	a7, a13, a4
	ssai	23
	src	a7, a7, a7
	xor	a3, a7, a3
	.loc 1 126 0 discriminator 3
	add.n	a7, a13, a3
	.loc 1 125 0 discriminator 3
	s32i	a3, sp, 80
	.loc 1 126 0 discriminator 3
	ssai	19
	src	a3, a7, a7
	xor	a3, a3, a11
	.loc 1 127 0 discriminator 3
	l32i	a11, sp, 80
	.loc 1 126 0 discriminator 3
	s32i	a3, sp, 92
	.loc 1 127 0 discriminator 3
	add.n	a7, a11, a3
	.loc 1 129 0 discriminator 3
	add.n	a11, a10, a2
	ssai	25
	src	a11, a11, a11
	xor	a11, a11, a6
	.loc 1 127 0 discriminator 3
	ssai	14
	src	a3, a7, a7
	xor	a4, a3, a4
	.loc 1 130 0 discriminator 3
	add.n	a3, a11, a2
	ssai	23
	src	a3, a3, a3
	xor	a3, a3, a15
	s32i	a3, sp, 84
	.loc 1 131 0 discriminator 3
	add.n	a3, a11, a3
	ssai	19
	src	a3, a3, a3
	.loc 1 132 0 discriminator 3
	l32i	a15, sp, 84
	.loc 1 131 0 discriminator 3
	xor	a10, a3, a10
	.loc 1 132 0 discriminator 3
	add.n	a3, a15, a10
	ssai	14
	src	a3, a3, a3
	xor	a2, a3, a2
	.loc 1 134 0 discriminator 3
	add.n	a3, a9, a14
	ssai	25
	src	a3, a3, a3
	xor	a3, a3, a5
	s32i	a3, sp, 72
	.loc 1 135 0 discriminator 3
	l32i	a5, sp, 64
	add.n	a3, a3, a14
	.loc 1 136 0 discriminator 3
	l32i	a6, sp, 72
	.loc 1 135 0 discriminator 3
	ssai	23
	src	a3, a3, a3
	xor	a3, a3, a5
	.loc 1 136 0 discriminator 3
	add.n	a5, a6, a3
	ssai	19
	src	a5, a5, a5
	.loc 1 139 0 discriminator 3
	add.n	a6, a8, a12
	l32i	a15, sp, 76
	.loc 1 136 0 discriminator 3
	xor	a9, a5, a9
	.loc 1 137 0 discriminator 3
	add.n	a5, a3, a9
	.loc 1 139 0 discriminator 3
	ssai	25
	src	a6, a6, a6
	xor	a6, a6, a15
	.loc 1 137 0 discriminator 3
	ssai	14
	src	a5, a5, a5
	xor	a14, a5, a14
	.loc 1 140 0 discriminator 3
	l32i	a15, sp, 68
	add.n	a5, a6, a12
	ssai	23
	src	a5, a5, a5
	xor	a5, a5, a15
	.loc 1 141 0 discriminator 3
	add.n	a7, a6, a5
	ssai	19
	src	a7, a7, a7
	xor	a8, a7, a8
	.loc 1 142 0 discriminator 3
	add.n	a7, a5, a8
	ssai	14
	src	a7, a7, a7
	xor	a12, a7, a12
	.loc 1 145 0 discriminator 3
	add.n	a7, a4, a6
	ssai	25
	src	a7, a7, a7
	xor	a10, a7, a10
	.loc 1 146 0 discriminator 3
	add.n	a7, a4, a10
	ssai	23
	src	a7, a7, a7
	xor	a3, a7, a3
	s32i	a3, sp, 64
	.loc 1 147 0 discriminator 3
	add.n	a3, a10, a3
	ssai	19
	src	a3, a3, a3
	xor	a3, a3, a6
	.loc 1 148 0 discriminator 3
	l32i	a6, sp, 64
	.loc 1 147 0 discriminator 3
	s32i	a3, sp, 76
	.loc 1 148 0 discriminator 3
	add.n	a3, a6, a3
	ssai	14
	src	a3, a3, a3
	xor	a4, a3, a4
	.loc 1 150 0 discriminator 3
	add.n	a3, a13, a2
	ssai	25
	src	a3, a3, a3
	xor	a9, a3, a9
	.loc 1 151 0 discriminator 3
	add.n	a3, a2, a9
	ssai	23
	src	a3, a3, a3
	xor	a3, a3, a5
	.loc 1 152 0 discriminator 3
	add.n	a7, a9, a3
	ssai	19
	src	a7, a7, a7
	xor	a7, a7, a13
	.loc 1 151 0 discriminator 3
	s32i	a3, sp, 68
	.loc 1 153 0 discriminator 3
	add.n	a3, a3, a7
	ssai	14
	src	a3, a3, a3
	xor	a2, a3, a2
	.loc 1 155 0 discriminator 3
	add.n	a3, a11, a14
	ssai	25
	src	a3, a3, a3
	xor	a8, a3, a8
	.loc 1 156 0 discriminator 3
	add.n	a3, a14, a8
	l32i	a13, sp, 80
	ssai	23
	src	a3, a3, a3
	xor	a3, a3, a13
	.loc 1 157 0 discriminator 3
	add.n	a6, a8, a3
	ssai	19
	src	a6, a6, a6
	xor	a6, a6, a11
	.loc 1 160 0 discriminator 3
	l32i	a15, sp, 72
	.loc 1 158 0 discriminator 3
	add.n	a5, a3, a6
	ssai	14
	src	a5, a5, a5
	.loc 1 160 0 discriminator 3
	add.n	a11, a15, a12
	.loc 1 158 0 discriminator 3
	xor	a14, a5, a14
	.loc 1 160 0 discriminator 3
	l32i	a5, sp, 92
	ssai	25
	src	a11, a11, a11
	xor	a11, a11, a5
	.loc 1 161 0 discriminator 3
	add.n	a15, a12, a11
	l32i	a13, sp, 84
	ssai	23
	src	a15, a15, a15
	xor	a15, a15, a13
	.loc 1 162 0 discriminator 3
	add.n	a5, a11, a15
	l32i	a13, sp, 72
	ssai	19
	src	a5, a5, a5
	xor	a5, a5, a13
	.loc 1 163 0 discriminator 3
	add.n	a13, a15, a5
	ssai	14
	src	a13, a13, a13
	xor	a12, a13, a12
.LVL4:
	l32i	a13, sp, 88
	addi.n	a13, a13, -1
	s32i	a13, sp, 88
	bnez.n	a13, .L3
	s32i.n	a2, sp, 20
	l32i	a2, sp, 76
	s32i.n	a3, sp, 32
	s32i.n	a15, sp, 52
	l32i	a3, sp, 68
	l32i	a15, sp, 64
	s32i.n	a2, sp, 12
	l32i	a2, sp, 96
	s32i.n	a4, sp, 0
	s32i.n	a3, sp, 28
	s32i.n	a7, sp, 16
	s32i.n	a11, sp, 48
	s32i.n	a6, sp, 36
	s32i.n	a10, sp, 4
	s32i.n	a5, sp, 56
	s32i.n	a14, sp, 40
	s32i.n	a9, sp, 24
	s32i.n	a15, sp, 8
	s32i.n	a12, sp, 60
	s32i.n	a8, sp, 44
	mov.n	a4, sp
.LVL5:
	movi.n	a3, 0x10
.LVL6:
.L4:
	.loc 1 167 0 discriminator 3
	l32i.n	a6, a2, 0
	l32i.n	a5, a4, 0
	addi.n	a4, a4, 4
	add.n	a5, a6, a5
	s32i.n	a5, a2, 0
	addi.n	a2, a2, 4
	addi.n	a3, a3, -1
	bnez.n	a3, .L4
	.loc 1 168 0
	retw.n
.LFE16:
	.size	salsa20_8, .-salsa20_8
	.section	.text.blockmix_salsa8,"ax",@progbits
	.align	4
	.type	blockmix_salsa8, @function
blockmix_salsa8:
.LFB17:
	.loc 1 178 0
.LVL7:
	entry	sp, 48
.LCFI1:
	.loc 1 182 0
	slli	a8, a5, 7
	addi	a8, a8, -64
	add.n	a8, a2, a8
.LVL8:
	mov.n	a7, a4
	movi.n	a6, 0x10
	loop	a6, .L9_LEND
.LVL9:
.L9:
.LBB16:
.LBB17:
	.loc 1 48 0
	l32i.n	a9, a8, 0
	addi.n	a8, a8, 4
	s32i.n	a9, a7, 0
	addi.n	a7, a7, 4
	.L9_LEND:
.LBE17:
.LBE16:
	.loc 1 186 0
	slli	a6, a5, 1
	slli	a5, a5, 6
.LVL10:
	s32i.n	a5, sp, 0
	addi	a2, a2, 64
.LVL11:
	movi.n	a5, 0
	addi	a7, a4, 64
	j	.L10
.LVL12:
.L15:
	addi	a10, a2, -64
.LVL13:
	.loc 1 186 0 is_stmt 0 discriminator 3
	mov.n	a8, a4
.LVL14:
.L11:
.LBB18:
.LBB19:
	.loc 1 64 0 is_stmt 1
	l32i.n	a12, a8, 0
	l32i.n	a11, a10, 0
	addi.n	a10, a10, 4
	xor	a11, a12, a11
	s32i.n	a11, a8, 0
	addi.n	a8, a8, 4
	.loc 1 63 0
	bne	a8, a7, .L11
.LBE19:
.LBE18:
	.loc 1 189 0 discriminator 3
	mov.n	a10, a4
	call8	salsa20_8
.LVL15:
	mov.n	a10, a3
	mov.n	a8, a4
.LVL16:
.L12:
.LBB20:
.LBB21:
	.loc 1 48 0
	l32i.n	a11, a8, 0
	addi.n	a8, a8, 4
	s32i.n	a11, a10, 0
	addi.n	a10, a10, 4
	.loc 1 47 0
	bne	a8, a7, .L12
	mov.n	a10, a2
	mov.n	a8, a4
.L13:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 64 0
	l32i.n	a12, a8, 0
	l32i.n	a11, a10, 0
	addi.n	a10, a10, 4
	xor	a11, a12, a11
	s32i.n	a11, a8, 0
.LVL17:
	addi.n	a8, a8, 4
	.loc 1 63 0
	bne	a8, a7, .L13
.LBE23:
.LBE22:
	.loc 1 197 0 discriminator 3
	mov.n	a10, a4
	call8	salsa20_8
.LVL18:
	l32i.n	a8, sp, 0
	add.n	a10, a3, a8
	mov.n	a8, a4
.LVL19:
.L14:
.LBB24:
.LBB25:
	.loc 1 48 0
	l32i.n	a11, a8, 0
	addi.n	a8, a8, 4
	s32i.n	a11, a10, 0
	addi.n	a10, a10, 4
	.loc 1 47 0
	bne	a8, a7, .L14
	movi	a8, 0x80
.LBE25:
.LBE24:
	.loc 1 186 0 discriminator 3
	addi.n	a5, a5, 2
.LVL20:
	add.n	a2, a2, a8
.LVL21:
	addi	a3, a3, 64
.LVL22:
.L10:
	.loc 1 186 0 is_stmt 0 discriminator 1
	bltu	a5, a6, .L15
	.loc 1 204 0 is_stmt 1
	retw.n
.LFE17:
	.size	blockmix_salsa8, .-blockmix_salsa8
	.section	.text.escrypt_kdf_nosse,"ax",@progbits
	.literal_position
	.literal .LC3, 1073741823
	.literal .LC5, 33554431
	.literal .LC6, 16777215
	.literal .LC7, 1, 0
	.align	4
	.global	escrypt_kdf_nosse
	.type	escrypt_kdf_nosse, @function
escrypt_kdf_nosse:
.LFB20:
	.loc 1 296 0
.LVL23:
	entry	sp, 144
.LCFI2:
	.loc 1 296 0
	s32i	a3, sp, 76
	l32i	a3, sp, 148
.LVL24:
	s32i	a4, sp, 80
	s32i.n	a3, sp, 32
	.loc 1 310 0
	l32i	a4, sp, 156
.LVL25:
	.loc 1 296 0
	l32i	a3, sp, 152
.LVL26:
	s32i.n	a6, sp, 36
	.loc 1 310 0
	muluh	a9, a3, a4
	.loc 1 296 0
	l32i	a7, sp, 144
	.loc 1 310 0
	mull	a8, a3, a4
	bnez.n	a9, .L87
	l32r	a9, .LC3
	bgeu	a9, a8, .L83
	j	.L87
.L83:
	.loc 1 314 0
	l32i.n	a6, sp, 32
.LVL27:
	beqz.n	a6, .L84
.L87:
	.loc 1 315 0
	call8	__errno
.LVL28:
	movi.n	a2, 0x1b
.LVL29:
	j	.L88
.LVL30:
.L84:
	.loc 1 318 0
	addi.n	a8, a7, -1
	l32i.n	a4, sp, 32
	and	a9, a7, a8
	s32i	a8, sp, 68
	movi.n	a8, 1
	movnez	a4, a8, a9
	extui	a9, a4, 0, 8
	bnez.n	a9, .L63
	bltui	a7, 2, .L63
	.loc 1 322 0
	l32i.n	a9, sp, 32
	moveqz	a9, a8, a3
	extui	a9, a9, 0, 8
	beqz.n	a9, .L85
	j	.L63
.L85:
	l32i	a6, sp, 156
	l32i.n	a9, sp, 32
	movnez	a8, a9, a6
	extui	a8, a8, 0, 8
	beqz.n	a8, .L32
.LVL31:
.L63:
	.loc 1 323 0
	call8	__errno
.LVL32:
	movi.n	a2, 0x16
.LVL33:
	j	.L88
.LVL34:
.L32:
	.loc 1 326 0
	l32r	a8, .LC5
	l32i	a4, sp, 156
	quou	a9, a8, a4
	bltu	a9, a3, .L89
	l32r	a9, .LC6
	bltu	a9, a3, .L89
	.loc 1 328 0
	quou	a8, a8, a3
	bgeu	a8, a7, .L86
	j	.L89
.L86:
	.loc 1 336 0
	l32i	a6, sp, 156
	slli	a8, a6, 7
	mull	a8, a8, a3
	s32i.n	a8, sp, 40
.LVL35:
	.loc 1 337 0
	slli	a8, a7, 7
.LVL36:
	mull	a4, a8, a3
.LVL37:
	.loc 1 338 0
	l32i.n	a8, sp, 40
	add.n	a11, a8, a4
.LVL38:
	.loc 1 339 0
	bgeu	a11, a4, .L39
	j	.L89
.L39:
	.loc 1 343 0
	slli	a9, a3, 8
	s32i	a9, sp, 72
	addi	a9, a9, 64
.LVL39:
	.loc 1 344 0
	add.n	a6, a11, a9
.LVL40:
	.loc 1 345 0
	bgeu	a6, a9, .L40
.LVL41:
.L89:
	.loc 1 346 0
	call8	__errno
.LVL42:
	movi.n	a2, 0xc
.LVL43:
.L88:
	s32i.n	a2, a10, 0
.LVL44:
	j	.L44
.LVL45:
.L40:
	.loc 1 349 0
	l32i.n	a9, a2, 8
.LVL46:
	bltu	a9, a6, .L41
.LVL47:
.L45:
	.loc 1 357 0
	l32i.n	a2, a2, 4
.LVL48:
	.loc 1 358 0
	l32i.n	a6, sp, 40
.LVL49:
	.loc 1 357 0
	s32i.n	a2, sp, 44
.LVL50:
	.loc 1 362 0
	l32i.n	a8, sp, 44
	l32r	a14, .LC7
	l32r	a15, .LC7+4
	l32i.n	a13, sp, 36
	l32i	a11, sp, 80
	l32i	a10, sp, 76
	.loc 1 358 0
	add.n	a2, a2, a6
.LVL51:
	.loc 1 362 0
	s32i.n	a6, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a12, a5
	.loc 1 358 0
	s32i.n	a2, sp, 48
.LVL52:
	.loc 1 362 0
	call8	PBKDF2_SHA256
.LVL53:
	.loc 1 359 0
	add.n	a2, a2, a4
.LVL54:
	slli	a4, a3, 7
.LVL55:
.LBB44:
.LBB45:
	.loc 1 237 0
	slli	a9, a3, 5
	l32i.n	a8, sp, 44
.LBB46:
.LBB47:
	.loc 1 79 0
	srli	a6, a4, 2
.LBE47:
.LBE46:
	.loc 1 230 0
	add.n	a5, a2, a4
.LVL56:
	.loc 1 237 0
	s32i.n	a9, sp, 52
	slli	a9, a6, 2
	s32i.n	a8, sp, 36
.LVL57:
	add.n	a8, a2, a9
	add.n	a9, a5, a9
	s32i	a9, sp, 92
.LBE45:
.LBE44:
	.loc 1 365 0
	movi.n	a9, 0
	s32i	a8, sp, 88
	s32i.n	a9, sp, 60
.LBB68:
.LBB66:
	.loc 1 231 0
	add.n	a8, a5, a4
	addi	a9, a4, -64
	s32i.n	a8, sp, 56
.LBB49:
.LBB50:
	.loc 1 213 0
	add.n	a8, a2, a9
	s32i	a9, sp, 84
	s32i	a8, sp, 96
	j	.L42
.LVL58:
.L41:
.LBE50:
.LBE49:
.LBE66:
.LBE68:
	.loc 1 350 0
	mov.n	a10, a2
	call8	free_region
.LVL59:
	beqz.n	a10, .L43
.LVL60:
.L44:
	.loc 1 351 0
	movi.n	a2, -1
	retw.n
.LVL61:
.L43:
	.loc 1 353 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	alloc_region
.LVL62:
	bnez.n	a10, .L45
	j	.L44
.LVL63:
.L42:
.LBB69:
.LBB67:
	.loc 1 237 0 discriminator 3
	l32i.n	a10, sp, 52
	s32i	a2, sp, 64
	.loc 1 231 0 discriminator 3
	mov.n	a11, a2
	.loc 1 237 0 discriminator 3
	movi.n	a12, 0
	loop	a10, .L46_LEND
.LVL64:
.L46:
.LBB51:
.LBB52:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 83 0
	l32i.n	a8, sp, 36
	addx4	a9, a12, a8
	l8ui	a13, a9, 0
	l8ui	a14, a9, 1
	s8i	a13, sp, 20
	l8ui	a13, a9, 2
	l8ui	a9, a9, 3
	s8i	a14, sp, 21
	s8i	a13, sp, 22
	s8i	a9, sp, 23
	.loc 2 84 0
	l32i.n	a9, sp, 20
.LBE52:
.LBE51:
	.loc 1 237 0
	addi.n	a12, a12, 1
.LVL65:
	.loc 1 238 0
	s32i.n	a9, a11, 0
	addi.n	a11, a11, 4
	.L46_LEND:
	l32i.n	a9, sp, 48
	add.n	a14, a9, a4
	.loc 1 237 0
	movi.n	a9, 0
	mov.n	a15, a9
.LVL66:
.L50:
	movi.n	a10, 1
	sub	a11, a14, a4
.LVL67:
	mov.n	a12, a2
	movnez	a10, a6, a6
	loop	a10, .L47_LEND
.LVL68:
.L47:
.LBB53:
.LBB48:
	.loc 1 81 0
	l32i.n	a13, a12, 0
	addi.n	a12, a12, 4
	s32i.n	a13, a11, 0
	addi.n	a11, a11, 4
	.L47_LEND:
.LBE48:
.LBE53:
	.loc 1 247 0
	l32i.n	a12, sp, 56
	mov.n	a11, a5
	mov.n	a10, a2
	mov.n	a13, a3
	s32i	a9, sp, 108
	s32i	a14, sp, 104
	s32i	a15, sp, 100
	call8	blockmix_salsa8
.LVL69:
	l32i	a14, sp, 104
	movi.n	a10, 1
	l32i	a15, sp, 100
	l32i	a9, sp, 108
	mov.n	a11, a14
	mov.n	a12, a5
	movnez	a10, a6, a6
	loop	a10, .L48_LEND
.LVL70:
.L48:
.LBB54:
.LBB55:
	.loc 1 81 0
	l32i.n	a13, a12, 0
	addi.n	a12, a12, 4
	s32i.n	a13, a11, 0
	addi.n	a11, a11, 4
	.L48_LEND:
.LBE55:
.LBE54:
	.loc 1 254 0
	l32i.n	a12, sp, 56
	mov.n	a11, a2
	mov.n	a10, a5
	mov.n	a13, a3
	s32i	a9, sp, 108
	s32i	a14, sp, 104
	s32i	a15, sp, 100
	call8	blockmix_salsa8
.LVL71:
	.loc 1 241 0
	l32i	a9, sp, 108
	movi.n	a10, 1
	addi.n	a11, a9, 2
	l32i	a14, sp, 104
	l32i	a15, sp, 100
	bltu	a11, a9, .L49
	movi.n	a10, 0
.L49:
	l32i	a8, sp, 72
	add.n	a10, a10, a15
	add.n	a14, a14, a8
	l32i.n	a8, sp, 32
	mov.n	a9, a11
	mov.n	a15, a10
.LVL72:
	bne	a8, a10, .L64
	bltu	a11, a7, .L50
.L64:
	movi.n	a9, 0
.LVL73:
	mov.n	a14, a9
.LVL74:
.L57:
	l32i	a8, sp, 96
	.loc 1 263 0
	mov.n	a11, a2
	l32i.n	a10, a8, 0
	l32i	a8, sp, 68
	and	a10, a10, a8
	mull	a10, a4, a10
	l32i.n	a8, sp, 48
	add.n	a10, a8, a10
.LVL75:
.L53:
.LBB56:
.LBB57:
	.loc 1 99 0
	l32i.n	a13, a11, 0
	l32i.n	a12, a10, 0
	.loc 1 98 0
	l32i	a8, sp, 88
	.loc 1 99 0
	xor	a12, a13, a12
	s32i.n	a12, a11, 0
	addi.n	a11, a11, 4
	addi.n	a10, a10, 4
	.loc 1 98 0
	bne	a11, a8, .L53
.LBE57:
.LBE56:
	.loc 1 265 0
	l32i.n	a12, sp, 56
	mov.n	a11, a5
	mov.n	a10, a2
	mov.n	a13, a3
	s32i	a9, sp, 108
	s32i	a14, sp, 104
	call8	blockmix_salsa8
.LVL76:
.LBB58:
.LBB59:
	.loc 1 213 0
	l32i	a8, sp, 84
.LBE59:
.LBE58:
	.loc 1 271 0
	l32i	a14, sp, 104
.LBB61:
.LBB60:
	.loc 1 213 0
	add.n	a10, a5, a8
.LVL77:
	l32i.n	a10, a10, 0
.LVL78:
	l32i	a8, sp, 68
.LVL79:
.LBE60:
.LBE61:
	.loc 1 271 0
	l32i	a9, sp, 108
	and	a10, a10, a8
	mull	a10, a4, a10
	l32i.n	a8, sp, 48
	mov.n	a11, a5
	add.n	a10, a8, a10
.LVL80:
.L55:
.LBB62:
.LBB63:
	.loc 1 99 0
	l32i.n	a13, a11, 0
	l32i.n	a12, a10, 0
	.loc 1 98 0
	l32i	a8, sp, 92
	.loc 1 99 0
	xor	a12, a13, a12
	s32i.n	a12, a11, 0
	addi.n	a11, a11, 4
	addi.n	a10, a10, 4
	.loc 1 98 0
	bne	a11, a8, .L55
.LBE63:
.LBE62:
	.loc 1 273 0
	l32i.n	a12, sp, 56
	mov.n	a11, a2
	mov.n	a10, a5
	mov.n	a13, a3
	s32i	a9, sp, 108
	s32i	a14, sp, 104
	call8	blockmix_salsa8
.LVL81:
	.loc 1 258 0
	l32i	a9, sp, 108
	movi.n	a10, 1
	addi.n	a11, a9, 2
	l32i	a14, sp, 104
	bltu	a11, a9, .L56
	movi.n	a10, 0
.L56:
	l32i.n	a8, sp, 32
	add.n	a10, a10, a14
	mov.n	a9, a11
	mov.n	a14, a10
.LVL82:
	bne	a8, a10, .L65
	bltu	a11, a7, .L57
.L65:
	l32i.n	a9, sp, 52
.LVL83:
	movi.n	a10, 1
.LVL84:
	movi.n	a12, 0
	movnez	a10, a9, a9
	loop	a10, .L59_LEND
.LVL85:
.L59:
	l32i	a8, sp, 64
	l32i.n	a9, a8, 0
.LBB64:
.LBB65:
	.loc 2 99 0
	l32i.n	a8, sp, 36
	srli	a14, a9, 8
	addx4	a11, a12, a8
	extui	a13, a9, 16, 16
	s32i.n	a9, sp, 16
.LVL86:
	s8i	a9, a11, 0
	extui	a9, a9, 24, 8
.LVL87:
	s8i	a9, a11, 3
	l32i	a9, sp, 64
	s8i	a14, a11, 1
	addi.n	a9, a9, 4
	s8i	a13, a11, 2
	s32i	a9, sp, 64
.LBE65:
.LBE64:
	.loc 1 276 0
	addi.n	a12, a12, 1
.LVL88:
	.L59_LEND:
	l32i.n	a9, sp, 36
.LBE67:
.LBE69:
	.loc 1 365 0 discriminator 3
	l32i.n	a8, sp, 60
	add.n	a9, a9, a4
	addi.n	a8, a8, 1
	s32i.n	a9, sp, 36
.LVL89:
	l32i	a9, sp, 156
	s32i.n	a8, sp, 60
.LVL90:
	bne	a9, a8, .L42
	.loc 1 371 0
	l32i	a2, sp, 164
.LVL91:
	l32r	a14, .LC7
	s32i.n	a2, sp, 4
	l32i	a2, sp, 160
	l32r	a15, .LC7+4
	l32i.n	a13, sp, 40
	l32i.n	a12, sp, 44
.LVL92:
	l32i	a11, sp, 80
	l32i	a10, sp, 76
	s32i.n	a2, sp, 0
	call8	PBKDF2_SHA256
.LVL93:
	.loc 1 374 0
	movi.n	a2, 0
	.loc 1 375 0
	retw.n
.LFE20:
	.size	escrypt_kdf_nosse, .-escrypt_kdf_nosse
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x90
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/../crypto_scrypt.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/../pbkdf2-sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa50
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1e
	.4byte	0x7e
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x32
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x39
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.4byte	0x85
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x7
	.uleb128 0x8
	.byte	0xc
	.byte	0x6
	.byte	0x34
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x35
	.4byte	0x9e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x35
	.4byte	0x9e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x36
	.4byte	0x28
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x37
	.4byte	0xe1
	.uleb128 0xa
	.byte	0x40
	.byte	0x6
	.byte	0x39
	.4byte	0x134
	.uleb128 0xb
	.string	"d"
	.byte	0x6
	.byte	0x3a
	.4byte	0x134
	.uleb128 0xb
	.string	"w"
	.byte	0x6
	.byte	0x3b
	.4byte	0x144
	.byte	0
	.uleb128 0xc
	.4byte	0xc4
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0xb9
	.4byte	0x154
	.uleb128 0xd
	.4byte	0x97
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3c
	.4byte	0x119
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3e
	.4byte	0x10e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x176
	.uleb128 0xe
	.4byte	0xae
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2a
	.byte	0x3
	.4byte	0x1ad
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2a
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x2a
	.4byte	0x1b3
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.4byte	0x21
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x154
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0xe
	.4byte	0x154
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x72
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x239
	.uleb128 0x14
	.string	"B"
	.byte	0x1
	.byte	0x72
	.4byte	0x239
	.4byte	.LLST0
	.uleb128 0x15
	.string	"X"
	.byte	0x1
	.byte	0x74
	.4byte	0x154
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x75
	.4byte	0x239
	.4byte	.LLST1
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x76
	.4byte	0x28
	.uleb128 0x17
	.4byte	0x181
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x78
	.uleb128 0x18
	.4byte	0x198
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	0x18d
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1a
	.4byte	0x1a3
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3a
	.byte	0x3
	.4byte	0x26b
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3a
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x3a
	.4byte	0x1b3
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.4byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ed
	.uleb128 0x14
	.string	"Bin"
	.byte	0x1
	.byte	0xb1
	.4byte	0x3ed
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb1
	.4byte	0x239
	.4byte	.LLST6
	.uleb128 0x1c
	.string	"X"
	.byte	0x1
	.byte	0xb1
	.4byte	0x239
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.byte	0xb1
	.4byte	0x28
	.4byte	.LLST7
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.4byte	0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	0x181
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0xb6
	.4byte	0x2f4
	.uleb128 0x1e
	.4byte	0x198
	.uleb128 0x1f
	.4byte	0x18d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x1a
	.4byte	0x1a3
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x23f
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xbc
	.4byte	0x32d
	.uleb128 0x18
	.4byte	0x256
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	0x24b
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x1a
	.4byte	0x261
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x181
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0xc1
	.4byte	0x366
	.uleb128 0x18
	.4byte	0x198
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	0x18d
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x1a
	.4byte	0x1a3
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x23f
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0xc4
	.4byte	0x393
	.uleb128 0x1e
	.4byte	0x256
	.uleb128 0x1e
	.4byte	0x24b
	.uleb128 0x19
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x20
	.4byte	0x261
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x181
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0xc9
	.4byte	0x3c8
	.uleb128 0x18
	.4byte	0x198
	.4byte	.LLST15
	.uleb128 0x1e
	.4byte	0x18d
	.uleb128 0x19
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x1a
	.4byte	0x1a3
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL15
	.4byte	0x1be
	.4byte	0x3dc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0x1be
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f3
	.uleb128 0xe
	.4byte	0xb9
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	0x469
	.uleb128 0x11
	.string	"B"
	.byte	0x1
	.byte	0xe3
	.4byte	0x17b
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xe3
	.4byte	0x28
	.uleb128 0x11
	.string	"N"
	.byte	0x1
	.byte	0xe3
	.4byte	0xc4
	.uleb128 0x11
	.string	"V"
	.byte	0x1
	.byte	0xe3
	.4byte	0x239
	.uleb128 0x11
	.string	"XY"
	.byte	0x1
	.byte	0xe3
	.4byte	0x239
	.uleb128 0x12
	.string	"X"
	.byte	0x1
	.byte	0xe5
	.4byte	0x239
	.uleb128 0x12
	.string	"Y"
	.byte	0x1
	.byte	0xe6
	.4byte	0x239
	.uleb128 0x12
	.string	"Z"
	.byte	0x1
	.byte	0xe7
	.4byte	0x239
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xe8
	.4byte	0xc4
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0xe9
	.4byte	0xc4
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0xea
	.4byte	0x28
	.byte	0
	.uleb128 0x24
	.4byte	.LASF35
	.byte	0x2
	.byte	0x4f
	.4byte	0xb9
	.byte	0x3
	.4byte	0x48e
	.uleb128 0x11
	.string	"src"
	.byte	0x2
	.byte	0x4f
	.4byte	0x170
	.uleb128 0x12
	.string	"w"
	.byte	0x2
	.byte	0x52
	.4byte	0xb9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4a
	.byte	0x3
	.4byte	0x4ce
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4a
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x4a
	.4byte	0x1b3
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x4a
	.4byte	0x28
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.4byte	0x28
	.uleb128 0x12
	.string	"L"
	.byte	0x1
	.byte	0x4c
	.4byte	0x28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.4byte	0x50e
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5c
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x5c
	.4byte	0x1b3
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x5c
	.4byte	0x28
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.4byte	0x28
	.uleb128 0x12
	.string	"L"
	.byte	0x1
	.byte	0x5e
	.4byte	0x28
	.byte	0
	.uleb128 0x24
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd3
	.4byte	0xc4
	.byte	0x3
	.4byte	0x53a
	.uleb128 0x11
	.string	"B"
	.byte	0x1
	.byte	0xd3
	.4byte	0xda
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xd3
	.4byte	0x28
	.uleb128 0x12
	.string	"X"
	.byte	0x1
	.byte	0xd5
	.4byte	0x3ed
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.4byte	0x55b
	.uleb128 0x11
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.4byte	0x17b
	.uleb128 0x11
	.string	"w"
	.byte	0x2
	.byte	0x60
	.4byte	0xb9
	.byte	0
	.uleb128 0x25
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x124
	.4byte	0x21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa27
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x124
	.4byte	0x16a
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x124
	.4byte	0x170
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x125
	.4byte	0x28
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x125
	.4byte	0x170
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x125
	.4byte	0x28
	.4byte	.LLST21
	.uleb128 0x27
	.string	"N"
	.byte	0x1
	.2byte	0x126
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"_r"
	.byte	0x1
	.2byte	0x126
	.4byte	0xb9
	.4byte	.LLST22
	.uleb128 0x27
	.string	"_p"
	.byte	0x1
	.2byte	0x126
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.2byte	0x126
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x127
	.4byte	0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2a
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x129
	.4byte	0x28
	.4byte	.LLST23
	.uleb128 0x2a
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x129
	.4byte	0x28
	.4byte	.LLST24
	.uleb128 0x2a
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x129
	.4byte	0x28
	.4byte	.LLST25
	.uleb128 0x2a
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x129
	.4byte	0x28
	.4byte	.LLST26
	.uleb128 0x2b
	.string	"B"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x17b
	.4byte	.LLST27
	.uleb128 0x2b
	.string	"V"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x239
	.4byte	.LLST28
	.uleb128 0x2b
	.string	"XY"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x239
	.4byte	.LLST29
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x28
	.4byte	.LLST30
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x28
	.4byte	.LLST31
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb9
	.4byte	.LLST32
	.uleb128 0x2c
	.4byte	0x3f8
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x16f
	.4byte	0x96a
	.uleb128 0x18
	.4byte	0x428
	.4byte	.LLST33
	.uleb128 0x1e
	.4byte	0x41f
	.uleb128 0x1e
	.4byte	0x416
	.uleb128 0x1e
	.4byte	0x40d
	.uleb128 0x18
	.4byte	0x404
	.4byte	.LLST34
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1a
	.4byte	0x432
	.4byte	.LLST33
	.uleb128 0x20
	.4byte	0x43b
	.uleb128 0x2e
	.4byte	0x444
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.4byte	0x44d
	.4byte	.LLST36
	.uleb128 0x20
	.4byte	0x456
	.uleb128 0x1a
	.4byte	0x45f
	.4byte	.LLST37
	.uleb128 0x2f
	.4byte	0x48e
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xf3
	.4byte	0x74f
	.uleb128 0x1e
	.4byte	0x4b0
	.uleb128 0x18
	.4byte	0x4a5
	.4byte	.LLST38
	.uleb128 0x18
	.4byte	0x49a
	.4byte	.LLST39
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x1a
	.4byte	0x4bb
	.4byte	.LLST40
	.uleb128 0x2e
	.4byte	0x4c4
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x50e
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x104
	.4byte	0x784
	.uleb128 0x1e
	.4byte	0x527
	.uleb128 0x18
	.4byte	0x51e
	.4byte	.LLST41
	.uleb128 0x19
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x2e
	.4byte	0x530
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x469
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.byte	0xee
	.4byte	0x7b4
	.uleb128 0x18
	.4byte	0x479
	.4byte	.LLST42
	.uleb128 0x19
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x2e
	.4byte	0x484
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x48e
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0xfa
	.4byte	0x7f9
	.uleb128 0x1e
	.4byte	0x4b0
	.uleb128 0x1e
	.4byte	0x4a5
	.uleb128 0x18
	.4byte	0x49a
	.4byte	.LLST43
	.uleb128 0x19
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x1a
	.4byte	0x4bb
	.4byte	.LLST44
	.uleb128 0x2e
	.4byte	0x4c4
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x4ce
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x107
	.4byte	0x839
	.uleb128 0x1e
	.4byte	0x4f0
	.uleb128 0x1e
	.4byte	0x4e5
	.uleb128 0x18
	.4byte	0x4da
	.4byte	.LLST41
	.uleb128 0x19
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x1a
	.4byte	0x4fb
	.4byte	.LLST46
	.uleb128 0x20
	.4byte	0x504
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x50e
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x10c
	.4byte	0x869
	.uleb128 0x1f
	.4byte	0x527
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	0x51e
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x1a
	.4byte	0x530
	.4byte	.LLST47
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x4ce
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.2byte	0x10f
	.4byte	0x8a5
	.uleb128 0x1e
	.4byte	0x4f0
	.uleb128 0x1e
	.4byte	0x4e5
	.uleb128 0x1e
	.4byte	0x4da
	.uleb128 0x19
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x1a
	.4byte	0x4fb
	.4byte	.LLST48
	.uleb128 0x20
	.4byte	0x504
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x53a
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.2byte	0x115
	.4byte	0x8cc
	.uleb128 0x18
	.4byte	0x551
	.4byte	.LLST49
	.uleb128 0x18
	.4byte	0x546
	.4byte	.LLST50
	.byte	0
	.uleb128 0x21
	.4byte	.LVL69
	.4byte	0x26b
	.4byte	0x8f4
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL71
	.4byte	0x26b
	.4byte	0x91c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL76
	.4byte	0x26b
	.4byte	0x944
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL81
	.4byte	0x26b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL28
	.4byte	0xa27
	.uleb128 0x31
	.4byte	.LVL32
	.4byte	0xa27
	.uleb128 0x31
	.4byte	.LVL42
	.4byte	0xa27
	.uleb128 0x21
	.4byte	.LVL53
	.4byte	0xa32
	.4byte	0x9c0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL59
	.4byte	0xa3d
	.4byte	0x9d4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0xa48
	.4byte	0x9ee
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
	.uleb128 0x23
	.4byte	.LVL93
	.4byte	0xa32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x7
	.byte	0xf
	.uleb128 0x32
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2a
	.uleb128 0x32
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x45
	.uleb128 0x32
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x44
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x17
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
	.uleb128 0x5
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE16
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x72
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x72
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x72
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x72
	.sleb128 -192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL23
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL27
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL31
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59-1
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL61
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL60
	.2byte	0x7
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE20
	.2byte	0x7
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0xf
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x14
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x14
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53-1
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE20
	.2byte	0xd
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL31
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL26
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL45
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL61
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL90
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93-1
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL63
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE20
	.2byte	0xd
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL63
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL66
	.4byte	.LVL69-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL66
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE20
	.2byte	0xd
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL74
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE20
	.2byte	0xd
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0xa
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0xa
	.byte	0x7c
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE20
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0xa
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0xa
	.byte	0x7c
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x22
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"salt"
.LASF3:
	.string	"size_t"
.LASF19:
	.string	"uintptr_t"
.LASF18:
	.string	"uint64_t"
.LASF4:
	.string	"__uint8_t"
.LASF45:
	.string	"V_size"
.LASF30:
	.string	"blockmix_salsa8"
.LASF10:
	.string	"long long unsigned int"
.LASF51:
	.string	"alloc_region"
.LASF37:
	.string	"store32_le"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"escrypt_local_t"
.LASF38:
	.string	"local"
.LASF48:
	.string	"__errno"
.LASF12:
	.string	"long int"
.LASF50:
	.string	"free_region"
.LASF46:
	.string	"XY_size"
.LASF21:
	.string	"aligned"
.LASF7:
	.string	"__uint32_t"
.LASF49:
	.string	"PBKDF2_SHA256"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"blkxor_64"
.LASF29:
	.string	"salsa20_8"
.LASF14:
	.string	"long unsigned int"
.LASF52:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"saltlen"
.LASF32:
	.string	"smix"
.LASF20:
	.string	"base"
.LASF13:
	.string	"sizetype"
.LASF27:
	.string	"blkcpy_64"
.LASF54:
	.string	"escrypt_kdf_nosse"
.LASF26:
	.string	"dest"
.LASF9:
	.string	"__uint64_t"
.LASF33:
	.string	"blkcpy"
.LASF5:
	.string	"unsigned char"
.LASF6:
	.string	"short int"
.LASF36:
	.string	"integerify"
.LASF11:
	.string	"__uintptr_t"
.LASF34:
	.string	"blkxor"
.LASF39:
	.string	"passwd"
.LASF43:
	.string	"buflen"
.LASF17:
	.string	"uint32_t"
.LASF35:
	.string	"load32_le"
.LASF15:
	.string	"char"
.LASF31:
	.string	"Bout"
.LASF23:
	.string	"escrypt_region_t"
.LASF53:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/pwhash_scryptsalsa208sha256_nosse.c"
.LASF44:
	.string	"B_size"
.LASF24:
	.string	"escrypt_block_t"
.LASF40:
	.string	"passwdlen"
.LASF16:
	.string	"uint8_t"
.LASF47:
	.string	"need"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
