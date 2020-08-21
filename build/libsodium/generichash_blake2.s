	.file	"generichash_blake2.c"
	.text
.Ltext0:
	.section	.text.crypto_generichash_blake2b_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_bytes_min
	.type	crypto_generichash_blake2b_bytes_min, @function
crypto_generichash_blake2b_bytes_min:
.LFB15:
	entry	sp, 32
.LCFI0:
	movi.n	a2, 0x10
	retw.n
.LFE15:
	.size	crypto_generichash_blake2b_bytes_min, .-crypto_generichash_blake2b_bytes_min
	.section	.text.crypto_generichash_blake2b_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_bytes_max
	.type	crypto_generichash_blake2b_bytes_max, @function
crypto_generichash_blake2b_bytes_max:
.LFB19:
	entry	sp, 32
.LCFI1:
	movi.n	a2, 0x40
	retw.n
.LFE19:
	.size	crypto_generichash_blake2b_bytes_max, .-crypto_generichash_blake2b_bytes_max
	.section	.text.crypto_generichash_blake2b_bytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_bytes
	.type	crypto_generichash_blake2b_bytes, @function
crypto_generichash_blake2b_bytes:
.LFB17:
	entry	sp, 32
.LCFI2:
	movi.n	a2, 0x20
	retw.n
.LFE17:
	.size	crypto_generichash_blake2b_bytes, .-crypto_generichash_blake2b_bytes
	.section	.text.crypto_generichash_blake2b_keybytes_min,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_keybytes_min
	.type	crypto_generichash_blake2b_keybytes_min, @function
crypto_generichash_blake2b_keybytes_min:
.LFB13:
	entry	sp, 32
.LCFI3:
	movi.n	a2, 0x10
	retw.n
.LFE13:
	.size	crypto_generichash_blake2b_keybytes_min, .-crypto_generichash_blake2b_keybytes_min
	.section	.text.crypto_generichash_blake2b_keybytes_max,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_keybytes_max
	.type	crypto_generichash_blake2b_keybytes_max, @function
crypto_generichash_blake2b_keybytes_max:
.LFB4:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/generichash_blake2.c"
	.loc 1 25 0
	.loc 1 25 0
	entry	sp, 32
.LCFI4:
	.loc 1 27 0
	movi.n	a2, 0x40
	retw.n
.LFE4:
	.size	crypto_generichash_blake2b_keybytes_max, .-crypto_generichash_blake2b_keybytes_max
	.section	.text.crypto_generichash_blake2b_keybytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_keybytes
	.type	crypto_generichash_blake2b_keybytes, @function
crypto_generichash_blake2b_keybytes:
.LFB5:
	.loc 1 30 0
	entry	sp, 32
.LCFI5:
	.loc 1 32 0
	movi.n	a2, 0x20
	retw.n
.LFE5:
	.size	crypto_generichash_blake2b_keybytes, .-crypto_generichash_blake2b_keybytes
	.section	.text.crypto_generichash_blake2b_saltbytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_saltbytes
	.type	crypto_generichash_blake2b_saltbytes, @function
crypto_generichash_blake2b_saltbytes:
.LFB11:
	entry	sp, 32
.LCFI6:
	movi.n	a2, 0x10
	retw.n
.LFE11:
	.size	crypto_generichash_blake2b_saltbytes, .-crypto_generichash_blake2b_saltbytes
	.section	.text.crypto_generichash_blake2b_personalbytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_personalbytes
	.type	crypto_generichash_blake2b_personalbytes, @function
crypto_generichash_blake2b_personalbytes:
.LFB7:
	.loc 1 40 0
	.loc 1 40 0
	entry	sp, 32
.LCFI7:
	.loc 1 42 0
	movi.n	a2, 0x10
	retw.n
.LFE7:
	.size	crypto_generichash_blake2b_personalbytes, .-crypto_generichash_blake2b_personalbytes
	.section	.text.crypto_generichash_blake2b_statebytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_statebytes
	.type	crypto_generichash_blake2b_statebytes, @function
crypto_generichash_blake2b_statebytes:
.LFB8:
	.loc 1 46 0
	entry	sp, 32
.LCFI8:
	.loc 1 49 0
	movi	a2, 0x180
	retw.n
.LFE8:
	.size	crypto_generichash_blake2b_statebytes, .-crypto_generichash_blake2b_statebytes
	.section	.text.crypto_generichash_blake2b_keygen,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_keygen
	.type	crypto_generichash_blake2b_keygen, @function
crypto_generichash_blake2b_keygen:
.LFB9:
	.loc 1 53 0
.LVL0:
	entry	sp, 32
.LCFI9:
	.loc 1 54 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL1:
	retw.n
.LFE9:
	.size	crypto_generichash_blake2b_keygen, .-crypto_generichash_blake2b_keygen
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI3-.LFB13
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF16
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x19
	.4byte	0x28
	.byte	0x1
	.uleb128 0x7
	.4byte	0x86
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1e
	.4byte	0x28
	.byte	0x1
	.uleb128 0x7
	.4byte	0xa1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x28
	.4byte	0x28
	.byte	0x1
	.uleb128 0x7
	.4byte	0xbc
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2d
	.4byte	0x28
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x34
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x34
	.4byte	0x79
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x123
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"size_t"
.LASF11:
	.string	"crypto_generichash_blake2b_keybytes_max"
.LASF13:
	.string	"crypto_generichash_blake2b_personalbytes"
.LASF15:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/generichash_blake2.c"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF14:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"randombytes_buf"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"crypto_generichash_blake2b_statebytes"
.LASF12:
	.string	"crypto_generichash_blake2b_keybytes"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"crypto_generichash_blake2b_keygen"
.LASF4:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
