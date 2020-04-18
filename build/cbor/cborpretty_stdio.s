	.file	"cborpretty_stdio.c"
	.text
.Ltext0:
	.section	.text.cbor_fprintf,"ax",@progbits
	.align	4
	.type	cbor_fprintf, @function
cbor_fprintf:
.LVL0:
.LFB52:
	.file 1 "/home/dieter/Development/esp-idf/components/cbor/tinycbor/src/cborpretty_stdio.c"
	.loc 1 30 1 view -0
	.loc 1 30 1 is_stmt 0 view .LVU1
	entry	sp, 80
.LCFI0:
	.loc 1 31 5 is_stmt 1 view .LVU2
	.loc 1 33 5 view .LVU3
	.loc 1 34 4 view .LVU4
	addi	a13, sp, 16
	addi	a12, sp, 48
	movi.n	a14, 8
	.loc 1 35 9 is_stmt 0 view .LVU5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 34 4 view .LVU6
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	s32i.n	a13, sp, 4
	s32i.n	a12, sp, 0
	s32i.n	a14, sp, 8
	.loc 1 35 5 is_stmt 1 view .LVU7
	.loc 1 35 9 is_stmt 0 view .LVU8
	call8	vfprintf
.LVL1:
	.loc 1 36 4 is_stmt 1 view .LVU9
	.loc 1 38 5 view .LVU10
	.loc 1 38 32 is_stmt 0 view .LVU11
	srai	a10, a10, 29
.LVL2:
	.loc 1 39 1 view .LVU12
	movi.n	a2, 4
.LVL3:
	.loc 1 39 1 view .LVU13
	and	a2, a10, a2
	.loc 1 34 4 view .LVU14
	.loc 1 39 1 view .LVU15
	retw.n
.LFE52:
	.size	cbor_fprintf, .-cbor_fprintf
	.section	.text.cbor_value_to_pretty_advance,"ax",@progbits
	.literal_position
	.literal .LC0, cbor_fprintf
	.align	4
	.global	cbor_value_to_pretty_advance
	.type	cbor_value_to_pretty_advance, @function
cbor_value_to_pretty_advance:
.LVL4:
.LFB53:
	.loc 1 64 1 is_stmt 1 view -0
	.loc 1 64 1 is_stmt 0 view .LVU17
	entry	sp, 32
.LCFI1:
	.loc 1 65 5 is_stmt 1 view .LVU18
	.loc 1 65 12 is_stmt 0 view .LVU19
	l32r	a10, .LC0
	mov.n	a11, a2
	movi.n	a13, 2
	mov.n	a12, a3
	call8	cbor_value_to_pretty_stream
.LVL5:
	.loc 1 66 1 view .LVU20
	mov.n	a2, a10
.LVL6:
	.loc 1 66 1 view .LVU21
	retw.n
.LFE53:
	.size	cbor_value_to_pretty_advance, .-cbor_value_to_pretty_advance
	.section	.text.cbor_value_to_pretty_advance_flags,"ax",@progbits
	.literal_position
	.literal .LC1, cbor_fprintf
	.align	4
	.global	cbor_value_to_pretty_advance_flags
	.type	cbor_value_to_pretty_advance_flags, @function
cbor_value_to_pretty_advance_flags:
.LVL7:
.LFB54:
	.loc 1 84 1 is_stmt 1 view -0
	.loc 1 84 1 is_stmt 0 view .LVU23
	entry	sp, 32
.LCFI2:
	.loc 1 85 5 is_stmt 1 view .LVU24
	.loc 1 85 12 is_stmt 0 view .LVU25
	l32r	a10, .LC1
	mov.n	a11, a2
	mov.n	a13, a4
	mov.n	a12, a3
	call8	cbor_value_to_pretty_stream
.LVL8:
	.loc 1 86 1 view .LVU26
	mov.n	a2, a10
.LVL9:
	.loc 1 86 1 view .LVU27
	retw.n
.LFE54:
	.size	cbor_value_to_pretty_advance_flags, .-cbor_value_to_pretty_advance_flags
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
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI0-.LFB52
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI1-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI2-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h"
	.file 10 "<built-in>"
	.file 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h"
	.file 12 "/home/dieter/Development/esp-idf/components/cbor/tinycbor/src/cbor.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd4e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0xc
	.4byte	.LASF193
	.4byte	.LASF194
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x36
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x5e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x3d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x36
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x44
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x92
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x36
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xf8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xc9
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xf8
	.byte	0
	.uleb128 0x9
	.4byte	0x5e
	.4byte	0x108
	.uleb128 0xa
	.4byte	0x36
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x12c
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x44
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xd6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x108
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0xe
	.byte	0x4
	.4byte	0x153
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	0x153
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x146
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1c5
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1c5
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x44
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x44
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1cb
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x16b
	.uleb128 0x9
	.4byte	0x15f
	.4byte	0x1db
	.uleb128 0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x25e
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x44
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x44
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x44
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x44
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x44
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x44
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x2a3
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x2a3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x2a3
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x15f
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x15f
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x144
	.4byte	0x2b3
	.uleb128 0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2f5
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2f5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x44
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2fb
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x312
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0x9
	.4byte	0x30b
	.4byte	0x30b
	.uleb128 0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x311
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25e
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x340
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x340
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x44
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5e
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3b9
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x340
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x318
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x51d
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x346
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x51d
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x44
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x75e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x75e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x75e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x44
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x14d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x44
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8c6
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8cc
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8dd
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x44
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x44
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x14d
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8e3
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8e9
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x14d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8fa
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2f5
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2b3
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x71f
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x75e
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x906
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x14d
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3be
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x666
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x340
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x318
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x51d
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x144
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x684
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6ae
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6d2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6ec
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x318
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x340
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x44
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6f2
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x702
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x318
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x44
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xb1
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x138
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x12c
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x44
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x44
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x51d
	.uleb128 0x18
	.4byte	0x144
	.uleb128 0x18
	.4byte	0x14d
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x666
	.uleb128 0x17
	.4byte	0x44
	.4byte	0x6a8
	.uleb128 0x18
	.4byte	0x51d
	.uleb128 0x18
	.4byte	0x144
	.uleb128 0x18
	.4byte	0x6a8
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x68a
	.uleb128 0x17
	.4byte	0xbd
	.4byte	0x6d2
	.uleb128 0x18
	.4byte	0x51d
	.uleb128 0x18
	.4byte	0x144
	.uleb128 0x18
	.4byte	0xbd
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6b4
	.uleb128 0x17
	.4byte	0x44
	.4byte	0x6ec
	.uleb128 0x18
	.4byte	0x51d
	.uleb128 0x18
	.4byte	0x144
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x9
	.4byte	0x5e
	.4byte	0x702
	.uleb128 0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x5e
	.4byte	0x712
	.uleb128 0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x523
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x758
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x758
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x75e
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x71f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x712
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7ab
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7ab
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7ab
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x3d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x8b
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3d
	.4byte	0x7bb
	.uleb128 0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x802
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1c5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1c5
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x802
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c5
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8b1
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x14d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x12c
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x12c
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x12c
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8b1
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x44
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x12c
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x12c
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x12c
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x12c
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x12c
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x8c1
	.uleb128 0xa
	.4byte	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF195
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8c1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7bb
	.uleb128 0x1a
	.4byte	0x8dd
	.uleb128 0x18
	.4byte	0x51d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x764
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1db
	.uleb128 0x1a
	.4byte	0x8fa
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x900
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8ef
	.uleb128 0xe
	.byte	0x4
	.4byte	0x808
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3b9
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3b9
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3b9
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x51d
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x14d
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x52
	.uleb128 0x3
	.4byte	0x94c
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x8
	.byte	0x24
	.byte	0x14
	.4byte	0x6c
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x9
	.byte	0x28
	.byte	0x1b
	.4byte	0x981
	.uleb128 0x1d
	.4byte	.LASF196
	.byte	0xc
	.byte	0xa
	.byte	0
	.4byte	0x9b2
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0xa
	.byte	0
	.4byte	0x144
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0xa
	.byte	0
	.4byte	0x144
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0xa
	.byte	0
	.4byte	0x44
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0xb
	.byte	0x2e
	.byte	0x18
	.4byte	0x975
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xb
	.byte	0x42
	.byte	0x10
	.4byte	0x712
	.uleb128 0x1f
	.4byte	.LASF168
	.byte	0x5
	.byte	0x4
	.4byte	0x44
	.byte	0xc
	.byte	0x98
	.byte	0xe
	.4byte	0xacb
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x2
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x3
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x4
	.uleb128 0x21
	.4byte	.LASF139
	.2byte	0x100
	.uleb128 0x21
	.4byte	.LASF140
	.2byte	0x101
	.uleb128 0x21
	.4byte	.LASF141
	.2byte	0x102
	.uleb128 0x21
	.4byte	.LASF142
	.2byte	0x103
	.uleb128 0x21
	.4byte	.LASF143
	.2byte	0x104
	.uleb128 0x21
	.4byte	.LASF144
	.2byte	0x105
	.uleb128 0x21
	.4byte	.LASF145
	.2byte	0x106
	.uleb128 0x21
	.4byte	.LASF146
	.2byte	0x200
	.uleb128 0x21
	.4byte	.LASF147
	.2byte	0x201
	.uleb128 0x21
	.4byte	.LASF148
	.2byte	0x202
	.uleb128 0x21
	.4byte	.LASF149
	.2byte	0x203
	.uleb128 0x21
	.4byte	.LASF150
	.2byte	0x204
	.uleb128 0x21
	.4byte	.LASF151
	.2byte	0x205
	.uleb128 0x21
	.4byte	.LASF152
	.2byte	0x206
	.uleb128 0x21
	.4byte	.LASF153
	.2byte	0x207
	.uleb128 0x21
	.4byte	.LASF154
	.2byte	0x208
	.uleb128 0x21
	.4byte	.LASF155
	.2byte	0x209
	.uleb128 0x21
	.4byte	.LASF156
	.2byte	0x20a
	.uleb128 0x21
	.4byte	.LASF157
	.2byte	0x20b
	.uleb128 0x21
	.4byte	.LASF158
	.2byte	0x300
	.uleb128 0x21
	.4byte	.LASF159
	.2byte	0x301
	.uleb128 0x21
	.4byte	.LASF160
	.2byte	0x400
	.uleb128 0x21
	.4byte	.LASF161
	.2byte	0x401
	.uleb128 0x21
	.4byte	.LASF162
	.2byte	0x402
	.uleb128 0x21
	.4byte	.LASF163
	.2byte	0x500
	.uleb128 0x21
	.4byte	.LASF164
	.2byte	0x501
	.uleb128 0x21
	.4byte	.LASF165
	.2byte	0x502
	.uleb128 0x22
	.4byte	.LASF166
	.sleb128 -2147483648
	.uleb128 0x23
	.4byte	.LASF167
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0xc
	.byte	0xc8
	.byte	0x3
	.4byte	0x9ca
	.uleb128 0xe
	.byte	0x4
	.4byte	0x958
	.uleb128 0x24
	.4byte	.LASF188
	.byte	0xc
	.byte	0xd9
	.byte	0x15
	.4byte	0x31
	.4byte	0xffffffff
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0x8
	.byte	0xc
	.2byte	0x114
	.byte	0x8
	.4byte	0xb18
	.uleb128 0x16
	.string	"end"
	.byte	0xc
	.2byte	0x116
	.byte	0x14
	.4byte	0xad7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF170
	.byte	0xc
	.2byte	0x117
	.byte	0xe
	.4byte	0x969
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF169
	.byte	0xc
	.2byte	0x119
	.byte	0x1b
	.4byte	0xaed
	.uleb128 0x3
	.4byte	0xb18
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x10
	.byte	0xc
	.2byte	0x11b
	.byte	0x8
	.4byte	0xb8d
	.uleb128 0x15
	.4byte	.LASF172
	.byte	0xc
	.2byte	0x11d
	.byte	0x17
	.4byte	0xb8d
	.byte	0
	.uleb128 0x16
	.string	"ptr"
	.byte	0xc
	.2byte	0x11e
	.byte	0x14
	.4byte	0xad7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0xc
	.2byte	0x11f
	.byte	0xe
	.4byte	0x969
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF174
	.byte	0xc
	.2byte	0x120
	.byte	0xe
	.4byte	0x95d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0xc
	.2byte	0x121
	.byte	0xd
	.4byte	0x94c
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF170
	.byte	0xc
	.2byte	0x122
	.byte	0xd
	.4byte	0x94c
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb25
	.uleb128 0x6
	.4byte	.LASF171
	.byte	0xc
	.2byte	0x124
	.byte	0x1a
	.4byte	0xb2a
	.uleb128 0x25
	.4byte	.LASF176
	.byte	0x7
	.byte	0x4
	.4byte	0x36
	.byte	0xc
	.2byte	0x238
	.byte	0x6
	.4byte	0xbe5
	.uleb128 0x20
	.4byte	.LASF177
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF178
	.byte	0
	.uleb128 0x20
	.4byte	.LASF179
	.byte	0x2
	.uleb128 0x20
	.4byte	.LASF180
	.byte	0x2
	.uleb128 0x20
	.4byte	.LASF181
	.byte	0x4
	.uleb128 0x21
	.4byte	.LASF182
	.2byte	0x100
	.uleb128 0x20
	.4byte	.LASF183
	.byte	0
	.uleb128 0x20
	.4byte	.LASF184
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.4byte	.LASF186
	.byte	0x1
	.byte	0x53
	.byte	0xb
	.4byte	0xacb
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc55
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x53
	.byte	0x34
	.4byte	0xc55
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.4byte	.LASF185
	.byte	0x1
	.byte	0x53
	.byte	0x44
	.4byte	0xc5b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF170
	.byte	0x1
	.byte	0x53
	.byte	0x4f
	.4byte	0x44
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LVL8
	.4byte	0xd38
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	cbor_fprintf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9be
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb93
	.uleb128 0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.4byte	0xacb
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc2
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x3f
	.byte	0x2e
	.4byte	0xc55
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x28
	.4byte	.LASF185
	.byte	0x1
	.byte	0x3f
	.byte	0x3e
	.4byte	0xc5b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LVL5
	.4byte	0xd38
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	cbor_fprintf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF197
	.byte	0x1
	.byte	0x1d
	.byte	0x12
	.4byte	0xacb
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd38
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x1d
	.byte	0x25
	.4byte	0x144
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2c
	.string	"fmt"
	.byte	0x1
	.byte	0x1d
	.byte	0x36
	.4byte	0x6a8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.uleb128 0x2e
	.string	"n"
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0x44
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2f
	.4byte	.LASF189
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	0x9b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.4byte	.LVL1
	.4byte	0xd45
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xc
	.2byte	0x24c
	.byte	0xc
	.uleb128 0x31
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xb
	.byte	0xce
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
.LVUS3:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU9
	.uleb128 .LVU12
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF164:
	.string	"CborErrorJsonObjectKeyNotString"
.LASF156:
	.string	"CborErrorMapNotSorted"
.LASF79:
	.string	"_misc"
.LASF11:
	.string	"_lock_t"
.LASF41:
	.string	"_on_exit_args"
.LASF84:
	.string	"_write"
.LASF111:
	.string	"_wctomb_state"
.LASF170:
	.string	"flags"
.LASF72:
	.string	"_r48"
.LASF134:
	.string	"CborNoError"
.LASF80:
	.string	"_signal_buf"
.LASF158:
	.string	"CborErrorTooManyItems"
.LASF0:
	.string	"unsigned int"
.LASF168:
	.string	"CborError"
.LASF127:
	.string	"uint32_t"
.LASF145:
	.string	"CborErrorIllegalSimpleType"
.LASF56:
	.string	"_lbfsize"
.LASF54:
	.string	"_flags"
.LASF133:
	.string	"FILE"
.LASF59:
	.string	"_errno"
.LASF177:
	.string	"CborPrettyNumericEncodingIndicators"
.LASF143:
	.string	"CborErrorIllegalType"
.LASF190:
	.string	"cbor_value_to_pretty_stream"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF83:
	.string	"_read"
.LASF115:
	.string	"_mbrlen_state"
.LASF184:
	.string	"CborPrettyDefaultFlags"
.LASF61:
	.string	"_stdout"
.LASF151:
	.string	"CborErrorExcludedType"
.LASF15:
	.string	"_fpos_t"
.LASF48:
	.string	"_fns"
.LASF82:
	.string	"_cookie"
.LASF191:
	.string	"vfprintf"
.LASF30:
	.string	"_Bigint"
.LASF38:
	.string	"__tm_wday"
.LASF179:
	.string	"CborPrettyIndicateIndeterminateLength"
.LASF104:
	.string	"_result"
.LASF193:
	.string	"/home/dieter/Development/esp-idf/components/cbor/tinycbor/src/cborpretty_stdio.c"
.LASF34:
	.string	"__tm_hour"
.LASF19:
	.string	"__count"
.LASF33:
	.string	"__tm_min"
.LASF78:
	.string	"__sf"
.LASF98:
	.string	"_rand48"
.LASF105:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF74:
	.string	"_asctime_buf"
.LASF81:
	.string	"__sFILE"
.LASF29:
	.string	"_wds"
.LASF150:
	.string	"CborErrorInvalidUtf8TextString"
.LASF7:
	.string	"__uint16_t"
.LASF94:
	.string	"__FILE"
.LASF90:
	.string	"_offset"
.LASF87:
	.string	"_ubuf"
.LASF130:
	.string	"__va_reg"
.LASF185:
	.string	"value"
.LASF64:
	.string	"_emergency"
.LASF197:
	.string	"cbor_fprintf"
.LASF159:
	.string	"CborErrorTooFewItems"
.LASF128:
	.string	"__gnuc_va_list"
.LASF3:
	.string	"size_t"
.LASF32:
	.string	"__tm_sec"
.LASF124:
	.string	"suboptarg"
.LASF39:
	.string	"__tm_yday"
.LASF160:
	.string	"CborErrorDataTooLarge"
.LASF63:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF171:
	.string	"CborValue"
.LASF26:
	.string	"_next"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF183:
	.string	"CborPrettyMergeStringFragments"
.LASF140:
	.string	"CborErrorUnexpectedEOF"
.LASF20:
	.string	"__value"
.LASF106:
	.string	"_p5s"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF110:
	.string	"_mblen_state"
.LASF24:
	.string	"char"
.LASF35:
	.string	"__tm_mday"
.LASF75:
	.string	"_sig_func"
.LASF116:
	.string	"_mbrtowc_state"
.LASF167:
	.string	"CborErrorInternalError"
.LASF154:
	.string	"CborErrorOverlongEncoding"
.LASF182:
	.string	"CborPrettyShowStringFragments"
.LASF22:
	.string	"_flock_t"
.LASF17:
	.string	"__wch"
.LASF97:
	.string	"_iobs"
.LASF125:
	.string	"uint8_t"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF86:
	.string	"_close"
.LASF65:
	.string	"__sdidinit"
.LASF53:
	.string	"__sFILE_fake"
.LASF132:
	.string	"va_list"
.LASF165:
	.string	"CborErrorJsonNotImplemented"
.LASF60:
	.string	"_stdin"
.LASF69:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF51:
	.string	"_base"
.LASF107:
	.string	"_freelist"
.LASF100:
	.string	"_mult"
.LASF147:
	.string	"CborErrorUnknownTag"
.LASF25:
	.string	"__ULong"
.LASF118:
	.string	"_wcrtomb_state"
.LASF55:
	.string	"_file"
.LASF176:
	.string	"CborPrettyFlags"
.LASF135:
	.string	"CborUnknownError"
.LASF162:
	.string	"CborErrorUnsupportedType"
.LASF68:
	.string	"__cleanup"
.LASF21:
	.string	"_mbstate_t"
.LASF103:
	.string	"_mprec"
.LASF142:
	.string	"CborErrorUnknownType"
.LASF152:
	.string	"CborErrorExcludedValue"
.LASF40:
	.string	"__tm_isdst"
.LASF157:
	.string	"CborErrorMapKeysNotUnique"
.LASF194:
	.string	"/home/dieter/Development/ProjektEi/build/cbor"
.LASF188:
	.string	"CborIndefiniteLength"
.LASF141:
	.string	"CborErrorUnexpectedBreak"
.LASF181:
	.string	"CborPrettyIndicateOverlongNumbers"
.LASF36:
	.string	"__tm_mon"
.LASF138:
	.string	"CborErrorIO"
.LASF126:
	.string	"uint16_t"
.LASF172:
	.string	"parser"
.LASF76:
	.string	"_atexit0"
.LASF46:
	.string	"_atexit"
.LASF92:
	.string	"_mbstate"
.LASF131:
	.string	"__va_ndx"
.LASF144:
	.string	"CborErrorIllegalNumber"
.LASF186:
	.string	"cbor_value_to_pretty_advance_flags"
.LASF6:
	.string	"short int"
.LASF129:
	.string	"__va_stk"
.LASF13:
	.string	"long int"
.LASF163:
	.string	"CborErrorJsonObjectKeyIsAggregate"
.LASF28:
	.string	"_sign"
.LASF57:
	.string	"_data"
.LASF18:
	.string	"__wchb"
.LASF123:
	.string	"_global_impure_ptr"
.LASF37:
	.string	"__tm_year"
.LASF196:
	.string	"__va_list_tag"
.LASF173:
	.string	"remaining"
.LASF108:
	.string	"_misc_reent"
.LASF73:
	.string	"_localtime_buf"
.LASF4:
	.string	"__uint8_t"
.LASF70:
	.string	"_cvtlen"
.LASF27:
	.string	"_maxwds"
.LASF113:
	.string	"_l64a_buf"
.LASF149:
	.string	"CborErrorDuplicateObjectKeys"
.LASF148:
	.string	"CborErrorInappropriateTagForType"
.LASF146:
	.string	"CborErrorUnknownSimpleType"
.LASF89:
	.string	"_blksize"
.LASF31:
	.string	"__tm"
.LASF91:
	.string	"_lock"
.LASF23:
	.string	"long unsigned int"
.LASF189:
	.string	"list"
.LASF155:
	.string	"CborErrorMapKeyNotString"
.LASF96:
	.string	"_niobs"
.LASF192:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"_dso_handle"
.LASF137:
	.string	"CborErrorAdvancePastEOF"
.LASF175:
	.string	"type"
.LASF71:
	.string	"_cvtbuf"
.LASF5:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF114:
	.string	"_getdate_err"
.LASF178:
	.string	"CborPrettyTextualEncodingIndicators"
.LASF136:
	.string	"CborErrorUnknownLength"
.LASF139:
	.string	"CborErrorGarbageAtEnd"
.LASF101:
	.string	"_add"
.LASF153:
	.string	"CborErrorImproperValue"
.LASF50:
	.string	"__sbuf"
.LASF95:
	.string	"_glue"
.LASF169:
	.string	"CborParser"
.LASF77:
	.string	"__sglue"
.LASF109:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbtowc_state"
.LASF67:
	.string	"_locale"
.LASF42:
	.string	"_fnargs"
.LASF2:
	.string	"signed char"
.LASF166:
	.string	"CborErrorOutOfMemory"
.LASF58:
	.string	"_reent"
.LASF1:
	.string	"short unsigned int"
.LASF174:
	.string	"extra"
.LASF44:
	.string	"_fntypes"
.LASF52:
	.string	"_size"
.LASF187:
	.string	"cbor_value_to_pretty_advance"
.LASF14:
	.string	"_off_t"
.LASF88:
	.string	"_nbuf"
.LASF66:
	.string	"_unspecified_locale_info"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF93:
	.string	"_flags2"
.LASF45:
	.string	"_is_cxa"
.LASF99:
	.string	"_seed"
.LASF102:
	.string	"_rand_next"
.LASF195:
	.string	"__locale_t"
.LASF85:
	.string	"_seek"
.LASF62:
	.string	"_stderr"
.LASF16:
	.string	"wint_t"
.LASF161:
	.string	"CborErrorNestingTooDeep"
.LASF120:
	.string	"__sf_fake_stdin"
.LASF180:
	.string	"CborPrettyIndicateIndetermineLength"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
