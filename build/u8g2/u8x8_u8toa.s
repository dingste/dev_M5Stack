	.file	"u8x8_u8toa.c"
	.text
.Ltext0:
	.section	.text.u8x8_u8toap,"ax",@progbits
	.literal_position
	.literal .LC2, u8x8_u8toa_tab
	.align	4
	.global	u8x8_u8toap
	.type	u8x8_u8toap, @function
u8x8_u8toap:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_u8toa.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 48 0
	l32r	a11, .LC2
	.loc 1 41 0
	extui	a3, a3, 0, 8
	movi.n	a8, 0
.LVL2:
.L4:
	.loc 1 48 0
	add.n	a9, a8, a11
	l8ui	a10, a9, 0
.LVL3:
	.loc 1 47 0
	movi.n	a9, 0x30
.LVL4:
	.loc 1 49 0
	j	.L2
.LVL5:
.L3:
	.loc 1 51 0
	sub	a3, a3, a10
.LVL6:
	.loc 1 52 0
	addi.n	a9, a9, 1
.LVL7:
	.loc 1 51 0
	extui	a3, a3, 0, 8
.LVL8:
	.loc 1 52 0
	extui	a9, a9, 0, 8
.LVL9:
.L2:
	.loc 1 49 0
	bgeu	a3, a10, .L3
	.loc 1 54 0 discriminator 2
	add.n	a10, a2, a8
	s8i	a9, a10, 0
.LVL10:
	addi.n	a8, a8, 1
.LVL11:
	.loc 1 45 0 discriminator 2
	bnei	a8, 3, .L4
	.loc 1 56 0
	movi.n	a3, 0
.LVL12:
	s8i	a3, a2, 3
	.loc 1 58 0
	retw.n
.LFE0:
	.size	u8x8_u8toap, .-u8x8_u8toap
	.section	.text.u8x8_u8toa,"ax",@progbits
	.literal_position
	.literal .LC3, buf$2843
	.align	4
	.global	u8x8_u8toa
	.type	u8x8_u8toa, @function
u8x8_u8toa:
.LFB1:
	.loc 1 62 0
.LVL13:
	entry	sp, 32
.LCFI1:
	.loc 1 65 0
	extui	a11, a2, 0, 8
	.loc 1 62 0
	extui	a3, a3, 0, 8
.LVL14:
	.loc 1 65 0
	l32r	a10, .LC3
	movi.n	a2, 3
.LVL15:
	sub	a2, a2, a3
	call8	u8x8_u8toap
.LVL16:
	extui	a2, a2, 0, 8
	.loc 1 66 0
	add.n	a2, a10, a2
	retw.n
.LFE1:
	.size	u8x8_u8toa, .-u8x8_u8toa
	.section	.bss.buf$2843,"aw",@nobits
	.type	buf$2843, @object
	.size	buf$2843, 4
buf$2843:
	.zero	4
	.section	.rodata.u8x8_u8toa_tab,"a",@progbits
	.type	u8x8_u8toa_tab, @object
	.size	u8x8_u8toa_tab, 3
u8x8_u8toa_tab:
	.byte	100
	.byte	10
	.byte	1
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x184
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xc
	.4byte	.LASF16
	.4byte	.LASF17
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x28
	.4byte	0xd0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x1
	.byte	0x28
	.4byte	0xe2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.string	"v"
	.byte	0x1
	.byte	0x28
	.4byte	0x68
	.4byte	.LLST0
	.uleb128 0x8
	.string	"pos"
	.byte	0x1
	.byte	0x2a
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0x8
	.string	"d"
	.byte	0x1
	.byte	0x2b
	.4byte	0x68
	.4byte	.LLST2
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x2c
	.4byte	0x68
	.4byte	.LLST3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0xa
	.4byte	0xd6
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3d
	.4byte	0xd0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a
	.uleb128 0x7
	.string	"v"
	.byte	0x1
	.byte	0x3d
	.4byte	0x68
	.4byte	.LLST4
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0x3d
	.4byte	0x68
	.4byte	.LLST5
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x3f
	.4byte	0x14a
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2843
	.uleb128 0xc
	.4byte	.LVL16
	.4byte	0x73
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2843
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xd6
	.4byte	0x15a
	.uleb128 0xf
	.4byte	0x15a
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xe
	.4byte	0x37
	.4byte	0x171
	.uleb128 0xf
	.4byte	0x15a
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.4byte	0x182
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_u8toa_tab
	.uleb128 0xa
	.4byte	0x161
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x5
	.byte	0x33
	.byte	0x73
	.sleb128 0
	.byte	0x1c
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"short unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF9:
	.string	"dest"
.LASF7:
	.string	"__uint8_t"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_u8toa.c"
.LASF10:
	.string	"char"
.LASF11:
	.string	"u8x8_u8toap"
.LASF14:
	.string	"u8x8_u8toa_tab"
.LASF17:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF12:
	.string	"u8x8_u8toa"
.LASF15:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
