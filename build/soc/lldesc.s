	.file	"lldesc.c"
	.text
.Ltext0:
	.section	.text.lldesc_setup_link,"ax",@progbits
	.literal_position
	.literal .LC0, 4092
	.literal .LC1, -4096
	.literal .LC2, -16773121
	.literal .LC3, -1073741825
	.literal .LC4, -536870913
	.literal .LC5, -2147483648
	.literal .LC6, 1073741824
	.align	4
	.global	lldesc_setup_link
	.type	lldesc_setup_link, @function
lldesc_setup_link:
.LVL0:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/soc/src/lldesc.c"
	.loc 1 4 1 view -0
	.loc 1 4 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 5 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 6 5 view .LVU3
.LBB2:
	.loc 1 16 29 is_stmt 0 view .LVU4
	l32r	a13, .LC1
	.loc 1 17 31 view .LVU5
	l32r	a14, .LC2
.LBE2:
	.loc 1 4 1 view .LVU6
	extui	a5, a5, 0, 8
	.loc 1 6 11 view .LVU7
	mov.n	a8, a2
	l32r	a12, .LC0
.LBB3:
	.loc 1 13 29 view .LVU8
	mov.n	a15, a13
	.loc 1 14 31 view .LVU9
	mov.n	a6, a14
.LBE3:
	.loc 1 6 11 view .LVU10
	j	.L2
.LVL2:
.L5:
.LBB4:
	.loc 1 7 9 is_stmt 1 view .LVU11
	.loc 1 8 9 view .LVU12
	min	a11, a4, a12
.LVL3:
	.loc 1 11 9 view .LVU13
	mov.n	a7, a8
	.loc 1 11 12 is_stmt 0 view .LVU14
	beqz.n	a5, .L3
	.loc 1 13 13 is_stmt 1 view .LVU15
	.loc 1 13 29 is_stmt 0 view .LVU16
	memw
	l32i.n	a10, a8, 0
	.loc 1 13 44 view .LVU17
	addi.n	a9, a11, 3
	.loc 1 13 49 view .LVU18
	and	a9, a9, a12
	.loc 1 13 29 view .LVU19
	extui	a9, a9, 0, 12
	and	a10, a10, a15
	or	a10, a10, a9
	memw
	s32i.n	a10, a8, 0
	.loc 1 14 13 is_stmt 1 view .LVU20
	.loc 1 14 31 is_stmt 0 view .LVU21
	memw
	l32i.n	a10, a8, 0
	slli	a9, a9, 12
	and	a10, a10, a6
	j	.L6
.L3:
	.loc 1 16 13 is_stmt 1 view .LVU22
	.loc 1 16 29 is_stmt 0 view .LVU23
	memw
	l32i.n	a10, a8, 0
	extui	a9, a11, 0, 12
	and	a10, a10, a13
	or	a10, a10, a9
	memw
	s32i.n	a10, a8, 0
	.loc 1 17 13 is_stmt 1 view .LVU24
	.loc 1 17 31 is_stmt 0 view .LVU25
	memw
	l32i.n	a10, a8, 0
	slli	a9, a9, 12
	and	a10, a10, a14
.L6:
	.loc 1 17 31 view .LVU26
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 19 9 is_stmt 1 view .LVU27
	.loc 1 20 24 is_stmt 0 view .LVU28
	memw
	l32i.n	a9, a8, 0
	l32r	a10, .LC3
	.loc 1 19 24 view .LVU29
	s32i.n	a3, a8, 4
	.loc 1 20 9 is_stmt 1 view .LVU30
	.loc 1 20 24 is_stmt 0 view .LVU31
	and	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
	.loc 1 21 9 is_stmt 1 view .LVU32
	.loc 1 21 25 is_stmt 0 view .LVU33
	memw
	l32i.n	a9, a8, 0
	l32r	a10, .LC4
	.loc 1 24 13 view .LVU34
	sub	a4, a4, a11
.LVL4:
	.loc 1 21 25 view .LVU35
	and	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
	.loc 1 22 9 is_stmt 1 view .LVU36
	.loc 1 22 26 is_stmt 0 view .LVU37
	memw
	l32i.n	a9, a8, 0
	l32r	a10, .LC5
	.loc 1 25 14 view .LVU38
	add.n	a3, a3, a11
.LVL5:
	.loc 1 22 26 view .LVU39
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
	.loc 1 23 9 is_stmt 1 view .LVU40
	addi.n	a8, a8, 12
	.loc 1 23 33 is_stmt 0 view .LVU41
	s32i.n	a8, a7, 8
	.loc 1 24 9 is_stmt 1 view .LVU42
.LVL6:
	.loc 1 25 9 view .LVU43
	.loc 1 26 9 view .LVU44
.L2:
	.loc 1 26 9 is_stmt 0 view .LVU45
	sub	a7, a8, a2
.LBE4:
	.loc 1 6 11 view .LVU46
	bnez.n	a4, .L5
	.loc 1 28 5 is_stmt 1 view .LVU47
	.loc 1 28 12 is_stmt 0 view .LVU48
	addi	a7, a7, -12
	add.n	a2, a2, a7
.LVL7:
	.loc 1 28 24 view .LVU49
	memw
	l32i.n	a3, a2, 0
.LVL8:
	.loc 1 28 24 view .LVU50
	l32r	a5, .LC6
.LVL9:
	.loc 1 29 33 view .LVU51
	s32i.n	a4, a2, 8
	.loc 1 28 24 view .LVU52
	or	a3, a3, a5
	memw
	s32i.n	a3, a2, 0
	.loc 1 29 5 is_stmt 1 view .LVU53
	.loc 1 30 1 is_stmt 0 view .LVU54
	retw.n
.LFE3:
	.size	lldesc_setup_link, .-lldesc_setup_link
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/lldesc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x20c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x60
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
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x5
	.4byte	0x86
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4d
	.byte	0x8
	.4byte	0xae
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4d
	.byte	0x9
	.4byte	0x12f
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xc
	.byte	0x4
	.byte	0x43
	.byte	0x10
	.4byte	0x12f
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x4
	.byte	0x44
	.byte	0x17
	.4byte	0x92
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x4
	.byte	0x45
	.byte	0x19
	.4byte	0x92
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x46
	.byte	0x19
	.4byte	0x92
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x47
	.byte	0x19
	.4byte	0x92
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"eof"
	.byte	0x4
	.byte	0x48
	.byte	0x19
	.4byte	0x92
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x49
	.byte	0x19
	.4byte	0x92
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"buf"
	.byte	0x4
	.byte	0x4a
	.byte	0x17
	.4byte	0x156
	.byte	0x4
	.uleb128 0xc
	.4byte	0x135
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xae
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x4b
	.byte	0x5
	.4byte	0x156
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4c
	.byte	0x1b
	.4byte	0x92
	.uleb128 0x10
	.string	"qe"
	.byte	0x4
	.byte	0x4d
	.byte	0x1f
	.4byte	0x97
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4f
	.byte	0x3
	.4byte	0xae
	.uleb128 0xd
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x201
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3
	.byte	0x22
	.4byte	0x168
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3
	.byte	0x37
	.4byte	0x201
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x3
	.byte	0x41
	.4byte	0x4d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3
	.byte	0x4a
	.4byte	0x208
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x207
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
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
	.uleb128 0x39
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x39
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU50
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU43
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU3
	.uleb128 .LVU11
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU45
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF23:
	.string	"_Bool"
.LASF18:
	.string	"lldesc_t"
.LASF20:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF25:
	.string	"/home/dieter/Development/esp-idf/components/soc/src/lldesc.c"
.LASF22:
	.string	"dmachunklen"
.LASF16:
	.string	"stqe_next"
.LASF5:
	.string	"__uint32_t"
.LASF28:
	.string	"lldesc_setup_link"
.LASF15:
	.string	"owner"
.LASF6:
	.string	"unsigned int"
.LASF21:
	.string	"isrx"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF17:
	.string	"empty"
.LASF14:
	.string	"sosf"
.LASF27:
	.string	"lldesc_s"
.LASF7:
	.string	"long long int"
.LASF24:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"offset"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"dmadesc"
.LASF26:
	.string	"/home/dieter/Development/ProjektEi/build/soc"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"size"
.LASF12:
	.string	"length"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
