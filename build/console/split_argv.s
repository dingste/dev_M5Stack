	.file	"split_argv.c"
	.text
.Ltext0:
	.section	.text.esp_console_split_argv,"ax",@progbits
	.literal_position
	.literal .LC2, .L10
	.align	4
	.global	esp_console_split_argv
	.type	esp_console_split_argv, @function
esp_console_split_argv:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/console/split_argv.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 47 0
	movi.n	a8, 0
.LBB2:
	.loc 1 50 0
	mov.n	a14, a2
.LBE2:
	.loc 1 49 0
	mov.n	a13, a2
	.loc 1 46 0
	mov.n	a9, a8
.LBB7:
	.loc 1 50 0
	addi.n	a4, a4, -1
.LVL2:
.LBB3:
	.loc 1 97 0
	movi.n	a15, 0x5c
	.loc 1 86 0
	movi.n	a5, 1
.LBE3:
	.loc 1 50 0
	j	.L2
.LVL3:
.L21:
.LBB4:
	.loc 1 51 0
	l8ui	a10, a14, 0
	mov.n	a11, a10
.LVL4:
	.loc 1 52 0
	bnez.n	a10, .L3
.LVL5:
.L22:
.LBE4:
.LBE7:
	.loc 1 111 0
	movi.n	a5, 0
	s8i	a5, a13, 0
	.loc 1 113 0
	bgeu	a8, a4, .L7
	bnez.n	a9, .L4
	j	.L7
.LVL6:
.L3:
.LBB8:
.LBB5:
	.loc 1 57 0
	movi.n	a6, 0xa
	bltu	a6, a9, .L19
	l32r	a6, .LC2
	addx4	a7, a9, a6
	l32i.n	a7, a7, 0
	jx	a7
	.section	.rodata.esp_console_split_argv,"a",@progbits
	.align	4
	.align	4
.L10:
	.word	.L9
	.word	.L11
	.word	.L12
	.word	.L19
	.word	.L19
	.word	.L19
	.word	.L19
	.word	.L19
	.word	.L19
	.word	.L13
	.word	.L13
	.section	.text.esp_console_split_argv
.L9:
	.loc 1 59 0
	beqi	a10, 32, .L19
	.loc 1 61 0
	movi.n	a7, 0x22
	mov.n	a2, a13
.LVL7:
	.loc 1 63 0
	movi.n	a9, 2
.LVL8:
	.loc 1 61 0
	beq	a10, a7, .L19
.LVL9:
	.loc 1 66 0
	movi.n	a9, 9
	.loc 1 64 0
	beq	a10, a15, .L19
	.loc 1 69 0
	movi.n	a9, 1
	j	.L18
.LVL10:
.L12:
	.loc 1 75 0
	movi.n	a7, 0x22
	bne	a10, a7, .L15
.LVL11:
	j	.L35
.LVL12:
.L15:
	.loc 1 77 0
	bne	a10, a15, .L18
	j	.L25
.L13:
	.loc 1 86 0
	movi.n	a6, -3
	and	a7, a10, a6
	addi	a7, a7, -32
	movi.n	a6, 0
	moveqz	a6, a5, a7
	extui	a7, a6, 0, 8
	bnez.n	a7, .L16
	addi	a11, a10, -92
	mov.n	a6, a5
	movnez	a6, a7, a11
	mov.n	a11, a6
	.loc 1 55 0
	movi.n	a6, -1
	movnez	a6, a10, a11
	mov.n	a11, a6
.L16:
.LVL13:
	.loc 1 91 0
	movi.n	a6, -9
	and	a9, a9, a6
.LVL14:
	.loc 1 105 0
	bnei	a11, -1, .L18
	j	.L19
.LVL15:
.L11:
	.loc 1 95 0
	bnei	a10, 32, .L20
.LVL16:
.L35:
	.loc 1 96 0
	addx4	a12, a12, a3
	movi.n	a11, 0
	addi.n	a8, a8, 1
.LVL17:
	s32i.n	a2, a12, 0
.LVL18:
	mov.n	a9, a11
	j	.L18
.LVL19:
.L20:
	.loc 1 97 0
	beq	a10, a15, .L27
.LVL20:
.L18:
	.loc 1 106 0
	s8i	a11, a13, 0
	.loc 1 107 0
	addi.n	a13, a13, 1
.LVL21:
.L19:
.LBE5:
	.loc 1 50 0 discriminator 2
	addi.n	a14, a14, 1
.LVL22:
.L2:
	.loc 1 50 0 is_stmt 0 discriminator 1
	mov.n	a12, a8
	bltu	a8, a4, .L21
	j	.L22
.L4:
.LBE8:
	.loc 1 114 0 is_stmt 1
	addx4	a12, a12, a3
	addi.n	a8, a8, 1
.LVL23:
	s32i.n	a2, a12, 0
	j	.L7
.LVL24:
.L25:
.LBB9:
.LBB6:
	.loc 1 78 0
	movi.n	a9, 0xa
.LVL25:
	j	.L19
.LVL26:
.L27:
	.loc 1 98 0
	movi.n	a9, 9
.LVL27:
	j	.L19
.LVL28:
.L7:
.LBE6:
.LBE9:
	.loc 1 117 0
	addx4	a3, a8, a3
.LVL29:
	movi.n	a2, 0
.LVL30:
	s32i.n	a2, a3, 0
	.loc 1 120 0
	mov.n	a2, a8
	retw.n
.LFE0:
	.size	esp_console_split_argv, .-esp_console_split_argv
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0x50
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
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x83
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48
	.byte	0x1
	.byte	0x15
	.4byte	0xb5
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.4byte	0x8a
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x29
	.4byte	0x5d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x29
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x29
	.4byte	0x1a0
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.4byte	0x5d
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2b
	.4byte	0x1a6
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.4byte	0x1a6
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2d
	.4byte	0x1a6
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2e
	.4byte	0xb5
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2f
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x30
	.4byte	0x7d
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x31
	.4byte	0x7d
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x32
	.4byte	0x7d
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x33
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x37
	.4byte	0x41
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0xd
	.4byte	0x41
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x9
	.byte	0xff
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"size_t"
.LASF24:
	.string	"state"
.LASF14:
	.string	"SS_ARG_ESCAPED"
.LASF19:
	.string	"argv"
.LASF12:
	.string	"SS_ARG"
.LASF26:
	.string	"next_arg_start"
.LASF32:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/console/split_argv.c"
.LASF28:
	.string	"in_ptr"
.LASF27:
	.string	"out_ptr"
.LASF20:
	.string	"argv_size"
.LASF0:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"split_state_t"
.LASF15:
	.string	"SS_QUOTED_ARG_ESCAPED"
.LASF33:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/console"
.LASF13:
	.string	"SS_QUOTED_ARG"
.LASF23:
	.string	"SPACE"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF18:
	.string	"line"
.LASF22:
	.string	"ESCAPE"
.LASF8:
	.string	"sizetype"
.LASF34:
	.string	"esp_console_split_argv"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF30:
	.string	"char_out"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"char_in"
.LASF25:
	.string	"argc"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"SS_SPACE"
.LASF21:
	.string	"QUOTE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
