	.file	"onetimeauth_poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_onetimeauth_poly1305,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305
	.type	crypto_onetimeauth_poly1305, @function
crypto_onetimeauth_poly1305:
.LVL0:
.LFB15:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c"
	.loc 1 19 1 view -0
	.loc 1 19 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 20 5 is_stmt 1 view .LVU2
	.loc 1 20 26 is_stmt 0 view .LVU3
	l32r	a8, .LC0
	.loc 1 20 12 view .LVU4
	mov.n	a14, a6
	.loc 1 20 26 view .LVU5
	l32i.n	a8, a8, 0
	.loc 1 20 12 view .LVU6
	mov.n	a12, a4
	l32i.n	a8, a8, 0
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL1:
	.loc 1 21 1 view .LVU7
	mov.n	a2, a10
.LVL2:
	.loc 1 21 1 view .LVU8
	retw.n
.LFE15:
	.size	crypto_onetimeauth_poly1305, .-crypto_onetimeauth_poly1305
	.section	.text.crypto_onetimeauth_poly1305_verify,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_verify
	.type	crypto_onetimeauth_poly1305_verify, @function
crypto_onetimeauth_poly1305_verify:
.LVL3:
.LFB16:
	.loc 1 28 1 is_stmt 1 view -0
	.loc 1 28 1 is_stmt 0 view .LVU10
	entry	sp, 32
.LCFI1:
	.loc 1 29 5 is_stmt 1 view .LVU11
	.loc 1 29 26 is_stmt 0 view .LVU12
	l32r	a8, .LC1
	.loc 1 29 12 view .LVU13
	mov.n	a14, a6
	.loc 1 29 26 view .LVU14
	l32i.n	a8, a8, 0
	.loc 1 29 12 view .LVU15
	mov.n	a12, a4
	l32i.n	a8, a8, 4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL4:
	.loc 1 30 1 view .LVU16
	mov.n	a2, a10
.LVL5:
	.loc 1 30 1 view .LVU17
	retw.n
.LFE16:
	.size	crypto_onetimeauth_poly1305_verify, .-crypto_onetimeauth_poly1305_verify
	.section	.text.crypto_onetimeauth_poly1305_init,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_init
	.type	crypto_onetimeauth_poly1305_init, @function
crypto_onetimeauth_poly1305_init:
.LVL6:
.LFB17:
	.loc 1 35 1 is_stmt 1 view -0
	.loc 1 35 1 is_stmt 0 view .LVU19
	entry	sp, 32
.LCFI2:
	.loc 1 36 5 is_stmt 1 view .LVU20
	.loc 1 36 26 is_stmt 0 view .LVU21
	l32r	a8, .LC2
	.loc 1 36 12 view .LVU22
	mov.n	a11, a3
	.loc 1 36 26 view .LVU23
	l32i.n	a8, a8, 0
	.loc 1 36 12 view .LVU24
	mov.n	a10, a2
	l32i.n	a8, a8, 8
	callx8	a8
.LVL7:
	.loc 1 37 1 view .LVU25
	mov.n	a2, a10
.LVL8:
	.loc 1 37 1 view .LVU26
	retw.n
.LFE17:
	.size	crypto_onetimeauth_poly1305_init, .-crypto_onetimeauth_poly1305_init
	.section	.text.crypto_onetimeauth_poly1305_update,"ax",@progbits
	.literal_position
	.literal .LC3, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_update
	.type	crypto_onetimeauth_poly1305_update, @function
crypto_onetimeauth_poly1305_update:
.LVL9:
.LFB18:
	.loc 1 43 1 is_stmt 1 view -0
	.loc 1 43 1 is_stmt 0 view .LVU28
	entry	sp, 32
.LCFI3:
	.loc 1 44 5 is_stmt 1 view .LVU29
	.loc 1 44 26 is_stmt 0 view .LVU30
	l32r	a8, .LC3
	.loc 1 44 12 view .LVU31
	mov.n	a12, a4
	.loc 1 44 26 view .LVU32
	l32i.n	a8, a8, 0
	.loc 1 44 12 view .LVU33
	mov.n	a13, a5
	l32i.n	a8, a8, 12
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL10:
	.loc 1 45 1 view .LVU34
	mov.n	a2, a10
.LVL11:
	.loc 1 45 1 view .LVU35
	retw.n
.LFE18:
	.size	crypto_onetimeauth_poly1305_update, .-crypto_onetimeauth_poly1305_update
	.section	.text.crypto_onetimeauth_poly1305_final,"ax",@progbits
	.literal_position
	.literal .LC4, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_final
	.type	crypto_onetimeauth_poly1305_final, @function
crypto_onetimeauth_poly1305_final:
.LVL12:
.LFB19:
	.loc 1 50 1 is_stmt 1 view -0
	.loc 1 50 1 is_stmt 0 view .LVU37
	entry	sp, 32
.LCFI4:
	.loc 1 51 5 is_stmt 1 view .LVU38
	.loc 1 51 26 is_stmt 0 view .LVU39
	l32r	a8, .LC4
	.loc 1 51 12 view .LVU40
	mov.n	a11, a3
	.loc 1 51 26 view .LVU41
	l32i.n	a8, a8, 0
	.loc 1 51 12 view .LVU42
	mov.n	a10, a2
	l32i.n	a8, a8, 16
	callx8	a8
.LVL13:
	.loc 1 52 1 view .LVU43
	mov.n	a2, a10
.LVL14:
	.loc 1 52 1 view .LVU44
	retw.n
.LFE19:
	.size	crypto_onetimeauth_poly1305_final, .-crypto_onetimeauth_poly1305_final
	.section	.text.crypto_onetimeauth_poly1305_bytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_bytes
	.type	crypto_onetimeauth_poly1305_bytes, @function
crypto_onetimeauth_poly1305_bytes:
.LFB20:
	.loc 1 56 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI5:
	.loc 1 57 5 view .LVU46
	.loc 1 58 1 is_stmt 0 view .LVU47
	movi.n	a2, 0x10
	retw.n
.LFE20:
	.size	crypto_onetimeauth_poly1305_bytes, .-crypto_onetimeauth_poly1305_bytes
	.section	.text.crypto_onetimeauth_poly1305_keybytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_keybytes
	.type	crypto_onetimeauth_poly1305_keybytes, @function
crypto_onetimeauth_poly1305_keybytes:
.LFB21:
	.loc 1 62 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI6:
	.loc 1 63 5 view .LVU49
	.loc 1 64 1 is_stmt 0 view .LVU50
	movi.n	a2, 0x20
	retw.n
.LFE21:
	.size	crypto_onetimeauth_poly1305_keybytes, .-crypto_onetimeauth_poly1305_keybytes
	.section	.text.crypto_onetimeauth_poly1305_statebytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_statebytes
	.type	crypto_onetimeauth_poly1305_statebytes, @function
crypto_onetimeauth_poly1305_statebytes:
.LFB22:
	.loc 1 68 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI7:
	.loc 1 69 5 view .LVU52
	.loc 1 70 1 is_stmt 0 view .LVU53
	movi	a2, 0x100
	retw.n
.LFE22:
	.size	crypto_onetimeauth_poly1305_statebytes, .-crypto_onetimeauth_poly1305_statebytes
	.section	.text.crypto_onetimeauth_poly1305_keygen,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_keygen
	.type	crypto_onetimeauth_poly1305_keygen, @function
crypto_onetimeauth_poly1305_keygen:
.LVL15:
.LFB23:
	.loc 1 75 1 is_stmt 1 view -0
	.loc 1 75 1 is_stmt 0 view .LVU55
	entry	sp, 32
.LCFI8:
	.loc 1 76 5 is_stmt 1 view .LVU56
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL16:
	.loc 1 77 1 is_stmt 0 view .LVU57
	retw.n
.LFE23:
	.size	crypto_onetimeauth_poly1305_keygen, .-crypto_onetimeauth_poly1305_keygen
	.section	.text._crypto_onetimeauth_poly1305_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC5, implementation
	.literal .LC6, crypto_onetimeauth_poly1305_donna_implementation
	.align	4
	.global	_crypto_onetimeauth_poly1305_pick_best_implementation
	.type	_crypto_onetimeauth_poly1305_pick_best_implementation, @function
_crypto_onetimeauth_poly1305_pick_best_implementation:
.LFB24:
	.loc 1 81 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI9:
	.loc 1 82 5 view .LVU59
	.loc 1 82 20 is_stmt 0 view .LVU60
	l32r	a8, .LC5
	l32r	a9, .LC6
	.loc 1 89 1 view .LVU61
	movi.n	a2, 0
	.loc 1 82 20 view .LVU62
	s32i.n	a9, a8, 0
	.loc 1 88 5 is_stmt 1 view .LVU63
	.loc 1 89 1 is_stmt 0 view .LVU64
	retw.n
.LFE24:
	.size	_crypto_onetimeauth_poly1305_pick_best_implementation, .-_crypto_onetimeauth_poly1305_pick_best_implementation
	.section	.data.implementation,"aw"
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.word	crypto_onetimeauth_poly1305_donna_implementation
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI2-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI9-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 7 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 8 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd09
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xc
	.4byte	.LASF143
	.4byte	.LASF144
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	0x2c
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x4d
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x46
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x88
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x88
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x4d
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xd6
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xa7
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xd6
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0xe6
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x10a
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x46
	.byte	0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xb4
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe6
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x122
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x18f
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x18f
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x46
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x46
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x46
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x46
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x195
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x135
	.uleb128 0xa
	.4byte	0x129
	.4byte	0x1a5
	.uleb128 0xb
	.4byte	0x4d
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x228
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x46
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x46
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x46
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x46
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x46
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x46
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x46
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x46
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x46
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x26d
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x26d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x26d
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x129
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x129
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x6e
	.4byte	0x27d
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2bf
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2bf
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x46
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2c5
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2dc
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x27d
	.uleb128 0xa
	.4byte	0x2d5
	.4byte	0x2d5
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2db
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x4
	.4byte	0x228
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x30a
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x30a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x46
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x383
	.uleb128 0xf
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x30a
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x46
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x46
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2e2
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x46
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4e7
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x310
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4e7
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x46
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x73a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x73a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x73a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x46
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x64e
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x46
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x46
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x8a2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x8a8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8b9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x46
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x46
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x64e
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8bf
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8c5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x64e
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8d6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2bf
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x27d
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6fb
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x73a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8e2
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x64e
	.byte	0xec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x388
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x630
	.uleb128 0xf
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x30a
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x46
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x46
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2e2
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x46
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4e7
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x6e
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x660
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x68a
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x6ae
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6c8
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2e2
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x30a
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x46
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ce
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6de
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2e2
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x46
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x8f
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x116
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0x10a
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x46
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x46
	.4byte	0x64e
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.uleb128 0x18
	.4byte	0x64e
	.uleb128 0x18
	.4byte	0x46
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x654
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.uleb128 0x3
	.4byte	0x654
	.uleb128 0x10
	.byte	0x4
	.4byte	0x630
	.uleb128 0x17
	.4byte	0x46
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.uleb128 0x18
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x46
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x65b
	.uleb128 0x10
	.byte	0x4
	.4byte	0x666
	.uleb128 0x17
	.4byte	0x9b
	.4byte	0x6ae
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x46
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x690
	.uleb128 0x17
	.4byte	0x46
	.4byte	0x6c8
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6b4
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x6de
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x6ee
	.uleb128 0xb
	.4byte	0x4d
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4ed
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x734
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x734
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x46
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x73a
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6fb
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6ee
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x787
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x787
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x787
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x5b
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x3f
	.4byte	0x797
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7de
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x18f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x46
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x18f
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7de
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x88d
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x64e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0x10a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0x10a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0x10a
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x88d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x46
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0x10a
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0x10a
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0x10a
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0x10a
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0x10a
	.byte	0x48
	.byte	0
	.uleb128 0xa
	.4byte	0x654
	.4byte	0x89d
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF145
	.uleb128 0x10
	.byte	0x4
	.4byte	0x89d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x797
	.uleb128 0x1a
	.4byte	0x8b9
	.uleb128 0x18
	.4byte	0x4e7
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8ae
	.uleb128 0x10
	.byte	0x4
	.4byte	0x740
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x1a
	.4byte	0x8d6
	.uleb128 0x18
	.4byte	0x46
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8dc
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7e4
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x383
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x383
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x383
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4e7
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x64e
	.uleb128 0x11
	.4byte	.LASF122
	.2byte	0x100
	.byte	0x7
	.byte	0x13
	.byte	0x2e
	.4byte	0x944
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0x7
	.byte	0x14
	.byte	0x13
	.4byte	0x944
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x954
	.uleb128 0xb
	.4byte	0x4d
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x7
	.byte	0x15
	.byte	0x3
	.4byte	0x928
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x14
	.byte	0x8
	.byte	0x7
	.byte	0x10
	.4byte	0x9b0
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x8
	.byte	0x8
	.byte	0xb
	.4byte	0x9d4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x8
	.byte	0xa
	.byte	0xb
	.4byte	0x9f8
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x8
	.byte	0xc
	.byte	0xb
	.4byte	0xa18
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x8
	.byte	0xe
	.byte	0xb
	.4byte	0xa37
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x8
	.byte	0x11
	.byte	0xb
	.4byte	0xa51
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.4byte	0x46
	.4byte	0x9ce
	.uleb128 0x18
	.4byte	0x30a
	.uleb128 0x18
	.4byte	0x9ce
	.uleb128 0x18
	.4byte	0x5b
	.uleb128 0x18
	.4byte	0x9ce
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x33
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9b0
	.uleb128 0x17
	.4byte	0x46
	.4byte	0x9f8
	.uleb128 0x18
	.4byte	0x9ce
	.uleb128 0x18
	.4byte	0x9ce
	.uleb128 0x18
	.4byte	0x5b
	.uleb128 0x18
	.4byte	0x9ce
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9da
	.uleb128 0x17
	.4byte	0x46
	.4byte	0xa12
	.uleb128 0x18
	.4byte	0xa12
	.uleb128 0x18
	.4byte	0x9ce
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x954
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9fe
	.uleb128 0x17
	.4byte	0x46
	.4byte	0xa37
	.uleb128 0x18
	.4byte	0xa12
	.uleb128 0x18
	.4byte	0x9ce
	.uleb128 0x18
	.4byte	0x5b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xa1e
	.uleb128 0x17
	.4byte	0x46
	.4byte	0xa51
	.uleb128 0x18
	.4byte	0xa12
	.uleb128 0x18
	.4byte	0x30a
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xa3d
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x8
	.byte	0x13
	.byte	0x3
	.4byte	0x961
	.uleb128 0x3
	.4byte	0xa57
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x9
	.byte	0xa
	.byte	0x5
	.4byte	0x961
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x1
	.byte	0xd
	.byte	0x3a
	.4byte	0xa86
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0x10
	.byte	0x4
	.4byte	0xa63
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x46
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF147
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadb
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.byte	0x4a
	.byte	0x13
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LVL16
	.4byte	0xd00
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
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	0x62
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x62
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x62
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF135
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	0x46
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6c
	.uleb128 0x25
	.4byte	.LASF137
	.byte	0x1
	.byte	0x30
	.byte	0x46
	.4byte	0xa12
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x21
	.string	"out"
	.byte	0x1
	.byte	0x31
	.byte	0x32
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL13
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
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	0x46
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcd
	.uleb128 0x25
	.4byte	.LASF137
	.byte	0x1
	.byte	0x28
	.byte	0x47
	.4byte	0xa12
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x21
	.string	"in"
	.byte	0x1
	.byte	0x29
	.byte	0x39
	.4byte	0x9ce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2a
	.byte	0x37
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x26
	.4byte	.LVL10
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
	.uleb128 0x24
	.4byte	.LASF139
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0x46
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1c
	.uleb128 0x25
	.4byte	.LASF137
	.byte	0x1
	.byte	0x21
	.byte	0x45
	.4byte	0xa12
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.string	"key"
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.4byte	0x9ce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL7
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
	.uleb128 0x24
	.4byte	.LASF140
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	0x46
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8d
	.uleb128 0x28
	.string	"h"
	.byte	0x1
	.byte	0x18
	.byte	0x39
	.4byte	0x9ce
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x21
	.string	"in"
	.byte	0x1
	.byte	0x19
	.byte	0x39
	.4byte	0x9ce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x1
	.byte	0x1a
	.byte	0x37
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.byte	0x1b
	.byte	0x39
	.4byte	0x9ce
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	.LVL4
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
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF141
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	0x46
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd00
	.uleb128 0x28
	.string	"out"
	.byte	0x1
	.byte	0x11
	.byte	0x2c
	.4byte	0x30a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x21
	.string	"in"
	.byte	0x1
	.byte	0x11
	.byte	0x46
	.4byte	0x9ce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.byte	0x12
	.byte	0x4c
	.4byte	0x9ce
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	.LVL1
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
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xa
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
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"_dso_handle"
.LASF124:
	.string	"crypto_onetimeauth_poly1305_implementation"
.LASF48:
	.string	"_size"
.LASF148:
	.string	"randombytes_buf"
.LASF133:
	.string	"crypto_onetimeauth_poly1305_keybytes"
.LASF7:
	.string	"size_t"
.LASF95:
	.string	"_rand48"
.LASF60:
	.string	"_emergency"
.LASF122:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF53:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF145:
	.string	"__locale_t"
.LASF113:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_wctomb_state"
.LASF28:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF83:
	.string	"_ubuf"
.LASF47:
	.string	"_base"
.LASF30:
	.string	"__tm_hour"
.LASF74:
	.string	"__sf"
.LASF37:
	.string	"_on_exit_args"
.LASF78:
	.string	"_cookie"
.LASF73:
	.string	"__sglue"
.LASF137:
	.string	"state"
.LASF10:
	.string	"long int"
.LASF100:
	.string	"_mprec"
.LASF50:
	.string	"_flags"
.LASF41:
	.string	"_is_cxa"
.LASF56:
	.string	"_stdin"
.LASF131:
	.string	"_crypto_onetimeauth_poly1305_pick_best_implementation"
.LASF85:
	.string	"_blksize"
.LASF8:
	.string	"_lock_t"
.LASF67:
	.string	"_cvtbuf"
.LASF86:
	.string	"_offset"
.LASF135:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF106:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbrlen_state"
.LASF38:
	.string	"_fnargs"
.LASF136:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF138:
	.string	"inlen"
.LASF44:
	.string	"_fns"
.LASF24:
	.string	"_sign"
.LASF19:
	.string	"_flock_t"
.LASF58:
	.string	"_stderr"
.LASF26:
	.string	"_Bigint"
.LASF65:
	.string	"_gamma_signgam"
.LASF79:
	.string	"_read"
.LASF102:
	.string	"_result_k"
.LASF27:
	.string	"__tm"
.LASF45:
	.string	"_on_exit_args_ptr"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"__wchb"
.LASF57:
	.string	"_stdout"
.LASF66:
	.string	"_cvtlen"
.LASF20:
	.string	"long unsigned int"
.LASF49:
	.string	"__sFILE_fake"
.LASF93:
	.string	"_niobs"
.LASF3:
	.string	"short unsigned int"
.LASF72:
	.string	"_atexit0"
.LASF76:
	.string	"_signal_buf"
.LASF70:
	.string	"_asctime_buf"
.LASF101:
	.string	"_result"
.LASF14:
	.string	"__wch"
.LASF128:
	.string	"onetimeauth_update"
.LASF13:
	.string	"wint_t"
.LASF134:
	.string	"crypto_onetimeauth_poly1305_bytes"
.LASF87:
	.string	"_lock"
.LASF89:
	.string	"_flags2"
.LASF129:
	.string	"onetimeauth_final"
.LASF143:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c"
.LASF80:
	.string	"_write"
.LASF33:
	.string	"__tm_year"
.LASF75:
	.string	"_misc"
.LASF139:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF144:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF125:
	.string	"onetimeauth"
.LASF32:
	.string	"__tm_mon"
.LASF42:
	.string	"_atexit"
.LASF121:
	.string	"suboptarg"
.LASF61:
	.string	"__sdidinit"
.LASF11:
	.string	"_off_t"
.LASF132:
	.string	"crypto_onetimeauth_poly1305_statebytes"
.LASF104:
	.string	"_freelist"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF1:
	.string	"unsigned char"
.LASF94:
	.string	"_iobs"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"__tm_yday"
.LASF46:
	.string	"__sbuf"
.LASF91:
	.string	"__FILE"
.LASF18:
	.string	"_mbstate_t"
.LASF130:
	.string	"crypto_onetimeauth_poly1305_donna_implementation"
.LASF77:
	.string	"__sFILE"
.LASF140:
	.string	"crypto_onetimeauth_poly1305_verify"
.LASF88:
	.string	"_mbstate"
.LASF99:
	.string	"_rand_next"
.LASF141:
	.string	"crypto_onetimeauth_poly1305"
.LASF107:
	.string	"_mblen_state"
.LASF59:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF63:
	.string	"_locale"
.LASF64:
	.string	"__cleanup"
.LASF62:
	.string	"_unspecified_locale_info"
.LASF23:
	.string	"_maxwds"
.LASF54:
	.string	"_reent"
.LASF96:
	.string	"_seed"
.LASF16:
	.string	"__count"
.LASF17:
	.string	"__value"
.LASF81:
	.string	"_seek"
.LASF12:
	.string	"_fpos_t"
.LASF126:
	.string	"onetimeauth_verify"
.LASF55:
	.string	"_errno"
.LASF90:
	.string	"char"
.LASF29:
	.string	"__tm_min"
.LASF97:
	.string	"_mult"
.LASF22:
	.string	"_next"
.LASF142:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF40:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF98:
	.string	"_add"
.LASF21:
	.string	"__ULong"
.LASF123:
	.string	"opaque"
.LASF111:
	.string	"_getdate_err"
.LASF120:
	.string	"_global_impure_ptr"
.LASF147:
	.string	"crypto_onetimeauth_poly1305_keygen"
.LASF51:
	.string	"_file"
.LASF25:
	.string	"_wds"
.LASF34:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF110:
	.string	"_l64a_buf"
.LASF71:
	.string	"_sig_func"
.LASF146:
	.string	"implementation"
.LASF84:
	.string	"_nbuf"
.LASF36:
	.string	"__tm_isdst"
.LASF69:
	.string	"_localtime_buf"
.LASF82:
	.string	"_close"
.LASF119:
	.string	"__sf_fake_stderr"
.LASF68:
	.string	"_r48"
.LASF109:
	.string	"_mbtowc_state"
.LASF103:
	.string	"_p5s"
.LASF31:
	.string	"__tm_mday"
.LASF127:
	.string	"onetimeauth_init"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
