	.file	"keypair.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_ed25519_seed_keypair,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.global	crypto_sign_ed25519_seed_keypair
	.type	crypto_sign_ed25519_seed_keypair, @function
crypto_sign_ed25519_seed_keypair:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/keypair.c"
	.loc 1 14 1 view -0
	.loc 1 14 1 is_stmt 0 view .LVU1
	entry	sp, 192
.LCFI0:
	.loc 1 15 5 is_stmt 1 view .LVU2
	.loc 1 17 5 view .LVU3
	l32r	a13, .LC0+4
	l32r	a12, .LC0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	crypto_hash_sha512
.LVL1:
	.loc 1 18 5 view .LVU4
	.loc 1 18 11 is_stmt 0 view .LVU5
	l8ui	a8, a3, 0
	movi.n	a9, -8
	and	a8, a8, a9
	s8i	a8, a3, 0
	.loc 1 19 5 is_stmt 1 view .LVU6
	.loc 1 20 5 view .LVU7
	.loc 1 19 12 is_stmt 0 view .LVU8
	l8ui	a8, a3, 31
	.loc 1 20 12 view .LVU9
	movi.n	a9, 0x40
	.loc 1 19 12 view .LVU10
	extui	a8, a8, 0, 6
	.loc 1 20 12 view .LVU11
	or	a8, a8, a9
	s8i	a8, a3, 31
	.loc 1 22 5 is_stmt 1 view .LVU12
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL2:
	.loc 1 23 5 view .LVU13
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL3:
	.loc 1 25 5 view .LVU14
	mov.n	a11, a4
	movi.n	a12, 0x20
	mov.n	a10, a3
	call8	memmove
.LVL4:
	.loc 1 26 5 view .LVU15
	movi.n	a12, 0x20
	mov.n	a11, a2
	add.n	a10, a3, a12
	call8	memmove
.LVL5:
	.loc 1 28 5 view .LVU16
	.loc 1 29 1 is_stmt 0 view .LVU17
	movi.n	a2, 0
.LVL6:
	.loc 1 29 1 view .LVU18
	retw.n
.LFE0:
	.size	crypto_sign_ed25519_seed_keypair, .-crypto_sign_ed25519_seed_keypair
	.section	.text.crypto_sign_ed25519_keypair,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_keypair
	.type	crypto_sign_ed25519_keypair, @function
crypto_sign_ed25519_keypair:
.LVL7:
.LFB1:
	.loc 1 33 1 is_stmt 1 view -0
	.loc 1 33 1 is_stmt 0 view .LVU20
	entry	sp, 64
.LCFI1:
	.loc 1 34 5 is_stmt 1 view .LVU21
	.loc 1 35 5 view .LVU22
	.loc 1 37 5 view .LVU23
	mov.n	a10, sp
	movi.n	a11, 0x20
	call8	randombytes_buf
.LVL8:
	.loc 1 38 5 view .LVU24
	.loc 1 38 11 is_stmt 0 view .LVU25
	mov.n	a11, a3
	mov.n	a12, sp
	mov.n	a10, a2
	call8	crypto_sign_ed25519_seed_keypair
.LVL9:
	mov.n	a2, a10
.LVL10:
	.loc 1 39 5 is_stmt 1 view .LVU26
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	sodium_memzero
.LVL11:
	.loc 1 41 5 view .LVU27
	.loc 1 42 1 is_stmt 0 view .LVU28
	retw.n
.LFE1:
	.size	crypto_sign_ed25519_keypair, .-crypto_sign_ed25519_keypair
	.section	.text.crypto_sign_ed25519_pk_to_curve25519,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_pk_to_curve25519
	.type	crypto_sign_ed25519_pk_to_curve25519, @function
crypto_sign_ed25519_pk_to_curve25519:
.LVL12:
.LFB2:
	.loc 1 47 1 is_stmt 1 view -0
	.loc 1 47 1 is_stmt 0 view .LVU30
	entry	sp, 272
.LCFI2:
	.loc 1 48 5 is_stmt 1 view .LVU31
	.loc 1 49 5 view .LVU32
	.loc 1 50 5 view .LVU33
	.loc 1 52 5 view .LVU34
	.loc 1 52 9 is_stmt 0 view .LVU35
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL13:
	.loc 1 47 1 view .LVU36
	mov.n	a4, a2
	.loc 1 52 9 view .LVU37
	mov.n	a2, a10
.LVL14:
	.loc 1 52 8 view .LVU38
	bnez.n	a10, .L5
	.loc 1 55 5 is_stmt 1 view .LVU39
	movi	a10, 0xa0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_1
.LVL15:
	.loc 1 56 5 view .LVU40
	movi	a11, 0xa0
	add.n	a11, a11, sp
	addi	a12, sp, 40
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL16:
	.loc 1 57 5 view .LVU41
	movi	a11, 0xa0
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL17:
	.loc 1 58 5 view .LVU42
	movi	a10, 0xc8
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_1
.LVL18:
	.loc 1 59 5 view .LVU43
	movi	a11, 0xc8
	add.n	a11, a11, sp
	addi	a12, sp, 40
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_add
.LVL19:
	.loc 1 60 5 view .LVU44
	movi	a11, 0xc8
	add.n	a11, a11, sp
	movi	a12, 0xa0
	mov.n	a10, a11
	add.n	a12, a12, sp
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL20:
	.loc 1 61 5 view .LVU45
	movi	a11, 0xc8
	add.n	a11, a11, sp
	mov.n	a10, a4
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL21:
	.loc 1 63 5 view .LVU46
	.loc 1 63 12 is_stmt 0 view .LVU47
	j	.L3
.L5:
	.loc 1 53 16 view .LVU48
	movi.n	a2, -1
.L3:
	.loc 1 64 1 view .LVU49
	retw.n
.LFE2:
	.size	crypto_sign_ed25519_pk_to_curve25519, .-crypto_sign_ed25519_pk_to_curve25519
	.section	.text.crypto_sign_ed25519_sk_to_curve25519,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_sign_ed25519_sk_to_curve25519
	.type	crypto_sign_ed25519_sk_to_curve25519, @function
crypto_sign_ed25519_sk_to_curve25519:
.LVL22:
.LFB3:
	.loc 1 69 1 is_stmt 1 view -0
	.loc 1 69 1 is_stmt 0 view .LVU51
	entry	sp, 96
.LCFI3:
	.loc 1 70 5 is_stmt 1 view .LVU52
	.loc 1 72 5 view .LVU53
	l32r	a13, .LC1+4
	l32r	a12, .LC1
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_hash_sha512
.LVL23:
	.loc 1 75 5 view .LVU54
	.loc 1 75 10 is_stmt 0 view .LVU55
	l8ui	a8, sp, 0
	movi.n	a9, -8
	and	a8, a8, a9
	s8i	a8, sp, 0
	.loc 1 76 5 is_stmt 1 view .LVU56
	.loc 1 77 5 view .LVU57
	.loc 1 76 11 is_stmt 0 view .LVU58
	l8ui	a8, sp, 31
	.loc 1 77 11 view .LVU59
	movi.n	a9, 0x40
	.loc 1 76 11 view .LVU60
	extui	a8, a8, 0, 7
	.loc 1 77 11 view .LVU61
	or	a8, a8, a9
	.loc 1 78 5 view .LVU62
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 77 11 view .LVU63
	s8i	a8, sp, 31
	.loc 1 78 5 is_stmt 1 view .LVU64
	call8	memcpy
.LVL24:
	.loc 1 79 5 view .LVU65
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	sodium_memzero
.LVL25:
	.loc 1 81 5 view .LVU66
	.loc 1 82 1 is_stmt 0 view .LVU67
	movi.n	a2, 0
.LVL26:
	.loc 1 82 1 view .LVU68
	retw.n
.LFE3:
	.size	crypto_sign_ed25519_sk_to_curve25519, .-crypto_sign_ed25519_sk_to_curve25519
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
	.uleb128 0x40
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
	.uleb128 0x110
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
	.uleb128 0x60
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
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 13 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdd5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	0x41
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x86
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x86
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xd4
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xd4
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0xe4
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x108
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xb2
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe4
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7a
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x4
	.4byte	0x12f
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x122
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1a1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
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
	.4byte	0x1a7
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x147
	.uleb128 0x9
	.4byte	0x13b
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x23a
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x27f
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x27f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x27f
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x13b
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x13b
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x120
	.4byte	0x28f
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2d1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2d1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2d7
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2ee
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x28f
	.uleb128 0x9
	.4byte	0x2e7
	.4byte	0x2e7
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2ed
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x23a
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x31c
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x31c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x41
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x395
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x31c
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
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x2f4
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x4f9
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x322
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x4f9
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x73a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x73a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x73a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x129
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8a2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8a8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8b9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x129
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8bf
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8c5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x129
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8d6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2d1
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x28f
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6fb
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x73a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8e2
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x129
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x39a
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x642
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x31c
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
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2f4
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x4f9
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x120
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x660
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x68a
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6ae
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6c8
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2f4
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x31c
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ce
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6de
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2f4
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x8d
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x114
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x108
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x660
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x129
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x642
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x136
	.uleb128 0xe
	.byte	0x4
	.4byte	0x666
	.uleb128 0x17
	.4byte	0x99
	.4byte	0x6ae
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x99
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x690
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6c8
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6b4
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x6de
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x6ee
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4ff
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x734
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x734
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x73a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6fb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ee
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x787
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x787
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x787
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x33
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x67
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x797
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7de
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1a1
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7de
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1a1
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x88d
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x129
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x108
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x108
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x108
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x88d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x108
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x108
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x108
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x108
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x108
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x12f
	.4byte	0x89d
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF151
	.uleb128 0xe
	.byte	0x4
	.4byte	0x89d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x797
	.uleb128 0x1a
	.4byte	0x8b9
	.uleb128 0x18
	.4byte	0x4f9
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8ae
	.uleb128 0xe
	.byte	0x4
	.4byte	0x740
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b7
	.uleb128 0x1a
	.4byte	0x8d6
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8dc
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7e4
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4f9
	.uleb128 0x5
	.4byte	.LASF121
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x54
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x129
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x9
	.byte	0x8
	.byte	0x11
	.4byte	0x940
	.uleb128 0x9
	.4byte	0x91c
	.4byte	0x950
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0xa0
	.byte	0x9
	.byte	0x4b
	.byte	0x9
	.4byte	0x986
	.uleb128 0x10
	.string	"X"
	.byte	0x9
	.byte	0x4c
	.byte	0x25
	.4byte	0x934
	.byte	0
	.uleb128 0x10
	.string	"Y"
	.byte	0x9
	.byte	0x4d
	.byte	0x25
	.4byte	0x934
	.byte	0x28
	.uleb128 0x10
	.string	"Z"
	.byte	0x9
	.byte	0x4e
	.byte	0x25
	.4byte	0x934
	.byte	0x50
	.uleb128 0x10
	.string	"T"
	.byte	0x9
	.byte	0x4f
	.byte	0x25
	.4byte	0x934
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x9
	.byte	0x50
	.byte	0x3
	.4byte	0x950
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa30
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x43
	.byte	0x35
	.4byte	0x31c
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0x44
	.byte	0x3b
	.4byte	0xa30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"h"
	.byte	0x1
	.byte	0x46
	.byte	0x13
	.4byte	0xa36
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0xd31
	.4byte	0x9f7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0xd3d
	.4byte	0xa18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x23
	.4byte	.LVL25
	.4byte	0xd48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x48
	.uleb128 0x9
	.4byte	0x41
	.4byte	0xa46
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb90
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x2d
	.byte	0x35
	.4byte	0x31c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x2e
	.byte	0x3b
	.4byte	0xa30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"A"
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.4byte	0x986
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.4byte	0x934
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x32
	.byte	0x25
	.4byte	0x934
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0xd54
	.4byte	0xac9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL15
	.4byte	0xd60
	.4byte	0xade
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0xd6c
	.4byte	0xb01
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0xd78
	.4byte	0xb1d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x21
	.4byte	.LVL18
	.4byte	0xd60
	.4byte	0xb32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0xd84
	.4byte	0xb55
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x21
	.4byte	.LVL20
	.4byte	0xd90
	.4byte	0xb78
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0xd9c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF132
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3e
	.uleb128 0x25
	.string	"pk"
	.byte	0x1
	.byte	0x20
	.byte	0x2c
	.4byte	0x31c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x26
	.string	"sk"
	.byte	0x1
	.byte	0x20
	.byte	0x3f
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x1
	.byte	0x22
	.byte	0x13
	.4byte	0xc3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0xda8
	.4byte	0xc07
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL9
	.4byte	0xc4e
	.4byte	0xc27
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.4byte	.LVL11
	.4byte	0xd48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0xc4e
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd31
	.uleb128 0x25
	.string	"pk"
	.byte	0x1
	.byte	0xc
	.byte	0x31
	.4byte	0x31c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x26
	.string	"sk"
	.byte	0x1
	.byte	0xc
	.byte	0x44
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0xd
	.byte	0x37
	.4byte	0xa30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"A"
	.byte	0x1
	.byte	0xf
	.byte	0x28
	.4byte	0x986
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.4byte	.LVL1
	.4byte	0xd31
	.4byte	0xcbe
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL2
	.4byte	0xdb4
	.4byte	0xcd9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0xdc0
	.4byte	0xcf4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x21
	.4byte	.LVL4
	.4byte	0xdcc
	.4byte	0xd14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x23
	.4byte	.LVL5
	.4byte	0xdcc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.byte	0x26
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF152
	.4byte	.LASF153
	.byte	0xe
	.byte	0
	.uleb128 0x28
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0x16
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.byte	0x81
	.byte	0xc
	.uleb128 0x28
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x9
	.byte	0x2a
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x9
	.byte	0x2d
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x9
	.byte	0x32
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x9
	.byte	0x2c
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x9
	.byte	0x2f
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x9
	.byte	0x24
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xc
	.byte	0x21
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x9
	.byte	0x91
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x9
	.byte	0x80
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xd
	.byte	0x20
	.byte	0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU26
	.uleb128 0
.LLST2:
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE0
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
.LASF40:
	.string	"_dso_handle"
.LASF49:
	.string	"_size"
.LASF144:
	.string	"randombytes_buf"
.LASF95:
	.string	"_rand48"
.LASF61:
	.string	"_emergency"
.LASF54:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF125:
	.string	"crypto_sign_ed25519_sk_to_curve25519"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF147:
	.string	"memmove"
.LASF151:
	.string	"__locale_t"
.LASF113:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_wctomb_state"
.LASF29:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF84:
	.string	"_ubuf"
.LASF48:
	.string	"_base"
.LASF31:
	.string	"__tm_hour"
.LASF75:
	.string	"__sf"
.LASF38:
	.string	"_on_exit_args"
.LASF79:
	.string	"_cookie"
.LASF74:
	.string	"__sglue"
.LASF10:
	.string	"long int"
.LASF100:
	.string	"_mprec"
.LASF51:
	.string	"_flags"
.LASF42:
	.string	"_is_cxa"
.LASF57:
	.string	"_stdin"
.LASF86:
	.string	"_blksize"
.LASF8:
	.string	"_lock_t"
.LASF129:
	.string	"ed25519_sk"
.LASF68:
	.string	"_cvtbuf"
.LASF87:
	.string	"_offset"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF106:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF45:
	.string	"_fns"
.LASF25:
	.string	"_sign"
.LASF19:
	.string	"_flock_t"
.LASF59:
	.string	"_stderr"
.LASF27:
	.string	"_Bigint"
.LASF66:
	.string	"_gamma_signgam"
.LASF80:
	.string	"_read"
.LASF102:
	.string	"_result_k"
.LASF28:
	.string	"__tm"
.LASF46:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"__wchb"
.LASF58:
	.string	"_stdout"
.LASF133:
	.string	"seed"
.LASF67:
	.string	"_cvtlen"
.LASF20:
	.string	"long unsigned int"
.LASF50:
	.string	"__sFILE_fake"
.LASF126:
	.string	"crypto_sign_ed25519_pk_to_curve25519"
.LASF93:
	.string	"_niobs"
.LASF128:
	.string	"curve25519_pk"
.LASF1:
	.string	"short unsigned int"
.LASF73:
	.string	"_atexit0"
.LASF139:
	.string	"crypto_core_curve25519_ref10_fe_sub"
.LASF77:
	.string	"_signal_buf"
.LASF71:
	.string	"_asctime_buf"
.LASF101:
	.string	"_result"
.LASF14:
	.string	"__wch"
.LASF152:
	.string	"memcpy"
.LASF13:
	.string	"wint_t"
.LASF153:
	.string	"__builtin_memcpy"
.LASF88:
	.string	"_lock"
.LASF90:
	.string	"_flags2"
.LASF141:
	.string	"crypto_core_curve25519_ref10_fe_add"
.LASF143:
	.string	"crypto_core_curve25519_ref10_fe_tobytes"
.LASF81:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF76:
	.string	"_misc"
.LASF142:
	.string	"crypto_core_curve25519_ref10_fe_mul"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF138:
	.string	"crypto_core_curve25519_ref10_fe_1"
.LASF131:
	.string	"one_minus_y"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF150:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF124:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF33:
	.string	"__tm_mon"
.LASF43:
	.string	"_atexit"
.LASF122:
	.string	"suboptarg"
.LASF62:
	.string	"__sdidinit"
.LASF11:
	.string	"_off_t"
.LASF136:
	.string	"sodium_memzero"
.LASF104:
	.string	"_freelist"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF121:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF123:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF94:
	.string	"_iobs"
.LASF4:
	.string	"short int"
.LASF36:
	.string	"__tm_yday"
.LASF47:
	.string	"__sbuf"
.LASF91:
	.string	"__FILE"
.LASF18:
	.string	"_mbstate_t"
.LASF78:
	.string	"__sFILE"
.LASF145:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF89:
	.string	"_mbstate"
.LASF99:
	.string	"_rand_next"
.LASF107:
	.string	"_mblen_state"
.LASF60:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF64:
	.string	"_locale"
.LASF65:
	.string	"__cleanup"
.LASF63:
	.string	"_unspecified_locale_info"
.LASF24:
	.string	"_maxwds"
.LASF55:
	.string	"_reent"
.LASF146:
	.string	"crypto_core_curve25519_ref10_ge_p3_tobytes"
.LASF96:
	.string	"_seed"
.LASF16:
	.string	"__count"
.LASF17:
	.string	"__value"
.LASF82:
	.string	"_seek"
.LASF12:
	.string	"_fpos_t"
.LASF56:
	.string	"_errno"
.LASF21:
	.string	"char"
.LASF140:
	.string	"crypto_core_curve25519_ref10_fe_invert"
.LASF30:
	.string	"__tm_min"
.LASF149:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/keypair.c"
.LASF127:
	.string	"curve25519_sk"
.LASF7:
	.string	"__int32_t"
.LASF97:
	.string	"_mult"
.LASF23:
	.string	"_next"
.LASF148:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF98:
	.string	"_add"
.LASF22:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF134:
	.string	"crypto_sign_ed25519_seed_keypair"
.LASF130:
	.string	"ed25519_pk"
.LASF120:
	.string	"_global_impure_ptr"
.LASF52:
	.string	"_file"
.LASF26:
	.string	"_wds"
.LASF35:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF110:
	.string	"_l64a_buf"
.LASF72:
	.string	"_sig_func"
.LASF85:
	.string	"_nbuf"
.LASF37:
	.string	"__tm_isdst"
.LASF70:
	.string	"_localtime_buf"
.LASF83:
	.string	"_close"
.LASF119:
	.string	"__sf_fake_stderr"
.LASF69:
	.string	"_r48"
.LASF137:
	.string	"crypto_core_curve25519_ref10_ge_frombytes_negate_vartime"
.LASF109:
	.string	"_mbtowc_state"
.LASF103:
	.string	"_p5s"
.LASF132:
	.string	"crypto_sign_ed25519_keypair"
.LASF135:
	.string	"crypto_hash_sha512"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
