	.file	"hash_sha256_cp.c"
	.text
.Ltext0:
	.section	.text.SHA256_Transform,"ax",@progbits
	.literal_position
	.literal .LC3, Krnd
	.align	4
	.type	SHA256_Transform, @function
SHA256_Transform:
.LFB14:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_hash/sha256/cp/hash_sha256_cp.c"
	.loc 1 100 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 100 0
	s32i.n	a2, sp, 4
	mov.n	a9, a4
	movi.n	a8, 0x10
	loop	a8, .L2_LEND
.LVL2:
.L2:
.LBB646:
.LBB647:
.LBB648:
.LBB649:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 160 0
	l8ui	a6, a3, 2
	l8ui	a2, a3, 1
	.loc 2 158 0
	l8ui	a7, a3, 3
.LVL3:
	.loc 2 160 0
	slli	a6, a6, 8
	slli	a2, a2, 16
	or	a2, a6, a2
	or	a6, a2, a7
.LVL4:
.LBE649:
.LBE648:
	.loc 1 56 0
	l8ui	a2, a3, 0
	addi.n	a3, a3, 4
.LVL5:
	slli	a2, a2, 24
	or	a2, a2, a6
.LVL6:
	s32i.n	a2, a9, 0
	addi.n	a9, a9, 4
	.L2_LEND:
.LBE647:
.LBE646:
	.loc 1 104 0
	l32i.n	a11, sp, 4
	movi.n	a12, 0x20
	mov.n	a10, a5
	call8	memcpy
.LVL7:
	.loc 1 105 0
	movi.n	a2, 0
.LVL8:
	l32r	a8, .LC3
	s32i.n	a2, sp, 0
	j	.L3
.LVL9:
.L4:
	.loc 1 125 0 discriminator 2
	l32i.n	a3, a4, 56
	l32i.n	a10, a4, 36
	ssai	19
	src	a2, a3, a3
	ssai	17
	src	a9, a3, a3
.LVL10:
	xor	a9, a9, a2
	l32i.n	a2, a4, 0
	l32i.n	a6, a4, 4
.LVL11:
	srli	a3, a3, 10
	xor	a9, a9, a3
	add.n	a2, a10, a2
	add.n	a2, a9, a2
	ssai	18
	src	a3, a6, a6
	ssai	7
	src	a9, a6, a6
	.loc 1 126 0 discriminator 2
	l32i.n	a11, a4, 60
.LVL12:
	.loc 1 125 0 discriminator 2
	xor	a9, a9, a3
	srli	a3, a6, 3
	xor	a9, a9, a3
	add.n	a9, a2, a9
	.loc 1 126 0 discriminator 2
	l32i.n	a12, a4, 40
.LVL13:
	ssai	19
	src	a2, a11, a11
	ssai	17
	src	a7, a11, a11
	l32i.n	a3, a4, 8
.LVL14:
	xor	a7, a7, a2
	srli	a2, a11, 10
	xor	a2, a7, a2
	add.n	a6, a6, a12
.LVL15:
	add.n	a6, a2, a6
	ssai	7
	src	a7, a3, a3
	ssai	18
	src	a2, a3, a3
	xor	a7, a7, a2
	srli	a2, a3, 3
	xor	a2, a7, a2
	.loc 1 127 0 discriminator 2
	ssai	17
	src	a15, a9, a9
	ssai	19
	src	a7, a9, a9
	xor	a15, a15, a7
	srli	a7, a9, 10
	xor	a7, a15, a7
	l32i.n	a15, a4, 44
	.loc 1 126 0 discriminator 2
	add.n	a2, a6, a2
	.loc 1 127 0 discriminator 2
	l32i.n	a6, a4, 12
	add.n	a3, a3, a15
.LVL16:
	add.n	a3, a7, a3
	ssai	7
	src	a15, a6, a6
	ssai	18
	src	a7, a6, a6
	xor	a15, a15, a7
	srli	a7, a6, 3
	.loc 1 128 0 discriminator 2
	l32i.n	a10, a4, 48
	.loc 1 127 0 discriminator 2
	xor	a15, a15, a7
	.loc 1 128 0 discriminator 2
	ssai	17
	src	a14, a2, a2
	ssai	19
	src	a7, a2, a2
	.loc 1 127 0 discriminator 2
	add.n	a15, a3, a15
	.loc 1 128 0 discriminator 2
	xor	a14, a14, a7
	l32i.n	a3, a4, 16
	srli	a7, a2, 10
	xor	a7, a14, a7
	add.n	a6, a6, a10
	add.n	a6, a7, a6
	ssai	7
	src	a14, a3, a3
	ssai	18
	src	a7, a3, a3
	xor	a14, a14, a7
	srli	a7, a3, 3
	.loc 1 129 0 discriminator 2
	l32i.n	a11, a4, 52
	.loc 1 128 0 discriminator 2
	xor	a14, a14, a7
	.loc 1 129 0 discriminator 2
	ssai	17
	src	a13, a15, a15
	ssai	19
	src	a7, a15, a15
	.loc 1 128 0 discriminator 2
	add.n	a14, a6, a14
	.loc 1 129 0 discriminator 2
	xor	a13, a13, a7
	l32i.n	a6, a4, 20
	srli	a7, a15, 10
	xor	a7, a13, a7
	add.n	a3, a3, a11
	add.n	a3, a7, a3
	ssai	7
	src	a13, a6, a6
	ssai	18
	src	a7, a6, a6
	xor	a13, a13, a7
	srli	a7, a6, 3
	xor	a13, a13, a7
	.loc 1 130 0 discriminator 2
	ssai	17
	src	a12, a14, a14
	ssai	19
	src	a7, a14, a14
	xor	a12, a12, a7
	srli	a7, a14, 10
	xor	a7, a12, a7
	l32i.n	a12, a4, 56
	.loc 1 129 0 discriminator 2
	add.n	a13, a3, a13
	.loc 1 130 0 discriminator 2
	l32i.n	a3, a4, 24
	add.n	a6, a12, a6
	add.n	a6, a7, a6
	ssai	7
	src	a12, a3, a3
	ssai	18
	src	a7, a3, a3
	xor	a12, a12, a7
	srli	a7, a3, 3
	.loc 1 131 0 discriminator 2
	l32i.n	a10, a4, 60
	.loc 1 130 0 discriminator 2
	xor	a12, a12, a7
	.loc 1 131 0 discriminator 2
	ssai	17
	src	a11, a13, a13
	ssai	19
	src	a7, a13, a13
	.loc 1 130 0 discriminator 2
	add.n	a12, a6, a12
	.loc 1 131 0 discriminator 2
	xor	a11, a11, a7
	l32i.n	a6, a4, 28
	srli	a7, a13, 10
	xor	a7, a11, a7
	add.n	a3, a10, a3
	add.n	a3, a7, a3
	ssai	7
	src	a11, a6, a6
	ssai	18
	src	a7, a6, a6
	xor	a11, a11, a7
	srli	a7, a6, 3
	xor	a11, a11, a7
	.loc 1 132 0 discriminator 2
	ssai	17
	src	a10, a12, a12
	ssai	19
	src	a7, a12, a12
	.loc 1 131 0 discriminator 2
	add.n	a11, a3, a11
	.loc 1 132 0 discriminator 2
	xor	a10, a10, a7
	l32i.n	a3, a4, 32
	srli	a7, a12, 10
	xor	a7, a10, a7
	add.n	a6, a9, a6
	add.n	a6, a7, a6
	ssai	7
	src	a10, a3, a3
	ssai	18
	src	a7, a3, a3
	xor	a10, a10, a7
	srli	a7, a3, 3
	xor	a10, a10, a7
	add.n	a10, a6, a10
	.loc 1 133 0 discriminator 2
	ssai	17
	src	a7, a11, a11
	ssai	19
	src	a6, a11, a11
	xor	a7, a7, a6
	srli	a6, a11, 10
	.loc 1 126 0 discriminator 2
	s32i	a2, a4, 68
.LVL17:
	.loc 1 133 0 discriminator 2
	xor	a6, a7, a6
	add.n	a2, a2, a3
	add.n	a6, a6, a2
	l32i.n	a2, a4, 36
	l32i.n	a3, a4, 36
	ssai	7
	src	a7, a2, a2
	ssai	18
	src	a2, a2, a2
	xor	a7, a7, a2
	srli	a2, a3, 3
	xor	a2, a7, a2
	add.n	a2, a6, a2
	.loc 1 134 0 discriminator 2
	ssai	19
	src	a3, a10, a10
	ssai	17
	src	a6, a10, a10
	xor	a6, a6, a3
	srli	a3, a10, 10
	xor	a3, a6, a3
	l32i.n	a6, a4, 36
	.loc 1 127 0 discriminator 2
	s32i	a15, a4, 72
.LVL18:
	.loc 1 134 0 discriminator 2
	add.n	a15, a6, a15
	add.n	a7, a3, a15
	l32i.n	a3, a4, 40
	.loc 1 125 0 discriminator 2
	s32i	a9, a4, 64
	.loc 1 134 0 discriminator 2
	ssai	18
	src	a6, a3, a3
	ssai	7
	src	a15, a3, a3
	xor	a15, a15, a6
	srli	a6, a3, 3
	xor	a15, a15, a6
	.loc 1 135 0 discriminator 2
	ssai	19
	src	a3, a2, a2
	ssai	17
	src	a6, a2, a2
	.loc 1 134 0 discriminator 2
	add.n	a15, a7, a15
	.loc 1 135 0 discriminator 2
	xor	a6, a6, a3
	srli	a3, a2, 10
	.loc 1 128 0 discriminator 2
	s32i	a14, a4, 76
.LVL19:
	.loc 1 129 0 discriminator 2
	s32i	a13, a4, 80
.LVL20:
	.loc 1 130 0 discriminator 2
	s32i	a12, a4, 84
.LVL21:
	.loc 1 131 0 discriminator 2
	s32i	a11, a4, 88
.LVL22:
	.loc 1 132 0 discriminator 2
	s32i	a10, a4, 92
.LVL23:
	.loc 1 133 0 discriminator 2
	s32i	a2, a4, 96
.LVL24:
	.loc 1 134 0 discriminator 2
	s32i	a15, a4, 100
.LVL25:
	.loc 1 135 0 discriminator 2
	xor	a6, a6, a3
	l32i.n	a3, a4, 40
	add.n	a14, a3, a14
.LVL26:
	add.n	a7, a6, a14
	l32i.n	a6, a4, 44
	ssai	18
	src	a3, a6, a6
	ssai	7
	src	a14, a6, a6
	xor	a14, a14, a3
	srli	a3, a6, 3
	xor	a14, a14, a3
	.loc 1 136 0 discriminator 2
	ssai	17
	src	a6, a15, a15
	ssai	19
	src	a3, a15, a15
	xor	a3, a6, a3
	srli	a15, a15, 10
	xor	a3, a3, a15
	l32i.n	a15, a4, 44
	l32i.n	a6, a4, 48
	add.n	a13, a15, a13
.LVL27:
	l32i.n	a15, a4, 48
	add.n	a3, a3, a13
	ssai	7
	src	a13, a6, a6
	ssai	18
	src	a6, a6, a6
	.loc 1 135 0 discriminator 2
	add.n	a14, a7, a14
	.loc 1 136 0 discriminator 2
	xor	a13, a13, a6
	srli	a7, a15, 3
	xor	a13, a13, a7
	add.n	a13, a3, a13
	.loc 1 137 0 discriminator 2
	ssai	17
	src	a6, a14, a14
	ssai	19
	src	a3, a14, a14
	.loc 1 135 0 discriminator 2
	s32i	a14, a4, 104
.LVL28:
	.loc 1 137 0 discriminator 2
	xor	a3, a6, a3
	srli	a14, a14, 10
	add.n	a12, a15, a12
.LVL29:
	xor	a3, a3, a14
	add.n	a14, a3, a12
	l32i.n	a3, a4, 52
	l32i.n	a6, a4, 52
	ssai	7
	src	a7, a3, a3
	ssai	18
	src	a3, a3, a3
	xor	a3, a7, a3
	srli	a7, a6, 3
	.loc 1 138 0 discriminator 2
	l32i.n	a12, a4, 52
	.loc 1 137 0 discriminator 2
	xor	a3, a3, a7
	.loc 1 138 0 discriminator 2
	ssai	19
	src	a6, a13, a13
	ssai	17
	src	a7, a13, a13
	l32i.n	a15, a4, 56
.LVL30:
	.loc 1 136 0 discriminator 2
	s32i	a13, a4, 108
.LVL31:
	.loc 1 138 0 discriminator 2
	xor	a6, a7, a6
	srli	a13, a13, 10
	xor	a6, a6, a13
	add.n	a13, a12, a11
	add.n	a6, a6, a13
	ssai	18
	src	a7, a15, a15
	ssai	7
	src	a13, a15, a15
	xor	a13, a13, a7
	srli	a12, a15, 3
.LVL32:
	.loc 1 137 0 discriminator 2
	add.n	a3, a14, a3
	.loc 1 138 0 discriminator 2
	xor	a13, a13, a12
	add.n	a13, a6, a13
	.loc 1 139 0 discriminator 2
	ssai	17
	src	a7, a3, a3
	ssai	19
	src	a6, a3, a3
	.loc 1 137 0 discriminator 2
	s32i	a3, a4, 112
.LVL33:
	.loc 1 139 0 discriminator 2
	xor	a6, a7, a6
	srli	a3, a3, 10
	xor	a6, a6, a3
	add.n	a10, a15, a10
.LVL34:
	l32i.n	a3, a4, 60
	add.n	a10, a6, a10
	l32i.n	a6, a4, 60
	ssai	7
	src	a7, a3, a3
	ssai	18
	src	a3, a3, a3
	xor	a7, a7, a3
	srli	a3, a6, 3
	xor	a7, a7, a3
	add.n	a10, a10, a7
	s32i	a10, a4, 120
	.loc 1 140 0 discriminator 2
	ssai	17
	src	a6, a13, a13
	ssai	19
	src	a3, a13, a13
	l32i.n	a10, a4, 60
	.loc 1 138 0 discriminator 2
	s32i	a13, a4, 116
.LVL35:
	.loc 1 140 0 discriminator 2
	xor	a3, a6, a3
	srli	a13, a13, 10
.LVL36:
	xor	a13, a3, a13
	add.n	a2, a10, a2
.LVL37:
	add.n	a13, a13, a2
	ssai	7
	src	a3, a9, a9
	ssai	18
	src	a2, a9, a9
	xor	a2, a3, a2
	.loc 1 105 0 discriminator 2
	l32i.n	a11, sp, 0
.LVL38:
	.loc 1 140 0 discriminator 2
	srli	a9, a9, 3
.LVL39:
	xor	a9, a2, a9
	add.n	a2, a13, a9
	.loc 1 105 0 discriminator 2
	addi	a11, a11, 16
	.loc 1 140 0 discriminator 2
	s32i	a2, a4, 124
	.loc 1 105 0 discriminator 2
	s32i.n	a11, sp, 0
.LVL40:
	addi	a4, a4, 64
.LVL41:
.L3:
	.loc 1 106 0 discriminator 1
	l32i.n	a10, a5, 16
.LVL42:
	l32i.n	a2, a5, 20
	l32i.n	a6, a5, 24
	ssai	6
	src	a14, a10, a10
	ssai	11
	src	a3, a10, a10
	ssai	25
	src	a7, a10, a10
	xor	a3, a14, a3
	xor	a14, a3, a7
	xor	a3, a2, a6
	and	a3, a3, a10
	xor	a3, a3, a6
	add.n	a3, a14, a3
	l32i.n	a14, a5, 28
	l32i.n	a7, a4, 0
	l32i.n	a13, a8, 0
	add.n	a3, a3, a14
	add.n	a3, a3, a7
	add.n	a14, a3, a13
	l32i.n	a3, a5, 0
.LVL43:
	l32i.n	a11, a5, 4
	l32i.n	a7, a5, 8
	ssai	2
	src	a15, a3, a3
	ssai	13
	src	a12, a3, a3
	xor	a12, a15, a12
	or	a13, a11, a7
	ssai	22
	src	a15, a3, a3
	xor	a15, a12, a15
	and	a13, a13, a3
	and	a12, a11, a7
	l32i.n	a9, a5, 12
	or	a13, a13, a12
	add.n	a13, a15, a13
	add.n	a13, a13, a14
	add.n	a9, a14, a9
	s32i.n	a9, a5, 12
	s32i.n	a13, a5, 28
.LVL44:
	.loc 1 107 0 discriminator 1
	l32i.n	a15, a4, 4
	l32i.n	a12, a8, 4
	add.n	a12, a15, a12
	add.n	a6, a12, a6
	xor	a12, a10, a2
	and	a12, a12, a9
	xor	a14, a12, a2
	add.n	a12, a6, a14
	ssai	6
	src	a15, a9, a9
	ssai	11
	src	a6, a9, a9
	xor	a15, a15, a6
	ssai	25
	src	a6, a9, a9
	xor	a6, a15, a6
	add.n	a15, a12, a6
	ssai	2
	src	a14, a13, a13
	ssai	13
	src	a6, a13, a13
	xor	a6, a14, a6
	ssai	22
	src	a14, a13, a13
	xor	a14, a6, a14
	or	a6, a3, a11
	and	a12, a3, a11
	and	a6, a6, a13
	or	a6, a6, a12
	add.n	a6, a14, a6
	add.n	a6, a6, a15
	add.n	a7, a7, a15
	s32i.n	a7, a5, 8
.LVL45:
	s32i.n	a6, a5, 24
.LVL46:
	.loc 1 108 0 discriminator 1
	l32i.n	a14, a4, 8
	l32i.n	a12, a8, 8
	add.n	a12, a14, a12
	add.n	a2, a12, a2
	xor	a12, a10, a9
	and	a12, a12, a7
	xor	a15, a12, a10
	add.n	a12, a2, a15
	ssai	6
	src	a14, a7, a7
	ssai	11
	src	a2, a7, a7
	xor	a14, a14, a2
	ssai	25
	src	a2, a7, a7
	xor	a2, a14, a2
	add.n	a14, a12, a2
	ssai	2
	src	a15, a6, a6
	ssai	13
	src	a2, a6, a6
	xor	a2, a15, a2
	ssai	22
	src	a15, a6, a6
	xor	a15, a2, a15
	or	a2, a3, a13
	and	a12, a3, a13
	and	a2, a2, a6
	or	a2, a2, a12
	add.n	a2, a15, a2
	add.n	a2, a2, a14
	add.n	a11, a11, a14
	s32i.n	a11, a5, 4
.LVL47:
	s32i.n	a2, a5, 20
.LVL48:
	.loc 1 109 0 discriminator 1
	l32i.n	a12, a8, 12
	l32i.n	a14, a4, 12
	add.n	a14, a14, a12
	add.n	a10, a14, a10
.LVL49:
	xor	a14, a9, a7
	and	a14, a14, a11
	xor	a15, a14, a9
	add.n	a14, a10, a15
	ssai	6
	src	a12, a11, a11
	ssai	11
	src	a10, a11, a11
	xor	a12, a12, a10
	ssai	25
	src	a10, a11, a11
	xor	a10, a12, a10
	add.n	a12, a14, a10
	ssai	2
	src	a15, a2, a2
	ssai	13
	src	a10, a2, a2
	xor	a10, a15, a10
	ssai	22
	src	a15, a2, a2
	xor	a15, a10, a15
	or	a10, a13, a6
	and	a14, a13, a6
	and	a10, a10, a2
	or	a10, a10, a14
	add.n	a10, a15, a10
	add.n	a10, a10, a12
	add.n	a3, a3, a12
.LVL50:
	s32i.n	a3, a5, 0
.LVL51:
	s32i.n	a10, a5, 16
.LVL52:
	.loc 1 110 0 discriminator 1
	l32i.n	a12, a8, 16
	l32i.n	a14, a4, 16
	add.n	a14, a14, a12
	add.n	a9, a14, a9
.LVL53:
	xor	a14, a7, a11
	and	a14, a14, a3
	xor	a15, a14, a7
	add.n	a14, a9, a15
	ssai	6
	src	a12, a3, a3
	ssai	11
	src	a9, a3, a3
	xor	a12, a12, a9
	ssai	25
	src	a9, a3, a3
	xor	a9, a12, a9
	add.n	a12, a14, a9
	ssai	2
	src	a15, a10, a10
	ssai	13
	src	a9, a10, a10
	xor	a9, a15, a9
	ssai	22
	src	a15, a10, a10
	xor	a15, a9, a15
	or	a9, a6, a2
	and	a14, a6, a2
	and	a9, a9, a10
	or	a9, a9, a14
	add.n	a9, a15, a9
	add.n	a9, a9, a12
	add.n	a13, a13, a12
.LVL54:
	s32i.n	a13, a5, 28
.LVL55:
	s32i.n	a9, a5, 12
.LVL56:
	.loc 1 111 0 discriminator 1
	l32i.n	a12, a8, 20
	l32i.n	a14, a4, 20
	add.n	a14, a14, a12
	add.n	a7, a14, a7
.LVL57:
	xor	a14, a11, a3
	and	a14, a14, a13
	xor	a15, a14, a11
	add.n	a14, a7, a15
	ssai	6
	src	a12, a13, a13
	ssai	11
	src	a7, a13, a13
	xor	a12, a12, a7
	ssai	25
	src	a7, a13, a13
	xor	a7, a12, a7
	add.n	a12, a14, a7
	ssai	2
	src	a15, a9, a9
	ssai	13
	src	a7, a9, a9
	xor	a7, a15, a7
	ssai	22
	src	a15, a9, a9
	xor	a15, a7, a15
	or	a7, a2, a10
	and	a14, a2, a10
	and	a7, a7, a9
	or	a7, a7, a14
	add.n	a7, a15, a7
	add.n	a6, a6, a12
.LVL58:
	add.n	a7, a7, a12
	s32i.n	a6, a5, 24
.LVL59:
	s32i.n	a7, a5, 8
.LVL60:
	.loc 1 112 0 discriminator 1
	l32i.n	a14, a4, 24
	l32i.n	a12, a8, 24
	add.n	a14, a14, a12
	add.n	a11, a14, a11
.LVL61:
	xor	a14, a3, a13
	and	a14, a14, a6
	xor	a15, a14, a3
	add.n	a14, a11, a15
	ssai	6
	src	a12, a6, a6
	ssai	11
	src	a11, a6, a6
	xor	a12, a12, a11
	ssai	25
	src	a11, a6, a6
	xor	a12, a12, a11
	add.n	a11, a14, a12
	ssai	2
	src	a15, a7, a7
	ssai	13
	src	a12, a7, a7
	xor	a12, a15, a12
	ssai	22
	src	a15, a7, a7
	xor	a15, a12, a15
	or	a12, a10, a9
	and	a14, a10, a9
	and	a12, a12, a7
	or	a12, a12, a14
	add.n	a12, a15, a12
	add.n	a2, a2, a11
.LVL62:
	add.n	a12, a12, a11
	s32i.n	a2, a5, 20
.LVL63:
	s32i.n	a12, a5, 4
.LVL64:
	.loc 1 113 0 discriminator 1
	l32i.n	a11, a8, 28
	l32i.n	a14, a4, 28
	add.n	a14, a14, a11
	add.n	a3, a14, a3
.LVL65:
	xor	a14, a13, a6
	and	a14, a14, a2
	xor	a15, a14, a13
	add.n	a14, a3, a15
	ssai	6
	src	a11, a2, a2
	ssai	11
	src	a3, a2, a2
	xor	a11, a11, a3
	ssai	25
	src	a3, a2, a2
	ssai	2
	src	a15, a12, a12
	xor	a3, a11, a3
	ssai	13
	src	a11, a12, a12
	xor	a11, a15, a11
	ssai	22
	src	a15, a12, a12
	xor	a15, a11, a15
	or	a11, a9, a7
	add.n	a3, a14, a3
	and	a11, a11, a12
	and	a14, a9, a7
	or	a11, a11, a14
	add.n	a11, a15, a11
	add.n	a11, a11, a3
	add.n	a10, a10, a3
.LVL66:
	s32i.n	a10, a5, 16
.LVL67:
	s32i.n	a11, a5, 0
.LVL68:
	.loc 1 114 0 discriminator 1
	l32i.n	a3, a8, 32
	l32i.n	a14, a4, 32
	add.n	a14, a14, a3
	add.n	a13, a14, a13
.LVL69:
	xor	a14, a6, a2
	and	a14, a14, a10
	xor	a15, a14, a6
	add.n	a14, a13, a15
	ssai	11
	src	a3, a10, a10
	ssai	6
	src	a13, a10, a10
	xor	a13, a13, a3
	ssai	25
	src	a3, a10, a10
	xor	a3, a13, a3
	add.n	a13, a14, a3
	ssai	2
	src	a15, a11, a11
	ssai	13
	src	a3, a11, a11
	xor	a3, a15, a3
	ssai	22
	src	a15, a11, a11
	xor	a15, a3, a15
	or	a3, a7, a12
	and	a14, a7, a12
	and	a3, a3, a11
	or	a3, a3, a14
	add.n	a3, a15, a3
	add.n	a3, a3, a13
	add.n	a9, a9, a13
.LVL70:
	s32i.n	a9, a5, 12
.LVL71:
	s32i.n	a3, a5, 28
.LVL72:
	.loc 1 115 0 discriminator 1
	l32i.n	a14, a4, 36
	l32i.n	a13, a8, 36
	add.n	a13, a14, a13
	add.n	a13, a13, a6
	xor	a6, a2, a10
.LVL73:
	and	a6, a6, a9
	xor	a15, a6, a2
	add.n	a6, a13, a15
	ssai	6
	src	a14, a9, a9
	ssai	11
	src	a13, a9, a9
	xor	a14, a14, a13
	ssai	25
	src	a13, a9, a9
	xor	a13, a14, a13
	add.n	a13, a6, a13
	ssai	2
	src	a15, a3, a3
	ssai	13
	src	a6, a3, a3
	xor	a6, a15, a6
	ssai	22
	src	a15, a3, a3
	xor	a15, a6, a15
	or	a6, a12, a11
	and	a14, a12, a11
	and	a6, a6, a3
	or	a6, a6, a14
	add.n	a6, a15, a6
	add.n	a6, a6, a13
	add.n	a7, a7, a13
.LVL74:
	s32i.n	a7, a5, 8
.LVL75:
	s32i.n	a6, a5, 24
.LVL76:
	.loc 1 116 0 discriminator 1
	l32i.n	a14, a4, 40
	l32i.n	a13, a8, 40
	add.n	a13, a14, a13
	add.n	a13, a13, a2
	xor	a2, a10, a9
.LVL77:
	and	a2, a2, a7
	xor	a15, a2, a10
	add.n	a2, a13, a15
	ssai	6
	src	a14, a7, a7
	ssai	11
	src	a13, a7, a7
	xor	a14, a14, a13
	ssai	25
	src	a13, a7, a7
	xor	a13, a14, a13
	add.n	a13, a2, a13
	ssai	2
	src	a15, a6, a6
	ssai	13
	src	a2, a6, a6
	xor	a2, a15, a2
	ssai	22
	src	a15, a6, a6
	xor	a15, a2, a15
	or	a2, a11, a3
	and	a14, a11, a3
	and	a2, a2, a6
	or	a2, a2, a14
	add.n	a2, a15, a2
	add.n	a2, a2, a13
	add.n	a12, a12, a13
.LVL78:
	s32i.n	a12, a5, 4
.LVL79:
	s32i.n	a2, a5, 20
.LVL80:
	.loc 1 117 0 discriminator 1
	l32i.n	a13, a8, 44
	l32i.n	a14, a4, 44
	add.n	a14, a14, a13
	add.n	a10, a14, a10
.LVL81:
	xor	a14, a9, a7
	and	a14, a14, a12
	xor	a15, a14, a9
	add.n	a14, a10, a15
	ssai	6
	src	a13, a12, a12
	ssai	11
	src	a10, a12, a12
	xor	a13, a13, a10
	ssai	25
	src	a10, a12, a12
	xor	a10, a13, a10
	add.n	a13, a14, a10
	ssai	2
	src	a15, a2, a2
	ssai	13
	src	a10, a2, a2
	xor	a10, a15, a10
	ssai	22
	src	a15, a2, a2
	xor	a15, a10, a15
	or	a10, a3, a6
	and	a14, a3, a6
	and	a10, a10, a2
	or	a10, a10, a14
	add.n	a10, a15, a10
	add.n	a10, a10, a13
	add.n	a11, a11, a13
.LVL82:
	s32i.n	a10, a5, 16
.LVL83:
	s32i.n	a11, a5, 0
.LVL84:
	.loc 1 118 0 discriminator 1
	l32i.n	a13, a8, 48
	l32i.n	a14, a4, 48
	add.n	a14, a14, a13
	add.n	a9, a14, a9
.LVL85:
	xor	a14, a7, a12
	and	a14, a14, a11
	xor	a15, a14, a7
	add.n	a14, a9, a15
	ssai	6
	src	a13, a11, a11
	ssai	11
	src	a9, a11, a11
	xor	a13, a13, a9
	ssai	25
	src	a9, a11, a11
	xor	a9, a13, a9
	add.n	a13, a14, a9
	ssai	2
	src	a15, a10, a10
	ssai	13
	src	a9, a10, a10
	xor	a9, a15, a9
	ssai	22
	src	a15, a10, a10
	xor	a15, a9, a15
	or	a9, a6, a2
	and	a14, a6, a2
	and	a9, a9, a10
	or	a9, a9, a14
	add.n	a9, a15, a9
	add.n	a9, a9, a13
	add.n	a3, a3, a13
.LVL86:
	s32i.n	a3, a5, 28
.LVL87:
	s32i.n	a9, a5, 12
.LVL88:
	.loc 1 119 0 discriminator 1
	l32i.n	a13, a8, 52
	l32i.n	a14, a4, 52
	add.n	a14, a14, a13
	add.n	a7, a14, a7
.LVL89:
	xor	a14, a12, a11
	and	a14, a14, a3
	xor	a15, a14, a12
	add.n	a14, a7, a15
	ssai	6
	src	a13, a3, a3
	ssai	11
	src	a7, a3, a3
	xor	a13, a13, a7
	ssai	25
	src	a7, a3, a3
	xor	a7, a13, a7
	add.n	a13, a14, a7
	ssai	2
	src	a15, a9, a9
	ssai	13
	src	a7, a9, a9
	xor	a7, a15, a7
	ssai	22
	src	a15, a9, a9
	xor	a15, a7, a15
	or	a7, a2, a10
	and	a14, a2, a10
	and	a7, a7, a9
	or	a7, a7, a14
	add.n	a7, a15, a7
	add.n	a7, a7, a13
	add.n	a6, a6, a13
.LVL90:
	s32i.n	a6, a5, 24
.LVL91:
	s32i.n	a7, a5, 8
.LVL92:
	.loc 1 120 0 discriminator 1
	l32i.n	a14, a4, 56
	l32i.n	a13, a8, 56
	add.n	a13, a14, a13
	add.n	a12, a13, a12
.LVL93:
	xor	a13, a11, a3
	and	a13, a13, a6
	xor	a15, a13, a11
	add.n	a13, a12, a15
	ssai	6
	src	a14, a6, a6
	ssai	11
	src	a12, a6, a6
	xor	a14, a14, a12
	ssai	25
	src	a12, a6, a6
	xor	a12, a14, a12
	add.n	a12, a13, a12
	ssai	2
	src	a14, a7, a7
	ssai	13
	src	a13, a7, a7
	xor	a13, a14, a13
	or	a15, a10, a9
	ssai	22
	src	a14, a7, a7
	xor	a14, a13, a14
	and	a15, a15, a7
	and	a13, a10, a9
	or	a13, a15, a13
	add.n	a13, a14, a13
	add.n	a2, a2, a12
.LVL94:
	add.n	a12, a13, a12
	s32i.n	a2, a5, 20
.LVL95:
	s32i.n	a12, a5, 4
.LVL96:
	.loc 1 121 0 discriminator 1
	l32i.n	a14, a4, 60
	l32i.n	a13, a8, 60
	xor	a6, a3, a6
.LVL97:
	and	a6, a6, a2
	add.n	a13, a14, a13
	xor	a3, a6, a3
.LVL98:
	add.n	a13, a13, a11
	ssai	6
	src	a6, a2, a2
	add.n	a13, a13, a3
	ssai	11
	src	a3, a2, a2
	xor	a3, a6, a3
	ssai	25
	src	a2, a2, a2
.LVL99:
	ssai	2
	src	a6, a12, a12
	xor	a2, a3, a2
	or	a14, a9, a7
	ssai	13
	src	a3, a12, a12
	xor	a3, a6, a3
	and	a7, a9, a7
.LVL100:
	ssai	22
	src	a6, a12, a12
	and	a12, a14, a12
	xor	a3, a3, a6
	or	a12, a12, a7
	add.n	a2, a13, a2
	add.n	a12, a3, a12
	add.n	a10, a10, a2
.LVL101:
	add.n	a2, a12, a2
	.loc 1 122 0 discriminator 1
	l32i.n	a12, sp, 0
	.loc 1 121 0 discriminator 1
	s32i.n	a10, a5, 16
.LVL102:
	s32i.n	a2, a5, 0
	.loc 1 122 0 discriminator 1
	movi.n	a15, 0x30
	addi	a8, a8, 64
	bne	a12, a15, .L4
	l32i.n	a2, sp, 4
	movi.n	a3, 8
.LVL103:
.L5:
	.loc 1 143 0 discriminator 3
	l32i.n	a6, a2, 0
	l32i.n	a4, a5, 0
	addi.n	a5, a5, 4
	add.n	a4, a6, a4
	s32i.n	a4, a2, 0
	addi.n	a2, a2, 4
	addi.n	a3, a3, -1
	bnez.n	a3, .L5
	.loc 1 145 0
	retw.n
.LFE14:
	.size	SHA256_Transform, .-SHA256_Transform
	.section	.text.crypto_hash_sha256_update$part$0,"ax",@progbits
	.literal_position
	.align	4
	.type	crypto_hash_sha256_update$part$0, @function
crypto_hash_sha256_update$part$0:
.LFB20:
	.loc 1 190 0
.LVL104:
	entry	sp, 336
.LCFI1:
	.loc 1 200 0
	l32i.n	a9, a2, 32
	.loc 1 202 0
	slli	a11, a4, 3
	extui	a10, a4, 29, 3
	.loc 1 200 0
	extui	a7, a9, 3, 6
.LVL105:
	.loc 1 202 0
	slli	a6, a5, 3
	add.n	a9, a11, a9
	or	a6, a10, a6
	.loc 1 200 0
	l32i.n	a8, a2, 36
	.loc 1 202 0
	movi.n	a10, 1
	bltu	a9, a11, .L11
	movi.n	a10, 0
.L11:
	add.n	a6, a6, a8
	add.n	a6, a10, a6
	.loc 1 203 0
	movi.n	a8, 0x40
	.loc 1 202 0
	s32i.n	a9, a2, 32
	s32i.n	a6, a2, 36
	.loc 1 203 0
	sub	a6, a8, a7
	movi.n	a9, 1
	bltu	a8, a6, .L12
	movi.n	a9, 0
.L12:
	neg	a9, a9
	add.n	a8, a2, a7
	bltu	a5, a9, .L28
	bne	a9, a5, .L13
	bgeu	a4, a6, .L13
.L28:
	add.n	a4, a3, a4
.LVL106:
	j	.L15
.LVL107:
.L16:
	.loc 1 205 0
	l8ui	a2, a3, 0
	addi.n	a3, a3, 1
	s8i	a2, a8, 39
.L15:
	addi.n	a8, a8, 1
	.loc 1 204 0
	bne	a3, a4, .L16
	retw.n
.LVL108:
.L13:
	mov.n	a9, a3
	loop	a6, .L18_LEND
.L18:
	.loc 1 210 0
	l8ui	a10, a9, 0
	addi.n	a8, a8, 1
	s8i	a10, a8, 39
.LVL109:
	addi.n	a9, a9, 1
	.L18_LEND:
	.loc 1 212 0
	addi	a6, a2, 40
	.loc 1 213 0
	sub	a3, a3, a7
.LVL110:
	.loc 1 212 0
	addmi	a13, sp, 0x100
	mov.n	a12, sp
	mov.n	a11, a6
	mov.n	a10, a2
	.loc 1 214 0
	addi	a7, a7, -64
.LVL111:
	.loc 1 212 0
	call8	SHA256_Transform
.LVL112:
	.loc 1 214 0
	add.n	a4, a7, a4
.LVL113:
	.loc 1 213 0
	addi	a3, a3, 64
.LVL114:
	.loc 1 214 0
	movi.n	a9, -1
	movi.n	a8, 1
	bltu	a4, a7, .L20
	movi.n	a8, 0
.L20:
	add.n	a5, a9, a5
	add.n	a5, a8, a5
.LVL115:
	mov.n	a7, a5
.LVL116:
	mov.n	a8, a4
	.loc 1 213 0
	mov.n	a9, a3
	.loc 1 216 0
	movi.n	a14, 0x3f
	j	.L21
.LVL117:
.L23:
	.loc 1 217 0
	mov.n	a11, a9
	mov.n	a10, a2
	addmi	a13, sp, 0x100
	mov.n	a12, sp
	s32i	a8, sp, 292
	s32i	a9, sp, 288
	s32i	a14, sp, 296
	call8	SHA256_Transform
.LVL118:
	.loc 1 219 0
	l32i	a8, sp, 292
	.loc 1 218 0
	l32i	a9, sp, 288
	.loc 1 219 0
	addi	a11, a8, -64
	.loc 1 218 0
	addi	a9, a9, 64
.LVL119:
	.loc 1 219 0
	movi.n	a10, 1
	l32i	a14, sp, 296
	bltu	a11, a8, .L22
	movi.n	a10, 0
.L22:
	addi.n	a7, a7, -1
	mov.n	a8, a11
	add.n	a7, a10, a7
.LVL120:
.L21:
	.loc 1 216 0
	bnez.n	a7, .L23
	bltu	a14, a8, .L23
	srli	a7, a4, 6
.LVL121:
	slli	a5, a5, 26
	or	a7, a5, a7
	slli	a2, a7, 6
.LVL122:
	add.n	a3, a3, a2
	sub	a4, a4, a2
	mov.n	a7, a2
	add.n	a4, a3, a4
	j	.L26
.LVL123:
.L27:
	.loc 1 223 0
	l8ui	a2, a3, 0
	addi.n	a3, a3, 1
	s8i	a2, a6, 0
	addi.n	a6, a6, 1
.L26:
	.loc 1 222 0
	bne	a3, a4, .L27
	.loc 1 225 0
	movi	a11, 0x120
	mov.n	a10, sp
	call8	sodium_memzero
.LVL124:
	.loc 1 228 0
	retw.n
.LFE20:
	.size	crypto_hash_sha256_update$part$0, .-crypto_hash_sha256_update$part$0
	.section	.text.crypto_hash_sha256_init,"ax",@progbits
	.literal_position
	.literal .LC6, 0, 0
	.literal .LC7, sha256_initial_state$2506
	.align	4
	.global	crypto_hash_sha256_init
	.type	crypto_hash_sha256_init, @function
crypto_hash_sha256_init:
.LFB16:
	.loc 1 177 0
.LVL125:
	entry	sp, 32
.LCFI2:
	.loc 1 183 0
	l32r	a8, .LC6
	l32r	a9, .LC6+4
	.loc 1 184 0
	l32r	a11, .LC7
	.loc 1 183 0
	s32i.n	a8, a2, 32
	s32i.n	a9, a2, 36
	.loc 1 177 0
	mov.n	a10, a2
	.loc 1 184 0
	movi.n	a12, 0x20
	call8	memcpy
.LVL126:
	.loc 1 187 0
	movi.n	a2, 0
.LVL127:
	retw.n
.LFE16:
	.size	crypto_hash_sha256_init, .-crypto_hash_sha256_init
	.section	.text.crypto_hash_sha256_update,"ax",@progbits
	.align	4
	.global	crypto_hash_sha256_update
	.type	crypto_hash_sha256_update, @function
crypto_hash_sha256_update:
.LFB17:
	.loc 1 192 0
.LVL128:
	entry	sp, 32
.LCFI3:
	.loc 1 197 0
	or	a8, a4, a5
	.loc 1 192 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	.loc 1 197 0
	beqz.n	a8, .L33
	call8	crypto_hash_sha256_update$part$0
.LVL129:
.L33:
	.loc 1 228 0
	movi.n	a2, 0
.LVL130:
	retw.n
.LFE17:
	.size	crypto_hash_sha256_update, .-crypto_hash_sha256_update
	.section	.text.crypto_hash_sha256_final,"ax",@progbits
	.literal_position
	.literal .LC9, PAD
	.align	4
	.global	crypto_hash_sha256_final
	.type	crypto_hash_sha256_final, @function
crypto_hash_sha256_final:
.LFB18:
	.loc 1 232 0
.LVL131:
	entry	sp, 320
.LCFI4:
.LVL132:
.LBB658:
.LBB659:
	.loc 1 159 0
	l32i.n	a4, a2, 32
	.loc 1 160 0
	movi.n	a10, 0x37
	.loc 1 159 0
	extui	a4, a4, 3, 6
.LVL133:
	l32r	a9, .LC9
	add.n	a8, a2, a4
	.loc 1 160 0
	bgeu	a10, a4, .L49
	addi	a4, a2, 65
.LVL134:
	j	.L41
.LVL135:
.L49:
	addi	a4, a2, 57
.LVL136:
	j	.L42
.LVL137:
.L43:
	.loc 1 162 0
	l8ui	a10, a9, 0
	addi.n	a9, a9, 1
	s8i	a10, a8, 39
.L42:
	addi.n	a8, a8, 1
	.loc 1 161 0
	bne	a8, a4, .L43
	j	.L44
.L45:
	.loc 1 166 0
	l8ui	a10, a9, 0
	addi.n	a9, a9, 1
	s8i	a10, a8, 39
.L41:
	addi.n	a8, a8, 1
	.loc 1 165 0
	bne	a8, a4, .L45
	.loc 1 168 0
	addi	a4, a2, 40
	mov.n	a12, sp
.LVL138:
	mov.n	a11, a4
	mov.n	a10, a2
	addmi	a13, sp, 0x100
	call8	SHA256_Transform
.LVL139:
	.loc 1 169 0
	movi.n	a12, 0x38
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL140:
.L44:
	.loc 1 171 0
	l32i.n	a9, a2, 36
.LVL141:
	l32i.n	a8, a2, 32
.LVL142:
.LBB660:
.LBB661:
	.loc 2 138 0
	slli	a4, a9, 24
	s8i	a8, a2, 103
	srli	a8, a8, 8
.LVL143:
	or	a8, a4, a8
	srli	a4, a9, 8
.LVL144:
	.loc 2 139 0
	s8i	a8, a2, 102
	slli	a4, a4, 24
.LVL145:
	srli	a8, a8, 8
.LVL146:
	or	a8, a4, a8
	extui	a4, a9, 16, 16
.LVL147:
	.loc 2 140 0
	s8i	a8, a2, 101
	slli	a4, a4, 24
.LVL148:
	srli	a8, a8, 8
.LVL149:
	or	a8, a4, a8
	extui	a9, a9, 24, 8
.LVL150:
	.loc 2 141 0
	slli	a9, a9, 24
.LVL151:
	s8i	a8, a2, 100
	srli	a8, a8, 8
.LVL152:
	or	a8, a9, a8
.LVL153:
	.loc 2 142 0
	srli	a4, a8, 8
.LVL154:
	s8i	a8, a2, 99
	.loc 2 143 0
	s8i	a4, a2, 98
	extui	a4, a8, 16, 16
.LVL155:
	.loc 2 145 0
	extui	a8, a8, 24, 8
	.loc 2 144 0
	s8i	a4, a2, 97
.LVL156:
	.loc 2 145 0
	s8i	a8, a2, 96
.LBE661:
.LBE660:
	.loc 1 172 0
	addmi	a13, sp, 0x100
	mov.n	a12, sp
.LVL157:
	addi	a11, a2, 40
	mov.n	a10, a2
	call8	SHA256_Transform
.LVL158:
	mov.n	a9, a2
	movi.n	a4, 8
.LVL159:
.L46:
.LBE659:
.LBE658:
.LBB662:
.LBB663:
	.loc 1 46 0
	l32i.n	a8, a9, 0
.LVL160:
	addi.n	a9, a9, 4
.LVL161:
.LBB664:
.LBB665:
	.loc 2 173 0
	srli	a10, a8, 8
.LVL162:
	s8i	a8, a3, 3
	.loc 2 174 0
	s8i	a10, a3, 2
	extui	a10, a8, 16, 16
.LVL163:
	.loc 2 176 0
	extui	a8, a8, 24, 8
	.loc 2 175 0
	s8i	a10, a3, 1
.LVL164:
	.loc 2 176 0
	s8i	a8, a3, 0
	addi.n	a3, a3, 4
	addi.n	a4, a4, -1
	bnez.n	a4, .L46
.LBE665:
.LBE664:
.LBE663:
.LBE662:
	.loc 1 237 0
	mov.n	a10, sp
.LVL165:
	movi	a11, 0x120
	call8	sodium_memzero
.LVL166:
	.loc 1 238 0
	mov.n	a10, a2
	movi	a11, 0x68
	call8	sodium_memzero
.LVL167:
	.loc 1 241 0
	movi.n	a2, 0
.LVL168:
	retw.n
.LFE18:
	.size	crypto_hash_sha256_final, .-crypto_hash_sha256_final
	.section	.text.crypto_hash_sha256,"ax",@progbits
	.align	4
	.global	crypto_hash_sha256
	.type	crypto_hash_sha256, @function
crypto_hash_sha256:
.LFB19:
	.loc 1 246 0
.LVL169:
	entry	sp, 144
.LCFI5:
	.loc 1 249 0
	mov.n	a10, sp
	call8	crypto_hash_sha256_init
.LVL170:
	.loc 1 250 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_hash_sha256_update
.LVL171:
	.loc 1 251 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha256_final
.LVL172:
	.loc 1 254 0
	movi.n	a2, 0
.LVL173:
	retw.n
.LFE19:
	.size	crypto_hash_sha256, .-crypto_hash_sha256
	.section	.rodata.sha256_initial_state$2506,"a",@progbits
	.align	4
	.type	sha256_initial_state$2506, @object
	.size	sha256_initial_state$2506, 32
sha256_initial_state$2506:
	.word	1779033703
	.word	-1150833019
	.word	1013904242
	.word	-1521486534
	.word	1359893119
	.word	-1694144372
	.word	528734635
	.word	1541459225
	.section	.rodata.PAD,"a",@progbits
	.type	PAD, @object
	.size	PAD, 64
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
	.section	.rodata.Krnd,"a",@progbits
	.align	4
	.type	Krnd, @object
	.size	Krnd, 256
Krnd:
	.word	1116352408
	.word	1899447441
	.word	-1245643825
	.word	-373957723
	.word	961987163
	.word	1508970993
	.word	-1841331548
	.word	-1424204075
	.word	-670586216
	.word	310598401
	.word	607225278
	.word	1426881987
	.word	1925078388
	.word	-2132889090
	.word	-1680079193
	.word	-1046744716
	.word	-459576895
	.word	-272742522
	.word	264347078
	.word	604807628
	.word	770255983
	.word	1249150122
	.word	1555081692
	.word	1996064986
	.word	-1740746414
	.word	-1473132947
	.word	-1341970488
	.word	-1084653625
	.word	-958395405
	.word	-710438585
	.word	113926993
	.word	338241895
	.word	666307205
	.word	773529912
	.word	1294757372
	.word	1396182291
	.word	1695183700
	.word	1986661051
	.word	-2117940946
	.word	-1838011259
	.word	-1564481375
	.word	-1474664885
	.word	-1035236496
	.word	-949202525
	.word	-778901479
	.word	-694614492
	.word	-200395387
	.word	275423344
	.word	430227734
	.word	506948616
	.word	659060556
	.word	883997877
	.word	958139571
	.word	1322822218
	.word	1537002063
	.word	1747873779
	.word	1955562222
	.word	2024104815
	.word	-2067236844
	.word	-1933114872
	.word	-1866530822
	.word	-1538233109
	.word	-1090935817
	.word	-965641998
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
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
	.uleb128 0x150
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x140
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
	.uleb128 0x90
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7b6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
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
	.4byte	.LASF5
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xd8
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x68
	.byte	0x6
	.byte	0x18
	.4byte	0xf9
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0x19
	.4byte	0xf9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1a
	.4byte	0x90
	.byte	0x20
	.uleb128 0x8
	.string	"buf"
	.byte	0x6
	.byte	0x1b
	.4byte	0x109
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x109
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x119
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1c
	.4byte	0xc8
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x2
	.byte	0x1a
	.4byte	0x85
	.byte	0x3
	.4byte	0x147
	.uleb128 0xc
	.string	"x"
	.byte	0x2
	.byte	0x1a
	.4byte	0x147
	.uleb128 0xc
	.string	"b"
	.byte	0x2
	.byte	0x1a
	.4byte	0x14c
	.byte	0
	.uleb128 0xd
	.4byte	0x85
	.uleb128 0xd
	.4byte	0x4f
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0xbe
	.4byte	0x4f
	.byte	0x1
	.4byte	0x19f
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0xbe
	.4byte	0x19f
	.uleb128 0xc
	.string	"in"
	.byte	0x1
	.byte	0xbf
	.4byte	0x1a5
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xbf
	.4byte	0x21
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc1
	.4byte	0x1b0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.4byte	0x21
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xc3
	.4byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x119
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ab
	.uleb128 0xd
	.4byte	0x3a
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x1c0
	.uleb128 0xa
	.4byte	0xad
	.byte	0x47
	.byte	0
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	0x1f7
	.uleb128 0xc
	.string	"dst"
	.byte	0x1
	.byte	0x29
	.4byte	0xbb
	.uleb128 0xc
	.string	"src"
	.byte	0x1
	.byte	0x29
	.4byte	0x1f7
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x29
	.4byte	0x9b
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x9b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x147
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x234
	.uleb128 0xc
	.string	"dst"
	.byte	0x1
	.byte	0x33
	.4byte	0x234
	.uleb128 0xc
	.string	"src"
	.byte	0x1
	.byte	0x33
	.4byte	0x1a5
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x33
	.4byte	0x9b
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x35
	.4byte	0x9b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x85
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x2
	.byte	0x97
	.4byte	0x85
	.byte	0x3
	.4byte	0x25f
	.uleb128 0xc
	.string	"src"
	.byte	0x2
	.byte	0x97
	.4byte	0x25f
	.uleb128 0x11
	.string	"w"
	.byte	0x2
	.byte	0x9e
	.4byte	0x85
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x265
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x62
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34d
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0x62
	.4byte	0x234
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x62
	.4byte	0x25f
	.4byte	.LLST1
	.uleb128 0x15
	.string	"W"
	.byte	0x1
	.byte	0x62
	.4byte	0x234
	.4byte	.LLST2
	.uleb128 0x15
	.string	"S"
	.byte	0x1
	.byte	0x63
	.4byte	0x234
	.4byte	.LLST3
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x65
	.4byte	0x4f
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	0x1fd
	.4byte	.LBB646
	.4byte	.LBE646-.LBB646
	.byte	0x1
	.byte	0x67
	.4byte	0x32f
	.uleb128 0x18
	.4byte	0x21f
	.byte	0x40
	.uleb128 0x19
	.4byte	0x214
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	0x209
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LBB647
	.4byte	.LBE647-.LBB647
	.uleb128 0x1b
	.4byte	0x22a
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	0x23a
	.4byte	.LBB648
	.4byte	.LBE648-.LBB648
	.byte	0x1
	.byte	0x38
	.uleb128 0x19
	.4byte	0x24a
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LBB649
	.4byte	.LBE649-.LBB649
	.uleb128 0x1b
	.4byte	0x255
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0x79c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x151
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f1
	.uleb128 0x19
	.4byte	0x161
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	0x16c
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	0x176
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	0x181
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x21
	.4byte	0x18c
	.uleb128 0x21
	.4byte	0x195
	.uleb128 0x22
	.4byte	.LVL112
	.4byte	0x26a
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL118
	.4byte	0x26a
	.4byte	0x3d8
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
	.sleb128 -336
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL124
	.4byte	0x7a5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x120
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb0
	.4byte	0x4f
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44a
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb0
	.4byte	0x19f
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb2
	.4byte	0x44a
	.uleb128 0x5
	.byte	0x3
	.4byte	sha256_initial_state$2506
	.uleb128 0x1d
	.4byte	.LVL126
	.4byte	0x79c
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
	.4byte	sha256_initial_state$2506
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xf9
	.uleb128 0x1f
	.4byte	0x151
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a4
	.uleb128 0x19
	.4byte	0x161
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	0x176
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	0x181
	.uleb128 0x21
	.4byte	0x18c
	.uleb128 0x21
	.4byte	0x195
	.uleb128 0x1d
	.4byte	.LVL129
	.4byte	0x34d
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
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.4byte	0x4d9
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x9a
	.4byte	0x19f
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x9a
	.4byte	0x234
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0x9c
	.4byte	0x90
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x9d
	.4byte	0x90
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x2
	.byte	0x85
	.byte	0x3
	.4byte	0x4fa
	.uleb128 0xc
	.string	"dst"
	.byte	0x2
	.byte	0x85
	.4byte	0x4fa
	.uleb128 0xc
	.string	"w"
	.byte	0x2
	.byte	0x85
	.4byte	0x90
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x2
	.byte	0xa8
	.byte	0x3
	.4byte	0x521
	.uleb128 0xc
	.string	"dst"
	.byte	0x2
	.byte	0xa8
	.4byte	0x4fa
	.uleb128 0xc
	.string	"w"
	.byte	0x2
	.byte	0xa8
	.4byte	0x85
	.byte	0
	.uleb128 0x23
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe7
	.4byte	0x4f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c3
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe7
	.4byte	0x19f
	.4byte	.LLST15
	.uleb128 0x15
	.string	"out"
	.byte	0x1
	.byte	0xe7
	.4byte	0xbb
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	.LASF22
	.byte	0x1
	.byte	0xe9
	.4byte	0x1b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x17
	.4byte	0x4a4
	.4byte	.LBB658
	.4byte	.LBE658-.LBB658
	.byte	0x1
	.byte	0xeb
	.4byte	0x630
	.uleb128 0x19
	.4byte	0x4bb
	.4byte	.LLST17
	.uleb128 0x19
	.4byte	0x4b0
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	.LBB659
	.4byte	.LBE659-.LBB659
	.uleb128 0x21
	.4byte	0x4c6
	.uleb128 0x21
	.4byte	0x4cf
	.uleb128 0x17
	.4byte	0x4d9
	.4byte	.LBB660
	.4byte	.LBE660-.LBB660
	.byte	0x1
	.byte	0xab
	.4byte	0x5c5
	.uleb128 0x19
	.4byte	0x4f0
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	0x4e5
	.4byte	.LLST20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL139
	.4byte	0x26a
	.4byte	0x5ec
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
	.sleb128 -320
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LVL140
	.4byte	0x7b0
	.4byte	0x60b
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
	.byte	0x38
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL158
	.4byte	0x26a
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
	.byte	0x72
	.sleb128 40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x1c0
	.4byte	.LBB662
	.4byte	.LBE662-.LBB662
	.byte	0x1
	.byte	0xec
	.4byte	0x690
	.uleb128 0x26
	.4byte	0x1e2
	.uleb128 0x19
	.4byte	0x1d7
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	0x1cc
	.4byte	.LLST22
	.uleb128 0x1a
	.4byte	.LBB663
	.4byte	.LBE663-.LBB663
	.uleb128 0x1b
	.4byte	0x1ed
	.4byte	.LLST23
	.uleb128 0x1c
	.4byte	0x500
	.4byte	.LBB664
	.4byte	.LBE664-.LBB664
	.byte	0x1
	.byte	0x2e
	.uleb128 0x19
	.4byte	0x517
	.4byte	.LLST24
	.uleb128 0x19
	.4byte	0x50c
	.4byte	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL166
	.4byte	0x7a5
	.4byte	0x6ac
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x120
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL167
	.4byte	0x7a5
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
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf4
	.4byte	0x4f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x760
	.uleb128 0x15
	.string	"out"
	.byte	0x1
	.byte	0xf4
	.4byte	0xbb
	.4byte	.LLST26
	.uleb128 0x27
	.string	"in"
	.byte	0x1
	.byte	0xf4
	.4byte	0x1a5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF21
	.byte	0x1
	.byte	0xf5
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x24
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf7
	.4byte	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.4byte	.LVL170
	.4byte	0x3f1
	.4byte	0x72d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x22
	.4byte	.LVL171
	.4byte	0x151
	.4byte	0x748
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL172
	.4byte	0x521
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x770
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3c
	.4byte	0x781
	.uleb128 0x5
	.byte	0x3
	.4byte	Krnd
	.uleb128 0xd
	.4byte	0x760
	.uleb128 0x29
	.string	"PAD"
	.byte	0x1
	.byte	0x93
	.4byte	0x797
	.uleb128 0x5
	.byte	0x3
	.4byte	PAD
	.uleb128 0xd
	.4byte	0x109
	.uleb128 0x2a
	.4byte	.LASF36
	.4byte	.LASF36
	.uleb128 0x2b
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x16
	.uleb128 0x2a
	.4byte	.LASF37
	.4byte	.LASF37
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
	.uleb128 0x15
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0xd
	.byte	0x73
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0xd
	.byte	0x73
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x76
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL119
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL131
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL131
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL132
	.4byte	.LVL138
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL139-1
	.4byte	.LVL157
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL158-1
	.4byte	.LVL165
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL166-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL166-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL132
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x7
	.byte	0x72
	.sleb128 32
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL141
	.4byte	.LVL168
	.2byte	0x4
	.byte	0x72
	.sleb128 96
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LFE18
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL158
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL166-1
	.2byte	0xc
	.byte	0x79
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL169
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
.LASF17:
	.string	"char"
.LASF5:
	.string	"__uint8_t"
.LASF30:
	.string	"store64_be"
.LASF18:
	.string	"state"
.LASF20:
	.string	"crypto_hash_sha256_state"
.LASF33:
	.string	"crypto_hash_sha256_final"
.LASF19:
	.string	"count"
.LASF23:
	.string	"be32enc_vect"
.LASF7:
	.string	"unsigned int"
.LASF12:
	.string	"uint64_t"
.LASF27:
	.string	"block"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"crypto_hash_sha256_init"
.LASF2:
	.string	"unsigned char"
.LASF22:
	.string	"tmp32"
.LASF16:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF13:
	.string	"size_t"
.LASF11:
	.string	"uint32_t"
.LASF39:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_hash/sha256/cp/hash_sha256_cp.c"
.LASF37:
	.string	"memset"
.LASF21:
	.string	"inlen"
.LASF6:
	.string	"__uint32_t"
.LASF41:
	.string	"SHA256_Transform"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"be32dec_vect"
.LASF25:
	.string	"rotr32"
.LASF15:
	.string	"sizetype"
.LASF35:
	.string	"Krnd"
.LASF8:
	.string	"long long int"
.LASF36:
	.string	"memcpy"
.LASF26:
	.string	"load32_be"
.LASF3:
	.string	"short int"
.LASF10:
	.string	"uint8_t"
.LASF9:
	.string	"__uint64_t"
.LASF34:
	.string	"crypto_hash_sha256"
.LASF14:
	.string	"long int"
.LASF28:
	.string	"sha256_initial_state"
.LASF31:
	.string	"store32_be"
.LASF1:
	.string	"signed char"
.LASF42:
	.string	"sodium_memzero"
.LASF40:
	.string	"crypto_hash_sha256_update"
.LASF29:
	.string	"SHA256_Pad"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
