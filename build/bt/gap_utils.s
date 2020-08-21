	.file	"gap_utils.c"
	.text
.Ltext0:
	.section	.text.gap_allocate_cb,"ax",@progbits
	.literal_position
	.literal .LC0, gap_cb+16
	.literal .LC1, gap_cb
	.align	4
	.global	gap_allocate_cb
	.type	gap_allocate_cb, @function
gap_allocate_cb:
.LFB30:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/gap/gap_utils.c"
	.loc 1 35 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 40 0
	l32r	a2, .LC1
	l8ui	a3, a2, 15
	beqz.n	a3, .L2
.LVL1:
	l8ui	a3, a2, 31
	.loc 1 51 0
	movi.n	a2, 0
	.loc 1 40 0
	bne	a3, a2, .L3
	.loc 1 39 0
	l32r	a2, .LC0
.LVL2:
	movi.n	a3, 1
.LVL3:
.L2:
	.loc 1 41 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL4:
	.loc 1 43 0
	movi.n	a8, 1
	s8i	a8, a2, 15
	.loc 1 44 0
	s8i	a3, a2, 14
.L3:
	.loc 1 52 0
	retw.n
.LFE30:
	.size	gap_allocate_cb, .-gap_allocate_cb
	.section	.text.gap_free_cb,"ax",@progbits
	.align	4
	.global	gap_free_cb
	.type	gap_free_cb, @function
gap_free_cb:
.LFB31:
	.loc 1 65 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 66 0
	beqz.n	a2, .L6
	.loc 1 67 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	.loc 1 68 0
	s8i	a8, a2, 15
.L6:
	retw.n
.LFE31:
	.size	gap_free_cb, .-gap_free_cb
	.section	.text.gap_is_service_busy,"ax",@progbits
	.literal_position
	.literal .LC2, gap_cb
	.align	4
	.global	gap_is_service_busy
	.type	gap_is_service_busy, @function
gap_is_service_busy:
.LFB32:
	.loc 1 86 0
.LVL6:
	entry	sp, 32
.LCFI2:
.LVL7:
	.loc 1 91 0
	l32r	a9, .LC2
	.loc 1 86 0
	extui	a10, a2, 0, 16
	.loc 1 91 0
	l8ui	a2, a9, 15
.LVL8:
	beqz.n	a2, .L12
	l16ui	a8, a9, 12
	beq	a8, a10, .L13
.L12:
.LVL9:
	l8ui	a2, a9, 31
	beqz.n	a2, .L13
	l16ui	a8, a9, 28
	movi.n	a2, 0
	sub	a8, a8, a10
	movi.n	a9, 1
	moveqz	a2, a9, a8
	extui	a2, a2, 0, 8
.LVL10:
.L13:
	.loc 1 98 0
	retw.n
.LFE32:
	.size	gap_is_service_busy, .-gap_is_service_busy
	.section	.text.gap_convert_btm_status,"ax",@progbits
	.literal_position
	.literal .LC3, CSWTCH$6
	.align	4
	.global	gap_convert_btm_status
	.type	gap_convert_btm_status, @function
gap_convert_btm_status:
.LFB33:
	.loc 1 112 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 112 0
	extui	a8, a2, 0, 8
	movi.n	a9, 8
	movi	a2, 0x114
.LVL12:
	bltu	a9, a8, .L21
	l32r	a2, .LC3
	addx2	a8, a8, a2
.LVL13:
	l16ui	a2, a8, 0
.L21:
	.loc 1 139 0
	retw.n
.LFE33:
	.size	gap_convert_btm_status, .-gap_convert_btm_status
	.section	.rodata.CSWTCH$6,"a",@progbits
	.align	2
	.type	CSWTCH$6, @object
	.size	CSWTCH$6, 18
CSWTCH$6:
	.short	0
	.short	267
	.short	259
	.short	276
	.short	265
	.short	265
	.short	268
	.short	269
	.short	277
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
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
	.4byte	0xb72
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0xc
	.4byte	.LASF184
	.4byte	.LASF185
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
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x31
	.4byte	0x336
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x7
	.byte	0x4f
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x7
	.byte	0xaa
	.4byte	0x1e8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14a
	.uleb128 0x7
	.byte	0xa
	.byte	0x8
	.byte	0x86
	.4byte	0x3a3
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x8
	.byte	0x8b
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x8
	.byte	0x8d
	.4byte	0xc3
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x8
	.byte	0x8e
	.4byte	0xc3
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x8
	.byte	0x8f
	.4byte	0xce
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF76
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
	.4byte	.LASF77
	.byte	0x8
	.byte	0x92
	.4byte	0x352
	.uleb128 0x7
	.byte	0x48
	.byte	0x8
	.byte	0x98
	.4byte	0x45f
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x8
	.byte	0x99
	.4byte	0xce
	.byte	0
	.uleb128 0x8
	.4byte	.LASF79
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
	.4byte	.LASF80
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
	.4byte	.LASF81
	.byte	0x8
	.byte	0x9e
	.4byte	0xe4
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x8
	.byte	0x9f
	.4byte	0xce
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x8
	.byte	0xa0
	.4byte	0xe4
	.byte	0x24
	.uleb128 0x9
	.string	"fcr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x3a3
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF84
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
	.4byte	.LASF85
	.byte	0x8
	.byte	0xa4
	.4byte	0xe4
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x8
	.byte	0xa5
	.4byte	0x260
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x8
	.byte	0xa6
	.4byte	0xce
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x8
	.byte	0xa7
	.4byte	0x3ae
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x8
	.byte	0xc8
	.4byte	0x475
	.uleb128 0x10
	.4byte	0x48f
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
	.4byte	.LASF90
	.byte	0x8
	.byte	0xcf
	.4byte	0x49a
	.uleb128 0x10
	.4byte	0x4aa
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0xce
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x8
	.byte	0xd5
	.4byte	0x26c
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0x8
	.byte	0xdc
	.4byte	0x4c0
	.uleb128 0x10
	.4byte	0x4d0
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0x4d0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45f
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x8
	.byte	0xe3
	.4byte	0x4c0
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x8
	.byte	0xea
	.4byte	0x4ec
	.uleb128 0x10
	.4byte	0x4fc
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0xe4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x8
	.byte	0xf1
	.4byte	0x49a
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x8
	.byte	0xf7
	.4byte	0x512
	.uleb128 0x10
	.4byte	0x51d
	.uleb128 0x11
	.4byte	0x171
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x8
	.byte	0xfe
	.4byte	0x528
	.uleb128 0x10
	.4byte	0x538
	.uleb128 0x11
	.4byte	0xce
	.uleb128 0x11
	.4byte	0x34c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x114
	.4byte	0x4ec
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x126
	.4byte	0x49a
	.uleb128 0xe
	.byte	0x2c
	.byte	0x8
	.2byte	0x12d
	.4byte	0x5e9
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x12e
	.4byte	0x5e9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x12f
	.4byte	0x5ef
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x130
	.4byte	0x5f5
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x131
	.4byte	0x5fb
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x132
	.4byte	0x601
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x133
	.4byte	0x607
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x134
	.4byte	0x60d
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x135
	.4byte	0x613
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x136
	.4byte	0x619
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x137
	.4byte	0x61f
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x138
	.4byte	0x625
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4aa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4fc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x507
	.uleb128 0x6
	.byte	0x4
	.4byte	0x51d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x538
	.uleb128 0x6
	.byte	0x4
	.4byte	0x544
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x13a
	.4byte	0x550
	.uleb128 0xe
	.byte	0xa
	.byte	0x8
	.2byte	0x13f
	.4byte	0x68f
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x140
	.4byte	0xc3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x141
	.4byte	0xc3
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x142
	.4byte	0xce
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x143
	.4byte	0xce
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x144
	.4byte	0xce
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x145
	.4byte	0xce
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x147
	.4byte	0x637
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x9
	.byte	0x5d
	.4byte	0x49a
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x9
	.byte	0x63
	.4byte	0x277
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.byte	0x6d
	.4byte	0x6ea
	.uleb128 0x8
	.4byte	.LASF121
	.byte	0x9
	.byte	0x6e
	.4byte	0xce
	.byte	0
	.uleb128 0x8
	.4byte	.LASF122
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
	.4byte	.LASF123
	.byte	0x9
	.byte	0x71
	.4byte	0xce
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x9
	.byte	0x72
	.4byte	0x6b1
	.uleb128 0x16
	.byte	0x8
	.byte	0x9
	.byte	0x74
	.4byte	0x735
	.uleb128 0x17
	.4byte	.LASF125
	.byte	0x9
	.byte	0x75
	.4byte	0x6ea
	.uleb128 0x17
	.4byte	.LASF126
	.byte	0x9
	.byte	0x76
	.4byte	0x155
	.uleb128 0x17
	.4byte	.LASF127
	.byte	0x9
	.byte	0x77
	.4byte	0xce
	.uleb128 0x17
	.4byte	.LASF128
	.byte	0x9
	.byte	0x78
	.4byte	0x171
	.uleb128 0x17
	.4byte	.LASF129
	.byte	0x9
	.byte	0x79
	.4byte	0xc3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x9
	.byte	0x7b
	.4byte	0x6f5
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x9
	.byte	0x7d
	.4byte	0x74b
	.uleb128 0x10
	.4byte	0x765
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
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x207
	.4byte	0xc3
	.uleb128 0x7
	.byte	0x10
	.byte	0xb
	.byte	0x1d
	.4byte	0x7c2
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0xb
	.byte	0x1e
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0xb
	.byte	0x1f
	.4byte	0x7c2
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xb
	.byte	0x20
	.4byte	0x7c2
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0xb
	.byte	0x21
	.4byte	0xce
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0xb
	.byte	0x22
	.4byte	0xc3
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0xb
	.byte	0x23
	.4byte	0xe4
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a6
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0xb
	.byte	0x24
	.4byte	0x771
	.uleb128 0x7
	.byte	0x7c
	.byte	0xb
	.byte	0x30
	.4byte	0x8a8
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0xb
	.byte	0x37
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0xb
	.byte	0x3e
	.4byte	0xc3
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0xb
	.byte	0x40
	.4byte	0xc3
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0xb
	.byte	0x41
	.4byte	0xce
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0xb
	.byte	0x42
	.4byte	0xce
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0xb
	.byte	0x43
	.4byte	0xe4
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0xb
	.byte	0x44
	.4byte	0xc3
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF146
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
	.4byte	.LASF147
	.byte	0xb
	.byte	0x47
	.4byte	0xce
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0xb
	.byte	0x49
	.4byte	0xe4
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0xb
	.byte	0x4a
	.4byte	0x203
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0xb
	.byte	0x4b
	.4byte	0x203
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0xb
	.byte	0x4d
	.4byte	0xd9
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0xb
	.byte	0x4f
	.4byte	0x8a8
	.byte	0x24
	.uleb128 0x9
	.string	"cfg"
	.byte	0xb
	.byte	0x51
	.4byte	0x45f
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0xb
	.byte	0x52
	.4byte	0x68f
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69b
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0xb
	.byte	0x53
	.4byte	0x7d3
	.uleb128 0x18
	.2byte	0x504
	.byte	0xb
	.byte	0x55
	.4byte	0x8db
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0xb
	.byte	0x59
	.4byte	0x62b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0xb
	.byte	0x5b
	.4byte	0x8db
	.byte	0x2c
	.byte	0
	.uleb128 0xa
	.4byte	0x8ae
	.4byte	0x8eb
	.uleb128 0xd
	.4byte	0x85
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xb
	.byte	0x5c
	.4byte	0x8b9
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x62
	.4byte	0x923
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0xb
	.byte	0x63
	.4byte	0xce
	.byte	0
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0xb
	.byte	0x64
	.4byte	0xce
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0xb
	.byte	0x65
	.4byte	0x735
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0xb
	.byte	0x66
	.4byte	0x8f6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x740
	.uleb128 0x7
	.byte	0x18
	.byte	0xb
	.byte	0x73
	.4byte	0x991
	.uleb128 0x9
	.string	"bda"
	.byte	0xb
	.byte	0x74
	.4byte	0x155
	.byte	0
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0xb
	.byte	0x75
	.4byte	0x92e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0xb
	.byte	0x76
	.4byte	0xce
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0xb
	.byte	0x77
	.4byte	0xce
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0xb
	.byte	0x78
	.4byte	0xe4
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0xb
	.byte	0x79
	.4byte	0xe4
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0xb
	.byte	0x7a
	.4byte	0x203
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0xb
	.byte	0x7c
	.4byte	0x934
	.uleb128 0x18
	.2byte	0x684
	.byte	0xb
	.byte	0x7e
	.4byte	0x9fd
	.uleb128 0x9
	.string	"blk"
	.byte	0xb
	.byte	0x7f
	.4byte	0x9fd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0xb
	.byte	0x80
	.4byte	0xa0d
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF169
	.byte	0xb
	.byte	0x81
	.4byte	0xc3
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF170
	.byte	0xb
	.byte	0x86
	.4byte	0x8eb
	.byte	0x2c
	.uleb128 0x19
	.4byte	.LASF171
	.byte	0xb
	.byte	0x8b
	.4byte	0xa23
	.2byte	0x530
	.uleb128 0x19
	.4byte	.LASF172
	.byte	0xb
	.byte	0x8c
	.4byte	0xa33
	.2byte	0x560
	.uleb128 0x19
	.4byte	.LASF173
	.byte	0xb
	.byte	0x8d
	.4byte	0x765
	.2byte	0x680
	.byte	0
	.uleb128 0xa
	.4byte	0x7c8
	.4byte	0xa0d
	.uleb128 0xd
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xa1d
	.4byte	0xa1d
	.uleb128 0xd
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x341
	.uleb128 0xa
	.4byte	0x923
	.4byte	0xa33
	.uleb128 0xd
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x991
	.4byte	0xa43
	.uleb128 0xd
	.4byte	0x85
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0xb
	.byte	0x8f
	.4byte	0x99c
	.uleb128 0x1a
	.4byte	.LASF176
	.byte	0x1
	.byte	0x22
	.4byte	0xa9e
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9e
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x1
	.byte	0x24
	.4byte	0xa9e
	.4byte	.LLST0
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0x25
	.4byte	0xc3
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LVL4
	.4byte	0xb6c
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
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7c8
	.uleb128 0x1f
	.4byte	.LASF186
	.byte	0x1
	.byte	0x40
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac7
	.uleb128 0x20
	.4byte	.LASF175
	.byte	0x1
	.byte	0x40
	.4byte	0xa9e
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF177
	.byte	0x1
	.byte	0x55
	.4byte	0xe4
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb08
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x1
	.byte	0x55
	.4byte	0xce
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.byte	0x57
	.4byte	0xa9e
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0x58
	.4byte	0xc3
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF179
	.byte	0x1
	.byte	0x6f
	.4byte	0xce
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb31
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0x1
	.byte	0x6f
	.4byte	0x336
	.4byte	.LLST4
	.byte	0
	.uleb128 0x23
	.4byte	.LASF181
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xb44
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x24
	.4byte	0x161
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xb5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x161
	.uleb128 0x25
	.4byte	.LASF187
	.byte	0xb
	.byte	0x92
	.4byte	0xa43
	.uleb128 0x26
	.4byte	.LASF188
	.4byte	.LASF188
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
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0x34
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF187:
	.string	"gap_cb"
.LASF151:
	.string	"rx_queue_size"
.LASF32:
	.string	"peak_bandwidth"
.LASF153:
	.string	"ertm_info"
.LASF70:
	.string	"tBTM_STATUS"
.LASF161:
	.string	"tGAP_ATTR"
.LASF176:
	.string	"gap_allocate_cb"
.LASF113:
	.string	"allowed_modes"
.LASF132:
	.string	"tGATT_IF"
.LASF92:
	.string	"tL2CA_CONFIG_IND_CB"
.LASF5:
	.string	"__uint8_t"
.LASF171:
	.string	"gap_attr"
.LASF60:
	.string	"BTM_SUCCESS_NO_SECURITY"
.LASF67:
	.string	"BTM_SET_PRIVACY_FAIL"
.LASF169:
	.string	"trace_level"
.LASF9:
	.string	"long long unsigned int"
.LASF59:
	.string	"BTM_SCO_BAD_LENGTH"
.LASF149:
	.string	"tx_queue"
.LASF134:
	.string	"gap_cback"
.LASF34:
	.string	"delay_variation"
.LASF103:
	.string	"pL2CA_ConfigInd_Cb"
.LASF65:
	.string	"BTM_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF2:
	.string	"signed char"
.LASF48:
	.string	"BTM_ILLEGAL_VALUE"
.LASF61:
	.string	"BTM_FAILED_ON_SECURITY"
.LASF90:
	.string	"tL2CA_CONNECT_CFM_CB"
.LASF94:
	.string	"tL2CA_DISCONNECT_IND_CB"
.LASF138:
	.string	"tGAP_INFO"
.LASF144:
	.string	"rem_addr_specified"
.LASF145:
	.string	"chan_mode_mask"
.LASF135:
	.string	"gap_inq_rslt_cback"
.LASF175:
	.string	"p_cb"
.LASF10:
	.string	"long int"
.LASF170:
	.string	"conn"
.LASF24:
	.string	"layer_specific"
.LASF126:
	.string	"reconn_bda"
.LASF58:
	.string	"BTM_DELAY_CHECK"
.LASF85:
	.string	"ext_flow_spec_present"
.LASF98:
	.string	"tL2CA_CONGESTION_STATUS_CB"
.LASF50:
	.string	"BTM_UNKNOWN_ADDR"
.LASF99:
	.string	"tL2CA_TX_COMPLETE_CB"
.LASF15:
	.string	"uint16_t"
.LASF142:
	.string	"gap_handle"
.LASF100:
	.string	"pL2CA_ConnectInd_Cb"
.LASF172:
	.string	"clcb"
.LASF18:
	.string	"UINT16"
.LASF120:
	.string	"tGAP_CALLBACK"
.LASF131:
	.string	"tGAP_BLE_CMPL_CBACK"
.LASF114:
	.string	"user_rx_buf_size"
.LASF71:
	.string	"tBTM_CMPL_CB"
.LASF184:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/gap/gap_utils.c"
.LASF141:
	.string	"service_id"
.LASF8:
	.string	"long long int"
.LASF40:
	.string	"access_latency"
.LASF69:
	.string	"BTM_INVALID_STATIC_RAND_ADDR"
.LASF37:
	.string	"stype"
.LASF164:
	.string	"cl_op_uuid"
.LASF12:
	.string	"long unsigned int"
.LASF39:
	.string	"sdu_inter_time"
.LASF53:
	.string	"BTM_ERR_PROCESSING"
.LASF124:
	.string	"tGAP_BLE_PREF_PARAM"
.LASF162:
	.string	"p_cback"
.LASF112:
	.string	"preferred_mode"
.LASF183:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF108:
	.string	"pL2CA_DataInd_Cb"
.LASF22:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF106:
	.string	"pL2CA_DisconnectCfm_Cb"
.LASF105:
	.string	"pL2CA_DisconnectInd_Cb"
.LASF81:
	.string	"flush_to_present"
.LASF122:
	.string	"int_max"
.LASF166:
	.string	"pending_req_q"
.LASF57:
	.string	"BTM_ILLEGAL_ACTION"
.LASF121:
	.string	"int_min"
.LASF4:
	.string	"short int"
.LASF54:
	.string	"BTM_NOT_AUTHORIZED"
.LASF117:
	.string	"fcr_tx_buf_size"
.LASF76:
	.string	"mon_tout"
.LASF38:
	.string	"max_sdu_size"
.LASF118:
	.string	"tL2CAP_ERTM_INFO"
.LASF66:
	.string	"BTM_SET_PRIVACY_SUCCESS"
.LASF11:
	.string	"sizetype"
.LASF89:
	.string	"tL2CA_CONNECT_IND_CB"
.LASF88:
	.string	"tL2CAP_CFG_INFO"
.LASF150:
	.string	"rx_queue"
.LASF19:
	.string	"UINT32"
.LASF96:
	.string	"tL2CA_QOS_VIOLATION_IND_CB"
.LASF25:
	.string	"data"
.LASF56:
	.string	"BTM_CMD_STORED"
.LASF119:
	.string	"tGAP_CONN_CALLBACK"
.LASF116:
	.string	"fcr_rx_buf_size"
.LASF86:
	.string	"ext_flow_spec"
.LASF163:
	.string	"conn_id"
.LASF28:
	.string	"qos_flags"
.LASF68:
	.string	"BTM_SET_STATIC_RAND_ADDR_FAIL"
.LASF154:
	.string	"tGAP_CCB"
.LASF33:
	.string	"latency"
.LASF29:
	.string	"service_type"
.LASF177:
	.string	"gap_is_service_busy"
.LASF146:
	.string	"rem_dev_address"
.LASF115:
	.string	"user_tx_buf_size"
.LASF129:
	.string	"addr_resolution"
.LASF182:
	.string	"bd_addr_null"
.LASF111:
	.string	"tL2CAP_APPL_INFO"
.LASF185:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF62:
	.string	"BTM_REPEATED_ATTEMPTS"
.LASF35:
	.string	"FLOW_SPEC"
.LASF21:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF156:
	.string	"ccb_pool"
.LASF179:
	.string	"gap_convert_btm_status"
.LASF168:
	.string	"btm_cback"
.LASF45:
	.string	"BTM_BUSY"
.LASF79:
	.string	"mtu_present"
.LASF110:
	.string	"pL2CA_TxComplete_Cb"
.LASF102:
	.string	"pL2CA_ConnectPnd_Cb"
.LASF20:
	.string	"BOOLEAN"
.LASF143:
	.string	"connection_id"
.LASF147:
	.string	"rem_mtu_size"
.LASF47:
	.string	"BTM_MODE_UNSUPPORTED"
.LASF55:
	.string	"BTM_DEV_RESET"
.LASF173:
	.string	"gatt_if"
.LASF83:
	.string	"fcr_present"
.LASF128:
	.string	"p_dev_name"
.LASF137:
	.string	"in_use"
.LASF46:
	.string	"BTM_NO_RESOURCES"
.LASF127:
	.string	"icon"
.LASF16:
	.string	"uint32_t"
.LASF49:
	.string	"BTM_WRONG_MODE"
.LASF148:
	.string	"is_congested"
.LASF43:
	.string	"BTM_SUCCESS"
.LASF155:
	.string	"reg_info"
.LASF174:
	.string	"tGAP_CB"
.LASF80:
	.string	"qos_present"
.LASF13:
	.string	"char"
.LASF159:
	.string	"uuid"
.LASF72:
	.string	"mode"
.LASF104:
	.string	"pL2CA_ConfigCfm_Cb"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"__uint16_t"
.LASF136:
	.string	"index"
.LASF75:
	.string	"rtrans_tout"
.LASF44:
	.string	"BTM_CMD_STARTED"
.LASF14:
	.string	"uint8_t"
.LASF7:
	.string	"__uint32_t"
.LASF95:
	.string	"tL2CA_DISCONNECT_CFM_CB"
.LASF41:
	.string	"flush_timeout"
.LASF23:
	.string	"offset"
.LASF51:
	.string	"BTM_DEVICE_TIMEOUT"
.LASF42:
	.string	"tHCI_EXT_FLOW_SPEC"
.LASF82:
	.string	"flush_to"
.LASF180:
	.string	"btm_status"
.LASF125:
	.string	"conn_param"
.LASF178:
	.string	"request"
.LASF63:
	.string	"BTM_MODE4_LEVEL4_NOT_SUPPORTED"
.LASF165:
	.string	"connected"
.LASF139:
	.string	"con_state"
.LASF123:
	.string	"sp_tout"
.LASF109:
	.string	"pL2CA_CongestionStatus_Cb"
.LASF186:
	.string	"gap_free_cb"
.LASF64:
	.string	"BTM_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF101:
	.string	"pL2CA_ConnectCfm_Cb"
.LASF188:
	.string	"memset"
.LASF84:
	.string	"fcs_present"
.LASF140:
	.string	"con_flags"
.LASF17:
	.string	"UINT8"
.LASF157:
	.string	"tGAP_CONN"
.LASF87:
	.string	"flags"
.LASF160:
	.string	"attr_value"
.LASF181:
	.string	"bd_addr_any"
.LASF97:
	.string	"tL2CA_DATA_IND_CB"
.LASF152:
	.string	"p_callback"
.LASF26:
	.string	"BT_HDR"
.LASF74:
	.string	"max_transmit"
.LASF30:
	.string	"token_rate"
.LASF77:
	.string	"tL2CAP_FCR_OPTS"
.LASF130:
	.string	"tGAP_BLE_ATTR_VALUE"
.LASF73:
	.string	"tx_win_sz"
.LASF158:
	.string	"handle"
.LASF52:
	.string	"BTM_BAD_VALUE_RET"
.LASF133:
	.string	"p_data"
.LASF36:
	.string	"fixed_queue_t"
.LASF107:
	.string	"pL2CA_QoSViolationInd_Cb"
.LASF167:
	.string	"tGAP_CLCB"
.LASF91:
	.string	"tL2CA_CONNECT_PND_CB"
.LASF31:
	.string	"token_bucket_size"
.LASF78:
	.string	"result"
.LASF27:
	.string	"BD_ADDR"
.LASF93:
	.string	"tL2CA_CONFIG_CFM_CB"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
