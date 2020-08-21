	.file	"open.c"
	.text
.Ltext0:
	.section	.text._crypto_sign_ed25519_verify_detached,"ax",@progbits
	.literal_position
	.literal .LC2, L$2581
	.literal .LC3, blacklist$2590
	.literal .LC4, 32, 0
	.align	4
	.global	_crypto_sign_ed25519_verify_detached
	.type	_crypto_sign_ed25519_verify_detached, @function
_crypto_sign_ed25519_verify_detached:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/open.c"
	.loc 1 116 0
.LVL0:
	entry	sp, 640
.LCFI0:
.LVL1:
	.loc 1 126 0
	addi	a8, a2, 32
	l32r	a13, .LC2
	.loc 1 116 0
	.loc 1 126 0
	s32i	a8, sp, 592
.LVL2:
	addi	a14, a2, 63
.LBB6:
.LBB7:
	.loc 1 24 0
	movi.n	a9, 1
	.loc 1 23 0
	movi.n	a11, 0
	movi.n	a12, 0x20
	loop	a12, .L2_LEND
.LVL3:
.L2:
	.loc 1 29 0
	l8ui	a15, a14, 0
	l8ui	a8, a13, 31
	extui	a9, a9, 0, 8
.LVL4:
	sub	a10, a15, a8
	.loc 1 30 0
	xor	a8, a15, a8
	addi.n	a8, a8, -1
	.loc 1 29 0
	srai	a10, a10, 8
	.loc 1 30 0
	srai	a8, a8, 8
	.loc 1 29 0
	and	a10, a10, a9
	.loc 1 30 0
	and	a9, a9, a8
	.loc 1 29 0
	or	a11, a10, a11
.LVL5:
	.loc 1 30 0
	extui	a9, a9, 0, 8
.LVL6:
	addi.n	a14, a14, -1
	addi.n	a13, a13, -1
	.L2_LEND:
.LBE7:
.LBE6:
	movi.n	a12, 0
.LBB9:
.LBB10:
	.loc 1 100 0
	l32r	a15, .LC3
	.loc 1 97 0
	movi	a13, 0x180
.LBE10:
.LBE9:
	.loc 1 126 0
	bne	a11, a12, .L14
.LVL7:
.L6:
	.loc 1 127 0
	movi.n	a2, -1
.LVL8:
	retw.n
.LVL9:
.L5:
.LBB13:
.LBB11:
	.loc 1 100 0
	add.n	a14, a9, a12
	add.n	a8, a2, a9
	add.n	a14, a14, a15
	l8ui	a14, a14, 0
	l8ui	a8, a8, 0
	.loc 1 99 0
	addi.n	a9, a9, 1
.LVL10:
	.loc 1 100 0
	xor	a8, a14, a8
	or	a10, a10, a8
.LVL11:
	extui	a10, a10, 0, 8
.LVL12:
	.loc 1 99 0
	addi.n	a11, a11, -1
	bnez.n	a11, .L5
	.loc 1 102 0
	beqz.n	a10, .L6
.LVL13:
	addi	a12, a12, 32
	.loc 1 97 0
	beq	a12, a13, .L22
.LVL14:
.L14:
.LBE11:
.LBE13:
.LBB14:
.LBB8:
	.loc 1 23 0
	movi.n	a10, 0
	mov.n	a9, a10
.LBE8:
.LBE14:
.LBB15:
.LBB12:
	.loc 1 100 0
	movi.n	a11, 0x20
	j	.L5
.LVL15:
.L9:
.LBE12:
.LBE15:
	.loc 1 138 0 discriminator 3
	l8ui	a11, a9, 0
	addi.n	a9, a9, 1
	or	a10, a10, a11
.LVL16:
	extui	a10, a10, 0, 8
.LVL17:
	addi.n	a8, a8, -1
	bnez.n	a8, .L9
	.loc 1 140 0
	beqz.n	a10, .L6
	.loc 1 143 0
	mov.n	a11, a7
	mov.n	a10, sp
.LVL18:
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL19:
	.loc 1 144 0
	l32r	a12, .LC4
	l32r	a13, .LC4+4
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL20:
	.loc 1 145 0
	l32r	a12, .LC4
	l32r	a13, .LC4+4
	mov.n	a11, a6
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL21:
	.loc 1 146 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL22:
	.loc 1 147 0
	movi	a11, 0x1e8
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL23:
	.loc 1 148 0
	movi	a10, 0x1e8
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL24:
	.loc 1 150 0
	l32i	a13, sp, 592
	movi	a12, 0xd0
	movi	a11, 0x1e8
	movi	a10, 0x170
	add.n	a12, sp, a12
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_double_scalarmult_vartime
.LVL25:
	.loc 1 151 0
	movi	a11, 0x170
	movi	a10, 0x228
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_tobytes
.LVL26:
	.loc 1 153 0
	movi	a10, 0x228
	mov.n	a11, a2
	add.n	a10, a10, sp
	call8	crypto_verify_32
.LVL27:
	.loc 1 154 0
	movi	a11, 0x228
	.loc 1 153 0
	mov.n	a3, a10
.LVL28:
	.loc 1 154 0
	movi.n	a12, 0x20
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	sodium_memcmp
.LVL29:
	.loc 1 153 0
	or	a2, a3, a10
.LVL30:
	retw.n
.LVL31:
.L22:
	.loc 1 134 0
	movi	a10, 0xd0
.LVL32:
	mov.n	a11, a6
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL33:
	mov.n	a9, a6
	movi.n	a8, 0x20
	beqz.n	a10, .L9
	j	.L6
.LFE2:
	.size	_crypto_sign_ed25519_verify_detached, .-_crypto_sign_ed25519_verify_detached
	.section	.text.crypto_sign_ed25519_verify_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_verify_detached
	.type	crypto_sign_ed25519_verify_detached, @function
crypto_sign_ed25519_verify_detached:
.LFB3:
	.loc 1 162 0
.LVL34:
	entry	sp, 32
.LCFI1:
	.loc 1 163 0
	movi.n	a15, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_crypto_sign_ed25519_verify_detached
.LVL35:
	.loc 1 164 0
	mov.n	a2, a10
.LVL36:
	retw.n
.LFE3:
	.size	crypto_sign_ed25519_verify_detached, .-crypto_sign_ed25519_verify_detached
	.section	.text.crypto_sign_ed25519_open,"ax",@progbits
	.literal_position
	.literal .LC6, 0, 0
	.align	4
	.global	crypto_sign_ed25519_open
	.type	crypto_sign_ed25519_open, @function
crypto_sign_ed25519_open:
.LFB4:
	.loc 1 170 0
.LVL37:
	entry	sp, 32
.LCFI2:
	.loc 1 170 0
	mov.n	a8, a6
	.loc 1 173 0
	addi	a5, a8, -64
	.loc 1 170 0
	mov.n	a6, a2
.LVL38:
	mov.n	a10, a4
	.loc 1 173 0
	movi.n	a2, 1
.LVL39:
	bltu	a5, a8, .L25
	movi.n	a2, 0
.L25:
	addi.n	a7, a7, -1
	add.n	a7, a2, a7
	bnez.n	a7, .L26
	movi	a2, -0x41
	bltu	a2, a5, .L26
.LVL40:
	.loc 1 177 0
	addi	a4, a10, 64
.LVL41:
	l32i.n	a14, sp, 32
	mov.n	a12, a5
	mov.n	a13, a7
	mov.n	a11, a4
	call8	crypto_sign_ed25519_verify_detached
.LVL42:
	mov.n	a2, a10
	beqz.n	a10, .L28
	.loc 1 178 0
	mov.n	a12, a5
	mov.n	a11, a7
	mov.n	a10, a6
	call8	memset
.LVL43:
	.loc 1 179 0
	j	.L26
.L28:
	.loc 1 181 0
	beqz.n	a3, .L29
	.loc 1 182 0
	s32i.n	a5, a3, 0
	s32i.n	a10, a3, 4
.L29:
	.loc 1 184 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a6
	call8	memmove
.LVL44:
	.loc 1 186 0
	retw.n
.LVL45:
.L26:
	.loc 1 192 0
	movi.n	a2, -1
	.loc 1 189 0
	beqz.n	a3, .L30
	.loc 1 190 0
	l32r	a4, .LC6
	l32r	a5, .LC6+4
	s32i.n	a4, a3, 0
	s32i.n	a5, a3, 4
.L30:
	.loc 1 193 0
	retw.n
.LFE4:
	.size	crypto_sign_ed25519_open, .-crypto_sign_ed25519_open
	.section	.rodata.blacklist$2590,"a",@progbits
	.align	16
	.type	blacklist$2590, @object
	.size	blacklist$2590, 384
blacklist$2590:
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
	.section	.rodata.L$2581,"a",@progbits
	.type	L$2581, @object
	.size	L$2581, 32
L$2581:
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/ed25519_ref10.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x866
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0x38
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x4
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
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
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
	.byte	0xd0
	.byte	0x5
	.byte	0x18
	.4byte	0xf9
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x19
	.4byte	0xf9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1a
	.4byte	0x109
	.byte	0x40
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x119
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x90
	.4byte	0x109
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x90
	.4byte	0x119
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x129
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1c
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x8
	.4byte	0x13f
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x14f
	.uleb128 0xa
	.4byte	0xad
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0x78
	.byte	0x6
	.byte	0x44
	.4byte	0x176
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x45
	.4byte	0x134
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x46
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x47
	.4byte	0x134
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x48
	.4byte	0x14f
	.uleb128 0xb
	.byte	0xa0
	.byte	0x6
	.byte	0x4b
	.4byte	0x1b2
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x4c
	.4byte	0x134
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x4d
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x4e
	.4byte	0x134
	.byte	0x50
	.uleb128 0x8
	.string	"T"
	.byte	0x6
	.byte	0x4f
	.4byte	0x134
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x50
	.4byte	0x181
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf
	.4byte	0x5a
	.byte	0x1
	.4byte	0x21c
	.uleb128 0xd
	.string	"S"
	.byte	0x1
	.byte	0xf
	.4byte	0x21c
	.uleb128 0xe
	.string	"L"
	.byte	0x1
	.byte	0x12
	.4byte	0x237
	.byte	0x20
	.byte	0xed
	.byte	0xd3
	.byte	0xf5
	.byte	0x5c
	.byte	0x1a
	.byte	0x63
	.byte	0x12
	.byte	0x58
	.byte	0xd6
	.byte	0x9c
	.byte	0xf7
	.byte	0xa2
	.byte	0xde
	.byte	0xf9
	.byte	0xde
	.byte	0x14
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
	.byte	0x10
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x17
	.4byte	0x3a
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x18
	.4byte	0x3a
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x19
	.4byte	0x61
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x222
	.uleb128 0x10
	.4byte	0x3a
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x237
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	0x227
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x25
	.4byte	0x5a
	.byte	0x1
	.4byte	0x3fe
	.uleb128 0xd
	.string	"R"
	.byte	0x1
	.byte	0x25
	.4byte	0x21c
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x28
	.4byte	0x414
	.2byte	0x180
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
	.byte	0x1
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
	.byte	0x26
	.byte	0xe8
	.byte	0x95
	.byte	0x8f
	.byte	0xc2
	.byte	0xb2
	.byte	0x27
	.byte	0xb0
	.byte	0x45
	.byte	0xc3
	.byte	0xf4
	.byte	0x89
	.byte	0xf2
	.byte	0xef
	.byte	0x98
	.byte	0xf0
	.byte	0xd5
	.byte	0xdf
	.byte	0xac
	.byte	0x5
	.byte	0xd3
	.byte	0xc6
	.byte	0x33
	.byte	0x39
	.byte	0xb1
	.byte	0x38
	.byte	0x2
	.byte	0x88
	.byte	0x6d
	.byte	0x53
	.byte	0xfc
	.byte	0x5
	.byte	0xc7
	.byte	0x17
	.byte	0x6a
	.byte	0x70
	.byte	0x3d
	.byte	0x4d
	.byte	0xd8
	.byte	0x4f
	.byte	0xba
	.byte	0x3c
	.byte	0xb
	.byte	0x76
	.byte	0xd
	.byte	0x10
	.byte	0x67
	.byte	0xf
	.byte	0x2a
	.byte	0x20
	.byte	0x53
	.byte	0xfa
	.byte	0x2c
	.byte	0x39
	.byte	0xcc
	.byte	0xc6
	.byte	0x4e
	.byte	0xc7
	.byte	0xfd
	.byte	0x77
	.byte	0x92
	.byte	0xac
	.byte	0x3
	.byte	0x7a
	.byte	0x13
	.byte	0xe8
	.byte	0x95
	.byte	0x8f
	.byte	0xc2
	.byte	0xb2
	.byte	0x27
	.byte	0xb0
	.byte	0x45
	.byte	0xc3
	.byte	0xf4
	.byte	0x89
	.byte	0xf2
	.byte	0xef
	.byte	0x98
	.byte	0xf0
	.byte	0xd5
	.byte	0xdf
	.byte	0xac
	.byte	0x5
	.byte	0xd3
	.byte	0xc6
	.byte	0x33
	.byte	0x39
	.byte	0xb1
	.byte	0x38
	.byte	0x2
	.byte	0x88
	.byte	0x6d
	.byte	0x53
	.byte	0xfc
	.byte	0x85
	.byte	0xb4
	.byte	0x17
	.byte	0x6a
	.byte	0x70
	.byte	0x3d
	.byte	0x4d
	.byte	0xd8
	.byte	0x4f
	.byte	0xba
	.byte	0x3c
	.byte	0xb
	.byte	0x76
	.byte	0xd
	.byte	0x10
	.byte	0x67
	.byte	0xf
	.byte	0x2a
	.byte	0x20
	.byte	0x53
	.byte	0xfa
	.byte	0x2c
	.byte	0x39
	.byte	0xcc
	.byte	0xc6
	.byte	0x4e
	.byte	0xc7
	.byte	0xfd
	.byte	0x77
	.byte	0x92
	.byte	0xac
	.byte	0x3
	.byte	0xfa
	.byte	0xec
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x7f
	.byte	0xed
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x7f
	.byte	0xee
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x7f
	.byte	0xd9
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xda
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xdb
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.4byte	0x9b
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x5e
	.4byte	0x9b
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x5f
	.4byte	0x3a
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x414
	.uleb128 0xa
	.4byte	0xad
	.byte	0xb
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	0x3fe
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6f
	.4byte	0x5a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x694
	.uleb128 0x13
	.string	"sig"
	.byte	0x1
	.byte	0x6f
	.4byte	0x21c
	.4byte	.LLST0
	.uleb128 0x13
	.string	"m"
	.byte	0x1
	.byte	0x70
	.4byte	0x21c
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x71
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x15
	.string	"pk"
	.byte	0x1
	.byte	0x72
	.4byte	0x21c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x73
	.4byte	0x5a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x16
	.string	"hs"
	.byte	0x1
	.byte	0x75
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.byte	0x76
	.4byte	0x694
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0x77
	.4byte	0x227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x78
	.4byte	0x61
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.byte	0x79
	.4byte	0x3a
	.4byte	.LLST2
	.uleb128 0x16
	.string	"A"
	.byte	0x1
	.byte	0x7a
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x16
	.string	"R"
	.byte	0x1
	.byte	0x7b
	.4byte	0x176
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x19
	.4byte	0x1bd
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7e
	.4byte	0x51c
	.uleb128 0x1a
	.4byte	0x1cd
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1c
	.4byte	0x200
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	0x209
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	0x212
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	0x1d6
	.uleb128 0x5
	.byte	0x3
	.4byte	L$2581
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x23c
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x7e
	.4byte	0x55d
	.uleb128 0x1e
	.4byte	0x24c
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.4byte	0x3e2
	.uleb128 0x1c
	.4byte	0x3eb
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	0x3f4
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	0x255
	.uleb128 0x5
	.byte	0x3
	.4byte	blacklist$2590
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0x7f2
	.4byte	0x578
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0x7fd
	.4byte	0x593
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL21
	.4byte	0x7fd
	.4byte	0x5ae
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0x7fd
	.4byte	0x5c9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL23
	.4byte	0x808
	.4byte	0x5e5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x20
	.4byte	.LVL24
	.4byte	0x813
	.4byte	0x5fa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x20
	.4byte	.LVL25
	.4byte	0x81e
	.4byte	0x624
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.4byte	.LVL26
	.4byte	0x829
	.4byte	0x640
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0x834
	.4byte	0x65b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0x83f
	.4byte	0x67c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL33
	.4byte	0x84a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x6a4
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9e
	.4byte	0x5a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x717
	.uleb128 0x13
	.string	"sig"
	.byte	0x1
	.byte	0x9e
	.4byte	0x21c
	.4byte	.LLST9
	.uleb128 0x15
	.string	"m"
	.byte	0x1
	.byte	0x9f
	.4byte	0x21c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa0
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x15
	.string	"pk"
	.byte	0x1
	.byte	0xa1
	.4byte	0x21c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LVL35
	.4byte	0x419
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa7
	.4byte	0x5a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ec
	.uleb128 0x13
	.string	"m"
	.byte	0x1
	.byte	0xa7
	.4byte	0xbb
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa7
	.4byte	0x7ec
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.string	"sm"
	.byte	0x1
	.byte	0xa8
	.4byte	0x21c
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x1
	.byte	0xa8
	.4byte	0x21
	.4byte	.LLST12
	.uleb128 0x15
	.string	"pk"
	.byte	0x1
	.byte	0xa9
	.4byte	0x21c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.byte	0xab
	.4byte	0x21
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LASF47
	.byte	0x1
	.byte	0xbc
	.4byte	.L26
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0x6a4
	.4byte	0x7af
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 -64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0x855
	.4byte	0x7cf
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL44
	.4byte	0x85e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.uleb128 0x26
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x7
	.byte	0x4
	.uleb128 0x26
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x2d
	.uleb128 0x26
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x32
	.uleb128 0x26
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x9d
	.uleb128 0x26
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x92
	.uleb128 0x26
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x7f
	.uleb128 0x26
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x10
	.uleb128 0x26
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x9
	.byte	0x1f
	.uleb128 0x26
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x81
	.uleb128 0x27
	.4byte	.LASF48
	.4byte	.LASF48
	.uleb128 0x26
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0xa
	.byte	0x18
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1c
	.uleb128 0x3
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x74
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL38
	.4byte	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
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
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB15
	.4byte	.LBE15
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
.LASF19:
	.string	"count"
.LASF26:
	.string	"blacklist"
.LASF41:
	.string	"crypto_verify_32"
.LASF34:
	.string	"smlen"
.LASF13:
	.string	"size_t"
.LASF12:
	.string	"uint64_t"
.LASF42:
	.string	"sodium_memcmp"
.LASF5:
	.string	"__uint8_t"
.LASF0:
	.string	"long long unsigned int"
.LASF20:
	.string	"crypto_hash_sha512_state"
.LASF8:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF18:
	.string	"state"
.LASF14:
	.string	"long int"
.LASF33:
	.string	"mlen_p"
.LASF37:
	.string	"crypto_hash_sha512_final"
.LASF7:
	.string	"unsigned int"
.LASF16:
	.string	"long unsigned int"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short unsigned int"
.LASF27:
	.string	"mlen"
.LASF40:
	.string	"crypto_core_curve25519_ref10_ge_tobytes"
.LASF15:
	.string	"sizetype"
.LASF36:
	.string	"crypto_hash_sha512_update"
.LASF24:
	.string	"crypto_sign_check_S_lt_L"
.LASF22:
	.string	"crypto_core_curve25519_ref10_ge_p2"
.LASF23:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF30:
	.string	"_crypto_sign_ed25519_verify_detached"
.LASF9:
	.string	"__uint64_t"
.LASF47:
	.string	"badsig"
.LASF32:
	.string	"crypto_sign_ed25519_open"
.LASF11:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF21:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF3:
	.string	"short int"
.LASF35:
	.string	"_crypto_sign_ed25519_ref10_hinit"
.LASF17:
	.string	"char"
.LASF39:
	.string	"crypto_core_curve25519_ref10_ge_double_scalarmult_vartime"
.LASF6:
	.string	"__int32_t"
.LASF28:
	.string	"prehashed"
.LASF25:
	.string	"small_order"
.LASF31:
	.string	"crypto_sign_ed25519_verify_detached"
.LASF48:
	.string	"memset"
.LASF46:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/open.c"
.LASF44:
	.string	"memmove"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF43:
	.string	"crypto_core_curve25519_ref10_ge_frombytes_negate_vartime"
.LASF29:
	.string	"rcheck"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
