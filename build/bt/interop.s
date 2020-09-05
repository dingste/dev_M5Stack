	.file	"interop.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"INTEROP_DISABLE_LE_SECURE_CONNECTIONS"
.LC5:
	.string	"INTEROP_AUTO_RETRY_PAIRING"
.LC7:
	.string	"UNKNOWN"
.LC9:
	.string	"addr"
.LC12:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/interop.c"
.LC16:
	.string	"BT_LOG"
.LC18:
	.string	"\033[0;33mW (%d) %s: %s() Device %s is a match for interop workaround %s\033[0m\n"
	.section	.text.interop_match,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC11, __func__$3533
	.literal .LC13, .LC12
	.literal .LC14, interop_database
	.literal .LC15, interop_database+108
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.global	interop_match
	.type	interop_match, @function
interop_match:
.LFB13:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/interop.c"
	.loc 1 43 0
.LVL0:
	entry	sp, 80
.LCFI0:
	l32r	a4, .LC14
	.loc 1 44 0
	bnez.n	a3, .L10
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	l32r	a10, .LC13
	movi.n	a11, 0x2c
	call8	__assert_func
.LVL1:
.L10:
.LBB6:
	.loc 1 49 0 is_stmt 1
	l32i.n	a5, a4, 8
	bne	a5, a2, .L3
	.loc 1 50 0 discriminator 1
	l8ui	a12, a4, 6
	mov.n	a11, a4
	mov.n	a10, a3
	call8	memcmp
.LVL2:
	.loc 1 49 0 discriminator 1
	bnez.n	a10, .L3
.LBB7:
	.loc 1 52 0
	mov.n	a11, a10
	movi.n	a12, 0x14
	addi	a10, sp, 16
	call8	memset
.LVL3:
	.loc 1 54 0
	call8	esp_log_timestamp
.LVL4:
	mov.n	a5, a10
	movi.n	a12, 0x14
	addi	a11, sp, 16
	mov.n	a10, a3
	call8	bdaddr_to_string
.LVL5:
.LBB8:
.LBB9:
	.loc 1 34 0
	l32r	a4, .LC4
	.loc 1 33 0
	beqz.n	a2, .L5
	.loc 1 38 0
	l32r	a3, .LC6
.LVL6:
	l32r	a4, .LC8
	addi.n	a2, a2, -1
.LVL7:
	moveqz	a4, a3, a2
.LVL8:
.L5:
.LBE9:
.LBE8:
	.loc 1 54 0
	l32r	a11, .LC17
	l32r	a15, .LC11
	l32r	a12, .LC19
	s32i.n	a10, sp, 0
	s32i.n	a4, sp, 4
	mov.n	a14, a11
	mov.n	a13, a5
	movi.n	a10, 2
	call8	esp_log_write
.LVL9:
	.loc 1 56 0
	movi.n	a2, 1
	retw.n
.LVL10:
.L3:
.LBE7:
	.loc 1 48 0 discriminator 2
	l32r	a5, .LC15
	addi.n	a4, a4, 12
	bne	a4, a5, .L10
.LBE6:
	.loc 1 60 0
	movi.n	a2, 0
.LVL11:
	.loc 1 61 0
	retw.n
.LFE13:
	.size	interop_match, .-interop_match
	.section	.rodata.__func__$3533,"a",@progbits
	.type	__func__$3533, @object
	.size	__func__$3533, 14
__func__$3533:
	.string	"interop_match"
	.section	.rodata.interop_database,"a",@progbits
	.align	4
	.type	interop_database, @object
	.size	interop_database, 108
interop_database:
	.byte	8
	.byte	98
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	56
	.byte	44
	.byte	74
	.byte	-55
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	56
	.byte	44
	.byte	74
	.byte	-26
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	84
	.byte	-96
	.byte	80
	.byte	-39
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	-84
	.byte	-98
	.byte	23
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	-16
	.byte	121
	.byte	89
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	28
	.byte	-106
	.byte	90
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	-128
	.byte	-28
	.byte	-38
	.byte	112
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	-100
	.byte	-33
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	1
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/interop.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/interop_database.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/bdaddr.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x88
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x1f
	.4byte	0xd6
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1a
	.4byte	0x9a
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x9
	.4byte	0xd6
	.4byte	0xf8
	.uleb128 0xa
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6
	.byte	0x3b
	.4byte	0x10d
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3c
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x9a
	.4byte	0x11d
	.uleb128 0xa
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x3d
	.4byte	0xf8
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1a
	.4byte	0x141
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x25
	.4byte	0x128
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.byte	0x18
	.4byte	0x179
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x9
	.byte	0x19
	.4byte	0x11d
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x9
	.byte	0x1a
	.4byte	0x9a
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x9
	.byte	0x1b
	.4byte	0x141
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.byte	0x1c
	.4byte	0x14c
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1f
	.4byte	0x8f
	.byte	0x1
	.4byte	0x1a0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1f
	.4byte	0x1a0
	.byte	0
	.uleb128 0x6
	.4byte	0x141
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2a
	.4byte	0xe1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x309
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2a
	.4byte	0x1a0
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2a
	.4byte	0x309
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF30
	.4byte	0x324
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3533
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2e
	.4byte	0x329
	.uleb128 0x14
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x2dd
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x30
	.4byte	0x2c
	.uleb128 0x14
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x2c6
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x34
	.4byte	0x32e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	0x184
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x36
	.4byte	0x244
	.uleb128 0x18
	.4byte	0x194
	.4byte	.LLST2
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x394
	.4byte	0x25d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL4
	.4byte	0x39d
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x3a8
	.4byte	0x285
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL9
	.4byte	0x3b3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3533
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL2
	.4byte	0x3be
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL1
	.4byte	0x3c9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3533
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30f
	.uleb128 0x6
	.4byte	0x11d
	.uleb128 0x9
	.4byte	0x88
	.4byte	0x324
	.uleb128 0xa
	.4byte	0x7a
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0x314
	.uleb128 0x6
	.4byte	0x2c
	.uleb128 0x9
	.4byte	0x88
	.4byte	0x33e
	.uleb128 0xa
	.4byte	0x7a
	.byte	0x13
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x351
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x6
	.4byte	0xe8
	.uleb128 0x1d
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x2b9
	.4byte	0x369
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xe8
	.uleb128 0x9
	.4byte	0x179
	.4byte	0x37e
	.uleb128 0xa
	.4byte	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x9
	.byte	0x1e
	.4byte	0x38f
	.uleb128 0x5
	.byte	0x3
	.4byte	interop_database
	.uleb128 0x6
	.4byte	0x36e
	.uleb128 0x1e
	.4byte	.LASF46
	.4byte	.LASF46
	.uleb128 0x1f
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0xa
	.byte	0x32
	.uleb128 0x1f
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6b
	.uleb128 0x1f
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0xb
	.byte	0x16
	.uleb128 0x1f
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0xc
	.byte	0x29
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"__func__"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF34:
	.string	"bd_addr_null"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF39:
	.string	"memcmp"
.LASF20:
	.string	"UINT8"
.LASF31:
	.string	"db_size"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/interop.c"
.LASF36:
	.string	"esp_log_timestamp"
.LASF27:
	.string	"addr"
.LASF35:
	.string	"interop_database"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"interop_match"
.LASF5:
	.string	"unsigned char"
.LASF26:
	.string	"address"
.LASF43:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF29:
	.string	"interop_entry_t"
.LASF25:
	.string	"interop_feature_t"
.LASF46:
	.string	"memset"
.LASF11:
	.string	"long unsigned int"
.LASF6:
	.string	"short int"
.LASF40:
	.string	"__assert_func"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF37:
	.string	"bdaddr_to_string"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF23:
	.string	"INTEROP_DISABLE_LE_SECURE_CONNECTIONS"
.LASF33:
	.string	"bd_addr_any"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF44:
	.string	"interop_feature_string"
.LASF24:
	.string	"INTEROP_AUTO_RETRY_PAIRING"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"esp_log_write"
.LASF9:
	.string	"long int"
.LASF28:
	.string	"feature"
.LASF22:
	.string	"bt_bdaddr_t"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"_Bool"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
.LASF32:
	.string	"bdstr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
