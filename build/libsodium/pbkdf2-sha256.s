	.file	"pbkdf2-sha256.c"
	.text
.Ltext0:
	.section	.text.PBKDF2_SHA256,"ax",@progbits
	.literal_position
	.literal .LC1, 4, 0
	.literal .LC2, 32, 0
	.align	4
	.global	PBKDF2_SHA256
	.type	PBKDF2_SHA256, @function
PBKDF2_SHA256:
.LVL0:
.LFB12:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pbkdf2-sha256.c"
	.loc 1 47 1 view -0
	.loc 1 47 1 is_stmt 0 view .LVU1
	entry	sp, 560
.LCFI0:
	.loc 1 48 5 is_stmt 1 view .LVU2
	.loc 1 49 5 view .LVU3
	.loc 1 50 5 view .LVU4
	.loc 1 51 5 view .LVU5
	.loc 1 52 5 view .LVU6
	.loc 1 53 5 view .LVU7
	.loc 1 54 5 view .LVU8
	.loc 1 55 5 view .LVU9
	.loc 1 62 5 view .LVU10
	movi	a10, 0xd0
	mov.n	a12, a3
	mov.n	a11, a2
	add.n	a10, a10, sp
	.loc 1 47 1 is_stmt 0 view .LVU11
	s32i	a6, sp, 500
	.loc 1 62 5 view .LVU12
	call8	crypto_auth_hmacsha256_init
.LVL1:
	.loc 1 63 5 is_stmt 1 view .LVU13
	movi	a10, 0xd0
	mov.n	a12, a5
	mov.n	a11, a4
	movi.n	a13, 0
	add.n	a10, a10, sp
	.loc 1 47 1 is_stmt 0 view .LVU14
	.loc 1 63 5 view .LVU15
	call8	crypto_auth_hmacsha256_update
.LVL2:
	.loc 1 65 5 is_stmt 1 view .LVU16
	.loc 1 65 5 is_stmt 0 view .LVU17
	movi.n	a4, 0
.LVL3:
.LBB4:
.LBB5:
	.file 2 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 173 12 view .LVU18
	addmi	a5, sp, 0x100
.LVL4:
	.loc 2 173 12 view .LVU19
.LBE5:
.LBE4:
	.loc 1 65 5 view .LVU20
	j	.L2
.LVL5:
.L8:
	.loc 1 66 9 is_stmt 1 view .LVU21
	addi.n	a6, a4, 1
.LVL6:
.LBB9:
.LBI4:
	.loc 2 168 1 view .LVU22
.LBB6:
	.loc 2 173 5 view .LVU23
	.loc 2 173 29 is_stmt 0 view .LVU24
	srli	a8, a6, 8
	.loc 2 174 14 view .LVU25
	s8i	a8, a5, 226
	.loc 2 174 29 view .LVU26
	extui	a8, a6, 16, 16
.LBE6:
.LBE9:
	.loc 1 67 9 view .LVU27
	movi	a12, 0xd0
.LBB10:
.LBB7:
	.loc 2 175 14 view .LVU28
	s8i	a8, a5, 225
	.loc 2 175 29 view .LVU29
	extui	a8, a6, 24, 8
	.loc 2 176 14 view .LVU30
	s8i	a8, a5, 224
.LBE7:
.LBE10:
	.loc 1 67 9 view .LVU31
	add.n	a11, sp, a12
.LBB11:
.LBB8:
	.loc 2 173 12 view .LVU32
	s8i	a6, a5, 227
	.loc 2 173 27 is_stmt 1 view .LVU33
.LVL7:
	.loc 2 174 5 view .LVU34
	.loc 2 174 27 view .LVU35
	.loc 2 175 5 view .LVU36
	.loc 2 175 27 view .LVU37
	.loc 2 176 5 view .LVU38
	.loc 2 176 5 is_stmt 0 view .LVU39
.LBE8:
.LBE11:
	.loc 1 67 9 is_stmt 1 view .LVU40
	mov.n	a10, sp
	call8	memcpy
.LVL8:
	.loc 1 68 9 view .LVU41
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x1e0
	add.n	a11, sp, a11
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL9:
	.loc 1 69 9 view .LVU42
	movi	a8, 0x1c0
	add.n	a11, a8, sp
	mov.n	a10, sp
	s32i	a8, sp, 504
	call8	crypto_auth_hmacsha256_final
.LVL10:
	.loc 1 71 9 view .LVU43
	movi	a11, 0x1c0
	movi	a10, 0x1a0
	movi.n	a12, 0x20
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	memcpy
.LVL11:
	.loc 1 73 9 view .LVU44
	.loc 1 73 16 is_stmt 0 view .LVU45
	movi.n	a9, 2
	movi.n	a14, 0
	.loc 1 73 9 view .LVU46
	j	.L3
.LVL12:
.L6:
	.loc 1 74 13 is_stmt 1 view .LVU47
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	s32i	a9, sp, 508
	s32i	a14, sp, 512
	call8	crypto_auth_hmacsha256_init
.LVL13:
	.loc 1 75 13 view .LVU48
	movi	a8, 0x1c0
	add.n	a15, sp, a8
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a15
	mov.n	a10, sp
	s32i	a15, sp, 504
	call8	crypto_auth_hmacsha256_update
.LVL14:
	.loc 1 76 13 view .LVU49
	l32i	a15, sp, 504
	mov.n	a10, sp
	mov.n	a11, a15
	call8	crypto_auth_hmacsha256_final
.LVL15:
	.loc 1 78 13 view .LVU50
	.loc 1 78 13 is_stmt 0 view .LVU51
	movi	a8, 0x1a0
	.loc 1 79 26 view .LVU52
	l32i	a15, sp, 504
	l32i	a14, sp, 512
	l32i	a9, sp, 508
	add.n	a8, sp, a8
	.loc 1 78 20 view .LVU53
	movi.n	a11, 0
	.loc 1 79 26 view .LVU54
	movi.n	a10, 0x20
	loop	a10, .L4_LEND
.LVL16:
.L4:
	.loc 1 79 17 is_stmt 1 discriminator 3 view .LVU55
	.loc 1 79 26 is_stmt 0 discriminator 3 view .LVU56
	add.n	a12, a15, a11
	.loc 1 79 22 discriminator 3 view .LVU57
	l8ui	a13, a8, 0
	l8ui	a12, a12, 0
	.loc 1 78 34 discriminator 3 view .LVU58
	addi.n	a11, a11, 1
.LVL17:
	.loc 1 79 22 discriminator 3 view .LVU59
	xor	a12, a12, a13
	s8i	a12, a8, 0
	addi.n	a8, a8, 1
	.L4_LEND:
	.loc 1 73 30 discriminator 2 view .LVU60
	addi.n	a10, a9, 1
	movi.n	a8, 1
	bltu	a10, a9, .L5
	movi.n	a8, 0
.L5:
	add.n	a8, a8, a14
	mov.n	a9, a10
	mov.n	a14, a8
.LVL18:
.L3:
	.loc 1 73 9 discriminator 1 view .LVU61
	bltu	a7, a14, .L9
	bne	a7, a14, .L6
	l32i	a8, sp, 500
	bgeu	a8, a9, .L6
.L9:
	.loc 1 84 9 is_stmt 1 view .LVU62
.LVL19:
	.loc 1 85 9 view .LVU63
	.loc 1 88 9 view .LVU64
	l32i	a8, sp, 564
	slli	a4, a4, 5
.LVL20:
	.loc 1 88 9 is_stmt 0 view .LVU65
	sub	a4, a8, a4
	movi.n	a12, 0x20
	minu	a12, a4, a12
	l32i	a8, sp, 496
	l32i	a4, sp, 560
	movi	a11, 0x1a0
	add.n	a10, a4, a8
	add.n	a11, sp, a11
	call8	memcpy
.LVL21:
	.loc 1 88 9 view .LVU66
	mov.n	a4, a6
.LVL22:
.L2:
	.loc 1 88 9 view .LVU67
	slli	a6, a4, 5
	.loc 1 65 5 discriminator 1 view .LVU68
	l32i	a8, sp, 564
	s32i	a6, sp, 496
	bltu	a6, a8, .L8
	.loc 1 90 5 is_stmt 1 view .LVU69
	movi	a10, 0xd0
	mov.n	a11, a10
	add.n	a10, sp, a10
	call8	sodium_memzero
.LVL23:
	.loc 1 91 1 is_stmt 0 view .LVU70
	retw.n
.LFE12:
	.size	PBKDF2_SHA256, .-PBKDF2_SHA256
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
	.uleb128 0x230
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha256.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd3d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0xc
	.4byte	.LASF148
	.4byte	.LASF149
	.4byte	.Ldebug_ranges0+0x28
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
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
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
	.byte	0x4f
	.byte	0x16
	.4byte	0x67
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
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x67
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.uleb128 0x5
	.4byte	0x8d
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x6
	.byte	0xb
	.byte	0xd
	.4byte	0x54
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0xc
	.byte	0x11
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0x2c
	.byte	0xe
	.4byte	0xce
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x72
	.byte	0xe
	.4byte	0xce
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x67
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.byte	0x3
	.4byte	0x11c
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa8
	.byte	0xc
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x7
	.byte	0xa9
	.byte	0x13
	.4byte	0x11c
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x12c
	.uleb128 0xa
	.4byte	0x67
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.byte	0x9
	.4byte	0x150
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x7
	.byte	0xa5
	.byte	0x7
	.4byte	0x54
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x7
	.byte	0xaa
	.byte	0x5
	.4byte	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0xab
	.byte	0x3
	.4byte	0x12c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
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
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x16a
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x18
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d7
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x8
	.byte	0x31
	.byte	0x13
	.4byte	0x1d7
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x8
	.byte	0x32
	.byte	0x7
	.4byte	0x54
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x32
	.byte	0xb
	.4byte	0x54
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.4byte	0x54
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x32
	.byte	0x1b
	.4byte	0x54
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x8
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
	.4byte	0x67
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x24
	.byte	0x8
	.byte	0x37
	.byte	0x8
	.4byte	0x270
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.4byte	0x54
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3a
	.byte	0x7
	.4byte	0x54
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3b
	.byte	0x7
	.4byte	0x54
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x3c
	.byte	0x7
	.4byte	0x54
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x3d
	.byte	0x7
	.4byte	0x54
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x54
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x54
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x54
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x54
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x8
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b5
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b5
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4e
	.byte	0xa
	.4byte	0x171
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x8
	.byte	0x51
	.byte	0xa
	.4byte	0x171
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x168
	.4byte	0x2c5
	.uleb128 0xa
	.4byte	0x67
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x8
	.byte	0x55
	.byte	0x8
	.4byte	0x307
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x8
	.byte	0x56
	.byte	0x12
	.4byte	0x307
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x57
	.byte	0x6
	.4byte	0x54
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0x58
	.byte	0x9
	.4byte	0x30d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
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
	.4byte	0x67
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
	.byte	0x8
	.byte	0x75
	.byte	0x8
	.4byte	0x352
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0x76
	.byte	0x11
	.4byte	0x352
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0x77
	.byte	0x6
	.4byte	0x54
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3f
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x20
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x3cb
	.uleb128 0xf
	.string	"_p"
	.byte	0x8
	.byte	0x9a
	.byte	0x12
	.4byte	0x352
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x8
	.byte	0x9b
	.byte	0x7
	.4byte	0x54
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x8
	.byte	0x9c
	.byte	0x7
	.4byte	0x54
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x9d
	.byte	0x9
	.4byte	0x46
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0x9e
	.byte	0x9
	.4byte	0x46
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x32a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0xa0
	.byte	0x7
	.4byte	0x54
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0xa2
	.byte	0x12
	.4byte	0x52f
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x358
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x8
	.2byte	0x174
	.byte	0x8
	.4byte	0x52f
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x178
	.byte	0x7
	.4byte	0x54
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x17d
	.byte	0xb
	.4byte	0x782
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x17d
	.byte	0x14
	.4byte	0x782
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x782
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x17f
	.byte	0x7
	.4byte	0x54
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x181
	.byte	0x9
	.4byte	0x696
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x183
	.byte	0x7
	.4byte	0x54
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x185
	.byte	0x7
	.4byte	0x54
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ea
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x8
	.2byte	0x188
	.byte	0x12
	.4byte	0x8f0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x18a
	.byte	0xa
	.4byte	0x901
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x18c
	.byte	0x7
	.4byte	0x54
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x18f
	.byte	0x7
	.4byte	0x54
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x190
	.byte	0x9
	.4byte	0x696
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x192
	.byte	0x13
	.4byte	0x907
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x193
	.byte	0x10
	.4byte	0x90d
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x194
	.byte	0x9
	.4byte	0x696
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x197
	.byte	0xb
	.4byte	0x91e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x19b
	.byte	0x13
	.4byte	0x307
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c5
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x19f
	.byte	0x10
	.4byte	0x743
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x782
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x92a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x8
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
	.byte	0x8
	.byte	0xb5
	.byte	0x8
	.4byte	0x678
	.uleb128 0xf
	.string	"_p"
	.byte	0x8
	.byte	0xb6
	.byte	0x12
	.4byte	0x352
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x8
	.byte	0xb7
	.byte	0x7
	.4byte	0x54
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x8
	.byte	0xb8
	.byte	0x7
	.4byte	0x54
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0xb9
	.byte	0x9
	.4byte	0x46
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0xba
	.byte	0x9
	.4byte	0x46
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x8
	.byte	0xbb
	.byte	0x11
	.4byte	0x32a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x54
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0xbf
	.byte	0x12
	.4byte	0x52f
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x8
	.byte	0xc3
	.byte	0xa
	.4byte	0x168
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x8
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a8
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x6d2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x8
	.byte	0xca
	.byte	0xd
	.4byte	0x6f6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x710
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x8
	.byte	0xce
	.byte	0x11
	.4byte	0x32a
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x8
	.byte	0xcf
	.byte	0x12
	.4byte	0x352
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x8
	.byte	0xd0
	.byte	0x7
	.4byte	0x54
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x716
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x8
	.byte	0xd4
	.byte	0x11
	.4byte	0x726
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x32a
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x8
	.byte	0xda
	.byte	0x7
	.4byte	0x54
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x8
	.byte	0xdb
	.byte	0xa
	.4byte	0xd5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x8
	.byte	0xe2
	.byte	0xc
	.4byte	0x15c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x8
	.byte	0xe4
	.byte	0xe
	.4byte	0x150
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x8
	.byte	0xe5
	.byte	0x7
	.4byte	0x54
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x54
	.4byte	0x696
	.uleb128 0x18
	.4byte	0x52f
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x696
	.uleb128 0x18
	.4byte	0x54
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF96
	.uleb128 0x5
	.4byte	0x69c
	.uleb128 0x10
	.byte	0x4
	.4byte	0x678
	.uleb128 0x17
	.4byte	0x54
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x52f
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x54
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
	.4byte	0x54
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x17
	.4byte	0x54
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
	.4byte	0x67
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x736
	.uleb128 0xa
	.4byte	0x67
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x11f
	.byte	0x18
	.4byte	0x535
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xc
	.byte	0x8
	.2byte	0x123
	.byte	0x8
	.4byte	0x77c
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x8
	.2byte	0x125
	.byte	0x11
	.4byte	0x77c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x126
	.byte	0x7
	.4byte	0x54
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x8
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
	.byte	0x8
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7cf
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x140
	.byte	0x12
	.4byte	0x7cf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x141
	.byte	0x12
	.4byte	0x7cf
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x142
	.byte	0x12
	.4byte	0x4d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x145
	.byte	0x24
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x7df
	.uleb128 0xa
	.4byte	0x67
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x10
	.byte	0x8
	.2byte	0x158
	.byte	0x8
	.4byte	0x826
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x15c
	.byte	0x7
	.4byte	0x54
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d7
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
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
	.byte	0x8
	.2byte	0x162
	.byte	0x8
	.4byte	0x8d5
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x165
	.byte	0x9
	.4byte	0x696
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x166
	.byte	0xe
	.4byte	0x150
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x167
	.byte	0xe
	.4byte	0x150
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x168
	.byte	0xe
	.4byte	0x150
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x169
	.byte	0x8
	.4byte	0x8d5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x16a
	.byte	0x7
	.4byte	0x54
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x16b
	.byte	0xe
	.4byte	0x150
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x16c
	.byte	0xe
	.4byte	0x150
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x16d
	.byte	0xe
	.4byte	0x150
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x16e
	.byte	0xe
	.4byte	0x150
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x16f
	.byte	0xe
	.4byte	0x150
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x69c
	.4byte	0x8e5
	.uleb128 0xa
	.4byte	0x67
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF150
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
	.4byte	0x54
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
	.byte	0x8
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3cb
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3cb
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3cb
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x30a
	.byte	0x18
	.4byte	0x52f
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x696
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x68
	.byte	0xa
	.byte	0x18
	.byte	0x10
	.4byte	0x9a5
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xa
	.byte	0x19
	.byte	0xe
	.4byte	0x9a5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xa
	.byte	0x1a
	.byte	0xe
	.4byte	0xaa
	.byte	0x20
	.uleb128 0xf
	.string	"buf"
	.byte	0xa
	.byte	0x1b
	.byte	0xd
	.4byte	0x9b5
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.4byte	0x9e
	.4byte	0x9b5
	.uleb128 0xa
	.4byte	0x67
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x8d
	.4byte	0x9c5
	.uleb128 0xa
	.4byte	0x67
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xa
	.byte	0x1c
	.byte	0x3
	.4byte	0x970
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0xd0
	.byte	0xb
	.byte	0x26
	.byte	0x10
	.4byte	0x9f9
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xb
	.byte	0x27
	.byte	0x1e
	.4byte	0x9c5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xb
	.byte	0x28
	.byte	0x1e
	.4byte	0x9c5
	.byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xb
	.byte	0x29
	.byte	0x3
	.4byte	0x9d1
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb5
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0x2d
	.byte	0x1e
	.4byte	0xcb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0x2d
	.byte	0x2d
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2d
	.byte	0x47
	.4byte	0xcb5
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.byte	0x2e
	.byte	0x16
	.4byte	0x81
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x2e
	.byte	0x28
	.4byte	0xaa
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.byte	0x2e
	.byte	0x34
	.4byte	0xcbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2e
	.byte	0x40
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.4byte	.LASF139
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.4byte	0x9f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x22
	.4byte	.LASF140
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.4byte	0x9f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.4byte	0x81
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x22
	.4byte	.LASF141
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	0xcc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"U"
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0xcd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.string	"T"
	.byte	0x1
	.byte	0x34
	.byte	0xd
	.4byte	0xcd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.byte	0x35
	.byte	0xe
	.4byte	0xaa
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.4byte	0x54
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.4byte	0x81
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x26
	.4byte	0xce1
	.4byte	.LBI4
	.byte	.LVU22
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0xb55
	.uleb128 0x27
	.4byte	0xcfa
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x27
	.4byte	0xcee
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0xd05
	.4byte	0xb76
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0xd11
	.4byte	0xb91
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xd1d
	.4byte	0xbb3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xd0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL9
	.4byte	0xd11
	.4byte	0xbcf
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0xd28
	.4byte	0xbeb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xd1d
	.4byte	0xc0d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL13
	.4byte	0xd05
	.4byte	0xc2e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0xd11
	.4byte	0xc4a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0xd28
	.4byte	0xc5f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.byte	0
	.uleb128 0x28
	.4byte	.LVL21
	.4byte	0xd1d
	.4byte	0xc9d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x76
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x1c
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL23
	.4byte	0xd34
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x99
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x9
	.4byte	0x8d
	.4byte	0xcd1
	.uleb128 0xa
	.4byte	0x67
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x8d
	.4byte	0xce1
	.uleb128 0xa
	.4byte	0x67
	.byte	0x1f
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF152
	.byte	0x2
	.byte	0xa8
	.byte	0x1
	.byte	0x3
	.4byte	0xd05
	.uleb128 0x2c
	.string	"dst"
	.byte	0x2
	.byte	0xa8
	.byte	0x14
	.4byte	0xcbb
	.uleb128 0x2c
	.string	"w"
	.byte	0x2
	.byte	0xa8
	.byte	0x25
	.4byte	0x9e
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x2f
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.byte	0x34
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF153
	.4byte	.LASF154
	.byte	0xd
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xb
	.byte	0x39
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x16
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
	.uleb128 0x18
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL5
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU61
	.uleb128 .LVU66
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x2
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU51
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU61
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU67
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL19
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xe0
	.byte	0x1e
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1d
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xe0
	.byte	0x1e
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1d
	.byte	0x76
	.sleb128 -1
	.byte	0x9
	.byte	0xe0
	.byte	0x1e
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU22
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU22
	.uleb128 .LVU39
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"_dso_handle"
.LASF130:
	.string	"count"
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
.LASF5:
	.string	"__uint8_t"
.LASF59:
	.string	"_data"
.LASF148:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pbkdf2-sha256.c"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF139:
	.string	"PShctx"
.LASF0:
	.string	"long long unsigned int"
.LASF58:
	.string	"_lbfsize"
.LASF150:
	.string	"__locale_t"
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
.LASF131:
	.string	"crypto_auth_hmacsha256_state"
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
.LASF144:
	.string	"crypto_auth_hmacsha256_update"
.LASF120:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_strtok_last"
.LASF118:
	.string	"_mbrlen_state"
.LASF44:
	.string	"_fnargs"
.LASF136:
	.string	"salt"
.LASF50:
	.string	"_fns"
.LASF6:
	.string	"__uint32_t"
.LASF151:
	.string	"PBKDF2_SHA256"
.LASF30:
	.string	"_sign"
.LASF138:
	.string	"dkLen"
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
.LASF134:
	.string	"passwd"
.LASF145:
	.string	"crypto_auth_hmacsha256_final"
.LASF4:
	.string	"short unsigned int"
.LASF78:
	.string	"_atexit0"
.LASF82:
	.string	"_signal_buf"
.LASF76:
	.string	"_asctime_buf"
.LASF137:
	.string	"saltlen"
.LASF107:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF153:
	.string	"memcpy"
.LASF19:
	.string	"wint_t"
.LASF154:
	.string	"__builtin_memcpy"
.LASF93:
	.string	"_lock"
.LASF95:
	.string	"_flags2"
.LASF86:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF81:
	.string	"_misc"
.LASF128:
	.string	"crypto_hash_sha256_state"
.LASF132:
	.string	"ictx"
.LASF123:
	.string	"__sf_fake_stdin"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF149:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF142:
	.string	"clen"
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
.LASF146:
	.string	"sodium_memzero"
.LASF9:
	.string	"__uint64_t"
.LASF110:
	.string	"_freelist"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF140:
	.string	"hctx"
.LASF2:
	.string	"unsigned char"
.LASF100:
	.string	"_iobs"
.LASF3:
	.string	"short int"
.LASF41:
	.string	"__tm_yday"
.LASF52:
	.string	"__sbuf"
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
.LASF12:
	.string	"uint32_t"
.LASF87:
	.string	"_seek"
.LASF18:
	.string	"_fpos_t"
.LASF133:
	.string	"octx"
.LASF61:
	.string	"_errno"
.LASF96:
	.string	"char"
.LASF35:
	.string	"__tm_min"
.LASF143:
	.string	"crypto_auth_hmacsha256_init"
.LASF103:
	.string	"_mult"
.LASF28:
	.string	"_next"
.LASF152:
	.string	"store32_be"
.LASF147:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"__value"
.LASF46:
	.string	"_fntypes"
.LASF111:
	.string	"_misc_reent"
.LASF104:
	.string	"_add"
.LASF27:
	.string	"__ULong"
.LASF117:
	.string	"_getdate_err"
.LASF141:
	.string	"ivec"
.LASF126:
	.string	"_global_impure_ptr"
.LASF135:
	.string	"passwdlen"
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
.LASF121:
	.string	"_wcrtomb_state"
.LASF115:
	.string	"_mbtowc_state"
.LASF109:
	.string	"_p5s"
.LASF37:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"