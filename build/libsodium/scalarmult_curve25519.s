	.file	"scalarmult_curve25519.c"
	.text
.Ltext0:
	.section	.text.crypto_scalarmult_curve25519,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	crypto_scalarmult_curve25519
	.type	crypto_scalarmult_curve25519, @function
crypto_scalarmult_curve25519:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c"
	.loc 1 22 1 view -0
	.loc 1 22 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 23 5 is_stmt 1 view .LVU2
	.loc 1 24 5 view .LVU3
.LVL1:
	.loc 1 26 5 view .LVU4
	.loc 1 22 1 is_stmt 0 view .LVU5
	mov.n	a5, a2
	.loc 1 26 23 view .LVU6
	l32r	a2, .LC0
.LVL2:
	.loc 1 26 9 view .LVU7
	mov.n	a12, a4
	.loc 1 26 23 view .LVU8
	l32i.n	a2, a2, 0
	.loc 1 26 9 view .LVU9
	mov.n	a11, a3
	l32i.n	a2, a2, 0
	mov.n	a10, a5
	callx8	a2
.LVL3:
	.loc 1 27 16 view .LVU10
	movi.n	a2, -1
	.loc 1 26 8 view .LVU11
	bnez.n	a10, .L1
	.loc 1 29 12 view .LVU12
	mov.n	a9, a10
	movi.n	a8, 0x20
	loop	a8, .L3_LEND
.LVL4:
.L3:
	.loc 1 30 9 is_stmt 1 discriminator 3 view .LVU13
	.loc 1 30 15 is_stmt 0 discriminator 3 view .LVU14
	add.n	a2, a5, a9
	.loc 1 30 11 discriminator 3 view .LVU15
	l8ui	a2, a2, 0
	.loc 1 29 27 discriminator 3 view .LVU16
	addi.n	a9, a9, 1
.LVL5:
	.loc 1 30 11 discriminator 3 view .LVU17
	or	a10, a10, a2
.LVL6:
	.loc 1 29 27 discriminator 3 view .LVU18
	.L3_LEND:
	.loc 1 32 5 is_stmt 1 view .LVU19
	.loc 1 32 22 is_stmt 0 view .LVU20
	addi.n	a10, a10, -1
.LVL7:
	.loc 1 32 16 view .LVU21
	extui	a2, a10, 8, 1
	.loc 1 32 12 view .LVU22
	neg	a2, a2
.LVL8:
.L1:
	.loc 1 33 1 view .LVU23
	retw.n
.LFE0:
	.size	crypto_scalarmult_curve25519, .-crypto_scalarmult_curve25519
	.section	.text.crypto_scalarmult_curve25519_base,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	crypto_scalarmult_curve25519_base
	.type	crypto_scalarmult_curve25519_base, @function
crypto_scalarmult_curve25519_base:
.LVL9:
.LFB1:
	.loc 1 37 1 is_stmt 1 view -0
	.loc 1 37 1 is_stmt 0 view .LVU25
	entry	sp, 32
.LCFI1:
	.loc 1 38 5 is_stmt 1 view .LVU26
	.loc 1 38 26 is_stmt 0 view .LVU27
	l32r	a8, .LC1
	.loc 1 38 12 view .LVU28
	mov.n	a11, a3
	.loc 1 38 26 view .LVU29
	l32i.n	a8, a8, 0
	.loc 1 38 12 view .LVU30
	mov.n	a10, a2
	l32i.n	a8, a8, 4
	callx8	a8
.LVL10:
	.loc 1 39 1 view .LVU31
	mov.n	a2, a10
.LVL11:
	.loc 1 39 1 view .LVU32
	retw.n
.LFE1:
	.size	crypto_scalarmult_curve25519_base, .-crypto_scalarmult_curve25519_base
	.section	.text.crypto_scalarmult_curve25519_bytes,"ax",@progbits
	.align	4
	.global	crypto_scalarmult_curve25519_bytes
	.type	crypto_scalarmult_curve25519_bytes, @function
crypto_scalarmult_curve25519_bytes:
.LFB2:
	.loc 1 43 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 44 5 view .LVU34
	.loc 1 45 1 is_stmt 0 view .LVU35
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_scalarmult_curve25519_bytes, .-crypto_scalarmult_curve25519_bytes
	.section	.text.crypto_scalarmult_curve25519_scalarbytes,"ax",@progbits
	.align	4
	.global	crypto_scalarmult_curve25519_scalarbytes
	.type	crypto_scalarmult_curve25519_scalarbytes, @function
crypto_scalarmult_curve25519_scalarbytes:
.LFB6:
	entry	sp, 32
.LCFI3:
	movi.n	a2, 0x20
	retw.n
.LFE6:
	.size	crypto_scalarmult_curve25519_scalarbytes, .-crypto_scalarmult_curve25519_scalarbytes
	.section	.text._crypto_scalarmult_curve25519_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.literal .LC3, crypto_scalarmult_curve25519_ref10_implementation
	.align	4
	.global	_crypto_scalarmult_curve25519_pick_best_implementation
	.type	_crypto_scalarmult_curve25519_pick_best_implementation, @function
_crypto_scalarmult_curve25519_pick_best_implementation:
.LFB4:
	.loc 1 55 1 is_stmt 1 view -0
	.loc 1 55 1 is_stmt 0 view .LVU37
	entry	sp, 32
.LCFI4:
	.loc 1 59 5 is_stmt 1 view .LVU38
	.loc 1 59 20 is_stmt 0 view .LVU39
	l32r	a8, .LC2
	l32r	a9, .LC3
	.loc 1 67 1 view .LVU40
	movi.n	a2, 0
	.loc 1 59 20 view .LVU41
	s32i.n	a9, a8, 0
	.loc 1 66 5 is_stmt 1 view .LVU42
	.loc 1 67 1 is_stmt 0 view .LVU43
	retw.n
.LFE4:
	.size	_crypto_scalarmult_curve25519_pick_best_implementation, .-_crypto_scalarmult_curve25519_pick_best_implementation
	.section	.data.implementation,"aw"
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.word	crypto_scalarmult_curve25519_ref10_implementation
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
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
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 4 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fe
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF10
	.byte	0xc
	.4byte	.LASF11
	.4byte	.LASF12
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x8
	.byte	0x2
	.byte	0x5
	.byte	0x10
	.4byte	0x6e
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x6
	.byte	0xb
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0xb
	.4byte	0xb9
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x25
	.4byte	0x87
	.uleb128 0x8
	.4byte	0x87
	.uleb128 0x8
	.4byte	0x99
	.uleb128 0x8
	.4byte	0x99
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0xa
	.4byte	0x8d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x94
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6e
	.uleb128 0x7
	.4byte	0x25
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0x87
	.uleb128 0x8
	.4byte	0x99
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x9
	.byte	0x3
	.4byte	0x46
	.uleb128 0xa
	.4byte	0xbf
	.uleb128 0xb
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x9
	.4byte	0x46
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0xf
	.byte	0x3b
	.4byte	0xee
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcb
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	0x2c
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF7
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e
	.uleb128 0x11
	.string	"q"
	.byte	0x1
	.byte	0x24
	.byte	0x32
	.4byte	0x87
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x24
	.byte	0x4a
	.4byte	0x99
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LVL10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF8
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f2
	.uleb128 0x11
	.string	"q"
	.byte	0x1
	.byte	0x14
	.byte	0x2d
	.4byte	0x87
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x14
	.byte	0x45
	.4byte	0x99
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x15
	.byte	0x33
	.4byte	0x99
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x17
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.4byte	0x8d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x16
	.4byte	.LVL3
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x116
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS3:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
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
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU13
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU23
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU23
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"size_t"
.LASF11:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c"
.LASF13:
	.string	"implementation"
.LASF6:
	.string	"crypto_scalarmult_curve25519_implementation"
.LASF12:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF8:
	.string	"crypto_scalarmult_curve25519"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"mult_base"
.LASF16:
	.string	"crypto_scalarmult_curve25519_bytes"
.LASF9:
	.string	"crypto_scalarmult_curve25519_ref10_implementation"
.LASF2:
	.string	"mult"
.LASF1:
	.string	"short unsigned int"
.LASF15:
	.string	"crypto_scalarmult_curve25519_scalarbytes"
.LASF10:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"crypto_scalarmult_curve25519_base"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"_crypto_scalarmult_curve25519_pick_best_implementation"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
