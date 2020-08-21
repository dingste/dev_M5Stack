	.file	"bootloader_random.c"
	.text
.Ltext0:
	.section	.text.bootloader_fill_random,"ax",@progbits
	.align	4
	.global	bootloader_fill_random
	.type	bootloader_fill_random, @function
bootloader_fill_random:
.LFB14:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_random.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 29 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_fill_random
.LVL1:
	retw.n
.LFE14:
	.size	bootloader_fill_random, .-bootloader_fill_random
	.section	.text.bootloader_random_enable,"ax",@progbits
	.literal_position
	.literal .LC0, 1072693452
	.literal .LC1, 32768
	.literal .LC2, 1072988328
	.literal .LC3, 1073741823
	.literal .LC4, -2147483648
	.literal .LC5, 536870912
	.literal .LC6, 1072990252
	.literal .LC7, 1072693440
	.literal .LC8, 1073111084
	.literal .LC9, -1381126739
	.literal .LC10, 1073111088
	.literal .LC11, 1073111092
	.literal .LC12, 1073111096
	.literal .LC13, 1072990220
	.literal .LC14, 786432
	.literal .LC15, 1072990208
	.literal .LC16, 134217728
	.literal .LC17, 1072990352
	.literal .LC18, 268435456
	.literal .LC19, 1073111056
	.literal .LC20, -32641
	.literal .LC21, 1073111064
	.literal .LC22, -16711681
	.literal .LC23, 655360
	.literal .LC24, -33554433
	.literal .LC25, 1073017008
	.literal .LC26, -4033
	.literal .LC27, 67108864
	.literal .LC28, 1073017000
	.literal .LC29, 1073016840
	.align	4
	.global	bootloader_random_enable
	.type	bootloader_random_enable, @function
bootloader_random_enable:
.LFB15:
	.loc 1 64 0
	entry	sp, 32
.LCFI1:
.LVL2:
.LBB12:
.LBB13:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 170 0
	l32r	a9, .LC0
.LBE13:
.LBE12:
	.loc 1 68 0
	l32r	a8, .LC1
.LBB15:
.LBB14:
	.loc 2 170 0
	memw
	l32i.n	a10, a9, 0
.LBE14:
.LBE15:
.LBB16:
.LBB17:
	l32r	a11, .LC7
.LBE17:
.LBE16:
	.loc 1 68 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 76 0
	l32r	a8, .LC2
	l32r	a9, .LC3
	memw
	l32i.n	a10, a8, 0
	and	a10, a10, a9
	l32r	a9, .LC4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 77 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC5
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 78 0
	l32r	a8, .LC6
	movi.n	a10, 0x10
	memw
	l32i.n	a9, a8, 0
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LVL3:
.LBB19:
.LBB18:
	.loc 2 170 0
	memw
	l32i.n	a9, a11, 0
.LBE18:
.LBE19:
	.loc 1 80 0
	or	a9, a9, a10
	memw
	s32i.n	a9, a11, 0
	.loc 1 81 0
	memw
	l32i.n	a11, a8, 0
	movi	a9, -0x101
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 82 0
	memw
	l32i.n	a11, a8, 0
	movi	a9, -0x201
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 87 0
	l32r	a8, .LC9
	l32r	a9, .LC8
	memw
	s32i.n	a8, a9, 0
	.loc 1 88 0
	l32r	a9, .LC10
	memw
	s32i.n	a8, a9, 0
	.loc 1 89 0
	l32r	a9, .LC11
	memw
	s32i.n	a8, a9, 0
	.loc 1 90 0
	l32r	a9, .LC12
	memw
	s32i.n	a8, a9, 0
	.loc 1 92 0
	l32r	a9, .LC13
	memw
	l32i.n	a11, a9, 0
	l32r	a8, .LC14
	.loc 1 98 0
	l32r	a12, .LC21
	.loc 1 92 0
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 93 0
	l32r	a9, .LC15
	l32r	a8, .LC16
	memw
	l32i.n	a11, a9, 0
	.loc 1 104 0
	l32r	a14, .LC25
	.loc 1 93 0
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 94 0
	l32r	a9, .LC17
	l32r	a8, .LC18
	memw
	l32i.n	a11, a9, 0
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 95 0
	l32r	a8, .LC19
	movi.n	a9, 4
	memw
	l32i.n	a11, a8, 0
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 96 0
	memw
	l32i.n	a11, a8, 0
	l32r	a9, .LC20
	and	a11, a11, a9
	movi	a9, 0x200
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 98 0
	memw
	l32i.n	a11, a12, 0
	movi	a9, -0x100
	and	a9, a11, a9
	movi.n	a11, 8
	or	a9, a9, a11
	memw
	s32i.n	a9, a12, 0
	.loc 1 99 0
	memw
	l32i.n	a13, a12, 0
	l32r	a9, .LC22
	and	a13, a13, a9
	l32r	a9, .LC23
	or	a9, a13, a9
	memw
	s32i.n	a9, a12, 0
	.loc 1 100 0
	memw
	l32i.n	a12, a8, 0
	movi.n	a9, -0x19
	and	a9, a12, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 101 0
	memw
	l32i.n	a12, a8, 0
	movi.n	a9, 0x20
	or	a12, a12, a9
	memw
	s32i.n	a12, a8, 0
	.loc 1 102 0
	memw
	l32i.n	a13, a8, 0
	l32r	a12, .LC24
	and	a12, a13, a12
	memw
	s32i.n	a12, a8, 0
	.loc 1 104 0
	memw
	l32i.n	a13, a14, 0
	l32r	a12, .LC26
	and	a13, a13, a12
	movi	a12, 0x500
	or	a12, a13, a12
	memw
	s32i.n	a12, a14, 0
	.loc 1 106 0
	memw
	l32i.n	a13, a8, 0
	l32r	a12, .LC27
	or	a12, a13, a12
	memw
	s32i.n	a12, a8, 0
	.loc 1 108 0
	l32r	a8, .LC28
	movi.n	a12, -2
	memw
	l32i.n	a13, a8, 0
	and	a12, a13, a12
	memw
	s32i.n	a12, a8, 0
	.loc 1 109 0
	memw
	l32i.n	a12, a8, 0
	or	a12, a12, a9
	memw
	s32i.n	a12, a8, 0
	.loc 1 110 0
	memw
	l32i.n	a12, a8, 0
	or	a10, a12, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 111 0
	memw
	l32i.n	a10, a8, 0
	or	a11, a10, a11
	memw
	s32i.n	a11, a8, 0
	.loc 1 112 0
	l32r	a8, .LC29
	memw
	l32i.n	a10, a8, 0
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE15:
	.size	bootloader_random_enable, .-bootloader_random_enable
	.section	.text.bootloader_random_disable,"ax",@progbits
	.literal_position
	.literal .LC30, 1072693440
	.literal .LC31, 1073017000
	.literal .LC32, 1073016840
	.literal .LC33, 1072990208
	.literal .LC34, -134217729
	.literal .LC35, 1072990352
	.literal .LC36, -268435457
	.literal .LC37, 1072990252
	.literal .LC38, 1073111056
	.literal .LC39, -67108901
	.literal .LC40, 1072990220
	.literal .LC41, -786433
	.literal .LC42, 1073111064
	.literal .LC43, -16711681
	.literal .LC44, 524288
	.literal .LC45, 1072693444
	.literal .LC46, 1072988328
	.literal .LC47, -536870913
	.literal .LC48, 1073741823
	.align	4
	.global	bootloader_random_disable
	.type	bootloader_random_disable, @function
bootloader_random_disable:
.LFB16:
	.loc 1 116 0
	entry	sp, 32
.LCFI2:
.LVL4:
.LBB20:
.LBB21:
	.loc 2 170 0
	l32r	a10, .LC30
.LBE21:
.LBE20:
	.loc 1 118 0
	movi.n	a9, -0x11
.LBB23:
.LBB22:
	.loc 2 170 0
	memw
	l32i.n	a8, a10, 0
.LBE22:
.LBE23:
	.loc 1 118 0
	and	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	.loc 1 123 0
	l32r	a8, .LC31
	movi.n	a10, -2
	memw
	l32i.n	a11, a8, 0
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 124 0
	memw
	l32i.n	a11, a8, 0
	movi	a10, -0x21
	and	a11, a11, a10
	memw
	s32i.n	a11, a8, 0
	.loc 1 125 0
	memw
	l32i.n	a12, a8, 0
	movi.n	a11, -9
	and	a11, a12, a11
	memw
	s32i.n	a11, a8, 0
	.loc 1 126 0
	memw
	l32i.n	a11, a8, 0
	and	a11, a11, a9
	memw
	s32i.n	a11, a8, 0
	.loc 1 127 0
	l32r	a8, .LC32
	memw
	l32i.n	a11, a8, 0
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 130 0
	l32r	a10, .LC33
	l32r	a8, .LC34
	memw
	l32i.n	a11, a10, 0
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 131 0
	l32r	a10, .LC35
	l32r	a8, .LC36
	memw
	l32i.n	a11, a10, 0
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 134 0
	l32r	a10, .LC37
	memw
	l32i.n	a8, a10, 0
	and	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	.loc 1 135 0
	l32r	a10, .LC38
	l32r	a8, .LC39
	memw
	l32i.n	a11, a10, 0
	and	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 137 0
	l32r	a10, .LC40
	memw
	l32i.n	a11, a10, 0
	l32r	a8, .LC41
	and	a8, a11, a8
	.loc 1 138 0
	l32r	a11, .LC42
	.loc 1 137 0
	memw
	s32i.n	a8, a10, 0
	.loc 1 138 0
	memw
	l32i.n	a10, a11, 0
	l32r	a8, .LC43
	and	a10, a10, a8
	l32r	a8, .LC44
	or	a8, a10, a8
	memw
	s32i.n	a8, a11, 0
.LVL5:
.LBB24:
.LBB25:
	.loc 2 170 0
	l32r	a8, .LC45
.LBE25:
.LBE24:
	.loc 1 141 0
	movi.n	a10, 0x10
.LBB27:
.LBB26:
	.loc 2 170 0
	memw
	l32i.n	a11, a8, 0
.LBE26:
.LBE27:
	.loc 1 141 0
	or	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
.LVL6:
.LBB28:
.LBB29:
	.loc 2 170 0
	memw
	l32i.n	a10, a8, 0
.LBE29:
.LBE28:
	.loc 1 142 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 145 0
	l32r	a8, .LC46
	l32r	a9, .LC47
	memw
	l32i.n	a10, a8, 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 146 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC48
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE16:
	.size	bootloader_random_disable, .-bootloader_random_disable
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1c2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x2
	.byte	0xa7
	.4byte	0x73
	.byte	0x3
	.4byte	0xbf
	.uleb128 0x7
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1b
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LVL1
	.4byte	0x1ba
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x151
	.uleb128 0xc
	.4byte	0xa3
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x44
	.4byte	0x137
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x3ff000cc
	.byte	0
	.uleb128 0xe
	.4byte	0xa3
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x50
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x3ff000c0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x73
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ba
	.uleb128 0xc
	.4byte	0xa3
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x76
	.4byte	0x183
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x3ff000c0
	.byte	0
	.uleb128 0xc
	.4byte	0xa3
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x8d
	.4byte	0x1a0
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x3ff000c4
	.byte	0
	.uleb128 0xf
	.4byte	0xa3
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x8e
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x3ff000c4
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x6
	.byte	0xb1
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"bootloader_random_enable"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"bootloader_random_disable"
.LASF5:
	.string	"size_t"
.LASF16:
	.string	"length"
.LASF12:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"esp_fill_random"
.LASF13:
	.string	"char"
.LASF9:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF22:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF14:
	.string	"_Bool"
.LASF7:
	.string	"long long int"
.LASF6:
	.string	"__uint32_t"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF3:
	.string	"unsigned char"
.LASF23:
	.string	"DPORT_READ_PERI_REG"
.LASF17:
	.string	"bootloader_fill_random"
.LASF21:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_random.c"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"buffer"
.LASF11:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
