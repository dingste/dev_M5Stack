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
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/core.c"
	.loc 1 41 0
	entry	sp, 32
.LCFI0:
	.loc 1 45 0
	l32r	a3, .LC0
	memw
	l32i.n	a2, a3, 0
	bnez.n	a2, .L3
	.loc 1 51 0
	call8	_sodium_runtime_get_cpu_features
.LVL0:
	.loc 1 52 0
	call8	randombytes_stir
.LVL1:
	.loc 1 53 0
	call8	_sodium_alloc_init
.LVL2:
	.loc 1 54 0
	call8	_crypto_pwhash_argon2i_pick_best_implementation
.LVL3:
	.loc 1 55 0
	call8	_crypto_generichash_blake2b_pick_best_implementation
.LVL4:
	.loc 1 56 0
	call8	_crypto_onetimeauth_poly1305_pick_best_implementation
.LVL5:
	.loc 1 57 0
	call8	_crypto_scalarmult_curve25519_pick_best_implementation
.LVL6:
	.loc 1 58 0
	call8	_crypto_stream_chacha20_pick_best_implementation
.LVL7:
	.loc 1 59 0
	call8	_crypto_stream_salsa20_pick_best_implementation
.LVL8:
	.loc 1 60 0
	movi.n	a8, 1
	memw
	s32i.n	a8, a3, 0
	.loc 1 64 0
	retw.n
.L3:
	.loc 1 49 0
	movi.n	a2, 1
	.loc 1 65 0
	retw.n
.LFE0:
	.size	sodium_init, .-sodium_init
	.section	.text.sodium_crit_enter,"ax",@progbits
	.align	4
	.global	sodium_crit_enter
	.type	sodium_crit_enter, @function
sodium_crit_enter:
.LFB4:
	entry	sp, 32
.LCFI1:
	movi.n	a2, 0
	retw.n
.LFE4:
	.size	sodium_crit_enter, .-sodium_crit_enter
	.section	.text.sodium_crit_leave,"ax",@progbits
	.align	4
	.global	sodium_crit_leave
	.type	sodium_crit_leave, @function
sodium_crit_leave:
.LFB2:
	.loc 1 167 0
	.loc 1 167 0
	entry	sp, 32
.LCFI2:
	.loc 1 169 0
	movi.n	a2, 0
	retw.n
.LFE2:
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/runtime.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_argon2i.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_chacha20.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x181
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
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
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0xa0
	.4byte	0x25
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x1
	.byte	0xa6
	.4byte	0x25
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc
	.uleb128 0x6
	.4byte	.LVL0
	.4byte	0x121
	.uleb128 0x6
	.4byte	.LVL1
	.4byte	0x12c
	.uleb128 0x6
	.4byte	.LVL2
	.4byte	0x137
	.uleb128 0x6
	.4byte	.LVL3
	.4byte	0x142
	.uleb128 0x6
	.4byte	.LVL4
	.4byte	0x14d
	.uleb128 0x6
	.4byte	.LVL5
	.4byte	0x158
	.uleb128 0x6
	.4byte	.LVL6
	.4byte	0x163
	.uleb128 0x6
	.4byte	.LVL7
	.4byte	0x16e
	.uleb128 0x6
	.4byte	.LVL8
	.4byte	0x179
	.byte	0
	.uleb128 0x7
	.4byte	0x85
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x25
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	initialized
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0xa
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x2
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.uleb128 0xa
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7d
	.uleb128 0xa
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x5
	.byte	0x72
	.uleb128 0xa
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x6
	.byte	0x73
	.uleb128 0xa
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x7
	.byte	0x41
	.uleb128 0xa
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x8
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x9
	.byte	0x51
	.uleb128 0xa
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0xa
	.byte	0x33
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"_crypto_pwhash_argon2i_pick_best_implementation"
.LASF26:
	.string	"initialized"
.LASF21:
	.string	"_crypto_stream_salsa20_pick_best_implementation"
.LASF11:
	.string	"sodium_crit_enter"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"_crypto_generichash_blake2b_pick_best_implementation"
.LASF14:
	.string	"randombytes_stir"
.LASF12:
	.string	"sodium_crit_leave"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF19:
	.string	"_crypto_scalarmult_curve25519_pick_best_implementation"
.LASF13:
	.string	"_sodium_runtime_get_cpu_features"
.LASF7:
	.string	"long int"
.LASF9:
	.string	"long unsigned int"
.LASF23:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/core.c"
.LASF18:
	.string	"_crypto_onetimeauth_poly1305_pick_best_implementation"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"sodium_init"
.LASF20:
	.string	"_crypto_stream_chacha20_pick_best_implementation"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"_sodium_alloc_init"
.LASF24:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/libsodium"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
