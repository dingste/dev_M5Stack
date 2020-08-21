	.file	"verify.c"
	.text
.Ltext0:
	.section	.text.crypto_verify_16,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_verify_16
	.type	crypto_verify_16, @function
crypto_verify_16:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c"
	.loc 1 11 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 12 0
	movi.n	a8, 0
	movi.n	a10, 0x10
	loop	a10, .L2_LEND
.LVL2:
.L2:
	.loc 1 16 0 discriminator 3
	l8ui	a11, a2, 0
	l8ui	a9, a3, 0
	addi.n	a2, a2, 1
.LVL3:
	xor	a9, a11, a9
	extui	a9, a9, 0, 8
	or	a8, a8, a9
.LVL4:
	addi.n	a3, a3, 1
	.L2_LEND:
	.loc 1 18 0
	addi.n	a2, a8, -1
	extui	a2, a2, 8, 1
	.loc 1 19 0
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
	.loc 1 23 0
	entry	sp, 32
.LCFI1:
	.loc 1 25 0
	movi.n	a2, 0x10
	retw.n
.LFE1:
	.size	crypto_verify_16_bytes, .-crypto_verify_16_bytes
	.section	.text.crypto_verify_32,"ax",@progbits
	.align	4
	.global	crypto_verify_32
	.type	crypto_verify_32, @function
crypto_verify_32:
.LFB2:
	.loc 1 29 0
.LVL5:
	entry	sp, 32
.LCFI2:
.LVL6:
	.loc 1 30 0
	movi.n	a8, 0
	movi.n	a10, 0x20
	loop	a10, .L6_LEND
.LVL7:
.L6:
	.loc 1 34 0 discriminator 3
	l8ui	a11, a2, 0
	l8ui	a9, a3, 0
	addi.n	a2, a2, 1
.LVL8:
	xor	a9, a11, a9
	extui	a9, a9, 0, 8
	or	a8, a8, a9
.LVL9:
	addi.n	a3, a3, 1
	.L6_LEND:
	.loc 1 36 0
	addi.n	a2, a8, -1
	extui	a2, a2, 8, 1
	.loc 1 37 0
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
	.loc 1 41 0
	entry	sp, 32
.LCFI3:
	.loc 1 43 0
	movi.n	a2, 0x20
	retw.n
.LFE3:
	.size	crypto_verify_32_bytes, .-crypto_verify_32_bytes
	.section	.text.crypto_verify_64,"ax",@progbits
	.align	4
	.global	crypto_verify_64
	.type	crypto_verify_64, @function
crypto_verify_64:
.LFB4:
	.loc 1 47 0
.LVL10:
	entry	sp, 32
.LCFI4:
.LVL11:
	.loc 1 48 0
	movi.n	a8, 0
	movi.n	a10, 0x40
	loop	a10, .L10_LEND
.LVL12:
.L10:
	.loc 1 52 0 discriminator 3
	l8ui	a11, a2, 0
	l8ui	a9, a3, 0
	addi.n	a2, a2, 1
.LVL13:
	xor	a9, a11, a9
	extui	a9, a9, 0, 8
	or	a8, a8, a9
.LVL14:
	addi.n	a3, a3, 1
	.L10_LEND:
	.loc 1 54 0
	addi.n	a2, a8, -1
	extui	a2, a2, 8, 1
	.loc 1 55 0
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
	.loc 1 59 0
	entry	sp, 32
.LCFI5:
	.loc 1 61 0
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xc
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
	.4byte	0x33
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x55
	.4byte	0x33
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x1
	.byte	0xa
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0xa
	.4byte	0xbd
	.4byte	.LLST0
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0xa
	.4byte	0xbd
	.4byte	.LLST1
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0xc
	.4byte	0x64
	.4byte	.LLST2
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xd
	.4byte	0x21
	.4byte	.LLST3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x9
	.4byte	0x48
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x16
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1c
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x1c
	.4byte	0xbd
	.4byte	.LLST4
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0x1c
	.4byte	0xbd
	.4byte	.LLST5
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0x1e
	.4byte	0x64
	.4byte	.LLST6
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.4byte	0x21
	.4byte	.LLST7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x28
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2e
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x2e
	.4byte	0xbd
	.4byte	.LLST8
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0x2e
	.4byte	0xbd
	.4byte	.LLST9
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0x30
	.4byte	0x64
	.4byte	.LLST10
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x31
	.4byte	0x21
	.4byte	.LLST11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3a
	.4byte	0x28
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
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
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
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
.LASF12:
	.string	"crypto_verify_32_bytes"
.LASF7:
	.string	"size_t"
.LASF9:
	.string	"crypto_verify_16"
.LASF10:
	.string	"crypto_verify_32"
.LASF15:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"short unsigned int"
.LASF11:
	.string	"crypto_verify_16_bytes"
.LASF16:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c"
.LASF14:
	.string	"crypto_verify_64_bytes"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF8:
	.string	"uint_fast16_t"
.LASF13:
	.string	"crypto_verify_64"
.LASF4:
	.string	"short int"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
