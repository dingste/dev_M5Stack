	.file	"verify.c"
	.text
.Ltext0:
	.section	.text.crypto_verify_16,"ax",@progbits
	.align	4
	.global	crypto_verify_16
	.type	crypto_verify_16, @function
crypto_verify_16:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c"
	.loc 1 11 1 view -0
	.loc 1 11 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 12 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 13 5 view .LVU3
	.loc 1 15 5 view .LVU4
	.loc 1 15 12 is_stmt 0 view .LVU5
	movi.n	a9, 0
	.loc 1 12 19 view .LVU6
	mov.n	a8, a9
	movi.n	a10, 0x10
	loop	a10, .L2_LEND
.LVL2:
.L2:
	.loc 1 16 9 is_stmt 1 discriminator 3 view .LVU7
	.loc 1 16 15 is_stmt 0 discriminator 3 view .LVU8
	add.n	a11, a2, a9
	.loc 1 16 22 discriminator 3 view .LVU9
	add.n	a12, a3, a9
	.loc 1 16 19 discriminator 3 view .LVU10
	l8ui	a11, a11, 0
	l8ui	a12, a12, 0
	.loc 1 15 26 discriminator 3 view .LVU11
	addi.n	a9, a9, 1
.LVL3:
	.loc 1 16 19 discriminator 3 view .LVU12
	xor	a11, a11, a12
	.loc 1 16 11 discriminator 3 view .LVU13
	or	a8, a8, a11
.LVL4:
	.loc 1 15 26 discriminator 3 view .LVU14
	.L2_LEND:
	.loc 1 18 5 is_stmt 1 view .LVU15
	.loc 1 18 21 is_stmt 0 view .LVU16
	addi.n	a2, a8, -1
.LVL5:
	.loc 1 18 15 view .LVU17
	extui	a2, a2, 8, 1
	.loc 1 19 1 view .LVU18
	addi.n	a2, a2, -1
	retw.n
.LFE0:
	.size	crypto_verify_16, .-crypto_verify_16
	.section	.text.crypto_verify_16_bytes,"ax",@progbits
	.align	4
	.global	crypto_verify_16_bytes
	.type	crypto_verify_16_bytes, @function
crypto_verify_16_bytes:
.LFB1:
	.loc 1 23 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 24 5 view .LVU20
	.loc 1 25 1 is_stmt 0 view .LVU21
	movi.n	a2, 0x10
	retw.n
.LFE1:
	.size	crypto_verify_16_bytes, .-crypto_verify_16_bytes
	.section	.text.crypto_verify_32,"ax",@progbits
	.align	4
	.global	crypto_verify_32
	.type	crypto_verify_32, @function
crypto_verify_32:
.LVL6:
.LFB2:
	.loc 1 29 1 is_stmt 1 view -0
	.loc 1 29 1 is_stmt 0 view .LVU23
	entry	sp, 32
.LCFI2:
	.loc 1 30 5 is_stmt 1 view .LVU24
.LVL7:
	.loc 1 31 5 view .LVU25
	.loc 1 33 5 view .LVU26
	.loc 1 33 12 is_stmt 0 view .LVU27
	movi.n	a9, 0
	.loc 1 30 19 view .LVU28
	mov.n	a8, a9
	movi.n	a10, 0x20
	loop	a10, .L6_LEND
.LVL8:
.L6:
	.loc 1 34 9 is_stmt 1 discriminator 3 view .LVU29
	.loc 1 34 15 is_stmt 0 discriminator 3 view .LVU30
	add.n	a11, a2, a9
	.loc 1 34 22 discriminator 3 view .LVU31
	add.n	a12, a3, a9
	.loc 1 34 19 discriminator 3 view .LVU32
	l8ui	a11, a11, 0
	l8ui	a12, a12, 0
	.loc 1 33 26 discriminator 3 view .LVU33
	addi.n	a9, a9, 1
.LVL9:
	.loc 1 34 19 discriminator 3 view .LVU34
	xor	a11, a11, a12
	.loc 1 34 11 discriminator 3 view .LVU35
	or	a8, a8, a11
.LVL10:
	.loc 1 33 26 discriminator 3 view .LVU36
	.L6_LEND:
	.loc 1 36 5 is_stmt 1 view .LVU37
	.loc 1 36 21 is_stmt 0 view .LVU38
	addi.n	a2, a8, -1
.LVL11:
	.loc 1 36 15 view .LVU39
	extui	a2, a2, 8, 1
	.loc 1 37 1 view .LVU40
	addi.n	a2, a2, -1
	retw.n
.LFE2:
	.size	crypto_verify_32, .-crypto_verify_32
	.section	.text.crypto_verify_32_bytes,"ax",@progbits
	.align	4
	.global	crypto_verify_32_bytes
	.type	crypto_verify_32_bytes, @function
crypto_verify_32_bytes:
.LFB3:
	.loc 1 41 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 42 5 view .LVU42
	.loc 1 43 1 is_stmt 0 view .LVU43
	movi.n	a2, 0x20
	retw.n
.LFE3:
	.size	crypto_verify_32_bytes, .-crypto_verify_32_bytes
	.section	.text.crypto_verify_64,"ax",@progbits
	.align	4
	.global	crypto_verify_64
	.type	crypto_verify_64, @function
crypto_verify_64:
.LVL12:
.LFB4:
	.loc 1 47 1 is_stmt 1 view -0
	.loc 1 47 1 is_stmt 0 view .LVU45
	entry	sp, 32
.LCFI4:
	.loc 1 48 5 is_stmt 1 view .LVU46
.LVL13:
	.loc 1 49 5 view .LVU47
	.loc 1 51 5 view .LVU48
	.loc 1 51 12 is_stmt 0 view .LVU49
	movi.n	a9, 0
	.loc 1 48 19 view .LVU50
	mov.n	a8, a9
	movi.n	a10, 0x40
	loop	a10, .L10_LEND
.LVL14:
.L10:
	.loc 1 52 9 is_stmt 1 discriminator 3 view .LVU51
	.loc 1 52 15 is_stmt 0 discriminator 3 view .LVU52
	add.n	a11, a2, a9
	.loc 1 52 22 discriminator 3 view .LVU53
	add.n	a12, a3, a9
	.loc 1 52 19 discriminator 3 view .LVU54
	l8ui	a11, a11, 0
	l8ui	a12, a12, 0
	.loc 1 51 26 discriminator 3 view .LVU55
	addi.n	a9, a9, 1
.LVL15:
	.loc 1 52 19 discriminator 3 view .LVU56
	xor	a11, a11, a12
	.loc 1 52 11 discriminator 3 view .LVU57
	or	a8, a8, a11
.LVL16:
	.loc 1 51 26 discriminator 3 view .LVU58
	.L10_LEND:
	.loc 1 54 5 is_stmt 1 view .LVU59
	.loc 1 54 21 is_stmt 0 view .LVU60
	addi.n	a2, a8, -1
.LVL17:
	.loc 1 54 15 view .LVU61
	extui	a2, a2, 8, 1
	.loc 1 55 1 view .LVU62
	addi.n	a2, a2, -1
	retw.n
.LFE4:
	.size	crypto_verify_64, .-crypto_verify_64
	.section	.text.crypto_verify_64_bytes,"ax",@progbits
	.align	4
	.global	crypto_verify_64_bytes
	.type	crypto_verify_64_bytes, @function
crypto_verify_64_bytes:
.LFB5:
	.loc 1 59 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI5:
	.loc 1 60 5 view .LVU64
	.loc 1 61 1 is_stmt 0 view .LVU65
	movi.n	a2, 0x40
	retw.n
.LFE5:
	.size	crypto_verify_64_bytes, .-crypto_verify_64_bytes
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
	.uleb128 0x20
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF16
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	0x4d
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x3e
	.byte	0x18
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x2e
	.byte	0x27
	.4byte	0xed
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x2e
	.byte	0x3f
	.4byte	0xed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"d"
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.4byte	0x6e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x54
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x166
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x1c
	.byte	0x27
	.4byte	0xed
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x1c
	.byte	0x3f
	.4byte	0xed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"d"
	.byte	0x1
	.byte	0x1e
	.byte	0x13
	.4byte	0x6e
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0xa
	.byte	0x27
	.4byte	0xed
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0xa
	.byte	0x3f
	.4byte	0xed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"d"
	.byte	0x1
	.byte	0xc
	.byte	0x13
	.4byte	0x6e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xd
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS6:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU47
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU49
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU25
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
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
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"crypto_verify_32_bytes"
.LASF7:
	.string	"size_t"
.LASF15:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c"
.LASF17:
	.string	"crypto_verify_16"
.LASF12:
	.string	"crypto_verify_32"
.LASF8:
	.string	"uint_fast16_t"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"crypto_verify_16_bytes"
.LASF9:
	.string	"crypto_verify_64_bytes"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF11:
	.string	"crypto_verify_64"
.LASF4:
	.string	"short int"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
