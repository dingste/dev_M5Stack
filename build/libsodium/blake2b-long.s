	.file	"blake2b-long.c"
	.text
.Ltext0:
	.section	.text.blake2b_long,"ax",@progbits
	.literal_position
	.literal .LC0, 4, 0
	.literal .LC1, 64, 0
	.align	4
	.global	blake2b_long
	.type	blake2b_long, @function
blake2b_long:
.LVL0:
.LFB12:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/blake2b-long.c"
	.loc 1 14 1 view -0
	.loc 1 14 1 is_stmt 0 view .LVU1
	entry	sp, 624
.LCFI0:
	.loc 1 15 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 16 5 view .LVU3
	.loc 1 17 5 view .LVU4
	.loc 1 18 5 view .LVU5
	.loc 1 20 5 view .LVU6
	.loc 1 25 5 view .LVU7
.LBB5:
.LBB6:
	.file 2 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 99 5 is_stmt 0 view .LVU8
	addi	a8, sp, 16
.LBE6:
.LBE5:
	.loc 1 14 1 view .LVU9
	addi	a6, sp, 79
.LBB9:
.LBB7:
	.loc 2 99 5 view .LVU10
	addmi	a8, a8, 0x100
.LBE7:
.LBE9:
	.loc 1 14 1 view .LVU11
	srli	a6, a6, 6
	s32i	a3, sp, 432
.LVL2:
.LBB10:
.LBI5:
	.loc 2 96 1 is_stmt 1 view .LVU12
.LBB8:
	.loc 2 99 5 view .LVU13
	s32i	a8, sp, 576
	s32i	a3, sp, 560
.LVL3:
	.loc 2 99 5 is_stmt 0 view .LVU14
.LBE8:
.LBE10:
	.loc 1 35 5 is_stmt 1 view .LVU15
	.loc 1 35 8 is_stmt 0 view .LVU16
	movi.n	a7, 0x40
	.loc 1 14 1 view .LVU17
	slli	a6, a6, 6
	.loc 1 35 8 view .LVU18
	bltu	a7, a3, .L2
	.loc 1 36 9 is_stmt 1 discriminator 3 view .LVU19
	.loc 1 36 14 discriminator 3 view .LVU20
	.loc 1 36 20 is_stmt 0 discriminator 3 view .LVU21
	movi.n	a12, 0
	mov.n	a13, a3
	mov.n	a11, a12
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_init
.LVL4:
	mov.n	a8, a10
.LVL5:
	.loc 1 36 23 is_stmt 1 discriminator 3 view .LVU22
	.loc 1 36 26 is_stmt 0 discriminator 3 view .LVU23
	bltz	a10, .L3
	.loc 1 37 9 is_stmt 1 view .LVU24
	.loc 1 37 14 view .LVU25
	.loc 1 37 20 is_stmt 0 view .LVU26
	addi	a8, sp, 16
.LVL6:
	.loc 1 37 20 view .LVU27
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	movi	a11, 0x220
	add.n	a11, a8, a11
	mov.n	a10, a6
.LVL7:
	.loc 1 37 20 view .LVU28
	call8	crypto_generichash_blake2b_update
.LVL8:
	mov.n	a8, a10
.LVL9:
	.loc 1 37 105 is_stmt 1 view .LVU29
	.loc 1 37 108 is_stmt 0 view .LVU30
	bltz	a10, .L3
	.loc 1 39 9 is_stmt 1 view .LVU31
	.loc 1 39 14 view .LVU32
	.loc 1 39 20 is_stmt 0 view .LVU33
	mov.n	a12, a5
	movi.n	a13, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_update
.LVL10:
	.loc 1 39 20 view .LVU34
	mov.n	a8, a10
.LVL11:
	.loc 1 39 105 is_stmt 1 view .LVU35
	.loc 1 39 108 is_stmt 0 view .LVU36
	bltz	a10, .L3
	.loc 1 41 9 is_stmt 1 discriminator 3 view .LVU37
	.loc 1 41 14 discriminator 3 view .LVU38
	.loc 1 41 20 is_stmt 0 discriminator 3 view .LVU39
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_final
.LVL12:
	.loc 1 41 20 discriminator 3 view .LVU40
	mov.n	a8, a10
.LVL13:
	.loc 1 41 81 is_stmt 1 discriminator 3 view .LVU41
	j	.L3
.LVL14:
.L2:
.LBB11:
	.loc 1 43 9 view .LVU42
	.loc 1 44 9 view .LVU43
	.loc 1 45 9 view .LVU44
	.loc 1 46 9 view .LVU45
	.loc 1 46 14 view .LVU46
	.loc 1 46 20 is_stmt 0 view .LVU47
	movi.n	a12, 0
	mov.n	a13, a7
	mov.n	a11, a12
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_init
.LVL15:
	mov.n	a8, a10
.LVL16:
	.loc 1 46 20 is_stmt 1 view .LVU48
	.loc 1 46 23 is_stmt 0 view .LVU49
	bltz	a10, .L3
	.loc 1 48 9 is_stmt 1 view .LVU50
	.loc 1 48 14 view .LVU51
	.loc 1 48 20 is_stmt 0 view .LVU52
	addi	a8, sp, 16
.LVL17:
	.loc 1 48 20 view .LVU53
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	movi	a11, 0x220
	add.n	a11, a8, a11
	mov.n	a10, a6
.LVL18:
	.loc 1 48 20 view .LVU54
	call8	crypto_generichash_blake2b_update
.LVL19:
	mov.n	a8, a10
.LVL20:
	.loc 1 48 105 is_stmt 1 view .LVU55
	.loc 1 48 108 is_stmt 0 view .LVU56
	bltz	a10, .L3
	.loc 1 50 9 is_stmt 1 view .LVU57
	.loc 1 50 14 view .LVU58
	.loc 1 50 20 is_stmt 0 view .LVU59
	mov.n	a12, a5
	movi.n	a13, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_update
.LVL21:
	.loc 1 50 20 view .LVU60
	mov.n	a8, a10
.LVL22:
	.loc 1 50 105 is_stmt 1 view .LVU61
	.loc 1 50 108 is_stmt 0 view .LVU62
	bltz	a10, .L3
	.loc 1 52 9 is_stmt 1 view .LVU63
	.loc 1 52 14 view .LVU64
	.loc 1 52 20 is_stmt 0 view .LVU65
	movi	a5, 0x1f0
.LVL23:
	.loc 1 52 20 view .LVU66
	add.n	a4, sp, a5
.LVL24:
	.loc 1 52 20 view .LVU67
	mov.n	a12, a7
	mov.n	a11, a4
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_final
.LVL25:
	.loc 1 52 20 view .LVU68
	mov.n	a8, a10
.LVL26:
	.loc 1 52 86 is_stmt 1 view .LVU69
	.loc 1 52 89 is_stmt 0 view .LVU70
	bltz	a10, .L3
	.loc 1 54 9 is_stmt 1 view .LVU71
	movi.n	a12, 0x20
	mov.n	a11, a4
	mov.n	a10, a2
	call8	memcpy
.LVL27:
	.loc 1 55 9 view .LVU72
	.loc 1 56 9 view .LVU73
	.loc 1 60 13 is_stmt 0 view .LVU74
	l32i	a8, sp, 576
	movi	a7, 0xa0
	add.n	a8, a8, a7
	.loc 1 56 19 view .LVU75
	addi	a5, a3, -32
.LVL28:
	.loc 1 59 9 is_stmt 1 view .LVU76
	.loc 1 60 13 is_stmt 0 view .LVU77
	s32i	a8, sp, 576
	.loc 1 59 15 view .LVU78
	j	.L5
.LVL29:
.L6:
	.loc 1 60 13 is_stmt 1 view .LVU79
	l32i	a10, sp, 576
	mov.n	a12, a8
	mov.n	a11, a4
	s32i	a8, sp, 580
	call8	memcpy
.LVL30:
	.loc 1 61 13 view .LVU80
	.loc 1 61 18 view .LVU81
	.loc 1 61 24 is_stmt 0 view .LVU82
	l32i	a8, sp, 580
	movi.n	a9, 0
	l32r	a14, .LC1
	l32r	a15, .LC1+4
	l32i	a12, sp, 576
	mov.n	a11, a8
	s32i.n	a9, sp, 4
	s32i.n	a9, sp, 0
	mov.n	a10, a4
	call8	crypto_generichash_blake2b
.LVL31:
	mov.n	a8, a10
.LVL32:
	.loc 1 61 19 is_stmt 1 view .LVU83
	.loc 1 61 22 is_stmt 0 view .LVU84
	bltz	a10, .L3
	.loc 1 64 13 is_stmt 1 view .LVU85
	movi.n	a12, 0x20
	mov.n	a11, a4
	mov.n	a10, a7
	call8	memcpy
.LVL33:
	.loc 1 65 13 view .LVU86
	.loc 1 66 13 view .LVU87
	.loc 1 66 23 is_stmt 0 view .LVU88
	addi	a5, a5, -32
.LVL34:
.L5:
	.loc 1 66 23 view .LVU89
	add.n	a7, a2, a3
	.loc 1 59 15 view .LVU90
	movi.n	a8, 0x40
	sub	a7, a7, a5
.LVL35:
	.loc 1 59 15 view .LVU91
	bltu	a8, a5, .L6
	.loc 1 69 9 is_stmt 1 view .LVU92
	addi	a2, sp, 16
.LVL36:
	.loc 1 69 9 is_stmt 0 view .LVU93
	movi	a3, 0x1e0
.LVL37:
	.loc 1 69 9 view .LVU94
	add.n	a4, a2, a3
	addi	a3, sp, 16
	movi	a2, 0x1a0
	add.n	a2, a3, a2
	mov.n	a12, a8
	mov.n	a11, a4
	mov.n	a10, a2
	call8	memcpy
.LVL38:
	.loc 1 70 9 is_stmt 1 view .LVU95
	.loc 1 70 14 view .LVU96
	.loc 1 70 20 is_stmt 0 view .LVU97
	movi.n	a3, 0
	l32r	a14, .LC1
	l32r	a15, .LC1+4
	s32i.n	a3, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a12, a2
	mov.n	a11, a5
	mov.n	a10, a4
	call8	crypto_generichash_blake2b
.LVL39:
	mov.n	a8, a10
.LVL40:
	.loc 1 70 15 is_stmt 1 view .LVU98
	.loc 1 70 18 is_stmt 0 view .LVU99
	blt	a10, a3, .L3
	.loc 1 73 9 is_stmt 1 view .LVU100
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a7
	s32i	a8, sp, 580
	call8	memcpy
.LVL41:
	.loc 1 73 9 is_stmt 0 view .LVU101
	l32i	a8, sp, 580
.LVL42:
.L3:
	.loc 1 73 9 view .LVU102
.LBE11:
	.loc 1 76 5 is_stmt 1 view .LVU103
	movi	a11, 0x165
	mov.n	a10, a6
	s32i	a8, sp, 580
	call8	sodium_memzero
.LVL43:
	.loc 1 77 5 view .LVU104
	.loc 1 79 1 is_stmt 0 view .LVU105
	l32i	a8, sp, 580
	mov.n	a2, a8
	retw.n
.LFE12:
	.size	blake2b_long, .-blake2b_long
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
	.uleb128 0x270
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
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdc5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0xc
	.4byte	.LASF145
	.4byte	.LASF146
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x60
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0x6e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x6
	.byte	0xb
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0xc
	.byte	0x11
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0x2c
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x72
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x60
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.byte	0x3
	.4byte	0x117
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa8
	.byte	0xc
	.4byte	0xe8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x7
	.byte	0xa9
	.byte	0x13
	.4byte	0x117
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x60
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.byte	0x9
	.4byte	0x14b
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x7
	.byte	0xa5
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x7
	.byte	0xaa
	.byte	0x5
	.4byte	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0xab
	.byte	0x3
	.4byte	0x127
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0xaf
	.byte	0x1b
	.4byte	0xbd
	.uleb128 0xc
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
	.4byte	0x165
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x18
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x31
	.byte	0x13
	.4byte	0x1d2
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x8
	.byte	0x32
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x32
	.byte	0xb
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x32
	.byte	0x1b
	.4byte	0x4d
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x8
	.byte	0x33
	.byte	0xb
	.4byte	0x1d8
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x178
	.uleb128 0x8
	.4byte	0x16c
	.4byte	0x1e8
	.uleb128 0x9
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x24
	.byte	0x8
	.byte	0x37
	.byte	0x8
	.4byte	0x26b
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3a
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3b
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x3c
	.byte	0x7
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x3d
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x4d
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x4d
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x8
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b0
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4e
	.byte	0xa
	.4byte	0x16c
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x8
	.byte	0x51
	.byte	0xa
	.4byte	0x16c
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x163
	.4byte	0x2c0
	.uleb128 0x9
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x8
	.byte	0x55
	.byte	0x8
	.4byte	0x302
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x56
	.byte	0x12
	.4byte	0x302
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x57
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x58
	.byte	0x9
	.4byte	0x308
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x59
	.byte	0x20
	.4byte	0x31f
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c0
	.uleb128 0x8
	.4byte	0x318
	.4byte	0x318
	.uleb128 0x9
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31e
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x26b
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x8
	.byte	0x75
	.byte	0x8
	.4byte	0x34d
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x76
	.byte	0x11
	.4byte	0x34d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x8
	.byte	0x77
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x20
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x3c6
	.uleb128 0xe
	.string	"_p"
	.byte	0x8
	.byte	0x9a
	.byte	0x12
	.4byte	0x34d
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x8
	.byte	0x9b
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x8
	.byte	0x9c
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x9d
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x9e
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x325
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0xa0
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x8
	.byte	0xa2
	.byte	0x12
	.4byte	0x52a
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x353
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x8
	.2byte	0x174
	.byte	0x8
	.4byte	0x52a
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x178
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x17d
	.byte	0xb
	.4byte	0x77d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x17d
	.byte	0x14
	.4byte	0x77d
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x77d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x17f
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x181
	.byte	0x9
	.4byte	0x691
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x183
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x185
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x186
	.byte	0x16
	.4byte	0x8e5
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x8
	.2byte	0x188
	.byte	0x12
	.4byte	0x8eb
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8fc
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x18c
	.byte	0x7
	.4byte	0x4d
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x18f
	.byte	0x7
	.4byte	0x4d
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x190
	.byte	0x9
	.4byte	0x691
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x192
	.byte	0x13
	.4byte	0x902
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x193
	.byte	0x10
	.4byte	0x908
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x194
	.byte	0x9
	.4byte	0x691
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x197
	.byte	0xb
	.4byte	0x919
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x19b
	.byte	0x13
	.4byte	0x302
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c0
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x19f
	.byte	0x10
	.4byte	0x73e
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x77d
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x925
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x691
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3cb
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x68
	.byte	0x8
	.byte	0xb5
	.byte	0x8
	.4byte	0x673
	.uleb128 0xe
	.string	"_p"
	.byte	0x8
	.byte	0xb6
	.byte	0x12
	.4byte	0x34d
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x8
	.byte	0xb7
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x8
	.byte	0xb8
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x8
	.byte	0xbb
	.byte	0x11
	.4byte	0x325
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x8
	.byte	0xbf
	.byte	0x12
	.4byte	0x52a
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x8
	.byte	0xc3
	.byte	0xa
	.4byte	0x163
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x8
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a3
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x6cd
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x8
	.byte	0xca
	.byte	0xd
	.4byte	0x6f1
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x70b
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x8
	.byte	0xce
	.byte	0x11
	.4byte	0x325
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x8
	.byte	0xcf
	.byte	0x12
	.4byte	0x34d
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x8
	.byte	0xd0
	.byte	0x7
	.4byte	0x4d
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x711
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x8
	.byte	0xd4
	.byte	0x11
	.4byte	0x721
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x325
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x8
	.byte	0xda
	.byte	0x7
	.4byte	0x4d
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x8
	.byte	0xdb
	.byte	0xa
	.4byte	0xd0
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x8
	.byte	0xe2
	.byte	0xc
	.4byte	0x157
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x8
	.byte	0xe4
	.byte	0xe
	.4byte	0x14b
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x8
	.byte	0xe5
	.byte	0x7
	.4byte	0x4d
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x691
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x163
	.uleb128 0x18
	.4byte	0x691
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x697
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF96
	.uleb128 0x13
	.4byte	0x697
	.uleb128 0xf
	.byte	0x4
	.4byte	0x673
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x163
	.uleb128 0x18
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a9
	.uleb128 0x17
	.4byte	0xdc
	.4byte	0x6f1
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x163
	.uleb128 0x18
	.4byte	0xdc
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d3
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x70b
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x163
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6f7
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x721
	.uleb128 0x9
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x731
	.uleb128 0x9
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x11f
	.byte	0x18
	.4byte	0x530
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xc
	.byte	0x8
	.2byte	0x123
	.byte	0x8
	.4byte	0x777
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x8
	.2byte	0x125
	.byte	0x11
	.4byte	0x777
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x126
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x127
	.byte	0xb
	.4byte	0x77d
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x73e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x731
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x18
	.byte	0x8
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7ca
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x140
	.byte	0x12
	.4byte	0x7ca
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x141
	.byte	0x12
	.4byte	0x7ca
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x142
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x145
	.byte	0x24
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x46
	.4byte	0x7da
	.uleb128 0x9
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x10
	.byte	0x8
	.2byte	0x158
	.byte	0x8
	.4byte	0x821
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x15c
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d2
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x15e
	.byte	0x14
	.4byte	0x821
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x50
	.byte	0x8
	.2byte	0x162
	.byte	0x8
	.4byte	0x8d0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x165
	.byte	0x9
	.4byte	0x691
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x166
	.byte	0xe
	.4byte	0x14b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x167
	.byte	0xe
	.4byte	0x14b
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x168
	.byte	0xe
	.4byte	0x14b
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x169
	.byte	0x8
	.4byte	0x8d0
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x16a
	.byte	0x7
	.4byte	0x4d
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x16b
	.byte	0xe
	.4byte	0x14b
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x16c
	.byte	0xe
	.4byte	0x14b
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x16d
	.byte	0xe
	.4byte	0x14b
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x16e
	.byte	0xe
	.4byte	0x14b
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x16f
	.byte	0xe
	.4byte	0x14b
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x697
	.4byte	0x8e0
	.uleb128 0x9
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF147
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7da
	.uleb128 0x1a
	.4byte	0x8fc
	.uleb128 0x18
	.4byte	0x52a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x783
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x1a
	.4byte	0x919
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x91f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x90e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x827
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x30a
	.byte	0x18
	.4byte	0x52a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x965
	.uleb128 0x1c
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x691
	.uleb128 0x10
	.4byte	.LASF128
	.2byte	0x165
	.byte	0xa
	.byte	0x17
	.byte	0x2e
	.4byte	0x9cb
	.uleb128 0xe
	.string	"h"
	.byte	0xa
	.byte	0x18
	.byte	0xe
	.4byte	0x9cb
	.byte	0
	.uleb128 0xe
	.string	"t"
	.byte	0xa
	.byte	0x19
	.byte	0xe
	.4byte	0x9db
	.byte	0x40
	.uleb128 0xe
	.string	"f"
	.byte	0xa
	.byte	0x1a
	.byte	0xe
	.4byte	0x9db
	.byte	0x50
	.uleb128 0xe
	.string	"buf"
	.byte	0xa
	.byte	0x1b
	.byte	0xd
	.4byte	0x9eb
	.byte	0x60
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xa
	.byte	0x1c
	.byte	0xc
	.4byte	0x81
	.2byte	0x160
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xa
	.byte	0x1d
	.byte	0xd
	.4byte	0x8d
	.2byte	0x164
	.byte	0
	.uleb128 0x8
	.4byte	0xa5
	.4byte	0x9db
	.uleb128 0x9
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0xa5
	.4byte	0x9eb
	.uleb128 0x9
	.4byte	0x60
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x8d
	.4byte	0x9fb
	.uleb128 0x9
	.4byte	0x60
	.byte	0xff
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0xa
	.byte	0x1e
	.byte	0x3
	.4byte	0x972
	.byte	0x40
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd37
	.uleb128 0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0xd
	.byte	0x14
	.4byte	0x163
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0xd
	.byte	0x21
	.4byte	0x81
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x21
	.string	"in"
	.byte	0x1
	.byte	0xd
	.byte	0x35
	.4byte	0x95f
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x20
	.4byte	.LASF133
	.byte	0x1
	.byte	0xd
	.byte	0x40
	.4byte	0x81
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xd37
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x10
	.byte	0x26
	.4byte	0x9fb
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x24
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.L3
	.uleb128 0x25
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xc73
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.4byte	0x99
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x23
	.4byte	.LASF137
	.byte	0x1
	.byte	0x2c
	.byte	0x11
	.4byte	0xd4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2d
	.byte	0x11
	.4byte	0xd4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0xd81
	.4byte	0xb28
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL19
	.4byte	0xd8d
	.4byte	0xb46
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x120
	.byte	0
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0xd8d
	.4byte	0xb60
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL25
	.4byte	0xd99
	.4byte	0xb80
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0xda5
	.4byte	0xba0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL30
	.4byte	0xda5
	.4byte	0xbc1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL31
	.4byte	0xdb0
	.4byte	0xbe8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0xda5
	.4byte	0xc08
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL38
	.4byte	0xda5
	.4byte	0xc28
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0xdb0
	.4byte	0xc56
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL41
	.4byte	0xda5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0xd5d
	.4byte	.LBI5
	.byte	.LVU12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0xca3
	.uleb128 0x2b
	.4byte	0xd76
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2b
	.4byte	0xd6a
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x27
	.4byte	.LVL4
	.4byte	0xd81
	.4byte	0xcc7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL8
	.4byte	0xd8d
	.4byte	0xce5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x120
	.byte	0
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0xd8d
	.4byte	0xcff
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL12
	.4byte	0xd99
	.4byte	0xd1f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL43
	.4byte	0xdbc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x8
	.4byte	0x8d
	.4byte	0xd4d
	.uleb128 0x9
	.4byte	0x60
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x8d
	.4byte	0xd5d
	.uleb128 0x9
	.4byte	0x60
	.byte	0x3f
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF150
	.byte	0x2
	.byte	0x60
	.byte	0x1
	.byte	0x3
	.4byte	0xd81
	.uleb128 0x2d
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.byte	0x14
	.4byte	0xd37
	.uleb128 0x2d
	.string	"w"
	.byte	0x2
	.byte	0x60
	.byte	0x25
	.4byte	0x99
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xa
	.byte	0x59
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xa
	.byte	0x65
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xa
	.byte	0x6a
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF151
	.4byte	.LASF152
	.byte	0xc
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xa
	.byte	0x4a
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x39
	.uleb128 0xb
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU3
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU102
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x72
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU6
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU40
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU54
	.uleb128 .LVU55
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU72
	.uleb128 .LVU83
	.uleb128 .LVU86
	.uleb128 .LVU98
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU104
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU76
	.uleb128 .LVU102
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU12
	.uleb128 .LVU14
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU8
	.uleb128 .LVU14
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
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
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
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
.LASF142:
	.string	"crypto_generichash_blake2b"
.LASF4:
	.string	"__uint8_t"
.LASF59:
	.string	"_data"
.LASF121:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF9:
	.string	"long long unsigned int"
.LASF58:
	.string	"_lbfsize"
.LASF147:
	.string	"__locale_t"
.LASF119:
	.string	"_mbrtowc_state"
.LASF150:
	.string	"store32_le"
.LASF114:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF7:
	.string	"long long int"
.LASF0:
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
.LASF16:
	.string	"long int"
.LASF131:
	.string	"pout"
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
.LASF129:
	.string	"buflen"
.LASF133:
	.string	"inlen"
.LASF50:
	.string	"_fns"
.LASF5:
	.string	"__uint32_t"
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
.LASF33:
	.string	"__tm"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF6:
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
.LASF140:
	.string	"crypto_generichash_blake2b_update"
.LASF3:
	.string	"short unsigned int"
.LASF78:
	.string	"_atexit0"
.LASF82:
	.string	"_signal_buf"
.LASF76:
	.string	"_asctime_buf"
.LASF107:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF151:
	.string	"memcpy"
.LASF19:
	.string	"wint_t"
.LASF152:
	.string	"__builtin_memcpy"
.LASF93:
	.string	"_lock"
.LASF95:
	.string	"_flags2"
.LASF128:
	.string	"crypto_generichash_blake2b_state"
.LASF148:
	.string	"blake2b_long"
.LASF138:
	.string	"in_buffer"
.LASF86:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF81:
	.string	"_misc"
.LASF123:
	.string	"__sf_fake_stdin"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF146:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
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
.LASF143:
	.string	"sodium_memzero"
.LASF8:
	.string	"__uint64_t"
.LASF110:
	.string	"_freelist"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF1:
	.string	"unsigned char"
.LASF100:
	.string	"_iobs"
.LASF2:
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
.LASF136:
	.string	"toproduce"
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
.LASF149:
	.string	"fail"
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
.LASF103:
	.string	"_mult"
.LASF28:
	.string	"_next"
.LASF144:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"__value"
.LASF46:
	.string	"_fntypes"
.LASF111:
	.string	"_misc_reent"
.LASF130:
	.string	"last_node"
.LASF104:
	.string	"_add"
.LASF27:
	.string	"__ULong"
.LASF117:
	.string	"_getdate_err"
.LASF145:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/blake2b-long.c"
.LASF137:
	.string	"out_buffer"
.LASF134:
	.string	"blake_state"
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
.LASF139:
	.string	"crypto_generichash_blake2b_init"
.LASF90:
	.string	"_nbuf"
.LASF141:
	.string	"crypto_generichash_blake2b_final"
.LASF42:
	.string	"__tm_isdst"
.LASF75:
	.string	"_localtime_buf"
.LASF126:
	.string	"_global_impure_ptr"
.LASF88:
	.string	"_close"
.LASF125:
	.string	"__sf_fake_stderr"
.LASF74:
	.string	"_r48"
.LASF132:
	.string	"outlen"
.LASF115:
	.string	"_mbtowc_state"
.LASF109:
	.string	"_p5s"
.LASF135:
	.string	"outlen_bytes"
.LASF37:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
