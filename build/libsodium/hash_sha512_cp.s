	.file	"hash_sha512_cp.c"
	.text
.Ltext0:
	.section	.text.be64enc_vect,"ax",@progbits
	.literal_position
	.align	4
	.type	be64enc_vect, @function
be64enc_vect:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_hash/sha512/cp/hash_sha512_cp.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	srli	a4, a4, 3
.LVL2:
	addx8	a4, a4, a2
	.loc 1 45 0
	j	.L2
.LVL3:
.L3:
	.loc 1 46 0 discriminator 3
	l32i.n	a9, a3, 4
.LVL4:
	l32i.n	a8, a3, 0
.LVL5:
.LBB324:
.LBB325:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 138 0 discriminator 3
	slli	a10, a9, 24
	s8i	a8, a2, 7
	srli	a8, a8, 8
.LVL6:
	or	a8, a10, a8
	srli	a10, a9, 8
.LVL7:
	.loc 2 139 0 discriminator 3
	s8i	a8, a2, 6
	slli	a10, a10, 24
.LVL8:
	srli	a8, a8, 8
.LVL9:
	or	a8, a10, a8
	extui	a10, a9, 16, 16
.LVL10:
	.loc 2 140 0 discriminator 3
	s8i	a8, a2, 5
	slli	a10, a10, 24
.LVL11:
	srli	a8, a8, 8
.LVL12:
	or	a8, a10, a8
	extui	a9, a9, 24, 8
.LVL13:
	.loc 2 141 0 discriminator 3
	s8i	a8, a2, 4
	slli	a9, a9, 24
.LVL14:
	srli	a8, a8, 8
	or	a8, a9, a8
.LVL15:
	.loc 2 142 0 discriminator 3
	srli	a9, a8, 8
.LVL16:
	s8i	a8, a2, 3
	.loc 2 143 0 discriminator 3
	s8i	a9, a2, 2
	extui	a9, a8, 16, 16
.LVL17:
	.loc 2 145 0 discriminator 3
	extui	a8, a8, 24, 8
	.loc 2 144 0 discriminator 3
	s8i	a9, a2, 1
.LVL18:
	.loc 2 145 0 discriminator 3
	s8i	a8, a2, 0
	addi.n	a3, a3, 8
	addi.n	a2, a2, 8
.LVL19:
.L2:
.LBE325:
.LBE324:
	.loc 1 45 0 discriminator 1
	bne	a2, a4, .L3
	.loc 1 48 0
	retw.n
.LFE12:
	.size	be64enc_vect, .-be64enc_vect
	.section	.text.SHA512_Transform,"ax",@progbits
	.literal_position
	.literal .LC3, Krnd
	.align	4
	.type	SHA512_Transform, @function
SHA512_Transform:
.LFB14:
	.loc 1 116 0
.LVL20:
	entry	sp, 160
.LCFI1:
.LVL21:
	.loc 1 116 0
	s32i	a2, sp, 112
	s32i.n	a5, sp, 0
	mov.n	a14, a4
	mov.n	a8, a4
	movi.n	a9, 0x10
	loop	a9, .L5_LEND
.LVL22:
.L5:
.LBB650:
.LBB651:
.LBB652:
.LBB653:
	.loc 2 121 0
	l8ui	a2, a3, 6
	l8ui	a4, a3, 5
	.loc 2 119 0
	l8ui	a7, a3, 7
.LVL23:
	.loc 2 121 0
	slli	a4, a4, 16
	slli	a2, a2, 8
	or	a2, a2, a4
	or	a2, a2, a7
.LVL24:
	.loc 2 122 0
	l8ui	a7, a3, 4
	.loc 2 124 0
	l8ui	a4, a3, 2
	.loc 2 122 0
	slli	a7, a7, 24
	.loc 2 123 0
	l8ui	a6, a3, 3
	.loc 2 122 0
	or	a7, a7, a2
.LVL25:
	.loc 2 125 0
	l8ui	a2, a3, 1
	.loc 2 124 0
	slli	a4, a4, 8
	.loc 2 125 0
	slli	a2, a2, 16
	.loc 2 124 0
	or	a5, a4, a6
.LVL26:
	.loc 2 125 0
	or	a4, a2, a5
.LVL27:
.LBE653:
.LBE652:
	.loc 1 56 0
	l8ui	a2, a3, 0
	s32i.n	a7, a8, 0
.LVL28:
	slli	a2, a2, 24
.LVL29:
	or	a2, a2, a4
	s32i.n	a2, a8, 4
	addi.n	a3, a3, 8
.LVL30:
	addi.n	a8, a8, 8
	.L5_LEND:
.LBE651:
.LBE650:
	.loc 1 120 0
	l32i	a11, sp, 112
	l32i.n	a10, sp, 0
	movi.n	a12, 0x40
	s32i	a14, sp, 116
	call8	memcpy
.LVL31:
	l32r	a2, .LC3
	.loc 1 121 0
	movi.n	a3, 0
.LVL32:
	s32i.n	a2, sp, 48
	s32i	a3, sp, 108
	l32i	a14, sp, 116
	j	.L6
.LVL33:
.L167:
	.loc 1 141 0 discriminator 2
	l32i	a4, a14, 112
	l32i	a5, a14, 116
	s32i.n	a4, sp, 20
	l32i.n	a8, sp, 20
	s32i.n	a5, sp, 24
.LVL34:
	l32i.n	a10, sp, 24
	extui	a3, a8, 19, 13
	l32i.n	a9, sp, 20
	slli	a7, a5, 13
	l32i	a6, a14, 76
	or	a7, a7, a3
	slli	a8, a8, 13
	extui	a3, a5, 19, 13
	or	a8, a8, a3
	extui	a5, a9, 29, 3
.LVL35:
	slli	a3, a10, 3
	or	a3, a5, a3
	s32i.n	a6, sp, 52
	slli	a5, a9, 3
	extui	a6, a10, 29, 3
	or	a6, a6, a5
	xor	a7, a7, a6
	slli	a5, a10, 26
	srli	a6, a9, 6
	xor	a3, a8, a3
	or	a6, a5, a6
	srli	a5, a10, 6
	xor	a8, a3, a5
	l32i	a13, a14, 72
	l32i.n	a5, a14, 0
	xor	a6, a7, a6
	add.n	a5, a13, a5
	l32i.n	a4, a14, 8
.LVL36:
	l32i.n	a2, a14, 12
.LVL37:
	l32i.n	a3, a14, 4
	movi.n	a7, 1
	bltu	a5, a13, .L7
	movi.n	a7, 0
.L7:
	l32i.n	a11, sp, 52
	add.n	a5, a6, a5
	add.n	a3, a11, a3
	add.n	a3, a7, a3
	movi.n	a7, 1
	bltu	a5, a6, .L8
	movi.n	a7, 0
.L8:
	add.n	a3, a8, a3
	srli	a6, a4, 1
	add.n	a3, a7, a3
	slli	a9, a2, 31
.LVL38:
	srli	a7, a2, 1
	slli	a8, a4, 31
	or	a9, a9, a6
	or	a8, a8, a7
	srli	a6, a4, 8
	slli	a7, a2, 24
	or	a7, a7, a6
	srli	a10, a2, 8
.LVL39:
	slli	a6, a4, 24
	or	a6, a6, a10
	xor	a7, a9, a7
	xor	a6, a8, a6
	srli	a9, a4, 7
	slli	a8, a2, 25
	or	a9, a8, a9
	xor	a7, a7, a9
	add.n	a12, a5, a7
	srli	a11, a2, 7
	s32i.n	a12, sp, 12
	xor	a6, a6, a11
	movi.n	a7, 1
	bltu	a12, a5, .L9
	movi.n	a7, 0
.L9:
	add.n	a6, a3, a6
	.loc 1 142 0 discriminator 2
	l32i	a3, a14, 120
	l32i	a5, a14, 124
	s32i.n	a3, sp, 4
	l32i.n	a10, sp, 4
	s32i.n	a5, sp, 8
	l32i.n	a11, sp, 8
	l32i	a8, a14, 84
	slli	a9, a5, 13
	extui	a5, a10, 19, 13
	.loc 1 141 0 discriminator 2
	add.n	a6, a7, a6
	.loc 1 142 0 discriminator 2
	or	a9, a9, a5
	l32i.n	a12, sp, 4
	extui	a5, a11, 19, 13
	s32i.n	a8, sp, 60
	slli	a8, a10, 13
	or	a8, a8, a5
	extui	a7, a10, 29, 3
	slli	a5, a11, 3
	.loc 1 141 0 discriminator 2
	s32i.n	a6, sp, 32
.LVL40:
	s32i	a6, a14, 132
	.loc 1 142 0 discriminator 2
	l32i	a6, a14, 80
	.loc 1 141 0 discriminator 2
	l32i.n	a15, sp, 12
	.loc 1 142 0 discriminator 2
	or	a5, a7, a5
	extui	a10, a11, 29, 3
	slli	a7, a12, 3
	s32i.n	a6, sp, 56
	or	a7, a10, a7
	xor	a9, a9, a7
	xor	a5, a8, a5
	.loc 1 141 0 discriminator 2
	s32i	a15, a14, 128
	.loc 1 142 0 discriminator 2
	slli	a8, a11, 26
	srli	a7, a12, 6
	l32i.n	a15, sp, 56
	or	a7, a8, a7
	srli	a11, a11, 6
.LVL41:
	xor	a9, a9, a7
	add.n	a7, a4, a15
	l32i.n	a6, a14, 16
	l32i.n	a3, a14, 20
.LVL42:
	xor	a5, a5, a11
	movi.n	a8, 1
	bltu	a7, a4, .L10
	movi.n	a8, 0
.L10:
	l32i.n	a4, sp, 60
.LVL43:
	add.n	a7, a9, a7
	add.n	a2, a2, a4
.LVL44:
	add.n	a2, a8, a2
	movi.n	a4, 1
	bltu	a7, a9, .L11
	movi.n	a4, 0
.L11:
	add.n	a2, a5, a2
	add.n	a2, a4, a2
	slli	a9, a3, 31
	srli	a4, a6, 1
	or	a9, a9, a4
	slli	a5, a6, 31
	srli	a4, a3, 1
	or	a5, a5, a4
	slli	a8, a3, 24
	srli	a4, a6, 8
	or	a8, a8, a4
	srli	a10, a3, 8
	slli	a4, a6, 24
	or	a4, a4, a10
	xor	a8, a9, a8
	xor	a4, a5, a4
	srli	a9, a6, 7
	slli	a5, a3, 25
	or	a9, a5, a9
	xor	a8, a8, a9
	srli	a5, a3, 7
	add.n	a11, a7, a8
	xor	a4, a4, a5
	movi.n	a8, 1
	bltu	a11, a7, .L12
	movi.n	a8, 0
.L12:
	add.n	a4, a2, a4
	.loc 1 143 0 discriminator 2
	l32i.n	a12, sp, 12
.LVL45:
	.loc 1 142 0 discriminator 2
	add.n	a4, a8, a4
	.loc 1 143 0 discriminator 2
	l32i.n	a10, sp, 32
	l32i	a5, a14, 88
	l32i	a8, a14, 92
	extui	a7, a10, 19, 13
	s32i	a5, sp, 64
	slli	a9, a10, 13
	extui	a5, a12, 19, 13
	s32i	a8, sp, 68
	slli	a8, a12, 13
	or	a9, a9, a5
	or	a8, a8, a7
	extui	a5, a12, 29, 3
	slli	a7, a10, 3
	or	a5, a5, a7
	l32i.n	a15, sp, 32
	slli	a7, a12, 3
	extui	a10, a10, 29, 3
	or	a10, a10, a7
	xor	a9, a9, a10
	xor	a8, a8, a5
	srli	a10, a12, 6
	slli	a5, a15, 26
	srli	a12, a15, 6
	or	a10, a5, a10
	xor	a5, a8, a12
	l32i	a8, sp, 64
	.loc 1 142 0 discriminator 2
	s32i.n	a4, sp, 16
	s32i	a4, a14, 140
.LVL46:
	.loc 1 143 0 discriminator 2
	xor	a10, a9, a10
	.loc 1 142 0 discriminator 2
	s32i	a11, a14, 136
	.loc 1 143 0 discriminator 2
	add.n	a9, a6, a8
	l32i.n	a4, a14, 24
	l32i.n	a2, a14, 28
.LVL47:
	movi.n	a12, 1
	bltu	a9, a6, .L13
	movi.n	a12, 0
.L13:
	l32i	a15, sp, 68
	add.n	a9, a10, a9
	add.n	a3, a3, a15
.LVL48:
	add.n	a3, a12, a3
	movi.n	a6, 1
.LVL49:
	bltu	a9, a10, .L14
	movi.n	a6, 0
.L14:
	add.n	a3, a5, a3
	slli	a10, a2, 31
	srli	a5, a4, 1
	or	a10, a10, a5
	add.n	a3, a6, a3
	srli	a5, a4, 8
	slli	a6, a2, 24
	srli	a15, a2, 1
	or	a6, a6, a5
	srli	a8, a2, 8
	slli	a7, a4, 31
	slli	a5, a4, 24
	or	a7, a7, a15
	or	a5, a5, a8
	xor	a6, a10, a6
	xor	a5, a7, a5
	srli	a10, a4, 7
	slli	a7, a2, 25
	or	a10, a7, a10
	xor	a6, a6, a10
	add.n	a6, a9, a6
	s32i	a6, sp, 88
	l32i	a8, sp, 88
	srli	a15, a2, 7
	xor	a5, a5, a15
	movi.n	a6, 1
	bltu	a8, a9, .L15
	movi.n	a6, 0
.L15:
	.loc 1 144 0 discriminator 2
	l32i	a10, a14, 96
	.loc 1 143 0 discriminator 2
	add.n	a5, a3, a5
	add.n	a15, a6, a5
	l32i	a9, sp, 88
	.loc 1 144 0 discriminator 2
	s32i	a10, sp, 72
	l32i.n	a6, sp, 16
	l32i.n	a10, sp, 16
	l32i	a12, a14, 100
	extui	a7, a10, 19, 13
	.loc 1 143 0 discriminator 2
	s32i	a9, a14, 144
	.loc 1 144 0 discriminator 2
	slli	a8, a11, 13
	slli	a9, a6, 13
	extui	a6, a11, 19, 13
	or	a8, a8, a7
	or	a9, a9, a6
	slli	a7, a10, 3
	extui	a6, a11, 29, 3
	or	a6, a6, a7
	extui	a10, a10, 29, 3
	s32i	a12, sp, 76
	slli	a7, a11, 3
	l32i.n	a12, sp, 16
	or	a7, a10, a7
	xor	a6, a8, a6
	xor	a9, a9, a7
	slli	a8, a12, 26
	srli	a7, a11, 6
	l32i	a10, sp, 72
	or	a7, a8, a7
	srli	a8, a12, 6
	xor	a8, a6, a8
	.loc 1 143 0 discriminator 2
	s32i	a15, a14, 148
.LVL50:
	.loc 1 144 0 discriminator 2
	add.n	a6, a4, a10
	xor	a9, a9, a7
	l32i.n	a5, a14, 32
	l32i.n	a3, a14, 36
.LVL51:
	movi.n	a7, 1
	bltu	a6, a4, .L16
	movi.n	a7, 0
.L16:
	l32i	a12, sp, 76
	add.n	a6, a9, a6
	add.n	a2, a2, a12
.LVL52:
	add.n	a2, a7, a2
	movi.n	a4, 1
.LVL53:
	bltu	a6, a9, .L17
	movi.n	a4, 0
.L17:
	add.n	a2, a8, a2
	srli	a7, a3, 1
	add.n	a2, a4, a2
	slli	a12, a3, 31
	srli	a4, a5, 1
	slli	a8, a5, 31
	or	a12, a12, a4
	or	a8, a8, a7
	srli	a4, a5, 8
	slli	a7, a3, 24
	or	a7, a7, a4
	srli	a9, a3, 8
	slli	a4, a5, 24
	or	a4, a4, a9
	xor	a7, a12, a7
	xor	a4, a8, a4
	srli	a12, a5, 7
	slli	a8, a3, 25
	or	a12, a8, a12
	xor	a7, a7, a12
	add.n	a8, a6, a7
	srli	a10, a3, 7
	s32i	a8, sp, 92
	xor	a4, a4, a10
	movi.n	a7, 1
	bltu	a8, a6, .L18
	movi.n	a7, 0
.L18:
	.loc 1 145 0 discriminator 2
	l32i	a10, a14, 104
	.loc 1 144 0 discriminator 2
	l32i	a9, sp, 92
	.loc 1 145 0 discriminator 2
	l32i	a12, a14, 108
	l32i	a8, sp, 88
	.loc 1 144 0 discriminator 2
	add.n	a4, a2, a4
	.loc 1 145 0 discriminator 2
	s32i	a10, sp, 80
	l32i	a10, sp, 88
	.loc 1 144 0 discriminator 2
	add.n	a4, a7, a4
	.loc 1 145 0 discriminator 2
	extui	a6, a8, 19, 13
	extui	a7, a15, 19, 13
	.loc 1 144 0 discriminator 2
	s32i	a9, a14, 152
	.loc 1 145 0 discriminator 2
	s32i	a12, sp, 84
	slli	a9, a15, 13
	l32i	a12, sp, 88
	slli	a8, a8, 13
	or	a8, a8, a7
	or	a9, a9, a6
	slli	a7, a15, 3
	extui	a6, a10, 29, 3
	or	a6, a6, a7
	extui	a10, a15, 29, 3
	slli	a7, a12, 3
	or	a7, a10, a7
	xor	a6, a8, a6
	xor	a9, a9, a7
	slli	a8, a15, 26
	srli	a7, a12, 6
	l32i	a10, sp, 80
	or	a7, a8, a7
	srli	a8, a15, 6
	.loc 1 144 0 discriminator 2
	s32i.n	a4, sp, 28
.LVL54:
	s32i	a4, a14, 156
.LVL55:
	.loc 1 145 0 discriminator 2
	xor	a8, a6, a8
	add.n	a6, a5, a10
	xor	a9, a9, a7
	l32i.n	a4, a14, 40
	l32i.n	a2, a14, 44
.LVL56:
	movi.n	a7, 1
	bltu	a6, a5, .L19
	movi.n	a7, 0
.L19:
	l32i	a12, sp, 84
	add.n	a6, a9, a6
	add.n	a3, a3, a12
.LVL57:
	add.n	a3, a7, a3
	movi.n	a5, 1
.LVL58:
	bltu	a6, a9, .L20
	movi.n	a5, 0
.L20:
	add.n	a3, a8, a3
	srli	a7, a2, 1
	add.n	a3, a5, a3
	slli	a9, a2, 31
	srli	a5, a4, 1
	slli	a8, a4, 31
	or	a9, a9, a5
	or	a8, a8, a7
	srli	a5, a4, 8
	slli	a7, a2, 24
	or	a7, a7, a5
	srli	a10, a2, 8
	slli	a5, a4, 24
	or	a5, a5, a10
	xor	a7, a9, a7
	xor	a5, a8, a5
	srli	a9, a4, 7
	slli	a8, a2, 25
	or	a9, a8, a9
	xor	a7, a7, a9
	add.n	a8, a6, a7
	srli	a12, a2, 7
	s32i	a8, sp, 96
	xor	a5, a5, a12
	movi.n	a7, 1
	bltu	a8, a6, .L21
	movi.n	a7, 0
.L21:
	.loc 1 146 0 discriminator 2
	l32i	a12, sp, 92
	l32i.n	a10, sp, 28
	.loc 1 145 0 discriminator 2
	l32i	a9, sp, 96
	add.n	a5, a3, a5
	add.n	a5, a7, a5
	.loc 1 146 0 discriminator 2
	extui	a6, a12, 19, 13
	extui	a7, a10, 19, 13
	slli	a8, a12, 13
	.loc 1 145 0 discriminator 2
	s32i	a9, a14, 160
	.loc 1 146 0 discriminator 2
	slli	a9, a10, 13
	or	a9, a9, a6
	or	a8, a8, a7
	extui	a6, a12, 29, 3
	slli	a7, a10, 3
	or	a6, a6, a7
	extui	a10, a10, 29, 3
	slli	a7, a12, 3
	or	a7, a10, a7
	l32i.n	a10, sp, 28
	xor	a9, a9, a7
	xor	a8, a8, a6
	srli	a7, a12, 6
	slli	a6, a10, 26
	srli	a12, a10, 6
	or	a7, a6, a7
	xor	a6, a8, a12
	l32i.n	a12, sp, 20
	.loc 1 145 0 discriminator 2
	s32i.n	a5, sp, 36
	s32i	a5, a14, 164
.LVL59:
	.loc 1 146 0 discriminator 2
	add.n	a4, a12, a4
.LVL60:
	xor	a9, a9, a7
	l32i.n	a5, a14, 48
	l32i.n	a3, a14, 52
.LVL61:
	movi.n	a7, 1
	bltu	a4, a12, .L22
	movi.n	a7, 0
.L22:
	l32i.n	a8, sp, 24
	add.n	a4, a9, a4
	add.n	a2, a8, a2
.LVL62:
	add.n	a2, a7, a2
	movi.n	a7, 1
	bltu	a4, a9, .L23
	movi.n	a7, 0
.L23:
	add.n	a2, a6, a2
	srli	a8, a3, 1
	srli	a6, a5, 1
	add.n	a2, a7, a2
	slli	a9, a3, 31
	slli	a7, a5, 31
	or	a9, a9, a6
	or	a7, a7, a8
	srli	a6, a5, 8
	slli	a8, a3, 24
	or	a8, a8, a6
	srli	a10, a3, 8
	slli	a6, a5, 24
	or	a6, a6, a10
	xor	a8, a9, a8
	xor	a6, a7, a6
	srli	a9, a5, 7
	slli	a7, a3, 25
	or	a9, a7, a9
	xor	a8, a8, a9
	add.n	a8, a4, a8
	s32i	a8, sp, 100
	l32i	a9, sp, 100
	srli	a12, a3, 7
	xor	a6, a6, a12
	movi.n	a8, 1
	bltu	a9, a4, .L24
	movi.n	a8, 0
.L24:
	add.n	a6, a2, a6
	l32i	a10, sp, 100
	.loc 1 147 0 discriminator 2
	l32i.n	a12, sp, 36
	.loc 1 146 0 discriminator 2
	add.n	a6, a8, a6
	.loc 1 147 0 discriminator 2
	l32i	a8, sp, 96
	.loc 1 146 0 discriminator 2
	s32i	a10, a14, 168
	.loc 1 147 0 discriminator 2
	l32i	a10, sp, 96
	extui	a7, a12, 19, 13
	slli	a9, a12, 13
	.loc 1 146 0 discriminator 2
	s32i.n	a6, sp, 40
	s32i	a6, a14, 172
.LVL63:
	.loc 1 147 0 discriminator 2
	extui	a6, a8, 19, 13
	slli	a8, a8, 13
	or	a9, a9, a6
	or	a8, a8, a7
	extui	a6, a10, 29, 3
	slli	a7, a12, 3
	extui	a10, a12, 29, 3
	l32i	a12, sp, 96
	or	a6, a6, a7
	slli	a7, a12, 3
	or	a7, a10, a7
	l32i.n	a10, sp, 36
	xor	a9, a9, a7
	xor	a8, a8, a6
	srli	a7, a12, 6
	slli	a6, a10, 26
	srli	a12, a10, 6
	or	a7, a6, a7
	xor	a6, a8, a12
	l32i.n	a12, sp, 4
	xor	a9, a9, a7
	add.n	a5, a12, a5
.LVL64:
	l32i.n	a4, a14, 56
	l32i.n	a2, a14, 60
.LVL65:
	movi.n	a7, 1
	bltu	a5, a12, .L25
	movi.n	a7, 0
.L25:
	l32i.n	a8, sp, 8
	add.n	a5, a9, a5
	add.n	a3, a8, a3
.LVL66:
	add.n	a3, a7, a3
	movi.n	a7, 1
	bltu	a5, a9, .L26
	movi.n	a7, 0
.L26:
	add.n	a3, a6, a3
	add.n	a3, a7, a3
	srli	a6, a4, 1
	srli	a7, a2, 1
	slli	a10, a2, 31
	slli	a8, a4, 31
	or	a10, a10, a6
	or	a8, a8, a7
	srli	a6, a4, 8
	slli	a7, a2, 24
	or	a7, a7, a6
	srli	a9, a2, 8
	slli	a6, a4, 24
	or	a6, a6, a9
	xor	a7, a10, a7
	xor	a6, a8, a6
	srli	a10, a4, 7
	slli	a8, a2, 25
	or	a10, a8, a10
	xor	a10, a7, a10
	add.n	a10, a5, a10
	srli	a12, a2, 7
	s32i	a10, sp, 104
	xor	a6, a6, a12
	movi.n	a7, 1
	bltu	a10, a5, .L27
	movi.n	a7, 0
.L27:
	.loc 1 148 0 discriminator 2
	l32i	a12, sp, 100
	l32i.n	a10, sp, 40
	.loc 1 147 0 discriminator 2
	l32i	a9, sp, 104
	add.n	a6, a3, a6
	add.n	a6, a7, a6
	.loc 1 148 0 discriminator 2
	extui	a3, a12, 19, 13
	extui	a7, a10, 19, 13
	slli	a8, a12, 13
	.loc 1 147 0 discriminator 2
	s32i	a9, a14, 176
	.loc 1 148 0 discriminator 2
	slli	a9, a10, 13
	or	a9, a9, a3
	or	a8, a8, a7
	extui	a3, a12, 29, 3
	slli	a7, a10, 3
	or	a3, a3, a7
	extui	a10, a10, 29, 3
	slli	a7, a12, 3
	or	a7, a10, a7
	l32i.n	a10, sp, 40
	xor	a9, a9, a7
	xor	a8, a8, a3
	srli	a7, a12, 6
	slli	a3, a10, 26
	srli	a12, a10, 6
	or	a7, a3, a7
	xor	a3, a8, a12
	l32i.n	a12, sp, 12
	.loc 1 147 0 discriminator 2
	s32i.n	a6, sp, 44
	s32i	a6, a14, 180
.LVL67:
	.loc 1 148 0 discriminator 2
	add.n	a4, a12, a4
.LVL68:
	xor	a9, a9, a7
	l32i	a6, a14, 64
	l32i	a5, a14, 68
.LVL69:
	movi.n	a7, 1
	bltu	a4, a12, .L28
	movi.n	a7, 0
.L28:
	l32i.n	a8, sp, 32
	add.n	a2, a8, a2
.LVL70:
	add.n	a2, a7, a2
	add.n	a7, a9, a4
	movi.n	a4, 1
	bltu	a7, a9, .L29
	movi.n	a4, 0
.L29:
	add.n	a2, a3, a2
	slli	a9, a5, 31
	srli	a3, a6, 1
	or	a9, a9, a3
	add.n	a2, a4, a2
	slli	a3, a6, 31
	srli	a4, a5, 1
	or	a3, a3, a4
	srli	a8, a6, 8
	slli	a4, a5, 24
	or	a4, a4, a8
	srli	a10, a5, 8
	slli	a8, a6, 24
	or	a8, a8, a10
	xor	a4, a9, a4
	xor	a8, a3, a8
	srli	a9, a6, 7
	slli	a3, a5, 25
	or	a9, a3, a9
	xor	a4, a4, a9
	srli	a12, a5, 7
	add.n	a4, a7, a4
	xor	a8, a8, a12
	movi.n	a9, 1
	bltu	a4, a7, .L30
	movi.n	a9, 0
.L30:
	.loc 1 149 0 discriminator 2
	l32i	a12, sp, 104
	l32i.n	a10, sp, 44
	.loc 1 148 0 discriminator 2
	add.n	a8, a2, a8
	add.n	a3, a9, a8
	.loc 1 149 0 discriminator 2
	extui	a2, a12, 19, 13
	extui	a7, a10, 19, 13
	slli	a9, a10, 13
	slli	a8, a12, 13
	or	a8, a8, a7
	or	a9, a9, a2
	slli	a7, a10, 3
	extui	a2, a12, 29, 3
	or	a2, a2, a7
	extui	a10, a10, 29, 3
	slli	a7, a12, 3
	or	a7, a10, a7
	l32i.n	a10, sp, 44
	xor	a9, a9, a7
	xor	a2, a8, a2
	srli	a7, a12, 6
	slli	a8, a10, 26
	or	a7, a8, a7
	srli	a12, a10, 6
	.loc 1 148 0 discriminator 2
	s32i	a4, a14, 184
	s32i	a3, a14, 188
.LVL71:
	.loc 1 149 0 discriminator 2
	add.n	a6, a11, a6
.LVL72:
	xor	a9, a9, a7
	xor	a2, a2, a12
	movi.n	a7, 1
	bltu	a6, a11, .L31
	movi.n	a7, 0
.L31:
	l32i.n	a11, sp, 16
.LVL73:
	add.n	a6, a9, a6
	add.n	a5, a11, a5
.LVL74:
	add.n	a5, a7, a5
	movi.n	a7, 1
	bltu	a6, a9, .L32
	movi.n	a7, 0
.L32:
	l32i.n	a12, sp, 52
	add.n	a5, a2, a5
	slli	a9, a12, 31
	srli	a2, a13, 1
	or	a9, a9, a2
	srli	a8, a12, 1
	slli	a2, a13, 31
	or	a2, a2, a8
	add.n	a5, a7, a5
	slli	a8, a12, 24
	srli	a7, a13, 8
	or	a8, a8, a7
	srli	a10, a12, 8
	slli	a7, a13, 24
	or	a7, a7, a10
	xor	a8, a9, a8
	xor	a7, a2, a7
	srli	a9, a13, 7
	slli	a2, a12, 25
	or	a9, a2, a9
	xor	a8, a8, a9
	add.n	a8, a6, a8
	srli	a11, a12, 7
	s32i.n	a8, sp, 16
.LVL75:
	xor	a7, a7, a11
	movi.n	a9, 1
	bltu	a8, a6, .L33
	movi.n	a9, 0
.L33:
	add.n	a7, a5, a7
	l32i.n	a5, sp, 16
	.loc 1 150 0 discriminator 2
	extui	a6, a4, 19, 13
	.loc 1 149 0 discriminator 2
	s32i	a5, a14, 192
	.loc 1 150 0 discriminator 2
	slli	a10, a3, 13
	extui	a5, a3, 19, 13
	slli	a8, a4, 13
	or	a8, a8, a5
	or	a10, a10, a6
	slli	a5, a3, 3
	extui	a6, a4, 29, 3
	.loc 1 149 0 discriminator 2
	add.n	a2, a9, a7
	.loc 1 150 0 discriminator 2
	or	a6, a6, a5
	slli	a9, a4, 3
	extui	a5, a3, 29, 3
	or	a5, a5, a9
	xor	a6, a8, a6
	xor	a10, a10, a5
	slli	a7, a3, 26
	srli	a5, a4, 6
	l32i	a8, sp, 88
	or	a5, a7, a5
	srli	a7, a3, 6
	xor	a7, a6, a7
	.loc 1 149 0 discriminator 2
	s32i	a2, a14, 196
.LVL76:
	.loc 1 150 0 discriminator 2
	add.n	a6, a13, a8
	xor	a5, a10, a5
	movi.n	a9, 1
	bltu	a6, a13, .L34
	movi.n	a9, 0
.L34:
	l32i.n	a10, sp, 52
	add.n	a6, a5, a6
	add.n	a8, a10, a15
	add.n	a8, a9, a8
	movi.n	a9, 1
	bltu	a6, a5, .L35
	movi.n	a9, 0
.L35:
	l32i.n	a12, sp, 56
	l32i.n	a11, sp, 60
	add.n	a7, a7, a8
	slli	a10, a11, 31
	srli	a8, a12, 1
	or	a10, a10, a8
	srli	a5, a11, 1
	slli	a8, a12, 31
	or	a8, a8, a5
	add.n	a7, a9, a7
	slli	a5, a11, 24
	srli	a9, a12, 8
	or	a5, a5, a9
	l32i.n	a13, sp, 60
.LVL77:
	slli	a9, a12, 24
	srli	a11, a11, 8
	or	a9, a9, a11
	xor	a5, a10, a5
	xor	a9, a8, a9
	srli	a10, a12, 7
	slli	a8, a13, 25
	or	a10, a8, a10
	xor	a5, a5, a10
	srli	a12, a13, 7
	add.n	a5, a6, a5
	xor	a9, a9, a12
	movi.n	a10, 1
	bltu	a5, a6, .L36
	movi.n	a10, 0
.L36:
	.loc 1 151 0 discriminator 2
	l32i.n	a15, sp, 16
.LVL78:
	.loc 1 150 0 discriminator 2
	add.n	a9, a7, a9
	.loc 1 151 0 discriminator 2
	extui	a6, a2, 19, 13
	extui	a7, a15, 19, 13
	slli	a12, a2, 13
	slli	a11, a15, 13
	or	a12, a12, a7
	or	a11, a11, a6
	extui	a7, a15, 29, 3
	slli	a6, a2, 3
	.loc 1 150 0 discriminator 2
	add.n	a8, a10, a9
	.loc 1 151 0 discriminator 2
	or	a7, a7, a6
	slli	a9, a15, 3
	extui	a6, a2, 29, 3
	or	a6, a6, a9
	xor	a11, a11, a7
	xor	a12, a12, a6
	slli	a7, a2, 26
	srli	a10, a2, 6
	srli	a6, a15, 6
	or	a6, a7, a6
	xor	a7, a11, a10
	l32i	a11, sp, 92
	l32i.n	a10, sp, 56
	.loc 1 150 0 discriminator 2
	s32i	a5, a14, 200
	.loc 1 151 0 discriminator 2
	add.n	a9, a10, a11
	.loc 1 150 0 discriminator 2
	s32i	a8, a14, 204
.LVL79:
	.loc 1 151 0 discriminator 2
	xor	a6, a12, a6
	movi.n	a11, 1
	bltu	a9, a10, .L37
	movi.n	a11, 0
.L37:
	l32i.n	a12, sp, 60
	l32i.n	a13, sp, 28
	add.n	a9, a6, a9
	add.n	a10, a12, a13
	add.n	a10, a11, a10
	movi.n	a11, 1
	bltu	a9, a6, .L38
	movi.n	a11, 0
.L38:
	l32i	a15, sp, 68
	l32i	a6, sp, 64
	l32i	a13, sp, 64
	add.n	a10, a7, a10
	slli	a12, a15, 31
	srli	a7, a6, 1
	or	a12, a12, a7
	slli	a7, a6, 31
	srli	a6, a15, 1
	or	a7, a7, a6
	add.n	a10, a11, a10
	slli	a6, a15, 24
	srli	a11, a13, 8
	or	a6, a6, a11
	slli	a11, a13, 24
	srli	a13, a15, 8
	or	a11, a11, a13
	xor	a11, a7, a11
	slli	a7, a15, 25
	l32i	a15, sp, 64
	xor	a6, a12, a6
	srli	a12, a15, 7
	or	a12, a7, a12
	l32i	a13, sp, 68
	xor	a6, a6, a12
	srli	a15, a13, 7
	add.n	a6, a9, a6
	xor	a11, a11, a15
	movi.n	a12, 1
	bltu	a6, a9, .L39
	movi.n	a12, 0
.L39:
	add.n	a11, a10, a11
	add.n	a7, a12, a11
	.loc 1 152 0 discriminator 2
	extui	a9, a5, 19, 13
	slli	a12, a8, 13
	or	a12, a12, a9
	slli	a11, a5, 13
	extui	a9, a8, 19, 13
	or	a11, a11, a9
	extui	a10, a5, 29, 3
	slli	a9, a8, 3
	extui	a13, a8, 29, 3
	or	a9, a10, a9
	slli	a10, a5, 3
	or	a10, a13, a10
	xor	a9, a11, a9
	srli	a5, a5, 6
	slli	a11, a8, 26
	xor	a10, a12, a10
	or	a5, a11, a5
	xor	a13, a10, a5
	l32i	a15, sp, 64
	l32i	a5, sp, 96
	srli	a8, a8, 6
	add.n	a10, a15, a5
	.loc 1 151 0 discriminator 2
	s32i	a6, a14, 208
	s32i	a7, a14, 212
.LVL80:
	.loc 1 152 0 discriminator 2
	xor	a9, a9, a8
	movi.n	a5, 1
	bltu	a10, a15, .L40
	movi.n	a5, 0
.L40:
	l32i	a11, sp, 68
	l32i.n	a12, sp, 36
	add.n	a10, a13, a10
	add.n	a8, a11, a12
	add.n	a8, a5, a8
	movi.n	a5, 1
	bltu	a10, a13, .L41
	movi.n	a5, 0
.L41:
	l32i	a15, sp, 72
	l32i	a13, sp, 76
	add.n	a8, a9, a8
	slli	a12, a13, 31
	srli	a9, a15, 1
	or	a12, a12, a9
	add.n	a8, a5, a8
	slli	a9, a15, 31
	srli	a5, a13, 1
	or	a9, a9, a5
	srli	a11, a15, 8
	slli	a5, a13, 24
	or	a5, a5, a11
	srli	a13, a13, 8
	slli	a11, a15, 24
	xor	a5, a12, a5
	l32i	a12, sp, 76
	or	a11, a11, a13
	xor	a11, a9, a11
	slli	a9, a12, 25
	srli	a12, a15, 7
	or	a12, a9, a12
	l32i	a13, sp, 76
	xor	a5, a5, a12
	srli	a15, a13, 7
	add.n	a5, a10, a5
	xor	a11, a11, a15
	movi.n	a12, 1
	bltu	a5, a10, .L42
	movi.n	a12, 0
.L42:
	add.n	a11, a8, a11
	add.n	a9, a12, a11
	.loc 1 153 0 discriminator 2
	extui	a8, a6, 19, 13
	slli	a12, a7, 13
	or	a12, a12, a8
	slli	a11, a6, 13
	extui	a8, a7, 19, 13
	or	a11, a11, a8
	extui	a10, a6, 29, 3
	slli	a8, a7, 3
	extui	a13, a7, 29, 3
	or	a8, a10, a8
	slli	a10, a6, 3
	or	a10, a13, a10
	xor	a8, a11, a8
	srli	a6, a6, 6
	slli	a11, a7, 26
	xor	a10, a12, a10
	or	a6, a11, a6
	xor	a13, a10, a6
	l32i	a15, sp, 72
	l32i	a6, sp, 100
	srli	a7, a7, 6
	add.n	a10, a15, a6
	.loc 1 152 0 discriminator 2
	s32i	a5, a14, 216
	s32i	a9, a14, 220
.LVL81:
	.loc 1 153 0 discriminator 2
	xor	a8, a8, a7
	movi.n	a6, 1
	bltu	a10, a15, .L43
	movi.n	a6, 0
.L43:
	l32i	a11, sp, 76
	l32i.n	a12, sp, 40
	add.n	a10, a13, a10
	add.n	a7, a11, a12
	add.n	a7, a6, a7
	movi.n	a6, 1
	bltu	a10, a13, .L44
	movi.n	a6, 0
.L44:
	l32i	a15, sp, 80
	l32i	a13, sp, 84
	add.n	a7, a8, a7
	slli	a12, a13, 31
	srli	a8, a15, 1
	or	a12, a12, a8
	add.n	a7, a6, a7
	slli	a8, a15, 31
	srli	a6, a13, 1
	or	a8, a8, a6
	srli	a11, a15, 8
	slli	a6, a13, 24
	or	a6, a6, a11
	srli	a13, a13, 8
	slli	a11, a15, 24
	xor	a6, a12, a6
	l32i	a12, sp, 84
	or	a11, a11, a13
	xor	a11, a8, a11
	slli	a8, a12, 25
	srli	a12, a15, 7
	or	a12, a8, a12
	l32i	a13, sp, 84
	xor	a6, a6, a12
	srli	a15, a13, 7
	add.n	a6, a10, a6
	xor	a11, a11, a15
	movi.n	a12, 1
	bltu	a6, a10, .L45
	movi.n	a12, 0
.L45:
	add.n	a11, a7, a11
	add.n	a8, a12, a11
	.loc 1 154 0 discriminator 2
	extui	a7, a5, 19, 13
	slli	a12, a9, 13
	or	a12, a12, a7
	slli	a11, a5, 13
	extui	a7, a9, 19, 13
	or	a11, a11, a7
	extui	a10, a5, 29, 3
	slli	a7, a9, 3
	or	a7, a10, a7
	extui	a13, a9, 29, 3
	slli	a10, a5, 3
	xor	a7, a11, a7
	slli	a11, a9, 26
	srli	a9, a9, 6
	or	a10, a13, a10
	srli	a5, a5, 6
	xor	a7, a7, a9
	l32i	a15, sp, 80
	l32i	a9, sp, 104
	xor	a10, a12, a10
	or	a5, a11, a5
	xor	a5, a10, a5
	.loc 1 153 0 discriminator 2
	s32i	a6, a14, 224
	s32i	a8, a14, 228
.LVL82:
	.loc 1 154 0 discriminator 2
	add.n	a10, a15, a9
	movi.n	a11, 1
	bltu	a10, a15, .L46
	movi.n	a11, 0
.L46:
	l32i	a12, sp, 84
	l32i.n	a13, sp, 44
	add.n	a10, a5, a10
	add.n	a9, a12, a13
	add.n	a9, a11, a9
	movi.n	a11, 1
	bltu	a10, a5, .L47
	movi.n	a11, 0
.L47:
	l32i.n	a15, sp, 24
	l32i.n	a5, sp, 20
	l32i.n	a13, sp, 20
	add.n	a9, a7, a9
	slli	a12, a15, 31
	srli	a7, a5, 1
	or	a12, a12, a7
	slli	a7, a5, 31
	srli	a5, a15, 1
	or	a7, a7, a5
	add.n	a9, a11, a9
	slli	a5, a15, 24
	srli	a11, a13, 8
	or	a5, a5, a11
	slli	a11, a13, 24
	srli	a13, a15, 8
	or	a11, a11, a13
	xor	a11, a7, a11
	slli	a7, a15, 25
	l32i.n	a15, sp, 20
	xor	a5, a12, a5
	srli	a12, a15, 7
	or	a12, a7, a12
	l32i.n	a13, sp, 24
	xor	a5, a5, a12
	srli	a15, a13, 7
	add.n	a5, a10, a5
	xor	a11, a11, a15
	movi.n	a12, 1
	bltu	a5, a10, .L48
	movi.n	a12, 0
.L48:
	add.n	a11, a9, a11
	add.n	a7, a12, a11
	.loc 1 155 0 discriminator 2
	extui	a9, a6, 19, 13
	slli	a12, a8, 13
	or	a12, a12, a9
	slli	a11, a6, 13
	extui	a9, a8, 19, 13
	or	a11, a11, a9
	extui	a10, a6, 29, 3
	slli	a9, a8, 3
	or	a9, a10, a9
	extui	a13, a8, 29, 3
	slli	a10, a6, 3
	l32i.n	a15, sp, 20
	xor	a9, a11, a9
	or	a10, a13, a10
	slli	a11, a8, 26
	srli	a6, a6, 6
	or	a6, a11, a6
	xor	a10, a12, a10
	srli	a8, a8, 6
	.loc 1 154 0 discriminator 2
	s32i	a5, a14, 232
	s32i	a7, a14, 236
.LVL83:
	.loc 1 155 0 discriminator 2
	add.n	a4, a15, a4
.LVL84:
	xor	a10, a10, a6
	xor	a9, a9, a8
	movi.n	a6, 1
	bltu	a4, a15, .L49
	movi.n	a6, 0
.L49:
	l32i.n	a8, sp, 24
	add.n	a4, a10, a4
	add.n	a3, a8, a3
.LVL85:
	add.n	a3, a6, a3
	movi.n	a6, 1
	bltu	a4, a10, .L50
	movi.n	a6, 0
.L50:
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 8
	add.n	a9, a9, a3
	slli	a10, a11, 31
	srli	a3, a12, 1
	slli	a8, a12, 31
	add.n	a9, a6, a9
	srli	a6, a11, 1
	or	a10, a10, a3
	or	a8, a8, a6
	srli	a3, a12, 8
	slli	a6, a11, 24
	or	a6, a6, a3
	l32i.n	a13, sp, 8
	slli	a3, a12, 24
	srli	a11, a11, 8
	or	a3, a3, a11
	xor	a6, a10, a6
	xor	a3, a8, a3
	srli	a10, a12, 7
	slli	a8, a13, 25
	or	a10, a8, a10
	xor	a6, a6, a10
	srli	a12, a13, 7
	add.n	a6, a4, a6
	xor	a3, a3, a12
	movi.n	a10, 1
	bltu	a6, a4, .L51
	movi.n	a10, 0
.L51:
	add.n	a3, a9, a3
	add.n	a3, a10, a3
	.loc 1 156 0 discriminator 2
	slli	a8, a7, 13
	.loc 1 155 0 discriminator 2
	s32i	a3, a14, 244
.LVL86:
	.loc 1 156 0 discriminator 2
	extui	a3, a5, 19, 13
	or	a8, a8, a3
	.loc 1 155 0 discriminator 2
	s32i	a6, a14, 240
	.loc 1 156 0 discriminator 2
	extui	a3, a7, 19, 13
	slli	a6, a5, 13
	or	a6, a6, a3
	extui	a4, a5, 29, 3
	slli	a3, a7, 3
	or	a3, a4, a3
	extui	a9, a7, 29, 3
	slli	a4, a5, 3
	xor	a3, a6, a3
	or	a4, a9, a4
	slli	a6, a7, 26
	srli	a5, a5, 6
.LVL87:
	or	a5, a6, a5
	xor	a4, a8, a4
	xor	a4, a4, a5
	l32i.n	a15, sp, 4
	l32i.n	a5, sp, 16
	srli	a7, a7, 6
.LVL88:
	add.n	a6, a15, a5
	xor	a3, a3, a7
	movi.n	a5, 1
	bltu	a6, a15, .L52
	movi.n	a5, 0
.L52:
	l32i.n	a8, sp, 8
	add.n	a9, a4, a6
	add.n	a2, a8, a2
.LVL89:
	add.n	a2, a5, a2
	movi.n	a5, 1
	bltu	a9, a4, .L53
	movi.n	a5, 0
.L53:
	l32i.n	a10, sp, 32
	l32i.n	a11, sp, 12
	add.n	a3, a3, a2
	slli	a6, a10, 31
	srli	a2, a11, 1
	or	a6, a6, a2
	add.n	a3, a5, a3
	srli	a2, a10, 1
	slli	a5, a11, 31
	or	a5, a5, a2
	slli	a4, a10, 24
	srli	a2, a11, 8
	or	a4, a4, a2
	slli	a7, a11, 24
	srli	a2, a10, 8
	or	a2, a7, a2
	xor	a2, a5, a2
	srli	a8, a11, 7
	slli	a5, a10, 25
	or	a8, a5, a8
	xor	a4, a6, a4
	xor	a8, a4, a8
	srli	a5, a10, 7
	add.n	a8, a9, a8
	xor	a5, a2, a5
	movi.n	a7, 1
	bltu	a8, a9, .L54
	movi.n	a7, 0
.L54:
	.loc 1 121 0 discriminator 2
	l32i	a12, sp, 108
	.loc 1 156 0 discriminator 2
	add.n	a3, a3, a5
	add.n	a3, a7, a3
	.loc 1 121 0 discriminator 2
	addi	a12, a12, 16
	movi	a13, 0x80
	.loc 1 156 0 discriminator 2
	s32i	a8, a14, 248
	s32i	a3, a14, 252
	.loc 1 121 0 discriminator 2
	s32i	a12, sp, 108
.LVL90:
	add.n	a14, a14, a13
.LVL91:
.L6:
	.loc 1 122 0 discriminator 1
	l32i.n	a2, sp, 0
	l32i.n	a3, a2, 36
	l32i.n	a15, a2, 32
	l32i.n	a5, a2, 44
	l32i.n	a8, a2, 52
	s32i.n	a3, sp, 4
.LVL92:
	l32i.n	a9, sp, 4
	l32i.n	a4, a2, 40
	l32i.n	a6, a2, 48
	slli	a7, a3, 18
	srli	a2, a15, 14
	s32i.n	a5, sp, 44
	s32i.n	a8, sp, 20
	slli	a5, a15, 18
	or	a8, a7, a2
	srli	a2, a3, 14
	or	a5, a5, a2
	s32i.n	a4, sp, 16
	extui	a2, a15, 18, 14
	slli	a4, a3, 14
	extui	a7, a9, 18, 14
	slli	a3, a15, 14
.LVL93:
	or	a4, a4, a2
	or	a2, a3, a7
	xor	a3, a5, a2
	l32i.n	a10, sp, 16
	srli	a5, a15, 9
	slli	a2, a9, 23
	xor	a7, a8, a4
	or	a2, a5, a2
	srli	a4, a9, 9
	slli	a5, a15, 23
	or	a4, a4, a5
	l32i.n	a12, sp, 20
	xor	a5, a3, a2
	l32i.n	a11, sp, 44
	xor	a3, a10, a6
	and	a3, a3, a15
	xor	a4, a7, a4
	xor	a2, a11, a12
	xor	a3, a3, a6
	and	a2, a2, a9
	add.n	a3, a4, a3
	xor	a2, a2, a12
	movi.n	a7, 1
	bltu	a3, a4, .L55
	movi.n	a7, 0
.L55:
	l32i.n	a13, sp, 0
	add.n	a2, a5, a2
	l32i.n	a8, a13, 56
	add.n	a2, a7, a2
	add.n	a8, a3, a8
	l32i.n	a5, a13, 60
	movi.n	a4, 1
	bltu	a8, a3, .L56
	movi.n	a4, 0
.L56:
	l32i.n	a7, a14, 0
	add.n	a2, a2, a5
	add.n	a7, a8, a7
	add.n	a2, a4, a2
	movi.n	a9, 1
.LVL94:
	l32i.n	a4, a14, 4
	bltu	a7, a8, .L57
	movi.n	a9, 0
.L57:
	l32i.n	a3, sp, 48
	add.n	a4, a2, a4
	l32i.n	a2, a3, 0
	add.n	a4, a9, a4
	add.n	a2, a7, a2
	l32i.n	a3, a3, 4
	movi.n	a8, 1
	bltu	a2, a7, .L58
	movi.n	a8, 0
.L58:
	add.n	a5, a4, a3
	add.n	a5, a8, a5
	l32i.n	a8, sp, 0
	movi.n	a7, 1
	l32i.n	a4, a8, 24
	l32i.n	a3, a8, 28
	add.n	a4, a2, a4
	s32i.n	a4, sp, 8
	bltu	a4, a2, .L59
	movi.n	a7, 0
.L59:
	l32i.n	a9, sp, 0
	add.n	a3, a5, a3
	add.n	a3, a7, a3
	l32i.n	a4, a9, 0
	s32i.n	a3, a9, 28
	s32i.n	a3, sp, 28
	l32i.n	a3, a9, 4
.LVL95:
	l32i.n	a11, a9, 8
	extui	a7, a4, 28, 4
	slli	a13, a3, 4
	s32i.n	a11, sp, 24
	l32i.n	a12, a9, 12
	l32i.n	a10, sp, 8
	or	a13, a13, a7
	slli	a11, a4, 4
	extui	a7, a3, 28, 4
	or	a11, a11, a7
	srli	a8, a4, 2
	slli	a7, a3, 30
	s32i.n	a12, sp, 40
	or	a7, a8, a7
	l32i.n	a12, a9, 16
	s32i.n	a10, a9, 24
	slli	a8, a4, 30
	l32i.n	a10, a9, 20
	srli	a9, a3, 2
	or	a9, a9, a8
	xor	a8, a11, a7
	slli	a7, a3, 25
	srli	a11, a4, 7
	xor	a13, a13, a9
	or	a11, a11, a7
	srli	a9, a3, 7
	slli	a7, a4, 25
	or	a9, a9, a7
	xor	a9, a13, a9
	l32i.n	a13, sp, 24
	xor	a11, a8, a11
	or	a7, a13, a12
	s32i.n	a11, sp, 12
	and	a11, a7, a4
	l32i.n	a8, sp, 40
	s32i.n	a11, sp, 32
	l32i.n	a11, sp, 24
	or	a13, a8, a10
	and	a8, a11, a12
	l32i.n	a11, sp, 40
	and	a13, a13, a3
	and	a7, a11, a10
	l32i.n	a11, sp, 32
	or	a7, a13, a7
	or	a8, a11, a8
	add.n	a8, a9, a8
	movi.n	a13, 1
	bltu	a8, a9, .L60
	movi.n	a13, 0
.L60:
	l32i.n	a9, sp, 12
	add.n	a2, a8, a2
	add.n	a7, a9, a7
	add.n	a7, a13, a7
	movi.n	a9, 1
	bltu	a2, a8, .L61
	movi.n	a9, 0
.L61:
	add.n	a7, a7, a5
	l32i.n	a13, sp, 0
	add.n	a9, a9, a7
	.loc 1 123 0 discriminator 1
	l32i.n	a5, sp, 48
	.loc 1 122 0 discriminator 1
	s32i.n	a9, a13, 60
	s32i.n	a2, a13, 56
	.loc 1 123 0 discriminator 1
	l32i.n	a8, a5, 8
	l32i.n	a11, a14, 8
	.loc 1 122 0 discriminator 1
	s32i.n	a9, sp, 32
.LVL96:
	.loc 1 123 0 discriminator 1
	add.n	a8, a11, a8
	l32i.n	a7, a14, 12
	l32i.n	a5, a5, 12
	movi.n	a9, 1
	bltu	a8, a11, .L62
	movi.n	a9, 0
.L62:
	add.n	a7, a7, a5
	add.n	a6, a8, a6
	add.n	a7, a9, a7
	movi.n	a9, 1
	bltu	a6, a8, .L63
	movi.n	a9, 0
.L63:
	l32i.n	a8, sp, 20
	l32i.n	a11, sp, 4
	add.n	a7, a7, a8
	add.n	a7, a9, a7
	l32i.n	a9, sp, 16
	l32i.n	a13, sp, 44
	xor	a8, a15, a9
	l32i.n	a9, sp, 8
	xor	a5, a11, a13
	l32i.n	a13, sp, 16
	and	a8, a8, a9
	l32i.n	a11, sp, 28
	l32i.n	a9, sp, 44
	xor	a8, a8, a13
	and	a5, a5, a11
	add.n	a8, a6, a8
	xor	a5, a5, a9
	movi.n	a9, 1
	bltu	a8, a6, .L64
	movi.n	a9, 0
.L64:
	add.n	a7, a7, a5
	l32i.n	a11, sp, 28
	l32i.n	a5, sp, 8
	slli	a13, a11, 18
	srli	a6, a5, 14
	add.n	a7, a9, a7
	or	a9, a13, a6
	l32i.n	a13, sp, 28
	slli	a11, a5, 18
	srli	a6, a13, 14
	or	a6, a11, a6
	slli	a13, a13, 14
	extui	a5, a5, 18, 14
	s32i.n	a6, sp, 20
	l32i.n	a11, sp, 8
	or	a6, a13, a5
	l32i.n	a13, sp, 28
	slli	a5, a11, 14
	extui	a11, a13, 18, 14
	xor	a13, a9, a6
	l32i.n	a6, sp, 20
	or	a5, a5, a11
	l32i.n	a9, sp, 8
	l32i.n	a11, sp, 28
	xor	a5, a6, a5
	s32i.n	a5, sp, 12
	slli	a6, a11, 23
	srli	a5, a9, 9
	or	a5, a5, a6
	slli	a9, a9, 23
	srli	a6, a11, 9
	or	a6, a6, a9
	xor	a6, a13, a6
	l32i.n	a13, sp, 12
	add.n	a6, a8, a6
	xor	a5, a13, a5
	movi.n	a9, 1
	bltu	a6, a8, .L65
	movi.n	a9, 0
.L65:
	add.n	a7, a7, a5
	add.n	a5, a12, a6
	s32i.n	a5, sp, 12
	l32i.n	a8, sp, 12
	add.n	a7, a9, a7
	movi.n	a5, 1
	bltu	a8, a12, .L66
	movi.n	a5, 0
.L66:
	add.n	a10, a10, a7
	add.n	a10, a5, a10
	l32i.n	a9, sp, 0
	s32i.n	a10, sp, 36
	l32i.n	a12, sp, 32
	l32i.n	a10, sp, 12
	l32i.n	a13, sp, 32
	s32i.n	a10, a9, 16
	l32i.n	a11, sp, 36
	slli	a10, a12, 4
	extui	a8, a2, 28, 4
	or	a12, a10, a8
	extui	a5, a13, 28, 4
	slli	a8, a2, 4
	s32i.n	a11, a9, 20
.LVL97:
	or	a11, a8, a5
	slli	a5, a13, 30
	srli	a8, a2, 2
	or	a8, a8, a5
	slli	a9, a2, 30
	srli	a5, a13, 2
	or	a5, a5, a9
	xor	a10, a12, a5
	srli	a9, a2, 7
	slli	a5, a13, 25
	xor	a8, a11, a8
	or	a9, a9, a5
	slli	a11, a2, 25
	srli	a5, a13, 7
	or	a5, a5, a11
	xor	a5, a10, a5
	xor	a9, a8, a9
	l32i.n	a10, sp, 40
	l32i.n	a8, sp, 24
	or	a11, a3, a10
	or	a12, a4, a8
	and	a12, a12, a2
	and	a11, a11, a13
	and	a10, a4, a8
	l32i.n	a13, sp, 40
	or	a10, a12, a10
	and	a8, a3, a13
	add.n	a10, a5, a10
	or	a11, a11, a8
	movi.n	a12, 1
	bltu	a10, a5, .L67
	movi.n	a12, 0
.L67:
	add.n	a11, a9, a11
	add.n	a6, a10, a6
	add.n	a11, a12, a11
	movi.n	a12, 1
	bltu	a6, a10, .L68
	movi.n	a12, 0
.L68:
	l32i.n	a5, sp, 0
	add.n	a11, a11, a7
	add.n	a11, a12, a11
	.loc 1 124 0 discriminator 1
	l32i.n	a10, sp, 48
	.loc 1 123 0 discriminator 1
	s32i.n	a6, a5, 48
	s32i.n	a11, a5, 52
	.loc 1 124 0 discriminator 1
	l32i.n	a9, a10, 16
	.loc 1 123 0 discriminator 1
	s32i.n	a11, sp, 20
.LVL98:
	.loc 1 124 0 discriminator 1
	l32i.n	a11, a14, 16
	l32i.n	a5, a10, 20
	add.n	a9, a11, a9
	l32i.n	a8, a14, 20
	movi.n	a10, 1
	bltu	a9, a11, .L69
	movi.n	a10, 0
.L69:
	l32i.n	a11, sp, 16
	add.n	a8, a8, a5
	add.n	a8, a10, a8
	add.n	a10, a9, a11
	movi.n	a7, 1
	bltu	a10, a9, .L70
	movi.n	a7, 0
.L70:
	l32i.n	a12, sp, 44
	l32i.n	a13, sp, 8
	add.n	a5, a8, a12
	xor	a9, a15, a13
	l32i.n	a11, sp, 4
	l32i.n	a12, sp, 28
	l32i.n	a13, sp, 12
	xor	a8, a11, a12
	and	a9, a9, a13
	l32i.n	a11, sp, 36
	xor	a9, a9, a15
	l32i.n	a12, sp, 4
	and	a8, a8, a11
	add.n	a9, a10, a9
	add.n	a5, a7, a5
	xor	a8, a8, a12
	movi.n	a7, 1
	bltu	a9, a10, .L71
	movi.n	a7, 0
.L71:
	l32i.n	a13, sp, 36
	add.n	a8, a5, a8
	l32i.n	a5, sp, 12
	l32i.n	a10, sp, 12
	slli	a12, a13, 18
	slli	a11, a5, 18
	add.n	a8, a7, a8
	srli	a7, a5, 14
	srli	a5, a13, 14
	or	a12, a12, a7
	or	a11, a11, a5
	extui	a7, a10, 18, 14
	slli	a5, a13, 14
	or	a5, a5, a7
	extui	a13, a13, 18, 14
	slli	a7, a10, 14
	or	a7, a7, a13
	xor	a7, a11, a7
	l32i.n	a13, sp, 36
	l32i.n	a11, sp, 12
	xor	a5, a12, a5
	srli	a10, a11, 9
	slli	a12, a13, 23
	or	a10, a10, a12
	slli	a11, a11, 23
	srli	a12, a13, 9
	or	a12, a12, a11
	xor	a5, a5, a12
	add.n	a5, a9, a5
	xor	a7, a7, a10
	movi.n	a12, 1
	bltu	a5, a9, .L72
	movi.n	a12, 0
.L72:
	add.n	a7, a8, a7
	l32i.n	a8, sp, 24
	l32i.n	a10, sp, 24
	add.n	a8, a8, a5
	s32i.n	a8, sp, 16
	add.n	a7, a12, a7
	movi.n	a9, 1
	bltu	a8, a10, .L73
	movi.n	a9, 0
.L73:
	l32i.n	a11, sp, 40
	l32i.n	a10, sp, 20
	add.n	a8, a11, a7
	add.n	a8, a9, a8
	s32i.n	a8, sp, 40
	l32i.n	a13, sp, 0
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 40
	s32i.n	a8, a13, 8
	s32i.n	a9, a13, 12
.LVL99:
	extui	a8, a6, 28, 4
	slli	a9, a10, 4
	or	a13, a9, a8
	extui	a9, a10, 28, 4
	slli	a8, a6, 4
	or	a12, a8, a9
	slli	a9, a10, 30
	srli	a8, a6, 2
	or	a8, a8, a9
	xor	a8, a12, a8
	slli	a11, a6, 30
	l32i.n	a12, sp, 20
	srli	a10, a10, 2
	or	a10, a10, a11
	xor	a9, a13, a10
	srli	a11, a6, 7
	slli	a10, a12, 25
	or	a11, a11, a10
	srli	a10, a12, 7
	slli	a12, a6, 25
	or	a10, a10, a12
	xor	a11, a8, a11
	l32i.n	a8, sp, 32
	xor	a10, a9, a10
	l32i.n	a9, sp, 20
	or	a12, a3, a8
	or	a13, a4, a2
	and	a13, a13, a6
	and	a12, a12, a9
	and	a9, a4, a2
	or	a9, a13, a9
	and	a8, a3, a8
	s32i.n	a11, sp, 24
	add.n	a9, a10, a9
	or	a12, a12, a8
	movi.n	a13, 1
	bltu	a9, a10, .L74
	movi.n	a13, 0
.L74:
	l32i.n	a10, sp, 24
	add.n	a5, a9, a5
	add.n	a12, a10, a12
	add.n	a12, a13, a12
	movi.n	a10, 1
	bltu	a5, a9, .L75
	movi.n	a10, 0
.L75:
	add.n	a12, a12, a7
	l32i.n	a13, sp, 0
	add.n	a12, a10, a12
	.loc 1 125 0 discriminator 1
	l32i.n	a11, sp, 48
	.loc 1 124 0 discriminator 1
	s32i.n	a5, a13, 40
	s32i.n	a12, a13, 44
	.loc 1 125 0 discriminator 1
	l32i.n	a10, a11, 24
	l32i.n	a8, a14, 24
	.loc 1 124 0 discriminator 1
	s32i.n	a12, sp, 24
.LVL100:
	.loc 1 125 0 discriminator 1
	add.n	a10, a8, a10
	l32i.n	a7, a11, 28
	l32i.n	a9, a14, 28
	movi.n	a11, 1
	bltu	a10, a8, .L76
	movi.n	a11, 0
.L76:
	add.n	a9, a9, a7
	add.n	a15, a10, a15
.LVL101:
	add.n	a9, a11, a9
	movi.n	a11, 1
	bltu	a15, a10, .L77
	movi.n	a11, 0
.L77:
	l32i.n	a12, sp, 4
	l32i.n	a13, sp, 8
	add.n	a9, a9, a12
	l32i.n	a8, sp, 12
	l32i.n	a12, sp, 36
	add.n	a9, a11, a9
	l32i.n	a11, sp, 28
	xor	a10, a13, a8
	l32i.n	a13, sp, 16
	xor	a8, a11, a12
	l32i.n	a12, sp, 8
	and	a10, a10, a13
	l32i.n	a11, sp, 40
	xor	a10, a10, a12
	l32i.n	a13, sp, 28
	and	a8, a8, a11
	add.n	a10, a15, a10
	xor	a8, a8, a13
	movi.n	a7, 1
	bltu	a10, a15, .L78
	movi.n	a7, 0
.L78:
	l32i.n	a15, sp, 40
	l32i.n	a11, sp, 16
	slli	a12, a15, 18
	add.n	a9, a9, a8
	srli	a8, a11, 14
	or	a8, a12, a8
	slli	a11, a11, 18
	slli	a12, a15, 14
	add.n	a9, a7, a9
	srli	a7, a15, 14
	l32i.n	a15, sp, 16
	or	a13, a11, a7
	l32i.n	a11, sp, 40
	s32i.n	a8, sp, 4
	extui	a8, a15, 18, 14
	or	a7, a12, a8
	slli	a8, a15, 14
	extui	a15, a11, 18, 14
	or	a8, a8, a15
	l32i.n	a15, sp, 4
	xor	a11, a13, a8
	xor	a12, a15, a7
	l32i.n	a13, sp, 16
	l32i.n	a15, sp, 40
	srli	a8, a13, 9
	slli	a7, a15, 23
	srli	a13, a15, 9
	l32i.n	a15, sp, 16
	or	a8, a8, a7
	slli	a7, a15, 23
	or	a7, a13, a7
	xor	a12, a12, a7
	add.n	a12, a10, a12
	xor	a8, a11, a8
	movi.n	a7, 1
	bltu	a12, a10, .L79
	movi.n	a7, 0
.L79:
	add.n	a9, a9, a8
	add.n	a15, a4, a12
	add.n	a9, a7, a9
	movi.n	a7, 1
	bltu	a15, a4, .L80
	movi.n	a7, 0
.L80:
	l32i.n	a8, sp, 0
	l32i.n	a10, sp, 24
	add.n	a3, a3, a9
.LVL102:
	l32i.n	a13, sp, 24
	add.n	a3, a7, a3
	slli	a4, a10, 4
	s32i.n	a3, a8, 4
	s32i.n	a3, sp, 44
.LVL103:
	extui	a3, a5, 28, 4
	or	a11, a4, a3
	srli	a7, a13, 2
	slli	a3, a5, 4
	extui	a4, a10, 28, 4
	s32i.n	a15, a8, 0
	slli	a8, a5, 30
	or	a10, a3, a4
	or	a7, a7, a8
	slli	a4, a13, 30
	srli	a3, a5, 2
	or	a3, a3, a4
	srli	a8, a5, 7
	xor	a4, a11, a7
	slli	a7, a13, 25
	xor	a3, a10, a3
	or	a8, a8, a7
	slli	a10, a5, 25
	srli	a7, a13, 7
	or	a7, a7, a10
	xor	a8, a3, a8
	xor	a7, a4, a7
	l32i.n	a3, sp, 32
	l32i.n	a4, sp, 20
	or	a11, a2, a6
	or	a10, a3, a4
	s32i.n	a8, sp, 4
	and	a11, a11, a5
	and	a4, a2, a6
	l32i.n	a8, sp, 20
	or	a4, a11, a4
	and	a10, a10, a13
	and	a3, a3, a8
	add.n	a4, a7, a4
	or	a10, a10, a3
	movi.n	a13, 1
	bltu	a4, a7, .L81
	movi.n	a13, 0
.L81:
	l32i.n	a11, sp, 4
	add.n	a12, a4, a12
	add.n	a10, a11, a10
	add.n	a10, a13, a10
	movi.n	a7, 1
	bltu	a12, a4, .L82
	movi.n	a7, 0
.L82:
	add.n	a10, a10, a9
	l32i.n	a13, sp, 0
	add.n	a10, a7, a10
	.loc 1 126 0 discriminator 1
	l32i.n	a3, sp, 48
	.loc 1 125 0 discriminator 1
	s32i.n	a12, a13, 32
	s32i.n	a10, a13, 36
	.loc 1 126 0 discriminator 1
	l32i.n	a8, a3, 32
	l32i.n	a4, a14, 32
	.loc 1 125 0 discriminator 1
	s32i.n	a10, sp, 4
.LVL104:
	.loc 1 126 0 discriminator 1
	add.n	a8, a4, a8
	l32i.n	a7, a14, 36
	l32i.n	a3, a3, 36
	movi.n	a9, 1
	bltu	a8, a4, .L83
	movi.n	a9, 0
.L83:
	l32i.n	a4, sp, 8
	add.n	a7, a7, a3
	add.n	a7, a9, a7
	add.n	a9, a8, a4
	movi.n	a4, 1
	bltu	a9, a8, .L84
	movi.n	a4, 0
.L84:
	l32i.n	a8, sp, 28
	l32i.n	a10, sp, 12
	l32i.n	a11, sp, 16
	add.n	a3, a7, a8
	l32i.n	a13, sp, 36
	xor	a8, a10, a11
	add.n	a3, a4, a3
	l32i.n	a11, sp, 12
	l32i.n	a4, sp, 40
	l32i.n	a10, sp, 44
	and	a8, a8, a15
	xor	a7, a13, a4
	xor	a8, a8, a11
	and	a7, a7, a10
	add.n	a8, a9, a8
	xor	a4, a7, a13
	movi.n	a10, 1
	bltu	a8, a9, .L85
	movi.n	a10, 0
.L85:
	l32i.n	a13, sp, 44
	add.n	a7, a3, a4
	add.n	a7, a10, a7
	srli	a4, a15, 14
	slli	a10, a13, 18
	or	a13, a10, a4
	l32i.n	a4, sp, 44
	slli	a9, a15, 18
	srli	a3, a4, 14
	slli	a10, a4, 14
	extui	a4, a15, 18, 14
	or	a11, a9, a3
	or	a3, a10, a4
	l32i.n	a10, sp, 44
	slli	a4, a15, 14
	extui	a9, a10, 18, 14
	or	a4, a4, a9
	xor	a9, a11, a4
	l32i.n	a11, sp, 44
	xor	a10, a13, a3
	srli	a4, a15, 9
	slli	a3, a11, 23
	or	a4, a4, a3
	srli	a11, a11, 9
	slli	a3, a15, 23
	or	a3, a11, a3
	xor	a10, a10, a3
	add.n	a10, a8, a10
	xor	a9, a9, a4
	movi.n	a3, 1
	bltu	a10, a8, .L86
	movi.n	a3, 0
.L86:
	add.n	a13, a2, a10
	add.n	a4, a7, a9
	s32i.n	a13, sp, 28
.LVL105:
	add.n	a4, a3, a4
	movi.n	a3, 1
	bltu	a13, a2, .L87
	movi.n	a3, 0
.L87:
	l32i.n	a2, sp, 32
.LVL106:
	l32i.n	a13, sp, 4
	add.n	a9, a2, a4
	add.n	a9, a3, a9
	s32i.n	a9, sp, 52
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 28
	l32i.n	a11, sp, 52
	slli	a3, a13, 4
	extui	a2, a12, 28, 4
	s32i.n	a9, a8, 56
	s32i.n	a11, a8, 60
.LVL107:
	srli	a7, a13, 2
	or	a11, a3, a2
	slli	a8, a12, 30
	slli	a2, a12, 4
	extui	a3, a13, 28, 4
	or	a9, a2, a3
	or	a7, a7, a8
	slli	a3, a13, 30
	srli	a2, a12, 2
	or	a2, a2, a3
	srli	a8, a12, 7
	xor	a3, a11, a7
	slli	a7, a13, 25
	xor	a2, a9, a2
	or	a8, a8, a7
	slli	a9, a12, 25
	srli	a7, a13, 7
	or	a7, a7, a9
	xor	a8, a2, a8
	xor	a7, a3, a7
	l32i.n	a2, sp, 20
	l32i.n	a3, sp, 24
	or	a11, a6, a5
	or	a9, a2, a3
	and	a11, a11, a12
	s32i.n	a8, sp, 8
	and	a3, a6, a5
	l32i.n	a8, sp, 24
	or	a3, a11, a3
	and	a9, a9, a13
	and	a2, a2, a8
	add.n	a3, a7, a3
	or	a9, a9, a2
	movi.n	a11, 1
	bltu	a3, a7, .L88
	movi.n	a11, 0
.L88:
	l32i.n	a13, sp, 8
	add.n	a10, a3, a10
	add.n	a9, a13, a9
	add.n	a9, a11, a9
	movi.n	a11, 1
	bltu	a10, a3, .L89
	movi.n	a11, 0
.L89:
	l32i.n	a2, sp, 0
	add.n	a9, a9, a4
	.loc 1 127 0 discriminator 1
	l32i.n	a8, sp, 48
	.loc 1 126 0 discriminator 1
	add.n	a9, a11, a9
	s32i.n	a10, a2, 24
	s32i.n	a9, a2, 28
	.loc 1 127 0 discriminator 1
	l32i.n	a7, a8, 40
	l32i.n	a3, a14, 40
	.loc 1 126 0 discriminator 1
	s32i.n	a9, sp, 8
.LVL108:
	.loc 1 127 0 discriminator 1
	add.n	a7, a3, a7
	l32i.n	a2, a8, 44
	l32i.n	a4, a14, 44
	movi.n	a8, 1
	bltu	a7, a3, .L90
	movi.n	a8, 0
.L90:
	l32i.n	a9, sp, 12
	add.n	a4, a4, a2
	add.n	a4, a8, a4
	add.n	a8, a7, a9
	movi.n	a3, 1
	bltu	a8, a7, .L91
	movi.n	a3, 0
.L91:
	l32i.n	a11, sp, 36
	l32i.n	a13, sp, 16
	add.n	a2, a4, a11
	l32i.n	a9, sp, 44
	add.n	a2, a3, a2
	l32i.n	a3, sp, 40
	l32i.n	a11, sp, 28
	xor	a4, a3, a9
	xor	a7, a13, a15
	l32i.n	a3, sp, 16
	and	a7, a7, a11
	l32i.n	a13, sp, 52
	xor	a7, a7, a3
	l32i.n	a9, sp, 40
	and	a4, a4, a13
	add.n	a7, a8, a7
	xor	a3, a4, a9
	movi.n	a9, 1
	bltu	a7, a8, .L92
	movi.n	a9, 0
.L92:
	add.n	a4, a2, a3
	l32i.n	a11, sp, 52
	l32i.n	a13, sp, 28
	l32i.n	a2, sp, 28
	srli	a3, a13, 14
	slli	a8, a2, 18
	add.n	a4, a9, a4
	srli	a2, a11, 14
	slli	a9, a11, 18
	or	a13, a9, a3
	or	a11, a8, a2
	l32i.n	a3, sp, 52
	l32i.n	a8, sp, 28
	slli	a9, a3, 14
	extui	a3, a8, 18, 14
	or	a2, a9, a3
	l32i.n	a9, sp, 52
	slli	a3, a8, 14
	extui	a8, a9, 18, 14
	or	a3, a3, a8
	xor	a9, a13, a2
	xor	a8, a11, a3
	l32i.n	a13, sp, 52
	l32i.n	a11, sp, 28
	slli	a2, a13, 23
	srli	a3, a11, 9
	srli	a11, a13, 9
	l32i.n	a13, sp, 28
	or	a3, a3, a2
	slli	a2, a13, 23
	or	a2, a11, a2
	xor	a9, a9, a2
	add.n	a9, a7, a9
	xor	a3, a8, a3
	movi.n	a2, 1
	bltu	a9, a7, .L93
	movi.n	a2, 0
.L93:
	add.n	a4, a4, a3
	add.n	a4, a2, a4
	add.n	a2, a6, a9
	s32i.n	a2, sp, 12
.LVL109:
	l32i.n	a3, sp, 12
	movi.n	a2, 1
	bltu	a3, a6, .L94
	movi.n	a2, 0
.L94:
	l32i.n	a6, sp, 20
.LVL110:
	l32i.n	a8, sp, 0
	add.n	a11, a6, a4
	add.n	a11, a2, a11
	l32i.n	a2, sp, 8
	s32i.n	a11, sp, 36
	l32i.n	a11, sp, 12
	slli	a6, a2, 4
	extui	a2, a10, 28, 4
	s32i.n	a11, a8, 48
	or	a11, a6, a2
	l32i.n	a6, sp, 8
	l32i.n	a13, sp, 36
	extui	a3, a6, 28, 4
	slli	a2, a10, 4
	s32i.n	a13, a8, 52
.LVL111:
	or	a8, a2, a3
	slli	a3, a6, 30
	srli	a2, a10, 2
	or	a2, a2, a3
	xor	a2, a8, a2
	srli	a3, a6, 2
	l32i.n	a8, sp, 8
	slli	a7, a10, 30
	or	a3, a3, a7
	xor	a6, a11, a3
	srli	a7, a10, 7
	slli	a3, a8, 25
	or	a7, a7, a3
	srli	a3, a8, 7
	slli	a8, a10, 25
	or	a3, a3, a8
	l32i.n	a13, sp, 24
	xor	a7, a2, a7
	l32i.n	a2, sp, 4
	xor	a3, a6, a3
	l32i.n	a6, sp, 8
	or	a8, a13, a2
	or	a11, a5, a12
	and	a8, a8, a6
	and	a11, a11, a10
	and	a6, a5, a12
	or	a6, a11, a6
	s32i.n	a8, sp, 20
	and	a2, a13, a2
	add.n	a6, a3, a6
	or	a8, a8, a2
	movi.n	a11, 1
	bltu	a6, a3, .L95
	movi.n	a11, 0
.L95:
	add.n	a8, a7, a8
	add.n	a9, a6, a9
	add.n	a8, a11, a8
	movi.n	a11, 1
	bltu	a9, a6, .L96
	movi.n	a11, 0
.L96:
	add.n	a8, a8, a4
	add.n	a8, a11, a8
	s32i.n	a8, sp, 20
	l32i.n	a11, sp, 20
	l32i.n	a8, sp, 0
	.loc 1 128 0 discriminator 1
	l32i.n	a13, sp, 48
	.loc 1 127 0 discriminator 1
	s32i.n	a9, a8, 16
	s32i.n	a11, a8, 20
.LVL112:
	.loc 1 128 0 discriminator 1
	l32i.n	a6, a14, 48
	l32i.n	a3, a13, 48
	l32i.n	a8, a14, 52
	add.n	a3, a6, a3
	l32i.n	a2, a13, 52
	movi.n	a4, 1
	bltu	a3, a6, .L97
	movi.n	a4, 0
.L97:
	add.n	a8, a8, a2
	l32i.n	a2, sp, 16
	add.n	a8, a4, a8
	add.n	a6, a3, a2
	movi.n	a4, 1
	bltu	a6, a3, .L98
	movi.n	a4, 0
.L98:
	l32i.n	a3, sp, 40
	l32i.n	a11, sp, 44
	add.n	a2, a8, a3
	l32i.n	a8, sp, 28
	l32i.n	a13, sp, 52
	l32i.n	a3, sp, 12
	add.n	a2, a4, a2
	xor	a4, a15, a8
	and	a4, a4, a3
	xor	a8, a11, a13
	l32i.n	a11, sp, 36
	xor	a4, a4, a15
	l32i.n	a13, sp, 44
	and	a8, a8, a11
	add.n	a4, a6, a4
	xor	a3, a8, a13
	movi.n	a7, 1
	bltu	a4, a6, .L99
	movi.n	a7, 0
.L99:
	add.n	a8, a2, a3
	l32i.n	a11, sp, 36
	l32i.n	a3, sp, 12
	l32i.n	a2, sp, 36
	slli	a6, a3, 18
	add.n	a8, a7, a8
	slli	a7, a2, 18
	srli	a2, a3, 14
	srli	a3, a11, 14
	or	a11, a6, a3
	l32i.n	a13, sp, 36
	l32i.n	a3, sp, 12
	or	a2, a7, a2
	l32i.n	a6, sp, 12
	slli	a7, a13, 14
	s32i.n	a2, sp, 16
.LVL113:
	extui	a2, a3, 18, 14
	or	a3, a7, a2
	slli	a2, a6, 14
	extui	a6, a13, 18, 14
	l32i.n	a13, sp, 16
	or	a2, a2, a6
	xor	a7, a13, a3
	xor	a6, a11, a2
	l32i.n	a3, sp, 12
	l32i.n	a11, sp, 36
	l32i.n	a13, sp, 12
	srli	a2, a3, 9
	slli	a3, a11, 23
	or	a2, a2, a3
	srli	a11, a11, 9
	slli	a3, a13, 23
	or	a3, a11, a3
	xor	a3, a7, a3
	add.n	a3, a4, a3
	xor	a2, a6, a2
	movi.n	a7, 1
	bltu	a3, a4, .L100
	movi.n	a7, 0
.L100:
	add.n	a8, a8, a2
	add.n	a2, a5, a3
	s32i.n	a2, sp, 16
	l32i.n	a4, sp, 16
	add.n	a8, a7, a8
	movi.n	a2, 1
	bltu	a4, a5, .L101
	movi.n	a2, 0
.L101:
	l32i.n	a5, sp, 24
.LVL114:
	l32i.n	a13, sp, 20
	add.n	a7, a5, a8
	l32i.n	a6, sp, 0
	l32i.n	a11, sp, 16
	add.n	a2, a2, a7
	slli	a5, a13, 4
	extui	a4, a9, 28, 4
	s32i.n	a11, a6, 40
	s32i.n	a2, a6, 44
	or	a11, a5, a4
	s32i.n	a2, sp, 40
.LVL115:
	slli	a4, a9, 4
	extui	a2, a13, 28, 4
	or	a7, a4, a2
	slli	a2, a13, 30
	srli	a4, a9, 2
	or	a4, a4, a2
	slli	a6, a9, 30
	srli	a2, a13, 2
	or	a2, a2, a6
	xor	a5, a11, a2
	srli	a6, a9, 7
	slli	a2, a13, 25
	xor	a4, a7, a4
	or	a6, a6, a2
	slli	a7, a9, 25
	srli	a2, a13, 7
	or	a2, a2, a7
	xor	a6, a4, a6
	xor	a2, a5, a2
	l32i.n	a4, sp, 4
	l32i.n	a5, sp, 8
	or	a11, a12, a10
	or	a7, a4, a5
	and	a11, a11, a9
	s32i.n	a6, sp, 24
	and	a5, a12, a10
	l32i.n	a6, sp, 8
	or	a5, a11, a5
	and	a7, a7, a13
	and	a4, a4, a6
	add.n	a5, a2, a5
	or	a7, a7, a4
	movi.n	a11, 1
	bltu	a5, a2, .L102
	movi.n	a11, 0
.L102:
	l32i.n	a13, sp, 24
	add.n	a7, a13, a7
	add.n	a13, a5, a3
	add.n	a7, a11, a7
	movi.n	a3, 1
	bltu	a13, a5, .L103
	movi.n	a3, 0
.L103:
	l32i.n	a2, sp, 0
	add.n	a7, a7, a8
	add.n	a3, a3, a7
	.loc 1 129 0 discriminator 1
	l32i.n	a6, sp, 48
	.loc 1 128 0 discriminator 1
	s32i.n	a13, a2, 8
	s32i.n	a3, a2, 12
	.loc 1 129 0 discriminator 1
	l32i.n	a5, a6, 56
	l32i.n	a4, a14, 56
	.loc 1 128 0 discriminator 1
	s32i.n	a3, sp, 24
.LVL116:
	.loc 1 129 0 discriminator 1
	add.n	a5, a4, a5
	l32i.n	a2, a6, 60
	l32i.n	a3, a14, 60
	movi.n	a6, 1
	bltu	a5, a4, .L104
	movi.n	a6, 0
.L104:
	add.n	a3, a3, a2
	add.n	a15, a5, a15
.LVL117:
	add.n	a3, a6, a3
	movi.n	a2, 1
	bltu	a15, a5, .L105
	movi.n	a2, 0
.L105:
	l32i.n	a8, sp, 44
	l32i.n	a11, sp, 28
	add.n	a7, a3, a8
	add.n	a7, a2, a7
	l32i.n	a2, sp, 12
	l32i.n	a8, sp, 16
	xor	a5, a11, a2
	l32i.n	a4, sp, 52
	l32i.n	a6, sp, 36
	l32i.n	a2, sp, 28
	and	a5, a5, a8
	l32i.n	a11, sp, 40
	xor	a3, a4, a6
	xor	a5, a5, a2
	and	a3, a3, a11
	add.n	a5, a15, a5
	xor	a4, a3, a4
	movi.n	a6, 1
	bltu	a5, a15, .L106
	movi.n	a6, 0
.L106:
	add.n	a3, a7, a4
	l32i.n	a8, sp, 40
	l32i.n	a4, sp, 40
	add.n	a3, a6, a3
	l32i.n	a6, sp, 16
	slli	a7, a4, 18
	srli	a2, a8, 14
	srli	a4, a6, 14
	slli	a6, a6, 18
	or	a8, a6, a2
	l32i.n	a15, sp, 40
	l32i.n	a2, sp, 16
	l32i.n	a6, sp, 16
	or	a11, a7, a4
	slli	a7, a15, 14
	extui	a4, a2, 18, 14
	or	a2, a7, a4
	slli	a4, a6, 14
	extui	a6, a15, 18, 14
	or	a4, a4, a6
	xor	a6, a8, a4
	l32i.n	a8, sp, 16
	xor	a7, a11, a2
	l32i.n	a11, sp, 16
	srli	a4, a8, 9
	slli	a2, a15, 23
	or	a4, a4, a2
	srli	a8, a15, 9
	slli	a2, a11, 23
	or	a2, a8, a2
	xor	a2, a7, a2
	add.n	a2, a5, a2
	xor	a4, a6, a4
	movi.n	a8, 1
	bltu	a2, a5, .L107
	movi.n	a8, 0
.L107:
	add.n	a3, a3, a4
	add.n	a15, a12, a2
	add.n	a3, a8, a3
	movi.n	a4, 1
	bltu	a15, a12, .L108
	movi.n	a4, 0
.L108:
	l32i.n	a12, sp, 4
.LVL118:
	l32i.n	a6, sp, 24
	add.n	a7, a12, a3
	l32i.n	a5, sp, 0
	add.n	a4, a4, a7
	s32i.n	a4, a5, 36
	slli	a7, a6, 4
	s32i.n	a15, a5, 32
	extui	a5, a13, 28, 4
	or	a11, a7, a5
	s32i.n	a4, sp, 44
.LVL119:
	slli	a5, a13, 4
	extui	a4, a6, 28, 4
	or	a8, a5, a4
	slli	a4, a6, 30
	srli	a5, a13, 2
	or	a5, a5, a4
	xor	a5, a8, a5
	srli	a4, a6, 2
	l32i.n	a8, sp, 24
	slli	a6, a13, 30
	or	a4, a4, a6
	xor	a7, a11, a4
	srli	a6, a13, 7
	slli	a4, a8, 25
	or	a6, a6, a4
	srli	a4, a8, 7
	slli	a8, a13, 25
	xor	a6, a5, a6
	or	a4, a4, a8
	l32i.n	a12, sp, 8
	l32i.n	a5, sp, 20
	or	a11, a10, a9
	xor	a4, a7, a4
	and	a11, a11, a13
	s32i.n	a6, sp, 4
	and	a7, a10, a9
	l32i.n	a6, sp, 24
	or	a8, a12, a5
	or	a7, a11, a7
	and	a8, a8, a6
	and	a5, a12, a5
	add.n	a7, a4, a7
	or	a8, a8, a5
	movi.n	a11, 1
	bltu	a7, a4, .L109
	movi.n	a11, 0
.L109:
	add.n	a2, a7, a2
	s32i.n	a2, sp, 32
	l32i.n	a12, sp, 4
	l32i.n	a4, sp, 32
	add.n	a8, a12, a8
	add.n	a8, a11, a8
	movi.n	a2, 1
	bltu	a4, a7, .L110
	movi.n	a2, 0
.L110:
	l32i.n	a5, sp, 0
	add.n	a8, a8, a3
	add.n	a8, a2, a8
	l32i.n	a6, sp, 32
	s32i.n	a8, a5, 4
	s32i.n	a8, sp, 4
.LVL120:
	.loc 1 130 0 discriminator 1
	l32i.n	a8, sp, 48
	.loc 1 129 0 discriminator 1
	s32i.n	a6, a5, 0
	.loc 1 130 0 discriminator 1
	l32i	a6, a14, 64
	l32i	a4, a8, 64
	l32i	a3, a14, 68
	add.n	a4, a6, a4
	l32i	a2, a8, 68
	movi.n	a5, 1
	bltu	a4, a6, .L111
	movi.n	a5, 0
.L111:
	l32i.n	a11, sp, 28
	add.n	a3, a3, a2
	add.n	a6, a4, a11
	add.n	a3, a5, a3
	movi.n	a5, 1
	bltu	a6, a4, .L112
	movi.n	a5, 0
.L112:
	l32i.n	a12, sp, 52
	l32i.n	a4, sp, 16
	add.n	a2, a3, a12
	l32i.n	a3, sp, 12
	l32i.n	a8, sp, 36
	add.n	a2, a5, a2
	l32i.n	a11, sp, 40
	xor	a5, a3, a4
	l32i.n	a4, sp, 12
	and	a5, a5, a15
	l32i.n	a12, sp, 44
	xor	a5, a5, a4
	xor	a3, a8, a11
	and	a3, a3, a12
	add.n	a5, a6, a5
	xor	a4, a3, a8
	movi.n	a7, 1
	bltu	a5, a6, .L113
	movi.n	a7, 0
.L113:
	l32i.n	a6, sp, 44
	add.n	a3, a2, a4
	l32i.n	a8, sp, 44
	l32i.n	a12, sp, 44
	srli	a2, a15, 14
	add.n	a3, a7, a3
	slli	a7, a6, 18
	or	a11, a7, a2
	slli	a6, a15, 18
	slli	a7, a12, 14
	srli	a4, a8, 14
	extui	a2, a15, 18, 14
	or	a8, a6, a4
	extui	a12, a12, 18, 14
	or	a4, a7, a2
	slli	a2, a15, 14
	or	a2, a2, a12
	xor	a6, a8, a2
	l32i.n	a8, sp, 44
	xor	a7, a11, a4
	srli	a2, a15, 9
	slli	a4, a8, 23
	or	a2, a2, a4
	srli	a8, a8, 9
	slli	a4, a15, 23
	or	a4, a8, a4
	xor	a7, a7, a4
	add.n	a7, a5, a7
	xor	a2, a6, a2
	movi.n	a4, 1
	bltu	a7, a5, .L114
	movi.n	a4, 0
.L114:
	add.n	a11, a10, a7
	add.n	a3, a3, a2
	s32i.n	a11, sp, 28
.LVL121:
	add.n	a3, a4, a3
	movi.n	a2, 1
	bltu	a11, a10, .L115
	movi.n	a2, 0
.L115:
	l32i.n	a12, sp, 8
	l32i.n	a8, sp, 32
	add.n	a11, a12, a3
	add.n	a11, a2, a11
	l32i.n	a2, sp, 0
	l32i.n	a4, sp, 28
	s32i.n	a11, a2, 28
	l32i.n	a5, sp, 4
	s32i.n	a11, sp, 52
.LVL122:
	l32i.n	a11, sp, 4
	l32i.n	a12, sp, 32
	slli	a6, a5, 4
	s32i.n	a4, a2, 24
	slli	a5, a8, 4
	extui	a4, a8, 28, 4
	extui	a2, a11, 28, 4
	or	a8, a5, a2
.LVL123:
	or	a10, a6, a4
.LVL124:
	slli	a2, a11, 30
	srli	a4, a12, 2
	or	a4, a4, a2
	slli	a5, a12, 30
	srli	a2, a11, 2
	or	a2, a2, a5
	xor	a6, a10, a2
	xor	a5, a8, a4
	slli	a2, a11, 25
	srli	a4, a12, 7
	slli	a8, a12, 25
	or	a4, a4, a2
	srli	a2, a11, 7
	or	a2, a2, a8
	l32i.n	a10, sp, 24
	l32i.n	a8, sp, 20
	xor	a2, a6, a2
	xor	a4, a5, a4
	or	a6, a9, a13
	or	a5, a8, a10
	and	a6, a6, a12
	and	a5, a5, a11
	and	a11, a9, a13
	or	a11, a6, a11
	and	a10, a8, a10
	add.n	a11, a2, a11
	or	a5, a5, a10
	movi.n	a12, 1
.LVL125:
	bltu	a11, a2, .L116
	movi.n	a12, 0
.L116:
	add.n	a4, a4, a5
	add.n	a5, a11, a7
	add.n	a4, a12, a4
	movi.n	a7, 1
	bltu	a5, a11, .L117
	movi.n	a7, 0
.L117:
	l32i.n	a2, sp, 0
	add.n	a4, a4, a3
	add.n	a4, a7, a4
	.loc 1 131 0 discriminator 1
	l32i.n	a6, sp, 48
	.loc 1 130 0 discriminator 1
	s32i.n	a5, a2, 56
	s32i.n	a4, a2, 60
	.loc 1 131 0 discriminator 1
	l32i	a3, a6, 72
	.loc 1 130 0 discriminator 1
	s32i.n	a4, sp, 8
.LVL126:
	.loc 1 131 0 discriminator 1
	l32i	a4, a14, 72
	l32i	a2, a6, 76
	add.n	a3, a4, a3
	l32i	a11, a14, 76
	movi.n	a6, 1
	bltu	a3, a4, .L118
	movi.n	a6, 0
.L118:
	l32i.n	a8, sp, 12
	add.n	a2, a11, a2
	add.n	a7, a3, a8
	add.n	a2, a6, a2
	movi.n	a4, 1
	bltu	a7, a3, .L119
	movi.n	a4, 0
.L119:
	l32i.n	a10, sp, 36
	l32i.n	a12, sp, 16
	add.n	a11, a2, a10
	l32i.n	a8, sp, 28
	l32i.n	a3, sp, 40
	add.n	a11, a4, a11
	xor	a6, a12, a15
	l32i.n	a4, sp, 44
	and	a6, a6, a8
	l32i.n	a10, sp, 52
	xor	a2, a3, a4
	xor	a6, a6, a12
	and	a2, a2, a10
	add.n	a6, a7, a6
	xor	a3, a2, a3
	movi.n	a8, 1
	bltu	a6, a7, .L120
	movi.n	a8, 0
.L120:
	add.n	a2, a11, a3
	l32i.n	a12, sp, 28
	l32i.n	a11, sp, 52
	srli	a3, a12, 14
	slli	a10, a11, 18
	or	a12, a10, a3
	l32i.n	a3, sp, 28
	add.n	a2, a8, a2
	slli	a8, a3, 18
	srli	a3, a11, 14
	or	a11, a8, a3
	l32i.n	a4, sp, 52
	l32i.n	a8, sp, 28
	slli	a10, a4, 14
	extui	a4, a8, 18, 14
	or	a3, a10, a4
	l32i.n	a10, sp, 52
	slli	a4, a8, 14
	extui	a7, a10, 18, 14
	or	a4, a4, a7
	xor	a10, a12, a3
	xor	a8, a11, a4
	l32i.n	a12, sp, 52
	l32i.n	a11, sp, 28
	slli	a3, a12, 23
	srli	a4, a11, 9
	or	a4, a4, a3
	slli	a7, a11, 23
	srli	a3, a12, 9
	or	a3, a3, a7
	xor	a3, a10, a3
	add.n	a3, a6, a3
	xor	a4, a8, a4
	movi.n	a7, 1
	bltu	a3, a6, .L121
	movi.n	a7, 0
.L121:
	add.n	a2, a2, a4
	add.n	a4, a9, a3
	s32i.n	a4, sp, 36
.LVL127:
	add.n	a2, a7, a2
	movi.n	a6, 1
	bltu	a4, a9, .L122
	movi.n	a6, 0
.L122:
	l32i.n	a8, sp, 20
	l32i.n	a9, sp, 0
.LVL128:
	add.n	a11, a8, a2
	add.n	a11, a6, a11
	s32i.n	a11, a9, 20
	s32i.n	a11, sp, 56
.LVL129:
	l32i.n	a11, sp, 8
	l32i.n	a10, sp, 36
	slli	a8, a11, 4
	extui	a6, a5, 28, 4
	extui	a4, a11, 28, 4
	s32i.n	a10, a9, 16
	or	a10, a8, a6
	slli	a6, a5, 4
	or	a9, a6, a4
	slli	a4, a11, 30
	srli	a6, a5, 2
	or	a6, a6, a4
	slli	a7, a5, 30
	srli	a4, a11, 2
	or	a4, a4, a7
	xor	a8, a10, a4
	srli	a7, a5, 7
	slli	a4, a11, 25
	xor	a6, a9, a6
	or	a7, a7, a4
	slli	a9, a5, 25
	srli	a4, a11, 7
	or	a4, a4, a9
	l32i.n	a12, sp, 32
	l32i.n	a9, sp, 4
	xor	a7, a6, a7
	l32i.n	a6, sp, 24
	xor	a4, a8, a4
	or	a10, a13, a12
	or	a8, a6, a9
	and	a10, a10, a5
	and	a8, a8, a11
	and	a9, a13, a12
	l32i.n	a11, sp, 4
	or	a9, a10, a9
	and	a6, a6, a11
	add.n	a9, a4, a9
	or	a8, a8, a6
	movi.n	a10, 1
	bltu	a9, a4, .L123
	movi.n	a10, 0
.L123:
	add.n	a8, a7, a8
	add.n	a3, a9, a3
	add.n	a8, a10, a8
	movi.n	a10, 1
	bltu	a3, a9, .L124
	movi.n	a10, 0
.L124:
	add.n	a8, a8, a2
	l32i.n	a2, sp, 0
	add.n	a8, a10, a8
	s32i.n	a8, a2, 52
	s32i.n	a8, sp, 12
.LVL130:
	.loc 1 132 0 discriminator 1
	l32i.n	a8, sp, 48
	.loc 1 131 0 discriminator 1
	s32i.n	a3, a2, 48
	.loc 1 132 0 discriminator 1
	l32i	a6, a8, 80
	l32i	a4, a14, 80
	l32i	a2, a8, 84
	add.n	a6, a4, a6
	l32i	a7, a14, 84
	movi.n	a8, 1
	bltu	a6, a4, .L125
	movi.n	a8, 0
.L125:
	l32i.n	a9, sp, 16
	add.n	a2, a7, a2
	add.n	a2, a8, a2
	add.n	a8, a6, a9
	movi.n	a4, 1
	bltu	a8, a6, .L126
	movi.n	a4, 0
.L126:
	l32i.n	a10, sp, 40
	l32i.n	a11, sp, 28
	add.n	a7, a2, a10
	l32i.n	a9, sp, 36
	l32i.n	a12, sp, 44
	add.n	a7, a4, a7
	xor	a6, a15, a11
	l32i.n	a4, sp, 52
	and	a6, a6, a9
	l32i.n	a10, sp, 56
	xor	a2, a12, a4
	xor	a6, a6, a15
	and	a2, a2, a10
	add.n	a6, a8, a6
	xor	a4, a2, a12
	movi.n	a9, 1
	bltu	a6, a8, .L127
	movi.n	a9, 0
.L127:
	l32i.n	a12, sp, 36
	l32i.n	a11, sp, 56
	add.n	a2, a7, a4
	add.n	a2, a9, a2
	srli	a4, a12, 14
	slli	a9, a11, 18
	or	a11, a9, a4
	l32i.n	a4, sp, 56
	slli	a8, a12, 18
	srli	a7, a4, 14
	or	a10, a8, a7
	l32i.n	a8, sp, 56
	slli	a9, a4, 14
	extui	a4, a12, 18, 14
	or	a7, a9, a4
	slli	a4, a12, 14
	extui	a12, a8, 18, 14
	or	a4, a4, a12
	xor	a9, a11, a7
	xor	a8, a10, a4
	l32i.n	a11, sp, 56
	l32i.n	a10, sp, 36
	l32i.n	a12, sp, 36
	slli	a7, a11, 23
	srli	a4, a10, 9
	or	a4, a4, a7
	srli	a10, a11, 9
	slli	a7, a12, 23
	or	a7, a10, a7
	xor	a9, a9, a7
	add.n	a9, a6, a9
	xor	a4, a8, a4
	movi.n	a11, 1
	bltu	a9, a6, .L128
	movi.n	a11, 0
.L128:
	add.n	a4, a2, a4
	add.n	a2, a13, a9
	s32i.n	a2, sp, 16
.LVL131:
	add.n	a10, a11, a4
	movi.n	a11, 1
	bltu	a2, a13, .L129
	movi.n	a11, 0
.L129:
	l32i.n	a4, sp, 24
	l32i.n	a6, sp, 0
	add.n	a7, a4, a10
	add.n	a11, a11, a7
	l32i.n	a12, sp, 12
	l32i.n	a8, sp, 16
	s32i.n	a11, a6, 12
	s32i.n	a11, sp, 40
.LVL132:
	l32i.n	a11, sp, 12
	extui	a4, a12, 28, 4
	s32i.n	a8, a6, 8
	slli	a7, a11, 4
	extui	a2, a3, 28, 4
	slli	a6, a3, 4
	or	a8, a6, a4
	or	a11, a7, a2
	slli	a4, a12, 30
	srli	a2, a3, 2
	or	a2, a2, a4
	slli	a6, a3, 30
	srli	a4, a12, 2
	or	a4, a4, a6
	xor	a7, a11, a4
	xor	a6, a8, a2
	slli	a4, a12, 25
	srli	a2, a3, 7
	or	a2, a2, a4
	l32i.n	a13, sp, 32
.LVL133:
	srli	a4, a12, 7
	slli	a8, a3, 25
	l32i.n	a11, sp, 8
	xor	a2, a6, a2
	l32i.n	a6, sp, 4
	or	a4, a4, a8
	xor	a4, a7, a4
	or	a8, a13, a5
	or	a7, a6, a11
	and	a7, a7, a12
	and	a8, a8, a3
	and	a12, a13, a5
	or	a12, a8, a12
	and	a6, a6, a11
	add.n	a12, a4, a12
	or	a7, a7, a6
	movi.n	a13, 1
	bltu	a12, a4, .L130
	movi.n	a13, 0
.L130:
	add.n	a9, a12, a9
	s32i.n	a9, sp, 20
	add.n	a7, a2, a7
	add.n	a7, a13, a7
	l32i.n	a13, sp, 20
	movi.n	a9, 1
	bltu	a13, a12, .L131
	movi.n	a9, 0
.L131:
	l32i.n	a2, sp, 0
	l32i.n	a4, sp, 20
	add.n	a7, a7, a10
	.loc 1 133 0 discriminator 1
	l32i.n	a8, sp, 48
	.loc 1 132 0 discriminator 1
	add.n	a12, a9, a7
	s32i.n	a4, a2, 40
	s32i.n	a12, a2, 44
.LVL134:
	.loc 1 133 0 discriminator 1
	l32i	a6, a8, 88
	l32i	a9, a14, 88
	l32i	a2, a8, 92
	add.n	a6, a9, a6
	l32i	a4, a14, 92
	movi.n	a8, 1
	bltu	a6, a9, .L132
	movi.n	a8, 0
.L132:
	add.n	a4, a4, a2
	add.n	a15, a6, a15
.LVL135:
	add.n	a4, a8, a4
	movi.n	a2, 1
	bltu	a15, a6, .L133
	movi.n	a2, 0
.L133:
	l32i.n	a9, sp, 44
	l32i.n	a10, sp, 28
	l32i.n	a11, sp, 36
	add.n	a7, a4, a9
	l32i.n	a8, sp, 16
	l32i.n	a13, sp, 52
	add.n	a7, a2, a7
	xor	a6, a10, a11
	l32i.n	a2, sp, 56
	and	a6, a6, a8
	l32i.n	a9, sp, 40
	xor	a4, a13, a2
	xor	a6, a6, a10
	and	a4, a4, a9
	add.n	a6, a15, a6
	xor	a8, a4, a13
	movi.n	a9, 1
	bltu	a6, a15, .L134
	movi.n	a9, 0
.L134:
	l32i.n	a10, sp, 40
	l32i.n	a11, sp, 16
	l32i.n	a13, sp, 16
	l32i.n	a15, sp, 40
	add.n	a4, a7, a8
	srli	a2, a11, 14
	add.n	a4, a9, a4
	slli	a9, a10, 18
	or	a11, a9, a2
	slli	a8, a13, 18
	srli	a7, a10, 14
	slli	a9, a15, 14
	extui	a2, a13, 18, 14
	or	a10, a8, a7
	or	a7, a9, a2
	extui	a8, a15, 18, 14
	slli	a2, a13, 14
	or	a2, a2, a8
	xor	a8, a10, a2
	xor	a9, a11, a7
	srli	a2, a13, 9
	slli	a7, a15, 23
	or	a2, a2, a7
	srli	a10, a15, 9
	slli	a7, a13, 23
	or	a7, a10, a7
	xor	a9, a9, a7
	add.n	a9, a6, a9
	xor	a2, a8, a2
	movi.n	a10, 1
	bltu	a9, a6, .L135
	movi.n	a10, 0
.L135:
	add.n	a4, a4, a2
	l32i.n	a2, sp, 32
	add.n	a4, a10, a4
	add.n	a15, a2, a9
	movi.n	a7, 1
	bltu	a15, a2, .L136
	movi.n	a7, 0
.L136:
	l32i.n	a6, sp, 4
	l32i.n	a8, sp, 0
	l32i.n	a10, sp, 20
	add.n	a2, a6, a4
	add.n	a2, a7, a2
	l32i.n	a13, sp, 20
	extui	a6, a10, 28, 4
	s32i.n	a2, a8, 4
	s32i.n	a15, a8, 0
	slli	a8, a12, 4
	or	a11, a8, a6
	s32i.n	a2, sp, 4
.LVL136:
	slli	a6, a10, 4
	extui	a2, a12, 28, 4
	or	a10, a6, a2
.LVL137:
	srli	a6, a13, 2
	slli	a2, a12, 30
	slli	a7, a13, 30
	or	a6, a6, a2
	srli	a2, a12, 2
	or	a2, a2, a7
	xor	a8, a11, a2
	srli	a7, a13, 7
	slli	a2, a12, 25
	xor	a6, a10, a6
	or	a7, a7, a2
	slli	a10, a13, 25
	l32i.n	a11, sp, 12
	srli	a2, a12, 7
	xor	a7, a6, a7
	l32i.n	a6, sp, 8
	or	a2, a2, a10
	or	a10, a5, a3
	and	a10, a10, a13
	xor	a2, a8, a2
	l32i.n	a13, sp, 12
.LVL138:
	or	a8, a6, a11
	and	a11, a5, a3
	and	a8, a8, a12
	or	a11, a10, a11
	s32i.n	a8, sp, 24
	and	a6, a6, a13
	add.n	a11, a2, a11
	or	a8, a8, a6
	movi.n	a10, 1
	bltu	a11, a2, .L137
	movi.n	a10, 0
.L137:
	add.n	a8, a7, a8
	add.n	a13, a11, a9
	add.n	a8, a10, a8
	movi.n	a9, 1
	bltu	a13, a11, .L138
	movi.n	a9, 0
.L138:
	l32i.n	a2, sp, 0
	add.n	a8, a8, a4
	.loc 1 134 0 discriminator 1
	l32i.n	a6, sp, 48
	.loc 1 133 0 discriminator 1
	add.n	a8, a9, a8
	s32i.n	a13, a2, 32
	s32i.n	a8, a2, 36
	.loc 1 134 0 discriminator 1
	l32i	a4, a6, 96
	l32i	a7, a14, 96
	.loc 1 133 0 discriminator 1
	s32i.n	a8, sp, 32
.LVL139:
	.loc 1 134 0 discriminator 1
	add.n	a4, a7, a4
	l32i	a2, a6, 100
	l32i	a11, a14, 100
	movi.n	a6, 1
	bltu	a4, a7, .L139
	movi.n	a6, 0
.L139:
	l32i.n	a8, sp, 28
	add.n	a11, a11, a2
	add.n	a7, a4, a8
	add.n	a11, a6, a11
	movi.n	a6, 1
	bltu	a7, a4, .L140
	movi.n	a6, 0
.L140:
	l32i.n	a9, sp, 52
	l32i.n	a10, sp, 36
	add.n	a2, a11, a9
	l32i.n	a11, sp, 16
	l32i.n	a8, sp, 40
	xor	a4, a10, a11
	add.n	a2, a6, a2
	l32i.n	a6, sp, 56
	and	a4, a4, a15
	l32i.n	a9, sp, 4
	xor	a11, a6, a8
	xor	a4, a4, a10
	and	a11, a11, a9
	add.n	a4, a7, a4
	xor	a6, a11, a6
	movi.n	a8, 1
	bltu	a4, a7, .L141
	movi.n	a8, 0
.L141:
	l32i.n	a10, sp, 4
	add.n	a11, a2, a6
	slli	a9, a10, 18
	srli	a2, a15, 14
	or	a9, a9, a2
	slli	a7, a10, 14
	extui	a2, a15, 18, 14
	srli	a6, a10, 14
	or	a7, a7, a2
	extui	a10, a10, 18, 14
	add.n	a11, a8, a11
	slli	a2, a15, 14
	slli	a8, a15, 18
	or	a8, a8, a6
	or	a2, a2, a10
	xor	a2, a8, a2
	l32i.n	a8, sp, 4
	xor	a7, a9, a7
	srli	a6, a15, 9
	slli	a9, a8, 23
	or	a6, a6, a9
	srli	a9, a8, 9
	slli	a8, a15, 23
	or	a9, a9, a8
	xor	a9, a7, a9
	add.n	a10, a4, a9
	xor	a2, a2, a6
	movi.n	a7, 1
	bltu	a10, a4, .L142
	movi.n	a7, 0
.L142:
	add.n	a9, a5, a10
	add.n	a2, a11, a2
	s32i.n	a9, sp, 28
.LVL140:
	add.n	a2, a7, a2
	movi.n	a6, 1
	bltu	a9, a5, .L143
	movi.n	a6, 0
.L143:
	l32i.n	a11, sp, 8
	l32i.n	a5, sp, 0
.LVL141:
	add.n	a8, a11, a2
	add.n	a8, a6, a8
	s32i.n	a8, a5, 60
	l32i.n	a6, sp, 28
	s32i.n	a8, sp, 44
.LVL142:
	l32i.n	a8, sp, 32
	l32i.n	a11, sp, 32
	s32i.n	a6, a5, 56
	extui	a4, a13, 28, 4
	slli	a5, a8, 4
	or	a9, a5, a4
	srli	a6, a11, 2
	slli	a4, a13, 4
	extui	a5, a8, 28, 4
	slli	a7, a13, 30
	or	a8, a4, a5
	or	a6, a6, a7
	slli	a5, a11, 30
	srli	a4, a13, 2
	or	a4, a4, a5
	srli	a7, a13, 7
	xor	a5, a9, a6
	slli	a6, a11, 25
	xor	a4, a8, a4
	or	a7, a7, a6
	slli	a8, a13, 25
	srli	a6, a11, 7
	or	a6, a6, a8
	xor	a6, a5, a6
	xor	a7, a4, a7
	l32i.n	a5, sp, 12
	l32i.n	a4, sp, 20
	or	a8, a5, a12
	or	a9, a3, a4
	and	a8, a8, a11
	and	a5, a3, a4
	l32i.n	a11, sp, 12
	and	a9, a9, a13
	or	a5, a9, a5
	and	a4, a11, a12
	add.n	a5, a6, a5
	or	a8, a8, a4
	movi.n	a11, 1
	bltu	a5, a6, .L144
	movi.n	a11, 0
.L144:
	add.n	a10, a5, a10
	add.n	a8, a7, a8
	s32i.n	a10, sp, 24
	add.n	a8, a11, a8
	movi.n	a6, 1
	bltu	a10, a5, .L145
	movi.n	a6, 0
.L145:
	add.n	a8, a8, a2
	l32i.n	a4, sp, 24
	l32i.n	a2, sp, 0
	add.n	a8, a6, a8
	.loc 1 135 0 discriminator 1
	l32i.n	a6, sp, 48
	.loc 1 134 0 discriminator 1
	s32i.n	a4, a2, 24
	s32i.n	a8, a2, 28
	s32i.n	a8, sp, 8
.LVL143:
	.loc 1 135 0 discriminator 1
	l32i	a5, a6, 104
	l32i	a8, a14, 104
	l32i	a4, a14, 108
	add.n	a5, a8, a5
	l32i	a2, a6, 108
	movi.n	a7, 1
	bltu	a5, a8, .L146
	movi.n	a7, 0
.L146:
	l32i.n	a9, sp, 36
	add.n	a2, a4, a2
	add.n	a8, a5, a9
	add.n	a2, a7, a2
	movi.n	a4, 1
	bltu	a8, a5, .L147
	movi.n	a4, 0
.L147:
	l32i.n	a10, sp, 56
	l32i.n	a11, sp, 16
	l32i.n	a6, sp, 40
	l32i.n	a9, sp, 4
	add.n	a2, a2, a10
	l32i.n	a10, sp, 28
	xor	a5, a11, a15
	add.n	a2, a4, a2
	xor	a4, a6, a9
	l32i.n	a6, sp, 16
	and	a5, a5, a10
	l32i.n	a11, sp, 44
	xor	a5, a5, a6
	l32i.n	a9, sp, 40
	and	a4, a4, a11
	add.n	a5, a8, a5
	xor	a7, a4, a9
	movi.n	a10, 1
	bltu	a5, a8, .L148
	movi.n	a10, 0
.L148:
	add.n	a4, a2, a7
	l32i.n	a6, sp, 28
	add.n	a4, a10, a4
	l32i.n	a10, sp, 44
	srli	a2, a6, 14
	slli	a9, a6, 18
	srli	a6, a10, 14
	or	a8, a9, a6
	l32i.n	a9, sp, 28
	slli	a11, a10, 18
	or	a11, a11, a2
	slli	a7, a10, 14
	extui	a2, a9, 18, 14
	or	a7, a7, a2
	extui	a10, a10, 18, 14
	slli	a2, a9, 14
	or	a2, a2, a10
	xor	a7, a11, a7
	l32i.n	a10, sp, 28
	l32i.n	a11, sp, 44
	xor	a9, a8, a2
	l32i.n	a8, sp, 28
	srli	a2, a10, 9
	slli	a6, a11, 23
	or	a2, a2, a6
	srli	a10, a11, 9
	slli	a6, a8, 23
	or	a10, a10, a6
	xor	a10, a7, a10
	add.n	a10, a5, a10
	xor	a9, a9, a2
	movi.n	a6, 1
	bltu	a10, a5, .L149
	movi.n	a6, 0
.L149:
	add.n	a2, a4, a9
	add.n	a9, a3, a10
	s32i.n	a9, sp, 36
.LVL144:
	add.n	a2, a6, a2
	movi.n	a4, 1
	bltu	a9, a3, .L150
	movi.n	a4, 0
.L150:
	l32i.n	a11, sp, 12
	l32i.n	a5, sp, 0
	l32i.n	a9, sp, 8
	add.n	a8, a11, a2
	l32i.n	a6, sp, 36
	l32i.n	a11, sp, 24
	add.n	a8, a4, a8
	extui	a3, a11, 28, 4
.LVL145:
	slli	a4, a9, 4
	s32i.n	a6, a5, 48
	s32i.n	a8, a5, 52
.LVL146:
	l32i.n	a5, sp, 8
	or	a7, a4, a3
	slli	a3, a11, 4
	extui	a4, a9, 28, 4
	or	a9, a3, a4
	slli	a6, a11, 30
	slli	a4, a5, 30
	srli	a5, a5, 2
	or	a5, a5, a6
	srli	a3, a11, 2
	srli	a6, a11, 7
	l32i.n	a11, sp, 8
	or	a3, a3, a4
	xor	a3, a9, a3
	slli	a9, a11, 25
	or	a6, a6, a9
	l32i.n	a9, sp, 24
	xor	a4, a7, a5
	xor	a6, a3, a6
	slli	a7, a9, 25
	l32i.n	a3, sp, 20
	srli	a5, a11, 7
	or	a5, a5, a7
	xor	a5, a4, a5
	or	a11, a3, a13
	l32i.n	a4, sp, 32
	and	a11, a11, a9
	l32i.n	a9, sp, 8
	or	a7, a12, a4
	and	a7, a7, a9
	and	a4, a3, a13
	l32i.n	a9, sp, 32
	or	a4, a11, a4
	and	a3, a12, a9
	add.n	a4, a5, a4
	or	a7, a7, a3
	movi.n	a11, 1
	bltu	a4, a5, .L151
	movi.n	a11, 0
.L151:
	add.n	a7, a6, a7
	add.n	a10, a4, a10
	add.n	a7, a11, a7
	movi.n	a5, 1
	bltu	a10, a4, .L152
	movi.n	a5, 0
.L152:
	add.n	a7, a7, a2
	l32i.n	a2, sp, 0
	add.n	a9, a5, a7
	.loc 1 136 0 discriminator 1
	l32i.n	a5, sp, 48
	.loc 1 135 0 discriminator 1
	s32i.n	a10, a2, 16
	s32i.n	a9, a2, 20
.LVL147:
	.loc 1 136 0 discriminator 1
	l32i	a3, a5, 112
	l32i	a6, a14, 112
	l32i	a2, a5, 116
	add.n	a3, a6, a3
	l32i	a4, a14, 116
	movi.n	a5, 1
	bltu	a3, a6, .L153
	movi.n	a5, 0
.L153:
	l32i.n	a11, sp, 16
	add.n	a2, a4, a2
	add.n	a6, a3, a11
	add.n	a2, a5, a2
	movi.n	a5, 1
	bltu	a6, a3, .L154
	movi.n	a5, 0
.L154:
	l32i.n	a3, sp, 40
	l32i.n	a11, sp, 4
	add.n	a4, a2, a3
	add.n	a4, a5, a4
	l32i.n	a5, sp, 28
	xor	a3, a15, a5
	l32i.n	a5, sp, 44
	xor	a2, a11, a5
	l32i.n	a11, sp, 36
	l32i.n	a5, sp, 4
	and	a3, a3, a11
	xor	a3, a3, a15
	and	a2, a2, a8
	add.n	a3, a6, a3
	xor	a2, a2, a5
	movi.n	a5, 1
	bltu	a3, a6, .L155
	movi.n	a5, 0
.L155:
	l32i.n	a6, sp, 36
	add.n	a2, a4, a2
	slli	a11, a8, 18
	srli	a4, a6, 14
	or	a4, a11, a4
	add.n	a2, a5, a2
	l32i.n	a11, sp, 36
	slli	a5, a6, 18
	srli	a6, a8, 14
	or	a5, a5, a6
	extui	a6, a8, 18, 14
	s32i.n	a6, sp, 12
	s32i.n	a4, sp, 16
.LVL148:
	slli	a7, a8, 14
	extui	a4, a11, 18, 14
	or	a7, a7, a4
	slli	a4, a11, 14
	l32i.n	a11, sp, 12
	l32i.n	a6, sp, 16
	or	a4, a4, a11
	l32i.n	a11, sp, 36
	xor	a4, a5, a4
	l32i.n	a5, sp, 36
	xor	a7, a6, a7
	s32i.n	a4, sp, 12
	slli	a6, a8, 23
	srli	a4, a11, 9
	or	a4, a4, a6
	srli	a11, a8, 9
	slli	a6, a5, 23
	or	a11, a11, a6
	xor	a11, a7, a11
	l32i.n	a6, sp, 12
	add.n	a11, a3, a11
	s32i.n	a11, sp, 16
	xor	a4, a6, a4
	movi.n	a6, 1
	bltu	a11, a3, .L156
	movi.n	a6, 0
.L156:
	add.n	a4, a2, a4
	l32i.n	a11, sp, 20
	l32i.n	a2, sp, 16
	add.n	a4, a6, a4
	add.n	a11, a11, a2
	s32i.n	a11, sp, 12
	s32i.n	a4, sp, 40
	l32i.n	a3, sp, 12
	l32i.n	a4, sp, 20
	movi.n	a11, 1
	bltu	a3, a4, .L157
	movi.n	a11, 0
.L157:
	l32i.n	a5, sp, 40
	l32i.n	a6, sp, 0
	add.n	a2, a12, a5
	add.n	a11, a11, a2
	l32i.n	a12, sp, 12
.LVL149:
	slli	a3, a9, 4
	extui	a2, a10, 28, 4
	or	a7, a3, a2
	slli	a5, a10, 30
	slli	a2, a10, 4
	extui	a3, a9, 28, 4
	srli	a4, a9, 2
	or	a4, a4, a5
	s32i.n	a12, a6, 40
	s32i.n	a11, a6, 44
.LVL150:
	or	a6, a2, a3
	slli	a3, a9, 30
	srli	a2, a10, 2
	or	a2, a2, a3
	srli	a5, a10, 7
	xor	a3, a7, a4
	slli	a4, a9, 25
	xor	a2, a6, a2
	or	a5, a5, a4
	slli	a6, a10, 25
	srli	a4, a9, 7
	xor	a5, a2, a5
	or	a4, a4, a6
	l32i.n	a2, sp, 24
	xor	a4, a3, a4
	s32i.n	a5, sp, 20
	l32i.n	a3, sp, 32
	l32i.n	a5, sp, 8
	or	a7, a13, a2
	or	a6, a3, a5
	and	a7, a7, a10
	and	a3, a13, a2
	l32i.n	a12, sp, 32
	or	a3, a7, a3
	and	a6, a6, a9
	and	a2, a12, a5
	add.n	a3, a4, a3
	or	a6, a6, a2
	movi.n	a7, 1
	bltu	a3, a4, .L158
	movi.n	a7, 0
.L158:
	l32i.n	a2, sp, 20
	l32i.n	a4, sp, 16
	add.n	a6, a2, a6
	add.n	a6, a7, a6
	add.n	a7, a3, a4
	movi.n	a4, 1
	bltu	a7, a3, .L159
	movi.n	a4, 0
.L159:
	l32i.n	a5, sp, 40
	.loc 1 137 0 discriminator 1
	l32i.n	a2, sp, 48
	.loc 1 136 0 discriminator 1
	add.n	a12, a6, a5
	l32i.n	a6, sp, 0
	add.n	a12, a4, a12
	s32i.n	a7, a6, 8
	s32i.n	a12, a6, 12
.LVL151:
	.loc 1 137 0 discriminator 1
	l32i	a3, a2, 120
	l32i	a5, a14, 120
	l32i	a6, a14, 124
	add.n	a3, a5, a3
	l32i	a2, a2, 124
	movi.n	a4, 1
	bltu	a3, a5, .L160
	movi.n	a4, 0
.L160:
	add.n	a2, a6, a2
	add.n	a2, a4, a2
	add.n	a4, a3, a15
	movi.n	a5, 1
	bltu	a4, a3, .L161
	movi.n	a5, 0
.L161:
	l32i.n	a3, sp, 4
	l32i.n	a6, sp, 36
	add.n	a2, a2, a3
	add.n	a2, a5, a2
	l32i.n	a5, sp, 28
	l32i.n	a3, sp, 44
	xor	a15, a5, a6
.LVL152:
	l32i.n	a5, sp, 12
	l32i.n	a6, sp, 28
	and	a15, a15, a5
	xor	a8, a3, a8
.LVL153:
	xor	a15, a15, a6
	and	a8, a8, a11
	add.n	a15, a4, a15
	xor	a8, a8, a3
	movi.n	a3, 1
	bltu	a15, a4, .L162
	movi.n	a3, 0
.L162:
	add.n	a8, a2, a8
	add.n	a8, a3, a8
	l32i.n	a3, sp, 12
	slli	a5, a11, 18
	srli	a2, a3, 14
	l32i.n	a6, sp, 12
	or	a5, a5, a2
	slli	a4, a3, 18
	srli	a2, a11, 14
	or	a4, a4, a2
	slli	a3, a11, 14
	extui	a2, a6, 18, 14
	or	a3, a3, a2
	xor	a3, a5, a3
	slli	a6, a6, 14
	extui	a2, a11, 18, 14
	l32i.n	a5, sp, 12
	or	a2, a6, a2
	l32i.n	a6, sp, 12
	xor	a2, a4, a2
	srli	a4, a5, 9
	slli	a5, a11, 23
	or	a4, a4, a5
	srli	a11, a11, 9
.LVL154:
	slli	a5, a6, 23
	or	a11, a11, a5
	xor	a11, a3, a11
	add.n	a11, a15, a11
	xor	a2, a2, a4
	movi.n	a3, 1
	bltu	a11, a15, .L163
	movi.n	a3, 0
.L163:
	add.n	a2, a8, a2
	add.n	a8, a3, a2
	add.n	a2, a13, a11
	movi.n	a3, 1
	bltu	a2, a13, .L164
	movi.n	a3, 0
.L164:
	l32i.n	a13, sp, 32
.LVL155:
	l32i.n	a15, sp, 0
	add.n	a4, a13, a8
	slli	a5, a12, 4
	s32i.n	a2, a15, 32
	extui	a2, a7, 28, 4
	or	a13, a5, a2
	add.n	a3, a3, a4
	extui	a2, a12, 28, 4
	slli	a4, a7, 4
	or	a6, a4, a2
	slli	a2, a12, 30
	srli	a4, a7, 2
	srli	a5, a12, 2
	s32i.n	a3, a15, 36
.LVL156:
	or	a3, a4, a2
	slli	a4, a7, 30
	slli	a2, a12, 25
	or	a5, a5, a4
	xor	a4, a6, a3
	srli	a3, a7, 7
	or	a3, a3, a2
	srli	a6, a12, 7
	slli	a2, a7, 25
	xor	a3, a4, a3
	l32i.n	a4, sp, 24
	or	a2, a6, a2
	xor	a5, a13, a5
	l32i.n	a13, sp, 24
	l32i.n	a6, sp, 8
	xor	a5, a5, a2
	or	a2, a4, a10
	and	a2, a2, a7
	and	a10, a13, a10
.LVL157:
	or	a4, a6, a9
	or	a2, a2, a10
	and	a9, a6, a9
	and	a12, a4, a12
.LVL158:
	add.n	a6, a5, a2
	or	a12, a12, a9
	movi.n	a2, 1
	bltu	a6, a5, .L165
	movi.n	a2, 0
.L165:
	add.n	a3, a3, a12
	add.n	a11, a6, a11
	add.n	a3, a2, a3
	movi.n	a4, 1
	bltu	a11, a6, .L166
	movi.n	a4, 0
.L166:
	add.n	a3, a3, a8
	l32i.n	a2, sp, 48
	add.n	a8, a4, a3
	l32i.n	a15, sp, 0
	movi	a3, 0x80
	add.n	a2, a2, a3
	.loc 1 138 0 discriminator 1
	l32i	a4, sp, 108
	.loc 1 137 0 discriminator 1
	s32i.n	a11, a15, 0
	s32i.n	a8, a15, 4
	s32i.n	a2, sp, 48
	.loc 1 138 0 discriminator 1
	bnei	a4, 64, .L167
	l32i	a2, sp, 112
	mov.n	a5, a15
	.loc 1 159 0
	movi.n	a7, 8
.LVL159:
.L169:
	.loc 1 159 0 is_stmt 0 discriminator 3
	l32i.n	a9, a2, 0
	l32i.n	a6, a5, 0
	l32i.n	a3, a2, 4
	add.n	a6, a9, a6
	l32i.n	a4, a5, 4
	movi.n	a8, 1
	bltu	a6, a9, .L168
	movi.n	a8, 0
.L168:
	add.n	a3, a3, a4
	add.n	a3, a8, a3
	s32i.n	a6, a2, 0
	s32i.n	a3, a2, 4
	addi.n	a5, a5, 8
	addi.n	a2, a2, 8
	addi.n	a7, a7, -1
	bnez.n	a7, .L169
	.loc 1 161 0 is_stmt 1
	retw.n
.LFE14:
	.size	SHA512_Transform, .-SHA512_Transform
	.section	.text.crypto_hash_sha512_update$part$0,"ax",@progbits
	.literal_position
	.align	4
	.type	crypto_hash_sha512_update$part$0, @function
crypto_hash_sha512_update$part$0:
.LFB20:
	.loc 1 210 0
.LVL160:
	entry	sp, 752
.LCFI2:
	.loc 1 221 0
	l32i	a11, a2, 72
	.loc 1 223 0
	slli	a12, a4, 3
	extui	a9, a4, 29, 3
	slli	a8, a5, 3
	.loc 1 225 0
	add.n	a10, a11, a12
	.loc 1 223 0
	or	a8, a9, a8
	.loc 1 221 0
	l32i	a6, a2, 76
	extui	a7, a11, 3, 7
.LVL161:
	.loc 1 224 0
	extui	a9, a5, 29, 3
.LVL162:
	.loc 1 225 0
	movi.n	a13, 1
	bltu	a10, a11, .L175
	movi.n	a13, 0
.L175:
	add.n	a6, a6, a8
	add.n	a6, a13, a6
	s32i	a10, a2, 72
	s32i	a6, a2, 76
	bltu	a6, a8, .L196
	bne	a8, a6, .L176
	bgeu	a10, a12, .L176
.L196:
	.loc 1 226 0
	l32i	a11, a2, 64
	l32i	a6, a2, 68
	addi.n	a8, a11, 1
.LVL163:
	movi.n	a10, 1
	bltu	a8, a11, .L178
	movi.n	a10, 0
.L178:
	add.n	a6, a10, a6
	s32i	a8, a2, 64
	s32i	a6, a2, 68
.L176:
	.loc 1 228 0
	l32i	a10, a2, 64
	l32i	a8, a2, 68
	add.n	a6, a10, a9
	movi.n	a9, 1
.LVL164:
	bltu	a6, a10, .L179
	movi.n	a9, 0
.L179:
	add.n	a8, a9, a8
	s32i	a8, a2, 68
	.loc 1 229 0
	movi	a8, 0x80
	.loc 1 228 0
	s32i	a6, a2, 64
	.loc 1 229 0
	sub	a6, a8, a7
	movi.n	a9, 1
	bltu	a8, a6, .L180
	movi.n	a9, 0
.L180:
	neg	a9, a9
	add.n	a8, a2, a7
	bltu	a5, a9, .L197
	bne	a9, a5, .L181
	bgeu	a4, a6, .L181
.L197:
	add.n	a4, a3, a4
.LVL165:
	j	.L183
.LVL166:
.L184:
	.loc 1 231 0
	l8ui	a2, a3, 0
	addi.n	a3, a3, 1
	s8i	a2, a8, 79
.L183:
	addi.n	a8, a8, 1
	.loc 1 230 0
	bne	a3, a4, .L184
	retw.n
.LVL167:
.L181:
	mov.n	a9, a3
	loop	a6, .L186_LEND
.L186:
	.loc 1 236 0
	l8ui	a10, a9, 0
	addi.n	a8, a8, 1
	s8i	a10, a8, 79
.LVL168:
	addi.n	a9, a9, 1
	.L186_LEND:
	.loc 1 238 0
	addi	a6, a2, 80
	movi	a13, 0x280
	add.n	a13, sp, a13
	mov.n	a12, sp
.LVL169:
	mov.n	a11, a6
	mov.n	a10, a2
	call8	SHA512_Transform
.LVL170:
	.loc 1 239 0
	movi	a8, 0x80
	sub	a8, a8, a7
	.loc 1 240 0
	addi	a7, a7, -128
.LVL171:
	add.n	a4, a7, a4
.LVL172:
	.loc 1 239 0
	add.n	a3, a3, a8
.LVL173:
	.loc 1 240 0
	movi.n	a9, -1
	movi.n	a8, 1
	bltu	a4, a7, .L188
	movi.n	a8, 0
.L188:
	add.n	a5, a9, a5
.LVL174:
	add.n	a5, a8, a5
.LVL175:
	mov.n	a7, a5
.LVL176:
	mov.n	a8, a4
	.loc 1 239 0
	mov.n	a9, a3
	.loc 1 242 0
	movi	a14, 0x7f
	.loc 1 244 0
	movi	a15, 0x80
	j	.L189
.LVL177:
.L191:
	.loc 1 243 0
	movi	a13, 0x280
	mov.n	a11, a9
	mov.n	a10, a2
	add.n	a13, a13, sp
	mov.n	a12, sp
	s32i	a8, sp, 708
	s32i	a9, sp, 704
	s32i	a14, sp, 712
	s32i	a15, sp, 716
	call8	SHA512_Transform
.LVL178:
	.loc 1 245 0
	l32i	a8, sp, 708
	.loc 1 244 0
	l32i	a9, sp, 704
	l32i	a15, sp, 716
	.loc 1 245 0
	addi	a11, a8, -128
	.loc 1 244 0
	add.n	a9, a9, a15
.LVL179:
	.loc 1 245 0
	movi.n	a10, 1
	l32i	a14, sp, 712
	bltu	a11, a8, .L190
	movi.n	a10, 0
.L190:
	addi.n	a7, a7, -1
	mov.n	a8, a11
	add.n	a7, a10, a7
.LVL180:
.L189:
	.loc 1 242 0
	bnez.n	a7, .L191
	bltu	a14, a8, .L191
	srli	a7, a4, 7
.LVL181:
	slli	a5, a5, 25
	or	a7, a5, a7
	slli	a2, a7, 7
.LVL182:
	add.n	a3, a3, a2
	sub	a4, a4, a2
	mov.n	a7, a2
	add.n	a4, a3, a4
	j	.L194
.LVL183:
.L195:
	.loc 1 249 0
	l8ui	a2, a3, 0
	addi.n	a3, a3, 1
	s8i	a2, a6, 0
	addi.n	a6, a6, 1
.L194:
	.loc 1 248 0
	bne	a3, a4, .L195
	.loc 1 251 0
	movi	a11, 0x2c0
	mov.n	a10, sp
	call8	sodium_memzero
.LVL184:
	.loc 1 254 0
	retw.n
.LFE20:
	.size	crypto_hash_sha512_update$part$0, .-crypto_hash_sha512_update$part$0
	.section	.text.crypto_hash_sha512_init,"ax",@progbits
	.literal_position
	.literal .LC7, 0, 0
	.literal .LC8, sha512_initial_state$2506
	.align	4
	.global	crypto_hash_sha512_init
	.type	crypto_hash_sha512_init, @function
crypto_hash_sha512_init:
.LFB16:
	.loc 1 196 0
.LVL185:
	entry	sp, 32
.LCFI3:
	.loc 1 203 0
	l32r	a8, .LC7
	l32r	a9, .LC7+4
	.loc 1 204 0
	l32r	a11, .LC8
	.loc 1 203 0
	s32i	a8, a2, 72
	s32i	a9, a2, 76
	s32i	a8, a2, 64
	s32i	a9, a2, 68
	.loc 1 196 0
	mov.n	a10, a2
	.loc 1 204 0
	movi.n	a12, 0x40
	call8	memcpy
.LVL186:
	.loc 1 207 0
	movi.n	a2, 0
.LVL187:
	retw.n
.LFE16:
	.size	crypto_hash_sha512_init, .-crypto_hash_sha512_init
	.section	.text.crypto_hash_sha512_update,"ax",@progbits
	.align	4
	.global	crypto_hash_sha512_update
	.type	crypto_hash_sha512_update, @function
crypto_hash_sha512_update:
.LFB17:
	.loc 1 212 0
.LVL188:
	entry	sp, 32
.LCFI4:
	.loc 1 218 0
	or	a8, a4, a5
	.loc 1 212 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	.loc 1 218 0
	beqz.n	a8, .L202
	call8	crypto_hash_sha512_update$part$0
.LVL189:
.L202:
	.loc 1 254 0
	movi.n	a2, 0
.LVL190:
	retw.n
.LFE17:
	.size	crypto_hash_sha512_update, .-crypto_hash_sha512_update
	.section	.text.crypto_hash_sha512_final,"ax",@progbits
	.literal_position
	.literal .LC10, PAD
	.align	4
	.global	crypto_hash_sha512_final
	.type	crypto_hash_sha512_final, @function
crypto_hash_sha512_final:
.LFB18:
	.loc 1 258 0
.LVL191:
	entry	sp, 736
.LCFI5:
.LVL192:
.LBB656:
.LBB657:
	.loc 1 178 0
	l32i	a4, a2, 72
	.loc 1 179 0
	movi	a10, 0x6f
	.loc 1 178 0
	extui	a4, a4, 3, 7
.LVL193:
	l32r	a9, .LC10
	add.n	a8, a2, a4
	.loc 1 179 0
	bgeu	a10, a4, .L216
	movi	a4, 0x81
.LVL194:
	add.n	a4, a2, a4
	j	.L210
.LVL195:
.L216:
	addi	a4, a2, 113
.LVL196:
	j	.L211
.LVL197:
.L212:
	.loc 1 181 0
	l8ui	a10, a9, 0
	addi.n	a9, a9, 1
	s8i	a10, a8, 79
.L211:
	addi.n	a8, a8, 1
	.loc 1 180 0
	bne	a8, a4, .L212
	j	.L213
.L214:
	.loc 1 185 0
	l8ui	a10, a9, 0
	addi.n	a9, a9, 1
	s8i	a10, a8, 79
.L210:
	addi.n	a8, a8, 1
	.loc 1 184 0
	bne	a8, a4, .L214
	.loc 1 187 0
	addi	a4, a2, 80
	movi	a13, 0x280
	mov.n	a12, sp
.LVL198:
	mov.n	a11, a4
	mov.n	a10, a2
	add.n	a13, sp, a13
	call8	SHA512_Transform
.LVL199:
	.loc 1 188 0
	movi	a12, 0x70
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL200:
.L213:
	.loc 1 190 0
	movi	a10, 0xc0
	addi	a11, a2, 64
	add.n	a10, a2, a10
	movi.n	a12, 0x10
	call8	be64enc_vect
.LVL201:
	.loc 1 191 0
	movi	a13, 0x280
	add.n	a13, sp, a13
	mov.n	a12, sp
.LVL202:
	addi	a11, a2, 80
	mov.n	a10, a2
	call8	SHA512_Transform
.LVL203:
.LBE657:
.LBE656:
	.loc 1 262 0
	movi.n	a12, 0x40
	mov.n	a11, a2
	mov.n	a10, a3
	call8	be64enc_vect
.LVL204:
	.loc 1 263 0
	mov.n	a10, sp
.LVL205:
	movi	a11, 0x2c0
	call8	sodium_memzero
.LVL206:
	.loc 1 264 0
	mov.n	a10, a2
	movi	a11, 0xd0
	call8	sodium_memzero
.LVL207:
	.loc 1 267 0
	movi.n	a2, 0
.LVL208:
	retw.n
.LFE18:
	.size	crypto_hash_sha512_final, .-crypto_hash_sha512_final
	.section	.text.crypto_hash_sha512,"ax",@progbits
	.align	4
	.global	crypto_hash_sha512
	.type	crypto_hash_sha512, @function
crypto_hash_sha512:
.LFB19:
	.loc 1 272 0
.LVL209:
	entry	sp, 240
.LCFI6:
	.loc 1 275 0
	mov.n	a10, sp
	call8	crypto_hash_sha512_init
.LVL210:
	.loc 1 276 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL211:
	.loc 1 277 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL212:
	.loc 1 280 0
	movi.n	a2, 0
.LVL213:
	retw.n
.LFE19:
	.size	crypto_hash_sha512, .-crypto_hash_sha512
	.section	.rodata.sha512_initial_state$2506,"a",@progbits
	.align	8
	.type	sha512_initial_state$2506, @object
	.size	sha512_initial_state$2506, 64
sha512_initial_state$2506:
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
	.section	.rodata.PAD,"a",@progbits
	.type	PAD, @object
	.size	PAD, 128
PAD:
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.Krnd,"a",@progbits
	.align	8
	.type	Krnd, @object
	.size	Krnd, 640
Krnd:
	.word	-685199838
	.word	1116352408
	.word	602891725
	.word	1899447441
	.word	-330482897
	.word	-1245643825
	.word	-2121671748
	.word	-373957723
	.word	-213338824
	.word	961987163
	.word	-1241133031
	.word	1508970993
	.word	-1357295717
	.word	-1841331548
	.word	-630357736
	.word	-1424204075
	.word	-1560083902
	.word	-670586216
	.word	1164996542
	.word	310598401
	.word	1323610764
	.word	607225278
	.word	-704662302
	.word	1426881987
	.word	-226784913
	.word	1925078388
	.word	991336113
	.word	-2132889090
	.word	633803317
	.word	-1680079193
	.word	-815192428
	.word	-1046744716
	.word	-1628353838
	.word	-459576895
	.word	944711139
	.word	-272742522
	.word	-1953704523
	.word	264347078
	.word	2007800933
	.word	604807628
	.word	1495990901
	.word	770255983
	.word	1856431235
	.word	1249150122
	.word	-1119749164
	.word	1555081692
	.word	-2096016459
	.word	1996064986
	.word	-295247957
	.word	-1740746414
	.word	766784016
	.word	-1473132947
	.word	-1728372417
	.word	-1341970488
	.word	-1091629340
	.word	-1084653625
	.word	1034457026
	.word	-958395405
	.word	-1828018395
	.word	-710438585
	.word	-536640913
	.word	113926993
	.word	168717936
	.word	338241895
	.word	1188179964
	.word	666307205
	.word	1546045734
	.word	773529912
	.word	1522805485
	.word	1294757372
	.word	-1651133473
	.word	1396182291
	.word	-1951439906
	.word	1695183700
	.word	1014477480
	.word	1986661051
	.word	1206759142
	.word	-2117940946
	.word	344077627
	.word	-1838011259
	.word	1290863460
	.word	-1564481375
	.word	-1136513023
	.word	-1474664885
	.word	-789014639
	.word	-1035236496
	.word	106217008
	.word	-949202525
	.word	-688958952
	.word	-778901479
	.word	1432725776
	.word	-694614492
	.word	1467031594
	.word	-200395387
	.word	851169720
	.word	275423344
	.word	-1194143544
	.word	430227734
	.word	1363258195
	.word	506948616
	.word	-544281703
	.word	659060556
	.word	-509917016
	.word	883997877
	.word	-976659869
	.word	958139571
	.word	-482243893
	.word	1322822218
	.word	2003034995
	.word	1537002063
	.word	-692930397
	.word	1747873779
	.word	1575990012
	.word	1955562222
	.word	1125592928
	.word	2024104815
	.word	-1578062990
	.word	-2067236844
	.word	442776044
	.word	-1933114872
	.word	593698344
	.word	-1866530822
	.word	-561857047
	.word	-1538233109
	.word	-1295615723
	.word	-1090935817
	.word	-479046869
	.word	-965641998
	.word	-366583396
	.word	-903397682
	.word	566280711
	.word	-779700025
	.word	-840897762
	.word	-354779690
	.word	-294727304
	.word	-176337025
	.word	1914138554
	.word	116418474
	.word	-1563912026
	.word	174292421
	.word	-1090974290
	.word	289380356
	.word	320620315
	.word	460393269
	.word	587496836
	.word	685471733
	.word	1086792851
	.word	852142971
	.word	365543100
	.word	1017036298
	.word	-1676669620
	.word	1126000580
	.word	-885112138
	.word	1288033470
	.word	-60457430
	.word	1501505948
	.word	987167468
	.word	1607167915
	.word	1246189591
	.word	1816402316
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0xa0
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
	.uleb128 0x2f0
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x2e0
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0xf0
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x12
	.4byte	0x3a
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x39
	.4byte	0x64
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd8
	.4byte	0x56
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0xd0
	.byte	0x6
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x6
	.byte	0x19
	.4byte	0xe3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0x1a
	.4byte	0xf3
	.byte	0x40
	.uleb128 0x8
	.string	"buf"
	.byte	0x6
	.byte	0x1b
	.4byte	0x103
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0xf3
	.uleb128 0xa
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x103
	.uleb128 0xa
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x6f
	.4byte	0x113
	.uleb128 0xa
	.4byte	0x97
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1c
	.4byte	0xb2
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x2
	.byte	0x21
	.4byte	0x7a
	.byte	0x3
	.4byte	0x141
	.uleb128 0xc
	.string	"x"
	.byte	0x2
	.byte	0x21
	.4byte	0x141
	.uleb128 0xc
	.string	"b"
	.byte	0x2
	.byte	0x21
	.4byte	0x146
	.byte	0
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x4f
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd2
	.4byte	0x4f
	.byte	0x1
	.4byte	0x1a4
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0xd2
	.4byte	0x1a4
	.uleb128 0xc
	.string	"in"
	.byte	0x1
	.byte	0xd3
	.4byte	0x1aa
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xd3
	.4byte	0x21
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd5
	.4byte	0x1b5
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0xd6
	.4byte	0xf3
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xd7
	.4byte	0x21
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xd8
	.4byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x113
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b0
	.uleb128 0xd
	.4byte	0x3a
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x1c5
	.uleb128 0xa
	.4byte	0x97
	.byte	0x57
	.byte	0
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x1fc
	.uleb128 0xc
	.string	"dst"
	.byte	0x1
	.byte	0x33
	.4byte	0x1fc
	.uleb128 0xc
	.string	"src"
	.byte	0x1
	.byte	0x33
	.4byte	0x1aa
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x33
	.4byte	0x85
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x35
	.4byte	0x85
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x2
	.byte	0x85
	.byte	0x3
	.4byte	0x223
	.uleb128 0xc
	.string	"dst"
	.byte	0x2
	.byte	0x85
	.4byte	0x223
	.uleb128 0xc
	.string	"w"
	.byte	0x2
	.byte	0x85
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29b
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x29
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0x29
	.4byte	0x29b
	.4byte	.LLST1
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x29
	.4byte	0x85
	.4byte	.LLST2
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x85
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	0x202
	.4byte	.LBB324
	.4byte	.LBE324-.LBB324
	.byte	0x1
	.byte	0x2e
	.uleb128 0x17
	.4byte	0x219
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	0x20e
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x141
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x2
	.byte	0x70
	.4byte	0x7a
	.byte	0x3
	.4byte	0x2c6
	.uleb128 0xc
	.string	"src"
	.byte	0x2
	.byte	0x70
	.4byte	0x2c6
	.uleb128 0x11
	.string	"w"
	.byte	0x2
	.byte	0x77
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2cc
	.uleb128 0xd
	.4byte	0x6f
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x72
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b6
	.uleb128 0x18
	.4byte	.LASF16
	.byte	0x1
	.byte	0x72
	.4byte	0x1fc
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x72
	.4byte	0x2c6
	.4byte	.LLST7
	.uleb128 0x14
	.string	"W"
	.byte	0x1
	.byte	0x72
	.4byte	0x1fc
	.4byte	.LLST8
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x73
	.4byte	0x1fc
	.4byte	.LLST9
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x75
	.4byte	0x4f
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	0x1c5
	.4byte	.LBB650
	.4byte	.LBE650-.LBB650
	.byte	0x1
	.byte	0x77
	.4byte	0x396
	.uleb128 0x1a
	.4byte	0x1e7
	.byte	0x80
	.uleb128 0x17
	.4byte	0x1dc
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	0x1d1
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LBB651
	.4byte	.LBE651-.LBB651
	.uleb128 0x1c
	.4byte	0x1f2
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	0x2a1
	.4byte	.LBB652
	.4byte	.LBE652-.LBB652
	.byte	0x1
	.byte	0x38
	.uleb128 0x17
	.4byte	0x2b1
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LBB653
	.4byte	.LBE653-.LBB653
	.uleb128 0x1c
	.4byte	0x2bc
	.4byte	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0x791
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x14b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x463
	.uleb128 0x17
	.4byte	0x15b
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	0x166
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	0x170
	.4byte	.LLST18
	.uleb128 0x20
	.4byte	0x17b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x1c
	.4byte	0x186
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	0x191
	.uleb128 0x21
	.4byte	0x19a
	.uleb128 0x22
	.4byte	.LVL170
	.4byte	0x2d1
	.4byte	0x428
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x22
	.4byte	.LVL178
	.4byte	0x2d1
	.4byte	0x44a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL184
	.4byte	0x79a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2c0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc3
	.4byte	0x4f
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc
	.uleb128 0x18
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc3
	.4byte	0x1a4
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc5
	.4byte	0x4bc
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_initial_state$2506
	.uleb128 0x1d
	.4byte	.LVL186
	.4byte	0x791
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_initial_state$2506
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xe3
	.uleb128 0x1f
	.4byte	0x14b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51b
	.uleb128 0x17
	.4byte	0x15b
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	0x166
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	0x170
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	0x17b
	.uleb128 0x21
	.4byte	0x186
	.uleb128 0x21
	.4byte	0x191
	.uleb128 0x21
	.4byte	0x19a
	.uleb128 0x1d
	.4byte	.LVL189
	.4byte	0x3b6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.4byte	0x550
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0xad
	.4byte	0x1a4
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xad
	.4byte	0x1fc
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xaf
	.4byte	0x7a
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xb0
	.4byte	0x7a
	.byte	0
	.uleb128 0x26
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x101
	.4byte	0x4f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b3
	.uleb128 0x27
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x101
	.4byte	0x1a4
	.4byte	.LLST22
	.uleb128 0x28
	.string	"out"
	.byte	0x1
	.2byte	0x101
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x103
	.4byte	0x1b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x2a
	.4byte	0x51b
	.4byte	.LBB656
	.4byte	.LBE656-.LBB656
	.byte	0x1
	.2byte	0x105
	.4byte	0x660
	.uleb128 0x17
	.4byte	0x532
	.4byte	.LLST23
	.uleb128 0x17
	.4byte	0x527
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LBB657
	.4byte	.LBE657-.LBB657
	.uleb128 0x21
	.4byte	0x53d
	.uleb128 0x21
	.4byte	0x546
	.uleb128 0x22
	.4byte	.LVL199
	.4byte	0x2d1
	.4byte	0x5f9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL200
	.4byte	0x7a5
	.4byte	0x618
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x22
	.4byte	.LVL201
	.4byte	0x229
	.4byte	0x639
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 192
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL203
	.4byte	0x2d1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL204
	.4byte	0x229
	.4byte	0x680
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.4byte	.LVL206
	.4byte	0x79a
	.4byte	0x69c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2c0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL207
	.4byte	0x79a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x10e
	.4byte	0x4f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x755
	.uleb128 0x2b
	.string	"out"
	.byte	0x1
	.2byte	0x10e
	.4byte	0xa5
	.4byte	.LLST25
	.uleb128 0x28
	.string	"in"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x1aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x10f
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x29
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x111
	.4byte	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x22
	.4byte	.LVL210
	.4byte	0x463
	.4byte	0x722
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x22
	.4byte	.LVL211
	.4byte	0x14b
	.4byte	0x73d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL212
	.4byte	0x550
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x765
	.uleb128 0xa
	.4byte	0x97
	.byte	0x4f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3c
	.4byte	0x776
	.uleb128 0x5
	.byte	0x3
	.4byte	Krnd
	.uleb128 0xd
	.4byte	0x755
	.uleb128 0x2d
	.string	"PAD"
	.byte	0x1
	.byte	0xa3
	.4byte	0x78c
	.uleb128 0x5
	.byte	0x3
	.4byte	PAD
	.uleb128 0xd
	.4byte	0x103
	.uleb128 0x2e
	.4byte	.LASF35
	.4byte	.LASF35
	.uleb128 0x2f
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x16
	.uleb128 0x2e
	.4byte	.LASF36
	.4byte	.LASF36
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL91
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL160
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x4
	.byte	0x76
	.sleb128 -80
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL160
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177
	.4byte	.LVL178-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL179
	.4byte	.LVL184-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL172
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL177
	.4byte	.LVL178-1
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL191
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL192
	.4byte	.LVL198
	.2byte	0x4
	.byte	0x91
	.sleb128 -736
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL199-1
	.4byte	.LVL202
	.2byte	0x4
	.byte	0x91
	.sleb128 -736
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL203-1
	.4byte	.LVL205
	.2byte	0x4
	.byte	0x91
	.sleb128 -736
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL206-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0x91
	.sleb128 -736
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL192
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"char"
.LASF7:
	.string	"__uint8_t"
.LASF23:
	.string	"store64_be"
.LASF16:
	.string	"state"
.LASF31:
	.string	"crypto_hash_sha512_init"
.LASF17:
	.string	"count"
.LASF36:
	.string	"memset"
.LASF10:
	.string	"uint64_t"
.LASF27:
	.string	"SHA512_Transform"
.LASF24:
	.string	"rotr64"
.LASF28:
	.string	"block"
.LASF37:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF11:
	.string	"size_t"
.LASF20:
	.string	"tmp64"
.LASF25:
	.string	"load64_be"
.LASF19:
	.string	"inlen"
.LASF21:
	.string	"bitlen"
.LASF26:
	.string	"be64enc_vect"
.LASF38:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_hash/sha512/cp/hash_sha512_cp.c"
.LASF18:
	.string	"crypto_hash_sha512_state"
.LASF5:
	.string	"unsigned int"
.LASF32:
	.string	"crypto_hash_sha512_final"
.LASF0:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF13:
	.string	"sizetype"
.LASF34:
	.string	"Krnd"
.LASF6:
	.string	"long long int"
.LASF35:
	.string	"memcpy"
.LASF33:
	.string	"crypto_hash_sha512"
.LASF39:
	.string	"crypto_hash_sha512_update"
.LASF3:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF12:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF22:
	.string	"be64dec_vect"
.LASF40:
	.string	"sodium_memzero"
.LASF29:
	.string	"sha512_initial_state"
.LASF30:
	.string	"SHA512_Pad"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
