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
	.loc 1 35 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 40 0
	movi.n	a8, 0
	.loc 1 41 0
	mov.n	a12, a2
.LBB8:
	.loc 1 43 0
	mov.n	a13, a2
.LBE8:
	.loc 1 39 0
	mov.n	a10, a8
.LBB15:
	.loc 1 43 0
	addi.n	a4, a4, -1
.LVL2:
.LBB9:
	.loc 1 97 0
	movi.n	a14, 0x5c
	.loc 1 86 0
	movi.n	a5, -3
	movi.n	a15, 1
.LBE9:
	.loc 1 43 0
	j	.L2
.LVL3:
.L22:
.LBB12:
	.loc 1 44 0
	l8ui	a9, a13, 0
.LVL4:
	.loc 1 45 0
	bnez.n	a9, .L3
.LVL5:
.L23:
.LBE12:
.LBE15:
	.loc 1 111 0
	movi.n	a5, 0
	s8i	a5, a2, 0
	.loc 1 113 0
	beqz.n	a10, .L7
	bltu	a8, a4, .L4
	j	.L7
.LVL6:
.L3:
.LBB16:
.LBB13:
	.loc 1 57 0
	movi.n	a6, 0xa
	bltu	a6, a10, .L8
	l32r	a6, .LC2
	addx4	a7, a10, a6
	l32i.n	a7, a7, 0
	jx	a7
	.section	.rodata.esp_console_split_argv,"a",@progbits
	.align	4
	.align	4
.L10:
	.word	.L9
	.word	.L11
	.word	.L12
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L13
	.word	.L13
	.section	.text.esp_console_split_argv
.L9:
	.loc 1 59 0
	beqi	a9, 32, .L8
	.loc 1 61 0
	movi.n	a7, 0x22
	mov.n	a12, a2
	.loc 1 63 0
	movi.n	a10, 2
	.loc 1 61 0
	beq	a9, a7, .L8
	.loc 1 66 0
	movi.n	a10, 9
	.loc 1 64 0
	beq	a9, a14, .L8
	.loc 1 69 0
	movi.n	a10, 1
	j	.L15
.L12:
	.loc 1 75 0
	movi.n	a7, 0x22
	bne	a9, a7, .L16
	j	.L40
.L16:
	.loc 1 77 0
	bne	a9, a14, .L15
	j	.L26
.L13:
	.loc 1 86 0
	and	a11, a9, a5
	addi	a11, a11, -32
	movi.n	a6, 0
	moveqz	a6, a15, a11
	extui	a11, a6, 0, 8
	bnez.n	a11, .L30
	addi	a7, a9, -92
	moveqz	a11, a15, a7
	.loc 1 48 0
	movi.n	a7, -1
	.loc 1 86 0
	beqz.n	a11, .L18
.L30:
	mov.n	a7, a9
.L18:
	.loc 1 91 0
	movi.n	a6, -9
	and	a10, a10, a6
	.loc 1 105 0
	bnei	a7, -1, .L20
	j	.L8
.L11:
	.loc 1 95 0
	bnei	a9, 32, .L21
.L40:
.LBB10:
.LBB11:
	.loc 1 53 0
	addx4	a11, a11, a3
	addi.n	a8, a8, 1
	s32i.n	a12, a11, 0
	j	.L17
.L21:
.LBE11:
.LBE10:
	.loc 1 97 0
	bne	a9, a14, .L15
	j	.L29
.L20:
	.loc 1 106 0
	s8i	a7, a2, 0
	.loc 1 107 0
	addi.n	a2, a2, 1
.LVL7:
.L8:
.LBE13:
	.loc 1 43 0 discriminator 2
	addi.n	a13, a13, 1
.LVL8:
.L2:
	.loc 1 43 0 is_stmt 0 discriminator 1
	mov.n	a11, a8
	bltu	a8, a4, .L22
	j	.L23
.L4:
.LBE16:
	.loc 1 114 0 is_stmt 1
	addx4	a11, a11, a3
	addi.n	a8, a8, 1
	s32i.n	a12, a11, 0
	j	.L7
.LVL9:
.L17:
.LBB17:
.LBB14:
	.loc 1 86 0
	movi.n	a10, 0
	mov.n	a7, a10
	j	.L20
.L26:
	.loc 1 78 0
	movi.n	a10, 0xa
	j	.L8
.L29:
	.loc 1 98 0
	movi.n	a10, 9
	j	.L8
.L15:
	.loc 1 86 0
	mov.n	a7, a9
	j	.L20
.LVL10:
.L7:
.LBE14:
.LBE17:
	.loc 1 117 0
	addx4	a3, a8, a3
	movi.n	a2, 0
.LVL11:
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
	.4byte	0x20b
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.4byte	0x5d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x209
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x22
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x24
	.4byte	0x209
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.4byte	0x209
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x26
	.4byte	0x209
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2a
	.4byte	0x7d
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.4byte	0xb5
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.4byte	0x7d
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x22
	.4byte	0xc0
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2b
	.4byte	0x7d
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2c
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x1d3
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x22
	.4byte	0xc0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.4byte	0x7d
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.4byte	0xb5
	.byte	0
	.uleb128 0xf
	.4byte	0x18f
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x60
	.uleb128 0x10
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x11
	.4byte	0x19b
	.uleb128 0x11
	.4byte	0x1a6
	.uleb128 0x11
	.4byte	0x1b1
	.uleb128 0x11
	.4byte	0x1bc
	.uleb128 0x11
	.4byte	0x1c7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
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
.LASF28:
	.string	"argv"
.LASF12:
	.string	"SS_ARG"
.LASF26:
	.string	"next_arg_start"
.LASF32:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/console/split_argv.c"
.LASF29:
	.string	"in_ptr"
.LASF23:
	.string	"out_ptr"
.LASF19:
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
.LASF22:
	.string	"SPACE"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF18:
	.string	"line"
.LASF21:
	.string	"ESCAPE"
.LASF8:
	.string	"sizetype"
.LASF34:
	.string	"esp_console_split_argv"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF27:
	.string	"char_out"
.LASF2:
	.string	"short int"
.LASF30:
	.string	"char_in"
.LASF25:
	.string	"argc"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"SS_SPACE"
.LASF20:
	.string	"QUOTE"
.LASF35:
	.string	"end_arg"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
