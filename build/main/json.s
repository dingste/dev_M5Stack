	.file	"json.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"\"\\\b\f\n\r\t"
.LC4:
	.string	"u%04x"
	.section	.text.json_print_string,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.global	json_print_string
	.type	json_print_string, @function
json_print_string:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/main/HardwareLife/WiFi/esp32-wifi-manager/src/json.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 50 0
	movi.n	a5, 1
	movi.n	a4, 0
	moveqz	a4, a5, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L22
	moveqz	a4, a5, a3
	bnez.n	a4, .L22
	mov.n	a5, a2
	.loc 1 70 0 discriminator 1
	movi.n	a7, 0x1f
	j	.L3
.LVL2:
.L6:
	.loc 1 65 0
	l32r	a10, .LC3
	mov.n	a11, a6
	call8	strchr
.LVL3:
	beqz.n	a10, .L4
	.loc 1 68 0
	addi.n	a4, a4, 1
.LVL4:
	j	.L5
.L4:
	.loc 1 70 0
	bltu	a7, a6, .L5
	.loc 1 73 0
	addi.n	a4, a4, 5
.LVL5:
.L5:
	.loc 1 63 0 discriminator 2
	addi.n	a5, a5, 1
.LVL6:
.L3:
	.loc 1 63 0 is_stmt 0 discriminator 1
	l8ui	a6, a5, 0
	bnez.n	a6, .L6
	movi.n	a6, 0x22
	.loc 1 76 0 is_stmt 1
	sub	a5, a5, a2
.LVL7:
	.loc 1 85 0
	s8i	a6, a3, 0
	.loc 1 76 0
	add.n	a5, a5, a4
.LVL8:
	addi.n	a10, a3, 1
	.loc 1 83 0
	bnez.n	a4, .L7
	.loc 1 87 0
	add.n	a3, a3, a5
.LVL9:
	.loc 1 86 0
	mov.n	a12, a5
	mov.n	a11, a2
	call8	memcpy
.LVL10:
	.loc 1 87 0
	s8i	a6, a3, 1
	.loc 1 88 0
	s8i	a4, a3, 2
	j	.L30
.LVL11:
.L7:
	.loc 1 94 0
	mov.n	a4, a10
.LVL12:
	.loc 1 96 0
	j	.L8
.LVL13:
.L21:
	.loc 1 98 0
	movi.n	a9, 0x1f
	movi.n	a6, 1
	bltu	a9, a8, .L10
	movi.n	a6, 0
.L10:
	addi	a10, a8, -34
	movi.n	a9, 0
	movi.n	a11, 1
	movnez	a9, a11, a10
	bnone	a9, a6, .L9
	addi	a6, a8, -92
	beqz.n	a6, .L9
	.loc 1 101 0
	s8i	a8, a4, 0
	mov.n	a10, a4
	j	.L11
.L9:
	.loc 1 106 0
	movi.n	a6, 0x5c
	s8i	a6, a4, 0
	.loc 1 107 0
	l8ui	a12, a2, 0
	.loc 1 106 0
	addi.n	a10, a4, 1
.LVL14:
	.loc 1 107 0
	beqi	a12, 12, .L13
	movi.n	a6, 0xc
	bltu	a6, a12, .L14
	movi.n	a6, 9
	beq	a12, a6, .L15
	beqi	a12, 10, .L16
	bnei	a12, 8, .L12
	j	.L17
.L14:
	movi.n	a6, 0x22
	beq	a12, a6, .L18
	movi.n	a6, 0x5c
	beq	a12, a6, .L18
	movi.n	a6, 0xd
	bne	a12, a6, .L12
	j	.L20
.L18:
	.loc 1 113 0
	s8i	a12, a4, 1
	.loc 1 114 0
	j	.L11
.L17:
	.loc 1 116 0
	movi	a6, 0x62
	j	.L29
.L13:
	.loc 1 119 0
	movi	a6, 0x66
	j	.L29
.L16:
	.loc 1 122 0
	movi	a6, 0x6e
	j	.L29
.L20:
	.loc 1 125 0
	movi	a6, 0x72
	j	.L29
.L15:
	.loc 1 128 0
	movi	a6, 0x74
.L29:
	s8i	a6, a4, 1
	.loc 1 129 0
	j	.L11
.L12:
	.loc 1 132 0
	l32r	a11, .LC5
	call8	sprintf
.LVL15:
	.loc 1 133 0
	addi.n	a10, a4, 5
.LVL16:
.L11:
	.loc 1 96 0 discriminator 2
	addi.n	a2, a2, 1
.LVL17:
	addi.n	a4, a10, 1
.LVL18:
.L8:
	.loc 1 96 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 0
	bnez.n	a8, .L21
	.loc 1 138 0 is_stmt 1
	add.n	a3, a3, a5
.LVL19:
	movi.n	a2, 0x22
.LVL20:
	s8i	a2, a3, 1
	.loc 1 139 0
	s8i	a8, a3, 2
.LVL21:
.L30:
	.loc 1 141 0
	movi.n	a2, 1
	retw.n
.LVL22:
.L22:
	.loc 1 55 0
	movi.n	a2, 0
.LVL23:
	.loc 1 142 0
	retw.n
.LFE0:
	.size	json_print_string, .-json_print_string
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
	.file 2 "/home/dieter/Development/esp-idf/components/newlib/include/string.h"
	.file 3 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1
	.byte	0x23
	.4byte	0x160
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x23
	.4byte	0x167
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x23
	.4byte	0x7d
	.4byte	.LLST1
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x25
	.4byte	0x167
	.4byte	.LLST2
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x26
	.4byte	0x7d
	.4byte	.LLST3
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x27
	.4byte	0x7d
	.4byte	.LLST4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x28
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2a
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x9
	.4byte	.LVL3
	.4byte	0x172
	.4byte	0x129
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL10
	.4byte	0x17d
	.4byte	0x14c
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL15
	.4byte	0x186
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16d
	.uleb128 0xc
	.4byte	0x4c
	.uleb128 0xd
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x2
	.byte	0x1b
	.uleb128 0xe
	.4byte	.LASF26
	.4byte	.LASF26
	.uleb128 0xd
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x3
	.byte	0xde
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x30
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF24:
	.string	"size_t"
.LASF19:
	.string	"strchr"
.LASF15:
	.string	"output_pointer"
.LASF12:
	.string	"output_buffer"
.LASF11:
	.string	"input"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fstack-protector"
.LASF16:
	.string	"output_length"
.LASF14:
	.string	"output"
.LASF18:
	.string	"_Bool"
.LASF10:
	.string	"char"
.LASF25:
	.string	"json_print_string"
.LASF7:
	.string	"long int"
.LASF20:
	.string	"sprintf"
.LASF13:
	.string	"input_pointer"
.LASF26:
	.string	"memcpy"
.LASF23:
	.string	"/home/dieter/Development/ProjektEi/build/main"
.LASF22:
	.string	"/home/dieter/Development/ProjektEi/main/HardwareLife/WiFi/esp32-wifi-manager/src/json.c"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF3:
	.string	"unsigned char"
.LASF17:
	.string	"escape_characters"
.LASF4:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
