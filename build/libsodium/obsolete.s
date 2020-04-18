	.file	"obsolete.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_edwards25519sha512batch_keypair,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.global	crypto_sign_edwards25519sha512batch_keypair
	.type	crypto_sign_edwards25519sha512batch_keypair, @function
crypto_sign_edwards25519sha512batch_keypair:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/obsolete.c"
	.loc 1 16 1 view -0
	.loc 1 16 1 is_stmt 0 view .LVU1
	entry	sp, 192
.LCFI0:
	.loc 1 17 5 is_stmt 1 view .LVU2
	.loc 1 19 5 view .LVU3
	mov.n	a10, a3
	movi.n	a11, 0x20
	call8	randombytes_buf
.LVL1:
	.loc 1 20 5 view .LVU4
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, a3
	mov.n	a10, a3
	call8	crypto_hash_sha512
.LVL2:
	.loc 1 21 5 view .LVU5
	.loc 1 21 11 is_stmt 0 view .LVU6
	l8ui	a8, a3, 0
	movi.n	a9, -8
	and	a8, a8, a9
	s8i	a8, a3, 0
	.loc 1 22 5 is_stmt 1 view .LVU7
	.loc 1 23 5 view .LVU8
	.loc 1 22 12 is_stmt 0 view .LVU9
	l8ui	a8, a3, 31
	.loc 1 23 12 view .LVU10
	movi.n	a9, 0x40
	.loc 1 22 12 view .LVU11
	extui	a8, a8, 0, 6
	.loc 1 23 12 view .LVU12
	or	a8, a8, a9
	s8i	a8, a3, 31
	.loc 1 24 5 is_stmt 1 view .LVU13
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL3:
	.loc 1 25 5 view .LVU14
	mov.n	a10, a2
	mov.n	a11, sp
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL4:
	.loc 1 27 5 view .LVU15
	.loc 1 28 1 is_stmt 0 view .LVU16
	movi.n	a2, 0
.LVL5:
	.loc 1 28 1 view .LVU17
	retw.n
.LFE0:
	.size	crypto_sign_edwards25519sha512batch_keypair, .-crypto_sign_edwards25519sha512batch_keypair
	.section	.text.crypto_sign_edwards25519sha512batch,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_sign_edwards25519sha512batch
	.type	crypto_sign_edwards25519sha512batch, @function
crypto_sign_edwards25519sha512batch:
.LVL6:
.LFB1:
	.loc 1 36 1 is_stmt 1 view -0
	.loc 1 36 1 is_stmt 0 view .LVU19
	entry	sp, 752
.LCFI1:
	.loc 1 37 5 is_stmt 1 view .LVU20
	.loc 1 38 5 view .LVU21
	.loc 1 39 5 view .LVU22
	.loc 1 40 5 view .LVU23
	.loc 1 41 5 view .LVU24
	.loc 1 42 5 view .LVU25
	.loc 1 44 5 view .LVU26
	mov.n	a10, sp
	call8	crypto_hash_sha512_init
.LVL7:
	.loc 1 45 5 view .LVU27
	l32i	a5, sp, 752
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	addi	a11, a5, 32
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL8:
	.loc 1 46 5 view .LVU28
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL9:
	.loc 1 47 5 view .LVU29
	movi	a11, 0x290
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL10:
	.loc 1 48 5 view .LVU30
	l32i	a11, sp, 752
	movi	a10, 0x170
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL11:
	.loc 1 49 5 view .LVU31
	movi	a8, 0x210
	add.n	a8, a8, sp
	addi	a5, a8, 32
	movi	a11, 0x170
	add.n	a11, a11, sp
	mov.n	a10, a5
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL12:
	.loc 1 50 5 view .LVU32
	movi	a10, 0x290
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL13:
	.loc 1 51 5 view .LVU33
	movi	a11, 0x290
	movi	a10, 0xd0
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL14:
	.loc 1 52 5 view .LVU34
	movi	a11, 0xd0
	movi	a10, 0x210
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL15:
	.loc 1 53 5 view .LVU35
	mov.n	a10, sp
	call8	crypto_hash_sha512_init
.LVL16:
	.loc 1 54 5 view .LVU36
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x210
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL17:
	.loc 1 55 5 view .LVU37
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL18:
	.loc 1 56 5 view .LVU38
	movi	a11, 0x250
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL19:
	.loc 1 57 5 view .LVU39
	movi	a10, 0x250
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL20:
	.loc 1 58 5 view .LVU40
	l32i	a13, sp, 752
	movi	a12, 0x290
	movi	a11, 0x250
	add.n	a12, a12, sp
	add.n	a11, a11, sp
	mov.n	a10, a5
	call8	crypto_core_curve25519_ref10_sc_muladd
.LVL21:
	.loc 1 59 5 view .LVU41
	movi	a10, 0x250
	movi.n	a11, 0x40
	add.n	a10, a10, sp
	call8	sodium_memzero
.LVL22:
	.loc 1 60 5 view .LVU42
	mov.n	a12, a6
	mov.n	a11, a4
	addi	a10, a2, 32
	call8	memmove
.LVL23:
	.loc 1 61 5 view .LVU43
	movi	a11, 0x210
	movi.n	a12, 0x20
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL24:
	.loc 1 62 5 view .LVU44
	.loc 1 62 20 is_stmt 0 view .LVU45
	addi	a10, a6, 32
	.loc 1 62 5 view .LVU46
	add.n	a10, a2, a10
	movi.n	a12, 0x20
	mov.n	a11, a5
	call8	memcpy
.LVL25:
	.loc 1 63 5 is_stmt 1 view .LVU47
	.loc 1 63 21 is_stmt 0 view .LVU48
	addi	a2, a6, 64
.LVL26:
	.loc 1 36 1 view .LVU49
	.loc 1 63 21 view .LVU50
	movi.n	a8, 1
	bltu	a2, a6, .L3
	movi.n	a8, 0
.L3:
	add.n	a7, a8, a7
	.loc 1 63 14 view .LVU51
	s32i.n	a2, a3, 0
	s32i.n	a7, a3, 4
	.loc 1 65 5 is_stmt 1 view .LVU52
	.loc 1 66 1 is_stmt 0 view .LVU53
	movi.n	a2, 0
	retw.n
.LFE1:
	.size	crypto_sign_edwards25519sha512batch, .-crypto_sign_edwards25519sha512batch
	.section	.text.crypto_sign_edwards25519sha512batch_open,"ax",@progbits
	.literal_position
	.literal .LC3, 0, 0
	.align	4
	.global	crypto_sign_edwards25519sha512batch_open
	.type	crypto_sign_edwards25519sha512batch_open, @function
crypto_sign_edwards25519sha512batch_open:
.LVL27:
.LFB2:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU55
	entry	sp, 1104
.LCFI2:
	.loc 1 75 5 is_stmt 1 view .LVU56
	.loc 1 76 5 view .LVU57
	.loc 1 77 5 view .LVU58
	.loc 1 78 5 view .LVU59
	.loc 1 79 5 view .LVU60
	.loc 1 80 5 view .LVU61
	.loc 1 81 5 view .LVU62
	.loc 1 82 5 view .LVU63
	.loc 1 83 5 view .LVU64
	.loc 1 85 5 view .LVU65
	.loc 1 85 13 is_stmt 0 view .LVU66
	l32r	a10, .LC3
	l32r	a11, .LC3+4
	.loc 1 74 1 view .LVU67
	mov.n	a9, a7
	.loc 1 85 13 view .LVU68
	s32i.n	a10, a3, 0
	s32i.n	a11, a3, 4
	.loc 1 86 5 is_stmt 1 view .LVU69
	.loc 1 86 20 is_stmt 0 view .LVU70
	addi	a7, a6, -64
	.loc 1 74 1 view .LVU71
	.loc 1 86 20 view .LVU72
	movi.n	a5, 1
	bltu	a7, a6, .L5
	movi.n	a5, 0
.L5:
	movi	a8, 0x420
	addi.n	a10, a9, -1
	add.n	a8, a8, sp
	s32i.n	a10, a8, 0
	add.n	a5, a5, a10
	.loc 1 86 8 view .LVU73
	bnez.n	a5, .L9
	movi	a9, -0x41
	bgeu	a9, a7, .L11
.LVL28:
.L9:
	.loc 1 87 16 view .LVU74
	movi.n	a6, -1
	j	.L4
.LVL29:
.L11:
	.loc 1 89 5 is_stmt 1 view .LVU75
	.loc 1 90 5 view .LVU76
	.loc 1 90 11 is_stmt 0 view .LVU77
	add.n	a9, a4, a6
	addi.n	a9, a9, -1
	.loc 1 90 8 view .LVU78
	l8ui	a9, a9, 0
	movi.n	a10, -0x20
	bany	a9, a10, .L9
	.loc 1 93 5 is_stmt 1 view .LVU79
	.loc 1 93 9 is_stmt 0 view .LVU80
	movi	a8, 0x450
	add.n	a8, a8, sp
	movi	a10, 0x140
	l32i.n	a11, a8, 0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL30:
	.loc 1 93 8 view .LVU81
	bnez.n	a10, .L9
	.loc 1 94 9 discriminator 1 view .LVU82
	movi	a10, 0xa0
	mov.n	a11, a4
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL31:
	.loc 1 93 79 discriminator 1 view .LVU83
	bnez.n	a10, .L9
	.loc 1 97 5 is_stmt 1 view .LVU84
	movi	a11, 0x140
	movi	a10, 0x280
	add.n	a11, a11, sp
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_p3_to_cached
.LVL32:
	.loc 1 98 5 view .LVU85
	addi	a12, a6, -32
	movi.n	a13, 1
	bltu	a12, a6, .L10
	mov.n	a13, a5
.L10:
	.loc 1 98 5 is_stmt 0 view .LVU86
	movi	a10, 0x420
	add.n	a10, a10, sp
	l32i.n	a10, a10, 0
	mov.n	a11, a4
	add.n	a13, a13, a10
	movi	a10, 0x398
	add.n	a10, a10, sp
	call8	crypto_hash_sha512
.LVL33:
	.loc 1 99 5 is_stmt 1 view .LVU87
	movi	a10, 0x398
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL34:
	.loc 1 100 5 view .LVU88
	movi	a12, 0xa0
	movi	a11, 0x398
	add.n	a12, a12, sp
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_vartime
.LVL35:
	.loc 1 101 5 view .LVU89
	movi	a12, 0x280
	movi	a10, 0x1e0
	add.n	a12, sp, a12
	mov.n	a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_add
.LVL36:
	.loc 1 102 5 view .LVU90
	movi	a11, 0x1e0
	movi	a10, 0x320
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_p1p1_to_p2
.LVL37:
	.loc 1 103 5 view .LVU91
	movi	a6, 0x3f8
.LVL38:
	.loc 1 103 5 is_stmt 0 view .LVU92
	add.n	a6, sp, a6
	movi	a11, 0x320
	mov.n	a10, a6
	add.n	a11, a11, sp
	call8	crypto_core_curve25519_ref10_ge_tobytes
.LVL39:
	.loc 1 104 5 is_stmt 1 view .LVU93
	.loc 1 104 12 is_stmt 0 view .LVU94
	l8ui	a8, a6, 31
	movi	a9, -0x80
	.loc 1 105 65 view .LVU95
	addi	a11, a7, 32
	.loc 1 105 5 view .LVU96
	movi	a10, 0xa0
	.loc 1 104 12 view .LVU97
	xor	a8, a8, a9
	.loc 1 105 5 view .LVU98
	add.n	a11, a4, a11
	add.n	a10, a10, sp
	.loc 1 104 12 view .LVU99
	s8i	a8, a6, 31
	.loc 1 105 5 is_stmt 1 view .LVU100
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL40:
	.loc 1 106 5 view .LVU101
	movi	a11, 0xa0
	movi	a10, 0x3d8
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL41:
	.loc 1 107 5 view .LVU102
	.loc 1 107 9 is_stmt 0 view .LVU103
	movi	a11, 0x3d8
	mov.n	a10, a6
	add.n	a11, a11, sp
	call8	crypto_verify_32
.LVL42:
	mov.n	a6, a10
	.loc 1 107 8 view .LVU104
	bnez.n	a10, .L9
	.loc 1 110 5 is_stmt 1 view .LVU105
	.loc 1 110 13 is_stmt 0 view .LVU106
	s32i.n	a7, a3, 0
	s32i.n	a5, a3, 4
	.loc 1 111 5 is_stmt 1 view .LVU107
	mov.n	a12, a7
	addi	a11, a4, 32
	mov.n	a10, a2
	call8	memmove
.LVL43:
	.loc 1 113 5 view .LVU108
.L4:
	.loc 1 114 1 is_stmt 0 view .LVU109
	mov.n	a2, a6
.LVL44:
	.loc 1 114 1 view .LVU110
	retw.n
.LFE2:
	.size	crypto_sign_edwards25519sha512batch_open, .-crypto_sign_edwards25519sha512batch_open
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
	.uleb128 0xc0
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
	.uleb128 0x2f0
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
	.uleb128 0x450
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
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.file 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1201
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0xc
	.4byte	.LASF166
	.4byte	.LASF167
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
	.4byte	.LASF168
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
	.uleb128 0xb
	.byte	0xa0
	.byte	0xa
	.byte	0x53
	.byte	0x9
	.4byte	0xaac
	.uleb128 0xf
	.string	"X"
	.byte	0xa
	.byte	0x54
	.byte	0x25
	.4byte	0x9e1
	.byte	0
	.uleb128 0xf
	.string	"Y"
	.byte	0xa
	.byte	0x55
	.byte	0x25
	.4byte	0x9e1
	.byte	0x28
	.uleb128 0xf
	.string	"Z"
	.byte	0xa
	.byte	0x56
	.byte	0x25
	.4byte	0x9e1
	.byte	0x50
	.uleb128 0xf
	.string	"T"
	.byte	0xa
	.byte	0x57
	.byte	0x25
	.4byte	0x9e1
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xa
	.byte	0x58
	.byte	0x3
	.4byte	0xa76
	.uleb128 0xb
	.byte	0xa0
	.byte	0xa
	.byte	0x62
	.byte	0x9
	.4byte	0xaf4
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xa
	.byte	0x63
	.byte	0x25
	.4byte	0x9e1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xa
	.byte	0x64
	.byte	0x25
	.4byte	0x9e1
	.byte	0x28
	.uleb128 0xf
	.string	"Z"
	.byte	0xa
	.byte	0x65
	.byte	0x25
	.4byte	0x9e1
	.byte	0x50
	.uleb128 0xf
	.string	"T2d"
	.byte	0xa
	.byte	0x66
	.byte	0x25
	.4byte	0x9e1
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xa
	.byte	0x67
	.byte	0x3
	.4byte	0xab8
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd77
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x45
	.byte	0x39
	.4byte	0x352
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.byte	0x46
	.byte	0x3e
	.4byte	0xd77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"sm"
	.byte	0x1
	.byte	0x47
	.byte	0x3f
	.4byte	0xd7d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.byte	0x48
	.byte	0x3d
	.4byte	0x25
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x20
	.string	"pk"
	.byte	0x1
	.byte	0x49
	.byte	0x3f
	.4byte	0xd7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.4byte	0xd83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.string	"t1"
	.byte	0x1
	.byte	0x4c
	.byte	0x13
	.4byte	0xd93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"t2"
	.byte	0x1
	.byte	0x4c
	.byte	0x1b
	.4byte	0xd93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0x4d
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.string	"Ai"
	.byte	0x1
	.byte	0x4e
	.byte	0x2c
	.4byte	0xaf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x22
	.string	"csa"
	.byte	0x1
	.byte	0x4f
	.byte	0x2a
	.4byte	0xaac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x22
	.string	"cs"
	.byte	0x1
	.byte	0x50
	.byte	0x28
	.4byte	0xa28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x22
	.string	"A"
	.byte	0x1
	.byte	0x51
	.byte	0x28
	.4byte	0xa6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x22
	.string	"R"
	.byte	0x1
	.byte	0x52
	.byte	0x28
	.4byte	0xa6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x22
	.string	"cs3"
	.byte	0x1
	.byte	0x53
	.byte	0x28
	.4byte	0xa6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x1121
	.4byte	0xc1f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x1121
	.4byte	0xc3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL32
	.4byte	0x112d
	.4byte	0xc56
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.byte	0
	.uleb128 0x24
	.4byte	.LVL33
	.4byte	0x1139
	.4byte	0xc71
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL34
	.4byte	0x1145
	.4byte	0xc86
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x24
	.4byte	.LVL35
	.4byte	0x1151
	.4byte	0xca9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.byte	0
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0x115d
	.4byte	0xccc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.byte	0
	.uleb128 0x24
	.4byte	.LVL37
	.4byte	0x1169
	.4byte	0xce8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.byte	0
	.uleb128 0x24
	.4byte	.LVL39
	.4byte	0x1175
	.4byte	0xd03
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x24
	.4byte	.LVL40
	.4byte	0x1181
	.4byte	0xd23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0x118d
	.4byte	0xd3f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.byte	0
	.uleb128 0x24
	.4byte	.LVL42
	.4byte	0x1199
	.4byte	0xd5a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x26
	.4byte	.LVL43
	.4byte	0x11a5
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
	.byte	0x74
	.sleb128 32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x25
	.uleb128 0x10
	.byte	0x4
	.4byte	0x46
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xd93
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xda3
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1072
	.uleb128 0x1e
	.string	"sm"
	.byte	0x1
	.byte	0x1f
	.byte	0x34
	.4byte	0x352
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.byte	0x20
	.byte	0x39
	.4byte	0xd77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x21
	.byte	0x3a
	.4byte	0xd7d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.byte	0x22
	.byte	0x38
	.4byte	0x25
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
	.byte	0x23
	.byte	0x3a
	.4byte	0xd7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"hs"
	.byte	0x1
	.byte	0x25
	.byte	0x1e
	.4byte	0x9d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x27
	.4byte	.LASF144
	.byte	0x1
	.byte	0x26
	.byte	0x13
	.4byte	0xd83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.4byte	.LASF145
	.byte	0x1
	.byte	0x27
	.byte	0x13
	.4byte	0xd83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.string	"sig"
	.byte	0x1
	.byte	0x28
	.byte	0x13
	.4byte	0xd83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.string	"A"
	.byte	0x1
	.byte	0x29
	.byte	0x28
	.4byte	0xa6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x22
	.string	"R"
	.byte	0x1
	.byte	0x2a
	.byte	0x28
	.4byte	0xa6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x24
	.4byte	.LVL7
	.4byte	0x11b1
	.4byte	0xe7b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.byte	0
	.uleb128 0x24
	.4byte	.LVL8
	.4byte	0x11bd
	.4byte	0xe96
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 32
	.byte	0
	.uleb128 0x24
	.4byte	.LVL9
	.4byte	0x11bd
	.4byte	0xeb1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL10
	.4byte	0x11c9
	.4byte	0xecd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x24
	.4byte	.LVL11
	.4byte	0x1181
	.4byte	0xee9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL12
	.4byte	0x118d
	.4byte	0xf04
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.uleb128 0x24
	.4byte	.LVL13
	.4byte	0x1145
	.4byte	0xf19
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0x1181
	.4byte	0xf35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0x118d
	.4byte	0xf50
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.uleb128 0x24
	.4byte	.LVL16
	.4byte	0x11b1
	.4byte	0xf65
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.byte	0
	.uleb128 0x24
	.4byte	.LVL17
	.4byte	0x11bd
	.4byte	0xf80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.4byte	.LVL18
	.4byte	0x11bd
	.4byte	0xf9b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL19
	.4byte	0x11c9
	.4byte	0xfb7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0x1145
	.4byte	0xfcc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0x11d5
	.4byte	0xff5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x11e1
	.4byte	0x1010
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL23
	.4byte	0x11a5
	.4byte	0x1030
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0x11ed
	.4byte	0x1050
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
	.byte	0x75
	.sleb128 -32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL25
	.4byte	0x11ed
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF146
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1121
	.uleb128 0x1e
	.string	"pk"
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.4byte	0x352
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x20
	.string	"sk"
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.4byte	0x352
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"A"
	.byte	0x1
	.byte	0x11
	.byte	0x28
	.4byte	0xa6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.4byte	.LVL1
	.4byte	0x11f8
	.4byte	0x10d4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LVL2
	.4byte	0x1139
	.4byte	0x10ee
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL3
	.4byte	0x1181
	.4byte	0x1109
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL4
	.4byte	0x118d
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
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.byte	0x81
	.byte	0xc
	.uleb128 0x28
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xa
	.byte	0x87
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x9
	.byte	0x26
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0x9d
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.byte	0x93
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xa
	.byte	0x8f
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.byte	0x88
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0x7f
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xa
	.byte	0x91
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xa
	.byte	0x80
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xb
	.byte	0x10
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.byte	0x20
	.byte	0x8
	.uleb128 0x28
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x9
	.byte	0x2a
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x9
	.byte	0x2d
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x9
	.byte	0x32
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xa
	.byte	0x9e
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xd
	.byte	0x16
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF169
	.4byte	.LASF170
	.byte	0xf
	.byte	0
	.uleb128 0x28
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xe
	.byte	0x21
	.byte	0x6
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x28
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
	.uleb128 0x29
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
.LVUS2:
	.uleb128 0
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST2:
	.4byte	.LVL27
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 0
.LLST3:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL38
	.4byte	.LFE2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU76
	.uleb128 .LVU109
.LLST4:
	.4byte	.LVL29
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"_dso_handle"
.LASF130:
	.string	"count"
.LASF157:
	.string	"crypto_verify_32"
.LASF139:
	.string	"smlen"
.LASF54:
	.string	"_size"
.LASF145:
	.string	"hram"
.LASF10:
	.string	"size_t"
.LASF101:
	.string	"_rand48"
.LASF66:
	.string	"_emergency"
.LASF13:
	.string	"uint64_t"
.LASF5:
	.string	"__uint8_t"
.LASF142:
	.string	"crypto_sign_edwards25519sha512batch"
.LASF59:
	.string	"_data"
.LASF135:
	.string	"YplusX"
.LASF121:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF0:
	.string	"long long unsigned int"
.LASF58:
	.string	"_lbfsize"
.LASF158:
	.string	"memmove"
.LASF168:
	.string	"__locale_t"
.LASF128:
	.string	"crypto_hash_sha512_state"
.LASF119:
	.string	"_mbrtowc_state"
.LASF114:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF166:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/obsolete.c"
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
.LASF136:
	.string	"YminusX"
.LASF106:
	.string	"_mprec"
.LASF56:
	.string	"_flags"
.LASF47:
	.string	"_is_cxa"
.LASF62:
	.string	"_stdin"
.LASF164:
	.string	"randombytes_buf"
.LASF91:
	.string	"_blksize"
.LASF14:
	.string	"_lock_t"
.LASF137:
	.string	"crypto_core_curve25519_ref10_ge_cached"
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
.LASF161:
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
.LASF151:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_vartime"
.LASF99:
	.string	"_niobs"
.LASF4:
	.string	"short unsigned int"
.LASF141:
	.string	"crypto_sign_edwards25519sha512batch_open"
.LASF78:
	.string	"_atexit0"
.LASF82:
	.string	"_signal_buf"
.LASF76:
	.string	"_asctime_buf"
.LASF150:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF107:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF169:
	.string	"memcpy"
.LASF19:
	.string	"wint_t"
.LASF170:
	.string	"__builtin_memcpy"
.LASF93:
	.string	"_lock"
.LASF95:
	.string	"_flags2"
.LASF160:
	.string	"crypto_hash_sha512_update"
.LASF140:
	.string	"mlen"
.LASF154:
	.string	"crypto_core_curve25519_ref10_ge_tobytes"
.LASF86:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF134:
	.string	"crypto_core_curve25519_ref10_ge_p1p1"
.LASF81:
	.string	"_misc"
.LASF123:
	.string	"__sf_fake_stdin"
.LASF148:
	.string	"crypto_core_curve25519_ref10_ge_p3_to_cached"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF167:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF132:
	.string	"crypto_core_curve25519_ref10_ge_p2"
.LASF133:
	.string	"crypto_core_curve25519_ref10_ge_p3"
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
.LASF163:
	.string	"sodium_memzero"
.LASF9:
	.string	"__uint64_t"
.LASF110:
	.string	"_freelist"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF146:
	.string	"crypto_sign_edwards25519sha512batch_keypair"
.LASF12:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF131:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF100:
	.string	"_iobs"
.LASF3:
	.string	"short int"
.LASF41:
	.string	"__tm_yday"
.LASF153:
	.string	"crypto_core_curve25519_ref10_ge_p1p1_to_p2"
.LASF52:
	.string	"__sbuf"
.LASF162:
	.string	"crypto_core_curve25519_ref10_sc_muladd"
.LASF97:
	.string	"__FILE"
.LASF24:
	.string	"_mbstate_t"
.LASF83:
	.string	"__sFILE"
.LASF155:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
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
.LASF144:
	.string	"nonce"
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
.LASF156:
	.string	"crypto_core_curve25519_ref10_ge_p3_tobytes"
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
.LASF6:
	.string	"__int32_t"
.LASF103:
	.string	"_mult"
.LASF28:
	.string	"_next"
.LASF165:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF46:
	.string	"_fntypes"
.LASF111:
	.string	"_misc_reent"
.LASF138:
	.string	"mlen_p"
.LASF104:
	.string	"_add"
.LASF27:
	.string	"__ULong"
.LASF117:
	.string	"_getdate_err"
.LASF152:
	.string	"crypto_core_curve25519_ref10_ge_add"
.LASF126:
	.string	"_global_impure_ptr"
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
.LASF147:
	.string	"crypto_core_curve25519_ref10_ge_frombytes_negate_vartime"
.LASF115:
	.string	"_mbtowc_state"
.LASF109:
	.string	"_p5s"
.LASF149:
	.string	"crypto_hash_sha512"
.LASF143:
	.string	"smlen_p"
.LASF159:
	.string	"crypto_hash_sha512_init"
.LASF37:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
