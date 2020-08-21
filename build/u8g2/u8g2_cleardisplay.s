	.file	"u8g2_cleardisplay.c"
	.text
.Ltext0:
	.section	.text.u8g2_ClearDisplay,"ax",@progbits
	.align	4
	.global	u8g2_ClearDisplay
	.type	u8g2_ClearDisplay, @function
u8g2_ClearDisplay:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_cleardisplay.c"
	.loc 1 40 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 41 0
	mov.n	a10, a2
	call8	u8g2_FirstPage
.LVL1:
.L2:
	.loc 1 43 0 discriminator 1
	mov.n	a10, a2
	call8	u8g2_NextPage
.LVL2:
	bnez.n	a10, .L2
	.loc 1 52 0
	mov.n	a11, a10
	mov.n	a10, a2
	call8	u8g2_SetBufferCurrTileRow
.LVL3:
	retw.n
.LFE0:
	.size	u8g2_ClearDisplay, .-u8g2_ClearDisplay
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.file 5 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x810
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0xc3
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.4byte	0x1c7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x148
	.4byte	0x32c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x149
	.4byte	0x301
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2cc
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2cc
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2cc
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2cc
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x14e
	.4byte	0xaa
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x14f
	.4byte	0x337
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x150
	.4byte	0x9f
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x151
	.4byte	0x94
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x152
	.4byte	0x94
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x153
	.4byte	0x94
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x156
	.4byte	0x94
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x158
	.4byte	0x94
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x159
	.4byte	0x94
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15a
	.4byte	0x94
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x15b
	.4byte	0x94
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x15c
	.4byte	0x94
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x15d
	.4byte	0x94
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x4
	.byte	0xc4
	.4byte	0x1d2
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.4byte	0x2cc
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0xe1
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0xe2
	.4byte	0x94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe4
	.4byte	0x94
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe5
	.4byte	0x94
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xe6
	.4byte	0x94
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xe7
	.4byte	0x94
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xee
	.4byte	0x94
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0xf2
	.4byte	0x94
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0xf5
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.byte	0xff
	.4byte	0x94
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x102
	.4byte	0x94
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x108
	.4byte	0x94
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x10a
	.4byte	0x94
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x10d
	.4byte	0x94
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x10e
	.4byte	0x94
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x110
	.4byte	0x94
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x111
	.4byte	0x94
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x119
	.4byte	0x9f
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x11a
	.4byte	0x9f
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x4
	.byte	0xc7
	.4byte	0x2d7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2dd
	.uleb128 0xb
	.4byte	0x94
	.4byte	0x2fb
	.uleb128 0xc
	.4byte	0x2fb
	.uleb128 0xc
	.4byte	0x94
	.uleb128 0xc
	.4byte	0x94
	.uleb128 0xc
	.4byte	0xb5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x4
	.byte	0xc8
	.4byte	0x30c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x312
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x326
	.uleb128 0xc
	.4byte	0x2fb
	.uleb128 0xc
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x332
	.uleb128 0xd
	.4byte	0x1c7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33d
	.uleb128 0xd
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x5
	.byte	0xb2
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x5
	.byte	0xbc
	.4byte	0x358
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x94
	.byte	0x5
	.2byte	0x11b
	.4byte	0x512
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x11d
	.4byte	0xb7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x11e
	.4byte	0x5af
	.byte	0x2c
	.uleb128 0xe
	.string	"cb"
	.byte	0x5
	.2byte	0x11f
	.4byte	0x789
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x122
	.4byte	0x326
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x123
	.4byte	0x94
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x124
	.4byte	0x94
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x127
	.4byte	0x342
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x128
	.4byte	0x342
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x129
	.4byte	0x342
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x12f
	.4byte	0x342
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x130
	.4byte	0x342
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x133
	.4byte	0x342
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x134
	.4byte	0x342
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x139
	.4byte	0x342
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x13a
	.4byte	0x342
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x13b
	.4byte	0x342
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x13c
	.4byte	0x342
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x140
	.4byte	0x342
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x141
	.4byte	0x342
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x142
	.4byte	0x342
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x143
	.4byte	0x342
	.byte	0x56
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x148
	.4byte	0x337
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x14c
	.4byte	0x768
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x14d
	.4byte	0x75c
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x14e
	.4byte	0x6b7
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x152
	.4byte	0x94
	.byte	0x8c
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x155
	.4byte	0x94
	.byte	0x8d
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x156
	.4byte	0x89
	.byte	0x8e
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x157
	.4byte	0x89
	.byte	0x8f
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x159
	.4byte	0x89
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x15b
	.4byte	0x94
	.byte	0x91
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x15d
	.4byte	0x94
	.byte	0x92
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x161
	.4byte	0x94
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x5
	.byte	0xbd
	.4byte	0x51d
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0xc
	.byte	0x5
	.2byte	0x111
	.4byte	0x552
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x113
	.4byte	0x552
	.byte	0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x114
	.4byte	0x574
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x115
	.4byte	0x57f
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x5
	.byte	0xbf
	.4byte	0x55d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x563
	.uleb128 0xf
	.4byte	0x56e
	.uleb128 0xc
	.4byte	0x56e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x34d
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x5
	.byte	0xc0
	.4byte	0x55d
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x5
	.byte	0xc1
	.4byte	0x58a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x590
	.uleb128 0xf
	.4byte	0x5af
	.uleb128 0xc
	.4byte	0x56e
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0xc
	.4byte	0x94
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x5
	.byte	0xc2
	.4byte	0x58a
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x18
	.byte	0x5
	.byte	0xc8
	.4byte	0x6b7
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x5
	.byte	0xcb
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x5
	.byte	0xcc
	.4byte	0x94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x5
	.byte	0xcd
	.4byte	0x94
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x5
	.byte	0xce
	.4byte	0x94
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x5
	.byte	0xd1
	.4byte	0x94
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x5
	.byte	0xd2
	.4byte	0x94
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.byte	0xd3
	.4byte	0x94
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x5
	.byte	0xd4
	.4byte	0x94
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x5
	.byte	0xd5
	.4byte	0x94
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x5
	.byte	0xd8
	.4byte	0x89
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x5
	.byte	0xd9
	.4byte	0x89
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0xda
	.4byte	0x89
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x5
	.byte	0xdb
	.4byte	0x89
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x5
	.byte	0xde
	.4byte	0x89
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.byte	0xdf
	.4byte	0x89
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x5
	.byte	0xe0
	.4byte	0x89
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x5
	.byte	0xe1
	.4byte	0x89
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x5
	.byte	0xe4
	.4byte	0x9f
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x5
	.byte	0xe5
	.4byte	0x9f
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x5
	.byte	0xe9
	.4byte	0x9f
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x5
	.byte	0xec
	.4byte	0x5ba
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x14
	.byte	0x5
	.byte	0xef
	.4byte	0x75c
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x5
	.byte	0xf1
	.4byte	0x337
	.byte	0
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x5
	.byte	0xf3
	.4byte	0x342
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x5
	.byte	0xf4
	.4byte	0x342
	.byte	0x6
	.uleb128 0x10
	.string	"x"
	.byte	0x5
	.byte	0xf6
	.4byte	0x89
	.byte	0x8
	.uleb128 0x10
	.string	"y"
	.byte	0x5
	.byte	0xf7
	.4byte	0x89
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.byte	0xf8
	.4byte	0x89
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x5
	.byte	0xf9
	.4byte	0x89
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x5
	.byte	0xfb
	.4byte	0x94
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x5
	.byte	0xfc
	.4byte	0x94
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x5
	.byte	0xfd
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x5
	.byte	0xfe
	.4byte	0x94
	.byte	0xf
	.uleb128 0xe
	.string	"dir"
	.byte	0x5
	.2byte	0x100
	.4byte	0x94
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x103
	.4byte	0x6c2
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x5
	.2byte	0x118
	.4byte	0x774
	.uleb128 0xa
	.byte	0x4
	.4byte	0x77a
	.uleb128 0xb
	.4byte	0x342
	.4byte	0x789
	.uleb128 0xc
	.4byte	0x56e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x78f
	.uleb128 0xd
	.4byte	0x512
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0x1
	.byte	0x27
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ef
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0x27
	.4byte	0x56e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0x7ef
	.4byte	0x7ca
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x7fb
	.4byte	0x7de
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x807
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x5
	.2byte	0x4ad
	.uleb128 0x17
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x5
	.2byte	0x4ae
	.uleb128 0x17
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x4ab
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF121:
	.string	"start_pos_unicode"
.LASF42:
	.string	"reset_pulse_width_ms"
.LASF99:
	.string	"u8g2_update_page_win_cb"
.LASF64:
	.string	"tile_buf_ptr"
.LASF1:
	.string	"__uint8_t"
.LASF20:
	.string	"byte_cb"
.LASF133:
	.string	"u8g2_font_decode_t"
.LASF103:
	.string	"glyph_cnt"
.LASF95:
	.string	"update_dimension"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF43:
	.string	"post_reset_wait_ms"
.LASF104:
	.string	"bbx_mode"
.LASF29:
	.string	"utf8_state"
.LASF114:
	.string	"y_offset"
.LASF30:
	.string	"gpio_result"
.LASF109:
	.string	"bits_per_char_x"
.LASF110:
	.string	"bits_per_char_y"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF59:
	.string	"u8g2_uint_t"
.LASF26:
	.string	"is_font_inverse_mode"
.LASF18:
	.string	"display_cb"
.LASF117:
	.string	"ascent_para"
.LASF89:
	.string	"glyph_x_offset"
.LASF41:
	.string	"pre_chip_disable_wait_ns"
.LASF96:
	.string	"update_page_win"
.LASF113:
	.string	"max_char_height"
.LASF13:
	.string	"uint16_t"
.LASF17:
	.string	"next_cb"
.LASF58:
	.string	"u8x8_char_cb"
.LASF21:
	.string	"gpio_and_delay_cb"
.LASF122:
	.string	"u8g2_font_info_t"
.LASF88:
	.string	"font_ref_descent"
.LASF35:
	.string	"u8x8_display_info_t"
.LASF7:
	.string	"__uint32_t"
.LASF105:
	.string	"bits_per_0"
.LASF82:
	.string	"font_calc_vref"
.LASF87:
	.string	"font_ref_ascent"
.LASF44:
	.string	"sda_setup_time_ns"
.LASF101:
	.string	"u8g2_draw_ll_hvline_cb"
.LASF139:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8g2_cleardisplay.c"
.LASF116:
	.string	"descent_g"
.LASF107:
	.string	"bits_per_char_width"
.LASF34:
	.string	"debounce_result_msg"
.LASF8:
	.string	"unsigned int"
.LASF68:
	.string	"pixel_buf_height"
.LASF130:
	.string	"is_transparent"
.LASF27:
	.string	"i2c_address"
.LASF60:
	.string	"u8g2_t"
.LASF138:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF124:
	.string	"decode_ptr"
.LASF72:
	.string	"width"
.LASF65:
	.string	"tile_buf_height"
.LASF6:
	.string	"short unsigned int"
.LASF85:
	.string	"is_page_clip_window_intersection"
.LASF90:
	.string	"bitmap_transparency"
.LASF78:
	.string	"clip_x0"
.LASF79:
	.string	"clip_x1"
.LASF97:
	.string	"draw_l90"
.LASF32:
	.string	"debounce_last_pin_state"
.LASF142:
	.string	"u8g2"
.LASF118:
	.string	"descent_para"
.LASF16:
	.string	"display_info"
.LASF84:
	.string	"font_info"
.LASF45:
	.string	"sck_pulse_width_ns"
.LASF36:
	.string	"u8x8_struct"
.LASF53:
	.string	"default_x_offset"
.LASF24:
	.string	"encoding"
.LASF86:
	.string	"font_height_mode"
.LASF119:
	.string	"start_pos_upper_A"
.LASF54:
	.string	"flipmode_x_offset"
.LASF106:
	.string	"bits_per_1"
.LASF111:
	.string	"bits_per_delta_x"
.LASF129:
	.string	"decode_bit_pos"
.LASF128:
	.string	"glyph_height"
.LASF69:
	.string	"pixel_curr_row"
.LASF19:
	.string	"cad_cb"
.LASF80:
	.string	"clip_y0"
.LASF81:
	.string	"clip_y1"
.LASF112:
	.string	"max_char_width"
.LASF76:
	.string	"user_y0"
.LASF50:
	.string	"write_pulse_width_ns"
.LASF70:
	.string	"buf_y0"
.LASF71:
	.string	"buf_y1"
.LASF25:
	.string	"x_offset"
.LASF52:
	.string	"tile_height"
.LASF63:
	.string	"ll_hvline"
.LASF131:
	.string	"fg_color"
.LASF135:
	.string	"u8g2_FirstPage"
.LASF57:
	.string	"u8x8_msg_cb"
.LASF94:
	.string	"u8g2_cb_struct"
.LASF127:
	.string	"glyph_width"
.LASF3:
	.string	"unsigned char"
.LASF115:
	.string	"ascent_A"
.LASF92:
	.string	"is_auto_page_clear"
.LASF67:
	.string	"pixel_buf_width"
.LASF4:
	.string	"short int"
.LASF62:
	.string	"u8x8"
.LASF74:
	.string	"user_x0"
.LASF75:
	.string	"user_x1"
.LASF136:
	.string	"u8g2_NextPage"
.LASF49:
	.string	"data_setup_time_ns"
.LASF61:
	.string	"u8g2_struct"
.LASF100:
	.string	"u8g2_draw_l90_cb"
.LASF48:
	.string	"i2c_bus_clock_100kHz"
.LASF14:
	.string	"uint32_t"
.LASF102:
	.string	"_u8g2_font_info_t"
.LASF66:
	.string	"tile_curr_row"
.LASF93:
	.string	"u8g2_cb_t"
.LASF47:
	.string	"spi_mode"
.LASF38:
	.string	"chip_enable_level"
.LASF83:
	.string	"font_decode"
.LASF108:
	.string	"bits_per_char_height"
.LASF5:
	.string	"__uint16_t"
.LASF91:
	.string	"draw_color"
.LASF40:
	.string	"post_chip_enable_wait_ns"
.LASF140:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF98:
	.string	"u8g2_update_dimension_cb"
.LASF125:
	.string	"target_x"
.LASF126:
	.string	"target_y"
.LASF15:
	.string	"u8x8_t"
.LASF22:
	.string	"bus_clock"
.LASF77:
	.string	"user_y1"
.LASF141:
	.string	"u8g2_ClearDisplay"
.LASF123:
	.string	"_u8g2_font_decode_t"
.LASF11:
	.string	"int8_t"
.LASF33:
	.string	"debounce_state"
.LASF39:
	.string	"chip_disable_level"
.LASF23:
	.string	"font"
.LASF120:
	.string	"start_pos_lower_a"
.LASF12:
	.string	"uint8_t"
.LASF134:
	.string	"u8g2_font_calc_vref_fnptr"
.LASF28:
	.string	"i2c_started"
.LASF55:
	.string	"pixel_width"
.LASF132:
	.string	"bg_color"
.LASF51:
	.string	"tile_width"
.LASF31:
	.string	"debounce_default_pin_state"
.LASF137:
	.string	"u8g2_SetBufferCurrTileRow"
.LASF37:
	.string	"u8x8_display_info_struct"
.LASF73:
	.string	"height"
.LASF56:
	.string	"pixel_height"
.LASF46:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
