	.file	"nghttp2_version.c"
	.text
.Ltext0:
	.section	.text.nghttp2_version,"ax",@progbits
	.literal_position
	.literal .LC0, version
	.literal .LC1, 74240
	.align	4
	.global	nghttp2_version
	.type	nghttp2_version, @function
nghttp2_version:
.LVL0:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/nghttp2_version.c"
	.loc 1 34 50 view -0
	.loc 1 34 50 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 35 3 is_stmt 1 view .LVU2
	.loc 1 35 6 is_stmt 0 view .LVU3
	l32r	a9, .LC1
	.loc 1 37 10 view .LVU4
	l32r	a8, .LC0
	.loc 1 35 6 view .LVU5
	bge	a9, a2, .L1
	.loc 1 36 11 view .LVU6
	movi.n	a8, 0
.L1:
	.loc 1 38 1 view .LVU7
	mov.n	a2, a8
.LVL1:
	.loc 1 38 1 view .LVU8
	retw.n
.LFE3:
	.size	nghttp2_version, .-nghttp2_version
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"v1.22.0"
.LC3:
	.string	"h2"
	.section	.data.version,"aw"
	.align	4
	.type	version, @object
	.size	version, 16
version:
	.word	1
	.word	74240
	.word	.LC2
	.word	.LC3
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 7 "/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9a5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xc
	.4byte	.LASF126
	.4byte	.LASF127
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0xb
	.byte	0xd
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc
	.byte	0x11
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.4byte	0x77
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x72
	.byte	0xe
	.4byte	0x77
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.byte	0x3
	.4byte	0xc5
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.byte	0xc
	.4byte	0x96
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa9
	.byte	0x13
	.4byte	0xc5
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xd5
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x3
	.byte	0xa3
	.byte	0x9
	.4byte	0xf9
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa5
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x3
	.byte	0xaa
	.byte	0x5
	.4byte	0xa3
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0xab
	.byte	0x3
	.4byte	0xd5
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaf
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x111
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x17e
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x17e
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x41
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x184
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x124
	.uleb128 0x9
	.4byte	0x118
	.4byte	0x194
	.uleb128 0xa
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x41
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x41
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF36
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x25c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x25c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x25c
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x118
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x118
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x5d
	.4byte	0x26c
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2ae
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2ae
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2b4
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2cb
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x26c
	.uleb128 0x9
	.4byte	0x2c4
	.4byte	0x2c4
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ca
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x217
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x2f9
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x2f9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x372
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x2f9
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2d1
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4d6
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x2ff
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4d6
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x729
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x729
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x729
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x63d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x891
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x897
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8a8
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x41
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x41
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x63d
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ae
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8b4
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x63d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8c5
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2ae
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x26c
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6ea
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x729
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8d1
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x63d
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x377
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x61f
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x2f9
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2d1
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4d6
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x5d
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x64f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x679
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x69d
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6b7
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2d1
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x2f9
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x41
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6bd
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6cd
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2d1
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x41
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x7e
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x105
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0xf9
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x41
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x63d
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x5d
	.uleb128 0x18
	.4byte	0x63d
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x643
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.uleb128 0x13
	.4byte	0x643
	.uleb128 0xf
	.byte	0x4
	.4byte	0x61f
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x673
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x5d
	.uleb128 0x18
	.4byte	0x673
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x64a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x655
	.uleb128 0x17
	.4byte	0x8a
	.4byte	0x69d
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x5d
	.uleb128 0x18
	.4byte	0x8a
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x5d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a3
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x6cd
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x6dd
	.uleb128 0xa
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4dc
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x723
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x723
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x729
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ea
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6dd
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x776
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x776
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x776
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x56
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x786
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7cd
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x17e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x17e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7cd
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x87c
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x63d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0xf9
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0xf9
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0xf9
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x87c
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x41
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0xf9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0xf9
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0xf9
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0xf9
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0xf9
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x643
	.4byte	0x88c
	.uleb128 0xa
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF128
	.uleb128 0xf
	.byte	0x4
	.4byte	0x88c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x786
	.uleb128 0x1a
	.4byte	0x8a8
	.uleb128 0x18
	.4byte	0x4d6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x89d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x72f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x194
	.uleb128 0x1a
	.4byte	0x8c5
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8ba
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d3
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x372
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x372
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x372
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4d6
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x63d
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0x8b
	.byte	0x9
	.4byte	0x955
	.uleb128 0xe
	.string	"age"
	.byte	0x7
	.byte	0x91
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x7
	.byte	0x95
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x7
	.byte	0x99
	.byte	0xf
	.4byte	0x673
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x7
	.byte	0x9e
	.byte	0xf
	.4byte	0x673
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x7
	.byte	0xa0
	.byte	0x3
	.4byte	0x917
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1f
	.byte	0x15
	.4byte	0x955
	.uleb128 0x5
	.byte	0x3
	.4byte	version
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.byte	0x22
	.byte	0xf
	.4byte	0x9a2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a2
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0x22
	.byte	0x23
	.4byte	0x41
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x955
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"long int"
.LASF74:
	.string	"_misc"
.LASF7:
	.string	"_lock_t"
.LASF36:
	.string	"_on_exit_args"
.LASF131:
	.string	"least_version"
.LASF79:
	.string	"_write"
.LASF107:
	.string	"_wctomb_state"
.LASF67:
	.string	"_r48"
.LASF75:
	.string	"_signal_buf"
.LASF4:
	.string	"unsigned int"
.LASF129:
	.string	"version"
.LASF51:
	.string	"_lbfsize"
.LASF49:
	.string	"_flags"
.LASF54:
	.string	"_errno"
.LASF117:
	.string	"__sf_fake_stdout"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF78:
	.string	"_read"
.LASF111:
	.string	"_mbrlen_state"
.LASF56:
	.string	"_stdout"
.LASF11:
	.string	"_fpos_t"
.LASF43:
	.string	"_fns"
.LASF77:
	.string	"_cookie"
.LASF25:
	.string	"_Bigint"
.LASF123:
	.string	"proto_str"
.LASF33:
	.string	"__tm_wday"
.LASF100:
	.string	"_result"
.LASF29:
	.string	"__tm_hour"
.LASF15:
	.string	"__count"
.LASF28:
	.string	"__tm_min"
.LASF73:
	.string	"__sf"
.LASF94:
	.string	"_rand48"
.LASF101:
	.string	"_result_k"
.LASF6:
	.string	"long long unsigned int"
.LASF69:
	.string	"_asctime_buf"
.LASF76:
	.string	"__sFILE"
.LASF24:
	.string	"_wds"
.LASF90:
	.string	"__FILE"
.LASF85:
	.string	"_offset"
.LASF82:
	.string	"_ubuf"
.LASF59:
	.string	"_emergency"
.LASF27:
	.string	"__tm_sec"
.LASF120:
	.string	"suboptarg"
.LASF34:
	.string	"__tm_yday"
.LASF58:
	.string	"_inc"
.LASF42:
	.string	"_ind"
.LASF21:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF122:
	.string	"version_str"
.LASF16:
	.string	"__value"
.LASF102:
	.string	"_p5s"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF106:
	.string	"_mblen_state"
.LASF89:
	.string	"char"
.LASF30:
	.string	"__tm_mday"
.LASF70:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF121:
	.string	"version_num"
.LASF18:
	.string	"_flock_t"
.LASF13:
	.string	"__wch"
.LASF93:
	.string	"_iobs"
.LASF44:
	.string	"_on_exit_args_ptr"
.LASF81:
	.string	"_close"
.LASF60:
	.string	"__sdidinit"
.LASF48:
	.string	"__sFILE_fake"
.LASF55:
	.string	"_stdin"
.LASF64:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF46:
	.string	"_base"
.LASF103:
	.string	"_freelist"
.LASF96:
	.string	"_mult"
.LASF20:
	.string	"__ULong"
.LASF114:
	.string	"_wcrtomb_state"
.LASF50:
	.string	"_file"
.LASF63:
	.string	"__cleanup"
.LASF17:
	.string	"_mbstate_t"
.LASF99:
	.string	"_mprec"
.LASF35:
	.string	"__tm_isdst"
.LASF126:
	.string	"/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/nghttp2_version.c"
.LASF31:
	.string	"__tm_mon"
.LASF71:
	.string	"_atexit0"
.LASF124:
	.string	"nghttp2_info"
.LASF130:
	.string	"nghttp2_version"
.LASF41:
	.string	"_atexit"
.LASF87:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF127:
	.string	"/home/dieter/Development/ProjektEi/build/nghttp"
.LASF23:
	.string	"_sign"
.LASF52:
	.string	"_data"
.LASF14:
	.string	"__wchb"
.LASF119:
	.string	"_global_impure_ptr"
.LASF32:
	.string	"__tm_year"
.LASF104:
	.string	"_misc_reent"
.LASF68:
	.string	"_localtime_buf"
.LASF65:
	.string	"_cvtlen"
.LASF22:
	.string	"_maxwds"
.LASF109:
	.string	"_l64a_buf"
.LASF84:
	.string	"_blksize"
.LASF26:
	.string	"__tm"
.LASF86:
	.string	"_lock"
.LASF19:
	.string	"long unsigned int"
.LASF92:
	.string	"_niobs"
.LASF125:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"_dso_handle"
.LASF66:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF45:
	.string	"__sbuf"
.LASF91:
	.string	"_glue"
.LASF72:
	.string	"__sglue"
.LASF105:
	.string	"_strtok_last"
.LASF108:
	.string	"_mbtowc_state"
.LASF62:
	.string	"_locale"
.LASF37:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"_fntypes"
.LASF47:
	.string	"_size"
.LASF10:
	.string	"_off_t"
.LASF83:
	.string	"_nbuf"
.LASF61:
	.string	"_unspecified_locale_info"
.LASF118:
	.string	"__sf_fake_stderr"
.LASF88:
	.string	"_flags2"
.LASF40:
	.string	"_is_cxa"
.LASF95:
	.string	"_seed"
.LASF98:
	.string	"_rand_next"
.LASF128:
	.string	"__locale_t"
.LASF80:
	.string	"_seek"
.LASF57:
	.string	"_stderr"
.LASF12:
	.string	"wint_t"
.LASF116:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
