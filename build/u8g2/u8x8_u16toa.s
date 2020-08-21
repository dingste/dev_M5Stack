	.file	"u8x8_u16toa.c"
	.text
.Ltext0:
	.section	.text.u8x8_u16toap,"ax",@progbits
	.literal_position
	.literal .LC2, 10000
	.literal .LC3, -858993459
	.align	4
	.global	u8x8_u16toap
	.type	u8x8_u16toap, @function
u8x8_u16toap:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_u16toa.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 41 0
	extui	a3, a3, 0, 16
	mov.n	a10, a2
	addi.n	a11, a2, 5
	.loc 1 45 0
	l32r	a8, .LC2
	.loc 1 55 0
	l32r	a12, .LC3
	j	.L2
.LVL2:
.L3:
	.loc 1 51 0
	sub	a3, a3, a8
.LVL3:
	.loc 1 52 0
	addi.n	a9, a9, 1
.LVL4:
	.loc 1 51 0
	extui	a3, a3, 0, 16
.LVL5:
	.loc 1 52 0
	extui	a9, a9, 0, 8
.LVL6:
.L5:
	.loc 1 49 0
	bgeu	a3, a8, .L3
	.loc 1 55 0 discriminator 2
	muluh	a8, a8, a12
.LVL7:
	.loc 1 54 0 discriminator 2
	s8i	a9, a10, 0
	addi.n	a10, a10, 1
	.loc 1 55 0 discriminator 2
	extui	a8, a8, 3, 16
.LVL8:
	.loc 1 46 0 discriminator 2
	beq	a11, a10, .L4
.LVL9:
.L2:
	.loc 1 41 0
	movi.n	a9, 0x30
	j	.L5
.LVL10:
.L4:
	.loc 1 57 0
	movi.n	a3, 0
.LVL11:
	s8i	a3, a2, 5
	.loc 1 59 0
	retw.n
.LFE0:
	.size	u8x8_u16toap, .-u8x8_u16toap
	.section	.text.u8x8_u16toa,"ax",@progbits
	.literal_position
	.literal .LC4, buf$2842
	.align	4
	.global	u8x8_u16toa
	.type	u8x8_u16toa, @function
u8x8_u16toa:
.LFB1:
	.loc 1 63 0
.LVL12:
	entry	sp, 32
.LCFI1:
	.loc 1 66 0
	extui	a11, a2, 0, 16
	.loc 1 63 0
	extui	a3, a3, 0, 8
.LVL13:
	.loc 1 66 0
	l32r	a10, .LC4
	movi.n	a2, 5
.LVL14:
	sub	a2, a2, a3
	call8	u8x8_u16toap
.LVL15:
	extui	a2, a2, 0, 8
	.loc 1 67 0
	add.n	a2, a10, a2
	retw.n
.LFE1:
	.size	u8x8_u16toa, .-u8x8_u16toa
	.section	.text.u8x8_utoa,"ax",@progbits
	.align	4
	.global	u8x8_utoa
	.type	u8x8_utoa, @function
u8x8_utoa:
.LFB2:
	.loc 1 70 0
.LVL16:
	entry	sp, 32
.LCFI2:
	.loc 1 71 0
	extui	a10, a2, 0, 16
	movi.n	a11, 5
	call8	u8x8_u16toa
.LVL17:
	.loc 1 72 0
	movi.n	a2, 0x30
.LVL18:
	j	.L8
.L9:
	.loc 1 73 0
	addi.n	a10, a10, 1
.LVL19:
.L8:
	.loc 1 72 0
	l8ui	a8, a10, 0
	beq	a8, a2, .L9
	.loc 1 75 0
	movi.n	a9, 0
	movi.n	a2, 1
	movnez	a2, a9, a8
.LVL20:
	.loc 1 77 0
	sub	a2, a10, a2
.LVL21:
	retw.n
.LFE2:
	.size	u8x8_utoa, .-u8x8_utoa
	.section	.bss.buf$2842,"aw",@nobits
	.type	buf$2842, @object
	.size	buf$2842, 6
buf$2842:
	.zero	6
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
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
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x28
	.4byte	0xe6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x28
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.string	"v"
	.byte	0x1
	.byte	0x28
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x8
	.string	"pos"
	.byte	0x1
	.byte	0x2a
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0x8
	.string	"d"
	.byte	0x1
	.byte	0x2b
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x2c
	.4byte	0x7e
	.4byte	.LLST3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xa
	.4byte	0xec
	.uleb128 0x9
	.byte	0x4
	.4byte	0xec
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3e
	.4byte	0xe6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x161
	.uleb128 0x7
	.string	"v"
	.byte	0x1
	.byte	0x3e
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0x3e
	.4byte	0x73
	.4byte	.LLST5
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.4byte	0x161
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2842
	.uleb128 0xc
	.4byte	.LVL15
	.4byte	0x89
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2842
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xec
	.4byte	0x171
	.uleb128 0xf
	.4byte	0x171
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x45
	.4byte	0xe6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"v"
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x8
	.string	"s"
	.byte	0x1
	.byte	0x47
	.4byte	0xe6
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LVL17
	.4byte	0xfe
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL11
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
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xa
	.2byte	0x2710
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE1
	.2byte	0x5
	.byte	0x35
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE2
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF11:
	.string	"dest"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"u8x8_u16toap"
.LASF3:
	.string	"__uint8_t"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"__uint16_t"
.LASF9:
	.string	"uint8_t"
.LASF14:
	.string	"u8x8_u16toa"
.LASF12:
	.string	"char"
.LASF8:
	.string	"long long unsigned int"
.LASF18:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF10:
	.string	"uint16_t"
.LASF16:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_u16toa.c"
.LASF19:
	.string	"u8x8_utoa"
.LASF15:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
