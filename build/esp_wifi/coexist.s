	.file	"coexist.c"
	.text
.Ltext0:
	.section	.text.esp_coex_version_get,"ax",@progbits
	.align	4
	.global	esp_coex_version_get
	.type	esp_coex_version_get, @function
esp_coex_version_get:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/esp_wifi/src/coexist.c"
	.loc 1 19 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 20 5 view .LVU1
	.loc 1 20 12 is_stmt 0 view .LVU2
	call8	coex_version_get
.LVL0:
	.loc 1 21 1 view .LVU3
	mov.n	a2, a10
	retw.n
.LFE3:
	.size	esp_coex_version_get, .-esp_coex_version_get
	.section	.text.esp_coex_preference_set,"ax",@progbits
	.align	4
	.global	esp_coex_preference_set
	.type	esp_coex_preference_set, @function
esp_coex_preference_set:
.LVL1:
.LFB4:
	.loc 1 24 1 is_stmt 1 view -0
	.loc 1 24 1 is_stmt 0 view .LVU5
	entry	sp, 32
.LCFI1:
	.loc 1 25 5 is_stmt 1 view .LVU6
	.loc 1 25 12 is_stmt 0 view .LVU7
	mov.n	a10, a2
	call8	coex_preference_set
.LVL2:
	.loc 1 26 1 view .LVU8
	mov.n	a2, a10
.LVL3:
	.loc 1 26 1 view .LVU9
	retw.n
.LFE4:
	.size	esp_coex_preference_set, .-esp_coex_preference_set
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
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 10 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_coexist.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_coexist_adapter.h"
	.file 12 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_coexist_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc9a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0xc
	.4byte	.LASF168
	.4byte	.LASF169
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x4d
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x67
	.byte	0x17
	.4byte	0x73
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
	.byte	0x2c
	.byte	0x13
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x38
	.byte	0x13
	.4byte	0x67
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x60
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xcb
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xcb
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x60
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0x119
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xea
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0x119
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x129
	.uleb128 0xa
	.4byte	0x60
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x14d
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x129
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x165
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d2
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1d2
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x4d
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1d8
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x178
	.uleb128 0x9
	.4byte	0x16c
	.4byte	0x1e8
	.uleb128 0xa
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x26b
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x4d
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x4d
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b0
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x16c
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x16c
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0xb1
	.4byte	0x2c0
	.uleb128 0xa
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x302
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x302
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x308
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x31f
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c0
	.uleb128 0x9
	.4byte	0x318
	.4byte	0x318
	.uleb128 0xa
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31e
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x26b
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x34d
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x34d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3c6
	.uleb128 0xe
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x34d
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x325
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x52a
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x353
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x52a
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x77d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x77d
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x77d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x691
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8e5
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8eb
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8fc
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x4d
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x4d
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x691
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x902
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x908
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x691
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x919
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x302
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c0
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x73e
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x77d
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x925
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x691
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3cb
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x673
	.uleb128 0xe
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x34d
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x325
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x52a
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0xb1
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a3
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6cd
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6f1
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x70b
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x325
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x34d
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x4d
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x711
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x721
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x325
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x4d
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xd2
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x159
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x14d
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x4d
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x691
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x691
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x697
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF96
	.uleb128 0x13
	.4byte	0x697
	.uleb128 0xf
	.byte	0x4
	.4byte	0x673
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a9
	.uleb128 0x17
	.4byte	0xde
	.4byte	0x6f1
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0xde
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d3
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x70b
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0xb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6f7
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x721
	.uleb128 0xa
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x731
	.uleb128 0xa
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x530
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x777
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x777
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x77d
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x73e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x731
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7ca
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7ca
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7ca
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x7da
	.uleb128 0xa
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x821
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d2
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x821
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8d0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x691
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x14d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x14d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x14d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8d0
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x4d
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x14d
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x14d
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x14d
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x14d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x14d
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x697
	.4byte	0x8e0
	.uleb128 0xa
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF170
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7da
	.uleb128 0x1a
	.4byte	0x8fc
	.uleb128 0x18
	.4byte	0x52a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x783
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x1a
	.4byte	0x919
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x91f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x90e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x827
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x52a
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x691
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0x18
	.byte	0x11
	.4byte	0x81
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x60
	.byte	0xa
	.byte	0x1c
	.byte	0xe
	.4byte	0x99e
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xa
	.byte	0x21
	.byte	0x3
	.4byte	0x977
	.uleb128 0xb
	.byte	0x54
	.byte	0xb
	.byte	0x1d
	.byte	0x9
	.4byte	0xac5
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0xb
	.byte	0x1e
	.byte	0xd
	.4byte	0x81
	.byte	0
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xb
	.byte	0x1f
	.byte	0xe
	.4byte	0xaca
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xb
	.byte	0x20
	.byte	0xd
	.4byte	0xadb
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0xb
	.byte	0x21
	.byte	0x10
	.4byte	0xaf0
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0xb
	.byte	0x22
	.byte	0xc
	.4byte	0xb06
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xb
	.byte	0x23
	.byte	0xc
	.4byte	0x318
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0xb
	.byte	0x24
	.byte	0xd
	.4byte	0xb20
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xb
	.byte	0x25
	.byte	0xc
	.4byte	0xadb
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xb
	.byte	0x26
	.byte	0xf
	.4byte	0xb3a
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xb
	.byte	0x27
	.byte	0xf
	.4byte	0xb3a
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xb
	.byte	0x28
	.byte	0xf
	.4byte	0xb54
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xb
	.byte	0x29
	.byte	0xf
	.4byte	0xb69
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xb
	.byte	0x2a
	.byte	0x10
	.4byte	0xb74
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xb
	.byte	0x2b
	.byte	0xf
	.4byte	0xb89
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xb
	.byte	0x2c
	.byte	0xd
	.4byte	0xadb
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xb
	.byte	0x2d
	.byte	0xd
	.4byte	0xadb
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xb
	.byte	0x2e
	.byte	0xd
	.4byte	0xadb
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0xb
	.byte	0x2f
	.byte	0xd
	.4byte	0xba4
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0xb
	.byte	0x30
	.byte	0xd
	.4byte	0xbc6
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0xb
	.byte	0x31
	.byte	0x10
	.4byte	0xbd1
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0xb
	.byte	0x32
	.byte	0xd
	.4byte	0x81
	.byte	0x50
	.byte	0
	.uleb128 0x1f
	.4byte	0xb1
	.uleb128 0xf
	.byte	0x4
	.4byte	0xac5
	.uleb128 0x1a
	.4byte	0xadb
	.uleb128 0x18
	.4byte	0xb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xad0
	.uleb128 0x17
	.4byte	0x8d
	.4byte	0xaf0
	.uleb128 0x18
	.4byte	0xb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xae1
	.uleb128 0x1a
	.4byte	0xb06
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x8d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xaf6
	.uleb128 0x17
	.4byte	0xb1
	.4byte	0xb20
	.uleb128 0x18
	.4byte	0x8d
	.uleb128 0x18
	.4byte	0x8d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb0c
	.uleb128 0x17
	.4byte	0x81
	.4byte	0xb3a
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0xb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb26
	.uleb128 0x17
	.4byte	0x81
	.4byte	0xb54
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x8d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb40
	.uleb128 0x17
	.4byte	0x81
	.4byte	0xb69
	.uleb128 0x18
	.4byte	0xb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb5a
	.uleb128 0x1f
	.4byte	0x81
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb6f
	.uleb128 0x17
	.4byte	0xb1
	.4byte	0xb89
	.uleb128 0x18
	.4byte	0xa5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb7a
	.uleb128 0x1a
	.4byte	0xba4
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0xb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb8f
	.uleb128 0x1a
	.4byte	0xbbf
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x8d
	.uleb128 0x18
	.4byte	0xbbf
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF155
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbaa
	.uleb128 0x1f
	.4byte	0x99
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbcc
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xb
	.byte	0x33
	.byte	0x3
	.4byte	0x9aa
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0xb
	.byte	0x35
	.byte	0x1d
	.4byte	0xbd7
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x60
	.byte	0xc
	.byte	0x19
	.byte	0xe
	.4byte	0xc16
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF159
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF160
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF161
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF162
	.byte	0xc
	.byte	0x1e
	.byte	0x3
	.4byte	0xbef
	.uleb128 0x20
	.4byte	.LASF163
	.byte	0x1
	.byte	0x17
	.byte	0xb
	.4byte	0x96b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc61
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x1
	.byte	0x17
	.byte	0x35
	.4byte	0x99e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x22
	.4byte	.LVL2
	.4byte	0xc85
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF164
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	0x6c7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc85
	.uleb128 0x24
	.4byte	.LVL0
	.4byte	0xc91
	.byte	0
	.uleb128 0x25
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xc
	.byte	0x4a
	.byte	0xb
	.uleb128 0x25
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xc
	.byte	0x41
	.byte	0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"_dso_handle"
.LASF166:
	.string	"coex_version_get"
.LASF54:
	.string	"_size"
.LASF13:
	.string	"size_t"
.LASF101:
	.string	"_rand48"
.LASF66:
	.string	"_emergency"
.LASF146:
	.string	"_is_in_isr"
.LASF162:
	.string	"coex_prefer_t"
.LASF59:
	.string	"_data"
.LASF121:
	.string	"_wcrtomb_state"
.LASF132:
	.string	"ESP_COEX_PREFER_NUM"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF9:
	.string	"long long unsigned int"
.LASF58:
	.string	"_lbfsize"
.LASF148:
	.string	"_free"
.LASF7:
	.string	"__int64_t"
.LASF170:
	.string	"__locale_t"
.LASF144:
	.string	"_semphr_take"
.LASF142:
	.string	"_semphr_take_from_isr"
.LASF119:
	.string	"_mbrtowc_state"
.LASF141:
	.string	"_semphr_delete"
.LASF165:
	.string	"coex_preference_set"
.LASF114:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF89:
	.string	"_ubuf"
.LASF53:
	.string	"_base"
.LASF36:
	.string	"__tm_hour"
.LASF80:
	.string	"__sf"
.LASF43:
	.string	"_on_exit_args"
.LASF84:
	.string	"_cookie"
.LASF79:
	.string	"__sglue"
.LASF16:
	.string	"long int"
.LASF159:
	.string	"COEX_PREFER_BT"
.LASF106:
	.string	"_mprec"
.LASF56:
	.string	"_flags"
.LASF47:
	.string	"_is_cxa"
.LASF62:
	.string	"_stdin"
.LASF129:
	.string	"ESP_COEX_PREFER_WIFI"
.LASF91:
	.string	"_blksize"
.LASF14:
	.string	"_lock_t"
.LASF169:
	.string	"/home/dieter/Development/ProjektEi/build/esp_wifi"
.LASF73:
	.string	"_cvtbuf"
.LASF92:
	.string	"_offset"
.LASF120:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_strtok_last"
.LASF118:
	.string	"_mbrlen_state"
.LASF44:
	.string	"_fnargs"
.LASF136:
	.string	"_spin_lock_delete"
.LASF50:
	.string	"_fns"
.LASF5:
	.string	"__uint32_t"
.LASF30:
	.string	"_sign"
.LASF158:
	.string	"COEX_PREFER_WIFI"
.LASF25:
	.string	"_flock_t"
.LASF64:
	.string	"_stderr"
.LASF32:
	.string	"_Bigint"
.LASF71:
	.string	"_gamma_signgam"
.LASF85:
	.string	"_read"
.LASF108:
	.string	"_result_k"
.LASF33:
	.string	"__tm"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF6:
	.string	"unsigned int"
.LASF134:
	.string	"_version"
.LASF21:
	.string	"__wchb"
.LASF63:
	.string	"_stdout"
.LASF130:
	.string	"ESP_COEX_PREFER_BT"
.LASF72:
	.string	"_cvtlen"
.LASF26:
	.string	"long unsigned int"
.LASF55:
	.string	"__sFILE_fake"
.LASF164:
	.string	"esp_coex_version_get"
.LASF99:
	.string	"_niobs"
.LASF156:
	.string	"coex_adapter_funcs_t"
.LASF3:
	.string	"short unsigned int"
.LASF168:
	.string	"/home/dieter/Development/esp-idf/components/esp_wifi/src/coexist.c"
.LASF78:
	.string	"_atexit0"
.LASF82:
	.string	"_signal_buf"
.LASF76:
	.string	"_asctime_buf"
.LASF154:
	.string	"_magic"
.LASF107:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF19:
	.string	"wint_t"
.LASF163:
	.string	"esp_coex_preference_set"
.LASF93:
	.string	"_lock"
.LASF143:
	.string	"_semphr_give_from_isr"
.LASF95:
	.string	"_flags2"
.LASF140:
	.string	"_semphr_create"
.LASF86:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF138:
	.string	"_int_enable"
.LASF81:
	.string	"_misc"
.LASF135:
	.string	"_spin_lock_create"
.LASF123:
	.string	"__sf_fake_stdin"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF145:
	.string	"_semphr_give"
.LASF38:
	.string	"__tm_mon"
.LASF48:
	.string	"_atexit"
.LASF127:
	.string	"suboptarg"
.LASF67:
	.string	"__sdidinit"
.LASF17:
	.string	"_off_t"
.LASF137:
	.string	"_int_disable"
.LASF133:
	.string	"esp_coex_prefer_t"
.LASF110:
	.string	"_freelist"
.LASF151:
	.string	"_timer_setfn"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF157:
	.string	"g_coex_adapter_funcs"
.LASF149:
	.string	"_timer_disarm"
.LASF155:
	.string	"_Bool"
.LASF10:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF100:
	.string	"_iobs"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"__tm_yday"
.LASF131:
	.string	"ESP_COEX_PREFER_BALANCE"
.LASF52:
	.string	"__sbuf"
.LASF97:
	.string	"__FILE"
.LASF24:
	.string	"_mbstate_t"
.LASF83:
	.string	"__sFILE"
.LASF94:
	.string	"_mbstate"
.LASF105:
	.string	"_rand_next"
.LASF113:
	.string	"_mblen_state"
.LASF65:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF69:
	.string	"_locale"
.LASF70:
	.string	"__cleanup"
.LASF68:
	.string	"_unspecified_locale_info"
.LASF29:
	.string	"_maxwds"
.LASF60:
	.string	"_reent"
.LASF102:
	.string	"_seed"
.LASF160:
	.string	"COEX_PREFER_BALANCE"
.LASF22:
	.string	"__count"
.LASF11:
	.string	"uint32_t"
.LASF87:
	.string	"_seek"
.LASF152:
	.string	"_timer_arm_us"
.LASF18:
	.string	"_fpos_t"
.LASF61:
	.string	"_errno"
.LASF96:
	.string	"char"
.LASF35:
	.string	"__tm_min"
.LASF4:
	.string	"__int32_t"
.LASF103:
	.string	"_mult"
.LASF28:
	.string	"_next"
.LASF167:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"__value"
.LASF46:
	.string	"_fntypes"
.LASF111:
	.string	"_misc_reent"
.LASF104:
	.string	"_add"
.LASF27:
	.string	"__ULong"
.LASF117:
	.string	"_getdate_err"
.LASF150:
	.string	"_timer_done"
.LASF161:
	.string	"COEX_PREFER_NUM"
.LASF126:
	.string	"_global_impure_ptr"
.LASF147:
	.string	"_malloc_internal"
.LASF128:
	.string	"esp_err_t"
.LASF57:
	.string	"_file"
.LASF31:
	.string	"_wds"
.LASF40:
	.string	"__tm_wday"
.LASF98:
	.string	"_glue"
.LASF116:
	.string	"_l64a_buf"
.LASF77:
	.string	"_sig_func"
.LASF90:
	.string	"_nbuf"
.LASF153:
	.string	"_esp_timer_get_time"
.LASF171:
	.string	"prefer"
.LASF42:
	.string	"__tm_isdst"
.LASF75:
	.string	"_localtime_buf"
.LASF88:
	.string	"_close"
.LASF125:
	.string	"__sf_fake_stderr"
.LASF74:
	.string	"_r48"
.LASF12:
	.string	"int64_t"
.LASF115:
	.string	"_mbtowc_state"
.LASF109:
	.string	"_p5s"
.LASF139:
	.string	"_task_yield_from_isr"
.LASF37:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
