	.file	"x25519_ref10.c"
	.text
.Ltext0:
	.section	.text.fe_cswap,"ax",@progbits
	.align	4
	.type	fe_cswap, @function
fe_cswap:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 80
.LCFI0:
.LVL1:
	.loc 1 32 0
	l32i.n	a5, a3, 0
	.loc 1 33 0
	l32i.n	a8, a3, 4
	.loc 1 32 0
	s32i.n	a5, sp, 0
.LVL2:
	.loc 1 33 0
	s32i.n	a8, sp, 4
.LVL3:
	.loc 1 34 0
	l32i.n	a9, a3, 8
	.loc 1 35 0
	l32i.n	a13, a3, 12
	.loc 1 36 0
	l32i.n	a5, a3, 16
.LVL4:
	.loc 1 37 0
	l32i.n	a8, a3, 20
.LVL5:
	.loc 1 34 0
	s32i.n	a9, sp, 8
.LVL6:
	.loc 1 35 0
	s32i.n	a13, sp, 12
.LVL7:
	.loc 1 36 0
	s32i.n	a5, sp, 16
.LVL8:
	.loc 1 38 0
	l32i.n	a9, a3, 24
.LVL9:
	.loc 1 39 0
	l32i.n	a13, a3, 28
.LVL10:
	.loc 1 40 0
	l32i.n	a5, a3, 32
.LVL11:
	.loc 1 37 0
	s32i.n	a8, sp, 20
.LVL12:
	.loc 1 41 0
	l32i.n	a8, a3, 36
.LVL13:
	.loc 1 38 0
	s32i.n	a9, sp, 24
.LVL14:
	.loc 1 39 0
	s32i.n	a13, sp, 28
.LVL15:
	.loc 1 54 0
	l32i.n	a9, a2, 0
.LVL16:
	l32i.n	a13, sp, 0
.LVL17:
	.loc 1 40 0
	s32i.n	a5, sp, 32
.LVL18:
	.loc 1 41 0
	s32i.n	a8, sp, 36
.LVL19:
	.loc 1 55 0
	l32i.n	a5, a2, 4
.LVL20:
	l32i.n	a8, sp, 4
.LVL21:
	.loc 1 54 0
	xor	a6, a9, a13
.LVL22:
	.loc 1 55 0
	xor	a15, a5, a8
.LVL23:
	.loc 1 56 0
	l32i.n	a9, a2, 8
	.loc 1 57 0
	l32i.n	a5, a2, 12
	.loc 1 56 0
	l32i.n	a13, sp, 8
	.loc 1 57 0
	l32i.n	a8, sp, 12
	.loc 1 53 0
	neg	a4, a4
.LVL24:
	.loc 1 56 0
	xor	a14, a9, a13
.LVL25:
	.loc 1 57 0
	xor	a13, a5, a8
.LVL26:
	and	a13, a13, a4
.LVL27:
	.loc 1 58 0
	l32i.n	a9, a2, 16
	.loc 1 57 0
	s32i.n	a13, sp, 40
	.loc 1 58 0
	l32i.n	a13, sp, 16
	.loc 1 59 0
	l32i.n	a5, a2, 20
	.loc 1 58 0
	xor	a12, a9, a13
.LVL28:
	.loc 1 59 0
	l32i.n	a8, sp, 20
	.loc 1 60 0
	l32i.n	a9, a2, 24
	l32i.n	a13, sp, 24
	.loc 1 59 0
	xor	a11, a5, a8
.LVL29:
	.loc 1 60 0
	xor	a10, a9, a13
.LVL30:
	.loc 1 61 0
	l32i.n	a8, a2, 28
	l32i.n	a9, sp, 28
	.loc 1 62 0
	l32i.n	a13, a2, 32
	.loc 1 61 0
	xor	a5, a8, a9
.LVL31:
	and	a9, a5, a4
	.loc 1 62 0
	l32i.n	a5, sp, 32
.LVL32:
	.loc 1 54 0
	and	a6, a6, a4
.LVL33:
	.loc 1 62 0
	xor	a7, a13, a5
.LVL34:
	.loc 1 63 0
	l32i.n	a13, a2, 36
	l32i.n	a5, sp, 36
	.loc 1 62 0
	and	a8, a7, a4
	.loc 1 63 0
	xor	a7, a13, a5
.LVL35:
	.loc 1 64 0
	l32i.n	a13, a2, 0
	.loc 1 65 0
	l32i.n	a5, a2, 4
	.loc 1 55 0
	and	a15, a15, a4
.LVL36:
	.loc 1 56 0
	and	a14, a14, a4
.LVL37:
	.loc 1 58 0
	and	a12, a12, a4
.LVL38:
	.loc 1 59 0
	and	a11, a11, a4
.LVL39:
	.loc 1 60 0
	and	a10, a10, a4
.LVL40:
	.loc 1 63 0
	and	a4, a7, a4
.LVL41:
	.loc 1 64 0
	xor	a7, a13, a6
	.loc 1 66 0
	l32i.n	a13, a2, 8
	.loc 1 64 0
	s32i.n	a7, a2, 0
.LVL42:
	.loc 1 65 0
	xor	a7, a5, a15
	s32i.n	a7, a2, 4
.LVL43:
	.loc 1 67 0
	l32i.n	a5, a2, 12
.LVL44:
	.loc 1 66 0
	xor	a7, a13, a14
	.loc 1 67 0
	l32i.n	a13, sp, 40
	.loc 1 66 0
	s32i.n	a7, a2, 8
.LVL45:
	.loc 1 67 0
	xor	a7, a5, a13
	.loc 1 68 0
	l32i.n	a5, a2, 16
	.loc 1 69 0
	l32i.n	a13, a2, 20
	.loc 1 67 0
	s32i.n	a7, a2, 12
.LVL46:
	.loc 1 68 0
	xor	a7, a5, a12
	.loc 1 70 0
	l32i.n	a5, a2, 24
	.loc 1 68 0
	s32i.n	a7, a2, 16
.LVL47:
	.loc 1 69 0
	xor	a7, a13, a11
	.loc 1 71 0
	l32i.n	a13, a2, 28
	.loc 1 69 0
	s32i.n	a7, a2, 20
.LVL48:
	.loc 1 70 0
	xor	a7, a5, a10
	.loc 1 72 0
	l32i.n	a5, a2, 32
	.loc 1 70 0
	s32i.n	a7, a2, 24
.LVL49:
	.loc 1 71 0
	xor	a7, a13, a9
	.loc 1 73 0
	l32i.n	a13, a2, 36
	.loc 1 71 0
	s32i.n	a7, a2, 28
.LVL50:
	.loc 1 72 0
	xor	a7, a5, a8
	s32i.n	a7, a2, 32
.LVL51:
	.loc 1 73 0
	xor	a7, a13, a4
	s32i.n	a7, a2, 36
.LVL52:
	.loc 1 74 0
	l32i.n	a2, sp, 0
.LVL53:
	xor	a6, a2, a6
.LVL54:
	s32i.n	a6, a3, 0
	.loc 1 75 0
	l32i.n	a5, sp, 4
.LVL55:
	.loc 1 76 0
	l32i.n	a13, sp, 8
.LVL56:
	.loc 1 75 0
	xor	a15, a5, a15
.LVL57:
	.loc 1 77 0
	l32i.n	a2, sp, 12
	l32i.n	a5, sp, 40
	.loc 1 76 0
	xor	a14, a13, a14
.LVL58:
	.loc 1 77 0
	xor	a13, a2, a5
	s32i.n	a13, a3, 12
	.loc 1 79 0
	l32i.n	a2, sp, 20
	.loc 1 78 0
	l32i.n	a13, sp, 16
	.loc 1 80 0
	l32i.n	a5, sp, 24
	.loc 1 78 0
	xor	a12, a13, a12
.LVL59:
	.loc 1 79 0
	xor	a11, a2, a11
.LVL60:
	.loc 1 80 0
	xor	a10, a5, a10
.LVL61:
	.loc 1 81 0
	l32i.n	a13, sp, 28
	.loc 1 82 0
	l32i.n	a2, sp, 32
	.loc 1 83 0
	l32i.n	a5, sp, 36
	.loc 1 81 0
	xor	a9, a13, a9
.LVL62:
	.loc 1 82 0
	xor	a8, a2, a8
.LVL63:
	.loc 1 83 0
	xor	a4, a5, a4
.LVL64:
	.loc 1 75 0
	s32i.n	a15, a3, 4
	.loc 1 76 0
	s32i.n	a14, a3, 8
	.loc 1 78 0
	s32i.n	a12, a3, 16
	.loc 1 79 0
	s32i.n	a11, a3, 20
	.loc 1 80 0
	s32i.n	a10, a3, 24
	.loc 1 81 0
	s32i.n	a9, a3, 28
	.loc 1 82 0
	s32i.n	a8, a3, 32
	.loc 1 83 0
	s32i.n	a4, a3, 36
	retw.n
.LFE0:
	.size	fe_cswap, .-fe_cswap
	.section	.text.crypto_scalarmult_curve25519_ref10_base,"ax",@progbits
	.literal_position
	.align	4
	.type	crypto_scalarmult_curve25519_ref10_base, @function
crypto_scalarmult_curve25519_ref10_base:
.LFB4:
	.loc 1 257 0
.LVL65:
	entry	sp, 352
.LCFI1:
.LVL66:
	.loc 1 263 0
	movi.n	a8, 0
	.loc 1 264 0
	movi.n	a9, 0x20
	loop	a9, .L3_LEND
.LVL67:
.L3:
	.loc 1 264 0 is_stmt 0 discriminator 3
	add.n	a11, a3, a8
	movi	a4, 0x118
	add.n	a4, a4, sp
	l8ui	a11, a11, 0
	add.n	a10, a4, a8
	s8i	a11, a10, 0
	.loc 1 263 0 is_stmt 1 discriminator 3
	addi.n	a8, a8, 1
.LVL68:
	.L3_LEND:
	.loc 1 266 0
	addmi	a8, sp, 0x100
.LVL69:
	l8ui	a10, a8, 24
	movi.n	a9, -8
	and	a9, a10, a9
	s8i	a9, a8, 24
	.loc 1 268 0
	l8ui	a9, a8, 55
	.loc 1 269 0
	mov.n	a11, a4
	.loc 1 268 0
	extui	a10, a9, 0, 7
	movi.n	a9, 0x40
	or	a9, a10, a9
	.loc 1 269 0
	mov.n	a10, sp
	.loc 1 268 0
	s8i	a9, a8, 55
	.loc 1 269 0
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL70:
.LBB4:
.LBB5:
	.loc 1 248 0
	movi	a10, 0xc8
	addi	a12, sp, 40
.LVL71:
	addi	a11, sp, 80
.LVL72:
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_add
.LVL73:
	.loc 1 249 0
	movi	a10, 0xa0
	addi	a12, sp, 40
.LVL74:
	addi	a11, sp, 80
.LVL75:
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL76:
	.loc 1 250 0
	movi	a11, 0xa0
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL77:
	.loc 1 251 0
	movi	a12, 0xa0
	movi	a11, 0xc8
	movi	a10, 0xf0
	add.n	a12, a12, sp
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL78:
.LBE5:
.LBE4:
	.loc 1 271 0
	movi	a11, 0xf0
	mov.n	a10, a2
	add.n	a11, a11, sp
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL79:
	.loc 1 274 0
	movi.n	a2, 0
.LVL80:
	retw.n
.LFE4:
	.size	crypto_scalarmult_curve25519_ref10_base, .-crypto_scalarmult_curve25519_ref10_base
	.section	.text.crypto_scalarmult_curve25519_ref10,"ax",@progbits
	.literal_position
	.literal .LC2, 121666
	.literal .LC3, 16777216, 0
	.literal .LC4, -33554432
	.literal .LC5, 33554432, 0
	.literal .LC6, -67108864
	.align	4
	.type	crypto_scalarmult_curve25519_ref10, @function
crypto_scalarmult_curve25519_ref10:
.LFB2:
	.loc 1 179 0
.LVL81:
	entry	sp, 432
.LCFI2:
.LVL82:
	.loc 1 179 0
	s32i	a2, sp, 360
	.loc 1 194 0
	movi.n	a5, 0x20
	.loc 1 193 0
	movi.n	a2, 0
	loop	a5, .L6_LEND
.LVL83:
.L6:
	.loc 1 194 0 discriminator 3
	add.n	a7, a3, a2
	movi	a8, 0x118
	add.n	a8, a8, sp
	l8ui	a7, a7, 0
	add.n	a6, a8, a2
	s8i	a7, a6, 0
	.loc 1 193 0 discriminator 3
	addi.n	a2, a2, 1
.LVL84:
	.L6_LEND:
	.loc 1 196 0
	addmi	a2, sp, 0x100
.LVL85:
	l8ui	a5, a2, 24
	movi.n	a3, -8
.LVL86:
	and	a3, a5, a3
	s8i	a3, a2, 24
	.loc 1 198 0
	l8ui	a3, a2, 55
	.loc 1 199 0
	movi	a10, 0xf0
	.loc 1 198 0
	extui	a5, a3, 0, 7
	movi.n	a3, 0x40
	.loc 1 199 0
	mov.n	a11, a4
	.loc 1 198 0
	or	a3, a5, a3
	.loc 1 199 0
	add.n	a10, a10, sp
	.loc 1 200 0
	movi	a4, 0xc8
.LVL87:
	.loc 1 198 0
	s8i	a3, a2, 55
	.loc 1 200 0
	add.n	a4, sp, a4
	.loc 1 199 0
	call8	crypto_core_curve25519_ref10_fe_frombytes
.LVL88:
	.loc 1 200 0
	mov.n	a10, a4
	.loc 1 201 0
	movi	a2, 0xa0
	.loc 1 200 0
	call8	crypto_core_curve25519_ref10_fe_1
.LVL89:
	.loc 1 201 0
	add.n	a2, sp, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_0
.LVL90:
	.loc 1 202 0
	addi	a3, sp, 120
	movi	a11, 0xf0
	add.n	a11, a11, sp
	mov.n	a10, a3
	call8	crypto_core_curve25519_ref10_fe_copy
.LVL91:
	.loc 1 203 0
	addi	a10, sp, 80
	call8	crypto_core_curve25519_ref10_fe_1
.LVL92:
	.loc 1 206 0
	movi	a13, 0xfe
	.loc 1 205 0
	movi.n	a5, 0
	.loc 1 206 0
	s32i	a13, sp, 324
.LVL93:
.L37:
	.loc 1 207 0 discriminator 3
	l32i	a6, sp, 324
	addmi	a8, sp, 0x100
	srai	a4, a6, 3
	add.n	a4, a8, a4
	.loc 1 208 0 discriminator 3
	l8ui	a4, a4, 24
	extui	a6, a6, 0, 3
	ssr	a6
	sra	a4, a4
	extui	a4, a4, 0, 1
	s32i	a4, sp, 332
.LVL94:
	.loc 1 210 0 discriminator 3
	movi	a10, 0xc8
	.loc 1 209 0 discriminator 3
	xor	a4, a4, a5
.LVL95:
	.loc 1 210 0 discriminator 3
	mov.n	a12, a4
	mov.n	a11, a3
	add.n	a10, a10, sp
	call8	fe_cswap
.LVL96:
	.loc 1 211 0 discriminator 3
	mov.n	a12, a4
	addi	a11, sp, 80
	mov.n	a10, a2
	call8	fe_cswap
.LVL97:
	.loc 1 213 0 discriminator 3
	addi	a12, sp, 80
	mov.n	a11, a3
	addi	a10, sp, 40
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL98:
	.loc 1 214 0 discriminator 3
	movi	a11, 0xc8
	mov.n	a12, a2
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL99:
	.loc 1 215 0 discriminator 3
	movi	a11, 0xc8
	add.n	a11, a11, sp
	mov.n	a10, a11
	mov.n	a12, a2
	call8	crypto_core_curve25519_ref10_fe_add
.LVL100:
	.loc 1 216 0 discriminator 3
	addi	a12, sp, 80
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_add
.LVL101:
	.loc 1 217 0 discriminator 3
	movi	a12, 0xc8
	add.n	a12, a12, sp
	addi	a11, sp, 40
	addi	a10, sp, 80
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL102:
	.loc 1 218 0 discriminator 3
	mov.n	a12, sp
	mov.n	a11, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL103:
	.loc 1 219 0 discriminator 3
	mov.n	a11, sp
	addi	a10, sp, 40
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL104:
	.loc 1 220 0 discriminator 3
	movi	a11, 0xc8
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL105:
	.loc 1 221 0 discriminator 3
	mov.n	a12, a2
	addi	a11, sp, 80
	mov.n	a10, a3
	call8	crypto_core_curve25519_ref10_fe_add
.LVL106:
	.loc 1 222 0 discriminator 3
	mov.n	a12, a2
	addi	a11, sp, 80
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL107:
	.loc 1 223 0 discriminator 3
	movi	a10, 0xc8
	addi	a12, sp, 40
	mov.n	a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL108:
	.loc 1 224 0 discriminator 3
	addi	a12, sp, 40
	mov.n	a11, sp
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL109:
	.loc 1 225 0 discriminator 3
	mov.n	a11, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL110:
.LBB8:
.LBB9:
	.loc 1 110 0 discriminator 3
	l32r	a8, .LC2
	.loc 1 101 0 discriminator 3
	l32i.n	a12, sp, 4
	.loc 1 102 0 discriminator 3
	l32i.n	a10, sp, 8
	.loc 1 103 0 discriminator 3
	l32i.n	a6, sp, 12
	.loc 1 111 0 discriminator 3
	mull	a11, a12, a8
	mulsh	a15, a12, a8
	.loc 1 112 0 discriminator 3
	mull	a12, a10, a8
	mulsh	a10, a10, a8
	.loc 1 104 0 discriminator 3
	l32i.n	a5, sp, 16
	.loc 1 112 0 discriminator 3
	s32i	a10, sp, 348
	.loc 1 113 0 discriminator 3
	mull	a10, a6, a8
	mulsh	a6, a6, a8
	.loc 1 105 0 discriminator 3
	l32i.n	a4, sp, 20
	.loc 1 113 0 discriminator 3
	s32i	a6, sp, 352
	.loc 1 114 0 discriminator 3
	mull	a6, a5, a8
	mulsh	a5, a5, a8
	.loc 1 108 0 discriminator 3
	l32i.n	a13, sp, 32
	.loc 1 114 0 discriminator 3
	s32i	a5, sp, 364
	.loc 1 116 0 discriminator 3
	l32i.n	a5, sp, 24
	.loc 1 114 0 discriminator 3
	s32i	a6, sp, 340
	.loc 1 116 0 discriminator 3
	mulsh	a5, a5, a8
	.loc 1 115 0 discriminator 3
	mull	a6, a4, a8
	mulsh	a4, a4, a8
	.loc 1 116 0 discriminator 3
	s32i	a5, sp, 372
	.loc 1 115 0 discriminator 3
	s32i	a4, sp, 368
	.loc 1 118 0 discriminator 3
	mull	a5, a13, a8
	.loc 1 116 0 discriminator 3
	l32i.n	a4, sp, 24
	.loc 1 118 0 discriminator 3
	mulsh	a13, a13, a8
	.loc 1 116 0 discriminator 3
	mull	a4, a4, a8
	.loc 1 100 0 discriminator 3
	l32i.n	a9, sp, 0
.LVL111:
	.loc 1 107 0 discriminator 3
	l32i.n	a14, sp, 28
.LVL112:
	.loc 1 118 0 discriminator 3
	s32i	a13, sp, 380
	.loc 1 119 0 discriminator 3
	l32i.n	a13, sp, 36
	.loc 1 110 0 discriminator 3
	mull	a7, a9, a8
	.loc 1 116 0 discriminator 3
	s32i	a4, sp, 344
	.loc 1 110 0 discriminator 3
	mulsh	a9, a9, a8
.LVL113:
	.loc 1 117 0 discriminator 3
	mull	a4, a14, a8
.LVL114:
	.loc 1 118 0 discriminator 3
	s32i	a5, sp, 356
	.loc 1 117 0 discriminator 3
	mulsh	a14, a14, a8
.LVL115:
	.loc 1 119 0 discriminator 3
	mull	a5, a13, a8
	mulsh	a8, a13, a8
	.loc 1 131 0 discriminator 3
	l32r	a13, .LC3
	.loc 1 117 0 discriminator 3
	s32i	a4, sp, 328
	s32i	a14, sp, 376
.LVL116:
	.loc 1 131 0 discriminator 3
	add.n	a4, a5, a13
	movi.n	a13, 1
	bltu	a4, a5, .L7
	movi.n	a13, 0
.L7:
	add.n	a8, a13, a8
	slli	a13, a8, 7
	extui	a4, a4, 25, 7
	or	a4, a13, a4
	srai	a8, a8, 25
.LVL117:
	.loc 1 132 0 discriminator 3
	movi.n	a13, 0x13
	mull	a8, a13, a8
.LVL118:
	mull	a14, a13, a4
	muluh	a13, a13, a4
	add.n	a13, a8, a13
	add.n	a8, a14, a7
	s32i	a8, sp, 320
	movi.n	a7, 1
.LVL119:
	bltu	a8, a14, .L8
	movi.n	a7, 0
.L8:
	add.n	a9, a13, a9
.LVL120:
	add.n	a9, a7, a9
	.loc 1 133 0 discriminator 3
	l32r	a7, .LC4
	.loc 1 134 0 discriminator 3
	l32r	a13, .LC3
	.loc 1 133 0 discriminator 3
	mull	a4, a4, a7
	.loc 1 132 0 discriminator 3
	s32i	a9, sp, 336
.LVL121:
	.loc 1 133 0 discriminator 3
	add.n	a4, a4, a5
	s32i	a4, sp, 384
	.loc 1 134 0 discriminator 3
	add.n	a5, a11, a13
	movi.n	a4, 1
	bltu	a5, a11, .L10
	movi.n	a4, 0
.L10:
	add.n	a4, a4, a15
	slli	a7, a4, 7
	extui	a5, a5, 25, 7
	or	a5, a7, a5
	.loc 1 135 0 discriminator 3
	add.n	a15, a12, a5
	.loc 1 134 0 discriminator 3
	srai	a4, a4, 25
.LVL122:
	.loc 1 135 0 discriminator 3
	movi.n	a7, 1
	bltu	a15, a12, .L11
	movi.n	a7, 0
.L11:
	l32i	a8, sp, 348
	add.n	a4, a8, a4
.LVL123:
	add.n	a9, a7, a4
.LVL124:
	.loc 1 136 0 discriminator 3
	l32r	a4, .LC4
	mull	a5, a5, a4
	add.n	a5, a5, a11
	.loc 1 137 0 discriminator 3
	l32r	a11, .LC3
	.loc 1 136 0 discriminator 3
	s32i	a5, sp, 348
	.loc 1 137 0 discriminator 3
	add.n	a4, a10, a11
	movi.n	a5, 1
	bltu	a4, a10, .L13
	movi.n	a5, 0
.L13:
	l32i	a13, sp, 352
	extui	a4, a4, 25, 7
	add.n	a5, a5, a13
	slli	a7, a5, 7
	.loc 1 138 0 discriminator 3
	l32i	a8, sp, 340
	.loc 1 137 0 discriminator 3
	or	a4, a7, a4
	.loc 1 138 0 discriminator 3
	add.n	a12, a8, a4
	.loc 1 137 0 discriminator 3
	srai	a5, a5, 25
.LVL125:
	.loc 1 138 0 discriminator 3
	movi.n	a7, 1
	bltu	a12, a8, .L14
	movi.n	a7, 0
.L14:
	l32i	a11, sp, 364
	.loc 1 140 0 discriminator 3
	l32r	a13, .LC3
	.loc 1 138 0 discriminator 3
	add.n	a5, a11, a5
.LVL126:
	add.n	a5, a7, a5
	s32i	a5, sp, 340
.LVL127:
	.loc 1 139 0 discriminator 3
	l32r	a5, .LC4
.LVL128:
	.loc 1 140 0 discriminator 3
	add.n	a7, a6, a13
	.loc 1 139 0 discriminator 3
	mull	a4, a4, a5
	add.n	a4, a4, a10
	s32i	a4, sp, 352
	.loc 1 140 0 discriminator 3
	movi.n	a4, 1
	bltu	a7, a6, .L16
	movi.n	a4, 0
.L16:
	l32i	a5, sp, 368
	.loc 1 141 0 discriminator 3
	l32i	a8, sp, 344
	.loc 1 140 0 discriminator 3
	add.n	a4, a4, a5
	slli	a5, a4, 7
	extui	a7, a7, 25, 7
	or	a7, a5, a7
	.loc 1 141 0 discriminator 3
	l32i	a10, sp, 344
	add.n	a5, a8, a7
	.loc 1 140 0 discriminator 3
	srai	a4, a4, 25
.LVL129:
	.loc 1 141 0 discriminator 3
	movi.n	a8, 1
	bltu	a5, a10, .L17
	movi.n	a8, 0
.L17:
	l32i	a11, sp, 372
	add.n	a13, a11, a4
	.loc 1 142 0 discriminator 3
	l32r	a4, .LC4
.LVL130:
	.loc 1 141 0 discriminator 3
	add.n	a13, a8, a13
.LVL131:
	.loc 1 142 0 discriminator 3
	mull	a7, a7, a4
	.loc 1 143 0 discriminator 3
	l32i	a4, sp, 328
	.loc 1 142 0 discriminator 3
	add.n	a6, a7, a6
	s32i	a6, sp, 344
	.loc 1 143 0 discriminator 3
	l32r	a6, .LC3
	l32i	a8, sp, 328
	add.n	a7, a4, a6
	movi.n	a4, 1
	bltu	a7, a8, .L19
	movi.n	a4, 0
.L19:
	l32i	a10, sp, 376
	extui	a7, a7, 25, 7
	add.n	a4, a4, a10
	slli	a6, a4, 7
	.loc 1 144 0 discriminator 3
	l32i	a11, sp, 356
	.loc 1 143 0 discriminator 3
	or	a7, a6, a7
	.loc 1 144 0 discriminator 3
	add.n	a14, a11, a7
	.loc 1 143 0 discriminator 3
	srai	a4, a4, 25
.LVL132:
	.loc 1 144 0 discriminator 3
	movi.n	a6, 1
	bltu	a14, a11, .L20
	movi.n	a6, 0
.L20:
	l32i	a8, sp, 380
	.loc 1 145 0 discriminator 3
	l32i	a10, sp, 328
	.loc 1 144 0 discriminator 3
	add.n	a4, a8, a4
.LVL133:
	.loc 1 145 0 discriminator 3
	l32r	a8, .LC4
	.loc 1 144 0 discriminator 3
	add.n	a4, a6, a4
.LVL134:
	.loc 1 145 0 discriminator 3
	mull	a8, a7, a8
	.loc 1 147 0 discriminator 3
	l32i	a6, sp, 320
	.loc 1 145 0 discriminator 3
	add.n	a8, a8, a10
	s32i	a8, sp, 328
	.loc 1 147 0 discriminator 3
	l32r	a8, .LC5
	movi.n	a7, 1
	add.n	a11, a6, a8
	bltu	a11, a6, .L22
	movi.n	a7, 0
.L22:
	l32i	a10, sp, 336
	.loc 1 150 0 discriminator 3
	l32r	a6, .LC5
	.loc 1 147 0 discriminator 3
	add.n	a7, a7, a10
	slli	a7, a7, 6
	extui	a11, a11, 26, 6
	.loc 1 150 0 discriminator 3
	add.n	a10, a15, a6
	.loc 1 147 0 discriminator 3
	or	a11, a7, a11
.LVL135:
	.loc 1 150 0 discriminator 3
	movi.n	a7, 1
	bltu	a10, a15, .L23
	movi.n	a7, 0
.L23:
	.loc 1 153 0 discriminator 3
	l32r	a8, .LC5
	.loc 1 150 0 discriminator 3
	add.n	a7, a7, a9
	slli	a7, a7, 6
	extui	a10, a10, 26, 6
	.loc 1 153 0 discriminator 3
	add.n	a9, a12, a8
.LVL136:
	.loc 1 150 0 discriminator 3
	or	a10, a7, a10
.LVL137:
	.loc 1 153 0 discriminator 3
	movi.n	a6, 1
	bltu	a9, a12, .L24
	movi.n	a6, 0
.L24:
	l32i	a8, sp, 340
	extui	a9, a9, 26, 6
	add.n	a6, a6, a8
	slli	a6, a6, 6
	or	a9, a6, a9
.LVL138:
	.loc 1 156 0 discriminator 3
	l32r	a6, .LC5
	add.n	a8, a5, a6
	movi.n	a6, 1
	bltu	a8, a5, .L25
	movi.n	a6, 0
.L25:
	add.n	a6, a6, a13
	.loc 1 159 0 discriminator 3
	l32r	a13, .LC5
.LVL139:
	.loc 1 156 0 discriminator 3
	slli	a6, a6, 6
	extui	a8, a8, 26, 6
	.loc 1 159 0 discriminator 3
	add.n	a7, a14, a13
	.loc 1 156 0 discriminator 3
	or	a8, a6, a8
.LVL140:
	.loc 1 159 0 discriminator 3
	movi.n	a6, 1
	bltu	a7, a14, .L26
	movi.n	a6, 0
.L26:
	add.n	a6, a6, a4
	slli	a6, a6, 6
	extui	a4, a7, 26, 6
.LVL141:
	or	a4, a6, a4
.LVL142:
	.loc 1 163 0 discriminator 3
	l32r	a6, .LC6
	l32i	a13, sp, 320
	mull	a7, a11, a6
	add.n	a7, a7, a13
	s32i	a7, sp, 80
	.loc 1 165 0 discriminator 3
	mull	a7, a10, a6
	.loc 1 164 0 discriminator 3
	l32i	a13, sp, 348
	.loc 1 165 0 discriminator 3
	add.n	a15, a7, a15
	.loc 1 167 0 discriminator 3
	mull	a7, a9, a6
	.loc 1 164 0 discriminator 3
	add.n	a11, a13, a11
	.loc 1 167 0 discriminator 3
	add.n	a12, a7, a12
	.loc 1 169 0 discriminator 3
	mull	a7, a8, a6
	.loc 1 171 0 discriminator 3
	mull	a6, a4, a6
	.loc 1 164 0 discriminator 3
	s32i	a11, sp, 84
	.loc 1 171 0 discriminator 3
	add.n	a6, a6, a14
	.loc 1 166 0 discriminator 3
	l32i	a11, sp, 352
	.loc 1 169 0 discriminator 3
	add.n	a5, a7, a5
	.loc 1 168 0 discriminator 3
	l32i	a13, sp, 344
	.loc 1 169 0 discriminator 3
	s32i	a5, sp, 104
	.loc 1 171 0 discriminator 3
	s32i	a6, sp, 112
	.loc 1 170 0 discriminator 3
	l32i	a5, sp, 328
	.loc 1 172 0 discriminator 3
	l32i	a6, sp, 384
	.loc 1 166 0 discriminator 3
	add.n	a10, a11, a10
	.loc 1 170 0 discriminator 3
	add.n	a8, a5, a8
	.loc 1 168 0 discriminator 3
	add.n	a9, a13, a9
	.loc 1 166 0 discriminator 3
	s32i	a10, sp, 92
.LBE9:
.LBE8:
	.loc 1 227 0 discriminator 3
	mov.n	a11, a3
	mov.n	a10, a3
.LBB11:
.LBB10:
	.loc 1 172 0 discriminator 3
	add.n	a4, a6, a4
	.loc 1 170 0 discriminator 3
	s32i	a8, sp, 108
	.loc 1 165 0 discriminator 3
	s32i	a15, sp, 88
	.loc 1 168 0 discriminator 3
	s32i	a9, sp, 100
	.loc 1 167 0 discriminator 3
	s32i	a12, sp, 96
	.loc 1 172 0 discriminator 3
	s32i	a4, sp, 116
.LBE10:
.LBE11:
	.loc 1 227 0 discriminator 3
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL143:
	.loc 1 228 0 discriminator 3
	addi	a11, sp, 40
	mov.n	a10, a11
	addi	a12, sp, 80
.LVL144:
	call8	crypto_core_curve25519_ref10_fe_add
.LVL145:
	.loc 1 229 0 discriminator 3
	movi	a11, 0xf0
	mov.n	a12, a2
	add.n	a11, sp, a11
	addi	a10, sp, 80
.LVL146:
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL147:
	.loc 1 230 0 discriminator 3
	addi	a12, sp, 40
	mov.n	a11, sp
.LVL148:
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL149:
	.loc 1 206 0 discriminator 3
	l32i	a8, sp, 324
	.loc 1 208 0 discriminator 3
	l32i	a5, sp, 332
	.loc 1 206 0 discriminator 3
	addi.n	a8, a8, -1
	s32i	a8, sp, 324
.LVL150:
	bnei	a8, -1, .L37
	.loc 1 232 0
	movi	a10, 0xc8
	mov.n	a12, a5
	mov.n	a11, a3
	add.n	a10, a10, sp
	call8	fe_cswap
.LVL151:
	.loc 1 233 0
	l32i	a12, sp, 332
	addi	a11, sp, 80
.LVL152:
	mov.n	a10, a2
	call8	fe_cswap
.LVL153:
	.loc 1 235 0
	mov.n	a11, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL154:
	.loc 1 236 0
	movi	a11, 0xc8
	add.n	a11, a11, sp
	mov.n	a12, a2
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL155:
	.loc 1 237 0
	l32i	a10, sp, 360
	movi	a11, 0xc8
	add.n	a11, a11, sp
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL156:
	.loc 1 240 0
	movi.n	a2, 0
	retw.n
.LFE2:
	.size	crypto_scalarmult_curve25519_ref10, .-crypto_scalarmult_curve25519_ref10
	.global	crypto_scalarmult_curve25519_ref10_implementation
	.section	.data.crypto_scalarmult_curve25519_ref10_implementation,"aw",@progbits
	.align	4
	.type	crypto_scalarmult_curve25519_ref10_implementation, @object
	.size	crypto_scalarmult_curve25519_ref10_implementation, 8
crypto_scalarmult_curve25519_ref10_implementation:
	.word	crypto_scalarmult_curve25519_ref10
	.word	crypto_scalarmult_curve25519_ref10_base
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
	.uleb128 0x50
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x160
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
	.uleb128 0x1b0
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/../scalarmult_curve25519.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc44
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x21
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1d
	.4byte	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.4byte	0x4b
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x38
	.4byte	0x56
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x8
	.byte	0x4
	.byte	0x5
	.4byte	0xaa
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x4
	.byte	0x6
	.4byte	0xd4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x4
	.byte	0x8
	.4byte	0xee
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x21
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xc9
	.uleb128 0x8
	.4byte	0xc9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3d
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcf
	.uleb128 0xa
	.4byte	0x3d
	.uleb128 0x9
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x7
	.4byte	0x21
	.4byte	0xee
	.uleb128 0x8
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xc9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xda
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x8
	.4byte	0xff
	.uleb128 0xb
	.4byte	0x6f
	.4byte	0x10f
	.uleb128 0xc
	.4byte	0x10f
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0xd
	.byte	0xa0
	.byte	0x5
	.byte	0x4b
	.4byte	0x147
	.uleb128 0xe
	.string	"X"
	.byte	0x5
	.byte	0x4c
	.4byte	0xf4
	.byte	0
	.uleb128 0xe
	.string	"Y"
	.byte	0x5
	.byte	0x4d
	.4byte	0xf4
	.byte	0x28
	.uleb128 0xe
	.string	"Z"
	.byte	0x5
	.byte	0x4e
	.4byte	0xf4
	.byte	0x50
	.uleb128 0xe
	.string	"T"
	.byte	0x5
	.byte	0x4f
	.4byte	0xf4
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x50
	.4byte	0x116
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0x14
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x331
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0x14
	.4byte	0x331
	.4byte	.LLST0
	.uleb128 0x11
	.string	"g"
	.byte	0x1
	.byte	0x14
	.4byte	0x331
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x14
	.4byte	0x28
	.4byte	.LLST1
	.uleb128 0x12
	.string	"f0"
	.byte	0x1
	.byte	0x16
	.4byte	0x6f
	.4byte	.LLST2
	.uleb128 0x12
	.string	"f1"
	.byte	0x1
	.byte	0x17
	.4byte	0x6f
	.4byte	.LLST3
	.uleb128 0x12
	.string	"f2"
	.byte	0x1
	.byte	0x18
	.4byte	0x6f
	.4byte	.LLST4
	.uleb128 0x12
	.string	"f3"
	.byte	0x1
	.byte	0x19
	.4byte	0x6f
	.4byte	.LLST5
	.uleb128 0x12
	.string	"f4"
	.byte	0x1
	.byte	0x1a
	.4byte	0x6f
	.4byte	.LLST6
	.uleb128 0x12
	.string	"f5"
	.byte	0x1
	.byte	0x1b
	.4byte	0x6f
	.4byte	.LLST7
	.uleb128 0x12
	.string	"f6"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6f
	.4byte	.LLST8
	.uleb128 0x12
	.string	"f7"
	.byte	0x1
	.byte	0x1d
	.4byte	0x6f
	.4byte	.LLST9
	.uleb128 0x12
	.string	"f8"
	.byte	0x1
	.byte	0x1e
	.4byte	0x6f
	.4byte	.LLST10
	.uleb128 0x12
	.string	"f9"
	.byte	0x1
	.byte	0x1f
	.4byte	0x6f
	.4byte	.LLST11
	.uleb128 0x12
	.string	"g0"
	.byte	0x1
	.byte	0x20
	.4byte	0x6f
	.4byte	.LLST12
	.uleb128 0x12
	.string	"g1"
	.byte	0x1
	.byte	0x21
	.4byte	0x6f
	.4byte	.LLST13
	.uleb128 0x12
	.string	"g2"
	.byte	0x1
	.byte	0x22
	.4byte	0x6f
	.4byte	.LLST14
	.uleb128 0x12
	.string	"g3"
	.byte	0x1
	.byte	0x23
	.4byte	0x6f
	.4byte	.LLST15
	.uleb128 0x12
	.string	"g4"
	.byte	0x1
	.byte	0x24
	.4byte	0x6f
	.4byte	.LLST16
	.uleb128 0x12
	.string	"g5"
	.byte	0x1
	.byte	0x25
	.4byte	0x6f
	.4byte	.LLST17
	.uleb128 0x12
	.string	"g6"
	.byte	0x1
	.byte	0x26
	.4byte	0x6f
	.4byte	.LLST18
	.uleb128 0x12
	.string	"g7"
	.byte	0x1
	.byte	0x27
	.4byte	0x6f
	.4byte	.LLST19
	.uleb128 0x12
	.string	"g8"
	.byte	0x1
	.byte	0x28
	.4byte	0x6f
	.4byte	.LLST20
	.uleb128 0x12
	.string	"g9"
	.byte	0x1
	.byte	0x29
	.4byte	0x6f
	.4byte	.LLST21
	.uleb128 0x12
	.string	"x0"
	.byte	0x1
	.byte	0x2a
	.4byte	0x6f
	.4byte	.LLST22
	.uleb128 0x12
	.string	"x1"
	.byte	0x1
	.byte	0x2b
	.4byte	0x6f
	.4byte	.LLST23
	.uleb128 0x12
	.string	"x2"
	.byte	0x1
	.byte	0x2c
	.4byte	0x6f
	.4byte	.LLST24
	.uleb128 0x12
	.string	"x3"
	.byte	0x1
	.byte	0x2d
	.4byte	0x6f
	.4byte	.LLST25
	.uleb128 0x12
	.string	"x4"
	.byte	0x1
	.byte	0x2e
	.4byte	0x6f
	.4byte	.LLST26
	.uleb128 0x12
	.string	"x5"
	.byte	0x1
	.byte	0x2f
	.4byte	0x6f
	.4byte	.LLST27
	.uleb128 0x12
	.string	"x6"
	.byte	0x1
	.byte	0x30
	.4byte	0x6f
	.4byte	.LLST28
	.uleb128 0x12
	.string	"x7"
	.byte	0x1
	.byte	0x31
	.4byte	0x6f
	.4byte	.LLST29
	.uleb128 0x12
	.string	"x8"
	.byte	0x1
	.byte	0x32
	.4byte	0x6f
	.4byte	.LLST30
	.uleb128 0x12
	.string	"x9"
	.byte	0x1
	.byte	0x33
	.4byte	0x6f
	.4byte	.LLST31
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.4byte	0x37b
	.uleb128 0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf3
	.4byte	0x331
	.uleb128 0x14
	.4byte	.LASF17
	.byte	0x1
	.byte	0xf3
	.4byte	0x37b
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf3
	.4byte	0x37b
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0xf5
	.4byte	0xf4
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf6
	.4byte	0xf4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x381
	.uleb128 0xa
	.4byte	0x6f
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xff
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f2
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.byte	0xff
	.4byte	0xc3
	.4byte	.LLST32
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.2byte	0x100
	.4byte	0xc9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"e"
	.byte	0x1
	.2byte	0x102
	.4byte	0x4f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"A"
	.byte	0x1
	.2byte	0x103
	.4byte	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x18
	.string	"pk"
	.byte	0x1
	.2byte	0x104
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x105
	.4byte	0x28
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	0x337
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x10e
	.4byte	0x4bf
	.uleb128 0x1b
	.4byte	0x359
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	0x34e
	.4byte	.LLST35
	.uleb128 0x1c
	.4byte	0x343
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1e
	.4byte	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1e
	.4byte	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.4byte	.LVL73
	.4byte	0xbce
	.4byte	0x45f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL76
	.4byte	0xbd9
	.4byte	0x482
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL77
	.4byte	0xbe4
	.4byte	0x49e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x21
	.4byte	.LVL78
	.4byte	0xbef
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL70
	.4byte	0xbfa
	.4byte	0x4da
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL79
	.4byte	0xc05
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x3d
	.4byte	0x502
	.uleb128 0xc
	.4byte	0x10f
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0x657
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.byte	0x62
	.4byte	0x331
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.byte	0x62
	.4byte	0x37b
	.uleb128 0x23
	.string	"f0"
	.byte	0x1
	.byte	0x64
	.4byte	0x6f
	.uleb128 0x23
	.string	"f1"
	.byte	0x1
	.byte	0x65
	.4byte	0x6f
	.uleb128 0x23
	.string	"f2"
	.byte	0x1
	.byte	0x66
	.4byte	0x6f
	.uleb128 0x23
	.string	"f3"
	.byte	0x1
	.byte	0x67
	.4byte	0x6f
	.uleb128 0x23
	.string	"f4"
	.byte	0x1
	.byte	0x68
	.4byte	0x6f
	.uleb128 0x23
	.string	"f5"
	.byte	0x1
	.byte	0x69
	.4byte	0x6f
	.uleb128 0x23
	.string	"f6"
	.byte	0x1
	.byte	0x6a
	.4byte	0x6f
	.uleb128 0x23
	.string	"f7"
	.byte	0x1
	.byte	0x6b
	.4byte	0x6f
	.uleb128 0x23
	.string	"f8"
	.byte	0x1
	.byte	0x6c
	.4byte	0x6f
	.uleb128 0x23
	.string	"f9"
	.byte	0x1
	.byte	0x6d
	.4byte	0x6f
	.uleb128 0x23
	.string	"h0"
	.byte	0x1
	.byte	0x6e
	.4byte	0x7a
	.uleb128 0x23
	.string	"h1"
	.byte	0x1
	.byte	0x6f
	.4byte	0x7a
	.uleb128 0x23
	.string	"h2"
	.byte	0x1
	.byte	0x70
	.4byte	0x7a
	.uleb128 0x23
	.string	"h3"
	.byte	0x1
	.byte	0x71
	.4byte	0x7a
	.uleb128 0x23
	.string	"h4"
	.byte	0x1
	.byte	0x72
	.4byte	0x7a
	.uleb128 0x23
	.string	"h5"
	.byte	0x1
	.byte	0x73
	.4byte	0x7a
	.uleb128 0x23
	.string	"h6"
	.byte	0x1
	.byte	0x74
	.4byte	0x7a
	.uleb128 0x23
	.string	"h7"
	.byte	0x1
	.byte	0x75
	.4byte	0x7a
	.uleb128 0x23
	.string	"h8"
	.byte	0x1
	.byte	0x76
	.4byte	0x7a
	.uleb128 0x23
	.string	"h9"
	.byte	0x1
	.byte	0x77
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x1
	.byte	0x78
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0x79
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7a
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x7b
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7c
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7d
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7e
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7f
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x80
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x81
	.4byte	0x7a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb0
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbc
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.byte	0xb0
	.4byte	0xc3
	.4byte	.LLST36
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0xb1
	.4byte	0xc9
	.4byte	.LLST37
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0xb2
	.4byte	0xc9
	.4byte	.LLST38
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.byte	0xb4
	.4byte	0x4f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.4byte	0x28
	.4byte	.LLST39
	.uleb128 0x24
	.string	"x1"
	.byte	0x1
	.byte	0xb6
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.string	"x2"
	.byte	0x1
	.byte	0xb7
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.string	"z2"
	.byte	0x1
	.byte	0xb8
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x24
	.string	"x3"
	.byte	0x1
	.byte	0xb9
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x24
	.string	"z3"
	.byte	0x1
	.byte	0xba
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x25
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbb
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x25
	.4byte	.LASF36
	.byte	0x1
	.byte	0xbc
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.byte	0xbd
	.4byte	0x21
	.4byte	.LLST40
	.uleb128 0x26
	.4byte	.LASF37
	.byte	0x1
	.byte	0xbe
	.4byte	0x28
	.4byte	.LLST41
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0xbf
	.4byte	0x28
	.4byte	.LLST42
	.uleb128 0x27
	.4byte	0x502
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe2
	.4byte	0x846
	.uleb128 0x1b
	.4byte	0x517
	.4byte	.LLST43
	.uleb128 0x1b
	.4byte	0x50e
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.4byte	0x520
	.4byte	.LLST45
	.uleb128 0x1e
	.4byte	0x52a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.4byte	0x534
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1e
	.4byte	0x53e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1e
	.4byte	0x548
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	0x552
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	0x55c
	.4byte	.LLST46
	.uleb128 0x29
	.4byte	0x566
	.4byte	.LLST47
	.uleb128 0x1e
	.4byte	0x570
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.4byte	0x57a
	.4byte	.LLST48
	.uleb128 0x29
	.4byte	0x584
	.4byte	.LLST49
	.uleb128 0x2a
	.4byte	0x58e
	.uleb128 0x29
	.4byte	0x598
	.4byte	.LLST50
	.uleb128 0x2a
	.4byte	0x5a2
	.uleb128 0x29
	.4byte	0x5ac
	.4byte	.LLST51
	.uleb128 0x2a
	.4byte	0x5b6
	.uleb128 0x29
	.4byte	0x5c0
	.4byte	.LLST52
	.uleb128 0x2a
	.4byte	0x5ca
	.uleb128 0x29
	.4byte	0x5d4
	.4byte	.LLST53
	.uleb128 0x2a
	.4byte	0x5de
	.uleb128 0x2a
	.4byte	0x5e8
	.uleb128 0x29
	.4byte	0x5f3
	.4byte	.LLST54
	.uleb128 0x2a
	.4byte	0x5fe
	.uleb128 0x29
	.4byte	0x609
	.4byte	.LLST55
	.uleb128 0x2a
	.4byte	0x614
	.uleb128 0x29
	.4byte	0x61f
	.4byte	.LLST56
	.uleb128 0x2a
	.4byte	0x62a
	.uleb128 0x29
	.4byte	0x635
	.4byte	.LLST57
	.uleb128 0x2a
	.4byte	0x640
	.uleb128 0x29
	.4byte	0x64b
	.4byte	.LLST58
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL88
	.4byte	0xc10
	.4byte	0x862
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL89
	.4byte	0xc1b
	.4byte	0x876
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL90
	.4byte	0xc26
	.4byte	0x88a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL91
	.4byte	0xc31
	.4byte	0x8a5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL92
	.4byte	0xc1b
	.4byte	0x8ba
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL96
	.4byte	0x152
	.4byte	0x8db
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL97
	.4byte	0x152
	.4byte	0x8fc
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL98
	.4byte	0xbd9
	.4byte	0x91e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL99
	.4byte	0xbd9
	.4byte	0x940
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL100
	.4byte	0xbce
	.4byte	0x962
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL101
	.4byte	0xbce
	.4byte	0x983
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL102
	.4byte	0xbef
	.4byte	0x9a6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL103
	.4byte	0xbef
	.4byte	0x9c7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL104
	.4byte	0xc3c
	.4byte	0x9e3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL105
	.4byte	0xc3c
	.4byte	0x9ff
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL106
	.4byte	0xbce
	.4byte	0xa20
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL107
	.4byte	0xbd9
	.4byte	0xa41
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL108
	.4byte	0xbef
	.4byte	0xa64
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL109
	.4byte	0xbd9
	.4byte	0xa87
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL110
	.4byte	0xc3c
	.4byte	0xaa1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL143
	.4byte	0xc3c
	.4byte	0xabb
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL145
	.4byte	0xbce
	.4byte	0xade
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL147
	.4byte	0xbef
	.4byte	0xb00
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL149
	.4byte	0xbef
	.4byte	0xb22
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL151
	.4byte	0x152
	.4byte	0xb43
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL153
	.4byte	0x152
	.4byte	0xb66
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL154
	.4byte	0xbe4
	.4byte	0xb80
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL155
	.4byte	0xbef
	.4byte	0xba2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL156
	.4byte	0xc05
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x115
	.4byte	0x85
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_scalarmult_curve25519_ref10_implementation
	.uleb128 0x2c
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x2c
	.uleb128 0x2c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x2d
	.uleb128 0x2c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x32
	.uleb128 0x2c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2f
	.uleb128 0x2c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x91
	.uleb128 0x2c
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x24
	.uleb128 0x2c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0x23
	.uleb128 0x2c
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0x2a
	.uleb128 0x2c
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x29
	.uleb128 0x2c
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x26
	.uleb128 0x2c
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x30
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x72
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL1
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x72
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL1
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL1
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x72
	.sleb128 36
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 16
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 24
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 28
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 32
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x8
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x8
	.byte	0x72
	.sleb128 8
	.byte	0x6
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x8
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL27
	.4byte	.LVL37
	.2byte	0x8
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL19
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x73
	.sleb128 24
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL19
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x8
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x7
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL34
	.2byte	0x8
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x73
	.sleb128 32
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x8
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x73
	.sleb128 32
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x7
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL35
	.2byte	0x8
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x73
	.sleb128 36
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL65
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL76-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL73-1
	.4byte	.LVL74
	.2byte	0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL76-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL88-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x8
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL150
	.4byte	.LVL151-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL151-1
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL150
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x19
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x98
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x37
	.byte	0x1a
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL110
	.4byte	.LVL148
	.2byte	0x4
	.byte	0x91
	.sleb128 -432
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL149-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0x91
	.sleb128 -432
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL110
	.4byte	.LVL144
	.2byte	0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL145-1
	.4byte	.LVL146
	.2byte	0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147-1
	.4byte	.LVL152
	.2byte	0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL153-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL113
	.4byte	.LVL143-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -432
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL111
	.4byte	.LVL143-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -408
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL115
	.4byte	.LVL143-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -404
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL112
	.4byte	.LVL143-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -396
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL113
	.4byte	.LVL119
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x8
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL124
	.4byte	.LVL135
	.2byte	0xa
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL113
	.4byte	.LVL124
	.2byte	0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL124
	.4byte	.LVL136
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL113
	.4byte	.LVL127
	.2byte	0xa
	.byte	0x91
	.sleb128 -92
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL128
	.4byte	.LVL138
	.2byte	0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x7
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL114
	.4byte	.LVL131
	.2byte	0x9
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL131
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL116
	.4byte	.LVL134
	.2byte	0x9
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"carry1"
.LASF25:
	.string	"carry2"
.LASF26:
	.string	"carry3"
.LASF27:
	.string	"carry4"
.LASF28:
	.string	"carry5"
.LASF29:
	.string	"carry6"
.LASF30:
	.string	"carry7"
.LASF31:
	.string	"carry8"
.LASF32:
	.string	"carry9"
.LASF19:
	.string	"tempX"
.LASF20:
	.string	"tempZ"
.LASF47:
	.string	"crypto_core_curve25519_ref10_fe_copy"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"sizetype"
.LASF42:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF22:
	.string	"fe_mul121666"
.LASF33:
	.string	"crypto_scalarmult_curve25519_ref10_base"
.LASF45:
	.string	"crypto_core_curve25519_ref10_fe_1"
.LASF10:
	.string	"int64_t"
.LASF38:
	.string	"crypto_core_curve25519_ref10_fe_add"
.LASF43:
	.string	"crypto_core_curve25519_ref10_fe_tobytes"
.LASF23:
	.string	"carry0"
.LASF7:
	.string	"long long int"
.LASF44:
	.string	"crypto_core_curve25519_ref10_fe_frombytes"
.LASF6:
	.string	"__int64_t"
.LASF46:
	.string	"crypto_core_curve25519_ref10_fe_0"
.LASF41:
	.string	"crypto_core_curve25519_ref10_fe_mul"
.LASF48:
	.string	"crypto_core_curve25519_ref10_fe_sq"
.LASF13:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF40:
	.string	"crypto_core_curve25519_ref10_fe_invert"
.LASF52:
	.string	"fe_cswap"
.LASF3:
	.string	"unsigned char"
.LASF50:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
.LASF16:
	.string	"montgomeryX"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF12:
	.string	"mult_base"
.LASF9:
	.string	"int32_t"
.LASF11:
	.string	"mult"
.LASF39:
	.string	"crypto_core_curve25519_ref10_fe_sub"
.LASF51:
	.string	"crypto_scalarmult_curve25519_implementation"
.LASF35:
	.string	"tmp0"
.LASF36:
	.string	"tmp1"
.LASF15:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF37:
	.string	"swap"
.LASF34:
	.string	"crypto_scalarmult_curve25519_ref10"
.LASF5:
	.string	"__int32_t"
.LASF17:
	.string	"edwardsY"
.LASF18:
	.string	"edwardsZ"
.LASF21:
	.string	"edwards_to_montgomery"
.LASF53:
	.string	"crypto_scalarmult_curve25519_ref10_implementation"
.LASF49:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
