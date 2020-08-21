	.file	"rtc_pm.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"0 && \"unsupported sleep mode\""
.LC6:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_pm.c"
	.section	.text.pm_set_sleep_mode,"ax",@progbits
	.literal_position
	.literal .LC1, 4096
	.literal .LC2, 4194304
	.literal .LC4, .LC3
	.literal .LC5, __func__$2300
	.literal .LC7, .LC6
	.align	4
	.global	pm_set_sleep_mode
	.type	pm_set_sleep_mode, @function
pm_set_sleep_mode:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_pm.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 44 0
	call8	pm_mac_deinit
.LVL1:
	.loc 1 45 0
	call8	pm_check_mac_idle
.LVL2:
	mov.n	a3, a10
.LVL3:
	beqz.n	a10, .L2
	.loc 1 46 0
	call8	pm_mac_init
.LVL4:
	.loc 1 47 0
	movi.n	a2, 1
.LVL5:
	retw.n
.LVL6:
.L2:
	.loc 1 52 0
	bnei	a2, 4, .L6
	.loc 1 60 0
	l32r	a2, .LC1
.LVL7:
	movi.n	a8, 0x40
	l32r	a10, .LC2
	or	a2, a8, a2
	or	a10, a2, a10
	call8	rtc_sleep_init
.LVL8:
	.loc 1 66 0
	mov.n	a2, a3
	retw.n
.LVL9:
.L6:
	.loc 1 64 0
	l32r	a13, .LC4
	l32r	a12, .LC5
	l32r	a10, .LC7
	movi.n	a11, 0x40
	call8	__assert_func
.LVL10:
.LFE0:
	.size	pm_set_sleep_mode, .-pm_set_sleep_mode
	.section	.rodata.__func__$2300,"a",@progbits
	.type	__func__$2300, @object
	.size	__func__$2300, 18
__func__$2300:
	.string	"pm_set_sleep_mode"
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
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x4f
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
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2d
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.2byte	0x21a
	.4byte	0x1a5
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x21b
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x21c
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x21d
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x21e
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x21f
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x220
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x221
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x222
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x223
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x224
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x225
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x226
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x227
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x228
	.4byte	0x64
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x229
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x22a
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x22b
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x22c
	.4byte	0x8b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f
	.byte	0x1
	.byte	0x14
	.4byte	0x1c4
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x1
	.byte	0x16
	.4byte	0x1b1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f
	.byte	0x1
	.byte	0x18
	.4byte	0x1e8
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1b
	.4byte	0x1cf
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x1
	.byte	0x28
	.4byte	0x1e8
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a3
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x28
	.4byte	0x1c4
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x28
	.4byte	0x2aa
	.4byte	.LLST1
	.uleb128 0xc
	.string	"cfg"
	.byte	0x1
	.byte	0x32
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	.LASF38
	.4byte	0x2c0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2300
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x2c5
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x2d0
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x2db
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x2e6
	.4byte	0x277
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0x21
	.byte	0
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0x2f2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2300
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x2aa
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2a3
	.uleb128 0x15
	.4byte	0x84
	.4byte	0x2c0
	.uleb128 0x16
	.4byte	0x76
	.byte	0x11
	.byte	0
	.uleb128 0x17
	.4byte	0x2b0
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x1
	.byte	0x23
	.uleb128 0x18
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x1
	.byte	0x22
	.uleb128 0x18
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x1
	.byte	0x21
	.uleb128 0x19
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x25f
	.uleb128 0x18
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
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
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
.LASF46:
	.string	"pm_set_sleep_mode"
.LASF17:
	.string	"rtc_slowmem_pd_en"
.LASF2:
	.string	"short int"
.LASF32:
	.string	"PM_LIGHT_SLEEP"
.LASF16:
	.string	"rtc_fastmem_pd_en"
.LASF19:
	.string	"wifi_pd_en"
.LASF45:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_pm.c"
.LASF25:
	.string	"rtc_dbias_wak"
.LASF38:
	.string	"__func__"
.LASF40:
	.string	"pm_check_mac_idle"
.LASF27:
	.string	"lslp_meminf_pd"
.LASF18:
	.string	"rtc_peri_pd_en"
.LASF43:
	.string	"__assert_func"
.LASF34:
	.string	"PM_SW_REJECT"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"rtc_sleep_init"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"pmac_save_params"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"vddsdio_pd_en"
.LASF7:
	.string	"__uint32_t"
.LASF14:
	.string	"rtc_mem_inf_fpu"
.LASF30:
	.string	"rtc_sleep_config_t"
.LASF23:
	.string	"dig_dbias_wak"
.LASF4:
	.string	"unsigned int"
.LASF22:
	.string	"wdt_flashboot_mod_en"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"pm_mac_deinit"
.LASF20:
	.string	"rom_mem_pd_en"
.LASF31:
	.string	"pm_sleep_mode_t"
.LASF26:
	.string	"rtc_dbias_slp"
.LASF29:
	.string	"xtal_fpu"
.LASF10:
	.string	"sizetype"
.LASF35:
	.string	"pm_sw_reject_t"
.LASF5:
	.string	"long long int"
.LASF21:
	.string	"deep_slp"
.LASF12:
	.string	"char"
.LASF15:
	.string	"rtc_mem_inf_follow_cpu"
.LASF13:
	.string	"lslp_mem_inf_fpu"
.LASF41:
	.string	"pm_mac_init"
.LASF36:
	.string	"sleep_mode"
.LASF33:
	.string	"PM_SW_NOREJECT"
.LASF9:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"uint32_t"
.LASF24:
	.string	"dig_dbias_slp"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
