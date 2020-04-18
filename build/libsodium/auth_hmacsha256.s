	.file	"auth_hmacsha256.c"
	.text
.Ltext0:
	.section	.text.crypto_auth_hmacsha256_bytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_bytes
	.type	crypto_auth_hmacsha256_bytes, @function
crypto_auth_hmacsha256_bytes:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha256/auth_hmacsha256.c"
	.loc 1 14 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 15 5 view .LVU1
	.loc 1 16 1 is_stmt 0 view .LVU2
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_auth_hmacsha256_bytes, .-crypto_auth_hmacsha256_bytes
	.section	.text.crypto_auth_hmacsha256_keybytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_keybytes
	.type	crypto_auth_hmacsha256_keybytes, @function
crypto_auth_hmacsha256_keybytes:
.LFB10:
	entry	sp, 32
.LCFI1:
	movi.n	a2, 0x20
	retw.n
.LFE10:
	.size	crypto_auth_hmacsha256_keybytes, .-crypto_auth_hmacsha256_keybytes
	.section	.text.crypto_auth_hmacsha256_statebytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_statebytes
	.type	crypto_auth_hmacsha256_statebytes, @function
crypto_auth_hmacsha256_statebytes:
.LFB2:
	.loc 1 26 1 is_stmt 1 view -0
	.loc 1 26 1 is_stmt 0 view .LVU4
	entry	sp, 32
.LCFI2:
	.loc 1 27 5 is_stmt 1 view .LVU5
	.loc 1 28 1 is_stmt 0 view .LVU6
	movi	a2, 0xd0
	retw.n
.LFE2:
	.size	crypto_auth_hmacsha256_statebytes, .-crypto_auth_hmacsha256_statebytes
	.section	.text.crypto_auth_hmacsha256_keygen,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_keygen
	.type	crypto_auth_hmacsha256_keygen, @function
crypto_auth_hmacsha256_keygen:
.LVL0:
.LFB3:
	.loc 1 32 1 is_stmt 1 view -0
	.loc 1 32 1 is_stmt 0 view .LVU8
	entry	sp, 32
.LCFI3:
	.loc 1 33 5 is_stmt 1 view .LVU9
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL1:
	.loc 1 34 1 is_stmt 0 view .LVU10
	retw.n
.LFE3:
	.size	crypto_auth_hmacsha256_keygen, .-crypto_auth_hmacsha256_keygen
	.section	.text.crypto_auth_hmacsha256_init,"ax",@progbits
	.literal_position
	.literal .LC0, 64, 0
	.align	4
	.global	crypto_auth_hmacsha256_init
	.type	crypto_auth_hmacsha256_init, @function
crypto_auth_hmacsha256_init:
.LVL2:
.LFB4:
	.loc 1 39 1 is_stmt 1 view -0
	.loc 1 39 1 is_stmt 0 view .LVU12
	entry	sp, 128
.LCFI4:
	.loc 1 40 5 is_stmt 1 view .LVU13
	.loc 1 41 5 view .LVU14
	.loc 1 42 5 view .LVU15
	.loc 1 44 5 view .LVU16
	.loc 1 44 8 is_stmt 0 view .LVU17
	movi.n	a5, 0x40
	bgeu	a5, a4, .L6
	.loc 1 45 9 is_stmt 1 view .LVU18
	mov.n	a10, a2
	call8	crypto_hash_sha256_init
.LVL3:
	.loc 1 46 9 view .LVU19
	mov.n	a12, a4
	mov.n	a11, a3
	movi.n	a13, 0
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL4:
	.loc 1 47 9 view .LVU20
	add.n	a11, sp, a5
	mov.n	a10, a2
	call8	crypto_hash_sha256_final
.LVL5:
	.loc 1 48 9 view .LVU21
	.loc 1 49 9 view .LVU22
	.loc 1 49 16 is_stmt 0 view .LVU23
	movi.n	a4, 0x20
	.loc 1 48 13 view .LVU24
	add.n	a3, sp, a5
.LVL6:
.L6:
	.loc 1 51 5 is_stmt 1 view .LVU25
	mov.n	a10, a2
	call8	crypto_hash_sha256_init
.LVL7:
	.loc 1 52 5 view .LVU26
	movi.n	a12, 0x40
	movi.n	a11, 0x36
	mov.n	a10, sp
	call8	memset
.LVL8:
	.loc 1 53 5 view .LVU27
	.loc 1 53 5 is_stmt 0 view .LVU28
	mov.n	a5, sp
	mov.n	a9, sp
	.loc 1 53 12 view .LVU29
	movi.n	a8, 0
	.loc 1 53 5 view .LVU30
	j	.L7
.LVL9:
.L8:
	.loc 1 54 9 is_stmt 1 discriminator 3 view .LVU31
	.loc 1 54 22 is_stmt 0 discriminator 3 view .LVU32
	add.n	a10, a3, a8
	.loc 1 54 16 discriminator 3 view .LVU33
	l8ui	a11, a9, 0
	l8ui	a10, a10, 0
	.loc 1 53 30 discriminator 3 view .LVU34
	addi.n	a8, a8, 1
.LVL10:
	.loc 1 54 16 discriminator 3 view .LVU35
	xor	a10, a10, a11
	s8i	a10, a9, 0
	addi.n	a9, a9, 1
.LVL11:
.L7:
	.loc 1 53 5 discriminator 1 view .LVU36
	bne	a4, a8, .L8
	.loc 1 56 5 is_stmt 1 view .LVU37
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL12:
	.loc 1 58 5 view .LVU38
	addi	a2, a2, 104
.LVL13:
	.loc 1 58 5 is_stmt 0 view .LVU39
	mov.n	a10, a2
	call8	crypto_hash_sha256_init
.LVL14:
	.loc 1 59 5 is_stmt 1 view .LVU40
	movi.n	a12, 0x40
	movi.n	a11, 0x5c
	mov.n	a10, sp
	call8	memset
.LVL15:
	.loc 1 60 5 view .LVU41
	.loc 1 60 12 is_stmt 0 view .LVU42
	movi.n	a8, 0
	.loc 1 60 5 view .LVU43
	j	.L9
.LVL16:
.L10:
	.loc 1 61 9 is_stmt 1 discriminator 3 view .LVU44
	.loc 1 61 22 is_stmt 0 discriminator 3 view .LVU45
	add.n	a9, a3, a8
	.loc 1 61 16 discriminator 3 view .LVU46
	l8ui	a10, a5, 0
	l8ui	a9, a9, 0
	.loc 1 60 30 discriminator 3 view .LVU47
	addi.n	a8, a8, 1
.LVL17:
	.loc 1 61 16 discriminator 3 view .LVU48
	xor	a9, a9, a10
	s8i	a9, a5, 0
	addi.n	a5, a5, 1
.LVL18:
.L9:
	.loc 1 60 5 discriminator 1 view .LVU49
	bne	a4, a8, .L10
	.loc 1 63 5 is_stmt 1 view .LVU50
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL19:
	.loc 1 65 5 view .LVU51
	mov.n	a10, sp
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL20:
	.loc 1 66 5 view .LVU52
	movi.n	a11, 0x20
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL21:
	.loc 1 68 5 view .LVU53
	.loc 1 69 1 is_stmt 0 view .LVU54
	movi.n	a2, 0
.LVL22:
	.loc 1 69 1 view .LVU55
	retw.n
.LFE4:
	.size	crypto_auth_hmacsha256_init, .-crypto_auth_hmacsha256_init
	.section	.text.crypto_auth_hmacsha256_update,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_update
	.type	crypto_auth_hmacsha256_update, @function
crypto_auth_hmacsha256_update:
.LVL23:
.LFB5:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU57
	entry	sp, 32
.LCFI5:
	.loc 1 75 5 is_stmt 1 view .LVU58
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL24:
	.loc 1 77 5 view .LVU59
	.loc 1 78 1 is_stmt 0 view .LVU60
	movi.n	a2, 0
.LVL25:
	.loc 1 78 1 view .LVU61
	retw.n
.LFE5:
	.size	crypto_auth_hmacsha256_update, .-crypto_auth_hmacsha256_update
	.section	.text.crypto_auth_hmacsha256_final,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_auth_hmacsha256_final
	.type	crypto_auth_hmacsha256_final, @function
crypto_auth_hmacsha256_final:
.LVL26:
.LFB6:
	.loc 1 83 1 is_stmt 1 view -0
	.loc 1 83 1 is_stmt 0 view .LVU63
	entry	sp, 64
.LCFI6:
	.loc 1 84 5 is_stmt 1 view .LVU64
	.loc 1 86 5 view .LVU65
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_final
.LVL27:
	.loc 1 87 5 view .LVU66
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	addi	a2, a2, 104
.LVL28:
	.loc 1 87 5 is_stmt 0 view .LVU67
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL29:
	.loc 1 88 5 is_stmt 1 view .LVU68
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_hash_sha256_final
.LVL30:
	.loc 1 90 5 view .LVU69
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	sodium_memzero
.LVL31:
	.loc 1 92 5 view .LVU70
	.loc 1 93 1 is_stmt 0 view .LVU71
	movi.n	a2, 0
.LVL32:
	.loc 1 93 1 view .LVU72
	retw.n
.LFE6:
	.size	crypto_auth_hmacsha256_final, .-crypto_auth_hmacsha256_final
	.section	.text.crypto_auth_hmacsha256,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256
	.type	crypto_auth_hmacsha256, @function
crypto_auth_hmacsha256:
.LVL33:
.LFB7:
	.loc 1 98 1 is_stmt 1 view -0
	.loc 1 98 1 is_stmt 0 view .LVU74
	entry	sp, 240
.LCFI7:
	.loc 1 99 5 is_stmt 1 view .LVU75
	.loc 1 101 5 view .LVU76
	mov.n	a11, a6
	movi.n	a12, 0x20
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_init
.LVL34:
	.loc 1 102 5 view .LVU77
.LBB4:
.LBI4:
	.loc 1 72 1 view .LVU78
.LBB5:
	.loc 1 75 5 view .LVU79
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
.LVL35:
	.loc 1 75 5 is_stmt 0 view .LVU80
	call8	crypto_hash_sha256_update
.LVL36:
	.loc 1 77 5 is_stmt 1 view .LVU81
	.loc 1 77 5 is_stmt 0 view .LVU82
.LBE5:
.LBE4:
	.loc 1 103 5 is_stmt 1 view .LVU83
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_final
.LVL37:
	.loc 1 105 5 view .LVU84
	.loc 1 106 1 is_stmt 0 view .LVU85
	movi.n	a2, 0
.LVL38:
	.loc 1 106 1 view .LVU86
	retw.n
.LFE7:
	.size	crypto_auth_hmacsha256, .-crypto_auth_hmacsha256
	.section	.text.crypto_auth_hmacsha256_verify,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_verify
	.type	crypto_auth_hmacsha256_verify, @function
crypto_auth_hmacsha256_verify:
.LVL39:
.LFB8:
	.loc 1 111 1 is_stmt 1 view -0
	.loc 1 111 1 is_stmt 0 view .LVU88
	entry	sp, 64
.LCFI8:
	.loc 1 112 5 is_stmt 1 view .LVU89
	.loc 1 114 5 view .LVU90
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256
.LVL40:
	.loc 1 116 5 view .LVU91
	.loc 1 116 12 is_stmt 0 view .LVU92
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_verify_32
.LVL41:
	mov.n	a3, a10
.LVL42:
	.loc 1 117 12 view .LVU93
	mov.n	a11, a2
	movi.n	a12, 0x20
	mov.n	a10, sp
	call8	sodium_memcmp
.LVL43:
	.loc 1 118 1 view .LVU94
	or	a2, a3, a10
.LVL44:
	.loc 1 118 1 view .LVU95
	retw.n
.LFE8:
	.size	crypto_auth_hmacsha256_verify, .-crypto_auth_hmacsha256_verify
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0xf0
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha256.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 13 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf98
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xc
	.4byte	.LASF152
	.4byte	.LASF153
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x38
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x59
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	0x59
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x38
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x8b
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x7f
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0xb6
	.uleb128 0x4
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
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
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
	.4byte	0x59
	.4byte	0x12c
	.uleb128 0xa
	.4byte	0x38
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
	.4byte	0x25
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xe
	.byte	0x4
	.4byte	0x177
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0x5
	.4byte	0x177
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x16a
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1e9
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1e9
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1ef
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x9
	.4byte	0x183
	.4byte	0x1ff
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x282
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2c7
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2c7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2c7
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x183
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x183
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x168
	.4byte	0x2d7
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x319
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x319
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x31f
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x336
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2d7
	.uleb128 0x9
	.4byte	0x32f
	.4byte	0x32f
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x335
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x282
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x364
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x364
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x59
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3dd
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x364
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x33c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x541
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x36a
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x541
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x782
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x782
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x782
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x171
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF70
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
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x901
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x171
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x907
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x90d
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x171
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x91e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x319
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2d7
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x743
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x782
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x92a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x171
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3e2
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x68a
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x364
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x33c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x541
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x168
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a8
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6d2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6f6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x710
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x33c
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x364
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x716
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x726
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x33c
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xd5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x15c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x150
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6a8
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x171
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x68a
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ae
	.uleb128 0x17
	.4byte	0xe1
	.4byte	0x6f6
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0xe1
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x710
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6fc
	.uleb128 0x9
	.4byte	0x59
	.4byte	0x726
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x59
	.4byte	0x736
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x547
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x77c
	.uleb128 0x15
	.4byte	.LASF29
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
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x782
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x743
	.uleb128 0xe
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
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x8b
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x7df
	.uleb128 0xa
	.4byte	0x38
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
	.4byte	0x1e9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1e9
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x826
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e9
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
	.4byte	0x171
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
	.4byte	0x25
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
	.4byte	0x177
	.4byte	0x8e5
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7df
	.uleb128 0x1a
	.4byte	0x901
	.uleb128 0x18
	.4byte	0x541
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8f6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x788
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ff
	.uleb128 0x1a
	.4byte	0x91e
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x924
	.uleb128 0xe
	.byte	0x4
	.4byte	0x913
	.uleb128 0xe
	.byte	0x4
	.4byte	0x82c
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3dd
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3dd
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3dd
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x541
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x171
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x68
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
	.4byte	0xaa
	.byte	0x20
	.uleb128 0x10
	.string	"buf"
	.byte	0x9
	.byte	0x1b
	.byte	0xd
	.4byte	0x9b5
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.4byte	0x9e
	.4byte	0x9b5
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x92
	.4byte	0x9c5
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.4byte	0x970
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0xd0
	.byte	0xa
	.byte	0x26
	.byte	0x10
	.4byte	0x9f9
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xa
	.byte	0x27
	.byte	0x1e
	.4byte	0x9c5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xa
	.byte	0x28
	.byte	0x1e
	.4byte	0x9c5
	.byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xa
	.byte	0x29
	.byte	0x3
	.4byte	0x9d1
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac9
	.uleb128 0x1e
	.string	"h"
	.byte	0x1
	.byte	0x6d
	.byte	0x34
	.4byte	0xac9
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x1e
	.string	"in"
	.byte	0x1
	.byte	0x6d
	.byte	0x4c
	.4byte	0xac9
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x6e
	.byte	0x32
	.4byte	0x8b
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x6e
	.byte	0x4e
	.4byte	0xac9
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.byte	0x70
	.byte	0x13
	.4byte	0xacf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0xadf
	.4byte	0xa92
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL41
	.4byte	0xf3b
	.4byte	0xaac
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
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0xf47
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x60
	.uleb128 0x9
	.4byte	0x59
	.4byte	0xadf
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbda
	.uleb128 0x1e
	.string	"out"
	.byte	0x1
	.byte	0x60
	.byte	0x27
	.4byte	0x364
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x20
	.string	"in"
	.byte	0x1
	.byte	0x60
	.byte	0x41
	.4byte	0xac9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x61
	.byte	0x2b
	.4byte	0x8b
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x61
	.byte	0x47
	.4byte	0xac9
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.byte	0x63
	.byte	0x22
	.4byte	0x9f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x25
	.4byte	0xc90
	.4byte	.LBI4
	.byte	.LVU78
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.4byte	0xba1
	.uleb128 0x26
	.4byte	0xcb8
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x26
	.4byte	0xcad
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	0xca1
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0xf53
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL34
	.4byte	0xcc5
	.4byte	0xbc2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LVL37
	.4byte	0xbda
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8a
	.uleb128 0x27
	.4byte	.LASF129
	.byte	0x1
	.byte	0x51
	.byte	0x3c
	.4byte	0xc8a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.byte	0x52
	.byte	0x2d
	.4byte	0x364
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.byte	0x54
	.byte	0x13
	.4byte	0xacf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0xf5f
	.4byte	0xc3f
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
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LVL29
	.4byte	0xf53
	.4byte	0xc59
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
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LVL30
	.4byte	0xf5f
	.4byte	0xc73
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
	.byte	0
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0xf6b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9f9
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.4byte	0xcc5
	.uleb128 0x29
	.4byte	.LASF129
	.byte	0x1
	.byte	0x48
	.byte	0x3d
	.4byte	0xc8a
	.uleb128 0x2a
	.string	"in"
	.byte	0x1
	.byte	0x49
	.byte	0x34
	.4byte	0xac9
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.byte	0x49
	.byte	0x4b
	.4byte	0x8b
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6a
	.uleb128 0x27
	.4byte	.LASF129
	.byte	0x1
	.byte	0x25
	.byte	0x3b
	.4byte	0xc8a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.byte	0x26
	.byte	0x32
	.4byte	0xac9
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x1
	.byte	0x26
	.byte	0x3e
	.4byte	0x2c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2b
	.string	"pad"
	.byte	0x1
	.byte	0x28
	.byte	0x13
	.4byte	0xe6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x1
	.byte	0x29
	.byte	0x13
	.4byte	0xacf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x22
	.4byte	.LVL3
	.4byte	0xf77
	.4byte	0xd60
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0xf53
	.4byte	0xd7a
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
	.byte	0
	.uleb128 0x22
	.4byte	.LVL5
	.4byte	0xf5f
	.4byte	0xd9a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.4byte	.LVL7
	.4byte	0xf77
	.4byte	0xdae
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL8
	.4byte	0xf83
	.4byte	0xdcf
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL12
	.4byte	0xf53
	.4byte	0xde9
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL14
	.4byte	0xf77
	.4byte	0xdfd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0xf83
	.4byte	0xe1d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.4byte	.LVL19
	.4byte	0xf53
	.4byte	0xe38
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
	.sleb128 -128
	.byte	0
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0xf6b
	.4byte	0xe53
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0xf6b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x59
	.4byte	0xe7a
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF156
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb3
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x1f
	.byte	0x2d
	.4byte	0x364
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL1
	.4byte	0xf8f
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.4byte	.LASF158
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x30
	.4byte	.LASF159
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x31
	.4byte	0xed5
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	0xc90
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3b
	.uleb128 0x26
	.4byte	0xca1
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x33
	.4byte	0xcad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	0xcb8
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0xf53
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x10
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xc
	.byte	0x1f
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x9
	.byte	0x2d
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x9
	.byte	0x32
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.byte	0x16
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x9
	.byte	0x2a
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.uleb128 0x34
	.4byte	.LASF150
	.4byte	.LASF150
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
	.uleb128 0x8
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST6:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU78
	.uleb128 .LVU82
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU78
	.uleb128 .LVU82
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU78
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU82
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x4
	.byte	0x72
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x72
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU28
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU38
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU51
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"_dso_handle"
.LASF130:
	.string	"count"
.LASF143:
	.string	"crypto_verify_32"
.LASF55:
	.string	"_size"
.LASF150:
	.string	"randombytes_buf"
.LASF3:
	.string	"size_t"
.LASF101:
	.string	"_rand48"
.LASF67:
	.string	"_emergency"
.LASF13:
	.string	"uint64_t"
.LASF144:
	.string	"sodium_memcmp"
.LASF136:
	.string	"crypto_auth_hmacsha256"
.LASF4:
	.string	"__uint8_t"
.LASF60:
	.string	"_data"
.LASF121:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF10:
	.string	"long long unsigned int"
.LASF59:
	.string	"_lbfsize"
.LASF154:
	.string	"__locale_t"
.LASF119:
	.string	"_mbrtowc_state"
.LASF114:
	.string	"_wctomb_state"
.LASF35:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF90:
	.string	"_ubuf"
.LASF54:
	.string	"_base"
.LASF37:
	.string	"__tm_hour"
.LASF81:
	.string	"__sf"
.LASF44:
	.string	"_on_exit_args"
.LASF152:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha256/auth_hmacsha256.c"
.LASF85:
	.string	"_cookie"
.LASF131:
	.string	"crypto_auth_hmacsha256_state"
.LASF80:
	.string	"__sglue"
.LASF129:
	.string	"state"
.LASF16:
	.string	"long int"
.LASF145:
	.string	"crypto_hash_sha256_update"
.LASF106:
	.string	"_mprec"
.LASF57:
	.string	"_flags"
.LASF48:
	.string	"_is_cxa"
.LASF63:
	.string	"_stdin"
.LASF92:
	.string	"_blksize"
.LASF14:
	.string	"_lock_t"
.LASF146:
	.string	"crypto_hash_sha256_final"
.LASF74:
	.string	"_cvtbuf"
.LASF93:
	.string	"_offset"
.LASF155:
	.string	"crypto_auth_hmacsha256_update"
.LASF120:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_strtok_last"
.LASF118:
	.string	"_mbrlen_state"
.LASF45:
	.string	"_fnargs"
.LASF134:
	.string	"inlen"
.LASF51:
	.string	"_fns"
.LASF7:
	.string	"__uint32_t"
.LASF31:
	.string	"_sign"
.LASF25:
	.string	"_flock_t"
.LASF65:
	.string	"_stderr"
.LASF33:
	.string	"_Bigint"
.LASF72:
	.string	"_gamma_signgam"
.LASF86:
	.string	"_read"
.LASF108:
	.string	"_result_k"
.LASF34:
	.string	"__tm"
.LASF52:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"__wchb"
.LASF64:
	.string	"_stdout"
.LASF73:
	.string	"_cvtlen"
.LASF26:
	.string	"long unsigned int"
.LASF157:
	.string	"crypto_auth_hmacsha256_statebytes"
.LASF56:
	.string	"__sFILE_fake"
.LASF99:
	.string	"_niobs"
.LASF138:
	.string	"crypto_auth_hmacsha256_final"
.LASF1:
	.string	"short unsigned int"
.LASF79:
	.string	"_atexit0"
.LASF83:
	.string	"_signal_buf"
.LASF77:
	.string	"_asctime_buf"
.LASF142:
	.string	"khash"
.LASF107:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF19:
	.string	"wint_t"
.LASF94:
	.string	"_lock"
.LASF96:
	.string	"_flags2"
.LASF87:
	.string	"_write"
.LASF40:
	.string	"__tm_year"
.LASF82:
	.string	"_misc"
.LASF128:
	.string	"crypto_hash_sha256_state"
.LASF132:
	.string	"ictx"
.LASF123:
	.string	"__sf_fake_stdin"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF153:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF39:
	.string	"__tm_mon"
.LASF49:
	.string	"_atexit"
.LASF127:
	.string	"suboptarg"
.LASF68:
	.string	"__sdidinit"
.LASF17:
	.string	"_off_t"
.LASF147:
	.string	"sodium_memzero"
.LASF9:
	.string	"__uint64_t"
.LASF110:
	.string	"_freelist"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF5:
	.string	"unsigned char"
.LASF100:
	.string	"_iobs"
.LASF159:
	.string	"crypto_auth_hmacsha256_bytes"
.LASF135:
	.string	"crypto_auth_hmacsha256_verify"
.LASF6:
	.string	"short int"
.LASF42:
	.string	"__tm_yday"
.LASF53:
	.string	"__sbuf"
.LASF97:
	.string	"__FILE"
.LASF24:
	.string	"_mbstate_t"
.LASF84:
	.string	"__sFILE"
.LASF95:
	.string	"_mbstate"
.LASF105:
	.string	"_rand_next"
.LASF113:
	.string	"_mblen_state"
.LASF66:
	.string	"_inc"
.LASF50:
	.string	"_ind"
.LASF70:
	.string	"_locale"
.LASF71:
	.string	"__cleanup"
.LASF69:
	.string	"_unspecified_locale_info"
.LASF141:
	.string	"keylen"
.LASF30:
	.string	"_maxwds"
.LASF61:
	.string	"_reent"
.LASF102:
	.string	"_seed"
.LASF22:
	.string	"__count"
.LASF12:
	.string	"uint32_t"
.LASF88:
	.string	"_seek"
.LASF148:
	.string	"crypto_hash_sha256_init"
.LASF18:
	.string	"_fpos_t"
.LASF133:
	.string	"octx"
.LASF62:
	.string	"_errno"
.LASF27:
	.string	"char"
.LASF36:
	.string	"__tm_min"
.LASF140:
	.string	"crypto_auth_hmacsha256_init"
.LASF137:
	.string	"correct"
.LASF103:
	.string	"_mult"
.LASF29:
	.string	"_next"
.LASF151:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"__value"
.LASF47:
	.string	"_fntypes"
.LASF111:
	.string	"_misc_reent"
.LASF104:
	.string	"_add"
.LASF28:
	.string	"__ULong"
.LASF158:
	.string	"crypto_auth_hmacsha256_keybytes"
.LASF117:
	.string	"_getdate_err"
.LASF156:
	.string	"crypto_auth_hmacsha256_keygen"
.LASF126:
	.string	"_global_impure_ptr"
.LASF149:
	.string	"memset"
.LASF139:
	.string	"ihash"
.LASF58:
	.string	"_file"
.LASF32:
	.string	"_wds"
.LASF41:
	.string	"__tm_wday"
.LASF98:
	.string	"_glue"
.LASF11:
	.string	"uint8_t"
.LASF116:
	.string	"_l64a_buf"
.LASF78:
	.string	"_sig_func"
.LASF91:
	.string	"_nbuf"
.LASF43:
	.string	"__tm_isdst"
.LASF76:
	.string	"_localtime_buf"
.LASF89:
	.string	"_close"
.LASF125:
	.string	"__sf_fake_stderr"
.LASF75:
	.string	"_r48"
.LASF115:
	.string	"_mbtowc_state"
.LASF109:
	.string	"_p5s"
.LASF38:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
