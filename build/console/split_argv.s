	.file	"split_argv.c"
	.text
.Ltext0:
	.section	.text.esp_console_split_argv,"ax",@progbits
	.literal_position
	.literal .LC0, .L6
	.align	4
	.global	esp_console_split_argv
	.type	esp_console_split_argv, @function
esp_console_split_argv:
.LVL0:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/console/split_argv.c"
	.loc 1 42 1 view -0
	.loc 1 42 1 is_stmt 0 view .LVU1
	entry	sp, 48
.LCFI0:
	.loc 1 43 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 44 5 view .LVU3
	.loc 1 45 5 view .LVU4
	.loc 1 46 5 view .LVU5
	.loc 1 47 5 view .LVU6
	.loc 1 48 5 view .LVU7
	.loc 1 49 5 view .LVU8
	.loc 1 50 5 view .LVU9
.LBB2:
	.loc 1 50 10 view .LVU10
	.loc 1 50 10 is_stmt 0 view .LVU11
.LBE2:
	.loc 1 47 9 view .LVU12
	movi.n	a9, 0
.LBB5:
	.loc 1 50 48 view .LVU13
	addi.n	a4, a4, -1
.LVL2:
	.loc 1 50 16 view .LVU14
	mov.n	a13, a2
.LBE5:
	.loc 1 49 11 view .LVU15
	mov.n	a11, a2
	.loc 1 46 19 view .LVU16
	mov.n	a10, a9
.LBB6:
	.loc 1 50 48 view .LVU17
	s32i.n	a4, sp, 4
.LBB3:
	.loc 1 97 23 view .LVU18
	movi.n	a14, 0x5c
	.loc 1 96 31 view .LVU19
	mov.n	a15, a9
	.loc 1 75 16 view .LVU20
	movi.n	a7, 0x22
.LBE3:
	.loc 1 50 5 view .LVU21
	j	.L2
.LVL3:
.L13:
.LBB4:
	.loc 1 51 9 is_stmt 1 view .LVU22
	.loc 1 51 39 is_stmt 0 view .LVU23
	l8ui	a8, a13, 0
	.loc 1 51 13 view .LVU24
	mov.n	a5, a8
.LVL4:
	.loc 1 52 9 is_stmt 1 view .LVU25
	.loc 1 52 12 is_stmt 0 view .LVU26
	beqz.n	a8, .L3
	.loc 1 55 9 is_stmt 1 view .LVU27
.LVL5:
	.loc 1 57 9 view .LVU28
	movi.n	a4, 0xa
	bltu	a4, a10, .L4
	l32r	a4, .LC0
	slli	a6, a10, 2
	add.n	a4, a4, a6
	l32i.n	a6, a4, 0
	jx	a6
	.section	.rodata.esp_console_split_argv,"a",@progbits
	.align	4
	.align	4
.L6:
	.word	.L9
	.word	.L8
	.word	.L7
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L5
	.word	.L5
	.section	.text.esp_console_split_argv
.L9:
	.loc 1 59 13 view .LVU29
	.loc 1 59 16 is_stmt 0 view .LVU30
	beqi	a8, 32, .L4
	.loc 1 61 20 is_stmt 1 view .LVU31
	mov.n	a2, a11
.LVL6:
	.loc 1 63 23 is_stmt 0 view .LVU32
	movi.n	a10, 2
.LVL7:
	.loc 1 61 23 view .LVU33
	beq	a8, a7, .L4
.LVL8:
	.loc 1 64 20 is_stmt 1 view .LVU34
	.loc 1 66 23 is_stmt 0 view .LVU35
	movi.n	a10, 9
	.loc 1 64 23 view .LVU36
	beq	a8, a14, .L4
	.loc 1 69 23 view .LVU37
	movi.n	a10, 1
	j	.L10
.LVL9:
.L7:
	.loc 1 75 13 is_stmt 1 view .LVU38
	.loc 1 75 16 is_stmt 0 view .LVU39
	bne	a8, a7, .L11
	.loc 1 76 17 is_stmt 1 view .LVU40
	.loc 1 76 22 view .LVU41
.LVL10:
	.loc 1 76 36 view .LVU42
	j	.L32
.LVL11:
.L11:
	.loc 1 77 20 view .LVU43
	.loc 1 77 23 is_stmt 0 view .LVU44
	bne	a8, a14, .L10
	j	.L18
.L5:
	.loc 1 86 13 is_stmt 1 view .LVU45
	movi.n	a6, -9
	.loc 1 86 55 is_stmt 0 view .LVU46
	movi.n	a12, -3
	and	a10, a10, a6
.LVL12:
	.loc 1 86 55 view .LVU47
	and	a6, a8, a12
	addi	a6, a6, -32
	movi.n	a4, 1
	movnez	a4, a15, a6
	extui	a6, a4, 0, 8
	bnez.n	a6, .L10
	.loc 1 86 25 view .LVU48
	addi	a8, a8, -92
	.loc 1 86 55 view .LVU49
	movi.n	a12, 1
	movnez	a12, a6, a8
	bnez.n	a12, .L10
	j	.L4
.LVL13:
.L8:
	.loc 1 95 13 is_stmt 1 view .LVU50
	.loc 1 95 16 is_stmt 0 view .LVU51
	bnei	a8, 32, .L12
.LVL14:
.L32:
	.loc 1 96 17 is_stmt 1 view .LVU52
	.loc 1 96 22 view .LVU53
	.loc 1 96 36 view .LVU54
	.loc 1 96 45 is_stmt 0 view .LVU55
	addi.n	a9, a9, 1
.LVL15:
	.loc 1 96 49 view .LVU56
	s32i.n	a2, a12, 0
	.loc 1 96 67 is_stmt 1 view .LVU57
.LVL16:
	.loc 1 96 31 is_stmt 0 view .LVU58
	mov.n	a5, a15
.LVL17:
	.loc 1 96 73 view .LVU59
	movi.n	a10, 0
	j	.L10
.LVL18:
.L12:
	.loc 1 97 20 is_stmt 1 view .LVU60
	.loc 1 97 23 is_stmt 0 view .LVU61
	beq	a8, a14, .L19
.LVL19:
.L10:
	.loc 1 106 13 is_stmt 1 view .LVU62
	.loc 1 106 22 is_stmt 0 view .LVU63
	s8i	a5, a11, 0
	.loc 1 107 13 is_stmt 1 view .LVU64
	addi.n	a11, a11, 1
.LVL20:
	.loc 1 107 13 is_stmt 0 view .LVU65
	j	.L4
.LVL21:
.L18:
	.loc 1 78 23 view .LVU66
	movi.n	a10, 0xa
.LVL22:
	.loc 1 78 23 view .LVU67
	j	.L4
.LVL23:
.L19:
	.loc 1 98 23 view .LVU68
	movi.n	a10, 9
.LVL24:
.L4:
	.loc 1 98 23 view .LVU69
.LBE4:
	.loc 1 50 53 discriminator 2 view .LVU70
	addi.n	a13, a13, 1
.LVL25:
.L2:
	.loc 1 50 5 discriminator 1 view .LVU71
	l32i.n	a4, sp, 4
	slli	a12, a9, 2
	add.n	a12, a3, a12
	bltu	a9, a4, .L13
.L3:
	.loc 1 50 5 discriminator 1 view .LVU72
.LBE6:
	.loc 1 111 5 is_stmt 1 view .LVU73
	.loc 1 111 14 is_stmt 0 view .LVU74
	movi.n	a5, 0
	.loc 1 113 27 view .LVU75
	l32i.n	a6, sp, 4
	.loc 1 111 14 view .LVU76
	s8i	a5, a11, 0
	.loc 1 113 5 is_stmt 1 view .LVU77
	.loc 1 113 27 is_stmt 0 view .LVU78
	bgeu	a9, a6, .L14
	beqz.n	a10, .L14
	.loc 1 114 9 is_stmt 1 view .LVU79
	.loc 1 114 18 is_stmt 0 view .LVU80
	addi.n	a9, a9, 1
.LVL26:
	.loc 1 114 22 view .LVU81
	s32i.n	a2, a12, 0
.L14:
	.loc 1 117 5 is_stmt 1 view .LVU82
	.loc 1 117 16 is_stmt 0 view .LVU83
	slli	a2, a9, 2
.LVL27:
	.loc 1 117 16 view .LVU84
	add.n	a3, a3, a2
.LVL28:
	.loc 1 117 16 view .LVU85
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 119 5 is_stmt 1 view .LVU86
	.loc 1 120 1 is_stmt 0 view .LVU87
	mov.n	a2, a9
	retw.n
.LFE3:
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa8a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xc
	.4byte	.LASF142
	.4byte	.LASF143
	.4byte	.Ldebug_ranges0+0x38
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
	.4byte	0x41
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
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x4d
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x88
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x88
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x4d
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xd6
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xa7
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xd6
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0xe6
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x10a
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xb4
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe6
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x122
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x18f
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x18f
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x41
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x41
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x41
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x195
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x135
	.uleb128 0xa
	.4byte	0x129
	.4byte	0x1a5
	.uleb128 0xb
	.4byte	0x4d
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x228
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x41
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x41
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x41
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x26d
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x26d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x26d
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x129
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x129
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x6e
	.4byte	0x27d
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2bf
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2bf
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2c5
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2dc
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x27d
	.uleb128 0xa
	.4byte	0x2d5
	.4byte	0x2d5
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2db
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x4
	.4byte	0x228
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x30a
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x30a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x383
	.uleb128 0xf
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x30a
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2e2
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4e7
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x310
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4e7
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x73a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x73a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x73a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x64e
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x8a2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x8a8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8b9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x41
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x41
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x64e
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8bf
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8c5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x64e
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8d6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2bf
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x27d
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6fb
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x73a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8e2
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x64e
	.byte	0xec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x388
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x630
	.uleb128 0xf
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x30a
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2e2
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4e7
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x6e
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x660
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x68a
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x6ae
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6c8
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2e2
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x30a
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x41
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ce
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6de
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2e2
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x41
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x8f
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x116
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0x10a
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x41
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x64e
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.uleb128 0x18
	.4byte	0x64e
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x654
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.uleb128 0x4
	.4byte	0x654
	.uleb128 0x10
	.byte	0x4
	.4byte	0x630
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.uleb128 0x18
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x65b
	.uleb128 0x10
	.byte	0x4
	.4byte	0x666
	.uleb128 0x17
	.4byte	0x9b
	.4byte	0x6ae
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x690
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6c8
	.uleb128 0x18
	.4byte	0x4e7
	.uleb128 0x18
	.4byte	0x6e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6b4
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x6de
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x6ee
	.uleb128 0xb
	.4byte	0x4d
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4ed
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x734
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x734
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x73a
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6fb
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6ee
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x787
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x787
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x787
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x5b
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x3a
	.4byte	0x797
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7de
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x18f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x18f
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7de
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x88d
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x64e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0x10a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0x10a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0x10a
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x88d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x41
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0x10a
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0x10a
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0x10a
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0x10a
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0x10a
	.byte	0x48
	.byte	0
	.uleb128 0xa
	.4byte	0x654
	.4byte	0x89d
	.uleb128 0xb
	.4byte	0x4d
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF144
	.uleb128 0x10
	.byte	0x4
	.4byte	0x89d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x797
	.uleb128 0x1a
	.4byte	0x8b9
	.uleb128 0x18
	.4byte	0x4e7
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8ae
	.uleb128 0x10
	.byte	0x4
	.4byte	0x740
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x1a
	.4byte	0x8d6
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8dc
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7e4
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x383
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x383
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x383
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4e7
	.uleb128 0xa
	.4byte	0x65b
	.4byte	0x927
	.uleb128 0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x91c
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x6
	.byte	0xa5
	.byte	0x13
	.4byte	0x927
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.4byte	0x4d
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0x965
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x9
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0x1
	.byte	0x20
	.byte	0x3
	.4byte	0x938
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.byte	0x29
	.byte	0x8
	.4byte	0x62
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa87
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.byte	0x29
	.byte	0x25
	.4byte	0x64e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.byte	0x29
	.byte	0x32
	.4byte	0xa87
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x29
	.byte	0x3f
	.4byte	0x62
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0x1
	.byte	0x2b
	.byte	0xf
	.4byte	0x48
	.byte	0x22
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.4byte	0x48
	.byte	0x5c
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x1
	.byte	0x2d
	.byte	0xf
	.4byte	0x48
	.byte	0x20
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x2e
	.byte	0x13
	.4byte	0x965
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x2f
	.byte	0x9
	.4byte	0x41
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0x30
	.byte	0xb
	.4byte	0x64e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x23
	.4byte	.LASF137
	.byte	0x1
	.byte	0x31
	.byte	0xb
	.4byte	0x64e
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x23
	.4byte	.LASF138
	.byte	0x1
	.byte	0x32
	.byte	0x10
	.4byte	0x64e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x64e
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
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
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU33
	.uleb128 .LVU38
	.uleb128 .LVU47
	.uleb128 .LVU50
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU7
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU8
	.uleb128 .LVU32
	.uleb128 .LVU38
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 .LVU84
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU9
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU11
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU25
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU62
	.uleb128 .LVU66
	.uleb128 .LVU69
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU28
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU52
	.uleb128 .LVU54
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU69
.LLST9:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21
	.4byte	.LVL24
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
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
.LASF39:
	.string	"_dso_handle"
.LASF133:
	.string	"SPACE"
.LASF48:
	.string	"_size"
.LASF131:
	.string	"QUOTE"
.LASF7:
	.string	"size_t"
.LASF95:
	.string	"_rand48"
.LASF60:
	.string	"_emergency"
.LASF53:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF144:
	.string	"__locale_t"
.LASF122:
	.string	"SS_SPACE"
.LASF113:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_wctomb_state"
.LASF28:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF83:
	.string	"_ubuf"
.LASF47:
	.string	"_base"
.LASF30:
	.string	"__tm_hour"
.LASF74:
	.string	"__sf"
.LASF37:
	.string	"_on_exit_args"
.LASF78:
	.string	"_cookie"
.LASF73:
	.string	"__sglue"
.LASF134:
	.string	"state"
.LASF10:
	.string	"long int"
.LASF100:
	.string	"_mprec"
.LASF137:
	.string	"out_ptr"
.LASF50:
	.string	"_flags"
.LASF41:
	.string	"_is_cxa"
.LASF56:
	.string	"_stdin"
.LASF85:
	.string	"_blksize"
.LASF8:
	.string	"_lock_t"
.LASF67:
	.string	"_cvtbuf"
.LASF86:
	.string	"_offset"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF106:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbrlen_state"
.LASF38:
	.string	"_fnargs"
.LASF44:
	.string	"_fns"
.LASF24:
	.string	"_sign"
.LASF19:
	.string	"_flock_t"
.LASF58:
	.string	"_stderr"
.LASF26:
	.string	"_Bigint"
.LASF65:
	.string	"_gamma_signgam"
.LASF79:
	.string	"_read"
.LASF102:
	.string	"_result_k"
.LASF27:
	.string	"__tm"
.LASF45:
	.string	"_on_exit_args_ptr"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"__wchb"
.LASF57:
	.string	"_stdout"
.LASF66:
	.string	"_cvtlen"
.LASF20:
	.string	"long unsigned int"
.LASF49:
	.string	"__sFILE_fake"
.LASF145:
	.string	"esp_console_split_argv"
.LASF93:
	.string	"_niobs"
.LASF3:
	.string	"short unsigned int"
.LASF143:
	.string	"/home/dieter/Development/ProjektEi/build/console"
.LASF76:
	.string	"_signal_buf"
.LASF70:
	.string	"_asctime_buf"
.LASF101:
	.string	"_result"
.LASF14:
	.string	"__wch"
.LASF13:
	.string	"wint_t"
.LASF87:
	.string	"_lock"
.LASF89:
	.string	"_flags2"
.LASF80:
	.string	"_write"
.LASF33:
	.string	"__tm_year"
.LASF75:
	.string	"_misc"
.LASF139:
	.string	"char_in"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF32:
	.string	"__tm_mon"
.LASF42:
	.string	"_atexit"
.LASF61:
	.string	"__sdidinit"
.LASF11:
	.string	"_off_t"
.LASF104:
	.string	"_freelist"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF142:
	.string	"/home/dieter/Development/esp-idf/components/console/split_argv.c"
.LASF1:
	.string	"unsigned char"
.LASF94:
	.string	"_iobs"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"__tm_yday"
.LASF46:
	.string	"__sbuf"
.LASF91:
	.string	"__FILE"
.LASF18:
	.string	"_mbstate_t"
.LASF77:
	.string	"__sFILE"
.LASF88:
	.string	"_mbstate"
.LASF99:
	.string	"_rand_next"
.LASF107:
	.string	"_mblen_state"
.LASF59:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF63:
	.string	"_locale"
.LASF64:
	.string	"__cleanup"
.LASF62:
	.string	"_unspecified_locale_info"
.LASF23:
	.string	"_maxwds"
.LASF54:
	.string	"_reent"
.LASF96:
	.string	"_seed"
.LASF72:
	.string	"_atexit0"
.LASF16:
	.string	"__count"
.LASF130:
	.string	"argv_size"
.LASF17:
	.string	"__value"
.LASF140:
	.string	"char_out"
.LASF81:
	.string	"_seek"
.LASF12:
	.string	"_fpos_t"
.LASF55:
	.string	"_errno"
.LASF90:
	.string	"char"
.LASF29:
	.string	"__tm_min"
.LASF121:
	.string	"_ctype_"
.LASF138:
	.string	"in_ptr"
.LASF97:
	.string	"_mult"
.LASF22:
	.string	"_next"
.LASF141:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF125:
	.string	"SS_ARG_ESCAPED"
.LASF40:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF98:
	.string	"_add"
.LASF21:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF132:
	.string	"ESCAPE"
.LASF120:
	.string	"_global_impure_ptr"
.LASF126:
	.string	"SS_QUOTED_ARG_ESCAPED"
.LASF128:
	.string	"line"
.LASF51:
	.string	"_file"
.LASF25:
	.string	"_wds"
.LASF34:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF110:
	.string	"_l64a_buf"
.LASF136:
	.string	"next_arg_start"
.LASF71:
	.string	"_sig_func"
.LASF84:
	.string	"_nbuf"
.LASF135:
	.string	"argc"
.LASF36:
	.string	"__tm_isdst"
.LASF69:
	.string	"_localtime_buf"
.LASF82:
	.string	"_close"
.LASF119:
	.string	"__sf_fake_stderr"
.LASF68:
	.string	"_r48"
.LASF123:
	.string	"SS_ARG"
.LASF127:
	.string	"split_state_t"
.LASF109:
	.string	"_mbtowc_state"
.LASF103:
	.string	"_p5s"
.LASF129:
	.string	"argv"
.LASF124:
	.string	"SS_QUOTED_ARG"
.LASF31:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
