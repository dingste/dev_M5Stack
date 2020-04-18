	.file	"sign.c"
	.text
.Ltext0:
	.section	.text._crypto_sign_ed25519_ref10_hinit,"ax",@progbits
	.literal_position
	.literal .LC0, DOM2PREFIX$2709
	.literal .LC1, 34, 0
	.align	4
	.global	_crypto_sign_ed25519_ref10_hinit
	.type	_crypto_sign_ed25519_ref10_hinit, @function
_crypto_sign_ed25519_ref10_hinit:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/sign.c"
	.loc 1 12 1 view -0
	.loc 1 12 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 13 5 is_stmt 1 view .LVU2
	.loc 1 20 5 view .LVU3
	mov.n	a10, a2
	call8	crypto_hash_sha512_init
.LVL1:
	.loc 1 21 5 view .LVU4
	.loc 1 21 8 is_stmt 0 view .LVU5
	beqz.n	a3, .L1
.LVL2:
.LBB4:
.LBB5:
	.loc 1 22 9 is_stmt 1 view .LVU6
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	crypto_hash_sha512_update
.LVL3:
.L1:
	.loc 1 22 9 is_stmt 0 view .LVU7
.LBE5:
.LBE4:
	.loc 1 24 1 view .LVU8
	retw.n
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
.LVL4:
.LFB1:
	.loc 1 30 1 is_stmt 1 view -0
	.loc 1 30 1 is_stmt 0 view .LVU10
	entry	sp, 608
.LCFI1:
	.loc 1 31 5 is_stmt 1 view .LVU11
	.loc 1 32 5 view .LVU12
	.loc 1 33 5 view .LVU13
	.loc 1 34 5 view .LVU14
	.loc 1 35 5 view .LVU15
	.loc 1 37 5 view .LVU16
	.loc 1 30 1 is_stmt 0 view .LVU17
	mov.n	a5, a3
	.loc 1 37 5 view .LVU18
	movi	a3, 0x1f0
.LVL5:
	.loc 1 37 5 view .LVU19
	add.n	a3, sp, a3
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	l32i	a11, sp, 608
	mov.n	a10, a3
	call8	crypto_hash_sha512
.LVL6:
	.loc 1 38 5 is_stmt 1 view .LVU20
	.loc 1 38 11 is_stmt 0 view .LVU21
	l8ui	a8, a3, 0
	movi.n	a10, -8
	and	a8, a8, a10
	s8i	a8, a3, 0
	.loc 1 39 5 is_stmt 1 view .LVU22
	.loc 1 40 5 view .LVU23
	.loc 1 39 12 is_stmt 0 view .LVU24
	l8ui	a8, a3, 31
	.loc 1 40 12 view .LVU25
	movi.n	a10, 0x40
	.loc 1 42 5 view .LVU26
	l32i	a11, sp, 612
	.loc 1 39 12 view .LVU27
	extui	a8, a8, 0, 6
	.loc 1 40 12 view .LVU28
	or	a8, a8, a10
	.loc 1 42 5 view .LVU29
	mov.n	a10, sp
	.loc 1 40 12 view .LVU30
	s8i	a8, a3, 31
	.loc 1 42 5 is_stmt 1 view .LVU31
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL7:
	.loc 1 43 5 view .LVU32
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	addi	a11, a3, 32
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL8:
	.loc 1 44 5 view .LVU33
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL9:
	.loc 1 45 5 view .LVU34
	movi	a11, 0x1b0
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL10:
	.loc 1 47 5 view .LVU35
	l32i	a9, sp, 608
	movi.n	a12, 0x20
	.loc 1 47 17 is_stmt 0 view .LVU36
	addi	a8, a2, 32
	.loc 1 47 5 view .LVU37
	add.n	a11, a9, a12
	mov.n	a10, a8
	call8	memmove
.LVL11:
	mov.n	a8, a10
	.loc 1 49 5 is_stmt 1 view .LVU38
	movi	a10, 0x1b0
	add.n	a10, a10, sp
	s32i	a8, sp, 560
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL12:
	.loc 1 50 5 view .LVU39
	movi	a11, 0x1b0
	movi	a10, 0xd0
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL13:
	.loc 1 51 5 view .LVU40
	movi	a11, 0xd0
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL14:
	.loc 1 53 5 view .LVU41
	l32i	a11, sp, 612
	mov.n	a10, sp
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL15:
	.loc 1 54 5 view .LVU42
	l32r	a12, .LC3
	l32r	a13, .LC3+4
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL16:
	.loc 1 55 5 view .LVU43
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL17:
	.loc 1 56 5 view .LVU44
	movi	a11, 0x170
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL18:
	.loc 1 58 5 view .LVU45
	movi	a10, 0x170
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL19:
	.loc 1 59 5 view .LVU46
	l32i	a8, sp, 560
	movi	a13, 0x1b0
	movi	a11, 0x170
	add.n	a11, a11, sp
	mov.n	a10, a8
	add.n	a13, a13, sp
	mov.n	a12, a3
	call8	crypto_core_curve25519_ref10_sc_muladd
.LVL20:
	.loc 1 61 5 view .LVU47
	movi.n	a11, 0x40
	mov.n	a10, a3
	.loc 1 30 1 is_stmt 0 view .LVU48
	.loc 1 61 5 view .LVU49
	call8	sodium_memzero
.LVL21:
	.loc 1 63 5 is_stmt 1 view .LVU50
	.loc 1 63 8 is_stmt 0 view .LVU51
	beqz.n	a5, .L7
	.loc 1 64 9 is_stmt 1 view .LVU52
	.loc 1 64 19 is_stmt 0 view .LVU53
	l32r	a2, .LC3
.LVL22:
	.loc 1 64 19 view .LVU54
	l32r	a3, .LC3+4
	s32i.n	a2, a5, 0
	s32i.n	a3, a5, 4
.L7:
	.loc 1 66 5 is_stmt 1 view .LVU55
	.loc 1 67 1 is_stmt 0 view .LVU56
	movi.n	a2, 0
	retw.n
.LFE1:
	.size	_crypto_sign_ed25519_detached, .-_crypto_sign_ed25519_detached
	.section	.text.crypto_sign_ed25519_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_detached
	.type	crypto_sign_ed25519_detached, @function
crypto_sign_ed25519_detached:
.LVL23:
.LFB2:
	.loc 1 73 1 is_stmt 1 view -0
	.loc 1 73 1 is_stmt 0 view .LVU58
	entry	sp, 48
.LCFI2:
	.loc 1 74 5 is_stmt 1 view .LVU59
	.loc 1 74 12 is_stmt 0 view .LVU60
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	.loc 1 73 1 view .LVU61
	mov.n	a15, a7
	.loc 1 74 12 view .LVU62
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_crypto_sign_ed25519_detached
.LVL24:
	.loc 1 75 1 view .LVU63
	mov.n	a2, a10
.LVL25:
	.loc 1 73 1 view .LVU64
	.loc 1 75 1 view .LVU65
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
.LVL26:
.LFB3:
	.loc 1 81 1 is_stmt 1 view -0
	.loc 1 81 1 is_stmt 0 view .LVU67
	entry	sp, 64
.LCFI3:
	.loc 1 82 5 is_stmt 1 view .LVU68
	.loc 1 84 5 view .LVU69
	.loc 1 84 16 is_stmt 0 view .LVU70
	addi	a8, a2, 64
	.loc 1 84 5 view .LVU71
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a8
	call8	memmove
.LVL27:
	.loc 1 86 5 is_stmt 1 view .LVU72
	.loc 1 86 9 is_stmt 0 view .LVU73
	l32i	a9, sp, 64
	mov.n	a12, a10
	s32i.n	a9, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	addi	a11, sp, 16
	mov.n	a10, a2
	.loc 1 81 1 view .LVU74
	.loc 1 86 9 view .LVU75
	call8	crypto_sign_ed25519_detached
.LVL28:
	.loc 1 86 8 view .LVU76
	bnez.n	a10, .L13
	.loc 1 87 51 view .LVU77
	l32i.n	a8, sp, 16
	bnei	a8, 64, .L13
	l32i.n	a8, sp, 20
	beqz.n	a8, .L25
.L13:
	.loc 1 89 9 is_stmt 1 view .LVU78
	.loc 1 89 12 is_stmt 0 view .LVU79
	beqz.n	a3, .L16
	.loc 1 90 13 is_stmt 1 view .LVU80
	.loc 1 90 22 is_stmt 0 view .LVU81
	l32r	a8, .LC4
	l32r	a9, .LC4+4
	s32i.n	a8, a3, 0
	s32i.n	a9, a3, 4
.L16:
	.loc 1 92 9 is_stmt 1 view .LVU82
	addi	a12, a6, 64
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL29:
	.loc 1 93 9 view .LVU83
	.loc 1 93 16 is_stmt 0 view .LVU84
	movi.n	a10, -1
	j	.L12
.L25:
	.loc 1 97 5 is_stmt 1 view .LVU85
	.loc 1 97 8 is_stmt 0 view .LVU86
	beqz.n	a3, .L12
	.loc 1 98 9 is_stmt 1 view .LVU87
	.loc 1 98 25 is_stmt 0 view .LVU88
	addi	a2, a6, 64
.LVL30:
	.loc 1 98 25 view .LVU89
	movi.n	a8, 1
	bltu	a2, a6, .L18
	mov.n	a8, a10
.L18:
	add.n	a7, a8, a7
	.loc 1 98 18 view .LVU90
	s32i.n	a2, a3, 0
	s32i.n	a7, a3, 4
.L12:
	.loc 1 101 1 view .LVU91
	mov.n	a2, a10
	retw.n
.LFE3:
	.size	crypto_sign_ed25519, .-crypto_sign_ed25519
	.section	.rodata.DOM2PREFIX$2709,"a"
	.type	DOM2PREFIX$2709, @object
	.size	DOM2PREFIX$2709, 34
DOM2PREFIX$2709:
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
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf8b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xc
	.4byte	.LASF154
	.4byte	.LASF155
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
	.byte	0x2b
	.byte	0x17
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x86
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xec
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xbd
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xec
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xfc
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x120
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xca
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xfc
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x92
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xe
	.byte	0x4
	.4byte	0x147
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x5
	.4byte	0x147
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x13a
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1b9
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1b9
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1bf
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x1cf
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x252
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x297
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x297
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x297
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x153
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x153
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x138
	.4byte	0x2a7
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2e9
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2e9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2ef
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x306
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2a7
	.uleb128 0x9
	.4byte	0x2ff
	.4byte	0x2ff
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x305
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x252
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x334
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x334
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4d
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3ad
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x334
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x30c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x511
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x33a
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x511
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x752
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x752
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x752
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x141
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ba
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8c0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8d1
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x141
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8d7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8dd
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x141
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8ee
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2e9
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2a7
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x713
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x752
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8fa
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x141
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x65a
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x334
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x30c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x511
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x138
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x678
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6a2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6c6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6e0
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x30c
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x334
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6e6
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6f6
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x30c
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xa5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x12c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x120
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x678
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x141
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x65a
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x69c
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x69c
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x17
	.4byte	0xb1
	.4byte	0x6c6
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a8
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6e0
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6cc
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x6f6
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x706
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x517
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x74c
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x74c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x752
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x713
	.uleb128 0xe
	.byte	0x4
	.4byte	0x706
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x79f
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x79f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x79f
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x33
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x7f
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x7af
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7f6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1b9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1b9
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7f6
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8a5
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x141
	.byte	0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x120
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x120
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x120
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8a5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x120
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x120
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x120
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x120
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x120
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x147
	.4byte	0x8b5
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF156
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7af
	.uleb128 0x1a
	.4byte	0x8d1
	.uleb128 0x18
	.4byte	0x511
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x758
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x1a
	.4byte	0x8ee
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x511
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x60
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.4byte	0x73
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x141
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0xd0
	.byte	0x9
	.byte	0x18
	.byte	0x10
	.4byte	0x999
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x9
	.byte	0x19
	.byte	0xe
	.4byte	0x999
	.byte	0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x9
	.byte	0x1a
	.byte	0xe
	.4byte	0x9a9
	.byte	0x40
	.uleb128 0x10
	.string	"buf"
	.byte	0x9
	.byte	0x1b
	.byte	0xd
	.4byte	0x9b9
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x94c
	.4byte	0x9a9
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x94c
	.4byte	0x9b9
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x934
	.4byte	0x9c9
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.4byte	0x964
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0xa
	.byte	0x8
	.byte	0x11
	.4byte	0x9e1
	.uleb128 0x9
	.4byte	0x940
	.4byte	0x9f1
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0xa0
	.byte	0xa
	.byte	0x4b
	.byte	0x9
	.4byte	0xa27
	.uleb128 0x10
	.string	"X"
	.byte	0xa
	.byte	0x4c
	.byte	0x25
	.4byte	0x9d5
	.byte	0
	.uleb128 0x10
	.string	"Y"
	.byte	0xa
	.byte	0x4d
	.byte	0x25
	.4byte	0x9d5
	.byte	0x28
	.uleb128 0x10
	.string	"Z"
	.byte	0xa
	.byte	0x4e
	.byte	0x25
	.4byte	0x9d5
	.byte	0x50
	.uleb128 0x10
	.string	"T"
	.byte	0xa
	.byte	0x4f
	.byte	0x25
	.4byte	0x9d5
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0xa
	.byte	0x50
	.byte	0x3
	.4byte	0x9f1
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0a
	.uleb128 0x1e
	.string	"sm"
	.byte	0x1
	.byte	0x4e
	.byte	0x24
	.4byte	0x334
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x4e
	.byte	0x3c
	.4byte	0xb0a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x4f
	.byte	0x2a
	.4byte	0xb10
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x4f
	.byte	0x40
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"sk"
	.byte	0x1
	.byte	0x50
	.byte	0x2a
	.4byte	0xb10
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.byte	0x52
	.byte	0x18
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0xf0b
	.4byte	0xacb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL28
	.4byte	0xb16
	.4byte	0xaed
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL29
	.4byte	0xf17
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x76
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x54
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbaa
	.uleb128 0x1e
	.string	"sig"
	.byte	0x1
	.byte	0x46
	.byte	0x2d
	.4byte	0x334
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.byte	0x46
	.byte	0x46
	.4byte	0xb0a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x47
	.byte	0x33
	.4byte	0xb10
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x47
	.byte	0x49
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"sk"
	.byte	0x1
	.byte	0x48
	.byte	0x33
	.4byte	0xb10
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0xbaa
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe28
	.uleb128 0x1e
	.string	"sig"
	.byte	0x1
	.byte	0x1b
	.byte	0x2e
	.4byte	0x334
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x25
	.4byte	.LASF136
	.byte	0x1
	.byte	0x1b
	.byte	0x47
	.4byte	0xb0a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.4byte	0xb10
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x1c
	.byte	0x4a
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"sk"
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.4byte	0xb10
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.byte	0x1d
	.byte	0x3c
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"hs"
	.byte	0x1
	.byte	0x1f
	.byte	0x1e
	.4byte	0x9c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x26
	.string	"az"
	.byte	0x1
	.byte	0x20
	.byte	0x13
	.4byte	0xe28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x1
	.byte	0x21
	.byte	0x13
	.4byte	0xe28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.byte	0x22
	.byte	0x13
	.4byte	0xe28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.string	"R"
	.byte	0x1
	.byte	0x23
	.byte	0x28
	.4byte	0xa27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x22
	.4byte	.LVL6
	.4byte	0xf22
	.4byte	0xc8f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL7
	.4byte	0xe38
	.4byte	0xcab
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL8
	.4byte	0xf2e
	.4byte	0xcc6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.byte	0
	.uleb128 0x22
	.4byte	.LVL9
	.4byte	0xf2e
	.4byte	0xce1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL10
	.4byte	0xf3a
	.4byte	0xcfd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0xf0b
	.4byte	0xd20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL12
	.4byte	0xf46
	.4byte	0xd35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x22
	.4byte	.LVL13
	.4byte	0xf52
	.4byte	0xd51
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x22
	.4byte	.LVL14
	.4byte	0xf5e
	.4byte	0xd6c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0xe38
	.4byte	0xd88
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL16
	.4byte	0xf2e
	.4byte	0xda3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL17
	.4byte	0xf2e
	.4byte	0xdbe
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0xf3a
	.4byte	0xdda
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x22
	.4byte	.LVL19
	.4byte	0xf46
	.4byte	0xdef
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0xf6a
	.4byte	0xe11
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0xf76
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xe38
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF157
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.4byte	0xe6f
	.uleb128 0x28
	.string	"hs"
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.4byte	0xe6f
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.byte	0xb
	.byte	0x44
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x1
	.byte	0xd
	.byte	0x20
	.4byte	0xe85
	.uleb128 0x5
	.byte	0x3
	.4byte	DOM2PREFIX$2709
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x9
	.4byte	0x54
	.4byte	0xe85
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.4byte	0xe75
	.uleb128 0x2a
	.4byte	0xe38
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0b
	.uleb128 0x2b
	.4byte	0xe45
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	0xe50
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	0xe38
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xefa
	.uleb128 0x2d
	.4byte	0xe50
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2d
	.4byte	0xe45
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x24
	.4byte	.LVL3
	.4byte	0xf2e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	DOM2PREFIX$2709
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL1
	.4byte	0xf82
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x20
	.byte	0x8
	.uleb128 0x30
	.4byte	.LASF158
	.4byte	.LASF159
	.byte	0xd
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.byte	0x26
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x9
	.byte	0x2d
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x9
	.byte	0x32
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.byte	0x9d
	.byte	0xd
	.uleb128 0x2f
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xa
	.byte	0x91
	.byte	0xd
	.uleb128 0x2f
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xa
	.byte	0x80
	.byte	0xd
	.uleb128 0x2f
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0x9e
	.byte	0xd
	.uleb128 0x2f
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xc
	.byte	0x16
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x9
	.byte	0x2a
	.byte	0x5
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x21
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
.LVUS5:
	.uleb128 0
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 0
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
.LVUS2:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
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
.LVUS3:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
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
.LVUS0:
	.uleb128 .LVU6
	.uleb128 .LVU7
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU7
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
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
.LASF42:
	.string	"_dso_handle"
.LASF129:
	.string	"count"
.LASF51:
	.string	"_size"
.LASF97:
	.string	"_rand48"
.LASF63:
	.string	"_emergency"
.LASF125:
	.string	"uint64_t"
.LASF5:
	.string	"__uint8_t"
.LASF56:
	.string	"_data"
.LASF117:
	.string	"_wcrtomb_state"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF159:
	.string	"__builtin_memset"
.LASF9:
	.string	"long long unsigned int"
.LASF55:
	.string	"_lbfsize"
.LASF143:
	.string	"memmove"
.LASF156:
	.string	"__locale_t"
.LASF127:
	.string	"crypto_hash_sha512_state"
.LASF115:
	.string	"_mbrtowc_state"
.LASF110:
	.string	"_wctomb_state"
.LASF31:
	.string	"__tm_sec"
.LASF157:
	.string	"_crypto_sign_ed25519_ref10_hinit"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF86:
	.string	"_ubuf"
.LASF50:
	.string	"_base"
.LASF33:
	.string	"__tm_hour"
.LASF77:
	.string	"__sf"
.LASF40:
	.string	"_on_exit_args"
.LASF81:
	.string	"_cookie"
.LASF76:
	.string	"__sglue"
.LASF128:
	.string	"state"
.LASF12:
	.string	"long int"
.LASF136:
	.string	"siglen_p"
.LASF102:
	.string	"_mprec"
.LASF53:
	.string	"_flags"
.LASF44:
	.string	"_is_cxa"
.LASF59:
	.string	"_stdin"
.LASF88:
	.string	"_blksize"
.LASF10:
	.string	"_lock_t"
.LASF70:
	.string	"_cvtbuf"
.LASF89:
	.string	"_offset"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF108:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbrlen_state"
.LASF41:
	.string	"_fnargs"
.LASF47:
	.string	"_fns"
.LASF27:
	.string	"_sign"
.LASF21:
	.string	"_flock_t"
.LASF61:
	.string	"_stderr"
.LASF29:
	.string	"_Bigint"
.LASF68:
	.string	"_gamma_signgam"
.LASF82:
	.string	"_read"
.LASF104:
	.string	"_result_k"
.LASF146:
	.string	"crypto_hash_sha512_final"
.LASF30:
	.string	"__tm"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"__wchb"
.LASF60:
	.string	"_stdout"
.LASF69:
	.string	"_cvtlen"
.LASF22:
	.string	"long unsigned int"
.LASF52:
	.string	"__sFILE_fake"
.LASF95:
	.string	"_niobs"
.LASF1:
	.string	"short unsigned int"
.LASF141:
	.string	"hram"
.LASF75:
	.string	"_atexit0"
.LASF79:
	.string	"_signal_buf"
.LASF73:
	.string	"_asctime_buf"
.LASF147:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF103:
	.string	"_result"
.LASF16:
	.string	"__wch"
.LASF15:
	.string	"wint_t"
.LASF90:
	.string	"_lock"
.LASF92:
	.string	"_flags2"
.LASF145:
	.string	"crypto_hash_sha512_update"
.LASF133:
	.string	"mlen"
.LASF142:
	.string	"DOM2PREFIX"
.LASF135:
	.string	"crypto_sign_ed25519_detached"
.LASF83:
	.string	"_write"
.LASF36:
	.string	"__tm_year"
.LASF78:
	.string	"_misc"
.LASF119:
	.string	"__sf_fake_stdin"
.LASF120:
	.string	"__sf_fake_stdout"
.LASF155:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF131:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF35:
	.string	"__tm_mon"
.LASF45:
	.string	"_atexit"
.LASF126:
	.string	"suboptarg"
.LASF64:
	.string	"__sdidinit"
.LASF13:
	.string	"_off_t"
.LASF151:
	.string	"sodium_memzero"
.LASF8:
	.string	"__uint64_t"
.LASF106:
	.string	"_freelist"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF137:
	.string	"_crypto_sign_ed25519_detached"
.LASF139:
	.string	"siglen"
.LASF124:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF130:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF96:
	.string	"_iobs"
.LASF138:
	.string	"prehashed"
.LASF4:
	.string	"short int"
.LASF38:
	.string	"__tm_yday"
.LASF49:
	.string	"__sbuf"
.LASF150:
	.string	"crypto_core_curve25519_ref10_sc_muladd"
.LASF93:
	.string	"__FILE"
.LASF20:
	.string	"_mbstate_t"
.LASF80:
	.string	"__sFILE"
.LASF148:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF91:
	.string	"_mbstate"
.LASF101:
	.string	"_rand_next"
.LASF109:
	.string	"_mblen_state"
.LASF62:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF140:
	.string	"nonce"
.LASF66:
	.string	"_locale"
.LASF67:
	.string	"__cleanup"
.LASF65:
	.string	"_unspecified_locale_info"
.LASF26:
	.string	"_maxwds"
.LASF57:
	.string	"_reent"
.LASF149:
	.string	"crypto_core_curve25519_ref10_ge_p3_tobytes"
.LASF98:
	.string	"_seed"
.LASF18:
	.string	"__count"
.LASF19:
	.string	"__value"
.LASF84:
	.string	"_seek"
.LASF85:
	.string	"_close"
.LASF14:
	.string	"_fpos_t"
.LASF58:
	.string	"_errno"
.LASF23:
	.string	"char"
.LASF154:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/sign.c"
.LASF134:
	.string	"crypto_sign_ed25519"
.LASF6:
	.string	"__int32_t"
.LASF99:
	.string	"_mult"
.LASF25:
	.string	"_next"
.LASF153:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"_fntypes"
.LASF107:
	.string	"_misc_reent"
.LASF100:
	.string	"_add"
.LASF24:
	.string	"__ULong"
.LASF113:
	.string	"_getdate_err"
.LASF122:
	.string	"_global_impure_ptr"
.LASF158:
	.string	"memset"
.LASF54:
	.string	"_file"
.LASF28:
	.string	"_wds"
.LASF37:
	.string	"__tm_wday"
.LASF94:
	.string	"_glue"
.LASF123:
	.string	"uint8_t"
.LASF112:
	.string	"_l64a_buf"
.LASF74:
	.string	"_sig_func"
.LASF87:
	.string	"_nbuf"
.LASF39:
	.string	"__tm_isdst"
.LASF72:
	.string	"_localtime_buf"
.LASF32:
	.string	"__tm_min"
.LASF121:
	.string	"__sf_fake_stderr"
.LASF71:
	.string	"_r48"
.LASF111:
	.string	"_mbtowc_state"
.LASF105:
	.string	"_p5s"
.LASF144:
	.string	"crypto_hash_sha512"
.LASF132:
	.string	"smlen_p"
.LASF152:
	.string	"crypto_hash_sha512_init"
.LASF34:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
