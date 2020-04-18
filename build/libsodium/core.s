	.file	"core.c"
	.text
.Ltext0:
	.section	.text.sodium_init,"ax",@progbits
	.literal_position
	.literal .LC0, initialized
	.align	4
	.global	sodium_init
	.type	sodium_init, @function
sodium_init:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/core.c"
	.loc 1 41 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 42 5 view .LVU1
	.loc 1 162 5 view .LVU2
	.loc 1 45 5 view .LVU3
	.loc 1 45 21 is_stmt 0 view .LVU4
	l32r	a4, .LC0
	.loc 1 49 16 view .LVU5
	movi.n	a2, 1
	.loc 1 45 21 view .LVU6
	memw
	l32i.n	a3, a4, 0
	.loc 1 45 8 view .LVU7
	bnez.n	a3, .L1
	.loc 1 51 5 is_stmt 1 view .LVU8
	call8	_sodium_runtime_get_cpu_features
.LVL0:
	.loc 1 52 5 view .LVU9
	call8	randombytes_stir
.LVL1:
	.loc 1 53 5 view .LVU10
	call8	_sodium_alloc_init
.LVL2:
	.loc 1 54 5 view .LVU11
	call8	_crypto_pwhash_argon2i_pick_best_implementation
.LVL3:
	.loc 1 55 5 view .LVU12
	call8	_crypto_generichash_blake2b_pick_best_implementation
.LVL4:
	.loc 1 56 5 view .LVU13
	call8	_crypto_onetimeauth_poly1305_pick_best_implementation
.LVL5:
	.loc 1 57 5 view .LVU14
	call8	_crypto_scalarmult_curve25519_pick_best_implementation
.LVL6:
	.loc 1 58 5 view .LVU15
	call8	_crypto_stream_chacha20_pick_best_implementation
.LVL7:
	.loc 1 59 5 view .LVU16
	call8	_crypto_stream_salsa20_pick_best_implementation
.LVL8:
	.loc 1 60 5 view .LVU17
	.loc 1 60 17 is_stmt 0 view .LVU18
	memw
	s32i.n	a2, a4, 0
	.loc 1 61 5 is_stmt 1 view .LVU19
	.loc 1 168 5 view .LVU20
	.loc 1 64 5 view .LVU21
	.loc 1 64 12 is_stmt 0 view .LVU22
	mov.n	a2, a3
.L1:
	.loc 1 65 1 view .LVU23
	retw.n
.LFE3:
	.size	sodium_init, .-sodium_init
	.section	.text.sodium_crit_enter,"ax",@progbits
	.align	4
	.global	sodium_crit_enter
	.type	sodium_crit_enter, @function
sodium_crit_enter:
.LFB4:
	.loc 1 161 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 162 5 view .LVU25
	.loc 1 163 1 is_stmt 0 view .LVU26
	movi.n	a2, 0
	retw.n
.LFE4:
	.size	sodium_crit_enter, .-sodium_crit_enter
	.section	.text.sodium_crit_leave,"ax",@progbits
	.align	4
	.global	sodium_crit_leave
	.type	sodium_crit_leave, @function
sodium_crit_leave:
.LFB7:
	entry	sp, 32
.LCFI2:
	movi.n	a2, 0
	retw.n
.LFE7:
	.size	sodium_crit_leave, .-sodium_crit_leave
	.section	.bss.initialized,"aw",@nobits
	.align	4
	.type	initialized, @object
	.size	initialized, 4
initialized:
	.zero	4
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/time.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/runtime.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_argon2i.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h"
	.file 15 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_chacha20.h"
	.file 16 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0xc
	.4byte	.LASF136
	.4byte	.LASF137
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	0x25
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc
	.byte	0x11
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x72
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x31
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.byte	0x3
	.4byte	0xc8
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.byte	0xc
	.4byte	0x99
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa9
	.byte	0x13
	.4byte	0xc8
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0xd8
	.uleb128 0xa
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x3
	.byte	0xa3
	.byte	0x9
	.4byte	0xfc
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x3
	.byte	0xaa
	.byte	0x5
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0xab
	.byte	0x3
	.4byte	0xd8
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaf
	.byte	0x1b
	.4byte	0x6e
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xe
	.byte	0x4
	.4byte	0x123
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0xf
	.4byte	0x123
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x116
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x195
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x195
	.byte	0
	.uleb128 0x11
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x11
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x19b
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x13b
	.uleb128 0x9
	.4byte	0x12f
	.4byte	0x1ab
	.uleb128 0xa
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x22e
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x273
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x273
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x273
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x12f
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x12f
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x114
	.4byte	0x283
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2c5
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2c5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2cb
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2e2
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x283
	.uleb128 0x9
	.4byte	0x2db
	.4byte	0x2db
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2e1
	.uleb128 0x14
	.uleb128 0xe
	.byte	0x4
	.4byte	0x22e
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x310
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x310
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x46
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x389
	.uleb128 0x11
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x310
	.byte	0
	.uleb128 0x11
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x11
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x11
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2e8
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4ed
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	0x316
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4ed
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x72e
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x72e
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x72e
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x11d
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x896
	.byte	0x20
	.uleb128 0x17
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x89c
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8ad
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x11d
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8b3
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8b9
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x11d
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8ca
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2c5
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x283
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6ef
	.byte	0xd8
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x72e
	.byte	0xe4
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8d6
	.byte	0xe8
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x11d
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x38e
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x636
	.uleb128 0x11
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x310
	.byte	0
	.uleb128 0x11
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x11
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x11
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2e8
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4ed
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x114
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x654
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x67e
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x6a2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6bc
	.byte	0x30
	.uleb128 0x11
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2e8
	.byte	0x34
	.uleb128 0x11
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x310
	.byte	0x3c
	.uleb128 0x11
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6c2
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6d2
	.byte	0x47
	.uleb128 0x11
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2e8
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x81
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x108
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0xfc
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.4byte	0x25
	.4byte	0x654
	.uleb128 0x19
	.4byte	0x4ed
	.uleb128 0x19
	.4byte	0x114
	.uleb128 0x19
	.4byte	0x11d
	.uleb128 0x19
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x636
	.uleb128 0x18
	.4byte	0x25
	.4byte	0x678
	.uleb128 0x19
	.4byte	0x4ed
	.uleb128 0x19
	.4byte	0x114
	.uleb128 0x19
	.4byte	0x678
	.uleb128 0x19
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x65a
	.uleb128 0x18
	.4byte	0x8d
	.4byte	0x6a2
	.uleb128 0x19
	.4byte	0x4ed
	.uleb128 0x19
	.4byte	0x114
	.uleb128 0x19
	.4byte	0x8d
	.uleb128 0x19
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x25
	.4byte	0x6bc
	.uleb128 0x19
	.4byte	0x4ed
	.uleb128 0x19
	.4byte	0x114
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a8
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x6d2
	.uleb128 0xa
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x6e2
	.uleb128 0xa
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4f3
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x728
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x728
	.byte	0
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x72e
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ef
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6e2
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x77b
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x77b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x77b
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x38
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x5b
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x78b
	.uleb128 0xa
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7d2
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x195
	.byte	0
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x195
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7d2
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x195
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x881
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x11d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0xfc
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0xfc
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0xfc
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x881
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0xfc
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0xfc
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0xfc
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0xfc
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0xfc
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x123
	.4byte	0x891
	.uleb128 0xa
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF138
	.uleb128 0xe
	.byte	0x4
	.4byte	0x891
	.uleb128 0xe
	.byte	0x4
	.4byte	0x78b
	.uleb128 0x1b
	.4byte	0x8ad
	.uleb128 0x19
	.4byte	0x4ed
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8a2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x734
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ab
	.uleb128 0x1b
	.4byte	0x8ca
	.uleb128 0x19
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8bf
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7d8
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x389
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x389
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x389
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4ed
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x6
	.byte	0x9a
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x6
	.byte	0x9b
	.byte	0xc
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x11d
	.4byte	0x938
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x6
	.byte	0x9e
	.byte	0xe
	.4byte	0x928
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x11d
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x25
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	initialized
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e8
	.uleb128 0x21
	.4byte	.LVL0
	.4byte	0x9f7
	.uleb128 0x21
	.4byte	.LVL1
	.4byte	0xa03
	.uleb128 0x21
	.4byte	.LVL2
	.4byte	0xa0f
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0xa1b
	.uleb128 0x21
	.4byte	.LVL4
	.4byte	0xa27
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0xa33
	.uleb128 0x21
	.4byte	.LVL6
	.4byte	0xa3f
	.uleb128 0x21
	.4byte	.LVL7
	.4byte	0xa4b
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0xa57
	.byte	0
	.uleb128 0x22
	.4byte	0x96f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x8
	.byte	0x28
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x9
	.byte	0x2e
	.byte	0x6
	.uleb128 0x23
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xa
	.byte	0x7d
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xb
	.byte	0x72
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xc
	.byte	0x73
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xd
	.byte	0x41
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xe
	.byte	0x1e
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xf
	.byte	0x51
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x10
	.byte	0x33
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"long int"
.LASF75:
	.string	"_misc"
.LASF7:
	.string	"_lock_t"
.LASF37:
	.string	"_on_exit_args"
.LASF80:
	.string	"_write"
.LASF131:
	.string	"_crypto_onetimeauth_poly1305_pick_best_implementation"
.LASF121:
	.string	"_daylight"
.LASF129:
	.string	"_crypto_pwhash_argon2i_pick_best_implementation"
.LASF107:
	.string	"_wctomb_state"
.LASF68:
	.string	"_r48"
.LASF76:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF50:
	.string	"_flags"
.LASF55:
	.string	"_errno"
.LASF117:
	.string	"__sf_fake_stdout"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF79:
	.string	"_read"
.LASF111:
	.string	"_mbrlen_state"
.LASF57:
	.string	"_stdout"
.LASF11:
	.string	"_fpos_t"
.LASF44:
	.string	"_fns"
.LASF78:
	.string	"_cookie"
.LASF26:
	.string	"_Bigint"
.LASF34:
	.string	"__tm_wday"
.LASF100:
	.string	"_result"
.LASF30:
	.string	"__tm_hour"
.LASF15:
	.string	"__count"
.LASF124:
	.string	"sodium_crit_leave"
.LASF29:
	.string	"__tm_min"
.LASF130:
	.string	"_crypto_generichash_blake2b_pick_best_implementation"
.LASF74:
	.string	"__sf"
.LASF94:
	.string	"_rand48"
.LASF101:
	.string	"_result_k"
.LASF6:
	.string	"long long unsigned int"
.LASF70:
	.string	"_asctime_buf"
.LASF77:
	.string	"__sFILE"
.LASF25:
	.string	"_wds"
.LASF127:
	.string	"randombytes_stir"
.LASF90:
	.string	"__FILE"
.LASF86:
	.string	"_offset"
.LASF83:
	.string	"_ubuf"
.LASF139:
	.string	"initialized"
.LASF60:
	.string	"_emergency"
.LASF28:
	.string	"__tm_sec"
.LASF123:
	.string	"suboptarg"
.LASF35:
	.string	"__tm_yday"
.LASF59:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF22:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF122:
	.string	"_tzname"
.LASF16:
	.string	"__value"
.LASF102:
	.string	"_p5s"
.LASF125:
	.string	"sodium_crit_enter"
.LASF140:
	.string	"sodium_init"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF106:
	.string	"_mblen_state"
.LASF20:
	.string	"char"
.LASF31:
	.string	"__tm_mday"
.LASF71:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF132:
	.string	"_crypto_scalarmult_curve25519_pick_best_implementation"
.LASF18:
	.string	"_flock_t"
.LASF128:
	.string	"_sodium_alloc_init"
.LASF13:
	.string	"__wch"
.LASF93:
	.string	"_iobs"
.LASF45:
	.string	"_on_exit_args_ptr"
.LASF82:
	.string	"_close"
.LASF61:
	.string	"__sdidinit"
.LASF49:
	.string	"__sFILE_fake"
.LASF120:
	.string	"_timezone"
.LASF134:
	.string	"_crypto_stream_salsa20_pick_best_implementation"
.LASF56:
	.string	"_stdin"
.LASF65:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF47:
	.string	"_base"
.LASF103:
	.string	"_freelist"
.LASF96:
	.string	"_mult"
.LASF21:
	.string	"__ULong"
.LASF114:
	.string	"_wcrtomb_state"
.LASF51:
	.string	"_file"
.LASF133:
	.string	"_crypto_stream_chacha20_pick_best_implementation"
.LASF64:
	.string	"__cleanup"
.LASF17:
	.string	"_mbstate_t"
.LASF99:
	.string	"_mprec"
.LASF36:
	.string	"__tm_isdst"
.LASF32:
	.string	"__tm_mon"
.LASF72:
	.string	"_atexit0"
.LASF42:
	.string	"_atexit"
.LASF88:
	.string	"_mbstate"
.LASF4:
	.string	"short int"
.LASF136:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/core.c"
.LASF24:
	.string	"_sign"
.LASF126:
	.string	"_sodium_runtime_get_cpu_features"
.LASF53:
	.string	"_data"
.LASF14:
	.string	"__wchb"
.LASF119:
	.string	"_global_impure_ptr"
.LASF33:
	.string	"__tm_year"
.LASF104:
	.string	"_misc_reent"
.LASF69:
	.string	"_localtime_buf"
.LASF66:
	.string	"_cvtlen"
.LASF23:
	.string	"_maxwds"
.LASF109:
	.string	"_l64a_buf"
.LASF85:
	.string	"_blksize"
.LASF27:
	.string	"__tm"
.LASF87:
	.string	"_lock"
.LASF19:
	.string	"long unsigned int"
.LASF92:
	.string	"_niobs"
.LASF135:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"_dso_handle"
.LASF67:
	.string	"_cvtbuf"
.LASF3:
	.string	"unsigned char"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF46:
	.string	"__sbuf"
.LASF91:
	.string	"_glue"
.LASF73:
	.string	"__sglue"
.LASF105:
	.string	"_strtok_last"
.LASF108:
	.string	"_mbtowc_state"
.LASF137:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF63:
	.string	"_locale"
.LASF38:
	.string	"_fnargs"
.LASF2:
	.string	"signed char"
.LASF54:
	.string	"_reent"
.LASF1:
	.string	"short unsigned int"
.LASF40:
	.string	"_fntypes"
.LASF48:
	.string	"_size"
.LASF10:
	.string	"_off_t"
.LASF84:
	.string	"_nbuf"
.LASF62:
	.string	"_unspecified_locale_info"
.LASF118:
	.string	"__sf_fake_stderr"
.LASF89:
	.string	"_flags2"
.LASF41:
	.string	"_is_cxa"
.LASF95:
	.string	"_seed"
.LASF98:
	.string	"_rand_next"
.LASF138:
	.string	"__locale_t"
.LASF81:
	.string	"_seek"
.LASF58:
	.string	"_stderr"
.LASF12:
	.string	"wint_t"
.LASF116:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
