	.file	"u8x8_setup.c"
	.text
.Ltext0:
	.section	.text.u8x8_dummy_cb,"ax",@progbits
	.align	4
	.global	u8x8_dummy_cb
	.type	u8x8_dummy_cb, @function
u8x8_dummy_cb:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_setup.c"
	.loc 1 41 1 view -0
	.loc 1 41 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 43 3 is_stmt 1 view .LVU2
	.loc 1 44 1 is_stmt 0 view .LVU3
	movi.n	a2, 0
.LVL1:
	.loc 1 44 1 view .LVU4
	retw.n
.LFE0:
	.size	u8x8_dummy_cb, .-u8x8_dummy_cb
	.section	.text.u8x8_d_null_cb,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_null_display_info
	.align	4
	.global	u8x8_d_null_cb
	.type	u8x8_d_null_cb, @function
u8x8_d_null_cb:
.LVL2:
.LFB1:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU6
	entry	sp, 32
.LCFI1:
	.loc 1 75 3 is_stmt 1 view .LVU7
	.loc 1 74 1 is_stmt 0 view .LVU8
	extui	a3, a3, 0, 8
	.loc 1 74 1 view .LVU9
	movi.n	a8, 9
	mov.n	a10, a2
	beq	a3, a8, .L3
	beqi	a3, 10, .L4
	j	.L5
.L3:
	.loc 1 78 7 is_stmt 1 view .LVU10
	l32r	a11, .LC0
	call8	u8x8_d_helper_display_setup_memory
.LVL3:
	.loc 1 79 7 view .LVU11
	j	.L5
.L4:
	.loc 1 81 7 view .LVU12
	call8	u8x8_d_helper_display_init
.LVL4:
	.loc 1 82 7 view .LVU13
.L5:
	.loc 1 85 3 view .LVU14
	.loc 1 86 1 is_stmt 0 view .LVU15
	movi.n	a2, 1
.LVL5:
	.loc 1 86 1 view .LVU16
	retw.n
.LFE1:
	.size	u8x8_d_null_cb, .-u8x8_d_null_cb
	.section	.text.u8x8_SetupDefaults,"ax",@progbits
	.literal_position
	.literal .LC1, u8x8_dummy_cb
	.align	4
	.global	u8x8_SetupDefaults
	.type	u8x8_SetupDefaults, @function
u8x8_SetupDefaults:
.LVL6:
.LFB2:
	.loc 1 96 1 is_stmt 1 view -0
	.loc 1 96 1 is_stmt 0 view .LVU18
	entry	sp, 32
.LCFI2:
	.loc 1 97 5 is_stmt 1 view .LVU19
	.loc 1 97 24 is_stmt 0 view .LVU20
	movi.n	a8, 0
	.loc 1 98 22 view .LVU21
	l32r	a9, .LC1
	.loc 1 97 24 view .LVU22
	s32i.n	a8, a2, 0
	.loc 1 98 5 is_stmt 1 view .LVU23
	.loc 1 102 32 is_stmt 0 view .LVU24
	s8i	a8, a2, 35
	.loc 1 104 22 view .LVU25
	s8i	a8, a2, 38
	.loc 1 105 21 view .LVU26
	s32i.n	a8, a2, 24
	.loc 1 106 23 view .LVU27
	movi.n	a8, -1
	.loc 1 98 22 view .LVU28
	s32i.n	a9, a2, 8
	.loc 1 99 5 is_stmt 1 view .LVU29
	.loc 1 99 18 is_stmt 0 view .LVU30
	s32i.n	a9, a2, 12
	.loc 1 100 5 is_stmt 1 view .LVU31
	.loc 1 100 19 is_stmt 0 view .LVU32
	s32i.n	a9, a2, 16
	.loc 1 101 5 is_stmt 1 view .LVU33
	.loc 1 101 29 is_stmt 0 view .LVU34
	s32i.n	a9, a2, 20
	.loc 1 102 5 is_stmt 1 view .LVU35
	.loc 1 104 5 view .LVU36
	.loc 1 105 5 view .LVU37
	.loc 1 106 5 view .LVU38
	.loc 1 106 23 is_stmt 0 view .LVU39
	s8i	a8, a2, 36
	.loc 1 107 5 is_stmt 1 view .LVU40
	.loc 1 107 38 is_stmt 0 view .LVU41
	s8i	a8, a2, 40
	.loc 1 116 1 view .LVU42
	retw.n
.LFE2:
	.size	u8x8_SetupDefaults, .-u8x8_SetupDefaults
	.section	.text.u8x8_Setup,"ax",@progbits
	.align	4
	.global	u8x8_Setup
	.type	u8x8_Setup, @function
u8x8_Setup:
.LVL7:
.LFB3:
	.loc 1 134 1 is_stmt 1 view -0
	.loc 1 134 1 is_stmt 0 view .LVU44
	entry	sp, 32
.LCFI3:
	.loc 1 136 3 is_stmt 1 view .LVU45
	mov.n	a10, a2
	call8	u8x8_SetupDefaults
.LVL8:
	.loc 1 139 3 view .LVU46
	.loc 1 145 3 is_stmt 0 view .LVU47
	mov.n	a10, a2
	.loc 1 139 20 view .LVU48
	s32i.n	a3, a2, 8
	.loc 1 140 3 is_stmt 1 view .LVU49
	.loc 1 140 16 is_stmt 0 view .LVU50
	s32i.n	a4, a2, 12
	.loc 1 141 3 is_stmt 1 view .LVU51
	.loc 1 141 17 is_stmt 0 view .LVU52
	s32i.n	a5, a2, 16
	.loc 1 142 3 is_stmt 1 view .LVU53
	.loc 1 142 27 is_stmt 0 view .LVU54
	s32i.n	a6, a2, 20
	.loc 1 145 3 is_stmt 1 view .LVU55
	call8	u8x8_SetupMemory
.LVL9:
	.loc 1 146 1 is_stmt 0 view .LVU56
	retw.n
.LFE3:
	.size	u8x8_Setup, .-u8x8_Setup
	.section	.rodata.u8x8_null_display_info,"a"
	.align	4
	.type	u8x8_null_display_info, @object
	.size	u8x8_null_display_info, 24
u8x8_null_display_info:
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	4000000
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.short	8
	.short	8
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbbd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF198
	.byte	0xc
	.4byte	.LASF199
	.4byte	.LASF200
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc3
	.byte	0x1c
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.byte	0x8
	.4byte	0x1d1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x148
	.byte	0x1e
	.4byte	0x34c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x149
	.byte	0x10
	.4byte	0x326
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x14a
	.byte	0xf
	.4byte	0x2f0
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x14b
	.byte	0xf
	.4byte	0x2f0
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14c
	.byte	0xf
	.4byte	0x2f0
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14d
	.byte	0xf
	.4byte	0x2f0
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14e
	.byte	0xc
	.4byte	0x9e
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14f
	.byte	0x12
	.4byte	0x352
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x150
	.byte	0xc
	.4byte	0x92
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x151
	.byte	0xb
	.4byte	0x81
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x152
	.byte	0xb
	.4byte	0x81
	.byte	0x23
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x153
	.byte	0xb
	.4byte	0x81
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x156
	.byte	0xb
	.4byte	0x81
	.byte	0x25
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x158
	.byte	0xb
	.4byte	0x81
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x159
	.byte	0xb
	.4byte	0x81
	.byte	0x27
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x15a
	.byte	0xb
	.4byte	0x81
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x15b
	.byte	0xb
	.4byte	0x81
	.byte	0x29
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15c
	.byte	0xb
	.4byte	0x81
	.byte	0x2a
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x15d
	.byte	0xb
	.4byte	0x81
	.byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0xc4
	.byte	0x29
	.4byte	0x1e2
	.uleb128 0x5
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.byte	0x8
	.4byte	0x2f0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0xe1
	.byte	0xb
	.4byte	0x81
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0xe2
	.byte	0xb
	.4byte	0x81
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0xe4
	.byte	0xb
	.4byte	0x81
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0xe5
	.byte	0xb
	.4byte	0x81
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe6
	.byte	0xb
	.4byte	0x81
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe7
	.byte	0xb
	.4byte	0x81
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0xee
	.byte	0xb
	.4byte	0x81
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0xf2
	.byte	0xb
	.4byte	0x81
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xf5
	.byte	0xc
	.4byte	0x9e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0xff
	.byte	0xb
	.4byte	0x81
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x102
	.byte	0xb
	.4byte	0x81
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x108
	.byte	0xb
	.4byte	0x81
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x10a
	.byte	0xb
	.4byte	0x81
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x10d
	.byte	0xb
	.4byte	0x81
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x10e
	.byte	0xb
	.4byte	0x81
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x110
	.byte	0xb
	.4byte	0x81
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x111
	.byte	0xb
	.4byte	0x81
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x119
	.byte	0xc
	.4byte	0x92
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x11a
	.byte	0xc
	.4byte	0x92
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0xc7
	.byte	0x13
	.4byte	0x2fc
	.uleb128 0xb
	.byte	0x4
	.4byte	0x302
	.uleb128 0xc
	.4byte	0x81
	.4byte	0x320
	.uleb128 0xd
	.4byte	0x320
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0xd
	.4byte	0xaa
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xac
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x4
	.byte	0xc8
	.byte	0x14
	.4byte	0x332
	.uleb128 0xb
	.byte	0x4
	.4byte	0x338
	.uleb128 0xc
	.4byte	0x92
	.4byte	0x34c
	.uleb128 0xd
	.4byte	0x320
	.uleb128 0xd
	.4byte	0x81
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xe
	.4byte	0x8d
	.4byte	0x363
	.uleb128 0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x358
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x420
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x421
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x422
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x423
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x424
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x425
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x426
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x427
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x428
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x429
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x42a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x42b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x42c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x42d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x42e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x42f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x430
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x431
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x432
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x433
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x434
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x435
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x436
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x437
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x438
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x439
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x43a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x43b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x43c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x43d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x43e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x43f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x440
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x441
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x442
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x443
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x444
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x445
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x446
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x447
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x448
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x449
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x44a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x44b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x44c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x44d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x44e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x44f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x450
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x451
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x452
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x453
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x454
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x455
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x456
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x457
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x458
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x459
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x45a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x45b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x45c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x45d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x45e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x45f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x460
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x461
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x462
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x463
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x464
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x465
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x466
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x467
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x468
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x469
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x46a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x46b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x46c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x46d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x46e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x46f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x470
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x471
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x472
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x473
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x474
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x475
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x476
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x477
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x478
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x479
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x47a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x47b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x4
	.2byte	0x47c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0x4
	.2byte	0x47d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x47e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x47f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0x4
	.2byte	0x480
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0x4
	.2byte	0x481
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x4
	.2byte	0x482
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x4
	.2byte	0x483
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x4
	.2byte	0x484
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0x4
	.2byte	0x485
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x486
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x487
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x4
	.2byte	0x488
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x4
	.2byte	0x489
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x4
	.2byte	0x48a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x4
	.2byte	0x48b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x4
	.2byte	0x48c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0x4
	.2byte	0x48d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x4
	.2byte	0x48e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x4
	.2byte	0x48f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0x4
	.2byte	0x490
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0x4
	.2byte	0x491
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0x4
	.2byte	0x492
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0x4
	.2byte	0x493
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0x4
	.2byte	0x494
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0x4
	.2byte	0x495
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0x4
	.2byte	0x496
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0x4
	.2byte	0x497
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0x4
	.2byte	0x498
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0x4
	.2byte	0x499
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF179
	.byte	0x4
	.2byte	0x49a
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0x4
	.2byte	0x49b
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x4
	.2byte	0x49c
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0x4
	.2byte	0x49d
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0x4
	.2byte	0x49e
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF184
	.byte	0x4
	.2byte	0x49f
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF185
	.byte	0x4
	.2byte	0x4a0
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0x4
	.2byte	0x4a1
	.byte	0x16
	.4byte	0x363
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0x4
	.2byte	0x4a2
	.byte	0x16
	.4byte	0x363
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0x1
	.byte	0x2f
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_null_display_info
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0x1
	.byte	0x85
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa2
	.uleb128 0x13
	.4byte	.LASF188
	.byte	0x1
	.byte	0x85
	.byte	0x19
	.4byte	0x320
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x85
	.byte	0x2b
	.4byte	0x2f0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.byte	0x85
	.byte	0x43
	.4byte	0x2f0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x85
	.byte	0x57
	.4byte	0x2f0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x85
	.byte	0x6c
	.4byte	0x2f0
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0xaa2
	.4byte	0xa91
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL9
	.4byte	0xb99
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac7
	.uleb128 0x13
	.4byte	.LASF188
	.byte	0x1
	.byte	0x5f
	.byte	0x21
	.4byte	0x320
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x17
	.4byte	.LASF193
	.byte	0x1
	.byte	0x49
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb40
	.uleb128 0x18
	.4byte	.LASF188
	.byte	0x1
	.byte	0x49
	.byte	0x20
	.4byte	0x320
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0x49
	.byte	0x2e
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF191
	.byte	0x1
	.byte	0x49
	.byte	0x53
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF192
	.byte	0x1
	.byte	0x49
	.byte	0x7a
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0xba6
	.4byte	0xb36
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_null_display_info
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0xbb3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF194
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb99
	.uleb128 0x18
	.4byte	.LASF188
	.byte	0x1
	.byte	0x28
	.byte	0x37
	.4byte	0x320
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0x28
	.byte	0x5d
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF191
	.byte	0x1
	.byte	0x28
	.byte	0x82
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF192
	.byte	0x1
	.byte	0x28
	.byte	0xa9
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x4
	.2byte	0x221
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF190:
	.string	"u8x8_SetupDefaults"
.LASF110:
	.string	"u8x8_font_artosserif8_n"
.LASF194:
	.string	"u8x8_dummy_cb"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF111:
	.string	"u8x8_font_artosserif8_u"
.LASF138:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_f"
.LASF124:
	.string	"u8x8_font_victoriamedium8_n"
.LASF191:
	.string	"arg_int"
.LASF200:
	.string	"/home/dieter/Development/ProjektEi/build/u8g2"
.LASF3:
	.string	"__uint8_t"
.LASF140:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_n"
.LASF18:
	.string	"byte_cb"
.LASF80:
	.string	"u8x8_font_open_iconic_check_1x1"
.LASF187:
	.string	"u8x8_font_px437wyse700b_2x2_n"
.LASF139:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_r"
.LASF71:
	.string	"u8x8_font_8x13B_1x2_r"
.LASF120:
	.string	"u8x8_font_victoriabold8_r"
.LASF178:
	.string	"u8x8_font_pxplustandynewtv_f"
.LASF122:
	.string	"u8x8_font_victoriabold8_u"
.LASF9:
	.string	"long long unsigned int"
.LASF180:
	.string	"u8x8_font_pxplustandynewtv_n"
.LASF160:
	.string	"u8x8_font_inb46_4x8_r"
.LASF179:
	.string	"u8x8_font_pxplustandynewtv_r"
.LASF181:
	.string	"u8x8_font_pxplustandynewtv_u"
.LASF159:
	.string	"u8x8_font_inb46_4x8_f"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF73:
	.string	"u8x8_font_7x14_1x2_f"
.LASF27:
	.string	"utf8_state"
.LASF121:
	.string	"u8x8_font_victoriabold8_n"
.LASF161:
	.string	"u8x8_font_inb46_4x8_n"
.LASF28:
	.string	"gpio_result"
.LASF75:
	.string	"u8x8_font_7x14_1x2_n"
.LASF199:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_setup.c"
.LASF74:
	.string	"u8x8_font_7x14_1x2_r"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF118:
	.string	"u8x8_font_torussansbold8_n"
.LASF16:
	.string	"display_cb"
.LASF117:
	.string	"u8x8_font_torussansbold8_r"
.LASF119:
	.string	"u8x8_font_torussansbold8_u"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF123:
	.string	"u8x8_font_victoriamedium8_r"
.LASF101:
	.string	"u8x8_font_open_iconic_thing_8x8"
.LASF125:
	.string	"u8x8_font_victoriamedium8_u"
.LASF195:
	.string	"u8x8_SetupMemory"
.LASF189:
	.string	"u8x8_Setup"
.LASF89:
	.string	"u8x8_font_open_iconic_thing_2x2"
.LASF107:
	.string	"u8x8_font_artossans8_n"
.LASF129:
	.string	"u8x8_font_courR18_2x3_f"
.LASF106:
	.string	"u8x8_font_artossans8_r"
.LASF108:
	.string	"u8x8_font_artossans8_u"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF56:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF166:
	.string	"u8x8_font_pcsenior_f"
.LASF131:
	.string	"u8x8_font_courR18_2x3_n"
.LASF130:
	.string	"u8x8_font_courR18_2x3_r"
.LASF168:
	.string	"u8x8_font_pcsenior_n"
.LASF167:
	.string	"u8x8_font_pcsenior_r"
.LASF169:
	.string	"u8x8_font_pcsenior_u"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF155:
	.string	"u8x8_font_inb21_2x4_n"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF196:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF156:
	.string	"u8x8_font_inb33_3x6_f"
.LASF153:
	.string	"u8x8_font_inb21_2x4_f"
.LASF135:
	.string	"u8x8_font_courR24_3x4_f"
.LASF174:
	.string	"u8x8_font_pxplusibmcga_f"
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF154:
	.string	"u8x8_font_inb21_2x4_r"
.LASF137:
	.string	"u8x8_font_courR24_3x4_n"
.LASF85:
	.string	"u8x8_font_open_iconic_arrow_2x2"
.LASF136:
	.string	"u8x8_font_courR24_3x4_r"
.LASF183:
	.string	"u8x8_font_px437wyse700a_2x2_r"
.LASF25:
	.string	"i2c_address"
.LASF164:
	.string	"u8x8_font_pressstart2p_n"
.LASF94:
	.string	"u8x8_font_open_iconic_play_4x4"
.LASF87:
	.string	"u8x8_font_open_iconic_embedded_2x2"
.LASF72:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF170:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF165:
	.string	"u8x8_font_pressstart2p_u"
.LASF172:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF5:
	.string	"short unsigned int"
.LASF171:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF173:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF91:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF14:
	.string	"display_info"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF34:
	.string	"u8x8_struct"
.LASF83:
	.string	"u8x8_font_open_iconic_thing_1x1"
.LASF93:
	.string	"u8x8_font_open_iconic_embedded_4x4"
.LASF115:
	.string	"u8x8_font_saikyosansbold8_n"
.LASF51:
	.string	"default_x_offset"
.LASF157:
	.string	"u8x8_font_inb33_3x6_r"
.LASF22:
	.string	"encoding"
.LASF116:
	.string	"u8x8_font_saikyosansbold8_u"
.LASF185:
	.string	"u8x8_font_px437wyse700b_2x2_f"
.LASF52:
	.string	"flipmode_x_offset"
.LASF96:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF150:
	.string	"u8x8_font_inr46_4x8_f"
.LASF152:
	.string	"u8x8_font_inr46_4x8_n"
.LASF92:
	.string	"u8x8_font_open_iconic_check_4x4"
.LASF186:
	.string	"u8x8_font_px437wyse700b_2x2_r"
.LASF151:
	.string	"u8x8_font_inr46_4x8_r"
.LASF182:
	.string	"u8x8_font_px437wyse700a_2x2_f"
.LASF134:
	.string	"u8x8_font_courB24_3x4_n"
.LASF17:
	.string	"cad_cb"
.LASF184:
	.string	"u8x8_font_px437wyse700a_2x2_n"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF176:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF23:
	.string	"x_offset"
.LASF197:
	.string	"u8x8_d_helper_display_init"
.LASF158:
	.string	"u8x8_font_inb33_3x6_n"
.LASF141:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF50:
	.string	"tile_height"
.LASF143:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF67:
	.string	"u8x8_font_8x13_1x2_f"
.LASF103:
	.string	"u8x8_font_profont29_2x3_f"
.LASF109:
	.string	"u8x8_font_artosserif8_r"
.LASF69:
	.string	"u8x8_font_8x13_1x2_n"
.LASF105:
	.string	"u8x8_font_profont29_2x3_n"
.LASF142:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_r"
.LASF68:
	.string	"u8x8_font_8x13_1x2_r"
.LASF104:
	.string	"u8x8_font_profont29_2x3_r"
.LASF55:
	.string	"u8x8_msg_cb"
.LASF100:
	.string	"u8x8_font_open_iconic_play_8x8"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF188:
	.string	"u8x8"
.LASF81:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF147:
	.string	"u8x8_font_inr33_3x6_f"
.LASF97:
	.string	"u8x8_font_open_iconic_arrow_8x8"
.LASF144:
	.string	"u8x8_font_inr21_2x4_f"
.LASF149:
	.string	"u8x8_font_inr33_3x6_n"
.LASF88:
	.string	"u8x8_font_open_iconic_play_2x2"
.LASF146:
	.string	"u8x8_font_inr21_2x4_n"
.LASF148:
	.string	"u8x8_font_inr33_3x6_r"
.LASF47:
	.string	"data_setup_time_ns"
.LASF145:
	.string	"u8x8_font_inr21_2x4_r"
.LASF70:
	.string	"u8x8_font_8x13B_1x2_f"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF12:
	.string	"uint32_t"
.LASF99:
	.string	"u8x8_font_open_iconic_embedded_8x8"
.LASF57:
	.string	"u8x8_font_amstrad_cpc_extended_f"
.LASF64:
	.string	"u8x8_font_5x8_f"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF59:
	.string	"u8x8_font_amstrad_cpc_extended_n"
.LASF66:
	.string	"u8x8_font_5x8_n"
.LASF162:
	.string	"u8x8_font_pressstart2p_f"
.LASF58:
	.string	"u8x8_font_amstrad_cpc_extended_r"
.LASF65:
	.string	"u8x8_font_5x8_r"
.LASF201:
	.string	"u8x8_null_display_info"
.LASF60:
	.string	"u8x8_font_amstrad_cpc_extended_u"
.LASF175:
	.string	"u8x8_font_pxplusibmcga_r"
.LASF102:
	.string	"u8x8_font_open_iconic_weather_8x8"
.LASF4:
	.string	"__uint16_t"
.LASF177:
	.string	"u8x8_font_pxplusibmcga_u"
.LASF163:
	.string	"u8x8_font_pressstart2p_r"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF98:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF198:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF126:
	.string	"u8x8_font_courB18_2x3_f"
.LASF90:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF95:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF192:
	.string	"arg_ptr"
.LASF128:
	.string	"u8x8_font_courB18_2x3_n"
.LASF127:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF82:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF10:
	.string	"uint8_t"
.LASF84:
	.string	"u8x8_font_open_iconic_weather_1x1"
.LASF26:
	.string	"i2c_started"
.LASF53:
	.string	"pixel_width"
.LASF86:
	.string	"u8x8_font_open_iconic_check_2x2"
.LASF49:
	.string	"tile_width"
.LASF61:
	.string	"u8x8_font_5x7_f"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF132:
	.string	"u8x8_font_courB24_3x4_f"
.LASF63:
	.string	"u8x8_font_5x7_n"
.LASF79:
	.string	"u8x8_font_open_iconic_arrow_1x1"
.LASF62:
	.string	"u8x8_font_5x7_r"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF133:
	.string	"u8x8_font_courB24_3x4_r"
.LASF113:
	.string	"u8x8_font_chroma48medium8_n"
.LASF112:
	.string	"u8x8_font_chroma48medium8_r"
.LASF193:
	.string	"u8x8_d_null_cb"
.LASF114:
	.string	"u8x8_font_chroma48medium8_u"
.LASF76:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF54:
	.string	"pixel_height"
.LASF78:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF77:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"