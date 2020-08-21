	.file	"bta_dm_ci.c"
	.text
.Ltext0:
	.section	.text.bta_dm_ci_io_req,"ax",@progbits
	.literal_position
	.align	4
	.global	bta_dm_ci_io_req
	.type	bta_dm_ci_io_req, @function
bta_dm_ci_io_req:
.LFB30:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/bta_dm_ci.c"
	.loc 1 48 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 51 0
	movi.n	a10, 0x12
	.loc 1 48 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
	.loc 1 51 0
	call8	malloc
.LVL1:
	beqz.n	a10, .L1
	.loc 1 52 0
	movi	a8, 0x111
	s16i	a8, a10, 0
.LVL2:
	.loc 1 53 0
	addi.n	a9, a10, 8
.LVL3:
	movi.n	a8, 6
	loop	a8, .L3_LEND
.LVL4:
.L3:
.LBB4:
.LBB5:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.loc 2 738 0
	l8ui	a11, a2, 0
	addi.n	a2, a2, 1
.LVL5:
	s8i	a11, a9, 0
.LVL6:
	addi.n	a9, a9, 1
	.L3_LEND:
.LBE5:
.LBE4:
	.loc 1 54 0
	s8i	a3, a10, 14
	.loc 1 55 0
	s8i	a4, a10, 15
	.loc 1 56 0
	s8i	a5, a10, 16
	.loc 1 57 0
	call8	bta_sys_sendmsg
.LVL7:
.L1:
	retw.n
.LFE30:
	.size	bta_dm_ci_io_req, .-bta_dm_ci_io_req
	.section	.text.bta_dm_ci_rmt_oob,"ax",@progbits
	.align	4
	.global	bta_dm_ci_rmt_oob
	.type	bta_dm_ci_rmt_oob, @function
bta_dm_ci_rmt_oob:
.LFB31:
	.loc 1 73 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 76 0
	movi.n	a10, 0x30
	call8	malloc
.LVL9:
	.loc 1 73 0
	extui	a2, a2, 0, 8
	.loc 1 76 0
	mov.n	a6, a10
.LVL10:
	beqz.n	a10, .L8
	.loc 1 77 0
	movi	a8, 0x112
	s16i	a8, a10, 0
.LVL11:
	.loc 1 78 0
	addi.n	a9, a10, 8
.LVL12:
	movi.n	a8, 6
	addi.n	a10, a10, 14
	loop	a8, .L10_LEND
.LVL13:
.L10:
.LBB8:
.LBB9:
	.loc 2 738 0
	l8ui	a11, a3, 0
	addi.n	a3, a3, 1
.LVL14:
	s8i	a11, a9, 0
.LVL15:
	addi.n	a9, a9, 1
	.L10_LEND:
.LBE9:
.LBE8:
	.loc 1 80 0
	movi.n	a12, 0x10
	mov.n	a11, a4
	.loc 1 79 0
	s8i	a2, a6, 46
	.loc 1 80 0
	call8	memcpy
.LVL16:
	.loc 1 81 0
	movi.n	a12, 0x10
	mov.n	a11, a5
	addi	a10, a6, 30
	call8	memcpy
.LVL17:
	.loc 1 82 0
	mov.n	a10, a6
	call8	bta_sys_sendmsg
.LVL18:
.L8:
	retw.n
.LFE31:
	.size	bta_dm_ci_rmt_oob, .-bta_dm_ci_rmt_oob
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/include/bta_dm_int.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x671
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xc
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x21
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x29
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0xc6
	.4byte	0xeb
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0xc7
	.4byte	0x7e
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x2
	.byte	0xc8
	.4byte	0x7e
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0xc9
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0xca
	.4byte	0x7e
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0xcb
	.4byte	0xeb
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x73
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0xfa
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0xcc
	.4byte	0xa6
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x132
	.4byte	0x118
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x128
	.uleb128 0xb
	.4byte	0xfa
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x89
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x13e
	.uleb128 0xb
	.4byte	0xfa
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x144
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF23
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x579
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x599
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x5a2
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x338
	.4byte	0x15f
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x346
	.4byte	0x16b
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x35d
	.4byte	0x177
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x32
	.4byte	0x39e
	.uleb128 0xe
	.4byte	.LASF31
	.2byte	0x100
	.uleb128 0xe
	.4byte	.LASF32
	.2byte	0x101
	.uleb128 0xe
	.4byte	.LASF33
	.2byte	0x102
	.uleb128 0xe
	.4byte	.LASF34
	.2byte	0x103
	.uleb128 0xe
	.4byte	.LASF35
	.2byte	0x104
	.uleb128 0xe
	.4byte	.LASF36
	.2byte	0x105
	.uleb128 0xe
	.4byte	.LASF37
	.2byte	0x106
	.uleb128 0xe
	.4byte	.LASF38
	.2byte	0x107
	.uleb128 0xe
	.4byte	.LASF39
	.2byte	0x108
	.uleb128 0xe
	.4byte	.LASF40
	.2byte	0x109
	.uleb128 0xe
	.4byte	.LASF41
	.2byte	0x10a
	.uleb128 0xe
	.4byte	.LASF42
	.2byte	0x10b
	.uleb128 0xe
	.4byte	.LASF43
	.2byte	0x10c
	.uleb128 0xe
	.4byte	.LASF44
	.2byte	0x10d
	.uleb128 0xe
	.4byte	.LASF45
	.2byte	0x10e
	.uleb128 0xe
	.4byte	.LASF46
	.2byte	0x10f
	.uleb128 0xe
	.4byte	.LASF47
	.2byte	0x110
	.uleb128 0xe
	.4byte	.LASF48
	.2byte	0x111
	.uleb128 0xe
	.4byte	.LASF49
	.2byte	0x112
	.uleb128 0xe
	.4byte	.LASF50
	.2byte	0x113
	.uleb128 0xe
	.4byte	.LASF51
	.2byte	0x114
	.uleb128 0xe
	.4byte	.LASF52
	.2byte	0x115
	.uleb128 0xe
	.4byte	.LASF53
	.2byte	0x116
	.uleb128 0xe
	.4byte	.LASF54
	.2byte	0x117
	.uleb128 0xe
	.4byte	.LASF55
	.2byte	0x118
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x119
	.uleb128 0xe
	.4byte	.LASF57
	.2byte	0x11a
	.uleb128 0xe
	.4byte	.LASF58
	.2byte	0x11b
	.uleb128 0xe
	.4byte	.LASF59
	.2byte	0x11c
	.uleb128 0xe
	.4byte	.LASF60
	.2byte	0x11d
	.uleb128 0xe
	.4byte	.LASF61
	.2byte	0x11e
	.uleb128 0xe
	.4byte	.LASF62
	.2byte	0x11f
	.uleb128 0xe
	.4byte	.LASF63
	.2byte	0x120
	.uleb128 0xe
	.4byte	.LASF64
	.2byte	0x121
	.uleb128 0xe
	.4byte	.LASF65
	.2byte	0x122
	.uleb128 0xe
	.4byte	.LASF66
	.2byte	0x123
	.uleb128 0xe
	.4byte	.LASF67
	.2byte	0x124
	.uleb128 0xe
	.4byte	.LASF68
	.2byte	0x125
	.uleb128 0xe
	.4byte	.LASF69
	.2byte	0x126
	.uleb128 0xe
	.4byte	.LASF70
	.2byte	0x127
	.uleb128 0xe
	.4byte	.LASF71
	.2byte	0x128
	.uleb128 0xe
	.4byte	.LASF72
	.2byte	0x129
	.uleb128 0xe
	.4byte	.LASF73
	.2byte	0x12a
	.uleb128 0xe
	.4byte	.LASF74
	.2byte	0x12b
	.uleb128 0xe
	.4byte	.LASF75
	.2byte	0x12c
	.uleb128 0xe
	.4byte	.LASF76
	.2byte	0x12d
	.uleb128 0xe
	.4byte	.LASF77
	.2byte	0x12e
	.uleb128 0xe
	.4byte	.LASF78
	.2byte	0x12f
	.uleb128 0xe
	.4byte	.LASF79
	.2byte	0x130
	.uleb128 0xe
	.4byte	.LASF80
	.2byte	0x131
	.uleb128 0xe
	.4byte	.LASF81
	.2byte	0x132
	.uleb128 0xe
	.4byte	.LASF82
	.2byte	0x133
	.uleb128 0xe
	.4byte	.LASF83
	.2byte	0x134
	.uleb128 0xe
	.4byte	.LASF84
	.2byte	0x135
	.uleb128 0xe
	.4byte	.LASF85
	.2byte	0x136
	.uleb128 0xe
	.4byte	.LASF86
	.2byte	0x137
	.uleb128 0xe
	.4byte	.LASF87
	.2byte	0x138
	.uleb128 0xe
	.4byte	.LASF88
	.2byte	0x139
	.uleb128 0xe
	.4byte	.LASF89
	.2byte	0x13a
	.uleb128 0xe
	.4byte	.LASF90
	.2byte	0x13b
	.uleb128 0xe
	.4byte	.LASF91
	.2byte	0x13c
	.uleb128 0xe
	.4byte	.LASF92
	.2byte	0x13d
	.uleb128 0xe
	.4byte	.LASF93
	.2byte	0x13e
	.uleb128 0xe
	.4byte	.LASF94
	.2byte	0x13f
	.uleb128 0xe
	.4byte	.LASF95
	.2byte	0x140
	.uleb128 0xe
	.4byte	.LASF96
	.2byte	0x141
	.uleb128 0xe
	.4byte	.LASF97
	.2byte	0x142
	.uleb128 0xe
	.4byte	.LASF98
	.2byte	0x143
	.uleb128 0xe
	.4byte	.LASF99
	.2byte	0x144
	.uleb128 0xe
	.4byte	.LASF100
	.2byte	0x145
	.byte	0
	.uleb128 0xf
	.byte	0x12
	.byte	0x7
	.2byte	0x146
	.4byte	0x3e9
	.uleb128 0x10
	.string	"hdr"
	.byte	0x7
	.2byte	0x147
	.4byte	0x101
	.byte	0
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x148
	.4byte	0x10c
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x149
	.4byte	0x183
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x14a
	.4byte	0x19b
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x14b
	.4byte	0x18f
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x14c
	.4byte	0x39e
	.uleb128 0xf
	.byte	0x30
	.byte	0x7
	.2byte	0x14f
	.4byte	0x43c
	.uleb128 0x10
	.string	"hdr"
	.byte	0x7
	.2byte	0x150
	.4byte	0x101
	.byte	0
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x151
	.4byte	0x10c
	.byte	0x8
	.uleb128 0x10
	.string	"c"
	.byte	0x7
	.2byte	0x152
	.4byte	0x13e
	.byte	0xe
	.uleb128 0x10
	.string	"r"
	.byte	0x7
	.2byte	0x153
	.4byte	0x13e
	.byte	0x1e
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x154
	.4byte	0x94
	.byte	0x2e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x155
	.4byte	0x3f5
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x2dd
	.byte	0x3
	.4byte	0x474
	.uleb128 0x13
	.string	"a"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0x128
	.uleb128 0x13
	.string	"b"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0x474
	.uleb128 0x14
	.string	"i"
	.byte	0x2
	.2byte	0x2df
	.4byte	0x57
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x47a
	.uleb128 0x15
	.4byte	0x89
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52f
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2d
	.4byte	0x128
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.byte	0x2d
	.4byte	0x183
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2d
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x1
	.byte	0x2e
	.4byte	0x18f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x1
	.byte	0x31
	.4byte	0x52f
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	0x448
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x35
	.4byte	0x512
	.uleb128 0x1b
	.4byte	0x45f
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	0x455
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1d
	.4byte	0x469
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL1
	.4byte	0x655
	.4byte	0x525
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x660
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3e9
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0x48
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61f
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x1
	.byte	0x48
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x48
	.4byte	0x128
	.4byte	.LLST5
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x48
	.4byte	0x128
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.byte	0x48
	.4byte	0x128
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF110
	.byte	0x1
	.byte	0x4a
	.4byte	0x61f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.4byte	0x448
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x4e
	.4byte	0x5c2
	.uleb128 0x1b
	.4byte	0x45f
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	0x455
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1d
	.4byte	0x469
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL9
	.4byte	0x655
	.4byte	0x5d6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL16
	.4byte	0x66b
	.4byte	0x5ef
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0x66b
	.4byte	0x60e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0x660
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x43c
	.uleb128 0x24
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x2cc
	.4byte	0x638
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x15
	.4byte	0x118
	.uleb128 0x24
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x2cd
	.4byte	0x650
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x118
	.uleb128 0x25
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x8
	.byte	0x65
	.uleb128 0x25
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x9
	.byte	0xe0
	.uleb128 0x26
	.4byte	.LASF119
	.4byte	.LASF119
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x7a
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"BTA_DM_API_BLE_SET_ADV_CONFIG_RAW_EVT"
.LASF58:
	.string	"BTA_DM_API_BLE_CONN_SCAN_PARAM_EVT"
.LASF113:
	.string	"malloc"
.LASF110:
	.string	"p_msg"
.LASF106:
	.string	"accept"
.LASF3:
	.string	"__uint8_t"
.LASF94:
	.string	"BTA_DM_API_REMOVE_ALL_ACL_EVT"
.LASF37:
	.string	"BTA_DM_API_REMOVE_ACL_EVT"
.LASF27:
	.string	"tBTM_OOB_DATA"
.LASF91:
	.string	"BTA_DM_API_ENABLE_TEST_MODE_EVT"
.LASF33:
	.string	"BTA_DM_API_SET_NAME_EVT"
.LASF104:
	.string	"auth_req"
.LASF8:
	.string	"long long unsigned int"
.LASF82:
	.string	"BTA_DM_API_BLE_MULTI_ADV_DATA_EVT"
.LASF17:
	.string	"data"
.LASF118:
	.string	"bdcpy"
.LASF107:
	.string	"tBTA_DM_CI_RMT_OOB"
.LASF61:
	.string	"BTA_DM_API_BLE_OBSERVE_EVT"
.LASF40:
	.string	"BTA_DM_API_SET_PIN_TYPE_EVT"
.LASF69:
	.string	"BTA_DM_API_BLE_ADV_PARAM_EVT"
.LASF80:
	.string	"BTA_DM_API_BLE_MULTI_ADV_ENB_EVT"
.LASF0:
	.string	"signed char"
.LASF32:
	.string	"BTA_DM_API_DISABLE_EVT"
.LASF47:
	.string	"BTA_DM_API_LOC_OOB_EVT"
.LASF23:
	.string	"long int"
.LASF44:
	.string	"BTA_DM_API_CONFIRM_EVT"
.LASF60:
	.string	"BTA_DM_API_BLE_SCAN_FIL_PARAM_EVT"
.LASF35:
	.string	"BTA_DM_ACL_CHANGE_EVT"
.LASF28:
	.string	"tBTA_IO_CAP"
.LASF38:
	.string	"BTA_DM_API_BOND_EVT"
.LASF119:
	.string	"memcpy"
.LASF65:
	.string	"BTA_DM_API_CLEAR_RAND_ADDR_EVT"
.LASF10:
	.string	"uint16_t"
.LASF63:
	.string	"BTA_DM_API_UPDATE_CONN_PARAM_EVT"
.LASF85:
	.string	"BTA_DM_API_BLE_ENABLE_BATCH_SCAN_EVT"
.LASF67:
	.string	"BTA_DM_API_LOCAL_PRIVACY_EVT"
.LASF102:
	.string	"io_cap"
.LASF15:
	.string	"offset"
.LASF59:
	.string	"BTA_DM_API_BLE_SCAN_PARAM_EVT"
.LASF68:
	.string	"BTA_DM_API_LOCAL_ICON_EVT"
.LASF20:
	.string	"BD_ADDR"
.LASF103:
	.string	"oob_data"
.LASF7:
	.string	"long long int"
.LASF66:
	.string	"BTA_DM_API_BLE_STOP_ADV_EVT"
.LASF42:
	.string	"BTA_DM_PM_BTM_STATUS_EVT"
.LASF30:
	.string	"tBTA_OOB_DATA"
.LASF6:
	.string	"unsigned int"
.LASF87:
	.string	"BTA_DM_API_BLE_READ_SCAN_REPORTS_EVT"
.LASF43:
	.string	"BTA_DM_PM_TIMER_EVT"
.LASF26:
	.string	"tBTM_AUTH_REQ"
.LASF24:
	.string	"long unsigned int"
.LASF115:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF55:
	.string	"BTA_DM_API_BLE_SEC_GRANT_EVT"
.LASF51:
	.string	"BTA_DM_API_ADD_BLEDEVICE_EVT"
.LASF83:
	.string	"BTA_DM_API_BLE_MULTI_ADV_DISABLE_EVT"
.LASF54:
	.string	"BTA_DM_API_BLE_CONFIRM_REPLY_EVT"
.LASF2:
	.string	"short int"
.LASF70:
	.string	"BTA_DM_API_BLE_ADV_PARAM_All_EVT"
.LASF62:
	.string	"BTA_DM_API_BLE_SCAN_EVT"
.LASF31:
	.string	"BTA_DM_API_ENABLE_EVT"
.LASF95:
	.string	"BTA_DM_API_REMOVE_DEVICE_EVT"
.LASF18:
	.string	"sizetype"
.LASF98:
	.string	"BTA_DM_API_BLE_READ_RSSI_EVT"
.LASF79:
	.string	"BTA_DM_API_SCAN_FILTER_ENABLE_EVT"
.LASF53:
	.string	"BTA_DM_API_BLE_SET_STATIC_PASSKEY_EVT"
.LASF71:
	.string	"BTA_DM_API_BLE_SET_ADV_CONFIG_EVT"
.LASF108:
	.string	"bta_dm_ci_io_req"
.LASF73:
	.string	"BTA_DM_API_BLE_SET_SCAN_RSP_EVT"
.LASF76:
	.string	"BTA_DM_API_SET_DATA_LENGTH_EVT"
.LASF52:
	.string	"BTA_DM_API_BLE_PASSKEY_REPLY_EVT"
.LASF49:
	.string	"BTA_DM_CI_RMT_OOB_EVT"
.LASF99:
	.string	"BTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_EVT"
.LASF46:
	.string	"BTA_DM_API_SET_ENCRYPTION_EVT"
.LASF96:
	.string	"BTA_DM_API_UPDATE_WHITE_LIST_EVT"
.LASF48:
	.string	"BTA_DM_CI_IO_REQ_EVT"
.LASF75:
	.string	"BTA_DM_API_BLE_BROADCAST_EVT"
.LASF21:
	.string	"BT_OCTET16"
.LASF29:
	.string	"tBTA_AUTH_REQ"
.LASF100:
	.string	"BTA_DM_MAX_EVT"
.LASF105:
	.string	"tBTA_DM_CI_IO_REQ"
.LASF112:
	.string	"bd_addr_null"
.LASF77:
	.string	"BTA_DM_API_CFG_FILTER_COND_EVT"
.LASF117:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF34:
	.string	"BTA_DM_API_SET_VISIBILITY_EVT"
.LASF13:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF92:
	.string	"BTA_DM_API_DISABLE_TEST_MODE_EVT"
.LASF109:
	.string	"bta_dm_ci_rmt_oob"
.LASF64:
	.string	"BTA_DM_API_SET_RAND_ADDR_EVT"
.LASF56:
	.string	"BTA_DM_API_BLE_SET_BG_CONN_TYPE"
.LASF90:
	.string	"BTA_DM_API_BLE_DISCONNECT_EVT"
.LASF11:
	.string	"UINT8"
.LASF12:
	.string	"BOOLEAN"
.LASF50:
	.string	"BTA_DM_API_ADD_BLEKEY_EVT"
.LASF78:
	.string	"BTA_DM_API_SCAN_FILTER_SETUP_EVT"
.LASF74:
	.string	"BTA_DM_API_BLE_SET_SCAN_RSP_RAW_EVT"
.LASF41:
	.string	"BTA_DM_API_PIN_REPLY_EVT"
.LASF84:
	.string	"BTA_DM_API_BLE_SETUP_STORAGE_EVT"
.LASF114:
	.string	"bta_sys_sendmsg"
.LASF22:
	.string	"char"
.LASF4:
	.string	"__uint16_t"
.LASF86:
	.string	"BTA_DM_API_BLE_DISABLE_BATCH_SCAN_EVT"
.LASF97:
	.string	"BTA_DM_API_BLE_READ_ADV_TX_POWER_EVT"
.LASF81:
	.string	"BTA_DM_API_BLE_MULTI_ADV_PARAM_UPD_EVT"
.LASF88:
	.string	"BTA_DM_API_BLE_TRACK_ADVERTISER_EVT"
.LASF39:
	.string	"BTA_DM_API_BOND_CANCEL_EVT"
.LASF45:
	.string	"BTA_DM_API_KEY_REQ_EVT"
.LASF116:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/bta_dm_ci.c"
.LASF16:
	.string	"layer_specific"
.LASF25:
	.string	"tBTM_IO_CAP"
.LASF93:
	.string	"BTA_DM_API_EXECUTE_CBACK_EVT"
.LASF89:
	.string	"BTA_DM_API_BLE_ENERGY_INFO_EVT"
.LASF9:
	.string	"uint8_t"
.LASF111:
	.string	"bd_addr_any"
.LASF19:
	.string	"BT_HDR"
.LASF101:
	.string	"bd_addr"
.LASF57:
	.string	"BTA_DM_API_BLE_CONN_PARAM_EVT"
.LASF36:
	.string	"BTA_DM_API_ADD_DEVICE_EVT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
