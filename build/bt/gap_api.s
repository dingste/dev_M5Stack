	.file	"gap_api.c"
	.text
.Ltext0:
	.section	.text.GAP_SetTraceLevel,"ax",@progbits
	.literal_position
	.literal .LC0, gap_cb
	.align	4
	.global	GAP_SetTraceLevel
	.type	GAP_SetTraceLevel, @function
GAP_SetTraceLevel:
.LFB30:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/gap/gap_api.c"
	.loc 1 38 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 38 0
	extui	a2, a2, 0, 8
	.loc 1 39 0
	movi	a9, 0xff
	l32r	a8, .LC0
	beq	a2, a9, .L2
	.loc 1 40 0
	s8i	a2, a8, 40
.L2:
	.loc 1 44 0
	l8ui	a2, a8, 40
.LVL1:
	retw.n
.LFE30:
	.size	GAP_SetTraceLevel, .-GAP_SetTraceLevel
	.section	.text.GAP_Init,"ax",@progbits
	.literal_position
	.literal .LC1, gap_cb
	.align	4
	.global	GAP_Init
	.type	GAP_Init, @function
GAP_Init:
.LFB31:
	.loc 1 59 0
	entry	sp, 32
.LCFI1:
	.loc 1 60 0
	l32r	a2, .LC1
	movi	a12, 0x684
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL2:
	.loc 1 63 0
	movi.n	a8, 2
	s8i	a8, a2, 40
	.loc 1 69 0
	call8	gap_conn_init
.LVL3:
	.loc 1 73 0
	call8	gap_attr_db_init
.LVL4:
	retw.n
.LFE31:
	.size	GAP_Init, .-GAP_Init
	.comm	gap_cb,1668,4
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/hcidefs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/l2c_api.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/gap_api.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_ble_api.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/gap/include/gap_int.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbc2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF205
	.byte	0xc
	.4byte	.LASF206
	.4byte	.LASF207
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xad
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xb8
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x29
	.4byte	0xef
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x13b
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc7
	.4byte	0xad
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0xad
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0xad
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0xca
	.4byte	0xad
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0xcb
	.4byte	0x13b
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0xa2
	.4byte	0x14a
	.uleb128 0xb
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0xcc
	.4byte	0xf6
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x132
	.4byte	0x161
	.uleb128 0xa
	.4byte	0xc3
	.4byte	0x171
	.uleb128 0xd
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0xe
	.byte	0x18
	.byte	0x4
	.2byte	0x16c
	.4byte	0x1dc
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x16d
	.4byte	0xc3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x16e
	.4byte	0xc3
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x16f
	.4byte	0xd9
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x170
	.4byte	0xd9
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x171
	.4byte	0xd9
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x172
	.4byte	0xd9
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x173
	.4byte	0xd9
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x174
	.4byte	0x177
	.uleb128 0x10
	.4byte	0x1f3
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.byte	0x1f
	.4byte	0x1fe
	.uleb128 0x12
	.4byte	.LASF36
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0xe
	.byte	0x10
	.byte	0x6
	.2byte	0x56c
	.4byte	0x260
	.uleb128 0x13
	.string	"id"
	.byte	0x6
	.2byte	0x56d
	.4byte	0xc3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x56e
	.4byte	0xc3
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x56f
	.4byte	0xce
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x570
	.4byte	0xd9
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x571
	.4byte	0xd9
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x572
	.4byte	0xd9
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x573
	.4byte	0x209
	.uleb128 0x10
	.4byte	0x277
	.uleb128 0x11
	.4byte	0xce
	.byte	0
	.uleb128 0x10
	.4byte	0x287
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0xaa
	.4byte	0x1e8
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.2byte	0x1c2
	.4byte	0x3ba
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1b
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1d
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1e
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1f
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x22
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x23
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x25
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x27
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x2a
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x2b
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x2d
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x2e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14a
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.2byte	0x6ec
	.4byte	0x3f8
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.byte	0xa
	.byte	0x8
	.byte	0x86
	.4byte	0x449
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x8
	.byte	0x8b
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x8
	.byte	0x8d
	.4byte	0xc3
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x8
	.byte	0x8e
	.4byte	0xc3
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x8
	.byte	0x8f
	.4byte	0xce
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x8
	.byte	0x90
	.4byte	0xce
	.byte	0x6
	.uleb128 0x9
	.string	"mps"
	.byte	0x8
	.byte	0x91
	.4byte	0xce
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x8
	.byte	0x92
	.4byte	0x3f8
	.uleb128 0x7
	.byte	0x48
	.byte	0x8
	.byte	0x98
	.4byte	0x505
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x8
	.byte	0x99
	.4byte	0xce
	.byte	0
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x8
	.byte	0x9a
	.4byte	0xe4
	.byte	0x2
	.uleb128 0x9
	.string	"mtu"
	.byte	0x8
	.byte	0x9b
	.4byte	0xce
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x8
	.byte	0x9c
	.4byte	0xe4
	.byte	0x6
	.uleb128 0x9
	.string	"qos"
	.byte	0x8
	.byte	0x9d
	.4byte	0x1dc
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x8
	.byte	0x9e
	.4byte	0xe4
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x8
	.byte	0x9f
	.4byte	0xce
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x8
	.byte	0xa0
	.4byte	0xe4
	.byte	0x24
	.uleb128 0x9
	.string	"fcr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x449
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x8
	.byte	0xa2
	.4byte	0xe4
	.byte	0x30
	.uleb128 0x9
	.string	"fcs"
	.byte	0x8
	.byte	0xa3
	.4byte	0xc3
	.byte	0x31
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x8
	.byte	0xa4
	.4byte	0xe4
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x8
	.byte	0xa5
	.4byte	0x260
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x8
	.byte	0xa6
	.4byte	0xce
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x8
	.byte	0xa7
	.4byte	0x454
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x8
	.byte	0xc8
	.4byte	0x51b
	.uleb128 0x10
	.4byte	0x535
	.uleb128 0x11
	.4byte	0x171
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0xc3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x8
	.byte	0xcf
	.4byte	0x540
	.uleb128 0x10
	.4byte	0x550
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0xce
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x8
	.byte	0xd5
	.4byte	0x26c
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x8
	.byte	0xdc
	.4byte	0x566
	.uleb128 0x10
	.4byte	0x576
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0x576
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x505
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x8
	.byte	0xe3
	.4byte	0x566
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x8
	.byte	0xea
	.4byte	0x592
	.uleb128 0x10
	.4byte	0x5a2
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0xe4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x8
	.byte	0xf1
	.4byte	0x540
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x8
	.byte	0xf7
	.4byte	0x5b8
	.uleb128 0x10
	.4byte	0x5c3
	.uleb128 0x11
	.4byte	0x171
	.byte	0
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x8
	.byte	0xfe
	.4byte	0x5ce
	.uleb128 0x10
	.4byte	0x5de
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0x3ba
	.byte	0
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x114
	.4byte	0x592
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x126
	.4byte	0x540
	.uleb128 0xe
	.byte	0x2c
	.byte	0x8
	.2byte	0x12d
	.4byte	0x68f
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x12e
	.4byte	0x68f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x12f
	.4byte	0x695
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x130
	.4byte	0x69b
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x131
	.4byte	0x6a1
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x132
	.4byte	0x6a7
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x133
	.4byte	0x6ad
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x134
	.4byte	0x6b3
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x135
	.4byte	0x6b9
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x136
	.4byte	0x6bf
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x137
	.4byte	0x6c5
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x138
	.4byte	0x6cb
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x510
	.uleb128 0x6
	.byte	0x4
	.4byte	0x535
	.uleb128 0x6
	.byte	0x4
	.4byte	0x550
	.uleb128 0x6
	.byte	0x4
	.4byte	0x55b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x587
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x13a
	.4byte	0x5f6
	.uleb128 0xe
	.byte	0xa
	.byte	0x8
	.2byte	0x13f
	.4byte	0x735
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x140
	.4byte	0xc3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x141
	.4byte	0xc3
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x142
	.4byte	0xce
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x143
	.4byte	0xce
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x144
	.4byte	0xce
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x145
	.4byte	0xce
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x147
	.4byte	0x6dd
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x9
	.byte	0x5d
	.4byte	0x540
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x9
	.byte	0x63
	.4byte	0x277
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.byte	0x6d
	.4byte	0x790
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x9
	.byte	0x6e
	.4byte	0xce
	.byte	0
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x9
	.byte	0x6f
	.4byte	0xce
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x9
	.byte	0x70
	.4byte	0xce
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x9
	.byte	0x71
	.4byte	0xce
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0x9
	.byte	0x72
	.4byte	0x757
	.uleb128 0x16
	.byte	0x8
	.byte	0x9
	.byte	0x74
	.4byte	0x7db
	.uleb128 0x17
	.4byte	.LASF151
	.byte	0x9
	.byte	0x75
	.4byte	0x790
	.uleb128 0x17
	.4byte	.LASF152
	.byte	0x9
	.byte	0x76
	.4byte	0x155
	.uleb128 0x17
	.4byte	.LASF153
	.byte	0x9
	.byte	0x77
	.4byte	0xce
	.uleb128 0x17
	.4byte	.LASF154
	.byte	0x9
	.byte	0x78
	.4byte	0x171
	.uleb128 0x17
	.4byte	.LASF155
	.byte	0x9
	.byte	0x79
	.4byte	0xc3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x9
	.byte	0x7b
	.4byte	0x79b
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x9
	.byte	0x7d
	.4byte	0x7f1
	.uleb128 0x10
	.4byte	0x80b
	.uleb128 0x11
	.4byte	0xe4
	.uleb128 0x11
	.4byte	0x171
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0x95
	.byte	0
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x207
	.4byte	0xc3
	.uleb128 0x7
	.byte	0x10
	.byte	0xb
	.byte	0x1d
	.4byte	0x868
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0xb
	.byte	0x1e
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0xb
	.byte	0x1f
	.4byte	0x868
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0xb
	.byte	0x20
	.4byte	0x868
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0xb
	.byte	0x21
	.4byte	0xce
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0xb
	.byte	0x22
	.4byte	0xc3
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0xb
	.byte	0x23
	.4byte	0xe4
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74c
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0xb
	.byte	0x24
	.4byte	0x817
	.uleb128 0x7
	.byte	0x7c
	.byte	0xb
	.byte	0x30
	.4byte	0x94e
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0xb
	.byte	0x37
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0xb
	.byte	0x3e
	.4byte	0xc3
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF167
	.byte	0xb
	.byte	0x40
	.4byte	0xc3
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0xb
	.byte	0x41
	.4byte	0xce
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF169
	.byte	0xb
	.byte	0x42
	.4byte	0xce
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF170
	.byte	0xb
	.byte	0x43
	.4byte	0xe4
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF171
	.byte	0xb
	.byte	0x44
	.4byte	0xc3
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF172
	.byte	0xb
	.byte	0x45
	.4byte	0x155
	.byte	0xa
	.uleb128 0x9
	.string	"psm"
	.byte	0xb
	.byte	0x46
	.4byte	0xce
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0xb
	.byte	0x47
	.4byte	0xce
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF174
	.byte	0xb
	.byte	0x49
	.4byte	0xe4
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0xb
	.byte	0x4a
	.4byte	0x203
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF176
	.byte	0xb
	.byte	0x4b
	.4byte	0x203
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0xb
	.byte	0x4d
	.4byte	0xd9
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0xb
	.byte	0x4f
	.4byte	0x94e
	.byte	0x24
	.uleb128 0x9
	.string	"cfg"
	.byte	0xb
	.byte	0x51
	.4byte	0x505
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0xb
	.byte	0x52
	.4byte	0x735
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x741
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0xb
	.byte	0x53
	.4byte	0x879
	.uleb128 0x18
	.2byte	0x504
	.byte	0xb
	.byte	0x55
	.4byte	0x981
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0xb
	.byte	0x59
	.4byte	0x6d1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0xb
	.byte	0x5b
	.4byte	0x981
	.byte	0x2c
	.byte	0
	.uleb128 0xa
	.4byte	0x954
	.4byte	0x991
	.uleb128 0xd
	.4byte	0x85
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0xb
	.byte	0x5c
	.4byte	0x95f
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x62
	.4byte	0x9c9
	.uleb128 0x8
	.4byte	.LASF184
	.byte	0xb
	.byte	0x63
	.4byte	0xce
	.byte	0
	.uleb128 0x8
	.4byte	.LASF185
	.byte	0xb
	.byte	0x64
	.4byte	0xce
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF186
	.byte	0xb
	.byte	0x65
	.4byte	0x7db
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0xb
	.byte	0x66
	.4byte	0x99c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e6
	.uleb128 0x7
	.byte	0x18
	.byte	0xb
	.byte	0x73
	.4byte	0xa37
	.uleb128 0x9
	.string	"bda"
	.byte	0xb
	.byte	0x74
	.4byte	0x155
	.byte	0
	.uleb128 0x8
	.4byte	.LASF188
	.byte	0xb
	.byte	0x75
	.4byte	0x9d4
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF189
	.byte	0xb
	.byte	0x76
	.4byte	0xce
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF190
	.byte	0xb
	.byte	0x77
	.4byte	0xce
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0xb
	.byte	0x78
	.4byte	0xe4
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0xb
	.byte	0x79
	.4byte	0xe4
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0xb
	.byte	0x7a
	.4byte	0x203
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF193
	.byte	0xb
	.byte	0x7c
	.4byte	0x9da
	.uleb128 0x18
	.2byte	0x684
	.byte	0xb
	.byte	0x7e
	.4byte	0xaa3
	.uleb128 0x9
	.string	"blk"
	.byte	0xb
	.byte	0x7f
	.4byte	0xaa3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF194
	.byte	0xb
	.byte	0x80
	.4byte	0xab3
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF195
	.byte	0xb
	.byte	0x81
	.4byte	0xc3
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF196
	.byte	0xb
	.byte	0x86
	.4byte	0x991
	.byte	0x2c
	.uleb128 0x19
	.4byte	.LASF197
	.byte	0xb
	.byte	0x8b
	.4byte	0xac9
	.2byte	0x530
	.uleb128 0x19
	.4byte	.LASF198
	.byte	0xb
	.byte	0x8c
	.4byte	0xad9
	.2byte	0x560
	.uleb128 0x19
	.4byte	.LASF199
	.byte	0xb
	.byte	0x8d
	.4byte	0x80b
	.2byte	0x680
	.byte	0
	.uleb128 0xa
	.4byte	0x86e
	.4byte	0xab3
	.uleb128 0xd
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xac3
	.4byte	0xac3
	.uleb128 0xd
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x287
	.uleb128 0xa
	.4byte	0x9c9
	.4byte	0xad9
	.uleb128 0xd
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0xa37
	.4byte	0xae9
	.uleb128 0xd
	.4byte	0x85
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF200
	.byte	0xb
	.byte	0x8f
	.4byte	0xa42
	.uleb128 0x1a
	.4byte	.LASF208
	.byte	0x1
	.byte	0x25
	.4byte	0xc3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1d
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x1
	.byte	0x25
	.4byte	0xc3
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb65
	.uleb128 0x1d
	.4byte	.LVL2
	.4byte	0xba6
	.4byte	0xb52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x684
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL3
	.4byte	0xbaf
	.uleb128 0x1f
	.4byte	.LVL4
	.4byte	0xbba
	.byte	0
	.uleb128 0x20
	.4byte	.LASF201
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xb78
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x21
	.4byte	0x161
	.uleb128 0x20
	.4byte	.LASF202
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xb90
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x161
	.uleb128 0x22
	.4byte	.LASF211
	.byte	0x1
	.byte	0x19
	.4byte	0xae9
	.uleb128 0x5
	.byte	0x3
	.4byte	gap_cb
	.uleb128 0x23
	.4byte	.LASF212
	.4byte	.LASF212
	.uleb128 0x24
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xb
	.byte	0x94
	.uleb128 0x24
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0xb
	.byte	0x97
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF177:
	.string	"rx_queue_size"
.LASF32:
	.string	"peak_bandwidth"
.LASF179:
	.string	"ertm_info"
.LASF204:
	.string	"gap_attr_db_init"
.LASF187:
	.string	"tGAP_ATTR"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF139:
	.string	"allowed_modes"
.LASF158:
	.string	"tGATT_IF"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF5:
	.string	"__uint8_t"
.LASF197:
	.string	"gap_attr"
.LASF109:
	.string	"fcr_present"
.LASF195:
	.string	"trace_level"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF175:
	.string	"tx_queue"
.LASF160:
	.string	"gap_cback"
.LASF34:
	.string	"delay_variation"
.LASF129:
	.string	"pL2CA_ConfigInd_Cb"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF116:
	.string	"tL2CA_CONNECT_CFM_CB"
.LASF120:
	.string	"tL2CA_DISCONNECT_IND_CB"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF171:
	.string	"chan_mode_mask"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF161:
	.string	"gap_inq_rslt_cback"
.LASF206:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/gap/gap_api.c"
.LASF10:
	.string	"long int"
.LASF196:
	.string	"conn"
.LASF24:
	.string	"layer_specific"
.LASF152:
	.string	"reconn_bda"
.LASF111:
	.string	"ext_flow_spec_present"
.LASF124:
	.string	"tL2CA_CONGESTION_STATUS_CB"
.LASF126:
	.string	"pL2CA_ConnectInd_Cb"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF125:
	.string	"tL2CA_TX_COMPLETE_CB"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF15:
	.string	"uint16_t"
.LASF168:
	.string	"gap_handle"
.LASF92:
	.string	"BTM_PM_STS_HOLD"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF198:
	.string	"clcb"
.LASF18:
	.string	"UINT16"
.LASF146:
	.string	"tGAP_CALLBACK"
.LASF95:
	.string	"BTM_PM_STS_SSR"
.LASF140:
	.string	"user_rx_buf_size"
.LASF43:
	.string	"tBTM_CMPL_CB"
.LASF27:
	.string	"BD_ADDR"
.LASF167:
	.string	"service_id"
.LASF180:
	.string	"tGAP_CCB"
.LASF90:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF202:
	.string	"bd_addr_null"
.LASF40:
	.string	"access_latency"
.LASF37:
	.string	"stype"
.LASF190:
	.string	"cl_op_uuid"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF118:
	.string	"tL2CA_CONFIG_IND_CB"
.LASF26:
	.string	"BT_HDR"
.LASF12:
	.string	"long unsigned int"
.LASF39:
	.string	"sdu_inter_time"
.LASF150:
	.string	"tGAP_BLE_PREF_PARAM"
.LASF188:
	.string	"p_cback"
.LASF138:
	.string	"preferred_mode"
.LASF205:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF134:
	.string	"pL2CA_DataInd_Cb"
.LASF91:
	.string	"BTM_PM_STS_ACTIVE"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF156:
	.string	"tGAP_BLE_ATTR_VALUE"
.LASF22:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF132:
	.string	"pL2CA_DisconnectCfm_Cb"
.LASF131:
	.string	"pL2CA_DisconnectInd_Cb"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF107:
	.string	"flush_to_present"
.LASF148:
	.string	"int_max"
.LASF192:
	.string	"pending_req_q"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF147:
	.string	"int_min"
.LASF4:
	.string	"short int"
.LASF143:
	.string	"fcr_tx_buf_size"
.LASF102:
	.string	"mon_tout"
.LASF38:
	.string	"max_sdu_size"
.LASF208:
	.string	"GAP_SetTraceLevel"
.LASF157:
	.string	"tGAP_BLE_CMPL_CBACK"
.LASF97:
	.string	"BTM_PM_STS_ERROR"
.LASF144:
	.string	"tL2CAP_ERTM_INFO"
.LASF211:
	.string	"gap_cb"
.LASF11:
	.string	"sizetype"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF115:
	.string	"tL2CA_CONNECT_IND_CB"
.LASF114:
	.string	"tL2CAP_CFG_INFO"
.LASF203:
	.string	"gap_conn_init"
.LASF33:
	.string	"latency"
.LASF176:
	.string	"rx_queue"
.LASF19:
	.string	"UINT32"
.LASF122:
	.string	"tL2CA_QOS_VIOLATION_IND_CB"
.LASF145:
	.string	"tGAP_CONN_CALLBACK"
.LASF142:
	.string	"fcr_rx_buf_size"
.LASF112:
	.string	"ext_flow_spec"
.LASF189:
	.string	"conn_id"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF29:
	.string	"service_type"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF172:
	.string	"rem_dev_address"
.LASF141:
	.string	"user_tx_buf_size"
.LASF155:
	.string	"addr_resolution"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF137:
	.string	"tL2CAP_APPL_INFO"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF207:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF35:
	.string	"FLOW_SPEC"
.LASF21:
	.string	"_Bool"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF209:
	.string	"new_level"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF182:
	.string	"ccb_pool"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF194:
	.string	"btm_cback"
.LASF105:
	.string	"mtu_present"
.LASF136:
	.string	"pL2CA_TxComplete_Cb"
.LASF128:
	.string	"pL2CA_ConnectPnd_Cb"
.LASF20:
	.string	"BOOLEAN"
.LASF169:
	.string	"connection_id"
.LASF93:
	.string	"BTM_PM_STS_SNIFF"
.LASF173:
	.string	"rem_mtu_size"
.LASF200:
	.string	"tGAP_CB"
.LASF94:
	.string	"BTM_PM_STS_PARK"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF199:
	.string	"gatt_if"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF154:
	.string	"p_dev_name"
.LASF163:
	.string	"in_use"
.LASF178:
	.string	"p_callback"
.LASF153:
	.string	"icon"
.LASF16:
	.string	"uint32_t"
.LASF174:
	.string	"is_congested"
.LASF181:
	.string	"reg_info"
.LASF164:
	.string	"tGAP_INFO"
.LASF210:
	.string	"GAP_Init"
.LASF106:
	.string	"qos_present"
.LASF13:
	.string	"char"
.LASF185:
	.string	"uuid"
.LASF98:
	.string	"mode"
.LASF130:
	.string	"pL2CA_ConfigCfm_Cb"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"__uint16_t"
.LASF162:
	.string	"index"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF101:
	.string	"rtrans_tout"
.LASF14:
	.string	"uint8_t"
.LASF7:
	.string	"__uint32_t"
.LASF121:
	.string	"tL2CA_DISCONNECT_CFM_CB"
.LASF41:
	.string	"flush_timeout"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF23:
	.string	"offset"
.LASF25:
	.string	"data"
.LASF3:
	.string	"unsigned char"
.LASF42:
	.string	"tHCI_EXT_FLOW_SPEC"
.LASF108:
	.string	"flush_to"
.LASF151:
	.string	"conn_param"
.LASF28:
	.string	"qos_flags"
.LASF191:
	.string	"connected"
.LASF165:
	.string	"con_state"
.LASF149:
	.string	"sp_tout"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF135:
	.string	"pL2CA_CongestionStatus_Cb"
.LASF127:
	.string	"pL2CA_ConnectCfm_Cb"
.LASF212:
	.string	"memset"
.LASF110:
	.string	"fcs_present"
.LASF166:
	.string	"con_flags"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF113:
	.string	"flags"
.LASF170:
	.string	"rem_addr_specified"
.LASF17:
	.string	"UINT8"
.LASF183:
	.string	"tGAP_CONN"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF186:
	.string	"attr_value"
.LASF201:
	.string	"bd_addr_any"
.LASF123:
	.string	"tL2CA_DATA_IND_CB"
.LASF96:
	.string	"BTM_PM_STS_PENDING"
.LASF100:
	.string	"max_transmit"
.LASF30:
	.string	"token_rate"
.LASF103:
	.string	"tL2CAP_FCR_OPTS"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF99:
	.string	"tx_win_sz"
.LASF184:
	.string	"handle"
.LASF159:
	.string	"p_data"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF36:
	.string	"fixed_queue_t"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF133:
	.string	"pL2CA_QoSViolationInd_Cb"
.LASF193:
	.string	"tGAP_CLCB"
.LASF117:
	.string	"tL2CA_CONNECT_PND_CB"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF31:
	.string	"token_bucket_size"
.LASF104:
	.string	"result"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF119:
	.string	"tL2CA_CONFIG_CFM_CB"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
