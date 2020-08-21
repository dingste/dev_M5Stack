	.file	"blake2b-ref.c"
	.text
.Ltext0:
	.section	.text.crypto_generichash_blake2b__init_param,"ax",@progbits
	.literal_position
	.literal .LC2, blake2b_IV
	.align	4
	.global	crypto_generichash_blake2b__init_param
	.type	crypto_generichash_blake2b__init_param, @function
crypto_generichash_blake2b__init_param:
.LFB19:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-ref.c"
	.loc 1 173 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
.LBB20:
.LBB21:
	.loc 1 162 0
	movi	a12, 0x165
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL2:
	.loc 1 165 0
	l32r	a12, .LC2
	.loc 1 162 0
	movi.n	a4, 0
	.loc 1 165 0
	movi.n	a8, 8
	loop	a8, .L2_LEND
.LVL3:
.L2:
	add.n	a9, a4, a12
	l32i.n	a10, a9, 0
	l32i.n	a11, a9, 4
	add.n	a9, a2, a4
	s32i.n	a10, a9, 0
	s32i.n	a11, a9, 4
	addi.n	a4, a4, 8
	.L2_LEND:
	.loc 1 164 0
	movi.n	a4, 0
.LVL4:
.L3:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 44 0 discriminator 3
	add.n	a11, a3, a4
.LVL5:
	movi.n	a12, 8
	mov.n	a10, sp
	call8	memcpy
.LVL6:
.LBE23:
.LBE22:
	.loc 1 183 0 discriminator 3
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	addi.n	a4, a4, 8
.LVL7:
	xor	a8, a9, a8
	s32i.n	a8, a2, 0
	l32i.n	a9, a2, 4
	l32i.n	a8, sp, 4
	xor	a8, a9, a8
	s32i.n	a8, a2, 4
.LVL8:
	addi.n	a2, a2, 8
	.loc 1 182 0 discriminator 3
	bnei	a4, 64, .L3
	.loc 1 186 0
	movi.n	a2, 0
	retw.n
.LFE19:
	.size	crypto_generichash_blake2b__init_param, .-crypto_generichash_blake2b__init_param
	.section	.text.crypto_generichash_blake2b__init,"ax",@progbits
	.literal_position
	.literal .LC3, 0, 0
	.align	4
	.global	crypto_generichash_blake2b__init
	.type	crypto_generichash_blake2b__init, @function
crypto_generichash_blake2b__init:
.LFB20:
	.loc 1 190 0
.LVL9:
	entry	sp, 112
.LCFI1:
	.loc 1 190 0
	extui	a3, a3, 0, 8
	.loc 1 193 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L7
	.loc 1 194 0
	call8	abort
.LVL10:
.L7:
.LBB28:
.LBB29:
	.loc 2 64 0
	l32r	a11, .LC3+4
.LBE29:
.LBE28:
	.loc 1 196 0
	s8i	a3, sp, 0
.LBB35:
.LBB30:
	.loc 2 64 0
	s32i	a11, sp, 76
.LBE30:
.LBE35:
	.loc 1 198 0
	movi.n	a3, 1
.LVL11:
.LBB36:
.LBB31:
	.loc 2 64 0
	l32r	a10, .LC3
	l32i	a9, sp, 76
.LBE31:
.LBE36:
	.loc 1 198 0
	s8i	a3, sp, 2
	.loc 1 199 0
	s8i	a3, sp, 3
.LVL12:
.LBB37:
.LBB38:
	.loc 2 99 0
	movi.n	a3, 0
.LBE38:
.LBE37:
	.loc 1 197 0
	movi.n	a8, 0
.LBB40:
.LBB32:
	.loc 2 64 0
	s32i	a10, sp, 72
.LBE32:
.LBE40:
	.loc 1 204 0
	mov.n	a11, a3
	movi.n	a12, 0xe
	addi	a10, sp, 18
	.loc 1 197 0
	s8i	a8, sp, 1
.LBB41:
.LBB33:
	.loc 2 64 0
	s32i.n	a9, sp, 12
.LBE33:
.LBE41:
	.loc 1 203 0
	s8i	a8, sp, 17
.LBB42:
.LBB39:
	.loc 2 99 0
	s32i	a3, sp, 64
	s32i.n	a3, sp, 4
.LVL13:
.LBE39:
.LBE42:
.LBB43:
.LBB34:
	.loc 2 64 0
	s32i.n	a3, sp, 8
.LBE34:
.LBE43:
	.loc 1 202 0
	s8i	a3, sp, 16
	.loc 1 204 0
	call8	memset
.LVL14:
	.loc 1 205 0
	mov.n	a11, a3
	movi.n	a12, 0x10
	addi	a10, sp, 32
	call8	memset
.LVL15:
	.loc 1 206 0
	movi.n	a12, 0x10
	mov.n	a11, a3
	addi	a10, sp, 48
	call8	memset
.LVL16:
	.loc 1 207 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_param
.LVL17:
	.loc 1 208 0
	mov.n	a2, a10
.LVL18:
	retw.n
.LFE20:
	.size	crypto_generichash_blake2b__init, .-crypto_generichash_blake2b__init
	.section	.text.crypto_generichash_blake2b__init_salt_personal,"ax",@progbits
	.literal_position
	.literal .LC4, 0, 0
	.align	4
	.global	crypto_generichash_blake2b__init_salt_personal
	.type	crypto_generichash_blake2b__init_salt_personal, @function
crypto_generichash_blake2b__init_salt_personal:
.LFB21:
	.loc 1 213 0
.LVL19:
	entry	sp, 112
.LCFI2:
	.loc 1 213 0
	extui	a3, a3, 0, 8
	.loc 1 216 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L9
	.loc 1 217 0
	call8	abort
.LVL20:
.L9:
.LBB52:
.LBB53:
	.loc 2 64 0
	l32r	a13, .LC4+4
	l32r	a12, .LC4
	s32i	a13, sp, 76
.LBE53:
.LBE52:
	.loc 1 219 0
	s8i	a3, sp, 0
.LBB58:
.LBB54:
	.loc 2 64 0
	l32i	a3, sp, 76
.LVL21:
.LBE54:
.LBE58:
.LBB59:
.LBB60:
	.loc 2 99 0
	movi.n	a11, 0
.LBE60:
.LBE59:
	.loc 1 220 0
	movi.n	a8, 0
	.loc 1 221 0
	movi.n	a9, 1
.LBB62:
.LBB55:
	.loc 2 64 0
	s32i	a12, sp, 72
.LBE55:
.LBE62:
	.loc 1 227 0
	addi	a10, sp, 18
	movi.n	a12, 0xe
.LBB63:
.LBB61:
	.loc 2 99 0
	s32i	a11, sp, 64
	s32i.n	a11, sp, 4
.LBE61:
.LBE63:
.LBB64:
.LBB56:
	.loc 2 64 0
	s32i.n	a11, sp, 8
.LBE56:
.LBE64:
	.loc 1 225 0
	s8i	a11, sp, 16
	.loc 1 220 0
	s8i	a8, sp, 1
	.loc 1 221 0
	s8i	a9, sp, 2
	.loc 1 222 0
	s8i	a9, sp, 3
.LVL22:
.LBB65:
.LBB57:
	.loc 2 64 0
	s32i.n	a3, sp, 12
.LBE57:
.LBE65:
	.loc 1 226 0
	s8i	a8, sp, 17
	.loc 1 227 0
	call8	memset
.LVL23:
.LBB66:
.LBB67:
	.loc 1 146 0
	movi.n	a12, 0x10
	mov.n	a11, a4
	addi	a10, sp, 32
.LBE67:
.LBE66:
	.loc 1 228 0
	beqz.n	a4, .L10
.LVL24:
.LBB69:
.LBB68:
	.loc 1 146 0
	call8	memcpy
.LVL25:
	j	.L11
.LVL26:
.L10:
.LBE68:
.LBE69:
	.loc 1 231 0
	call8	memset
.LVL27:
.L11:
.LBB70:
.LBB71:
	.loc 1 154 0
	movi.n	a12, 0x10
	mov.n	a11, a5
	addi	a10, sp, 48
.LBE71:
.LBE70:
	.loc 1 233 0
	beqz.n	a5, .L12
.LVL28:
.LBB73:
.LBB72:
	.loc 1 154 0
	call8	memcpy
.LVL29:
	j	.L13
.LVL30:
.L12:
.LBE72:
.LBE73:
	.loc 1 236 0
	call8	memset
.LVL31:
.L13:
	.loc 1 238 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_param
.LVL32:
	.loc 1 239 0
	mov.n	a2, a10
.LVL33:
	retw.n
.LFE21:
	.size	crypto_generichash_blake2b__init_salt_personal, .-crypto_generichash_blake2b__init_salt_personal
	.section	.text.crypto_generichash_blake2b__update,"ax",@progbits
	.literal_position
	.literal .LC8, blake2b_compress
	.align	4
	.global	crypto_generichash_blake2b__update
	.type	crypto_generichash_blake2b__update, @function
crypto_generichash_blake2b__update:
.LFB24:
	.loc 1 327 0
.LVL34:
	entry	sp, 48
.LCFI3:
.LBB77:
	.loc 1 337 0
	movi	a7, 0xe0
	add.n	a6, a2, a7
	s32i.n	a6, sp, 0
.LBE77:
	.loc 1 328 0
	j	.L15
.LVL35:
.L24:
.LBB86:
	.loc 1 329 0
	l32i	a10, a2, 352
.LVL36:
	.loc 1 330 0
	movi	a6, 0x100
	sub	a6, a6, a10
.LVL37:
	addi	a7, a2, 96
	.loc 1 332 0
	bnez.n	a5, .L25
	bgeu	a6, a4, .L26
.L25:
	.loc 1 333 0
	mov.n	a12, a6
	mov.n	a11, a3
	add.n	a10, a7, a10
.LVL38:
	call8	memcpy
.LVL39:
	.loc 1 334 0
	l32i	a8, a2, 352
.LBB78:
.LBB79:
	.loc 1 91 0
	l32i	a10, a2, 64
.LBE79:
.LBE78:
	.loc 1 334 0
	add.n	a8, a8, a6
.LBB83:
.LBB80:
	.loc 1 91 0
	movi	a9, 0x80
.LBE80:
.LBE83:
	.loc 1 334 0
	s32i	a8, a2, 352
.LVL40:
.LBB84:
.LBB81:
	.loc 1 91 0
	add.n	a12, a10, a9
	l32i	a8, a2, 68
	movi.n	a11, 1
	bltu	a12, a10, .L18
	movi.n	a11, 0
.L18:
	add.n	a11, a11, a8
	s32i	a12, a2, 64
	s32i	a11, a2, 68
	.loc 1 92 0
	movi.n	a8, 0
	movi.n	a10, 1
	bne	a11, a8, .L20
	movi	a11, 0x7f
	bgeu	a11, a12, .L19
.L20:
	movi.n	a10, 0
	mov.n	a8, a10
.L19:
	l32i	a12, a2, 72
	l32i	a14, a2, 76
	add.n	a10, a12, a10
	movi.n	a11, 1
	bltu	a10, a12, .L21
	movi.n	a11, 0
.L21:
	add.n	a8, a14, a8
	add.n	a8, a11, a8
	s32i	a8, a2, 76
.LBE81:
.LBE84:
	.loc 1 336 0
	l32r	a8, .LC8
.LBB85:
.LBB82:
	.loc 1 92 0
	s32i	a10, a2, 72
.LBE82:
.LBE85:
	.loc 1 336 0
	l32i.n	a8, a8, 0
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a8
.LVL41:
	.loc 1 337 0
	l32i.n	a11, sp, 0
	movi	a12, 0x80
	mov.n	a10, a7
	call8	memcpy
.LVL42:
	.loc 1 339 0
	l32i	a8, a2, 352
	.loc 1 340 0
	add.n	a3, a3, a6
	.loc 1 339 0
	addi	a8, a8, -128
	s32i	a8, a2, 352
	.loc 1 341 0
	sub	a6, a4, a6
.LVL43:
	movi.n	a8, 1
	bltu	a4, a6, .L22
	movi.n	a8, 0
.L22:
	sub	a8, a5, a8
.LVL44:
	mov.n	a4, a6
.LVL45:
	mov.n	a5, a8
	j	.L15
.LVL46:
.L26:
	.loc 1 344 0
	mov.n	a12, a4
	mov.n	a11, a3
	add.n	a10, a7, a10
.LVL47:
	call8	memcpy
.LVL48:
	.loc 1 345 0
	l32i	a3, a2, 352
	add.n	a4, a3, a4
	s32i	a4, a2, 352
.LVL49:
	j	.L27
.LVL50:
.L15:
.LBE86:
	.loc 1 328 0
	or	a6, a4, a5
	bnez.n	a6, .L24
.L27:
.LVL51:
	.loc 1 352 0
	movi.n	a2, 0
.LVL52:
	retw.n
.LFE24:
	.size	crypto_generichash_blake2b__update, .-crypto_generichash_blake2b__update
	.section	.text.crypto_generichash_blake2b__init_key,"ax",@progbits
	.literal_position
	.literal .LC9, 0, 0
	.literal .LC10, 128, 0
	.align	4
	.global	crypto_generichash_blake2b__init_key
	.type	crypto_generichash_blake2b__init_key, @function
crypto_generichash_blake2b__init_key:
.LFB22:
	.loc 1 244 0
.LVL53:
	entry	sp, 240
.LCFI4:
	.loc 1 244 0
	extui	a3, a3, 0, 8
	mov.n	a6, a2
	.loc 1 247 0
	addi.n	a2, a3, -1
.LVL54:
	extui	a2, a2, 0, 8
	movi.n	a8, 0x3f
	.loc 1 244 0
	extui	a5, a5, 0, 8
	.loc 1 247 0
	bgeu	a8, a2, .L29
.LVL55:
.L30:
	.loc 1 248 0
	call8	abort
.LVL56:
.L29:
	.loc 1 250 0
	addi.n	a2, a5, -1
	extui	a2, a2, 0, 8
	bltu	a8, a2, .L30
	movi.n	a8, 1
	movi.n	a2, 0
	moveqz	a2, a8, a4
	extui	a2, a2, 0, 8
	bnez.n	a2, .L30
.LBB92:
.LBB93:
	.loc 2 64 0
	l32r	a9, .LC9+4
.LBE93:
.LBE92:
	.loc 1 253 0
	s8i	a3, sp, 128
.LBB97:
.LBB94:
	.loc 2 64 0
	s32i	a9, sp, 204
	movi.n	a3, 0
	s32i	a3, sp, 136
	l32i	a3, sp, 204
.LBE94:
.LBE97:
	.loc 1 255 0
	s8i	a8, sp, 130
	.loc 1 256 0
	s8i	a8, sp, 131
.LVL57:
.LBB98:
.LBB95:
	.loc 2 64 0
	l32r	a8, .LC9
	s32i	a3, sp, 140
.LBE95:
.LBE98:
	.loc 1 261 0
	movi	a3, 0x80
.LBB99:
.LBB96:
	.loc 2 64 0
	s32i	a8, sp, 200
.LBE96:
.LBE99:
	.loc 1 261 0
	add.n	a8, a3, sp
	movi.n	a12, 0xe
	mov.n	a11, a2
	addi	a10, a8, 18
	.loc 1 254 0
	s8i	a5, sp, 129
.LBB100:
.LBB101:
	.loc 2 99 0
	s32i	a2, sp, 192
	s32i	a2, sp, 132
.LVL58:
.LBE101:
.LBE100:
	.loc 1 259 0
	s8i	a2, sp, 144
	.loc 1 260 0
	s8i	a2, sp, 145
	.loc 1 261 0
	call8	memset
.LVL59:
	.loc 1 262 0
	add.n	a8, a3, sp
	movi.n	a12, 0x10
	mov.n	a11, a2
	addi	a10, a8, 32
	call8	memset
.LVL60:
	.loc 1 263 0
	add.n	a8, a3, sp
	mov.n	a11, a2
	movi.n	a12, 0x10
	addi	a10, a8, 48
	call8	memset
.LVL61:
	.loc 1 265 0
	add.n	a11, a3, sp
	mov.n	a10, a6
	call8	crypto_generichash_blake2b__init_param
.LVL62:
	bltz	a10, .L30
.LBB102:
	.loc 1 270 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memset
.LVL63:
	.loc 1 271 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, sp
	call8	memcpy
.LVL64:
	.loc 1 272 0
	l32r	a12, .LC10
	l32r	a13, .LC10+4
	mov.n	a11, sp
	mov.n	a10, a6
	call8	crypto_generichash_blake2b__update
.LVL65:
	.loc 1 273 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	sodium_memzero
.LVL66:
.LBE102:
	.loc 1 276 0
	retw.n
.LFE22:
	.size	crypto_generichash_blake2b__init_key, .-crypto_generichash_blake2b__init_key
	.section	.text.crypto_generichash_blake2b__init_key_salt_personal,"ax",@progbits
	.literal_position
	.literal .LC11, 0, 0
	.literal .LC12, 128, 0
	.align	4
	.global	crypto_generichash_blake2b__init_key_salt_personal
	.type	crypto_generichash_blake2b__init_key_salt_personal, @function
crypto_generichash_blake2b__init_key_salt_personal:
.LFB23:
	.loc 1 282 0
.LVL67:
	entry	sp, 240
.LCFI5:
	.loc 1 282 0
	extui	a3, a3, 0, 8
	.loc 1 285 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	.loc 1 282 0
	extui	a5, a5, 0, 8
	.loc 1 285 0
	bgeu	a9, a8, .L34
.LVL68:
.L35:
	.loc 1 286 0
	call8	abort
.LVL69:
.L34:
	.loc 1 288 0
	addi.n	a8, a5, -1
	extui	a8, a8, 0, 8
	bltu	a9, a8, .L35
	movi.n	a8, 1
	movi.n	a11, 0
	moveqz	a11, a8, a4
	extui	a11, a11, 0, 8
	bnez.n	a11, .L35
.LBB112:
.LBB113:
	.loc 2 64 0
	l32r	a9, .LC11+4
.LBE113:
.LBE112:
	.loc 1 291 0
	s8i	a3, sp, 128
.LBB118:
.LBB114:
	.loc 2 64 0
	s32i	a9, sp, 204
	movi.n	a3, 0
	s32i	a3, sp, 136
	l32i	a3, sp, 204
.LBE114:
.LBE118:
	.loc 1 293 0
	s8i	a8, sp, 130
.LBB119:
.LBB115:
	.loc 2 64 0
	s32i	a3, sp, 140
.LBE115:
.LBE119:
	.loc 1 299 0
	movi	a3, 0x80
	.loc 1 294 0
	s8i	a8, sp, 131
.LVL70:
	.loc 1 299 0
	add.n	a3, a3, sp
.LBB120:
.LBB116:
	.loc 2 64 0
	l32r	a8, .LC11
.LBE116:
.LBE120:
	.loc 1 299 0
	movi.n	a12, 0xe
	addi	a10, a3, 18
	movi	a3, 0x80
.LBB121:
.LBB122:
	.loc 2 99 0
	s32i	a11, sp, 192
	s32i	a11, sp, 132
.LVL71:
.LBE122:
.LBE121:
	.loc 1 297 0
	s8i	a11, sp, 144
	.loc 1 298 0
	s8i	a11, sp, 145
	.loc 1 292 0
	s8i	a5, sp, 129
.LBB123:
.LBB117:
	.loc 2 64 0
	s32i	a8, sp, 200
	add.n	a3, a3, sp
.LBE117:
.LBE123:
	.loc 1 299 0
	call8	memset
.LVL72:
	addi	a10, a3, 32
.LBB124:
.LBB125:
	.loc 1 146 0
	movi.n	a12, 0x10
	mov.n	a11, a6
.LBE125:
.LBE124:
	.loc 1 300 0
	beqz.n	a6, .L37
.LVL73:
.LBB127:
.LBB126:
	.loc 1 146 0
	call8	memcpy
.LVL74:
	j	.L38
.LVL75:
.L37:
.LBE126:
.LBE127:
	.loc 1 303 0
	call8	memset
.LVL76:
.L38:
.LBB128:
.LBB129:
	.loc 1 154 0
	movi	a3, 0x80
	add.n	a3, a3, sp
	movi.n	a12, 0x10
	mov.n	a11, a7
	addi	a10, a3, 48
.LBE129:
.LBE128:
	.loc 1 305 0
	beqz.n	a7, .L39
.LVL77:
.LBB131:
.LBB130:
	.loc 1 154 0
	call8	memcpy
.LVL78:
	j	.L40
.LVL79:
.L39:
.LBE130:
.LBE131:
	.loc 1 308 0
	call8	memset
.LVL80:
.L40:
	.loc 1 311 0
	movi	a7, 0x80
.LVL81:
	add.n	a11, sp, a7
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_param
.LVL82:
	bltz	a10, .L35
.LBB132:
	.loc 1 316 0
	mov.n	a12, a7
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL83:
	.loc 1 317 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, sp
	call8	memcpy
.LVL84:
	.loc 1 318 0
	l32r	a12, .LC12
	l32r	a13, .LC12+4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__update
.LVL85:
	.loc 1 319 0
	mov.n	a11, a7
	mov.n	a10, sp
	call8	sodium_memzero
.LVL86:
.LBE132:
	.loc 1 322 0
	movi.n	a2, 0
.LVL87:
	retw.n
.LFE23:
	.size	crypto_generichash_blake2b__init_key_salt_personal, .-crypto_generichash_blake2b__init_key_salt_personal
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"S->buflen <= BLAKE2B_BLOCKBYTES"
.LC20:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-ref.c"
	.section	.text.crypto_generichash_blake2b__final,"ax",@progbits
	.literal_position
	.literal .LC16, blake2b_compress
	.literal .LC18, .LC17
	.literal .LC19, __func__$2631
	.literal .LC21, .LC20
	.literal .LC22, -1, -1
	.align	4
	.global	crypto_generichash_blake2b__final
	.type	crypto_generichash_blake2b__final, @function
crypto_generichash_blake2b__final:
.LFB25:
	.loc 1 356 0
.LVL88:
	entry	sp, 32
.LCFI6:
	.loc 1 356 0
	extui	a4, a4, 0, 8
	.loc 1 357 0
	addi.n	a5, a4, -1
	extui	a5, a5, 0, 8
	movi.n	a6, 0x3f
	bgeu	a6, a5, .L43
	.loc 1 358 0
	call8	abort
.LVL89:
.L43:
	.loc 1 360 0
	l32i	a9, a2, 80
	l32i	a5, a2, 84
	or	a9, a9, a5
	bnez.n	a9, .L56
	.loc 1 363 0
	l32i	a8, a2, 352
	movi	a10, 0x80
	addi	a5, a2, 96
	l32r	a6, .LC16
	bgeu	a10, a8, .L45
.LVL90:
.LBB143:
.LBB144:
	.loc 1 91 0
	l32i	a12, a2, 64
	l32i	a8, a2, 68
	add.n	a10, a12, a10
	movi.n	a11, 1
	bltu	a10, a12, .L46
	mov.n	a11, a9
.L46:
	add.n	a11, a11, a8
	s32i	a10, a2, 64
	s32i	a11, a2, 68
	.loc 1 92 0
	movi.n	a8, 0
	movi.n	a9, 1
	bne	a11, a8, .L48
	movi	a11, 0x7f
	bgeu	a11, a10, .L47
.L48:
	movi.n	a9, 0
	mov.n	a8, a9
.L47:
	l32i	a11, a2, 72
	l32i	a12, a2, 76
	add.n	a9, a11, a9
	movi.n	a10, 1
	bltu	a9, a11, .L49
	movi.n	a10, 0
.L49:
	add.n	a8, a12, a8
	add.n	a8, a10, a8
	s32i	a8, a2, 76
.LBE144:
.LBE143:
	.loc 1 365 0
	l32i.n	a8, a6, 0
.LBB146:
.LBB145:
	.loc 1 92 0
	s32i	a9, a2, 72
.LBE145:
.LBE146:
	.loc 1 365 0
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a8
.LVL91:
	.loc 1 366 0
	l32i	a12, a2, 352
	.loc 1 367 0
	movi	a8, 0x80
	.loc 1 366 0
	addi	a12, a12, -128
	s32i	a12, a2, 352
	.loc 1 367 0
	bgeu	a8, a12, .L50
	.loc 1 367 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	l32r	a10, .LC21
	movi	a11, 0x16f
	call8	__assert_func
.LVL92:
.L50:
	.loc 1 368 0 is_stmt 1
	movi	a11, 0xe0
	add.n	a11, a2, a11
	mov.n	a10, a5
	call8	memcpy
.LVL93:
.L45:
	.loc 1 371 0
	l32i	a10, a2, 352
.LBB147:
.LBB148:
	.loc 1 91 0
	l32i	a11, a2, 64
.LBE148:
.LBE147:
	.loc 1 371 0
	movi.n	a13, 0
.LVL94:
.LBB150:
.LBB149:
	.loc 1 91 0
	add.n	a11, a10, a11
	l32i	a8, a2, 68
	movi.n	a12, 1
	bltu	a11, a10, .L51
	mov.n	a12, a13
.L51:
	add.n	a12, a12, a8
	s32i	a11, a2, 64
	s32i	a12, a2, 68
	.loc 1 92 0
	movi.n	a9, 1
	movi.n	a8, 0
	bne	a13, a12, .L53
	bltu	a11, a10, .L52
.L53:
	movi.n	a9, 0
	mov.n	a8, a9
.LVL95:
.L52:
	l32i	a12, a2, 72
	l32i	a13, a2, 76
	add.n	a9, a12, a9
	movi.n	a11, 1
	bltu	a9, a12, .L54
	movi.n	a11, 0
.L54:
	add.n	a8, a13, a8
.LVL96:
	add.n	a8, a11, a8
	s32i	a9, a2, 72
	s32i	a8, a2, 76
.LVL97:
.LBE149:
.LBE150:
.LBB151:
.LBB152:
	.loc 1 67 0
	addmi	a8, a2, 0x100
	l8ui	a11, a8, 100
	l32r	a9, .LC22+4
	l32r	a8, .LC22
	beqz.n	a11, .L55
.LVL98:
.LBB153:
.LBB154:
	.loc 1 46 0
	s32i	a8, a2, 88
	s32i	a9, a2, 92
.LVL99:
.L55:
.LBE154:
.LBE153:
.LBE152:
.LBE151:
	.loc 1 373 0
	movi	a12, 0x100
.LBB156:
.LBB155:
	.loc 1 70 0
	s32i	a8, a2, 80
	s32i	a9, a2, 84
.LBE155:
.LBE156:
	.loc 1 373 0
	sub	a12, a12, a10
	movi.n	a11, 0
	add.n	a10, a5, a10
.LVL100:
	call8	memset
.LVL101:
	.loc 1 375 0
	l32i.n	a6, a6, 0
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a6
.LVL102:
	.loc 1 378 0
	mov.n	a11, a2
	mov.n	a12, a4
	mov.n	a10, a3
	call8	memcpy
.LVL103:
	.loc 1 390 0
	movi.n	a2, 0
.LVL104:
	retw.n
.LVL105:
.L56:
	.loc 1 361 0
	movi.n	a2, -1
.LVL106:
	.loc 1 391 0
	retw.n
.LFE25:
	.size	crypto_generichash_blake2b__final, .-crypto_generichash_blake2b__final
	.section	.text.crypto_generichash_blake2b__blake2b,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b__blake2b
	.type	crypto_generichash_blake2b__blake2b, @function
crypto_generichash_blake2b__blake2b:
.LFB26:
	.loc 1 397 0
.LVL107:
	entry	sp, 48
	.loc 1 397 0
	s32i.n	a7, sp, 0
	mov	a7, sp
.LCFI7:
	mov.n	a12, a4
	extui	a4, a5, 0, 8
.LVL108:
	movi	a5, -0x1c0
.LVL109:
	add.n	a5, sp, a5
	movsp	sp, a5
	addi	a5, sp, 63
	srli	a5, a5, 6
	l8ui	a13, a7, 48
	slli	a5, a5, 6
	.loc 1 401 0
	bnez.n	a3, .L61
	l32i.n	a9, a7, 0
	or	a8, a6, a9
	beqz.n	a8, .L61
.LVL110:
.L62:
	.loc 1 402 0
	call8	abort
.LVL111:
.L61:
	.loc 1 404 0
	beqz.n	a2, .L62
	.loc 1 407 0
	addi.n	a8, a4, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bltu	a9, a8, .L62
	.loc 1 410 0
	bnez.n	a12, .L66
	bnez.n	a13, .L62
.L66:
	.loc 1 413 0
	movi.n	a8, 0x40
	bltu	a8, a13, .L62
	.loc 1 417 0
	mov.n	a11, a4
	mov.n	a10, a5
	.loc 1 416 0
	beqz.n	a13, .L64
	.loc 1 417 0
	call8	crypto_generichash_blake2b__init_key
.LVL112:
	j	.L80
.LVL113:
.L64:
	.loc 1 420 0
	call8	crypto_generichash_blake2b__init
.LVL114:
.L80:
	bltz	a10, .L62
	.loc 1 424 0
	l32i.n	a13, a7, 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__update
.LVL115:
	.loc 1 425 0
	mov.n	a11, a2
	mov.n	a12, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__final
.LVL116:
	.loc 1 427 0
	movi.n	a2, 0
.LVL117:
	retw.n
.LFE26:
	.size	crypto_generichash_blake2b__blake2b, .-crypto_generichash_blake2b__blake2b
	.section	.text.crypto_generichash_blake2b__blake2b_salt_personal,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b__blake2b_salt_personal
	.type	crypto_generichash_blake2b__blake2b_salt_personal, @function
crypto_generichash_blake2b__blake2b_salt_personal:
.LFB27:
	.loc 1 433 0
.LVL118:
	entry	sp, 48
	.loc 1 433 0
	s32i.n	a7, sp, 0
	mov	a7, sp
.LCFI8:
	mov.n	a10, a4
	extui	a4, a5, 0, 8
.LVL119:
	movi	a5, -0x1c0
.LVL120:
	add.n	a5, sp, a5
	movsp	sp, a5
	addi	a5, sp, 63
	srli	a5, a5, 6
	l32i.n	a12, a7, 52
	l32i.n	a13, a7, 56
	l8ui	a8, a7, 48
	slli	a5, a5, 6
	.loc 1 437 0
	bnez.n	a3, .L82
	l32i.n	a11, a7, 0
	or	a9, a6, a11
	beqz.n	a9, .L82
.LVL121:
.L83:
	.loc 1 438 0
	call8	abort
.LVL122:
.L82:
	.loc 1 440 0
	beqz.n	a2, .L83
	.loc 1 443 0
	addi.n	a9, a4, -1
	extui	a9, a9, 0, 8
	movi.n	a11, 0x3f
	bltu	a11, a9, .L83
	.loc 1 446 0
	bnez.n	a10, .L87
	bnez.n	a8, .L83
.L87:
	.loc 1 449 0
	movi.n	a9, 0x40
	bltu	a9, a8, .L83
	.loc 1 452 0
	beqz.n	a8, .L85
	.loc 1 453 0
	mov.n	a15, a13
	mov.n	a14, a12
	mov.n	a13, a8
.LVL123:
	mov.n	a12, a10
.LVL124:
	mov.n	a11, a4
	mov.n	a10, a5
.LVL125:
	call8	crypto_generichash_blake2b__init_key_salt_personal
.LVL126:
	j	.L101
.LVL127:
.L85:
	.loc 1 457 0
	mov.n	a11, a4
	mov.n	a10, a5
.LVL128:
	call8	crypto_generichash_blake2b__init_salt_personal
.LVL129:
.L101:
	bltz	a10, .L83
	.loc 1 461 0
	l32i.n	a13, a7, 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__update
.LVL130:
	.loc 1 462 0
	mov.n	a11, a2
	mov.n	a12, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__final
.LVL131:
	.loc 1 464 0
	movi.n	a2, 0
.LVL132:
	retw.n
.LFE27:
	.size	crypto_generichash_blake2b__blake2b_salt_personal, .-crypto_generichash_blake2b__blake2b_salt_personal
	.section	.text.crypto_generichash_blake2b__pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC23, blake2b_compress
	.literal .LC24, blake2b_compress_ref
	.align	4
	.global	crypto_generichash_blake2b__pick_best_implementation
	.type	crypto_generichash_blake2b__pick_best_implementation, @function
crypto_generichash_blake2b__pick_best_implementation:
.LFB28:
	.loc 1 468 0
	entry	sp, 32
.LCFI9:
	.loc 1 490 0
	l32r	a9, .LC24
	l32r	a8, .LC23
	.loc 1 494 0
	movi.n	a2, 0
	.loc 1 490 0
	s32i.n	a9, a8, 0
	.loc 1 494 0
	retw.n
.LFE28:
	.size	crypto_generichash_blake2b__pick_best_implementation, .-crypto_generichash_blake2b__pick_best_implementation
	.section	.rodata.__func__$2631,"a",@progbits
	.type	__func__$2631, @object
	.size	__func__$2631, 34
__func__$2631:
	.string	"crypto_generichash_blake2b__final"
	.section	.rodata.blake2b_IV,"a",@progbits
	.align	8
	.type	blake2b_IV, @object
	.size	blake2b_IV, 64
blake2b_IV:
	.word	-205731576
	.word	1779033703
	.word	-2067093701
	.word	-1150833019
	.word	-23791573
	.word	1013904242
	.word	1595750129
	.word	-1521486534
	.word	-1377402159
	.word	1359893119
	.word	725511199
	.word	-1694144372
	.word	-79577749
	.word	528734635
	.word	327033209
	.word	1541459225
	.section	.data.blake2b_compress,"aw",@progbits
	.align	4
	.type	blake2b_compress, @object
	.size	blake2b_compress, 4
blake2b_compress:
	.word	blake2b_compress_ref
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0xf0
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0xf0
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI9-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.Ldebug_ranges0+0x1d8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1e
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x6
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x15
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x39
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF20
	.2byte	0x165
	.byte	0x6
	.byte	0x17
	.4byte	0x11b
	.uleb128 0x8
	.string	"h"
	.byte	0x6
	.byte	0x18
	.4byte	0x11b
	.byte	0
	.uleb128 0x8
	.string	"t"
	.byte	0x6
	.byte	0x19
	.4byte	0x12b
	.byte	0x40
	.uleb128 0x8
	.string	"f"
	.byte	0x6
	.byte	0x1a
	.4byte	0x12b
	.byte	0x50
	.uleb128 0x8
	.string	"buf"
	.byte	0x6
	.byte	0x1b
	.4byte	0x13b
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1c
	.4byte	0x21
	.2byte	0x160
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1d
	.4byte	0xa8
	.2byte	0x164
	.byte	0
	.uleb128 0xa
	.4byte	0xbe
	.4byte	0x12b
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xbe
	.4byte	0x13b
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x14b
	.uleb128 0xb
	.4byte	0x8c
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1e
	.4byte	0xc9
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x28
	.4byte	0x185
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x40
	.byte	0x7
	.byte	0x36
	.4byte	0x216
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x7
	.byte	0x37
	.4byte	0xa8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x38
	.4byte	0xa8
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x7
	.byte	0x39
	.4byte	0xa8
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x7
	.byte	0x3a
	.4byte	0xa8
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3b
	.4byte	0x216
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3c
	.4byte	0x226
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3d
	.4byte	0xa8
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3e
	.4byte	0xa8
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3f
	.4byte	0x236
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x40
	.4byte	0x246
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x41
	.4byte	0x246
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x226
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x236
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x246
	.uleb128 0xb
	.4byte	0x8c
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x256
	.uleb128 0xb
	.4byte	0x8c
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x42
	.4byte	0x185
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x7
	.byte	0x44
	.4byte	0x14b
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x61
	.4byte	0x277
	.uleb128 0x5
	.byte	0x4
	.4byte	0x27d
	.uleb128 0x10
	.4byte	0x3a
	.4byte	0x291
	.uleb128 0x11
	.4byte	0x291
	.uleb128 0x11
	.4byte	0x297
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x261
	.uleb128 0x5
	.byte	0x4
	.4byte	0x29d
	.uleb128 0x12
	.4byte	0xa8
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2c
	.4byte	0x3a
	.byte	0x3
	.4byte	0x2bc
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x2c
	.4byte	0x291
	.byte	0
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0x2dd
	.uleb128 0x14
	.string	"dst"
	.byte	0x2
	.byte	0x3d
	.4byte	0x2dd
	.uleb128 0x14
	.string	"w"
	.byte	0x2
	.byte	0x3d
	.4byte	0xbe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3b
	.4byte	0x3a
	.byte	0x3
	.4byte	0x2fd
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x3b
	.4byte	0x2fd
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x303
	.uleb128 0x12
	.4byte	0x261
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.4byte	0x329
	.uleb128 0x14
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.4byte	0x2dd
	.uleb128 0x14
	.string	"w"
	.byte	0x2
	.byte	0x60
	.4byte	0xb3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9f
	.4byte	0x3a
	.byte	0x3
	.4byte	0x34c
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x9f
	.4byte	0x291
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.4byte	0x3a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x2
	.byte	0x28
	.4byte	0xbe
	.byte	0x3
	.4byte	0x371
	.uleb128 0x14
	.string	"src"
	.byte	0x2
	.byte	0x28
	.4byte	0x297
	.uleb128 0x16
	.string	"w"
	.byte	0x2
	.byte	0x2b
	.4byte	0xbe
	.byte	0
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0xac
	.4byte	0x3a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44a
	.uleb128 0x18
	.string	"S"
	.byte	0x1
	.byte	0xac
	.4byte	0x291
	.4byte	.LLST0
	.uleb128 0x19
	.string	"P"
	.byte	0x1
	.byte	0xac
	.4byte	0x44a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xae
	.4byte	0x21
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0xaf
	.4byte	0x297
	.uleb128 0x1a
	.4byte	0x329
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0xb2
	.4byte	0x400
	.uleb128 0x1b
	.4byte	0x339
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x1d
	.4byte	0x342
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LVL2
	.4byte	0x1094
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x34c
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0xb7
	.uleb128 0x1b
	.4byte	0x35c
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x21
	.4byte	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x109d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x450
	.uleb128 0x12
	.4byte	0x256
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0xbd
	.4byte	0x3a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55f
	.uleb128 0x18
	.string	"S"
	.byte	0x1
	.byte	0xbd
	.4byte	0x291
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	.LASF49
	.byte	0x1
	.byte	0xbd
	.4byte	0x29d
	.4byte	.LLST5
	.uleb128 0x23
	.string	"P"
	.byte	0x1
	.byte	0xbf
	.4byte	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.4byte	0x2bc
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc9
	.4byte	0x4bb
	.uleb128 0x25
	.4byte	0x2d3
	.byte	0
	.uleb128 0x26
	.4byte	0x2c8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.byte	0
	.uleb128 0x24
	.4byte	0x308
	.4byte	.LBB37
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xc8
	.4byte	0x4df
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x9f
	.byte	0
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0x10a6
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0x1094
	.4byte	0x508
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0x1094
	.4byte	0x528
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x28
	.4byte	.LVL16
	.4byte	0x1094
	.4byte	0x547
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0x371
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x256
	.4byte	0x56f
	.uleb128 0xb
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x90
	.4byte	0x3a
	.byte	0x3
	.4byte	0x594
	.uleb128 0x14
	.string	"P"
	.byte	0x1
	.byte	0x90
	.4byte	0x594
	.uleb128 0x29
	.4byte	.LASF36
	.byte	0x1
	.byte	0x90
	.4byte	0x297
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x256
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x97
	.4byte	0x3a
	.byte	0x3
	.4byte	0x5bf
	.uleb128 0x14
	.string	"P"
	.byte	0x1
	.byte	0x97
	.4byte	0x594
	.uleb128 0x29
	.4byte	.LASF37
	.byte	0x1
	.byte	0x98
	.4byte	0x297
	.byte	0
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd3
	.4byte	0x3a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x739
	.uleb128 0x18
	.string	"S"
	.byte	0x1
	.byte	0xd3
	.4byte	0x291
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd3
	.4byte	0x29d
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd4
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd4
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"P"
	.byte	0x1
	.byte	0xd6
	.4byte	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.4byte	0x2bc
	.4byte	.LBB52
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xe0
	.4byte	0x63f
	.uleb128 0x25
	.4byte	0x2d3
	.byte	0
	.uleb128 0x26
	.4byte	0x2c8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.byte	0
	.uleb128 0x24
	.4byte	0x308
	.4byte	.LBB59
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xdf
	.4byte	0x663
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x9f
	.byte	0
	.uleb128 0x24
	.4byte	0x56f
	.4byte	.LBB66
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xe5
	.4byte	0x6a5
	.uleb128 0x1b
	.4byte	0x588
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x57f
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LVL25
	.4byte	0x109d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x59a
	.4byte	.LBB70
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xea
	.4byte	0x6e6
	.uleb128 0x1b
	.4byte	0x5b3
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	0x5aa
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LVL29
	.4byte	0x109d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL20
	.4byte	0x10a6
	.uleb128 0x28
	.4byte	.LVL23
	.4byte	0x1094
	.4byte	0x70f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0x1094
	.uleb128 0x27
	.4byte	.LVL31
	.4byte	0x1094
	.uleb128 0x1e
	.4byte	.LVL32
	.4byte	0x371
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x53
	.4byte	0x3a
	.byte	0x3
	.4byte	0x75e
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x53
	.4byte	0x291
	.uleb128 0x14
	.string	"inc"
	.byte	0x1
	.byte	0x53
	.4byte	0x75e
	.byte	0
	.uleb128 0x12
	.4byte	0xbe
	.uleb128 0x2b
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x146
	.4byte	0x3a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85f
	.uleb128 0x2c
	.string	"S"
	.byte	0x1
	.2byte	0x146
	.4byte	0x291
	.4byte	.LLST12
	.uleb128 0x2c
	.string	"in"
	.byte	0x1
	.2byte	0x146
	.4byte	0x297
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x146
	.4byte	0xbe
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x2f
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x149
	.4byte	0x21
	.4byte	.LLST15
	.uleb128 0x2f
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x14a
	.4byte	0x21
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	0x739
	.4byte	.LBB78
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x14f
	.4byte	0x7f6
	.uleb128 0x1b
	.4byte	0x752
	.4byte	.LLST17
	.uleb128 0x1b
	.4byte	0x749
	.4byte	.LLST18
	.byte	0
	.uleb128 0x28
	.4byte	.LVL39
	.4byte	0x109d
	.4byte	0x810
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL41
	.4byte	0x826
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0x109d
	.4byte	0x847
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL48
	.4byte	0x109d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf2
	.4byte	0x3a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2c
	.uleb128 0x18
	.string	"S"
	.byte	0x1
	.byte	0xf2
	.4byte	0x291
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	.LASF49
	.byte	0x1
	.byte	0xf2
	.4byte	0x29d
	.4byte	.LLST20
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.byte	0xf2
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf3
	.4byte	0x29d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"P"
	.byte	0x1
	.byte	0xf5
	.4byte	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.4byte	0x2bc
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x1
	.2byte	0x102
	.4byte	0x8e0
	.uleb128 0x25
	.4byte	0x2d3
	.byte	0
	.uleb128 0x26
	.4byte	0x2c8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.byte	0
	.uleb128 0x32
	.4byte	0x308
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x101
	.4byte	0x905
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x9f
	.byte	0
	.uleb128 0x33
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.4byte	0x997
	.uleb128 0x34
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x10d
	.4byte	0xa2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.4byte	.LVL63
	.4byte	0x1094
	.4byte	0x943
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL64
	.4byte	0x109d
	.4byte	0x964
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL65
	.4byte	0x763
	.4byte	0x97f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL66
	.4byte	0x10b1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL56
	.4byte	0x10a6
	.uleb128 0x28
	.4byte	.LVL59
	.4byte	0x1094
	.4byte	0x9c5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xde
	.byte	0x1c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x28
	.4byte	.LVL60
	.4byte	0x1094
	.4byte	0x9ea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xd0
	.byte	0x1c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x28
	.4byte	.LVL61
	.4byte	0x1094
	.4byte	0xa0f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xc0
	.byte	0x1c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL62
	.4byte	0x371
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xf0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0xa3c
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x117
	.4byte	0x3a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6a
	.uleb128 0x2c
	.string	"S"
	.byte	0x1
	.2byte	0x117
	.4byte	0x291
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x117
	.4byte	0x29d
	.4byte	.LLST22
	.uleb128 0x35
	.string	"key"
	.byte	0x1
	.2byte	0x118
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x36
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x118
	.4byte	0x29d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x36
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x119
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2d
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x119
	.4byte	0xa1
	.4byte	.LLST23
	.uleb128 0x37
	.string	"P"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.4byte	0x2bc
	.4byte	.LBB112
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x128
	.4byte	0xae1
	.uleb128 0x25
	.4byte	0x2d3
	.byte	0
	.uleb128 0x26
	.4byte	0x2c8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.byte	0
	.uleb128 0x32
	.4byte	0x308
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.byte	0x1
	.2byte	0x127
	.4byte	0xb06
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0x56f
	.4byte	.LBB124
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb48
	.uleb128 0x1b
	.4byte	0x588
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	0x57f
	.4byte	.LLST25
	.uleb128 0x1e
	.4byte	.LVL74
	.4byte	0x109d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x59a
	.4byte	.LBB128
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x1
	.2byte	0x132
	.4byte	0xb86
	.uleb128 0x38
	.4byte	0x5b3
	.uleb128 0x1b
	.4byte	0x5aa
	.4byte	.LLST26
	.uleb128 0x1e
	.4byte	.LVL78
	.4byte	0x109d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.4byte	0xc17
	.uleb128 0x34
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x13b
	.4byte	0xa2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.4byte	.LVL83
	.4byte	0x1094
	.4byte	0xbc3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL84
	.4byte	0x109d
	.4byte	0xbe4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL85
	.4byte	0x763
	.4byte	0xbff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL86
	.4byte	0x10b1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL69
	.4byte	0x10a6
	.uleb128 0x28
	.4byte	.LVL72
	.4byte	0x1094
	.4byte	0xc41
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 18
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x27
	.4byte	.LVL76
	.4byte	0x1094
	.uleb128 0x27
	.4byte	.LVL80
	.4byte	0x1094
	.uleb128 0x1e
	.4byte	.LVL82
	.4byte	0x371
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x41
	.4byte	0x3a
	.byte	0x3
	.4byte	0xc84
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x41
	.4byte	0x291
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x163
	.4byte	0x3a
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0f
	.uleb128 0x2c
	.string	"S"
	.byte	0x1
	.2byte	0x163
	.4byte	0x291
	.4byte	.LLST27
	.uleb128 0x35
	.string	"out"
	.byte	0x1
	.2byte	0x163
	.4byte	0x2dd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x163
	.4byte	0xa8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x39
	.4byte	.LASF64
	.4byte	0xe1f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2631
	.uleb128 0x30
	.4byte	0x739
	.4byte	.LBB143
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.2byte	0x16c
	.4byte	0xcfe
	.uleb128 0x1b
	.4byte	0x752
	.4byte	.LLST28
	.uleb128 0x1b
	.4byte	0x749
	.4byte	.LLST29
	.byte	0
	.uleb128 0x30
	.4byte	0x739
	.4byte	.LBB147
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.2byte	0x173
	.4byte	0xd25
	.uleb128 0x1b
	.4byte	0x752
	.4byte	.LLST30
	.uleb128 0x1b
	.4byte	0x749
	.4byte	.LLST31
	.byte	0
	.uleb128 0x30
	.4byte	0xc6a
	.4byte	.LBB151
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x174
	.4byte	0xd5c
	.uleb128 0x1b
	.4byte	0xc7a
	.4byte	.LLST32
	.uleb128 0x20
	.4byte	0x2a2
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.byte	0x1
	.byte	0x44
	.uleb128 0x1b
	.4byte	0x2b2
	.4byte	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL89
	.4byte	0x10a6
	.uleb128 0x31
	.4byte	.LVL91
	.4byte	0xd7b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL92
	.4byte	0x10bc
	.4byte	0xdab
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2631
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x28
	.4byte	.LVL93
	.4byte	0x109d
	.4byte	0xdc6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 224
	.byte	0
	.uleb128 0x28
	.4byte	.LVL101
	.4byte	0x1094
	.4byte	0xdd9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL102
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.4byte	0xdf2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL103
	.4byte	0x109d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x9a
	.4byte	0xe1f
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x21
	.byte	0
	.uleb128 0x12
	.4byte	0xe0f
	.uleb128 0x2b
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x18b
	.4byte	0x3a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0d
	.uleb128 0x2c
	.string	"out"
	.byte	0x1
	.2byte	0x18b
	.4byte	0x2dd
	.4byte	.LLST34
	.uleb128 0x35
	.string	"in"
	.byte	0x1
	.2byte	0x18b
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.string	"key"
	.byte	0x1
	.2byte	0x18b
	.4byte	0xa1
	.4byte	.LLST35
	.uleb128 0x2d
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x18b
	.4byte	0x29d
	.4byte	.LLST36
	.uleb128 0x36
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x18c
	.4byte	0x75e
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x36
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x18c
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"S"
	.byte	0x1
	.2byte	0x18e
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.4byte	.LVL111
	.4byte	0x10a6
	.uleb128 0x28
	.4byte	.LVL112
	.4byte	0x85f
	.4byte	0xecd
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL114
	.4byte	0x455
	.uleb128 0x28
	.4byte	.LVL115
	.4byte	0x763
	.4byte	0xef0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL116
	.4byte	0xc84
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x261
	.4byte	0xf1d
	.uleb128 0xb
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x3a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1057
	.uleb128 0x2c
	.string	"out"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x2dd
	.4byte	.LLST37
	.uleb128 0x35
	.string	"in"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.string	"key"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xa1
	.4byte	.LLST38
	.uleb128 0x2d
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1af
	.4byte	0x29d
	.4byte	.LLST39
	.uleb128 0x36
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1af
	.4byte	0x75e
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x36
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xa1
	.4byte	.LLST40
	.uleb128 0x2d
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xa1
	.4byte	.LLST41
	.uleb128 0x37
	.string	"S"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0x10a6
	.uleb128 0x28
	.4byte	.LVL126
	.4byte	0xa3c
	.4byte	0x1006
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x7
	.byte	0x91
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.4byte	.LVL129
	.4byte	0x5bf
	.4byte	0x1020
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL130
	.4byte	0x763
	.4byte	0x103a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL131
	.4byte	0xc84
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x3a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.4byte	.LASF67
	.byte	0x1
	.byte	0x22
	.4byte	0x26c
	.uleb128 0x5
	.byte	0x3
	.4byte	blake2b_compress
	.uleb128 0x3c
	.4byte	.LASF68
	.byte	0x1
	.byte	0x24
	.4byte	0x108f
	.uleb128 0x5
	.byte	0x3
	.4byte	blake2b_IV
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x3d
	.4byte	.LASF69
	.4byte	.LASF69
	.uleb128 0x3d
	.4byte	.LASF70
	.4byte	.LASF70
	.uleb128 0x3e
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x8
	.byte	0x47
	.uleb128 0x3e
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.byte	0x16
	.uleb128 0x3e
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xa
	.byte	0x29
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE19
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
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
	.4byte	.LFE19
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
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL51
	.4byte	.LFE24
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x3
	.byte	0x72
	.sleb128 352
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x3
	.byte	0x72
	.sleb128 352
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x80
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL81
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL88
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0x75
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x80
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL94
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0x75
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL97
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0x75
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL107
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL112-1
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL114-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL118
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL126-1
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL120
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL127
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL129-1
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL127
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL129-1
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	0
	.4byte	0
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	0
	.4byte	0
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	0
	.4byte	0
	.4byte	.LBB143
	.4byte	.LBE143
	.4byte	.LBB146
	.4byte	.LBE146
	.4byte	0
	.4byte	0
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	.LBB150
	.4byte	.LBE150
	.4byte	0
	.4byte	0
	.4byte	.LBB151
	.4byte	.LBE151
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	0
	.4byte	0
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"salt"
.LASF41:
	.string	"blake2b_set_lastnode"
.LASF3:
	.string	"size_t"
.LASF17:
	.string	"uint64_t"
.LASF4:
	.string	"__uint8_t"
.LASF56:
	.string	"left"
.LASF10:
	.string	"long long unsigned int"
.LASF72:
	.string	"sodium_memzero"
.LASF34:
	.string	"inner_length"
.LASF44:
	.string	"store32_le"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF76:
	.string	"blake2b_constant"
.LASF38:
	.string	"blake2b_param"
.LASF11:
	.string	"long int"
.LASF24:
	.string	"BLAKE2B_SALTBYTES"
.LASF31:
	.string	"leaf_length"
.LASF28:
	.string	"key_length"
.LASF55:
	.string	"inlen"
.LASF7:
	.string	"__uint32_t"
.LASF35:
	.string	"reserved"
.LASF67:
	.string	"blake2b_compress"
.LASF48:
	.string	"crypto_generichash_blake2b__init"
.LASF60:
	.string	"block"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"blake2b_init0"
.LASF13:
	.string	"long unsigned int"
.LASF74:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"blake2b_param_"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"digest_length"
.LASF30:
	.string	"depth"
.LASF46:
	.string	"load64_le"
.LASF42:
	.string	"blake2b_is_lastblock"
.LASF77:
	.string	"crypto_generichash_blake2b__pick_best_implementation"
.LASF20:
	.string	"crypto_generichash_blake2b_state"
.LASF54:
	.string	"crypto_generichash_blake2b__update"
.LASF12:
	.string	"sizetype"
.LASF33:
	.string	"node_depth"
.LASF59:
	.string	"keylen"
.LASF53:
	.string	"blake2b_increment_counter"
.LASF65:
	.string	"crypto_generichash_blake2b__blake2b"
.LASF62:
	.string	"blake2b_set_lastblock"
.LASF9:
	.string	"__uint64_t"
.LASF29:
	.string	"fanout"
.LASF51:
	.string	"blake2b_param_set_personal"
.LASF73:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF68:
	.string	"blake2b_IV"
.LASF6:
	.string	"short int"
.LASF21:
	.string	"BLAKE2B_BLOCKBYTES"
.LASF57:
	.string	"fill"
.LASF58:
	.string	"crypto_generichash_blake2b__init_key"
.LASF64:
	.string	"__func__"
.LASF18:
	.string	"buflen"
.LASF16:
	.string	"uint32_t"
.LASF14:
	.string	"char"
.LASF71:
	.string	"abort"
.LASF40:
	.string	"blake2b_compress_fn"
.LASF43:
	.string	"store64_le"
.LASF70:
	.string	"memcpy"
.LASF25:
	.string	"BLAKE2B_PERSONALBYTES"
.LASF19:
	.string	"last_node"
.LASF63:
	.string	"crypto_generichash_blake2b__final"
.LASF37:
	.string	"personal"
.LASF39:
	.string	"blake2b_state"
.LASF69:
	.string	"memset"
.LASF23:
	.string	"BLAKE2B_KEYBYTES"
.LASF15:
	.string	"uint8_t"
.LASF61:
	.string	"crypto_generichash_blake2b__init_key_salt_personal"
.LASF49:
	.string	"outlen"
.LASF52:
	.string	"crypto_generichash_blake2b__init_salt_personal"
.LASF47:
	.string	"crypto_generichash_blake2b__init_param"
.LASF32:
	.string	"node_offset"
.LASF50:
	.string	"blake2b_param_set_salt"
.LASF22:
	.string	"BLAKE2B_OUTBYTES"
.LASF75:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-ref.c"
.LASF66:
	.string	"crypto_generichash_blake2b__blake2b_salt_personal"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
