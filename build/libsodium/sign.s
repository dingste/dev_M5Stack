	.file	"sign.c"
	.text
.Ltext0:
	.section	.text._crypto_sign_ed25519_ref10_hinit,"ax",@progbits
	.literal_position
	.literal .LC0, DOM2PREFIX$2577
	.literal .LC1, 34, 0
	.align	4
	.global	_crypto_sign_ed25519_ref10_hinit
	.type	_crypto_sign_ed25519_ref10_hinit, @function
_crypto_sign_ed25519_ref10_hinit:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/sign.c"
	.loc 1 12 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 20 0
	mov.n	a10, a2
	call8	crypto_hash_sha512_init
.LVL1:
	.loc 1 21 0
	beqz.n	a3, .L1
.LVL2:
.LBB4:
.LBB5:
	.loc 1 22 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	crypto_hash_sha512_update
.LVL3:
.L1:
	retw.n
.LBE5:
.LBE4:
.LFE0:
	.size	_crypto_sign_ed25519_ref10_hinit, .-_crypto_sign_ed25519_ref10_hinit
	.section	.text._crypto_sign_ed25519_detached,"ax",@progbits
	.literal_position
	.literal .LC2, 32, 0
	.literal .LC3, 64, 0
	.align	4
	.global	_crypto_sign_ed25519_detached
	.type	_crypto_sign_ed25519_detached, @function
_crypto_sign_ed25519_detached:
.LFB1:
	.loc 1 30 0
.LVL4:
	entry	sp, 608
.LCFI1:
	.loc 1 30 0
	mov.n	a5, a3
	.loc 1 37 0
	movi	a3, 0x1f0
.LVL5:
	add.n	a3, sp, a3
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	l32i	a11, sp, 608
	mov.n	a10, a3
	call8	crypto_hash_sha512
.LVL6:
	.loc 1 38 0
	l8ui	a10, a3, 0
	movi.n	a8, -8
	and	a8, a10, a8
	s8i	a8, a3, 0
	.loc 1 40 0
	l8ui	a8, a3, 31
	.loc 1 42 0
	l32i	a11, sp, 612
	.loc 1 40 0
	extui	a10, a8, 0, 6
	movi.n	a8, 0x40
	or	a8, a10, a8
	.loc 1 42 0
	mov.n	a10, sp
	.loc 1 40 0
	s8i	a8, a3, 31
	.loc 1 42 0
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL7:
	.loc 1 43 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	addi	a11, a3, 32
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL8:
	.loc 1 44 0
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL9:
	.loc 1 45 0
	movi	a11, 0x1b0
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL10:
	.loc 1 47 0
	l32i	a9, sp, 608
	movi.n	a12, 0x20
	addi	a8, a2, 32
	add.n	a11, a9, a12
	mov.n	a10, a8
	call8	memmove
.LVL11:
	mov.n	a8, a10
	.loc 1 49 0
	movi	a10, 0x1b0
	add.n	a10, a10, sp
	s32i	a8, sp, 560
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL12:
	.loc 1 50 0
	movi	a11, 0x1b0
	movi	a10, 0xd0
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL13:
	.loc 1 51 0
	movi	a11, 0xd0
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL14:
	.loc 1 53 0
	l32i	a11, sp, 612
	mov.n	a10, sp
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL15:
	.loc 1 54 0
	l32r	a12, .LC3
	l32r	a13, .LC3+4
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL16:
	.loc 1 55 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL17:
	.loc 1 56 0
	movi	a11, 0x170
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL18:
	.loc 1 58 0
	movi	a10, 0x170
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL19:
	.loc 1 59 0
	l32i	a8, sp, 560
	movi	a13, 0x1b0
	movi	a11, 0x170
	add.n	a11, a11, sp
	mov.n	a10, a8
	add.n	a13, a13, sp
	mov.n	a12, a3
	call8	crypto_core_curve25519_ref10_sc_muladd
.LVL20:
	.loc 1 61 0
	movi.n	a11, 0x40
	mov.n	a10, a3
	.loc 1 30 0
	.loc 1 61 0
	call8	sodium_memzero
.LVL21:
	.loc 1 63 0
	beqz.n	a5, .L7
	.loc 1 64 0
	l32r	a2, .LC3
.LVL22:
	l32r	a3, .LC3+4
	s32i.n	a2, a5, 0
	s32i.n	a3, a5, 4
.L7:
	.loc 1 67 0
	movi.n	a2, 0
	retw.n
.LFE1:
	.size	_crypto_sign_ed25519_detached, .-_crypto_sign_ed25519_detached
	.section	.text.crypto_sign_ed25519_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_detached
	.type	crypto_sign_ed25519_detached, @function
crypto_sign_ed25519_detached:
.LFB2:
	.loc 1 73 0
.LVL23:
	entry	sp, 48
.LCFI2:
	.loc 1 74 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	.loc 1 73 0
	mov.n	a15, a7
	.loc 1 74 0
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_crypto_sign_ed25519_detached
.LVL24:
	.loc 1 75 0
	mov.n	a2, a10
.LVL25:
	.loc 1 73 0
	.loc 1 75 0
	retw.n
.LFE2:
	.size	crypto_sign_ed25519_detached, .-crypto_sign_ed25519_detached
	.section	.text.crypto_sign_ed25519,"ax",@progbits
	.literal_position
	.literal .LC4, 0, 0
	.align	4
	.global	crypto_sign_ed25519
	.type	crypto_sign_ed25519, @function
crypto_sign_ed25519:
.LFB3:
	.loc 1 81 0
.LVL26:
	entry	sp, 64
.LCFI3:
	.loc 1 84 0
	addi	a8, a2, 64
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a8
	call8	memmove
.LVL27:
	.loc 1 86 0
	l32i	a9, sp, 64
	mov.n	a12, a10
	s32i.n	a9, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	addi	a11, sp, 16
	mov.n	a10, a2
	.loc 1 81 0
	.loc 1 86 0
	call8	crypto_sign_ed25519_detached
.LVL28:
	bnez.n	a10, .L13
	.loc 1 87 0
	l32i.n	a8, sp, 16
	bnei	a8, 64, .L13
	l32i.n	a8, sp, 20
	beqz.n	a8, .L25
.L13:
	.loc 1 89 0
	beqz.n	a3, .L16
	.loc 1 90 0
	l32r	a8, .LC4
	l32r	a9, .LC4+4
	s32i.n	a8, a3, 0
	s32i.n	a9, a3, 4
.L16:
	.loc 1 92 0
	addi	a12, a6, 64
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL29:
	.loc 1 93 0
	movi.n	a10, -1
	j	.L17
.L25:
	.loc 1 97 0
	beqz.n	a3, .L17
	.loc 1 98 0
	addi	a2, a6, 64
.LVL30:
	movi.n	a8, 1
	bltu	a2, a6, .L18
	mov.n	a8, a10
.L18:
	add.n	a7, a8, a7
	s32i.n	a2, a3, 0
	s32i.n	a7, a3, 4
.L17:
	.loc 1 101 0
	mov.n	a2, a10
	retw.n
.LFE3:
	.size	crypto_sign_ed25519, .-crypto_sign_ed25519
	.section	.rodata.DOM2PREFIX$2577,"a",@progbits
	.type	DOM2PREFIX$2577, @object
	.size	DOM2PREFIX$2577, 34
DOM2PREFIX$2577:
	.byte	83
	.byte	105
	.byte	103
	.byte	69
	.byte	100
	.byte	50
	.byte	53
	.byte	53
	.byte	49
	.byte	57
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	69
	.byte	100
	.byte	50
	.byte	53
	.byte	53
	.byte	49
	.byte	57
	.byte	32
	.byte	99
	.byte	111
	.byte	108
	.byte	108
	.byte	105
	.byte	115
	.byte	105
	.byte	111
	.byte	110
	.byte	115
	.byte	1
	.byte	0
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x260
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6cb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x48
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x21
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1e
	.4byte	0x73
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x39
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0xd0
	.byte	0x4
	.byte	0x18
	.4byte	0xee
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x19
	.4byte	0xee
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1a
	.4byte	0xfe
	.byte	0x40
	.uleb128 0x8
	.string	"buf"
	.byte	0x4
	.byte	0x1b
	.4byte	0x10e
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0xb2
	.4byte	0xfe
	.uleb128 0xa
	.4byte	0x81
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0xb2
	.4byte	0x10e
	.uleb128 0xa
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x11e
	.uleb128 0xa
	.4byte	0x81
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1c
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x8
	.4byte	0x134
	.uleb128 0x9
	.4byte	0xa7
	.4byte	0x144
	.uleb128 0xa
	.4byte	0x81
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0xa0
	.byte	0x5
	.byte	0x4b
	.4byte	0x175
	.uleb128 0x8
	.string	"X"
	.byte	0x5
	.byte	0x4c
	.4byte	0x129
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x5
	.byte	0x4d
	.4byte	0x129
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x5
	.byte	0x4e
	.4byte	0x129
	.byte	0x50
	.uleb128 0x8
	.string	"T"
	.byte	0x5
	.byte	0x4f
	.4byte	0x129
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x50
	.4byte	0x144
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	0x1d0
	.uleb128 0xd
	.string	"hs"
	.byte	0x1
	.byte	0xb
	.4byte	0x1d0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb
	.4byte	0x21
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd
	.4byte	0x1e6
	.byte	0x22
	.byte	0x53
	.byte	0x69
	.byte	0x67
	.byte	0x45
	.byte	0x64
	.byte	0x32
	.byte	0x35
	.byte	0x35
	.byte	0x31
	.byte	0x39
	.byte	0x20
	.byte	0x6e
	.byte	0x6f
	.byte	0x20
	.byte	0x45
	.byte	0x64
	.byte	0x32
	.byte	0x35
	.byte	0x35
	.byte	0x31
	.byte	0x39
	.byte	0x20
	.byte	0x63
	.byte	0x6f
	.byte	0x6c
	.byte	0x6c
	.byte	0x69
	.byte	0x73
	.byte	0x69
	.byte	0x6f
	.byte	0x6e
	.byte	0x73
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x9
	.4byte	0x48
	.4byte	0x1e6
	.uleb128 0xa
	.4byte	0x81
	.byte	0x21
	.byte	0
	.uleb128 0x10
	.4byte	0x1d6
	.uleb128 0x11
	.4byte	0x180
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x276
	.uleb128 0x12
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	0x196
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	0x1a1
	.uleb128 0x5
	.byte	0x3
	.4byte	DOM2PREFIX$2577
	.uleb128 0x14
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x265
	.uleb128 0x15
	.4byte	0x196
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	0x18c
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x13
	.4byte	0x1a1
	.uleb128 0x5
	.byte	0x3
	.4byte	DOM2PREFIX$2577
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0x657
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	DOM2PREFIX$2577
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0x662
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1b
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x1a
	.string	"sig"
	.byte	0x1
	.byte	0x1b
	.4byte	0x8f
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1b
	.4byte	0x4e0
	.4byte	.LLST3
	.uleb128 0x1c
	.string	"m"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4e6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1c
	.string	"sk"
	.byte	0x1
	.byte	0x1d
	.4byte	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1d
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.string	"hs"
	.byte	0x1
	.byte	0x1f
	.4byte	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x1e
	.string	"az"
	.byte	0x1
	.byte	0x20
	.4byte	0x4f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.4byte	.LASF26
	.byte	0x1
	.byte	0x21
	.4byte	0x4f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.4byte	.LASF27
	.byte	0x1
	.byte	0x22
	.4byte	0x4f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1e
	.string	"R"
	.byte	0x1
	.byte	0x23
	.4byte	0x175
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0x66d
	.4byte	0x347
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x180
	.4byte	0x363
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x657
	.4byte	0x37e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.byte	0
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0x657
	.4byte	0x399
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x678
	.4byte	0x3b5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0x683
	.4byte	0x3d8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.4byte	.LVL12
	.4byte	0x68e
	.4byte	0x3ed
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x699
	.4byte	0x409
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x20
	.4byte	.LVL14
	.4byte	0x6a4
	.4byte	0x424
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.uleb128 0x20
	.4byte	.LVL15
	.4byte	0x180
	.4byte	0x440
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x657
	.4byte	0x45b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0x657
	.4byte	0x476
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x678
	.4byte	0x492
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0x68e
	.4byte	0x4a7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0x6af
	.4byte	0x4c9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x6ba
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4ec
	.uleb128 0x10
	.4byte	0x48
	.uleb128 0x9
	.4byte	0x48
	.4byte	0x501
	.uleb128 0xa
	.4byte	0x81
	.byte	0x3f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF29
	.byte	0x1
	.byte	0x46
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58b
	.uleb128 0x1a
	.string	"sig"
	.byte	0x1
	.byte	0x46
	.4byte	0x8f
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.byte	0x46
	.4byte	0x4e0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"m"
	.byte	0x1
	.byte	0x47
	.4byte	0x4e6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF24
	.byte	0x1
	.byte	0x47
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1c
	.string	"sk"
	.byte	0x1
	.byte	0x48
	.4byte	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.4byte	.LVL24
	.4byte	0x276
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4e
	.4byte	0x21
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x657
	.uleb128 0x1a
	.string	"sm"
	.byte	0x1
	.byte	0x4e
	.4byte	0x8f
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4e
	.4byte	0x4e0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"m"
	.byte	0x1
	.byte	0x4f
	.4byte	0x4e6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4f
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1c
	.string	"sk"
	.byte	0x1
	.byte	0x50
	.4byte	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.4byte	.LASF32
	.byte	0x1
	.byte	0x52
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0x683
	.4byte	0x618
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0x501
	.4byte	0x63a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0x6c5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x76
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.byte	0x2d
	.uleb128 0x21
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.byte	0x2a
	.uleb128 0x21
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x26
	.uleb128 0x21
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.byte	0x32
	.uleb128 0x21
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x18
	.uleb128 0x21
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x9d
	.uleb128 0x21
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x91
	.uleb128 0x21
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x80
	.uleb128 0x21
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x9e
	.uleb128 0x21
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x16
	.uleb128 0x22
	.4byte	.LASF46
	.4byte	.LASF46
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
	.uleb128 0xf
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
	.uleb128 0xa
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"__uint8_t"
.LASF17:
	.string	"state"
.LASF27:
	.string	"hram"
.LASF34:
	.string	"crypto_hash_sha512_init"
.LASF18:
	.string	"count"
.LASF6:
	.string	"__int32_t"
.LASF41:
	.string	"crypto_core_curve25519_ref10_sc_muladd"
.LASF44:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/sign.c"
.LASF24:
	.string	"mlen"
.LASF16:
	.string	"uint64_t"
.LASF20:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF30:
	.string	"crypto_sign_ed25519"
.LASF43:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF12:
	.string	"long unsigned int"
.LASF26:
	.string	"nonce"
.LASF1:
	.string	"short unsigned int"
.LASF46:
	.string	"memset"
.LASF32:
	.string	"siglen"
.LASF29:
	.string	"crypto_sign_ed25519_detached"
.LASF38:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF21:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF23:
	.string	"siglen_p"
.LASF19:
	.string	"crypto_hash_sha512_state"
.LASF45:
	.string	"_crypto_sign_ed25519_ref10_hinit"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"crypto_hash_sha512_final"
.LASF40:
	.string	"crypto_core_curve25519_ref10_ge_p3_tobytes"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF22:
	.string	"prehashed"
.LASF28:
	.string	"_crypto_sign_ed25519_detached"
.LASF37:
	.string	"memmove"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF31:
	.string	"smlen_p"
.LASF7:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF35:
	.string	"crypto_hash_sha512"
.LASF33:
	.string	"crypto_hash_sha512_update"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF42:
	.string	"sodium_memzero"
.LASF25:
	.string	"DOM2PREFIX"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
