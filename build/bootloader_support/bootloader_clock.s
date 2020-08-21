	.file	"bootloader_clock.c"
	.text
.Ltext0:
	.section	.rodata
	.align	4
.LC0:
	.byte	0
	.byte	80
	.byte	4
	.byte	-1
	.byte	-84
	.zero	3
	.section	.text.bootloader_clock_configure,"ax",@progbits
	.literal_position
	.literal .LC1, 1072955420
	.literal .LC2, 268369920
	.literal .LC3, 1073061900
	.literal .LC5, 1072693308
	.literal .LC6, .LC0
	.literal .LC7, -261889
	.literal .LC8, -1572865
	.literal .LC9, -262145
	.align	4
	.global	bootloader_clock_configure
	.type	bootloader_clock_configure, @function
bootloader_clock_configure:
.LFB4:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_clock.c"
	.loc 1 23 0
	entry	sp, 48
.LCFI0:
.LVL0:
.LBB8:
.LBB9:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 272 0
	l32r	a10, .LC1
	.loc 2 274 0
	l32r	a8, .LC2
.L2:
	.loc 2 272 0
	memw
	l32i.n	a9, a10, 0
.LVL1:
	.loc 2 274 0
	bany	a9, a8, .L2
.LVL2:
.LBE9:
.LBE8:
	.loc 1 39 0
	l32r	a8, .LC3
	memw
	l32i.n	a9, a8, 0
.LVL3:
	.loc 1 32 0
	movi.n	a8, 0x50
	.loc 1 40 0
	bbsi	a9, 15, .L3
.LVL4:
.LBB10:
.LBB11:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 77 0
	l32r	a9, .LC5
.LVL5:
.LBE11:
.LBE10:
	.loc 1 42 0
	movi	a10, 0xf0
.LBB13:
.LBB12:
	.loc 3 77 0
	memw
	l32i.n	a9, a9, 0
.LBE12:
.LBE13:
	.loc 1 40 0
	extui	a9, a9, 0, 2
	.loc 1 42 0
	addi	a9, a9, -2
	moveqz	a8, a10, a9
.LVL6:
.L3:
	.loc 1 45 0
	l32r	a9, .LC6
	.loc 1 47 0
	slli	a8, a8, 8
.LVL7:
	.loc 1 45 0
	l32i.n	a10, a9, 0
	l32i.n	a9, a9, 4
	s32i.n	a10, sp, 0
	s32i.n	a9, sp, 4
	.loc 1 46 0
	movi.n	a9, 0
	s8i	a9, sp, 0
	.loc 1 47 0
	l32i.n	a10, sp, 0
	l32r	a9, .LC7
	and	a9, a10, a9
	or	a8, a9, a8
	s32i.n	a8, sp, 0
	.loc 1 48 0
	call8	rtc_clk_slow_freq_get
.LVL8:
	extui	a10, a10, 0, 2
	slli	a8, a10, 19
	l32r	a9, .LC8
	l32i.n	a10, sp, 0
	and	a10, a10, a9
	or	a10, a10, a8
	s32i.n	a10, sp, 0
	.loc 1 49 0
	call8	rtc_clk_fast_freq_get
.LVL9:
	extui	a10, a10, 0, 1
	slli	a8, a10, 18
	l32r	a9, .LC9
	l32i.n	a10, sp, 0
	.loc 1 50 0
	l32i.n	a11, sp, 4
	.loc 1 49 0
	and	a10, a10, a9
	or	a10, a10, a8
	s32i.n	a10, sp, 0
	.loc 1 50 0
	call8	rtc_clk_init
.LVL10:
	retw.n
.LFE4:
	.size	bootloader_clock_configure, .-bootloader_clock_configure
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2db
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xc
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x33
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x1a
	.4byte	0x5a
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
	.byte	0x5
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x3c
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x41
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x46
	.4byte	0xfc
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x4c
	.4byte	0xd1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x65
	.4byte	0x126
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x69
	.4byte	0x107
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x6e
	.4byte	0x14a
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x71
	.4byte	0x131
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x1c7
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.byte	0x83
	.4byte	0xc6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x84
	.4byte	0xfc
	.byte	0x4
	.byte	0xa
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x85
	.4byte	0x14a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x86
	.4byte	0x126
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x87
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.byte	0x88
	.4byte	0x7a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.byte	0x89
	.4byte	0x7a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x8a
	.4byte	0x155
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x3
	.byte	0x4a
	.4byte	0x7a
	.byte	0x3
	.4byte	0x1ee
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0x4a
	.4byte	0x7a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x214
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x10d
	.4byte	0x6f
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x10e
	.4byte	0x7a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0x16
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bb
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x20
	.4byte	0x48
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x27
	.4byte	0x7a
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2d
	.4byte	0x1c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	0x1ee
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x1d
	.4byte	0x282
	.uleb128 0x12
	.4byte	0x1fb
	.byte	0
	.uleb128 0x13
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x14
	.4byte	0x207
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x1d2
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x29
	.4byte	0x29f
	.uleb128 0x16
	.4byte	0x1e2
	.4byte	.LLST3
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x2bb
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x2c7
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x2d3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x116
	.uleb128 0x18
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x130
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0xa7
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF52:
	.string	"bootloader_clock_configure"
.LASF4:
	.string	"__uint8_t"
.LASF21:
	.string	"RTC_CPU_FREQ_80M"
.LASF20:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF15:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF34:
	.string	"cpu_freq_mhz"
.LASF32:
	.string	"rtc_fast_freq_t"
.LASF38:
	.string	"slow_clk_dcap"
.LASF35:
	.string	"fast_freq"
.LASF51:
	.string	"status"
.LASF37:
	.string	"clk_8m_div"
.LASF31:
	.string	"RTC_FAST_FREQ_8M"
.LASF27:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF50:
	.string	"uart_tx_wait_idle"
.LASF16:
	.string	"RTC_XTAL_FREQ_40M"
.LASF43:
	.string	"clk_cfg"
.LASF47:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF33:
	.string	"xtal_freq"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"uart_no"
.LASF5:
	.string	"__uint32_t"
.LASF22:
	.string	"RTC_CPU_FREQ_160M"
.LASF39:
	.string	"clk_8m_dfreq"
.LASF45:
	.string	"rtc_clk_fast_freq_get"
.LASF40:
	.string	"rtc_clk_config_t"
.LASF19:
	.string	"rtc_xtal_freq_t"
.LASF6:
	.string	"unsigned int"
.LASF29:
	.string	"rtc_slow_freq_t"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF48:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_clock.c"
.LASF24:
	.string	"RTC_CPU_FREQ_2M"
.LASF46:
	.string	"rtc_clk_init"
.LASF18:
	.string	"RTC_XTAL_FREQ_24M"
.LASF12:
	.string	"sizetype"
.LASF42:
	.string	"chip_ver_reg"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"RTC_XTAL_FREQ_26M"
.LASF36:
	.string	"slow_freq"
.LASF14:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF28:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF49:
	.string	"DPORT_REG_READ"
.LASF30:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"rtc_cpu_freq_t"
.LASF23:
	.string	"RTC_CPU_FREQ_240M"
.LASF44:
	.string	"rtc_clk_slow_freq_get"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
