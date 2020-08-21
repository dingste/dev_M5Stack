	.file	"nghttp2_npn.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\002h2"
.LC2:
	.string	"\bhttp/1.1"
	.section	.text.nghttp2_select_next_protocol,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.align	4
	.global	nghttp2_select_next_protocol
	.type	nghttp2_select_next_protocol, @function
nghttp2_select_next_protocol:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_npn.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB6:
.LBB7:
	.loc 1 33 0
	movi.n	a7, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 34 0
	add.n	a6, a4, a7
	l32r	a11, .LC1
	movi.n	a12, 3
	mov.n	a10, a6
	call8	memcmp
.LVL3:
	bnez.n	a10, .L3
	.loc 1 35 0
	addi.n	a7, a7, 1
.LVL4:
	add.n	a4, a4, a7
.LVL5:
	s32i.n	a4, a2, 0
	.loc 1 36 0
	l8ui	a2, a6, 0
.LVL6:
.LBE7:
.LBE6:
	.loc 1 50 0
	movi.n	a10, 1
.LBB9:
.LBB8:
	.loc 1 36 0
	s8i	a2, a3, 0
	j	.L4
.LVL7:
.L3:
	.loc 1 33 0
	l8ui	a8, a6, 0
	addi.n	a8, a8, 1
	add.n	a7, a7, a8
.LVL8:
.L2:
	addi.n	a8, a7, 3
	bgeu	a5, a8, .L5
	movi.n	a6, 0
	j	.L6
.LVL9:
.L8:
.LBE8:
.LBE9:
.LBB10:
.LBB11:
	.loc 1 34 0
	add.n	a7, a4, a6
	l32r	a11, .LC3
	movi.n	a12, 9
	mov.n	a10, a7
	call8	memcmp
.LVL10:
	bnez.n	a10, .L7
	.loc 1 35 0
	addi.n	a6, a6, 1
.LVL11:
	add.n	a4, a4, a6
.LVL12:
	s32i.n	a4, a2, 0
	.loc 1 36 0
	l8ui	a2, a7, 0
.LVL13:
	s8i	a2, a3, 0
	j	.L4
.LVL14:
.L7:
	.loc 1 33 0
	l8ui	a7, a7, 0
	addi.n	a7, a7, 1
	add.n	a6, a6, a7
.LVL15:
.L6:
	addi.n	a7, a6, 9
	bgeu	a5, a7, .L8
.LBE11:
.LBE10:
	.loc 1 56 0
	movi.n	a10, -1
.LVL16:
.L4:
	.loc 1 57 0
	mov.n	a2, a10
	retw.n
.LFE1:
	.size	nghttp2_select_next_protocol, .-nghttp2_select_next_protocol
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x221
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF16
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.4byte	0x85
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1d
	.4byte	0x41
	.byte	0x1
	.4byte	0xe5
	.uleb128 0x7
	.string	"out"
	.byte	0x1
	.byte	0x1d
	.4byte	0xe5
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1d
	.4byte	0x72
	.uleb128 0x7
	.string	"in"
	.byte	0x1
	.byte	0x1e
	.4byte	0xeb
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1e
	.4byte	0x48
	.uleb128 0x7
	.string	"key"
	.byte	0x1
	.byte	0x1f
	.4byte	0x7f
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1f
	.4byte	0x48
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x20
	.4byte	0x48
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x72
	.uleb128 0x4
	.byte	0x4
	.4byte	0xf1
	.uleb128 0x5
	.4byte	0x2c
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2e
	.4byte	0x41
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x2e
	.4byte	0xe5
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2e
	.4byte	0x72
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"in"
	.byte	0x1
	.byte	0x2f
	.4byte	0xeb
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2f
	.4byte	0x48
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	0x8a
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x30
	.4byte	0x1b9
	.uleb128 0xe
	.4byte	0xd0
	.byte	0x3
	.uleb128 0xf
	.4byte	0xc5
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0xf
	.4byte	0xba
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	0xb0
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	0x9a
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x12
	.4byte	0xdb
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x219
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x8a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x34
	.uleb128 0x16
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xc5
	.uleb128 0x16
	.4byte	0xba
	.uleb128 0x16
	.4byte	0xb0
	.uleb128 0x16
	.4byte	0xa5
	.uleb128 0x16
	.4byte	0x9a
	.uleb128 0x17
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x12
	.4byte	0xdb
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x219
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x2
	.byte	0x16
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF11:
	.string	"outlen"
.LASF12:
	.string	"inlen"
.LASF19:
	.string	"memcmp"
.LASF13:
	.string	"keylen"
.LASF18:
	.string	"nghttp2_select_next_protocol"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF14:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/nghttp"
.LASF17:
	.string	"select_next_protocol"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_npn.c"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
