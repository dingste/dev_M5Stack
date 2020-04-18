	.file	"core_hsalsa20.c"
	.text
.Ltext0:
	.section	.text.crypto_core_hsalsa20_outputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hsalsa20_outputbytes
	.type	crypto_core_hsalsa20_outputbytes, @function
crypto_core_hsalsa20_outputbytes:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hsalsa20/core_hsalsa20.c"
	.loc 1 4 40 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 5 5 view .LVU1
	.loc 1 6 1 is_stmt 0 view .LVU2
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_core_hsalsa20_outputbytes, .-crypto_core_hsalsa20_outputbytes
	.section	.text.crypto_core_hsalsa20_inputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hsalsa20_inputbytes
	.type	crypto_core_hsalsa20_inputbytes, @function
crypto_core_hsalsa20_inputbytes:
.LFB1:
	.loc 1 9 39 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 10 5 view .LVU4
	.loc 1 11 1 is_stmt 0 view .LVU5
	movi.n	a2, 0x10
	retw.n
.LFE1:
	.size	crypto_core_hsalsa20_inputbytes, .-crypto_core_hsalsa20_inputbytes
	.section	.text.crypto_core_hsalsa20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_core_hsalsa20_keybytes
	.type	crypto_core_hsalsa20_keybytes, @function
crypto_core_hsalsa20_keybytes:
.LFB5:
	entry	sp, 32
.LCFI2:
	movi.n	a2, 0x20
	retw.n
.LFE5:
	.size	crypto_core_hsalsa20_keybytes, .-crypto_core_hsalsa20_keybytes
	.section	.text.crypto_core_hsalsa20_constbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hsalsa20_constbytes
	.type	crypto_core_hsalsa20_constbytes, @function
crypto_core_hsalsa20_constbytes:
.LFB7:
	entry	sp, 32
.LCFI3:
	movi.n	a2, 0x10
	retw.n
.LFE7:
	.size	crypto_core_hsalsa20_constbytes, .-crypto_core_hsalsa20_constbytes
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI3-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x93
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0xc
	.4byte	.LASF7
	.4byte	.LASF8
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
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
	.uleb128 0x5
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x7
	.4byte	0x6b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	0x5e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"crypto_core_hsalsa20_inputbytes"
.LASF5:
	.string	"crypto_core_hsalsa20_outputbytes"
.LASF2:
	.string	"crypto_core_hsalsa20_constbytes"
.LASF7:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hsalsa20/core_hsalsa20.c"
.LASF3:
	.string	"crypto_core_hsalsa20_keybytes"
.LASF1:
	.string	"short unsigned int"
.LASF9:
	.string	"size_t"
.LASF8:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"