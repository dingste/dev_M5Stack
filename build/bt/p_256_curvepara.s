	.file	"p_256_curvepara.c"
	.text
.Ltext0:
	.section	.text.p_256_init_curve,"ax",@progbits
	.literal_position
	.literal .LC0, curve_p256
	.literal .LC1, curve_p256+100
	.literal .LC2, 1522939352
	.literal .LC3, -1439001625
	.literal .LC4, -1276396203
	.literal .LC5, 1989707452
	.literal .LC6, 1696401072
	.literal .LC7, -866930442
	.literal .LC8, 1003371582
	.literal .LC9, 668098635
	.literal .LC10, 1796723186
	.literal .LC11, -517193145
	.literal .LC12, -121837851
	.literal .LC13, 1671708914
	.literal .LC14, 1996717441
	.literal .LC15, 770388896
	.literal .LC16, -190760635
	.literal .LC17, -661077354
	.literal .LC18, 1340293858
	.literal .LC19, -31817829
	.literal .LC20, -1897403574
	.literal .LC21, 2081398294
	.literal .LC22, 734933847
	.literal .LC23, 1798397646
	.literal .LC24, -877248408
	.literal .LC25, 935285237
	.align	4
	.global	p_256_init_curve
	.type	p_256_init_curve, @function
p_256_init_curve:
.LFB5:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/smp/p_256_curvepara.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 32 0
	bnei	a2, 8, .L1
.LVL1:
	.loc 1 35 0
	l32r	a2, .LC0
.LVL2:
	.loc 1 37 0
	movi.n	a3, 0
	.loc 1 44 0
	l32r	a10, .LC1
	.loc 1 35 0
	movi.n	a8, -1
	.loc 1 44 0
	mov.n	a11, a3
	.loc 1 36 0
	movi.n	a4, 1
	.loc 1 44 0
	movi.n	a12, 0x20
	.loc 1 35 0
	s32i	a8, a2, 96
	.loc 1 37 0
	s32i	a3, a2, 88
	.loc 1 38 0
	s32i	a3, a2, 84
	.loc 1 39 0
	s32i	a3, a2, 80
	.loc 1 40 0
	s32i	a8, a2, 76
	.loc 1 41 0
	s32i	a8, a2, 72
	.loc 1 42 0
	s32i	a8, a2, 68
	.loc 1 36 0
	s32i	a4, a2, 92
	.loc 1 44 0
	call8	memset
.LVL3:
	.loc 1 45 0
	mov.n	a11, a3
	movi.n	a12, 0x20
	mov.n	a10, a2
	call8	memset
.LVL4:
	.loc 1 50 0
	l32r	a3, .LC2
	.loc 1 47 0
	s32i	a4, a2, 64
	.loc 1 50 0
	s32i.n	a3, a2, 60
	.loc 1 51 0
	l32r	a3, .LC3
	s32i.n	a3, a2, 56
	.loc 1 52 0
	l32r	a3, .LC4
	s32i.n	a3, a2, 52
	.loc 1 53 0
	l32r	a3, .LC5
	s32i.n	a3, a2, 48
	.loc 1 54 0
	l32r	a3, .LC6
	s32i.n	a3, a2, 44
	.loc 1 55 0
	l32r	a3, .LC7
	s32i.n	a3, a2, 40
	.loc 1 56 0
	l32r	a3, .LC8
	s32i.n	a3, a2, 36
	.loc 1 57 0
	l32r	a3, .LC9
	s32i.n	a3, a2, 32
	.loc 1 60 0
	l32r	a3, .LC10
	s32i	a3, a2, 160
	.loc 1 61 0
	l32r	a3, .LC11
	s32i	a3, a2, 156
	.loc 1 62 0
	l32r	a3, .LC12
	s32i	a3, a2, 152
	.loc 1 63 0
	l32r	a3, .LC13
	s32i	a3, a2, 148
	.loc 1 64 0
	l32r	a3, .LC14
	s32i	a3, a2, 144
	.loc 1 65 0
	l32r	a3, .LC15
	s32i	a3, a2, 140
	.loc 1 66 0
	l32r	a3, .LC16
	s32i	a3, a2, 136
	.loc 1 67 0
	l32r	a3, .LC17
	s32i	a3, a2, 132
	.loc 1 69 0
	l32r	a3, .LC18
	s32i	a3, a2, 192
	.loc 1 70 0
	l32r	a3, .LC19
	s32i	a3, a2, 188
	.loc 1 71 0
	l32r	a3, .LC20
	s32i	a3, a2, 184
	.loc 1 72 0
	l32r	a3, .LC21
	s32i	a3, a2, 180
	.loc 1 73 0
	l32r	a3, .LC22
	s32i	a3, a2, 176
	.loc 1 74 0
	l32r	a3, .LC23
	s32i	a3, a2, 172
	.loc 1 75 0
	l32r	a3, .LC24
	s32i	a3, a2, 168
	.loc 1 76 0
	l32r	a3, .LC25
	s32i	a3, a2, 164
.LVL5:
.L1:
	retw.n
.LFE5:
	.size	p_256_init_curve, .-p_256_init_curve
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x210
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
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
	.4byte	0x48
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
	.byte	0x1a
	.4byte	0x28
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x8b
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x23
	.4byte	0x96
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0xa1
	.4byte	0xce
	.uleb128 0x6
	.4byte	0x76
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x60
	.byte	0x5
	.byte	0x1f
	.4byte	0xf5
	.uleb128 0x8
	.string	"x"
	.byte	0x5
	.byte	0x20
	.4byte	0xf5
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x5
	.byte	0x21
	.4byte	0xf5
	.byte	0x20
	.uleb128 0x8
	.string	"z"
	.byte	0x5
	.byte	0x22
	.4byte	0xf5
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.4byte	0x7d
	.4byte	0x105
	.uleb128 0x6
	.4byte	0x76
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x23
	.4byte	0xce
	.uleb128 0x7
	.byte	0xe4
	.byte	0x5
	.byte	0x25
	.4byte	0x159
	.uleb128 0x8
	.string	"a"
	.byte	0x5
	.byte	0x27
	.4byte	0xf5
	.byte	0
	.uleb128 0x8
	.string	"b"
	.byte	0x5
	.byte	0x28
	.4byte	0xf5
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2b
	.4byte	0x21
	.byte	0x40
	.uleb128 0x8
	.string	"p"
	.byte	0x5
	.byte	0x2e
	.4byte	0xf5
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x31
	.4byte	0xf5
	.byte	0x64
	.uleb128 0x8
	.string	"G"
	.byte	0x5
	.byte	0x34
	.4byte	0x105
	.byte	0x84
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x36
	.4byte	0x110
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c9
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1c
	.4byte	0xac
	.4byte	.LLST0
	.uleb128 0xc
	.string	"ec"
	.byte	0x1
	.byte	0x1e
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	.LVL3
	.4byte	0x20a
	.4byte	0x1ac
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x20a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x159
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x1e2
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x12
	.4byte	0xbe
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x1fa
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xbe
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.4byte	0x159
	.uleb128 0x14
	.4byte	.LASF29
	.4byte	.LASF29
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.4byte	.LFE5
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"__uint8_t"
.LASF23:
	.string	"bd_addr_null"
.LASF15:
	.string	"UINT8"
.LASF20:
	.string	"omega"
.LASF8:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF18:
	.string	"Point"
.LASF11:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF24:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"memset"
.LASF6:
	.string	"__uint32_t"
.LASF28:
	.string	"curve_p256"
.LASF27:
	.string	"keyLength"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"elliptic_curve_t"
.LASF13:
	.string	"uint8_t"
.LASF19:
	.string	"a_minus3"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF16:
	.string	"UINT32"
.LASF22:
	.string	"bd_addr_any"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF26:
	.string	"p_256_init_curve"
.LASF2:
	.string	"signed char"
.LASF17:
	.string	"_Bool"
.LASF25:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/smp/p_256_curvepara.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
