	.file	"reent_init.c"
	.text
.Ltext0:
	.section	.iram1.0,"ax",@progbits
	.literal_position
	.literal .LC0, _global_impure_ptr
	.literal .LC1, _cleanup_r
	.align	4
	.global	esp_reent_init
	.type	esp_reent_init, @function
esp_reent_init:
.LVL0:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/newlib/reent_init.c"
	.loc 1 37 1 view -0
	.loc 1 37 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 38 5 is_stmt 1 view .LVU2
	movi	a12, 0xf0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL1:
	.loc 1 39 5 view .LVU3
	.loc 1 39 30 is_stmt 0 view .LVU4
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	l32i.n	a9, a8, 8
	.loc 1 39 16 view .LVU5
	s32i.n	a9, a2, 8
	.loc 1 40 5 is_stmt 1 view .LVU6
	.loc 1 40 30 is_stmt 0 view .LVU7
	l32i.n	a9, a8, 12
	.loc 1 41 30 view .LVU8
	l32i.n	a8, a8, 4
	.loc 1 40 16 view .LVU9
	s32i.n	a9, a2, 12
	.loc 1 41 5 is_stmt 1 view .LVU10
	.loc 1 41 15 is_stmt 0 view .LVU11
	s32i.n	a8, a2, 4
	.loc 1 42 5 is_stmt 1 view .LVU12
	.loc 1 42 18 is_stmt 0 view .LVU13
	l32r	a8, .LC1
	s32i.n	a8, a2, 40
	.loc 1 43 5 is_stmt 1 view .LVU14
	.loc 1 43 19 is_stmt 0 view .LVU15
	movi.n	a8, 1
	s32i.n	a8, a2, 24
	.loc 1 44 5 is_stmt 1 view .LVU16
	.loc 1 44 22 is_stmt 0 view .LVU17
	movi.n	a8, 0
	s32i	a8, a2, 216
	.loc 1 45 5 is_stmt 1 view .LVU18
	.loc 1 45 23 is_stmt 0 view .LVU19
	s32i	a8, a2, 220
	.loc 1 46 5 is_stmt 1 view .LVU20
	.loc 1 46 22 is_stmt 0 view .LVU21
	s32i	a8, a2, 224
	.loc 1 47 1 view .LVU22
	retw.n
.LFE3:
	.size	esp_reent_init, .-esp_reent_init
	.section	.text.esp_reent_cleanup,"ax",@progbits
	.literal_position
	.literal .LC2, _global_impure_ptr
	.align	4
	.global	esp_reent_cleanup
	.type	esp_reent_cleanup, @function
esp_reent_cleanup:
.LFB4:
	.loc 1 54 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 55 5 view .LVU24
	.loc 1 55 24 is_stmt 0 view .LVU25
	call8	__getreent
.LVL2:
	.loc 1 57 10 view .LVU26
	l32i.n	a3, a10, 36
	.loc 1 55 24 view .LVU27
	mov.n	a2, a10
.LVL3:
	.loc 1 57 5 is_stmt 1 view .LVU28
	.loc 1 57 8 is_stmt 0 view .LVU29
	beqz.n	a3, .L3
	.loc 1 58 9 is_stmt 1 view .LVU30
	.loc 1 58 12 is_stmt 0 view .LVU31
	l32i.n	a4, a3, 12
	movi.n	a3, 0
	bne	a4, a3, .L4
.L8:
	.loc 1 69 9 is_stmt 1 view .LVU32
	.loc 1 69 19 is_stmt 0 view .LVU33
	l32i.n	a3, a2, 36
	.loc 1 69 9 view .LVU34
	l32i.n	a10, a3, 12
	call8	free
.LVL4:
	.loc 1 70 9 is_stmt 1 view .LVU35
	.loc 1 70 19 is_stmt 0 view .LVU36
	l32i.n	a3, a2, 36
	.loc 1 70 9 view .LVU37
	l32i.n	a10, a3, 0
	call8	free
.LVL5:
	j	.L3
.L7:
.LBB2:
.LBB3:
	.loc 1 60 17 is_stmt 1 view .LVU38
	.loc 1 61 17 view .LVU39
	.loc 1 61 22 is_stmt 0 view .LVU40
	add.n	a4, a4, a3
	l32i.n	a10, a4, 0
.LVL6:
	.loc 1 62 17 is_stmt 1 view .LVU41
	.loc 1 62 23 is_stmt 0 view .LVU42
	j	.L5
.L6:
	.loc 1 63 21 is_stmt 1 view .LVU43
.LVL7:
	.loc 1 64 21 view .LVU44
	.loc 1 64 26 is_stmt 0 view .LVU45
	l32i.n	a4, a10, 0
.LVL8:
	.loc 1 65 21 is_stmt 1 view .LVU46
	call8	free
.LVL9:
	.loc 1 64 26 is_stmt 0 view .LVU47
	mov.n	a10, a4
.LVL10:
.L5:
	.loc 1 62 23 view .LVU48
	bnez.n	a10, .L6
	.loc 1 62 23 view .LVU49
	addi.n	a3, a3, 4
.LVL11:
.L4:
	.loc 1 62 23 view .LVU50
	l32i.n	a4, a2, 36
	l32i.n	a4, a4, 12
.LBE3:
	.loc 1 59 13 discriminator 1 view .LVU51
	bnei	a3, 128, .L7
	j	.L8
.L3:
	.loc 1 59 13 discriminator 1 view .LVU52
.LBE2:
	.loc 1 74 5 is_stmt 1 view .LVU53
	.loc 1 74 39 is_stmt 0 view .LVU54
	l32r	a3, .LC2
	.loc 1 74 19 view .LVU55
	movi	a4, 0xd8
	.loc 1 74 39 view .LVU56
	l32i.n	a3, a3, 0
	.loc 1 74 19 view .LVU57
	add.n	a4, a3, a4
.LVL12:
	.loc 1 75 5 is_stmt 1 view .LVU58
.LBB4:
	.loc 1 75 10 view .LVU59
	.loc 1 75 24 is_stmt 0 view .LVU60
	l32i	a3, a3, 216
.LVL13:
	.loc 1 75 5 view .LVU61
	j	.L9
.L14:
.LBB5:
	.loc 1 76 9 is_stmt 1 view .LVU62
	.loc 1 76 16 is_stmt 0 view .LVU63
	l32i.n	a11, a3, 4
	l32i.n	a5, a3, 0
.LBB6:
	.loc 1 81 18 view .LVU64
	movi.n	a9, 0
.LBE6:
	.loc 1 76 12 view .LVU65
	bnez.n	a11, .L11
	.loc 1 76 12 view .LVU66
	j	.L10
.LVL14:
.L12:
.LBB9:
.LBB7:
	.loc 1 82 13 is_stmt 1 view .LVU67
	.loc 1 83 13 view .LVU68
	.loc 1 83 19 is_stmt 0 view .LVU69
	slli	a8, a9, 1
	add.n	a8, a8, a9
	slli	a8, a8, 2
	l32i.n	a10, a3, 8
	add.n	a8, a8, a9
	slli	a8, a8, 3
	add.n	a8, a10, a8
	.loc 1 83 16 view .LVU70
	l16si	a8, a8, 12
	bnez.n	a8, .L16
	.loc 1 83 16 view .LVU71
.LBE7:
	.loc 1 81 42 discriminator 2 view .LVU72
	addi.n	a9, a9, 1
.LVL15:
.L11:
	.loc 1 81 9 discriminator 1 view .LVU73
	blt	a9, a11, .L12
	j	.L24
.LVL16:
.L16:
.LBB8:
	.loc 1 81 9 discriminator 1 view .LVU74
	mov.n	a4, a3
.LVL17:
.L10:
	.loc 1 81 9 discriminator 1 view .LVU75
	mov.n	a3, a5
.L9:
.LVL18:
	.loc 1 81 9 discriminator 1 view .LVU76
.LBE8:
.LBE9:
.LBE5:
	.loc 1 75 5 discriminator 1 view .LVU77
	bnez.n	a3, .L14
.LBE4:
	.loc 1 100 5 is_stmt 1 view .LVU78
	l32i.n	a10, a2, 36
	call8	free
.LVL19:
	.loc 1 101 5 view .LVU79
	.loc 1 102 5 is_stmt 0 view .LVU80
	l32i.n	a10, a2, 56
	.loc 1 101 12 view .LVU81
	s32i.n	a3, a2, 36
	.loc 1 102 5 is_stmt 1 view .LVU82
	call8	free
.LVL20:
	.loc 1 103 5 view .LVU83
	.loc 1 104 5 is_stmt 0 view .LVU84
	l32i.n	a10, a2, 60
	.loc 1 103 13 view .LVU85
	s32i.n	a3, a2, 56
	.loc 1 104 5 is_stmt 1 view .LVU86
	call8	free
.LVL21:
	.loc 1 105 5 view .LVU87
	.loc 1 106 5 is_stmt 0 view .LVU88
	l32i	a10, a2, 64
	.loc 1 105 23 view .LVU89
	s32i.n	a3, a2, 60
	.loc 1 106 5 is_stmt 1 view .LVU90
	call8	free
.LVL22:
	.loc 1 107 5 view .LVU91
	.loc 1 107 21 is_stmt 0 view .LVU92
	s32i	a3, a2, 64
	.loc 1 108 1 view .LVU93
	retw.n
.LVL23:
.L24:
.LBB11:
.LBB10:
	.loc 1 88 9 is_stmt 1 view .LVU94
	.loc 1 93 9 view .LVU95
	.loc 1 94 9 view .LVU96
	.loc 1 94 21 is_stmt 0 view .LVU97
	s32i.n	a5, a4, 0
.LVL24:
	.loc 1 95 9 is_stmt 1 view .LVU98
	mov.n	a10, a3
	call8	free
.LVL25:
	.loc 1 96 9 view .LVU99
	.loc 1 96 9 is_stmt 0 view .LVU100
	j	.L10
.LBE10:
.LBE11:
.LFE4:
	.size	esp_reent_cleanup, .-esp_reent_cleanup
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xae8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xc
	.4byte	.LASF130
	.4byte	.LASF131
	.4byte	.Ldebug_ranges0+0x60
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc
	.byte	0x11
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.4byte	0x75
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x72
	.byte	0xe
	.4byte	0x75
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.byte	0x3
	.4byte	0xc3
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.byte	0xc
	.4byte	0x94
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa9
	.byte	0x13
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa3
	.byte	0x9
	.4byte	0xf7
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xaa
	.byte	0x5
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0xab
	.byte	0x3
	.4byte	0xd3
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaf
	.byte	0x1b
	.4byte	0x69
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xd
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0xe
	.4byte	0x11e
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x111
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x190
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x190
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x196
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x136
	.uleb128 0x8
	.4byte	0x12a
	.4byte	0x1a6
	.uleb128 0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x229
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x26e
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x26e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x26e
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x12a
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x12a
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x10f
	.4byte	0x27e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2c0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2c0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2c6
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2dd
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x8
	.4byte	0x2d6
	.4byte	0x2d6
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2dc
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x229
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x30b
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x30b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x41
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x384
	.uleb128 0x10
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x30b
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x48
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x48
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2e3
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4e8
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x311
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4e8
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x729
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x729
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x729
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x118
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x891
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x897
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8a8
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x118
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ae
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8b4
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x118
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8c5
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2c0
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x27e
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6ea
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x729
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8d1
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x118
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x389
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x631
	.uleb128 0x10
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x30b
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x48
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x48
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2e3
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4e8
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x10f
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x64f
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x679
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x69d
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6b7
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2e3
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x30b
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6bd
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6cd
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2e3
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x7c
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x103
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0xf7
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x64f
	.uleb128 0x18
	.4byte	0x4e8
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x118
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x631
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x673
	.uleb128 0x18
	.4byte	0x4e8
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x673
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x125
	.uleb128 0xd
	.byte	0x4
	.4byte	0x655
	.uleb128 0x17
	.4byte	0x88
	.4byte	0x69d
	.uleb128 0x18
	.4byte	0x4e8
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x88
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x4e8
	.uleb128 0x18
	.4byte	0x10f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6a3
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x6cd
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x6dd
	.uleb128 0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4ee
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x723
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x723
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x729
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6ea
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6dd
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x776
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x776
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x776
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x33
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x56
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x786
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7cd
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x190
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x190
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7cd
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x190
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x87c
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x118
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0xf7
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x87c
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0xf7
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0xf7
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0xf7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0xf7
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0xf7
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x11e
	.4byte	0x88c
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF132
	.uleb128 0xd
	.byte	0x4
	.4byte	0x88c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x786
	.uleb128 0x1a
	.4byte	0x8a8
	.uleb128 0x18
	.4byte	0x4e8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x89d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x72f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1a6
	.uleb128 0x1a
	.4byte	0x8c5
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8ba
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7d3
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x384
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x384
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x384
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4e8
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x118
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x42
	.byte	0x10
	.4byte	0x6dd
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7c
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.byte	0x37
	.byte	0x14
	.4byte	0x4e8
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x1
	.byte	0x4a
	.byte	0x13
	.4byte	0x723
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x20
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x9b2
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.byte	0x16
	.4byte	0x25
	.uleb128 0x22
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1e
	.string	"cur"
	.byte	0x1
	.byte	0x3c
	.byte	0x21
	.4byte	0x190
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x3c
	.byte	0x27
	.4byte	0x190
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	.LVL9
	.4byte	0xac7
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0xa3c
	.uleb128 0x1e
	.string	"cur"
	.byte	0x1
	.byte	0x4b
	.byte	0x18
	.4byte	0x723
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0xa7c
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.4byte	0x723
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xa2a
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x51
	.byte	0x12
	.4byte	0x25
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1e
	.string	"fp"
	.byte	0x1
	.byte	0x52
	.byte	0x13
	.4byte	0xa83
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL25
	.4byte	0xac7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL2
	.4byte	0xad3
	.uleb128 0x23
	.4byte	.LVL4
	.4byte	0xac7
	.uleb128 0x23
	.4byte	.LVL5
	.4byte	0xac7
	.uleb128 0x23
	.4byte	.LVL19
	.4byte	0xac7
	.uleb128 0x23
	.4byte	.LVL20
	.4byte	0xac7
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0xac7
	.uleb128 0x23
	.4byte	.LVL22
	.4byte	0xac7
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF124
	.uleb128 0xd
	.byte	0x4
	.4byte	0x917
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0x24
	.byte	0x31
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac7
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.byte	0x24
	.byte	0x4f
	.4byte	0x4e8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL1
	.4byte	0xae0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x6
	.byte	0x61
	.byte	0x6
	.uleb128 0x2b
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x5
	.2byte	0x312
	.byte	0x13
	.uleb128 0x2c
	.4byte	.LASF134
	.4byte	.LASF135
	.byte	0x8
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
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
.LVUS0:
	.uleb128 .LVU28
	.uleb128 0
.LLST0:
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU58
	.uleb128 .LVU75
	.uleb128 .LVU76
	.uleb128 0
.LLST1:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU44
	.uleb128 .LVU47
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU41
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU50
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU61
	.uleb128 .LVU75
	.uleb128 .LVU76
	.uleb128 .LVU100
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU96
	.uleb128 .LVU98
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU67
	.uleb128 .LVU75
	.uleb128 .LVU94
	.uleb128 .LVU99
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU68
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU75
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0x68
	.byte	0x1e
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0x68
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x22
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF131:
	.string	"/home/dieter/Development/ProjektEi/build/newlib"
.LASF48:
	.string	"_size"
.LASF130:
	.string	"/home/dieter/Development/esp-idf/components/newlib/reent_init.c"
.LASF94:
	.string	"_rand48"
.LASF60:
	.string	"_emergency"
.LASF122:
	.string	"prev"
.LASF53:
	.string	"_data"
.LASF114:
	.string	"_wcrtomb_state"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF135:
	.string	"__builtin_memset"
.LASF6:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF132:
	.string	"__locale_t"
.LASF112:
	.string	"_mbrtowc_state"
.LASF123:
	.string	"next"
.LASF107:
	.string	"_wctomb_state"
.LASF28:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF2:
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
.LASF9:
	.string	"long int"
.LASF99:
	.string	"_mprec"
.LASF50:
	.string	"_flags"
.LASF41:
	.string	"_is_cxa"
.LASF56:
	.string	"_stdin"
.LASF85:
	.string	"_blksize"
.LASF7:
	.string	"_lock_t"
.LASF67:
	.string	"_cvtbuf"
.LASF86:
	.string	"_offset"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF105:
	.string	"_strtok_last"
.LASF111:
	.string	"_mbrlen_state"
.LASF38:
	.string	"_fnargs"
.LASF44:
	.string	"_fns"
.LASF24:
	.string	"_sign"
.LASF18:
	.string	"_flock_t"
.LASF58:
	.string	"_stderr"
.LASF26:
	.string	"_Bigint"
.LASF65:
	.string	"_gamma_signgam"
.LASF125:
	.string	"esp_reent_cleanup"
.LASF79:
	.string	"_read"
.LASF101:
	.string	"_result_k"
.LASF27:
	.string	"__tm"
.LASF45:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"__wchb"
.LASF57:
	.string	"_stdout"
.LASF66:
	.string	"_cvtlen"
.LASF19:
	.string	"long unsigned int"
.LASF39:
	.string	"_dso_handle"
.LASF92:
	.string	"_niobs"
.LASF1:
	.string	"short unsigned int"
.LASF72:
	.string	"_atexit0"
.LASF76:
	.string	"_signal_buf"
.LASF70:
	.string	"_asctime_buf"
.LASF100:
	.string	"_result"
.LASF13:
	.string	"__wch"
.LASF126:
	.string	"esp_reent_init"
.LASF12:
	.string	"wint_t"
.LASF87:
	.string	"_lock"
.LASF89:
	.string	"_flags2"
.LASF128:
	.string	"__getreent"
.LASF121:
	.string	"FILE"
.LASF80:
	.string	"_write"
.LASF33:
	.string	"__tm_year"
.LASF75:
	.string	"_misc"
.LASF116:
	.string	"__sf_fake_stdin"
.LASF117:
	.string	"__sf_fake_stdout"
.LASF32:
	.string	"__tm_mon"
.LASF42:
	.string	"_atexit"
.LASF120:
	.string	"suboptarg"
.LASF61:
	.string	"__sdidinit"
.LASF10:
	.string	"_off_t"
.LASF103:
	.string	"_freelist"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF124:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF93:
	.string	"_iobs"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"__tm_yday"
.LASF133:
	.string	"has_open_files"
.LASF46:
	.string	"__sbuf"
.LASF90:
	.string	"__FILE"
.LASF17:
	.string	"_mbstate_t"
.LASF77:
	.string	"__sFILE"
.LASF88:
	.string	"_mbstate"
.LASF98:
	.string	"_rand_next"
.LASF106:
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
.LASF95:
	.string	"_seed"
.LASF15:
	.string	"__count"
.LASF16:
	.string	"__value"
.LASF81:
	.string	"_seek"
.LASF11:
	.string	"_fpos_t"
.LASF55:
	.string	"_errno"
.LASF20:
	.string	"char"
.LASF29:
	.string	"__tm_min"
.LASF96:
	.string	"_mult"
.LASF22:
	.string	"_next"
.LASF129:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF40:
	.string	"_fntypes"
.LASF104:
	.string	"_misc_reent"
.LASF127:
	.string	"free"
.LASF97:
	.string	"_add"
.LASF21:
	.string	"__ULong"
.LASF110:
	.string	"_getdate_err"
.LASF119:
	.string	"_global_impure_ptr"
.LASF134:
	.string	"memset"
.LASF51:
	.string	"_file"
.LASF25:
	.string	"_wds"
.LASF34:
	.string	"__tm_wday"
.LASF91:
	.string	"_glue"
.LASF109:
	.string	"_l64a_buf"
.LASF71:
	.string	"_sig_func"
.LASF84:
	.string	"_nbuf"
.LASF36:
	.string	"__tm_isdst"
.LASF69:
	.string	"_localtime_buf"
.LASF82:
	.string	"_close"
.LASF118:
	.string	"__sf_fake_stderr"
.LASF68:
	.string	"_r48"
.LASF108:
	.string	"_mbtowc_state"
.LASF102:
	.string	"_p5s"
.LASF49:
	.string	"__sFILE_fake"
.LASF31:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
