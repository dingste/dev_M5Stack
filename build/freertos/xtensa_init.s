	.file	"xtensa_init.c"
	.text
.Ltext0:
	.section	.text._xt_tick_divisor_init,"ax",@progbits
	.literal_position
	.literal .LC0, _xt_tick_divisor
	.literal .LC1, 1374389535
	.align	4
	.global	_xt_tick_divisor_init
	.type	_xt_tick_divisor_init, @function
_xt_tick_divisor_init:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/freertos/xtensa_init.c"
	.loc 1 49 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 50 5 view .LVU1
	.loc 1 50 24 is_stmt 0 view .LVU2
	call8	esp_clk_cpu_freq
.LVL0:
	.loc 1 50 43 view .LVU3
	l32r	a8, .LC1
	.loc 1 50 22 view .LVU4
	l32r	a9, .LC0
	.loc 1 50 43 view .LVU5
	mulsh	a8, a10, a8
	srai	a10, a10, 31
	srai	a8, a8, 5
	sub	a8, a8, a10
	.loc 1 50 22 view .LVU6
	s32i.n	a8, a9, 0
	.loc 1 51 1 view .LVU7
	retw.n
.LFE0:
	.size	_xt_tick_divisor_init, .-_xt_tick_divisor_init
	.section	.text.xt_clock_freq,"ax",@progbits
	.align	4
	.global	xt_clock_freq
	.type	xt_clock_freq, @function
xt_clock_freq:
.LFB1:
	.loc 1 55 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 56 5 view .LVU9
	.loc 1 56 12 is_stmt 0 view .LVU10
	call8	esp_clk_cpu_freq
.LVL1:
	.loc 1 57 1 view .LVU11
	mov.n	a2, a10
	retw.n
.LFE1:
	.size	xt_clock_freq, .-xt_clock_freq
	.global	_xt_tick_divisor
	.section	.bss._xt_tick_divisor,"aw",@nobits
	.align	4
	.type	_xt_tick_divisor, @object
	.size	_xt_tick_divisor, 4
_xt_tick_divisor:
	.zero	4
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
	.file 2 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 3 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 10 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_rtos.h"
	.file 11 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_timer.h"
	.file 12 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1165
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF262
	.byte	0xc
	.4byte	.LASF263
	.4byte	.LASF264
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x94
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	0x31
	.uleb128 0x5
	.4byte	0x4d
	.4byte	0x4d
	.uleb128 0x6
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0xb3
	.byte	0xe
	.4byte	0x3d
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xb4
	.byte	0xe
	.4byte	0x3d
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xb6
	.byte	0xe
	.4byte	0x3d
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0xb7
	.byte	0xe
	.4byte	0x3d
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xbd
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0xbe
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x5
	.4byte	0x38
	.4byte	0xa7
	.uleb128 0x6
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0xbf
	.byte	0x1b
	.4byte	0xa7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc0
	.byte	0x1b
	.4byte	0xa7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0xc1
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0xc2
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x5
	.4byte	0xf7
	.4byte	0xec
	.uleb128 0x6
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0xdc
	.uleb128 0x8
	.byte	0x4
	.4byte	0x103
	.uleb128 0x4
	.4byte	0xf1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	0xfc
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xc4
	.byte	0x1b
	.4byte	0xec
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x2
	.byte	0xd4
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x4
	.4byte	0x12c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x2
	.byte	0xd6
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x2
	.byte	0xda
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x2
	.byte	0xed
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.byte	0xee
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2
	.byte	0xf6
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x2
	.byte	0xf7
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x2
	.byte	0xf9
	.byte	0x1d
	.4byte	0x193
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0x4
	.4byte	0x18c
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x2
	.byte	0xfa
	.byte	0x1d
	.4byte	0x193
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x2
	.byte	0xfd
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x2
	.byte	0xfe
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x100
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x2
	.2byte	0x160
	.byte	0x12
	.4byte	0x1dd
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	0x1d6
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x193
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x194
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x195
	.byte	0x1b
	.4byte	0xf7
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x196
	.byte	0x1b
	.4byte	0xf7
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x198
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x199
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x193
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0xf7
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0xf7
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x5
	.4byte	0x38
	.4byte	0x378
	.uleb128 0x6
	.4byte	0x31
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x368
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0x378
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0x378
	.uleb128 0x5
	.4byte	0x133
	.4byte	0x3a7
	.uleb128 0x6
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x397
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0x3a7
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0x3a7
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0xa7
	.uleb128 0x5
	.4byte	0x1dd
	.4byte	0x3e3
	.uleb128 0x6
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x3d3
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x2b7
	.byte	0x12
	.4byte	0x3e3
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x133
	.uleb128 0xb
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x30b
	.byte	0x11
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x315
	.byte	0x11
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x318
	.byte	0x11
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x325
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x326
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x327
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x328
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x329
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x5
	.4byte	0x38
	.4byte	0x4eb
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.4byte	0x4e0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x32d
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x32e
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x32f
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x330
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x331
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x332
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x333
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x334
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x335
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x336
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x337
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x338
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x339
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x33a
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x33b
	.byte	0x1b
	.4byte	0x4eb
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x343
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x344
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x346
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x347
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x349
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x390
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x392
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x393
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x394
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x395
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x396
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x397
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x398
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x399
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x500
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x503
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x504
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x3
	.2byte	0x507
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x508
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x510
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x513
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x514
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x517
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x518
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF141
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF142
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF143
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF144
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF145
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x1d6
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x7f8
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x7d5
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x7d5
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x31
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x857
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0x828
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x857
	.byte	0
	.uleb128 0x5
	.4byte	0x12c
	.4byte	0x867
	.uleb128 0x6
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x88b
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x1d6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0x835
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x867
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0x804
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF157
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfc
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x8a3
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x916
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x916
	.byte	0
	.uleb128 0x14
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x1d6
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x1d6
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x1d6
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x1d6
	.byte	0x10
	.uleb128 0x14
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x91c
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8bc
	.uleb128 0x5
	.4byte	0x8b0
	.4byte	0x92c
	.uleb128 0x6
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x9af
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x1d6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x1d6
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x1d6
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x1d6
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x1d6
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x1d6
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x1d6
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x1d6
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x1d6
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF174
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x9f4
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x9f4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x9f4
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x8b0
	.2byte	0x100
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x8b0
	.2byte	0x104
	.byte	0
	.uleb128 0x5
	.4byte	0x4d
	.4byte	0xa04
	.uleb128 0x6
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF179
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0xa46
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0xa46
	.byte	0
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x1d6
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0xa4c
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0xa62
	.byte	0x88
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa04
	.uleb128 0x5
	.4byte	0xa5c
	.4byte	0xa5c
	.uleb128 0x6
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x477
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9af
	.uleb128 0x13
	.4byte	.LASF183
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0xa90
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0xa90
	.byte	0
	.uleb128 0x12
	.4byte	.LASF185
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x1d6
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x12c
	.uleb128 0x13
	.4byte	.LASF186
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0xb09
	.uleb128 0x14
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0xa90
	.byte	0
	.uleb128 0x14
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x1d6
	.byte	0x4
	.uleb128 0x14
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x1d6
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x7e3
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF188
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x7e3
	.byte	0xe
	.uleb128 0x14
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0xa68
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x1d6
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0xc6d
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0xa96
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0xc6d
	.uleb128 0x18
	.4byte	.LASF192
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x1d6
	.byte	0
	.uleb128 0x18
	.4byte	.LASF193
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0xea8
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF194
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0xea8
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF195
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0xea8
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF196
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x1d6
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF197
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x8aa
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x1d6
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF199
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x1d6
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF200
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x1010
	.byte	0x20
	.uleb128 0x19
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x1016
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x1027
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x1d6
	.byte	0x2c
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x1d6
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x8aa
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x102d
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF206
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x1033
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF207
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x8aa
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF208
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x1044
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF179
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0xa46
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0xa04
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF210
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0xe69
	.byte	0xd8
	.uleb128 0x18
	.4byte	.LASF211
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0xea8
	.byte	0xe4
	.uleb128 0x18
	.4byte	.LASF212
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x1050
	.byte	0xe8
	.uleb128 0x18
	.4byte	.LASF213
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x8aa
	.byte	0xec
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb0e
	.uleb128 0x13
	.4byte	.LASF214
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0xdb6
	.uleb128 0x14
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0xa90
	.byte	0
	.uleb128 0x14
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x1d6
	.byte	0x4
	.uleb128 0x14
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x1d6
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x7e3
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF188
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x7e3
	.byte	0xe
	.uleb128 0x14
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0xa68
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x1d6
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0xc6d
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x4d
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0xdd4
	.byte	0x24
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0xdf8
	.byte	0x28
	.uleb128 0x12
	.4byte	.LASF218
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0xe1c
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF219
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0xe36
	.byte	0x30
	.uleb128 0x14
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0xa68
	.byte	0x34
	.uleb128 0x14
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0xa90
	.byte	0x3c
	.uleb128 0x14
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x1d6
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF220
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0xe3c
	.byte	0x44
	.uleb128 0x12
	.4byte	.LASF221
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0xe4c
	.byte	0x47
	.uleb128 0x14
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0xa68
	.byte	0x48
	.uleb128 0x12
	.4byte	.LASF222
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x1d6
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF223
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0x810
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF224
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x897
	.byte	0x58
	.uleb128 0x12
	.4byte	.LASF225
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x88b
	.byte	0x5c
	.uleb128 0x12
	.4byte	.LASF226
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x1d6
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.4byte	0x1d6
	.4byte	0xdd4
	.uleb128 0x1b
	.4byte	0xc6d
	.uleb128 0x1b
	.4byte	0x4d
	.uleb128 0x1b
	.4byte	0x8aa
	.uleb128 0x1b
	.4byte	0x1d6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdb6
	.uleb128 0x1a
	.4byte	0x1d6
	.4byte	0xdf8
	.uleb128 0x1b
	.4byte	0xc6d
	.uleb128 0x1b
	.4byte	0x4d
	.uleb128 0x1b
	.4byte	0xf1
	.uleb128 0x1b
	.4byte	0x1d6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdda
	.uleb128 0x1a
	.4byte	0x81c
	.4byte	0xe1c
	.uleb128 0x1b
	.4byte	0xc6d
	.uleb128 0x1b
	.4byte	0x4d
	.uleb128 0x1b
	.4byte	0x81c
	.uleb128 0x1b
	.4byte	0x1d6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdfe
	.uleb128 0x1a
	.4byte	0x1d6
	.4byte	0xe36
	.uleb128 0x1b
	.4byte	0xc6d
	.uleb128 0x1b
	.4byte	0x4d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe22
	.uleb128 0x5
	.4byte	0x12c
	.4byte	0xe4c
	.uleb128 0x6
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0x12c
	.4byte	0xe5c
	.uleb128 0x6
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF227
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0xc73
	.uleb128 0x17
	.4byte	.LASF228
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0xea2
	.uleb128 0x18
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0xea2
	.byte	0
	.uleb128 0x18
	.4byte	.LASF229
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x1d6
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF230
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0xea8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe69
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5c
	.uleb128 0x17
	.4byte	.LASF231
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0xef5
	.uleb128 0x18
	.4byte	.LASF232
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0xef5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF233
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0xef5
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF234
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x18c
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF235
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x7f1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x18c
	.4byte	0xf05
	.uleb128 0x6
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF236
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0xf4c
	.uleb128 0x18
	.4byte	.LASF237
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x916
	.byte	0
	.uleb128 0x18
	.4byte	.LASF238
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x1d6
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF239
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x916
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF240
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0xf4c
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x916
	.uleb128 0x17
	.4byte	.LASF241
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0xffb
	.uleb128 0x18
	.4byte	.LASF242
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x8aa
	.byte	0
	.uleb128 0x18
	.4byte	.LASF243
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x88b
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF244
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x88b
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF245
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x88b
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF246
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0xffb
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF247
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x1d6
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF248
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x88b
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF249
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x88b
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF250
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x88b
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF251
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x88b
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF252
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x88b
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.4byte	0xfc
	.4byte	0x100b
	.uleb128 0x6
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF265
	.uleb128 0x8
	.byte	0x4
	.4byte	0x100b
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf05
	.uleb128 0x1d
	.4byte	0x1027
	.uleb128 0x1b
	.4byte	0xc6d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x101c
	.uleb128 0x8
	.byte	0x4
	.4byte	0xeae
	.uleb128 0x8
	.byte	0x4
	.4byte	0x92c
	.uleb128 0x1d
	.4byte	0x1044
	.uleb128 0x1b
	.4byte	0x1d6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x104a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1039
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf52
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0xb09
	.uleb128 0x9
	.4byte	.LASF254
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0xb09
	.uleb128 0x9
	.4byte	.LASF255
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0xb09
	.uleb128 0x9
	.4byte	.LASF256
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0xc6d
	.uleb128 0x2
	.4byte	.LASF257
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x8aa
	.uleb128 0x5
	.4byte	0xf7
	.4byte	0x10a6
	.uleb128 0x6
	.4byte	0x31
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	0x1096
	.uleb128 0x2
	.4byte	.LASF258
	.byte	0x9
	.byte	0x8e
	.byte	0x1a
	.4byte	0x10a6
	.uleb128 0xd
	.4byte	.LASF259
	.byte	0xa
	.byte	0xc9
	.byte	0x14
	.4byte	0x10c8
	.uleb128 0x1e
	.4byte	0x10b7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10ce
	.uleb128 0x1a
	.4byte	0x31
	.4byte	0x10dd
	.uleb128 0x1b
	.4byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	0x10c3
	.4byte	0x10ed
	.uleb128 0x6
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x1e
	.4byte	0x10dd
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0xa
	.byte	0xca
	.byte	0x20
	.4byte	0x10ed
	.uleb128 0x2
	.4byte	.LASF261
	.byte	0xb
	.byte	0x9a
	.byte	0x11
	.4byte	0x31
	.uleb128 0x1f
	.4byte	0x10fe
	.byte	0x1
	.byte	0x2e
	.byte	0xa
	.uleb128 0x5
	.byte	0x3
	.4byte	_xt_tick_divisor
	.uleb128 0x20
	.4byte	.LASF266
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x1d6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113c
	.uleb128 0x21
	.4byte	.LVL1
	.4byte	0x115c
	.byte	0
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115c
	.uleb128 0x21
	.4byte	.LVL0
	.4byte	0x115c
	.byte	0
	.uleb128 0x23
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0xc
	.byte	0x35
	.byte	0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
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
.LASF55:
	.string	"Xthal_hw_release_name"
.LASF51:
	.string	"Xthal_hw_configid0"
.LASF52:
	.string	"Xthal_hw_configid1"
.LASF116:
	.string	"Xthal_mmu_ca_bits"
.LASF212:
	.string	"_misc"
.LASF68:
	.string	"Xthal_have_ccount"
.LASF34:
	.string	"Xthal_memory_order"
.LASF146:
	.string	"_lock_t"
.LASF130:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF174:
	.string	"_on_exit_args"
.LASF217:
	.string	"_write"
.LASF83:
	.string	"Xthal_num_xlmi"
.LASF244:
	.string	"_wctomb_state"
.LASF86:
	.string	"Xthal_instrom_size"
.LASF123:
	.string	"Xthal_dtlb_ways"
.LASF205:
	.string	"_r48"
.LASF22:
	.string	"Xthal_dcache_linewidth"
.LASF13:
	.string	"Xthal_cp_names"
.LASF29:
	.string	"Xthal_debug_configured"
.LASF190:
	.string	"_data"
.LASF25:
	.string	"Xthal_dcache_linesize"
.LASF11:
	.string	"unsigned int"
.LASF17:
	.string	"Xthal_cp_max"
.LASF58:
	.string	"Xthal_num_interrupts"
.LASF261:
	.string	"_xt_tick_divisor"
.LASF122:
	.string	"Xthal_dtlb_way_bits"
.LASF189:
	.string	"_lbfsize"
.LASF187:
	.string	"_flags"
.LASF139:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF192:
	.string	"_errno"
.LASF7:
	.string	"Xthal_cpregs_size"
.LASF198:
	.string	"__sdidinit"
.LASF63:
	.string	"Xthal_inttype"
.LASF1:
	.string	"Xthal_cpregs_save_fn"
.LASF254:
	.string	"__sf_fake_stdout"
.LASF147:
	.string	"_LOCK_RECURSIVE_T"
.LASF57:
	.string	"Xthal_num_intlevels"
.LASF216:
	.string	"_read"
.LASF158:
	.string	"__ULong"
.LASF248:
	.string	"_mbrlen_state"
.LASF107:
	.string	"Xthal_have_mimic_cacheattr"
.LASF194:
	.string	"_stdout"
.LASF8:
	.string	"Xthal_cpregs_align"
.LASF149:
	.string	"_fpos_t"
.LASF117:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF181:
	.string	"_fns"
.LASF215:
	.string	"_cookie"
.LASF256:
	.string	"_global_impure_ptr"
.LASF163:
	.string	"_Bigint"
.LASF171:
	.string	"__tm_wday"
.LASF3:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF237:
	.string	"_result"
.LASF33:
	.string	"Xthal_release_internal"
.LASF134:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF36:
	.string	"Xthal_have_density"
.LASF60:
	.string	"Xthal_intlevel_mask"
.LASF110:
	.string	"Xthal_have_tlbs"
.LASF21:
	.string	"Xthal_icache_linewidth"
.LASF53:
	.string	"Xthal_hw_release_major"
.LASF153:
	.string	"__count"
.LASF19:
	.string	"Xthal_num_aregs"
.LASF166:
	.string	"__tm_min"
.LASF211:
	.string	"__sf"
.LASF87:
	.string	"Xthal_instram_vaddr"
.LASF231:
	.string	"_rand48"
.LASF238:
	.string	"_result_k"
.LASF213:
	.string	"_signal_buf"
.LASF145:
	.string	"long long unsigned int"
.LASF207:
	.string	"_asctime_buf"
.LASF69:
	.string	"Xthal_num_ccompare"
.LASF2:
	.string	"Xthal_cpregs_restore_fn"
.LASF162:
	.string	"_wds"
.LASF115:
	.string	"Xthal_mmu_sr_bits"
.LASF227:
	.string	"__FILE"
.LASF84:
	.string	"Xthal_instrom_vaddr"
.LASF129:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF223:
	.string	"_offset"
.LASF220:
	.string	"_ubuf"
.LASF138:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF41:
	.string	"Xthal_have_sext"
.LASF40:
	.string	"Xthal_have_minmax"
.LASF81:
	.string	"Xthal_num_datarom"
.LASF197:
	.string	"_emergency"
.LASF37:
	.string	"Xthal_have_booleans"
.LASF124:
	.string	"Xthal_dtlb_arf_ways"
.LASF79:
	.string	"Xthal_num_instrom"
.LASF43:
	.string	"Xthal_have_mac16"
.LASF266:
	.string	"xt_clock_freq"
.LASF78:
	.string	"Xthal_tram_sync"
.LASF88:
	.string	"Xthal_instram_paddr"
.LASF103:
	.string	"Xthal_icache_line_lockable"
.LASF27:
	.string	"Xthal_dcache_size"
.LASF257:
	.string	"suboptarg"
.LASF172:
	.string	"__tm_yday"
.LASF196:
	.string	"_inc"
.LASF180:
	.string	"_ind"
.LASF135:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF74:
	.string	"Xthal_have_highlevel_interrupts"
.LASF105:
	.string	"Xthal_have_spanning_way"
.LASF85:
	.string	"Xthal_instrom_paddr"
.LASF99:
	.string	"Xthal_icache_setwidth"
.LASF45:
	.string	"Xthal_have_fp"
.LASF82:
	.string	"Xthal_num_dataram"
.LASF259:
	.string	"XT_INTEXC_HOOK"
.LASF80:
	.string	"Xthal_num_instram"
.LASF154:
	.string	"__value"
.LASF35:
	.string	"Xthal_have_windowed"
.LASF239:
	.string	"_p5s"
.LASF72:
	.string	"Xthal_xea_version"
.LASF106:
	.string	"Xthal_have_identity_map"
.LASF133:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF243:
	.string	"_mblen_state"
.LASF54:
	.string	"Xthal_hw_release_minor"
.LASF12:
	.string	"char"
.LASF168:
	.string	"__tm_mday"
.LASF44:
	.string	"Xthal_have_mul16"
.LASF208:
	.string	"_sig_func"
.LASF249:
	.string	"_mbrtowc_state"
.LASF62:
	.string	"Xthal_intlevel"
.LASF75:
	.string	"Xthal_have_nmi"
.LASF156:
	.string	"_flock_t"
.LASF76:
	.string	"Xthal_tram_pending"
.LASF151:
	.string	"__wch"
.LASF230:
	.string	"_iobs"
.LASF32:
	.string	"Xthal_release_name"
.LASF182:
	.string	"_on_exit_args_ptr"
.LASF5:
	.string	"Xthal_extra_size"
.LASF219:
	.string	"_close"
.LASF128:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF186:
	.string	"__sFILE_fake"
.LASF170:
	.string	"__tm_year"
.LASF250:
	.string	"_mbsrtowcs_state"
.LASF59:
	.string	"Xthal_excm_level"
.LASF193:
	.string	"_stdin"
.LASF202:
	.string	"_gamma_signgam"
.LASF144:
	.string	"long long int"
.LASF109:
	.string	"Xthal_have_cacheattr"
.LASF6:
	.string	"Xthal_extra_align"
.LASF184:
	.string	"_base"
.LASF50:
	.string	"Xthal_build_unique_id"
.LASF240:
	.string	"_freelist"
.LASF233:
	.string	"_mult"
.LASF9:
	.string	"Xthal_all_extra_size"
.LASF89:
	.string	"Xthal_instram_size"
.LASF251:
	.string	"_wcrtomb_state"
.LASF26:
	.string	"Xthal_icache_size"
.LASF0:
	.string	"Xthal_rev_no"
.LASF119:
	.string	"Xthal_itlb_way_bits"
.LASF258:
	.string	"exc_cause_table"
.LASF93:
	.string	"Xthal_dataram_vaddr"
.LASF137:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF114:
	.string	"Xthal_mmu_ring_bits"
.LASF201:
	.string	"__cleanup"
.LASF155:
	.string	"_mbstate_t"
.LASF108:
	.string	"Xthal_have_xlt_cacheattr"
.LASF165:
	.string	"__tm_sec"
.LASF49:
	.string	"Xthal_num_writebuffer_entries"
.LASF66:
	.string	"Xthal_num_ibreak"
.LASF4:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF173:
	.string	"__tm_isdst"
.LASF252:
	.string	"_wcsrtombs_state"
.LASF30:
	.string	"Xthal_release_major"
.LASF169:
	.string	"__tm_mon"
.LASF132:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF101:
	.string	"Xthal_icache_ways"
.LASF61:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF118:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF125:
	.string	"Xthal_cp_id_FPU"
.LASF94:
	.string	"Xthal_dataram_paddr"
.LASF64:
	.string	"Xthal_inttype_mask"
.LASF209:
	.string	"_atexit0"
.LASF263:
	.string	"/home/dieter/Development/esp-idf/components/freertos/xtensa_init.c"
.LASF100:
	.string	"Xthal_dcache_setwidth"
.LASF235:
	.string	"_rand_next"
.LASF104:
	.string	"Xthal_dcache_line_lockable"
.LASF179:
	.string	"_atexit"
.LASF225:
	.string	"_mbstate"
.LASF267:
	.string	"_xt_tick_divisor_init"
.LASF111:
	.string	"Xthal_mmu_asid_bits"
.LASF143:
	.string	"short int"
.LASF90:
	.string	"Xthal_datarom_vaddr"
.LASF141:
	.string	"long int"
.LASF38:
	.string	"Xthal_have_loops"
.LASF92:
	.string	"Xthal_datarom_size"
.LASF161:
	.string	"_sign"
.LASF127:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF70:
	.string	"Xthal_have_prid"
.LASF152:
	.string	"__wchb"
.LASF236:
	.string	"_mprec"
.LASF136:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF188:
	.string	"_file"
.LASF241:
	.string	"_misc_reent"
.LASF264:
	.string	"/home/dieter/Development/ProjektEi/build/freertos"
.LASF121:
	.string	"Xthal_itlb_arf_ways"
.LASF206:
	.string	"_localtime_buf"
.LASF203:
	.string	"_cvtlen"
.LASF160:
	.string	"_maxwds"
.LASF77:
	.string	"Xthal_tram_enabled"
.LASF42:
	.string	"Xthal_have_clamps"
.LASF91:
	.string	"Xthal_datarom_paddr"
.LASF222:
	.string	"_blksize"
.LASF164:
	.string	"__tm"
.LASF15:
	.string	"Xthal_cp_num"
.LASF20:
	.string	"Xthal_num_aregs_log2"
.LASF224:
	.string	"_lock"
.LASF28:
	.string	"Xthal_dcache_is_writeback"
.LASF31:
	.string	"Xthal_release_minor"
.LASF157:
	.string	"long unsigned int"
.LASF95:
	.string	"Xthal_dataram_size"
.LASF126:
	.string	"Xthal_cp_mask_FPU"
.LASF262:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"Xthal_icache_linesize"
.LASF176:
	.string	"_dso_handle"
.LASF65:
	.string	"Xthal_timer_interrupt"
.LASF39:
	.string	"Xthal_have_nsa"
.LASF120:
	.string	"Xthal_itlb_ways"
.LASF204:
	.string	"_cvtbuf"
.LASF16:
	.string	"unsigned char"
.LASF73:
	.string	"Xthal_have_interrupts"
.LASF131:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF247:
	.string	"_getdate_err"
.LASF167:
	.string	"__tm_hour"
.LASF102:
	.string	"Xthal_dcache_ways"
.LASF140:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF96:
	.string	"Xthal_xlmi_vaddr"
.LASF234:
	.string	"_add"
.LASF229:
	.string	"_niobs"
.LASF183:
	.string	"__sbuf"
.LASF46:
	.string	"Xthal_have_speculation"
.LASF246:
	.string	"_l64a_buf"
.LASF228:
	.string	"_glue"
.LASF268:
	.string	"esp_clk_cpu_freq"
.LASF113:
	.string	"Xthal_mmu_rings"
.LASF210:
	.string	"__sglue"
.LASF56:
	.string	"Xthal_hw_release_internal"
.LASF242:
	.string	"_strtok_last"
.LASF245:
	.string	"_mbtowc_state"
.LASF200:
	.string	"_locale"
.LASF175:
	.string	"_fnargs"
.LASF142:
	.string	"signed char"
.LASF191:
	.string	"_reent"
.LASF24:
	.string	"short unsigned int"
.LASF177:
	.string	"_fntypes"
.LASF214:
	.string	"__sFILE"
.LASF185:
	.string	"_size"
.LASF71:
	.string	"Xthal_have_exceptions"
.LASF97:
	.string	"Xthal_xlmi_paddr"
.LASF148:
	.string	"_off_t"
.LASF221:
	.string	"_nbuf"
.LASF112:
	.string	"Xthal_mmu_asid_kernel"
.LASF48:
	.string	"Xthal_have_pif"
.LASF199:
	.string	"_unspecified_locale_info"
.LASF255:
	.string	"__sf_fake_stderr"
.LASF67:
	.string	"Xthal_num_dbreak"
.LASF226:
	.string	"_flags2"
.LASF10:
	.string	"Xthal_all_extra_align"
.LASF178:
	.string	"_is_cxa"
.LASF232:
	.string	"_seed"
.LASF98:
	.string	"Xthal_xlmi_size"
.LASF265:
	.string	"__locale_t"
.LASF47:
	.string	"Xthal_have_threadptr"
.LASF218:
	.string	"_seek"
.LASF159:
	.string	"_next"
.LASF18:
	.string	"Xthal_cp_mask"
.LASF195:
	.string	"_stderr"
.LASF260:
	.string	"_xt_intexc_hooks"
.LASF150:
	.string	"wint_t"
.LASF253:
	.string	"__sf_fake_stdin"
.LASF14:
	.string	"Xthal_num_coprocessors"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
