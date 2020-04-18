	.file	"stream_salsa20.c"
	.text
.Ltext0:
	.section	.text.crypto_stream_salsa20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_stream_salsa20_keybytes
	.type	crypto_stream_salsa20_keybytes, @function
crypto_stream_salsa20_keybytes:
.LFB12:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/stream_salsa20.c"
	.loc 1 30 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 31 5 view .LVU1
	.loc 1 32 1 is_stmt 0 view .LVU2
	movi.n	a2, 0x20
	retw.n
.LFE12:
	.size	crypto_stream_salsa20_keybytes, .-crypto_stream_salsa20_keybytes
	.section	.text.crypto_stream_salsa20_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_stream_salsa20_noncebytes
	.type	crypto_stream_salsa20_noncebytes, @function
crypto_stream_salsa20_noncebytes:
.LFB13:
	.loc 1 36 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 37 5 view .LVU4
	.loc 1 38 1 is_stmt 0 view .LVU5
	movi.n	a2, 8
	retw.n
.LFE13:
	.size	crypto_stream_salsa20_noncebytes, .-crypto_stream_salsa20_noncebytes
	.section	.text.crypto_stream_salsa20,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	crypto_stream_salsa20
	.type	crypto_stream_salsa20, @function
crypto_stream_salsa20:
.LVL0:
.LFB14:
	.loc 1 43 1 is_stmt 1 view -0
	.loc 1 43 1 is_stmt 0 view .LVU7
	entry	sp, 32
.LCFI2:
	.loc 1 44 5 is_stmt 1 view .LVU8
	.loc 1 44 26 is_stmt 0 view .LVU9
	l32r	a8, .LC0
	.loc 1 43 1 view .LVU10
	mov.n	a15, a7
	.loc 1 44 26 view .LVU11
	l32i.n	a8, a8, 0
	.loc 1 44 12 view .LVU12
	mov.n	a14, a6
	l32i.n	a8, a8, 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	callx8	a8
.LVL1:
	.loc 1 45 1 view .LVU13
	mov.n	a2, a10
.LVL2:
	.loc 1 43 1 view .LVU14
	.loc 1 45 1 view .LVU15
	retw.n
.LFE14:
	.size	crypto_stream_salsa20, .-crypto_stream_salsa20
	.section	.text.crypto_stream_salsa20_xor_ic,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	crypto_stream_salsa20_xor_ic
	.type	crypto_stream_salsa20_xor_ic, @function
crypto_stream_salsa20_xor_ic:
.LVL3:
.LFB15:
	.loc 1 52 1 is_stmt 1 view -0
	.loc 1 52 1 is_stmt 0 view .LVU17
	entry	sp, 48
.LCFI3:
	.loc 1 53 5 is_stmt 1 view .LVU18
	.loc 1 53 26 is_stmt 0 view .LVU19
	l32r	a8, .LC1
	.loc 1 53 12 view .LVU20
	l32i.n	a10, sp, 48
	l32i.n	a11, sp, 52
	l32i.n	a9, sp, 56
	.loc 1 53 26 view .LVU21
	l32i.n	a8, a8, 0
	.loc 1 53 12 view .LVU22
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	s32i.n	a9, sp, 8
	l32i.n	a8, a8, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL4:
	.loc 1 54 1 view .LVU23
	mov.n	a2, a10
.LVL5:
	.loc 1 54 1 view .LVU24
	retw.n
.LFE15:
	.size	crypto_stream_salsa20_xor_ic, .-crypto_stream_salsa20_xor_ic
	.section	.text.crypto_stream_salsa20_xor,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.literal .LC3, 0, 0
	.align	4
	.global	crypto_stream_salsa20_xor
	.type	crypto_stream_salsa20_xor, @function
crypto_stream_salsa20_xor:
.LVL6:
.LFB16:
	.loc 1 60 1 is_stmt 1 view -0
	.loc 1 60 1 is_stmt 0 view .LVU26
	entry	sp, 48
.LCFI4:
	.loc 1 61 5 is_stmt 1 view .LVU27
	.loc 1 61 26 is_stmt 0 view .LVU28
	l32r	a8, .LC2
	.loc 1 61 12 view .LVU29
	l32r	a10, .LC3
	l32r	a11, .LC3+4
	.loc 1 61 26 view .LVU30
	l32i.n	a8, a8, 0
	.loc 1 61 12 view .LVU31
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	s32i.n	a7, sp, 8
	l32i.n	a8, a8, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL7:
	.loc 1 62 1 view .LVU32
	mov.n	a2, a10
.LVL8:
	.loc 1 60 1 view .LVU33
	.loc 1 62 1 view .LVU34
	retw.n
.LFE16:
	.size	crypto_stream_salsa20_xor, .-crypto_stream_salsa20_xor
	.section	.text.crypto_stream_salsa20_keygen,"ax",@progbits
	.align	4
	.global	crypto_stream_salsa20_keygen
	.type	crypto_stream_salsa20_keygen, @function
crypto_stream_salsa20_keygen:
.LVL9:
.LFB17:
	.loc 1 66 1 is_stmt 1 view -0
	.loc 1 66 1 is_stmt 0 view .LVU36
	entry	sp, 32
.LCFI5:
	.loc 1 67 5 is_stmt 1 view .LVU37
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL10:
	.loc 1 68 1 is_stmt 0 view .LVU38
	retw.n
.LFE17:
	.size	crypto_stream_salsa20_keygen, .-crypto_stream_salsa20_keygen
	.section	.text._crypto_stream_salsa20_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC4, implementation
	.literal .LC5, crypto_stream_salsa20_ref_implementation
	.align	4
	.global	_crypto_stream_salsa20_pick_best_implementation
	.type	_crypto_stream_salsa20_pick_best_implementation, @function
_crypto_stream_salsa20_pick_best_implementation:
.LFB18:
	.loc 1 72 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI6:
	.loc 1 76 5 view .LVU40
	.loc 1 76 20 is_stmt 0 view .LVU41
	l32r	a8, .LC4
	l32r	a9, .LC5
	.loc 1 93 1 view .LVU42
	movi.n	a2, 0
	.loc 1 76 20 view .LVU43
	s32i.n	a9, a8, 0
	.loc 1 92 5 is_stmt 1 view .LVU44
	.loc 1 93 1 is_stmt 0 view .LVU45
	retw.n
.LFE18:
	.size	_crypto_stream_salsa20_pick_best_implementation, .-_crypto_stream_salsa20_pick_best_implementation
	.section	.data.implementation,"aw"
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.word	crypto_stream_salsa20_ref_implementation
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/stream_salsa20.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbff
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xc
	.4byte	.LASF137
	.4byte	.LASF138
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
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0x86
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0xec
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xbd
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0xec
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xfc
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x120
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xca
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0x92
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xe
	.byte	0x4
	.4byte	0x147
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x5
	.4byte	0x147
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x13a
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1b9
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1b9
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1bf
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x1cf
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x252
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x297
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x297
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x297
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x153
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x153
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x138
	.4byte	0x2a7
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x2e9
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x2e9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x2ef
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x306
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2a7
	.uleb128 0x9
	.4byte	0x2ff
	.4byte	0x2ff
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x305
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x252
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x334
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x334
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4d
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3ad
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x334
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x30c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x511
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x33a
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x511
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x752
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x752
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x752
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x141
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ba
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8c0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8d1
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x141
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x8d7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x8dd
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x141
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x8ee
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2e9
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2a7
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x713
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x752
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8fa
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x141
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x65a
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x334
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x30c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x511
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x138
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x678
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6a2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6c6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x6e0
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x30c
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x334
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x6e6
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x6f6
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x30c
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xa5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x12c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x120
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x678
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x141
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x65a
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x69c
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x69c
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x17
	.4byte	0xb1
	.4byte	0x6c6
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a8
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6e0
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6cc
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x6f6
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x706
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x517
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x74c
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x74c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x752
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x713
	.uleb128 0xe
	.byte	0x4
	.4byte	0x706
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x79f
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x79f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x79f
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x73
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x7af
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x7f6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1b9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1b9
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7f6
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8a5
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x141
	.byte	0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x120
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x120
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x120
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8a5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x120
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x120
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x120
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x120
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x120
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x147
	.4byte	0x8b5
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF139
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7af
	.uleb128 0x1a
	.4byte	0x8d1
	.uleb128 0x18
	.4byte	0x511
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x758
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x1a
	.4byte	0x8ee
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x511
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x141
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x8
	.byte	0x9
	.byte	0x7
	.byte	0x10
	.4byte	0x968
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x9
	.byte	0x8
	.byte	0xb
	.4byte	0x98c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x9
	.byte	0xa
	.byte	0xb
	.4byte	0x9ba
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x986
	.uleb128 0x18
	.4byte	0x334
	.uleb128 0x18
	.4byte	0x73
	.uleb128 0x18
	.4byte	0x986
	.uleb128 0x18
	.4byte	0x986
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x54
	.uleb128 0xe
	.byte	0x4
	.4byte	0x968
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x9ba
	.uleb128 0x18
	.4byte	0x334
	.uleb128 0x18
	.4byte	0x986
	.uleb128 0x18
	.4byte	0x73
	.uleb128 0x18
	.4byte	0x986
	.uleb128 0x18
	.4byte	0x7a
	.uleb128 0x18
	.4byte	0x986
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x992
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x9
	.byte	0xe
	.byte	0x3
	.4byte	0x940
	.uleb128 0x5
	.4byte	0x9c0
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0xa
	.byte	0x8
	.byte	0x5
	.4byte	0x940
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.4byte	0x9ef
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9cc
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa44
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x41
	.byte	0x2c
	.4byte	0x334
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL10
	.4byte	0xbf6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF129
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac7
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.byte	0x39
	.byte	0x2a
	.4byte	0x334
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x39
	.byte	0x42
	.4byte	0x986
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF128
	.byte	0x1
	.byte	0x3a
	.byte	0x2e
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x3a
	.byte	0x49
	.4byte	0x986
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x3b
	.byte	0x30
	.4byte	0x986
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.4byte	.LVL7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF130
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5a
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.4byte	0x334
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x30
	.byte	0x45
	.4byte	0x986
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF128
	.byte	0x1
	.byte	0x31
	.byte	0x31
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x32
	.byte	0x33
	.4byte	0x986
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.string	"ic"
	.byte	0x1
	.byte	0x32
	.byte	0x3f
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x33
	.byte	0x33
	.4byte	0x986
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.4byte	.LVL4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF131
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbca
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.byte	0x29
	.byte	0x26
	.4byte	0x334
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x25
	.4byte	.LASF132
	.byte	0x1
	.byte	0x29
	.byte	0x3c
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x2a
	.byte	0x2c
	.4byte	0x986
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x2a
	.byte	0x44
	.4byte	0x986
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.4byte	.LVL1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xb
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
	.uleb128 0x10
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x18
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
.LVUS2:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE14
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"_dso_handle"
.LASF51:
	.string	"_size"
.LASF142:
	.string	"randombytes_buf"
.LASF6:
	.string	"size_t"
.LASF97:
	.string	"_rand48"
.LASF63:
	.string	"_emergency"
.LASF9:
	.string	"uint64_t"
.LASF137:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/stream_salsa20.c"
.LASF125:
	.string	"stream"
.LASF117:
	.string	"_wcrtomb_state"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF8:
	.string	"long long unsigned int"
.LASF55:
	.string	"_lbfsize"
.LASF139:
	.string	"__locale_t"
.LASF134:
	.string	"crypto_stream_salsa20_noncebytes"
.LASF115:
	.string	"_mbrtowc_state"
.LASF110:
	.string	"_wctomb_state"
.LASF31:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF86:
	.string	"_ubuf"
.LASF50:
	.string	"_base"
.LASF33:
	.string	"__tm_hour"
.LASF77:
	.string	"__sf"
.LASF40:
	.string	"_on_exit_args"
.LASF81:
	.string	"_cookie"
.LASF76:
	.string	"__sglue"
.LASF12:
	.string	"long int"
.LASF102:
	.string	"_mprec"
.LASF53:
	.string	"_flags"
.LASF44:
	.string	"_is_cxa"
.LASF59:
	.string	"_stdin"
.LASF88:
	.string	"_blksize"
.LASF10:
	.string	"_lock_t"
.LASF70:
	.string	"_cvtbuf"
.LASF89:
	.string	"_offset"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF108:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbrlen_state"
.LASF41:
	.string	"_fnargs"
.LASF47:
	.string	"_fns"
.LASF27:
	.string	"_sign"
.LASF21:
	.string	"_flock_t"
.LASF61:
	.string	"_stderr"
.LASF29:
	.string	"_Bigint"
.LASF68:
	.string	"_gamma_signgam"
.LASF82:
	.string	"_read"
.LASF104:
	.string	"_result_k"
.LASF30:
	.string	"__tm"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"__wchb"
.LASF131:
	.string	"crypto_stream_salsa20"
.LASF60:
	.string	"_stdout"
.LASF69:
	.string	"_cvtlen"
.LASF22:
	.string	"long unsigned int"
.LASF52:
	.string	"__sFILE_fake"
.LASF135:
	.string	"crypto_stream_salsa20_keybytes"
.LASF133:
	.string	"_crypto_stream_salsa20_pick_best_implementation"
.LASF56:
	.string	"_data"
.LASF127:
	.string	"crypto_stream_salsa20_ref_implementation"
.LASF95:
	.string	"_niobs"
.LASF126:
	.string	"stream_xor_ic"
.LASF1:
	.string	"short unsigned int"
.LASF75:
	.string	"_atexit0"
.LASF79:
	.string	"_signal_buf"
.LASF73:
	.string	"_asctime_buf"
.LASF103:
	.string	"_result"
.LASF16:
	.string	"__wch"
.LASF15:
	.string	"wint_t"
.LASF90:
	.string	"_lock"
.LASF92:
	.string	"_flags2"
.LASF128:
	.string	"mlen"
.LASF83:
	.string	"_write"
.LASF36:
	.string	"__tm_year"
.LASF78:
	.string	"_misc"
.LASF129:
	.string	"crypto_stream_salsa20_xor"
.LASF124:
	.string	"crypto_stream_salsa20_implementation"
.LASF119:
	.string	"__sf_fake_stdin"
.LASF120:
	.string	"__sf_fake_stdout"
.LASF138:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF132:
	.string	"clen"
.LASF35:
	.string	"__tm_mon"
.LASF45:
	.string	"_atexit"
.LASF123:
	.string	"suboptarg"
.LASF64:
	.string	"__sdidinit"
.LASF13:
	.string	"_off_t"
.LASF7:
	.string	"__uint64_t"
.LASF106:
	.string	"_freelist"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"unsigned char"
.LASF96:
	.string	"_iobs"
.LASF4:
	.string	"short int"
.LASF38:
	.string	"__tm_yday"
.LASF49:
	.string	"__sbuf"
.LASF93:
	.string	"__FILE"
.LASF20:
	.string	"_mbstate_t"
.LASF80:
	.string	"__sFILE"
.LASF91:
	.string	"_mbstate"
.LASF101:
	.string	"_rand_next"
.LASF109:
	.string	"_mblen_state"
.LASF62:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF130:
	.string	"crypto_stream_salsa20_xor_ic"
.LASF66:
	.string	"_locale"
.LASF67:
	.string	"__cleanup"
.LASF65:
	.string	"_unspecified_locale_info"
.LASF26:
	.string	"_maxwds"
.LASF57:
	.string	"_reent"
.LASF98:
	.string	"_seed"
.LASF18:
	.string	"__count"
.LASF19:
	.string	"__value"
.LASF84:
	.string	"_seek"
.LASF14:
	.string	"_fpos_t"
.LASF58:
	.string	"_errno"
.LASF23:
	.string	"char"
.LASF32:
	.string	"__tm_min"
.LASF99:
	.string	"_mult"
.LASF25:
	.string	"_next"
.LASF136:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"_fntypes"
.LASF107:
	.string	"_misc_reent"
.LASF100:
	.string	"_add"
.LASF24:
	.string	"__ULong"
.LASF113:
	.string	"_getdate_err"
.LASF122:
	.string	"_global_impure_ptr"
.LASF54:
	.string	"_file"
.LASF28:
	.string	"_wds"
.LASF37:
	.string	"__tm_wday"
.LASF94:
	.string	"_glue"
.LASF112:
	.string	"_l64a_buf"
.LASF141:
	.string	"crypto_stream_salsa20_keygen"
.LASF74:
	.string	"_sig_func"
.LASF140:
	.string	"implementation"
.LASF87:
	.string	"_nbuf"
.LASF39:
	.string	"__tm_isdst"
.LASF72:
	.string	"_localtime_buf"
.LASF85:
	.string	"_close"
.LASF121:
	.string	"__sf_fake_stderr"
.LASF71:
	.string	"_r48"
.LASF111:
	.string	"_mbtowc_state"
.LASF105:
	.string	"_p5s"
.LASF34:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
