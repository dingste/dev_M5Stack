	.file	"bta_dm_ci.c"
	.text
.Ltext0:
	.section	.text.bta_dm_ci_io_req,"ax",@progbits
	.literal_position
	.align	4
	.global	bta_dm_ci_io_req
	.type	bta_dm_ci_io_req, @function
bta_dm_ci_io_req:
.LFB39:
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
	movi	a8, 0x112
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
	.loc 2 718 0
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
.LFE39:
	.size	bta_dm_ci_io_req, .-bta_dm_ci_io_req
	.section	.text.bta_dm_ci_rmt_oob,"ax",@progbits
	.align	4
	.global	bta_dm_ci_rmt_oob
	.type	bta_dm_ci_rmt_oob, @function
bta_dm_ci_rmt_oob:
.LFB40:
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
	movi	a8, 0x113
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
	.loc 2 718 0
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
.LFE40:
	.size	bta_dm_ci_rmt_oob, .-bta_dm_ci_rmt_oob
	.comm	deinit_semaphore,4,4
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/include/bta_dm_int.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x82a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0xc
	.4byte	.LASF177
	.4byte	.LASF178
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x1a
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0x22
	.4byte	0xde
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0xbf
	.4byte	0x12a
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x2
	.byte	0xc0
	.4byte	0x89
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x2
	.byte	0xc1
	.4byte	0x89
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x2
	.byte	0xc2
	.4byte	0x89
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2
	.byte	0xc3
	.4byte	0x89
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0xc4
	.4byte	0x12a
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x7e
	.4byte	0x139
	.uleb128 0xa
	.4byte	0xa8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x2
	.byte	0xc5
	.4byte	0xe5
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x12b
	.4byte	0x150
	.uleb128 0x9
	.4byte	0xbd
	.4byte	0x160
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x9
	.4byte	0xbd
	.4byte	0x176
	.uleb128 0xc
	.4byte	0xa8
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x13d
	.4byte	0x166
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.2byte	0x1c2
	.4byte	0x2aa
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x13
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1e
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1f
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x22
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x23
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x25
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x26
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x27
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x29
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x2a
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x2b
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x2d
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x2e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x579
	.4byte	0xbd
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x599
	.4byte	0xbd
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x5a2
	.4byte	0xbd
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.2byte	0x6ec
	.4byte	0x306
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x6
	.byte	0x58
	.4byte	0x9f
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x338
	.4byte	0x2aa
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x346
	.4byte	0x2b6
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x35d
	.4byte	0x2c2
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x8
	.byte	0x4f
	.4byte	0x306
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69
	.byte	0x9
	.byte	0x32
	.4byte	0x545
	.uleb128 0x11
	.4byte	.LASF90
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF91
	.2byte	0x101
	.uleb128 0x11
	.4byte	.LASF92
	.2byte	0x102
	.uleb128 0x11
	.4byte	.LASF93
	.2byte	0x103
	.uleb128 0x11
	.4byte	.LASF94
	.2byte	0x104
	.uleb128 0x11
	.4byte	.LASF95
	.2byte	0x105
	.uleb128 0x11
	.4byte	.LASF96
	.2byte	0x106
	.uleb128 0x11
	.4byte	.LASF97
	.2byte	0x107
	.uleb128 0x11
	.4byte	.LASF98
	.2byte	0x108
	.uleb128 0x11
	.4byte	.LASF99
	.2byte	0x109
	.uleb128 0x11
	.4byte	.LASF100
	.2byte	0x10a
	.uleb128 0x11
	.4byte	.LASF101
	.2byte	0x10b
	.uleb128 0x11
	.4byte	.LASF102
	.2byte	0x10c
	.uleb128 0x11
	.4byte	.LASF103
	.2byte	0x10d
	.uleb128 0x11
	.4byte	.LASF104
	.2byte	0x10e
	.uleb128 0x11
	.4byte	.LASF105
	.2byte	0x10f
	.uleb128 0x11
	.4byte	.LASF106
	.2byte	0x110
	.uleb128 0x11
	.4byte	.LASF107
	.2byte	0x111
	.uleb128 0x11
	.4byte	.LASF108
	.2byte	0x112
	.uleb128 0x11
	.4byte	.LASF109
	.2byte	0x113
	.uleb128 0x11
	.4byte	.LASF110
	.2byte	0x114
	.uleb128 0x11
	.4byte	.LASF111
	.2byte	0x115
	.uleb128 0x11
	.4byte	.LASF112
	.2byte	0x116
	.uleb128 0x11
	.4byte	.LASF113
	.2byte	0x117
	.uleb128 0x11
	.4byte	.LASF114
	.2byte	0x118
	.uleb128 0x11
	.4byte	.LASF115
	.2byte	0x119
	.uleb128 0x11
	.4byte	.LASF116
	.2byte	0x11a
	.uleb128 0x11
	.4byte	.LASF117
	.2byte	0x11b
	.uleb128 0x11
	.4byte	.LASF118
	.2byte	0x11c
	.uleb128 0x11
	.4byte	.LASF119
	.2byte	0x11d
	.uleb128 0x11
	.4byte	.LASF120
	.2byte	0x11e
	.uleb128 0x11
	.4byte	.LASF121
	.2byte	0x11f
	.uleb128 0x11
	.4byte	.LASF122
	.2byte	0x120
	.uleb128 0x11
	.4byte	.LASF123
	.2byte	0x121
	.uleb128 0x11
	.4byte	.LASF124
	.2byte	0x122
	.uleb128 0x11
	.4byte	.LASF125
	.2byte	0x123
	.uleb128 0x11
	.4byte	.LASF126
	.2byte	0x124
	.uleb128 0x11
	.4byte	.LASF127
	.2byte	0x125
	.uleb128 0x11
	.4byte	.LASF128
	.2byte	0x126
	.uleb128 0x11
	.4byte	.LASF129
	.2byte	0x127
	.uleb128 0x11
	.4byte	.LASF130
	.2byte	0x128
	.uleb128 0x11
	.4byte	.LASF131
	.2byte	0x129
	.uleb128 0x11
	.4byte	.LASF132
	.2byte	0x12a
	.uleb128 0x11
	.4byte	.LASF133
	.2byte	0x12b
	.uleb128 0x11
	.4byte	.LASF134
	.2byte	0x12c
	.uleb128 0x11
	.4byte	.LASF135
	.2byte	0x12d
	.uleb128 0x11
	.4byte	.LASF136
	.2byte	0x12e
	.uleb128 0x11
	.4byte	.LASF137
	.2byte	0x12f
	.uleb128 0x11
	.4byte	.LASF138
	.2byte	0x130
	.uleb128 0x11
	.4byte	.LASF139
	.2byte	0x131
	.uleb128 0x11
	.4byte	.LASF140
	.2byte	0x132
	.uleb128 0x11
	.4byte	.LASF141
	.2byte	0x133
	.uleb128 0x11
	.4byte	.LASF142
	.2byte	0x134
	.uleb128 0x11
	.4byte	.LASF143
	.2byte	0x135
	.uleb128 0x11
	.4byte	.LASF144
	.2byte	0x136
	.uleb128 0x11
	.4byte	.LASF145
	.2byte	0x137
	.uleb128 0x11
	.4byte	.LASF146
	.2byte	0x138
	.uleb128 0x11
	.4byte	.LASF147
	.2byte	0x139
	.uleb128 0x11
	.4byte	.LASF148
	.2byte	0x13a
	.uleb128 0x11
	.4byte	.LASF149
	.2byte	0x13b
	.uleb128 0x11
	.4byte	.LASF150
	.2byte	0x13c
	.uleb128 0x11
	.4byte	.LASF151
	.2byte	0x13d
	.uleb128 0x11
	.4byte	.LASF152
	.2byte	0x13e
	.uleb128 0x11
	.4byte	.LASF153
	.2byte	0x13f
	.uleb128 0x11
	.4byte	.LASF154
	.2byte	0x140
	.uleb128 0x11
	.4byte	.LASF155
	.2byte	0x141
	.uleb128 0x11
	.4byte	.LASF156
	.2byte	0x142
	.uleb128 0x11
	.4byte	.LASF157
	.2byte	0x143
	.uleb128 0x11
	.4byte	.LASF158
	.2byte	0x144
	.uleb128 0x11
	.4byte	.LASF159
	.2byte	0x145
	.uleb128 0x11
	.4byte	.LASF160
	.2byte	0x146
	.uleb128 0x11
	.4byte	.LASF161
	.2byte	0x147
	.byte	0
	.uleb128 0x12
	.byte	0x12
	.byte	0x9
	.2byte	0x14f
	.4byte	0x590
	.uleb128 0x13
	.string	"hdr"
	.byte	0x9
	.2byte	0x150
	.4byte	0x139
	.byte	0
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x151
	.4byte	0x144
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x152
	.4byte	0x311
	.byte	0xe
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x153
	.4byte	0x329
	.byte	0xf
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x154
	.4byte	0x31d
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x155
	.4byte	0x545
	.uleb128 0x12
	.byte	0x30
	.byte	0x9
	.2byte	0x158
	.4byte	0x5e3
	.uleb128 0x13
	.string	"hdr"
	.byte	0x9
	.2byte	0x159
	.4byte	0x139
	.byte	0
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x15a
	.4byte	0x144
	.byte	0x8
	.uleb128 0x13
	.string	"c"
	.byte	0x9
	.2byte	0x15b
	.4byte	0x176
	.byte	0xe
	.uleb128 0x13
	.string	"r"
	.byte	0x9
	.2byte	0x15c
	.4byte	0x176
	.byte	0x1e
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x15d
	.4byte	0xd3
	.byte	0x2e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x15e
	.4byte	0x59c
	.uleb128 0x15
	.4byte	.LASF179
	.byte	0x2
	.2byte	0x2c9
	.byte	0x3
	.4byte	0x61b
	.uleb128 0x16
	.string	"a"
	.byte	0x2
	.2byte	0x2c9
	.4byte	0x160
	.uleb128 0x16
	.string	"b"
	.byte	0x2
	.2byte	0x2c9
	.4byte	0x61b
	.uleb128 0x17
	.string	"i"
	.byte	0x2
	.2byte	0x2cb
	.4byte	0x57
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x621
	.uleb128 0x18
	.4byte	0xbd
	.uleb128 0x19
	.4byte	.LASF169
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d6
	.uleb128 0x1a
	.4byte	.LASF162
	.byte	0x1
	.byte	0x2d
	.4byte	0x160
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x1
	.byte	0x2d
	.4byte	0x311
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2d
	.4byte	0x329
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x1
	.byte	0x2e
	.4byte	0x31d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0x1
	.byte	0x31
	.4byte	0x6d6
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	0x5ef
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x35
	.4byte	0x6b9
	.uleb128 0x1e
	.4byte	0x606
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	0x5fc
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x20
	.4byte	0x610
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL1
	.4byte	0x80e
	.4byte	0x6cc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x23
	.4byte	.LVL7
	.4byte	0x819
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x590
	.uleb128 0x19
	.4byte	.LASF170
	.byte	0x1
	.byte	0x48
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c6
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x1
	.byte	0x48
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF162
	.byte	0x1
	.byte	0x48
	.4byte	0x160
	.4byte	.LLST5
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.byte	0x48
	.4byte	0x160
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"r"
	.byte	0x1
	.byte	0x48
	.4byte	0x160
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LASF171
	.byte	0x1
	.byte	0x4a
	.4byte	0x7c6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1d
	.4byte	0x5ef
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x4e
	.4byte	0x769
	.uleb128 0x1e
	.4byte	0x606
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	0x5fc
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x20
	.4byte	0x610
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL9
	.4byte	0x80e
	.4byte	0x77d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x824
	.4byte	0x796
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x824
	.4byte	0x7b5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL18
	.4byte	0x819
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e3
	.uleb128 0x27
	.4byte	.LASF172
	.byte	0x2
	.2byte	0x2b8
	.4byte	0x7df
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x18
	.4byte	0x150
	.uleb128 0x27
	.4byte	.LASF173
	.byte	0x2
	.2byte	0x2b9
	.4byte	0x7f7
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x150
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x4bc
	.4byte	0x335
	.uleb128 0x5
	.byte	0x3
	.4byte	deinit_semaphore
	.uleb128 0x29
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xa
	.byte	0x65
	.uleb128 0x29
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xb
	.byte	0xe0
	.uleb128 0x2a
	.4byte	.LASF181
	.4byte	.LASF181
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	.LFE39
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
	.4byte	.LFE40
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF118:
	.string	"BTA_DM_API_BLE_CONN_SCAN_PARAM_EVT"
.LASF174:
	.string	"malloc"
.LASF132:
	.string	"BTA_DM_API_BLE_SET_ADV_CONFIG_RAW_EVT"
.LASF171:
	.string	"p_msg"
.LASF167:
	.string	"accept"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF106:
	.string	"BTA_DM_API_LOC_OOB_EVT"
.LASF3:
	.string	"__uint8_t"
.LASF155:
	.string	"BTA_DM_API_REMOVE_ALL_ACL_EVT"
.LASF96:
	.string	"BTA_DM_API_REMOVE_ACL_EVT"
.LASF77:
	.string	"tBTM_OOB_DATA"
.LASF152:
	.string	"BTA_DM_API_ENABLE_TEST_MODE_EVT"
.LASF92:
	.string	"BTA_DM_API_SET_NAME_EVT"
.LASF165:
	.string	"auth_req"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF143:
	.string	"BTA_DM_API_BLE_MULTI_ADV_DATA_EVT"
.LASF24:
	.string	"data"
.LASF179:
	.string	"bdcpy"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF168:
	.string	"tBTA_DM_CI_RMT_OOB"
.LASF121:
	.string	"BTA_DM_API_BLE_OBSERVE_EVT"
.LASF99:
	.string	"BTA_DM_API_SET_PIN_TYPE_EVT"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF129:
	.string	"BTA_DM_API_BLE_ADV_PARAM_EVT"
.LASF108:
	.string	"BTA_DM_CI_IO_REQ_EVT"
.LASF141:
	.string	"BTA_DM_API_BLE_MULTI_ADV_ENB_EVT"
.LASF0:
	.string	"signed char"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF147:
	.string	"BTA_DM_API_BLE_DISABLE_BATCH_SCAN_EVT"
.LASF9:
	.string	"long long unsigned int"
.LASF91:
	.string	"BTA_DM_API_DISABLE_EVT"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF30:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF13:
	.string	"long int"
.LASF103:
	.string	"BTA_DM_API_CONFIRM_EVT"
.LASF120:
	.string	"BTA_DM_API_BLE_SCAN_FIL_PARAM_EVT"
.LASF94:
	.string	"BTA_DM_ACL_CHANGE_EVT"
.LASF86:
	.string	"tBTA_IO_CAP"
.LASF97:
	.string	"BTA_DM_API_BOND_EVT"
.LASF181:
	.string	"memcpy"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF125:
	.string	"BTA_DM_API_CLEAR_RAND_ADDR_EVT"
.LASF89:
	.string	"SemaphoreHandle_t"
.LASF11:
	.string	"uint16_t"
.LASF123:
	.string	"BTA_DM_API_UPDATE_CONN_PARAM_EVT"
.LASF79:
	.string	"BTM_PM_STS_HOLD"
.LASF146:
	.string	"BTA_DM_API_BLE_ENABLE_BATCH_SCAN_EVT"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF127:
	.string	"BTA_DM_API_LOCAL_PRIVACY_EVT"
.LASF137:
	.string	"BTA_DM_API_BLE_SET_LONG_ADV_EVT"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF163:
	.string	"io_cap"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF82:
	.string	"BTM_PM_STS_SSR"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF22:
	.string	"offset"
.LASF119:
	.string	"BTA_DM_API_BLE_SCAN_PARAM_EVT"
.LASF128:
	.string	"BTA_DM_API_LOCAL_ICON_EVT"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF26:
	.string	"BD_ADDR"
.LASF164:
	.string	"oob_data"
.LASF74:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF173:
	.string	"bd_addr_null"
.LASF126:
	.string	"BTA_DM_API_BLE_STOP_ADV_EVT"
.LASF6:
	.string	"__uint32_t"
.LASF101:
	.string	"BTA_DM_PM_BTM_STATUS_EVT"
.LASF88:
	.string	"tBTA_OOB_DATA"
.LASF7:
	.string	"unsigned int"
.LASF148:
	.string	"BTA_DM_API_BLE_READ_SCAN_REPORTS_EVT"
.LASF34:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF102:
	.string	"BTA_DM_PM_TIMER_EVT"
.LASF31:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF76:
	.string	"tBTM_AUTH_REQ"
.LASF25:
	.string	"BT_HDR"
.LASF15:
	.string	"long unsigned int"
.LASF176:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF78:
	.string	"BTM_PM_STS_ACTIVE"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF21:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF134:
	.string	"BTA_DM_API_BLE_SET_SCAN_RSP_RAW_EVT"
.LASF18:
	.string	"UINT32"
.LASF115:
	.string	"BTA_DM_API_BLE_SEC_GRANT_EVT"
.LASF111:
	.string	"BTA_DM_API_ADD_BLEDEVICE_EVT"
.LASF144:
	.string	"BTA_DM_API_BLE_MULTI_ADV_DISABLE_EVT"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF114:
	.string	"BTA_DM_API_BLE_CONFIRM_REPLY_EVT"
.LASF2:
	.string	"short int"
.LASF130:
	.string	"BTA_DM_API_BLE_ADV_PARAM_All_EVT"
.LASF122:
	.string	"BTA_DM_API_BLE_SCAN_EVT"
.LASF8:
	.string	"long long int"
.LASF17:
	.string	"UINT8"
.LASF90:
	.string	"BTA_DM_API_ENABLE_EVT"
.LASF84:
	.string	"BTM_PM_STS_ERROR"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF14:
	.string	"sizetype"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF159:
	.string	"BTA_DM_API_BLE_READ_RSSI_EVT"
.LASF140:
	.string	"BTA_DM_API_SCAN_FILTER_ENABLE_EVT"
.LASF113:
	.string	"BTA_DM_API_BLE_SET_STATIC_PASSKEY_EVT"
.LASF131:
	.string	"BTA_DM_API_BLE_SET_ADV_CONFIG_EVT"
.LASF169:
	.string	"bta_dm_ci_io_req"
.LASF133:
	.string	"BTA_DM_API_BLE_SET_SCAN_RSP_EVT"
.LASF136:
	.string	"BTA_DM_API_SET_DATA_LENGTH_EVT"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF112:
	.string	"BTA_DM_API_BLE_PASSKEY_REPLY_EVT"
.LASF109:
	.string	"BTA_DM_CI_RMT_OOB_EVT"
.LASF160:
	.string	"BTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_EVT"
.LASF105:
	.string	"BTA_DM_API_SET_ENCRYPTION_EVT"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF157:
	.string	"BTA_DM_API_UPDATE_WHITE_LIST_EVT"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF135:
	.string	"BTA_DM_API_BLE_BROADCAST_EVT"
.LASF27:
	.string	"BT_OCTET16"
.LASF87:
	.string	"tBTA_AUTH_REQ"
.LASF180:
	.string	"deinit_semaphore"
.LASF161:
	.string	"BTA_DM_MAX_EVT"
.LASF166:
	.string	"tBTA_DM_CI_IO_REQ"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF138:
	.string	"BTA_DM_API_CFG_FILTER_COND_EVT"
.LASF178:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF93:
	.string	"BTA_DM_API_SET_VISIBILITY_EVT"
.LASF20:
	.string	"_Bool"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF1:
	.string	"unsigned char"
.LASF153:
	.string	"BTA_DM_API_DISABLE_TEST_MODE_EVT"
.LASF170:
	.string	"bta_dm_ci_rmt_oob"
.LASF124:
	.string	"BTA_DM_API_SET_RAND_ADDR_EVT"
.LASF32:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF116:
	.string	"BTA_DM_API_BLE_SET_BG_CONN_TYPE"
.LASF151:
	.string	"BTA_DM_API_BLE_DISCONNECT_EVT"
.LASF80:
	.string	"BTM_PM_STS_SNIFF"
.LASF19:
	.string	"BOOLEAN"
.LASF81:
	.string	"BTM_PM_STS_PARK"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF110:
	.string	"BTA_DM_API_ADD_BLEKEY_EVT"
.LASF139:
	.string	"BTA_DM_API_SCAN_FILTER_SETUP_EVT"
.LASF85:
	.string	"QueueHandle_t"
.LASF33:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF12:
	.string	"uint32_t"
.LASF100:
	.string	"BTA_DM_API_PIN_REPLY_EVT"
.LASF145:
	.string	"BTA_DM_API_BLE_SETUP_STORAGE_EVT"
.LASF175:
	.string	"bta_sys_sendmsg"
.LASF16:
	.string	"char"
.LASF4:
	.string	"__uint16_t"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF158:
	.string	"BTA_DM_API_BLE_READ_ADV_TX_POWER_EVT"
.LASF107:
	.string	"BTA_DM_API_OOB_REPLY_EVT"
.LASF142:
	.string	"BTA_DM_API_BLE_MULTI_ADV_PARAM_UPD_EVT"
.LASF149:
	.string	"BTA_DM_API_BLE_TRACK_ADVERTISER_EVT"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF98:
	.string	"BTA_DM_API_BOND_CANCEL_EVT"
.LASF104:
	.string	"BTA_DM_API_KEY_REQ_EVT"
.LASF177:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/bta_dm_ci.c"
.LASF156:
	.string	"BTA_DM_API_REMOVE_DEVICE_EVT"
.LASF23:
	.string	"layer_specific"
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF75:
	.string	"tBTM_IO_CAP"
.LASF154:
	.string	"BTA_DM_API_EXECUTE_CBACK_EVT"
.LASF150:
	.string	"BTA_DM_API_BLE_ENERGY_INFO_EVT"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF10:
	.string	"uint8_t"
.LASF172:
	.string	"bd_addr_any"
.LASF83:
	.string	"BTM_PM_STS_PENDING"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF28:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF162:
	.string	"bd_addr"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF117:
	.string	"BTA_DM_API_BLE_CONN_PARAM_EVT"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF95:
	.string	"BTA_DM_API_ADD_DEVICE_EVT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
