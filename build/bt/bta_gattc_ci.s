	.file	"bta_gattc_ci.c"
	.text
.Ltext0:
	.section	.text.bta_gattc_ci_cache_load,"ax",@progbits
	.literal_position
	.literal .LC0, 3212
	.align	4
	.global	bta_gattc_ci_cache_load
	.type	bta_gattc_ci_cache_load, @function
bta_gattc_ci_cache_load:
.LFB40:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gattc_ci.c"
	.loc 1 86 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 90 0
	l32r	a12, .LC0
	.loc 1 86 0
	.loc 1 90 0
	mov.n	a10, a12
	s32i.n	a12, sp, 0
	call8	malloc
.LVL1:
	.loc 1 86 0
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 16
	extui	a6, a6, 0, 8
	extui	a7, a7, 0, 16
	.loc 1 90 0
	mov.n	a2, a10
.LVL2:
	l32i.n	a12, sp, 0
	beqz.n	a10, .L1
	.loc 1 91 0
	movi.n	a11, 0
	call8	memset
.LVL3:
	.loc 1 97 0
	movi	a12, 0x64
	minu	a12, a4, a12
	.loc 1 93 0
	s16i	a3, a2, 0
	.loc 1 94 0
	s16i	a7, a2, 6
	.loc 1 96 0
	s8i	a6, a2, 8
	.loc 1 97 0
	s16i	a12, a2, 10
	.loc 1 99 0
	beqz.n	a12, .L3
	beqz.n	a5, .L3
	.loc 1 100 0
	slli	a12, a12, 5
	mov.n	a11, a5
	addi.n	a10, a2, 12
	call8	memcpy
.LVL4:
.L3:
	.loc 1 103 0
	mov.n	a10, a2
	call8	bta_sys_sendmsg
.LVL5:
.L1:
	retw.n
.LFE40:
	.size	bta_gattc_ci_cache_load, .-bta_gattc_ci_cache_load
	.section	.text.bta_gattc_ci_cache_save,"ax",@progbits
	.align	4
	.global	bta_gattc_ci_cache_save
	.type	bta_gattc_ci_cache_save, @function
bta_gattc_ci_cache_save:
.LFB41:
	.loc 1 125 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 129 0
	movi.n	a10, 0xa
	.loc 1 125 0
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 16
	.loc 1 129 0
	call8	malloc
.LVL7:
	beqz.n	a10, .L13
	.loc 1 130 0
	s16i	a3, a10, 0
	.loc 1 131 0
	s16i	a5, a10, 6
	.loc 1 133 0
	s8i	a4, a10, 8
	.loc 1 134 0
	call8	bta_sys_sendmsg
.LVL8:
.L13:
	retw.n
.LFE41:
	.size	bta_gattc_ci_cache_save, .-bta_gattc_ci_cache_save
	.section	.text.bta_gattc_ci_cache_open,"ax",@progbits
	.align	4
	.global	bta_gattc_ci_cache_open
	.type	bta_gattc_ci_cache_open, @function
bta_gattc_ci_cache_open:
.LFB43:
	entry	sp, 32
.LCFI2:
	extui	a13, a5, 0, 16
	extui	a12, a4, 0, 8
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	bta_gattc_ci_cache_save
	retw.n
.LFE43:
	.size	bta_gattc_ci_cache_open, .-bta_gattc_ci_cache_open
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI0-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI1-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI2-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_gatt_api.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_gattc_ci.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4a8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xc
	.4byte	.LASF59
	.4byte	.LASF60
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
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
	.byte	0x4
	.byte	0x1a
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x22
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xbf
	.4byte	0x133
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc0
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc1
	.4byte	0x89
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc2
	.4byte	0x89
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc3
	.4byte	0x89
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0xc4
	.4byte	0x133
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x142
	.uleb128 0x9
	.4byte	0xa6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0xc5
	.4byte	0xee
	.uleb128 0x8
	.4byte	0xbb
	.4byte	0x15d
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.4byte	0xbb
	.4byte	0x173
	.uleb128 0xa
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x1a1
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x1a5
	.4byte	0xc6
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x1a6
	.4byte	0xd1
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x1a7
	.4byte	0x163
	.byte	0
	.uleb128 0xe
	.byte	0x14
	.byte	0x4
	.2byte	0x19d
	.4byte	0x1c4
	.uleb128 0xf
	.string	"len"
	.byte	0x4
	.2byte	0x1a2
	.4byte	0xc6
	.byte	0
	.uleb128 0xf
	.string	"uu"
	.byte	0x4
	.2byte	0x1a8
	.4byte	0x173
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x1aa
	.4byte	0x1a1
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x8d
	.4byte	0xbb
	.uleb128 0xe
	.byte	0x20
	.byte	0x5
	.2byte	0x115
	.4byte	0x259
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x116
	.4byte	0x1c4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x117
	.4byte	0xc6
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x118
	.4byte	0xc6
	.byte	0x16
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x119
	.4byte	0xbb
	.byte	0x18
	.uleb128 0xf
	.string	"id"
	.byte	0x5
	.2byte	0x11a
	.4byte	0xbb
	.byte	0x19
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x1a
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x11c
	.4byte	0xdc
	.byte	0x1b
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x11d
	.4byte	0xc6
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x11e
	.4byte	0xc6
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x11f
	.4byte	0x1db
	.uleb128 0x5
	.byte	0xa
	.byte	0x6
	.byte	0x22
	.4byte	0x286
	.uleb128 0x7
	.string	"hdr"
	.byte	0x6
	.byte	0x23
	.4byte	0x142
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x6
	.byte	0x24
	.4byte	0x1d0
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x25
	.4byte	0x265
	.uleb128 0x12
	.2byte	0xc8c
	.byte	0x6
	.byte	0x2a
	.4byte	0x2cb
	.uleb128 0x7
	.string	"hdr"
	.byte	0x6
	.byte	0x2b
	.4byte	0x142
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x6
	.byte	0x2c
	.4byte	0x1d0
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x6
	.byte	0x2d
	.4byte	0xc6
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x6
	.byte	0x2e
	.4byte	0x2cb
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x259
	.4byte	0x2db
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x63
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x2f
	.4byte	0x291
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x53
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cc
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x53
	.4byte	0x15d
	.4byte	.LLST0
	.uleb128 0x15
	.string	"evt"
	.byte	0x1
	.byte	0x53
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0x53
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x54
	.4byte	0x3cc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x54
	.4byte	0x1d0
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x55
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x57
	.4byte	0x3d2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0x483
	.4byte	0x36d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc8c
	.byte	0
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0x48e
	.4byte	0x386
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x497
	.4byte	0x3bb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x17
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x64
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x35
	.byte	0x24
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x4a0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x259
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2db
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44d
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7b
	.4byte	0x15d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.string	"evt"
	.byte	0x1
	.byte	0x7b
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7b
	.4byte	0x1d0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7c
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7e
	.4byte	0x44d
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LVL7
	.4byte	0x483
	.4byte	0x443
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL8
	.4byte	0x4a0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x286
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x466
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1e
	.4byte	0x14d
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x47e
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x14d
	.uleb128 0x1f
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x65
	.uleb128 0x20
	.4byte	.LASF54
	.4byte	.LASF54
	.uleb128 0x20
	.4byte	.LASF55
	.4byte	.LASF55
	.uleb128 0x1f
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0xe0
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"p_attr"
.LASF53:
	.string	"bd_addr_null"
.LASF46:
	.string	"server_bda"
.LASF30:
	.string	"tBT_UUID"
.LASF26:
	.string	"BT_HDR"
.LASF2:
	.string	"short int"
.LASF56:
	.string	"malloc"
.LASF14:
	.string	"sizetype"
.LASF19:
	.string	"UINT32"
.LASF55:
	.string	"memcpy"
.LASF43:
	.string	"num_attr"
.LASF22:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF51:
	.string	"p_evt"
.LASF33:
	.string	"s_handle"
.LASF10:
	.string	"uint8_t"
.LASF59:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gattc_ci.c"
.LASF8:
	.string	"long long int"
.LASF54:
	.string	"memset"
.LASF20:
	.string	"BOOLEAN"
.LASF13:
	.string	"long int"
.LASF23:
	.string	"offset"
.LASF32:
	.string	"uuid"
.LASF17:
	.string	"UINT8"
.LASF42:
	.string	"tBTA_GATTC_CI_EVT"
.LASF34:
	.string	"e_handle"
.LASF3:
	.string	"__uint8_t"
.LASF31:
	.string	"tBTA_GATT_STATUS"
.LASF40:
	.string	"tBTA_GATTC_NV_ATTR"
.LASF48:
	.string	"conn_id"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"uuid32"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF39:
	.string	"incl_srvc_e_handle"
.LASF36:
	.string	"prop"
.LASF41:
	.string	"status"
.LASF5:
	.string	"short unsigned int"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF49:
	.string	"bta_gattc_ci_cache_load"
.LASF16:
	.string	"char"
.LASF50:
	.string	"bta_gattc_ci_cache_save"
.LASF21:
	.string	"_Bool"
.LASF25:
	.string	"data"
.LASF18:
	.string	"UINT16"
.LASF15:
	.string	"long unsigned int"
.LASF6:
	.string	"__uint32_t"
.LASF35:
	.string	"attr_type"
.LASF44:
	.string	"attr"
.LASF29:
	.string	"uuid128"
.LASF52:
	.string	"bd_addr_any"
.LASF45:
	.string	"tBTA_GATTC_CI_LOAD"
.LASF37:
	.string	"is_primary"
.LASF38:
	.string	"incl_srvc_s_handle"
.LASF58:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF57:
	.string	"bta_sys_sendmsg"
.LASF24:
	.string	"layer_specific"
.LASF27:
	.string	"uuid16"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
