	.file	"crypto_kdf.c"
	.text
.Ltext0:
	.section	.rodata.crypto_kdf_primitive.str1.1,"aMS",@progbits,1
.LC0:
	.string	"blake2b"
	.section	.text.crypto_kdf_primitive,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_kdf_primitive
	.type	crypto_kdf_primitive, @function
crypto_kdf_primitive:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_kdf/crypto_kdf.c"
	.loc 1 7 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 8 5 view .LVU1
	.loc 1 9 1 is_stmt 0 view .LVU2
	l32r	a2, .LC1
	retw.n
.LFE0:
	.size	crypto_kdf_primitive, .-crypto_kdf_primitive
	.section	.text.crypto_kdf_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_kdf_bytes_min
	.type	crypto_kdf_bytes_min, @function
crypto_kdf_bytes_min:
.LFB1:
	.loc 1 13 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 14 5 view .LVU4
	.loc 1 15 1 is_stmt 0 view .LVU5
	movi.n	a2, 0x10
	retw.n
.LFE1:
	.size	crypto_kdf_bytes_min, .-crypto_kdf_bytes_min
	.section	.text.crypto_kdf_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_kdf_bytes_max
	.type	crypto_kdf_bytes_max, @function
crypto_kdf_bytes_max:
.LFB2:
	.loc 1 19 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 20 5 view .LVU7
	.loc 1 21 1 is_stmt 0 view .LVU8
	movi.n	a2, 0x40
	retw.n
.LFE2:
	.size	crypto_kdf_bytes_max, .-crypto_kdf_bytes_max
	.section	.text.crypto_kdf_contextbytes,"ax",@progbits
	.align	4
	.global	crypto_kdf_contextbytes
	.type	crypto_kdf_contextbytes, @function
crypto_kdf_contextbytes:
.LFB3:
	.loc 1 25 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 26 5 view .LVU10
	.loc 1 27 1 is_stmt 0 view .LVU11
	movi.n	a2, 8
	retw.n
.LFE3:
	.size	crypto_kdf_contextbytes, .-crypto_kdf_contextbytes
	.section	.text.crypto_kdf_keybytes,"ax",@progbits
	.align	4
	.global	crypto_kdf_keybytes
	.type	crypto_kdf_keybytes, @function
crypto_kdf_keybytes:
.LFB4:
	.loc 1 31 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 32 5 view .LVU13
	.loc 1 33 1 is_stmt 0 view .LVU14
	movi.n	a2, 0x20
	retw.n
.LFE4:
	.size	crypto_kdf_keybytes, .-crypto_kdf_keybytes
	.section	.text.crypto_kdf_derive_from_key,"ax",@progbits
	.align	4
	.global	crypto_kdf_derive_from_key
	.type	crypto_kdf_derive_from_key, @function
crypto_kdf_derive_from_key:
.LVL0:
.LFB5:
	.loc 1 40 1 is_stmt 1 view -0
	.loc 1 40 1 is_stmt 0 view .LVU16
	entry	sp, 32
.LCFI5:
	.loc 1 41 5 is_stmt 1 view .LVU17
	.loc 1 40 1 is_stmt 0 view .LVU18
	mov.n	a15, a7
	.loc 1 41 12 view .LVU19
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_kdf_blake2b_derive_from_key
.LVL1:
	.loc 1 43 1 view .LVU20
	mov.n	a2, a10
.LVL2:
	.loc 1 40 1 view .LVU21
	.loc 1 43 1 view .LVU22
	retw.n
.LFE5:
	.size	crypto_kdf_derive_from_key, .-crypto_kdf_derive_from_key
	.section	.text.crypto_kdf_keygen,"ax",@progbits
	.align	4
	.global	crypto_kdf_keygen
	.type	crypto_kdf_keygen, @function
crypto_kdf_keygen:
.LVL3:
.LFB6:
	.loc 1 47 1 is_stmt 1 view -0
	.loc 1 47 1 is_stmt 0 view .LVU24
	entry	sp, 32
.LCFI6:
	.loc 1 48 5 is_stmt 1 view .LVU25
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL4:
	.loc 1 49 1 is_stmt 0 view .LVU26
	retw.n
.LFE6:
	.size	crypto_kdf_keygen, .-crypto_kdf_keygen
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_kdf_blake2b.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fc
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
	.4byte	.LASF6
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x73
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x67
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x2e
	.byte	0x21
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LVL4
	.4byte	0x1e7
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x173
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x24
	.byte	0x2b
	.4byte	0xdf
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x24
	.byte	0x3a
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x25
	.byte	0x25
	.4byte	0x7a
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x8
	.string	"ctx"
	.byte	0x1
	.byte	0x26
	.byte	0x27
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x8
	.string	"key"
	.byte	0x1
	.byte	0x27
	.byte	0x30
	.4byte	0x173
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0x1f3
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.4byte	0xa0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x5
	.byte	0x21
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x6
	.byte	0x22
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"size_t"
.LASF23:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_kdf/crypto_kdf.c"
.LASF14:
	.string	"subkey_id"
.LASF27:
	.string	"subkey"
.LASF25:
	.string	"crypto_kdf_keygen"
.LASF9:
	.string	"uint64_t"
.LASF15:
	.string	"crypto_kdf_keybytes"
.LASF3:
	.string	"unsigned char"
.LASF21:
	.string	"crypto_kdf_blake2b_derive_from_key"
.LASF11:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF26:
	.string	"crypto_kdf_derive_from_key"
.LASF20:
	.string	"randombytes_buf"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF19:
	.string	"crypto_kdf_primitive"
.LASF5:
	.string	"long long int"
.LASF22:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF4:
	.string	"short int"
.LASF7:
	.string	"__uint64_t"
.LASF17:
	.string	"crypto_kdf_bytes_max"
.LASF10:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"subkey_len"
.LASF16:
	.string	"crypto_kdf_contextbytes"
.LASF18:
	.string	"crypto_kdf_bytes_min"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
