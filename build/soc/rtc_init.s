	.file	"rtc_init.c"
	.text
.Ltext0:
	.section	.text.rtc_init,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988208
	.literal .LC1, -67108865
	.literal .LC2, 1072988188
	.literal .LC3, 16777215
	.literal .LC4, -16760833
	.literal .LC5, -16321
	.literal .LC6, 1072988280
	.literal .LC7, 50331648
	.literal .LC8, 1610612736
	.literal .LC9, 1072988284
	.literal .LC10, -234881025
	.literal .LC11, 134217728
	.literal .LC12, -29360129
	.literal .LC13, 16777216
	.literal .LC14, 1072693316
	.literal .LC15, -2049
	.literal .LC16, 1072693340
	.literal .LC17, 1072693396
	.literal .LC18, 1072693408
	.literal .LC19, 1072693412
	.literal .LC20, 1072693420
	.literal .LC22, 1072988272
	.literal .LC23, 1072988160
	.literal .LC24, -8193
	.literal .LC25, -4194305
	.literal .LC26, -524289
	.literal .LC27, -65537
	.literal .LC28, 1048576
	.literal .LC29, 131072
	.literal .LC30, 16384
	.literal .LC31, -16777217
	.literal .LC32, 8388608
	.literal .LC33, 2147483647
	.literal .LC34, -536870913
	.literal .LC36, 268435456
	.literal .LC37, -268435457
	.literal .LC38, 1072988292
	.literal .LC39, -1048577
	.literal .LC40, -262145
	.literal .LC41, -87361
	.literal .LC42, 1072988288
	.literal .LC43, -73729
	.literal .LC44, 1072988296
	.literal .LC45, -178913281
	.literal .LC46, -16385
	.literal .LC47, -4097
	.align	4
	.global	rtc_init
	.type	rtc_init, @function
rtc_init:
.LFB3:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_init.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 27 0
	l32r	a9, .LC0
	l32r	a8, .LC1
	memw
	l32i.n	a10, a9, 0
	.loc 1 29 0
	extui	a11, a2, 16, 8
	.loc 1 27 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 29 0
	l32r	a8, .LC2
	l32r	a10, .LC3
	memw
	l32i.n	a9, a8, 0
	slli	a11, a11, 24
	and	a9, a9, a10
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 30 0
	memw
	l32i.n	a9, a8, 0
	l32r	a10, .LC4
	extui	a11, a2, 8, 8
	slli	a11, a11, 14
	and	a9, a9, a10
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 31 0
	memw
	l32i.n	a9, a8, 0
	l32r	a10, .LC5
	extui	a11, a2, 0, 8
	and	a9, a9, a10
	slli	a11, a11, 6
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 33 0
	l32r	a8, .LC6
	l32r	a9, .LC7
	memw
	l32i.n	a10, a8, 0
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 34 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 38 0
	l32r	a9, .LC9
	l32r	a8, .LC10
	memw
	l32i.n	a10, a9, 0
	and	a10, a10, a8
	l32r	a8, .LC11
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 39 0
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC12
	and	a8, a10, a8
	l32r	a10, .LC13
	or	a8, a8, a10
	memw
	s32i.n	a8, a9, 0
	.loc 1 41 0
	bnone	a2, a10, .L2
.LVL1:
.LBB20:
.LBB21:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 170 0
	l32r	a10, .LC14
.LBE21:
.LBE20:
	.loc 1 43 0
	l32r	a8, .LC15
.LBB23:
.LBB22:
	.loc 2 170 0
	memw
	l32i.n	a9, a10, 0
.LBE22:
.LBE23:
	.loc 1 43 0
	and	a9, a9, a8
	memw
	s32i.n	a9, a10, 0
.LVL2:
.LBB24:
.LBB25:
	.loc 2 170 0
	l32r	a9, .LC16
	memw
	l32i.n	a10, a9, 0
.LBE25:
.LBE24:
	.loc 1 44 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LVL3:
.LBB26:
.LBB27:
	.loc 2 170 0
	l32r	a8, .LC17
.LBE27:
.LBE26:
	.loc 1 46 0
	movi	a9, -0xfd
.LBB29:
.LBB28:
	.loc 2 170 0
	memw
	l32i.n	a10, a8, 0
.LBE28:
.LBE29:
	.loc 1 46 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LVL4:
.LBB30:
.LBB31:
	.loc 2 170 0
	memw
	l32i.n	a10, a8, 0
.LBE31:
.LBE30:
	.loc 1 47 0
	movi.n	a9, -3
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LVL5:
.LBB32:
.LBB33:
	.loc 2 170 0
	memw
	l32i.n	a10, a8, 0
.LBE33:
.LBE32:
	.loc 1 48 0
	movi.n	a9, -2
	and	a10, a10, a9
	memw
	s32i.n	a10, a8, 0
.LVL6:
.LBB34:
.LBB35:
	.loc 2 170 0
	l32r	a8, .LC18
	memw
	l32i.n	a10, a8, 0
.LBE35:
.LBE34:
	.loc 1 50 0
	movi.n	a10, 0
	memw
	s32i.n	a10, a8, 0
.LVL7:
.LBB36:
.LBB37:
	.loc 2 170 0
	l32r	a10, .LC19
	memw
	l32i.n	a8, a10, 0
.LBE37:
.LBE36:
	.loc 1 51 0
	and	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LVL8:
.LBB38:
.LBB39:
	.loc 2 170 0
	l32r	a8, .LC20
.LBE39:
.LBE38:
	.loc 1 53 0
	movi	a10, -0x101
.LBB41:
.LBB40:
	.loc 2 170 0
	memw
	l32i.n	a11, a8, 0
.LBE40:
.LBE41:
	.loc 1 53 0
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
.LVL9:
.LBB42:
.LBB43:
	.loc 2 170 0
	memw
	l32i.n	a10, a8, 0
.LBE43:
.LBE42:
	.loc 1 54 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LVL10:
.L2:
	.loc 1 57 0
	bbci	a2, 25, .L1
	.loc 1 58 0
	l32r	a9, .LC22
	l32r	a8, .LC1
	memw
	l32i.n	a10, a9, 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 60 0
	l32r	a8, .LC23
	l32r	a9, .LC24
	memw
	l32i.n	a10, a8, 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 62 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC25
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 63 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC26
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 64 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC27
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 66 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC28
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 67 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC29
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 68 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC30
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 70 0
	l32r	a9, .LC0
	l32r	a10, .LC31
	memw
	l32i.n	a11, a9, 0
	and	a10, a11, a10
	memw
	s32i.n	a10, a9, 0
	.loc 1 71 0
	memw
	l32i.n	a11, a9, 0
	l32r	a10, .LC32
	or	a10, a11, a10
	memw
	s32i.n	a10, a9, 0
	.loc 1 72 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC15
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 73 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x201
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 75 0
	l32r	a8, .LC9
	l32r	a9, .LC33
	memw
	l32i.n	a10, a8, 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 76 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC34
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 78 0
	memw
	l32i.n	a9, a8, 0
	.loc 1 77 0
	bbci	a2, 26, .L4
	.loc 1 78 0
	l32r	a2, .LC36
.LVL11:
	or	a2, a9, a2
	j	.L12
.LVL12:
.L4:
	.loc 1 80 0
	l32r	a2, .LC37
.LVL13:
	and	a2, a9, a2
.L12:
	memw
	s32i.n	a2, a8, 0
	.loc 1 83 0
	l32r	a8, .LC38
	movi.n	a2, -0x11
	memw
	l32i.n	a9, a8, 0
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 84 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC39
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 85 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC40
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 86 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC41
	and	a2, a9, a2
	.loc 1 87 0
	l32r	a9, .LC42
	.loc 1 86 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 87 0
	memw
	l32i.n	a8, a9, 0
	l32r	a2, .LC43
	and	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 88 0
	memw
	l32i.n	a8, a9, 0
	l32r	a2, .LC26
	and	a2, a8, a2
	.loc 1 89 0
	l32r	a8, .LC44
	.loc 1 88 0
	memw
	s32i.n	a2, a9, 0
	.loc 1 89 0
	memw
	l32i.n	a10, a8, 0
	l32r	a2, .LC33
	and	a2, a10, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 90 0
	memw
	l32i.n	a10, a8, 0
	l32r	a2, .LC34
	and	a2, a10, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 91 0
	memw
	l32i.n	a10, a8, 0
	l32r	a2, .LC45
	and	a2, a10, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 92 0
	memw
	l32i.n	a10, a9, 0
	movi.n	a2, -6
	and	a2, a10, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 93 0
	memw
	l32i.n	a10, a9, 0
	movi	a2, -0x21
	and	a2, a10, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 95 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC46
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 96 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC47
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LVL14:
.L1:
	retw.n
.LFE3:
	.size	rtc_init, .-rtc_init
	.section	.text.rtc_vddsdio_get_config,"ax",@progbits
	.literal_position
	.literal .LC48, 1072988276
	.literal .LC54, 1073061904
	.literal .LC58, 1073061900
	.literal .LC61, 1072971832
	.align	4
	.global	rtc_vddsdio_get_config
	.type	rtc_vddsdio_get_config, @function
rtc_vddsdio_get_config:
.LFB4:
	.loc 1 101 0
	entry	sp, 32
.LCFI1:
	.loc 1 103 0
	l32r	a2, .LC48
	memw
	l32i.n	a11, a2, 0
.LVL15:
	.loc 1 104 0
	extui	a9, a11, 29, 2
.LVL16:
	.loc 1 105 0
	extui	a8, a11, 27, 2
.LVL17:
	.loc 1 106 0
	extui	a10, a11, 25, 2
.LVL18:
	.loc 1 107 0
	bbci	a11, 22, .L14
.LVL19:
	.loc 1 112 0
	extui	a2, a11, 31, 1
	extui	a11, a11, 23, 1
.LVL20:
	slli	a2, a2, 1
	slli	a12, a11, 2
	movi.n	a11, 1
	or	a11, a11, a2
	j	.L19
.LVL21:
.L14:
	.loc 1 114 0
	l32r	a2, .LC54
	memw
	l32i.n	a2, a2, 0
.LVL22:
	.loc 1 115 0
	bbci	a2, 16, .L16
.LVL23:
	.loc 1 122 0
	l32r	a13, .LC58
	.loc 1 118 0
	extui	a11, a2, 14, 1
.LVL24:
	.loc 1 122 0
	memw
	l32i.n	a13, a13, 0
	.loc 1 119 0
	extui	a12, a2, 15, 1
.LVL25:
	.loc 1 122 0
	bbsi	a13, 14, .L17
	.loc 1 125 0
	extui	a9, a2, 8, 2
.LVL26:
	.loc 1 126 0
	extui	a8, a2, 10, 2
.LVL27:
	.loc 1 127 0
	extui	a10, a2, 12, 2
.LVL28:
.L17:
	.loc 1 129 0
	slli	a12, a12, 2
.LVL29:
	slli	a11, a11, 1
.LVL30:
.L19:
	slli	a2, a9, 3
	or	a11, a11, a12
	slli	a8, a8, 5
	or	a2, a11, a2
	slli	a10, a10, 7
	or	a2, a2, a8
	j	.L18
.LVL31:
.L16:
	.loc 1 133 0
	l32r	a2, .LC61
.LVL32:
	.loc 1 137 0
	movi.n	a11, 1
.LVL33:
	.loc 1 133 0
	memw
	l32i.n	a2, a2, 0
.LVL34:
	.loc 1 137 0
	slli	a9, a9, 3
.LVL35:
	extui	a2, a2, 5, 1
.LVL36:
	xor	a2, a2, a11
	slli	a2, a2, 2
	movi.n	a11, 2
	or	a2, a11, a2
	slli	a8, a8, 5
.LVL37:
	or	a9, a2, a9
	slli	a10, a10, 7
.LVL38:
	or	a2, a9, a8
.LVL39:
.L18:
	or	a2, a2, a10
	.loc 1 138 0
	retw.n
.LFE4:
	.size	rtc_vddsdio_get_config, .-rtc_vddsdio_get_config
	.section	.text.rtc_vddsdio_set_config,"ax",@progbits
	.literal_position
	.literal .LC62, 2097152
	.literal .LC63, 1072988276
	.align	4
	.global	rtc_vddsdio_set_config
	.type	rtc_vddsdio_set_config, @function
rtc_vddsdio_set_config:
.LFB5:
	.loc 1 141 0
.LVL40:
	entry	sp, 32
.LCFI2:
.LVL41:
	extui	a8, a2, 0, 1
	slli	a9, a8, 22
	extui	a8, a2, 1, 1
	slli	a8, a8, 31
	or	a8, a9, a8
	l32r	a9, .LC62
	extui	a10, a2, 3, 2
	or	a8, a8, a9
	slli	a10, a10, 29
	extui	a9, a2, 5, 2
	or	a8, a8, a10
	slli	a9, a9, 27
	or	a9, a8, a9
	extui	a8, a2, 7, 2
	slli	a8, a8, 25
	.loc 1 149 0
	extui	a2, a2, 2, 1
.LVL42:
	or	a8, a9, a8
	slli	a2, a2, 23
	or	a2, a2, a8
.LVL43:
	.loc 1 150 0
	l32r	a8, .LC63
	memw
	s32i.n	a2, a8, 0
	retw.n
.LFE5:
	.size	rtc_vddsdio_set_config, .-rtc_vddsdio_set_config
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x33c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0x48
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
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
	.2byte	0x294
	.4byte	0xf5
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x295
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x296
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x297
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x298
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x299
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x29a
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x29b
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x16b
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x2b9
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x2ba
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x2bb
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x2bc
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x2bd
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x2be
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x2bf
	.4byte	0x101
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x2
	.byte	0xa7
	.4byte	0x64
	.byte	0x3
	.4byte	0x193
	.uleb128 0x9
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x64
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x19
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b9
	.uleb128 0xb
	.string	"cfg"
	.byte	0x1
	.byte	0x19
	.4byte	0xf5
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	0x177
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2b
	.4byte	0x1d4
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST1
	.byte	0
	.uleb128 0xe
	.4byte	0x177
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x2c
	.4byte	0x1f1
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST2
	.byte	0
	.uleb128 0xc
	.4byte	0x177
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x2e
	.4byte	0x20e
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST3
	.byte	0
	.uleb128 0xe
	.4byte	0x177
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x2f
	.4byte	0x22b
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST4
	.byte	0
	.uleb128 0xe
	.4byte	0x177
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x30
	.4byte	0x248
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST5
	.byte	0
	.uleb128 0xe
	.4byte	0x177
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x32
	.4byte	0x265
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST6
	.byte	0
	.uleb128 0xe
	.4byte	0x177
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x33
	.4byte	0x282
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST7
	.byte	0
	.uleb128 0xc
	.4byte	0x177
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x35
	.4byte	0x29f
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST8
	.byte	0
	.uleb128 0xf
	.4byte	0x177
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x36
	.uleb128 0xd
	.4byte	0x187
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x64
	.4byte	0x16b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30f
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x66
	.4byte	0x16b
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x67
	.4byte	0x64
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x72
	.4byte	0x64
	.4byte	.LLST12
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x85
	.4byte	0x64
	.4byte	.LLST13
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8c
	.4byte	0x16b
	.4byte	.LLST14
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0x8e
	.4byte	0x64
	.4byte	.LLST15
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00044
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0005c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000a4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000ac
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000ac
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0xa
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1b
	.uleb128 0
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0xe
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x19
	.uleb128 0
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x12
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x28
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x40
	.byte	0x43
	.byte	0x24
	.byte	0x1a
	.byte	0x47
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x17
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x12
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x17
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1b
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5b
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1c
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5b
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5c
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1c
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5b
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5c
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1c
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5b
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5c
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1c
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5b
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5c
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x23
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x5b
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x12
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x24
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x59
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x23
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x18
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x58
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x14
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x5
	.uleb128 0
	.byte	0x5a
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xd
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1e
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL43
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_init.c"
.LASF23:
	.string	"drefh"
.LASF25:
	.string	"drefl"
.LASF32:
	.string	"strap_reg"
.LASF21:
	.string	"enable"
.LASF24:
	.string	"drefm"
.LASF37:
	.string	"rtc_vddsdio_set_config"
.LASF27:
	.string	"rtc_init"
.LASF18:
	.string	"rtc_dboost_fpd"
.LASF34:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"xtal_wait"
.LASF33:
	.string	"config"
.LASF30:
	.string	"sdio_conf_reg"
.LASF15:
	.string	"pll_wait"
.LASF22:
	.string	"tieh"
.LASF7:
	.string	"__uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF36:
	.string	"DPORT_READ_PERI_REG"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"result"
.LASF31:
	.string	"efuse_reg"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"ck8m_wait"
.LASF12:
	.string	"char"
.LASF16:
	.string	"clkctl_init"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"rtc_config_t"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF20:
	.string	"force"
.LASF28:
	.string	"rtc_vddsdio_get_config"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"pwrctl_init"
.LASF26:
	.string	"rtc_vddsdio_config_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
