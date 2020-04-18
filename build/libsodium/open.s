	.file	"open.c"
	.text
.Ltext0:
	.section	.text._crypto_sign_ed25519_verify_detached,"ax",@progbits
	.literal_position
	.literal .LC0, L$2713
	.literal .LC1, blacklist$2722
	.literal .LC2, 32, 0
	.align	4
	.global	_crypto_sign_ed25519_verify_detached
	.type	_crypto_sign_ed25519_verify_detached, @function
_crypto_sign_ed25519_verify_detached:
.LVL0:
.LFB2:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/open.c"
	.loc 1 116 1 view -0
	.loc 1 116 1 is_stmt 0 view .LVU1
	entry	sp, 640
.LCFI0:
	.loc 1 117 5 is_stmt 1 view .LVU2
	.loc 1 118 5 view .LVU3
	.loc 1 119 5 view .LVU4
	.loc 1 120 5 view .LVU5
	.loc 1 121 5 view .LVU6
.LVL1:
	.loc 1 122 5 view .LVU7
	.loc 1 123 5 view .LVU8
	.loc 1 126 5 view .LVU9
.LBB6:
.LBB7:
	.loc 1 25 18 is_stmt 0 view .LVU10
	movi.n	a11, 0x20
	.loc 1 29 24 view .LVU11
	l32r	a14, .LC0
.LBE7:
.LBE6:
	.loc 1 116 1 view .LVU12
	s32i	a4, sp, 592
	s32i	a5, sp, 596
	.loc 1 126 9 view .LVU13
	addi	a4, a2, 32
.LVL2:
.LBB9:
.LBI6:
	.loc 1 15 1 is_stmt 1 view .LVU14
.LBB8:
	.loc 1 18 5 view .LVU15
	.loc 1 23 5 view .LVU16
	.loc 1 24 5 view .LVU17
	.loc 1 25 5 view .LVU18
	.loc 1 24 19 is_stmt 0 view .LVU19
	movi.n	a8, 1
	.loc 1 23 19 view .LVU20
	movi.n	a10, 0
	.loc 1 29 24 view .LVU21
	mov.n	a12, a11
	loop	a12, .L2_LEND
.LVL3:
.L2:
	.loc 1 27 5 is_stmt 1 view .LVU22
	.loc 1 28 9 view .LVU23
	.loc 1 28 10 is_stmt 0 view .LVU24
	addi.n	a11, a11, -1
.LVL4:
	.loc 1 29 9 is_stmt 1 view .LVU25
	.loc 1 29 24 is_stmt 0 view .LVU26
	add.n	a9, a11, a14
	.loc 1 29 17 view .LVU27
	add.n	a5, a2, a11
	l8ui	a5, a5, 32
	.loc 1 29 24 view .LVU28
	l8ui	a13, a9, 0
	.loc 1 29 35 view .LVU29
	extui	a8, a8, 0, 8
.LVL5:
	.loc 1 29 21 view .LVU30
	sub	a9, a5, a13
	.loc 1 30 21 view .LVU31
	xor	a5, a5, a13
	.loc 1 29 29 view .LVU32
	srai	a9, a9, 8
	.loc 1 30 29 view .LVU33
	addi.n	a5, a5, -1
	.loc 1 29 35 view .LVU34
	and	a9, a9, a8
	.loc 1 30 34 view .LVU35
	srai	a5, a5, 8
	.loc 1 29 11 view .LVU36
	or	a10, a9, a10
.LVL6:
	.loc 1 30 9 is_stmt 1 view .LVU37
	.loc 1 30 11 is_stmt 0 view .LVU38
	and	a8, a8, a5
.LVL7:
	.loc 1 30 11 view .LVU39
	.L2_LEND:
	.loc 1 33 5 is_stmt 1 view .LVU40
.LVL8:
	.loc 1 33 5 is_stmt 0 view .LVU41
.LBE8:
.LBE9:
.LBB10:
.LBB11:
	.loc 1 98 11 view .LVU42
	movi.n	a13, 0
	l32r	a11, .LC1
.LBE11:
.LBE10:
	.loc 1 126 8 view .LVU43
	movi.n	a5, 0xc
	bne	a10, a13, .L5
.LVL9:
.L7:
	.loc 1 127 16 view .LVU44
	movi.n	a2, -1
.LVL10:
	.loc 1 127 16 view .LVU45
	j	.L1
.LVL11:
.L6:
.LBB13:
.LBB12:
	.loc 1 100 13 is_stmt 1 view .LVU46
	.loc 1 100 19 is_stmt 0 view .LVU47
	add.n	a12, a2, a8
	.loc 1 100 37 view .LVU48
	add.n	a14, a11, a8
	.loc 1 100 15 view .LVU49
	l8ui	a12, a12, 0
	l8ui	a14, a14, 0
	.loc 1 99 30 view .LVU50
	addi.n	a8, a8, 1
.LVL12:
	.loc 1 100 15 view .LVU51
	xor	a12, a12, a14
	or	a10, a10, a12
.LVL13:
	.loc 1 99 30 view .LVU52
	addi.n	a9, a9, -1
	bnez.n	a9, .L6
	.loc 1 102 9 is_stmt 1 view .LVU53
	.loc 1 102 12 is_stmt 0 view .LVU54
	beqz.n	a10, .L7
.LVL14:
	.loc 1 102 12 view .LVU55
	addi.n	a5, a5, -1
.LVL15:
	.loc 1 102 12 view .LVU56
	addi	a11, a11, 32
	.loc 1 97 5 view .LVU57
	beqz.n	a5, .L8
.LVL16:
.L5:
	.loc 1 98 11 view .LVU58
	mov.n	a10, a13
	.loc 1 99 16 view .LVU59
	movi.n	a8, 0
	movi.n	a9, 0x20
	j	.L6
.LVL17:
.L9:
	.loc 1 99 16 view .LVU60
.LBE12:
.LBE13:
	.loc 1 138 9 is_stmt 1 discriminator 3 view .LVU61
	.loc 1 138 16 is_stmt 0 discriminator 3 view .LVU62
	add.n	a10, a6, a5
	.loc 1 138 11 discriminator 3 view .LVU63
	l8ui	a10, a10, 0
	.loc 1 137 25 discriminator 3 view .LVU64
	addi.n	a5, a5, 1
.LVL18:
	.loc 1 138 11 discriminator 3 view .LVU65
	or	a9, a9, a10
.LVL19:
	.loc 1 137 25 discriminator 3 view .LVU66
	addi.n	a8, a8, -1
	bnez.n	a8, .L9
	.loc 1 140 5 is_stmt 1 view .LVU67
	.loc 1 140 8 is_stmt 0 view .LVU68
	beqz.n	a9, .L7
	.loc 1 143 5 is_stmt 1 view .LVU69
	mov.n	a11, a7
	mov.n	a10, sp
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL20:
	.loc 1 144 5 view .LVU70
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL21:
	.loc 1 145 5 view .LVU71
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a6
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL22:
	.loc 1 146 5 view .LVU72
	l32i	a12, sp, 592
	l32i	a13, sp, 596
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL23:
	.loc 1 147 5 view .LVU73
	movi	a11, 0x1e8
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL24:
	.loc 1 148 5 view .LVU74
	movi	a10, 0x1e8
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL25:
	.loc 1 150 5 view .LVU75
	movi	a12, 0xd0
	movi	a11, 0x1e8
	movi	a10, 0x170
	mov.n	a13, a4
	add.n	a12, sp, a12
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_double_scalarmult_vartime
.LVL26:
	.loc 1 151 5 view .LVU76
	movi	a11, 0x170
	movi	a10, 0x228
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_tobytes
.LVL27:
	.loc 1 153 5 view .LVU77
	.loc 1 153 12 is_stmt 0 view .LVU78
	movi	a10, 0x228
	mov.n	a11, a2
	add.n	a10, a10, sp
	call8	crypto_verify_32
.LVL28:
	.loc 1 154 12 view .LVU79
	movi	a11, 0x228
	.loc 1 153 12 view .LVU80
	mov.n	a3, a10
.LVL29:
	.loc 1 154 12 view .LVU81
	movi.n	a12, 0x20
	mov.n	a10, a2
	add.n	a11, a11, sp
	call8	sodium_memcmp
.LVL30:
	.loc 1 153 63 view .LVU82
	or	a2, a3, a10
.LVL31:
	.loc 1 153 63 view .LVU83
	j	.L1
.LVL32:
.L8:
	.loc 1 134 5 is_stmt 1 view .LVU84
	.loc 1 134 9 is_stmt 0 view .LVU85
	movi	a10, 0xd0
	mov.n	a11, a6
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL33:
	.loc 1 121 19 view .LVU86
	mov.n	a9, a5
	movi.n	a8, 0x20
	.loc 1 134 8 view .LVU87
	beqz.n	a10, .L9
	j	.L7
.LVL34:
.L1:
	.loc 1 155 1 view .LVU88
	retw.n
.LFE2:
	.size	_crypto_sign_ed25519_verify_detached, .-_crypto_sign_ed25519_verify_detached
	.section	.text.crypto_sign_ed25519_verify_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_verify_detached
	.type	crypto_sign_ed25519_verify_detached, @function
crypto_sign_ed25519_verify_detached:
.LVL35:
.LFB3:
	.loc 1 162 1 is_stmt 1 view -0
	.loc 1 162 1 is_stmt 0 view .LVU90
	entry	sp, 32
.LCFI1:
	.loc 1 163 5 is_stmt 1 view .LVU91
	.loc 1 163 12 is_stmt 0 view .LVU92
	movi.n	a15, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_crypto_sign_ed25519_verify_detached
.LVL36:
	.loc 1 164 1 view .LVU93
	mov.n	a2, a10
.LVL37:
	.loc 1 164 1 view .LVU94
	retw.n
.LFE3:
	.size	crypto_sign_ed25519_verify_detached, .-crypto_sign_ed25519_verify_detached
	.section	.text.crypto_sign_ed25519_open,"ax",@progbits
	.literal_position
	.literal .LC4, 0, 0
	.align	4
	.global	crypto_sign_ed25519_open
	.type	crypto_sign_ed25519_open, @function
crypto_sign_ed25519_open:
.LVL38:
.LFB4:
	.loc 1 170 1 is_stmt 1 view -0
	.loc 1 170 1 is_stmt 0 view .LVU96
	entry	sp, 32
.LCFI2:
	.loc 1 171 5 is_stmt 1 view .LVU97
	.loc 1 173 5 view .LVU98
	.loc 1 170 1 is_stmt 0 view .LVU99
	mov.n	a9, a6
	.loc 1 173 20 view .LVU100
	addi	a5, a9, -64
	.loc 1 170 1 view .LVU101
	mov.n	a6, a2
.LVL39:
	.loc 1 170 1 view .LVU102
	mov.n	a10, a4
	.loc 1 173 20 view .LVU103
	movi.n	a8, 1
	bltu	a5, a9, .L22
	movi.n	a8, 0
.L22:
	addi.n	a7, a7, -1
	add.n	a7, a8, a7
	.loc 1 173 8 view .LVU104
	bnez.n	a7, .L23
	movi	a2, -0x41
.LVL40:
	.loc 1 173 8 view .LVU105
	bltu	a2, a5, .L23
	.loc 1 176 5 is_stmt 1 view .LVU106
.LVL41:
	.loc 1 177 5 view .LVU107
	.loc 1 177 9 is_stmt 0 view .LVU108
	addi	a4, a10, 64
.LVL42:
	.loc 1 177 9 view .LVU109
	l32i.n	a14, sp, 32
	mov.n	a12, a5
	mov.n	a13, a7
	mov.n	a11, a4
	call8	crypto_sign_ed25519_verify_detached
.LVL43:
	.loc 1 177 9 view .LVU110
	mov.n	a2, a10
	.loc 1 177 8 view .LVU111
	beqz.n	a10, .L25
	.loc 1 178 9 is_stmt 1 view .LVU112
	mov.n	a12, a5
	mov.n	a11, a7
	mov.n	a10, a6
	call8	memset
.LVL44:
	.loc 1 179 9 view .LVU113
	j	.L23
.L25:
	.loc 1 181 5 view .LVU114
	.loc 1 181 8 is_stmt 0 view .LVU115
	beqz.n	a3, .L26
	.loc 1 182 9 is_stmt 1 view .LVU116
	.loc 1 182 17 is_stmt 0 view .LVU117
	s32i.n	a5, a3, 0
	s32i.n	a10, a3, 4
.L26:
	.loc 1 184 5 is_stmt 1 view .LVU118
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a6
	call8	memmove
.LVL45:
	.loc 1 186 5 view .LVU119
	.loc 1 186 12 is_stmt 0 view .LVU120
	j	.L21
.LVL46:
.L23:
	.loc 1 189 5 is_stmt 1 view .LVU121
	.loc 1 192 12 is_stmt 0 view .LVU122
	movi.n	a2, -1
	.loc 1 189 8 view .LVU123
	beqz.n	a3, .L21
	.loc 1 190 9 is_stmt 1 view .LVU124
	.loc 1 190 17 is_stmt 0 view .LVU125
	l32r	a4, .LC4
	l32r	a5, .LC4+4
	s32i.n	a4, a3, 0
	s32i.n	a5, a3, 4
.L21:
	.loc 1 193 1 view .LVU126
	retw.n
.LFE4:
	.size	crypto_sign_ed25519_open, .-crypto_sign_ed25519_open
	.section	.rodata.blacklist$2722,"a"
	.align	16
	.type	blacklist$2722, @object
	.size	blacklist$2722, 384
blacklist$2722:
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
	.byte	1
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
	.byte	38
	.byte	-24
	.byte	-107
	.byte	-113
	.byte	-62
	.byte	-78
	.byte	39
	.byte	-80
	.byte	69
	.byte	-61
	.byte	-12
	.byte	-119
	.byte	-14
	.byte	-17
	.byte	-104
	.byte	-16
	.byte	-43
	.byte	-33
	.byte	-84
	.byte	5
	.byte	-45
	.byte	-58
	.byte	51
	.byte	57
	.byte	-79
	.byte	56
	.byte	2
	.byte	-120
	.byte	109
	.byte	83
	.byte	-4
	.byte	5
	.byte	-57
	.byte	23
	.byte	106
	.byte	112
	.byte	61
	.byte	77
	.byte	-40
	.byte	79
	.byte	-70
	.byte	60
	.byte	11
	.byte	118
	.byte	13
	.byte	16
	.byte	103
	.byte	15
	.byte	42
	.byte	32
	.byte	83
	.byte	-6
	.byte	44
	.byte	57
	.byte	-52
	.byte	-58
	.byte	78
	.byte	-57
	.byte	-3
	.byte	119
	.byte	-110
	.byte	-84
	.byte	3
	.byte	122
	.byte	19
	.byte	-24
	.byte	-107
	.byte	-113
	.byte	-62
	.byte	-78
	.byte	39
	.byte	-80
	.byte	69
	.byte	-61
	.byte	-12
	.byte	-119
	.byte	-14
	.byte	-17
	.byte	-104
	.byte	-16
	.byte	-43
	.byte	-33
	.byte	-84
	.byte	5
	.byte	-45
	.byte	-58
	.byte	51
	.byte	57
	.byte	-79
	.byte	56
	.byte	2
	.byte	-120
	.byte	109
	.byte	83
	.byte	-4
	.byte	-123
	.byte	-76
	.byte	23
	.byte	106
	.byte	112
	.byte	61
	.byte	77
	.byte	-40
	.byte	79
	.byte	-70
	.byte	60
	.byte	11
	.byte	118
	.byte	13
	.byte	16
	.byte	103
	.byte	15
	.byte	42
	.byte	32
	.byte	83
	.byte	-6
	.byte	44
	.byte	57
	.byte	-52
	.byte	-58
	.byte	78
	.byte	-57
	.byte	-3
	.byte	119
	.byte	-110
	.byte	-84
	.byte	3
	.byte	-6
	.byte	-20
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	-19
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	-18
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-38
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-37
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.rodata.L$2713,"a"
	.type	L$2713, @object
	.size	L$2713, 32
L$2713:
	.byte	-19
	.byte	-45
	.byte	-11
	.byte	92
	.byte	26
	.byte	99
	.byte	18
	.byte	88
	.byte	-42
	.byte	-100
	.byte	-9
	.byte	-94
	.byte	-34
	.byte	-7
	.byte	-34
	.byte	20
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
	.byte	16
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x280
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/ed25519_ref10.h"
	.file 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.file 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xff7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xc
	.4byte	.LASF156
	.4byte	.LASF157
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	0x3f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x65
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x7a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xce
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xce
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0x11c
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0x11c
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x12c
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x150
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x12c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0xc2
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x16a
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d7
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1d7
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x65
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1dd
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x17d
	.uleb128 0x9
	.4byte	0x171
	.4byte	0x1ed
	.uleb128 0xa
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x270
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x65
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x65
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x65
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x65
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b5
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b5
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x171
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x171
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x168
	.4byte	0x2c5
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x307
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x307
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x30d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x324
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c5
	.uleb128 0x9
	.4byte	0x31d
	.4byte	0x31d
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x323
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x4
	.4byte	0x270
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x352
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x352
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3f
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3cb
	.uleb128 0xf
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x352
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x4b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x4b
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x32a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x52f
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x358
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x52f
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x782
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x782
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x782
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x65
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x696
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x65
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ea
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8f0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x901
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x65
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x65
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x696
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x907
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x90d
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x696
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x91e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x307
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c5
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x743
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x782
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x92a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x696
	.byte	0xec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3d0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x678
	.uleb128 0xf
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x352
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x4b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x4b
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x32a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x52f
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x168
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a8
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6d2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6f6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x710
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x32a
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x352
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x65
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x716
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x726
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x32a
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x65
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xd5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x15c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x150
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x65
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x696
	.uleb128 0x18
	.4byte	0x52f
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x696
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF96
	.uleb128 0x4
	.4byte	0x69c
	.uleb128 0x10
	.byte	0x4
	.4byte	0x678
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x52f
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6a3
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6ae
	.uleb128 0x17
	.4byte	0xe1
	.4byte	0x6f6
	.uleb128 0x18
	.4byte	0x52f
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0xe1
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x710
	.uleb128 0x18
	.4byte	0x52f
	.uleb128 0x18
	.4byte	0x168
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6fc
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x726
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x736
	.uleb128 0xa
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x535
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x77c
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x77c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x782
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x743
	.uleb128 0x10
	.byte	0x4
	.4byte	0x736
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7cf
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7cf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7cf
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x7df
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x826
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d7
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x826
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1d7
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8d5
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x696
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x150
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x150
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x150
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8d5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x65
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x150
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x150
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x150
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x150
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x150
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x69c
	.4byte	0x8e5
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF158
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8e5
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7df
	.uleb128 0x1a
	.4byte	0x901
	.uleb128 0x18
	.4byte	0x52f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8f6
	.uleb128 0x10
	.byte	0x4
	.4byte	0x788
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x1a
	.4byte	0x91e
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x924
	.uleb128 0x10
	.byte	0x4
	.4byte	0x913
	.uleb128 0x10
	.byte	0x4
	.4byte	0x82c
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3cb
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3cb
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3cb
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x52f
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x696
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0xd0
	.byte	0x9
	.byte	0x18
	.byte	0x10
	.4byte	0x9a5
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x9
	.byte	0x19
	.byte	0xe
	.4byte	0x9a5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x9
	.byte	0x1a
	.byte	0xe
	.4byte	0x9b5
	.byte	0x40
	.uleb128 0xf
	.string	"buf"
	.byte	0x9
	.byte	0x1b
	.byte	0xd
	.4byte	0x9c5
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0xaa
	.4byte	0x9b5
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0xaa
	.4byte	0x9c5
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x92
	.4byte	0x9d5
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.4byte	0x970
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xa
	.byte	0x8
	.byte	0x11
	.4byte	0x9ed
	.uleb128 0x9
	.4byte	0x9e
	.4byte	0x9fd
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0x78
	.byte	0xa
	.byte	0x44
	.byte	0x9
	.4byte	0xa28
	.uleb128 0xf
	.string	"X"
	.byte	0xa
	.byte	0x45
	.byte	0x25
	.4byte	0x9e1
	.byte	0
	.uleb128 0xf
	.string	"Y"
	.byte	0xa
	.byte	0x46
	.byte	0x25
	.4byte	0x9e1
	.byte	0x28
	.uleb128 0xf
	.string	"Z"
	.byte	0xa
	.byte	0x47
	.byte	0x25
	.4byte	0x9e1
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xa
	.byte	0x48
	.byte	0x3
	.4byte	0x9fd
	.uleb128 0xb
	.byte	0xa0
	.byte	0xa
	.byte	0x4b
	.byte	0x9
	.4byte	0xa6a
	.uleb128 0xf
	.string	"X"
	.byte	0xa
	.byte	0x4c
	.byte	0x25
	.4byte	0x9e1
	.byte	0
	.uleb128 0xf
	.string	"Y"
	.byte	0xa
	.byte	0x4d
	.byte	0x25
	.4byte	0x9e1
	.byte	0x28
	.uleb128 0xf
	.string	"Z"
	.byte	0xa
	.byte	0x4e
	.byte	0x25
	.4byte	0x9e1
	.byte	0x50
	.uleb128 0xf
	.string	"T"
	.byte	0xa
	.byte	0x4f
	.byte	0x25
	.4byte	0x9e1
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xa
	.byte	0x50
	.byte	0x3
	.4byte	0xa34
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb63
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0xa7
	.byte	0x29
	.4byte	0x352
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1f
	.4byte	.LASF135
	.byte	0x1
	.byte	0xa7
	.byte	0x40
	.4byte	0xb63
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"sm"
	.byte	0x1
	.byte	0xa8
	.byte	0x2f
	.4byte	0xb69
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.byte	0xa8
	.byte	0x46
	.4byte	0x25
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x21
	.string	"pk"
	.byte	0x1
	.byte	0xa9
	.byte	0x2f
	.4byte	0xb69
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.4byte	.LASF136
	.byte	0x1
	.byte	0xab
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x23
	.4byte	.LASF159
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	.L23
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0xb6f
	.4byte	0xb26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL44
	.4byte	0xf77
	.4byte	0xb46
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL45
	.4byte	0xf82
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x25
	.uleb128 0x10
	.byte	0x4
	.4byte	0x46
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbeb
	.uleb128 0x1e
	.string	"sig"
	.byte	0x1
	.byte	0x9e
	.byte	0x3a
	.4byte	0xb69
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.byte	0x9f
	.byte	0x3a
	.4byte	0xb69
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa0
	.byte	0x38
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.string	"pk"
	.byte	0x1
	.byte	0xa1
	.byte	0x3a
	.4byte	0xb69
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0xbeb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe90
	.uleb128 0x1e
	.string	"sig"
	.byte	0x1
	.byte	0x6f
	.byte	0x3b
	.4byte	0xb69
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x70
	.byte	0x3b
	.4byte	0xb69
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0x71
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.string	"pk"
	.byte	0x1
	.byte	0x72
	.byte	0x3b
	.4byte	0xb69
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.byte	0x73
	.byte	0x2a
	.4byte	0x65
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.string	"hs"
	.byte	0x1
	.byte	0x75
	.byte	0x1e
	.4byte	0x9d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x27
	.string	"h"
	.byte	0x1
	.byte	0x76
	.byte	0x13
	.4byte	0xe90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.4byte	.LASF141
	.byte	0x1
	.byte	0x77
	.byte	0x13
	.4byte	0xea0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x78
	.byte	0x12
	.4byte	0x6c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x29
	.string	"d"
	.byte	0x1
	.byte	0x79
	.byte	0x13
	.4byte	0x3f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x27
	.string	"A"
	.byte	0x1
	.byte	0x7a
	.byte	0x28
	.4byte	0xa6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x27
	.string	"R"
	.byte	0x1
	.byte	0x7b
	.byte	0x28
	.4byte	0xa28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2a
	.4byte	0xf18
	.4byte	.LBI6
	.byte	.LVU14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7e
	.byte	0x9
	.4byte	0xd17
	.uleb128 0x2b
	.4byte	0xf29
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2d
	.4byte	0xf43
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2d
	.4byte	0xf4d
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2d
	.4byte	0xf57
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xeb0
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x7e
	.byte	0x34
	.4byte	0xd5a
	.uleb128 0x2f
	.4byte	0xec1
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2d
	.4byte	0xede
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2d
	.4byte	0xee8
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2d
	.4byte	0xef2
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0xf8e
	.4byte	0xd75
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0xf9a
	.4byte	0xd90
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xf9a
	.4byte	0xdab
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL23
	.4byte	0xf9a
	.4byte	0xdc6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0xfa6
	.4byte	0xde2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0xfb2
	.4byte	0xdf7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x24
	.4byte	.LVL26
	.4byte	0xfbe
	.4byte	0xe20
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL27
	.4byte	0xfca
	.4byte	0xe3c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x24
	.4byte	.LVL28
	.4byte	0xfd6
	.4byte	0xe57
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0xfe2
	.4byte	0xe78
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL33
	.4byte	0xfee
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xea0
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xeb0
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x30
	.4byte	.LASF143
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	0x65
	.byte	0x1
	.4byte	0xefd
	.uleb128 0x31
	.string	"R"
	.byte	0x1
	.byte	0x25
	.byte	0x21
	.4byte	0xb69
	.uleb128 0x32
	.4byte	.LASF142
	.byte	0x1
	.byte	0x28
	.byte	0x20
	.4byte	0xf13
	.byte	0x10
	.uleb128 0x5
	.byte	0x3
	.4byte	blacklist$2722
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.byte	0xc
	.4byte	0x86
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.byte	0x5e
	.byte	0xf
	.4byte	0x86
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.4byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0xf13
	.uleb128 0xa
	.4byte	0x6c
	.byte	0xb
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0xefd
	.uleb128 0x30
	.4byte	.LASF144
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	0x65
	.byte	0x1
	.4byte	0xf62
	.uleb128 0x31
	.string	"S"
	.byte	0x1
	.byte	0xf
	.byte	0x2f
	.4byte	0xb69
	.uleb128 0x27
	.string	"L"
	.byte	0x1
	.byte	0x12
	.byte	0x20
	.4byte	0xf72
	.uleb128 0x5
	.byte	0x3
	.4byte	L$2713
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0x3f
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0x19
	.byte	0x12
	.4byte	0x6c
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0xf72
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0xf62
	.uleb128 0x34
	.4byte	.LASF160
	.4byte	.LASF161
	.byte	0xf
	.byte	0
	.uleb128 0x35
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xb
	.byte	0x20
	.byte	0x8
	.uleb128 0x35
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x4
	.byte	0x6
	.uleb128 0x35
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.byte	0x2d
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x9
	.byte	0x32
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xa
	.byte	0x9d
	.byte	0xd
	.uleb128 0x35
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0x92
	.byte	0xd
	.uleb128 0x35
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.byte	0x7f
	.byte	0xd
	.uleb128 0x35
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xd
	.byte	0x10
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xe
	.byte	0x1f
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0x81
	.byte	0xc
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x39
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
	.uleb128 0x39
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS13:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43-1
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x74
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU107
	.uleb128 .LVU121
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL2
	.4byte	.LFE2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU60
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU84
.LLST3:
	.4byte	.LVL17
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
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU7
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU70
	.uleb128 .LVU84
	.uleb128 .LVU88
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU14
	.uleb128 .LVU41
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU17
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU41
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU18
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU30
	.uleb128 .LVU39
	.uleb128 .LVU41
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU19
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU41
.LLST8:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU46
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU60
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x3c
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x3d
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x3c
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU46
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU60
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU46
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU60
.LLST11:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"_dso_handle"
.LASF130:
	.string	"count"
.LASF142:
	.string	"blacklist"
.LASF152:
	.string	"crypto_verify_32"
.LASF134:
	.string	"smlen"
.LASF54:
	.string	"_size"
.LASF10:
	.string	"size_t"
.LASF101:
	.string	"_rand48"
.LASF66:
	.string	"_emergency"
.LASF13:
	.string	"uint64_t"
.LASF153:
	.string	"sodium_memcmp"
.LASF5:
	.string	"__uint8_t"
.LASF59:
	.string	"_data"
.LASF121:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF161:
	.string	"__builtin_memset"
.LASF0:
	.string	"long long unsigned int"
.LASF58:
	.string	"_lbfsize"
.LASF145:
	.string	"memmove"
.LASF158:
	.string	"__locale_t"
.LASF128:
	.string	"crypto_hash_sha512_state"
.LASF119:
	.string	"_mbrtowc_state"
.LASF114:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF146:
	.string	"_crypto_sign_ed25519_ref10_hinit"
.LASF8:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF89:
	.string	"_ubuf"
.LASF53:
	.string	"_base"
.LASF36:
	.string	"__tm_hour"
.LASF80:
	.string	"__sf"
.LASF43:
	.string	"_on_exit_args"
.LASF84:
	.string	"_cookie"
.LASF79:
	.string	"__sglue"
.LASF129:
	.string	"state"
.LASF16:
	.string	"long int"
.LASF106:
	.string	"_mprec"
.LASF56:
	.string	"_flags"
.LASF47:
	.string	"_is_cxa"
.LASF62:
	.string	"_stdin"
.LASF91:
	.string	"_blksize"
.LASF14:
	.string	"_lock_t"
.LASF73:
	.string	"_cvtbuf"
.LASF92:
	.string	"_offset"
.LASF120:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_strtok_last"
.LASF118:
	.string	"_mbrlen_state"
.LASF44:
	.string	"_fnargs"
.LASF50:
	.string	"_fns"
.LASF30:
	.string	"_sign"
.LASF25:
	.string	"_flock_t"
.LASF64:
	.string	"_stderr"
.LASF32:
	.string	"_Bigint"
.LASF71:
	.string	"_gamma_signgam"
.LASF85:
	.string	"_read"
.LASF108:
	.string	"_result_k"
.LASF148:
	.string	"crypto_hash_sha512_final"
.LASF33:
	.string	"__tm"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF7:
	.string	"unsigned int"
.LASF21:
	.string	"__wchb"
.LASF63:
	.string	"_stdout"
.LASF72:
	.string	"_cvtlen"
.LASF26:
	.string	"long unsigned int"
.LASF55:
	.string	"__sFILE_fake"
.LASF99:
	.string	"_niobs"
.LASF4:
	.string	"short unsigned int"
.LASF78:
	.string	"_atexit0"
.LASF82:
	.string	"_signal_buf"
.LASF76:
	.string	"_asctime_buf"
.LASF149:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF107:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF19:
	.string	"wint_t"
.LASF93:
	.string	"_lock"
.LASF95:
	.string	"_flags2"
.LASF147:
	.string	"crypto_hash_sha512_update"
.LASF136:
	.string	"mlen"
.LASF151:
	.string	"crypto_core_curve25519_ref10_ge_tobytes"
.LASF86:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF81:
	.string	"_misc"
.LASF123:
	.string	"__sf_fake_stdin"
.LASF144:
	.string	"crypto_sign_check_S_lt_L"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF157:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF132:
	.string	"crypto_core_curve25519_ref10_ge_p2"
.LASF133:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF139:
	.string	"_crypto_sign_ed25519_verify_detached"
.LASF38:
	.string	"__tm_mon"
.LASF48:
	.string	"_atexit"
.LASF127:
	.string	"suboptarg"
.LASF67:
	.string	"__sdidinit"
.LASF17:
	.string	"_off_t"
.LASF9:
	.string	"__uint64_t"
.LASF159:
	.string	"badsig"
.LASF156:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/open.c"
.LASF137:
	.string	"crypto_sign_ed25519_open"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF141:
	.string	"rcheck"
.LASF12:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF131:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF100:
	.string	"_iobs"
.LASF140:
	.string	"prehashed"
.LASF3:
	.string	"short int"
.LASF41:
	.string	"__tm_yday"
.LASF52:
	.string	"__sbuf"
.LASF110:
	.string	"_freelist"
.LASF97:
	.string	"__FILE"
.LASF24:
	.string	"_mbstate_t"
.LASF83:
	.string	"__sFILE"
.LASF94:
	.string	"_mbstate"
.LASF105:
	.string	"_rand_next"
.LASF113:
	.string	"_mblen_state"
.LASF65:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF69:
	.string	"_locale"
.LASF70:
	.string	"__cleanup"
.LASF68:
	.string	"_unspecified_locale_info"
.LASF29:
	.string	"_maxwds"
.LASF60:
	.string	"_reent"
.LASF102:
	.string	"_seed"
.LASF22:
	.string	"__count"
.LASF23:
	.string	"__value"
.LASF87:
	.string	"_seek"
.LASF18:
	.string	"_fpos_t"
.LASF61:
	.string	"_errno"
.LASF96:
	.string	"char"
.LASF35:
	.string	"__tm_min"
.LASF150:
	.string	"crypto_core_curve25519_ref10_ge_double_scalarmult_vartime"
.LASF6:
	.string	"__int32_t"
.LASF103:
	.string	"_mult"
.LASF28:
	.string	"_next"
.LASF155:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF46:
	.string	"_fntypes"
.LASF111:
	.string	"_misc_reent"
.LASF135:
	.string	"mlen_p"
.LASF143:
	.string	"small_order"
.LASF104:
	.string	"_add"
.LASF27:
	.string	"__ULong"
.LASF117:
	.string	"_getdate_err"
.LASF138:
	.string	"crypto_sign_ed25519_verify_detached"
.LASF126:
	.string	"_global_impure_ptr"
.LASF160:
	.string	"memset"
.LASF57:
	.string	"_file"
.LASF31:
	.string	"_wds"
.LASF40:
	.string	"__tm_wday"
.LASF98:
	.string	"_glue"
.LASF11:
	.string	"uint8_t"
.LASF116:
	.string	"_l64a_buf"
.LASF77:
	.string	"_sig_func"
.LASF90:
	.string	"_nbuf"
.LASF42:
	.string	"__tm_isdst"
.LASF75:
	.string	"_localtime_buf"
.LASF88:
	.string	"_close"
.LASF125:
	.string	"__sf_fake_stderr"
.LASF74:
	.string	"_r48"
.LASF154:
	.string	"crypto_core_curve25519_ref10_ge_frombytes_negate_vartime"
.LASF115:
	.string	"_mbtowc_state"
.LASF109:
	.string	"_p5s"
.LASF37:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
