	.file	"decoder-sbc.c"
	.text
.Ltext0:
.Letext0:
	.file 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 9 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/stack/include/stack/bt_types.h"
	.file 10 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/common/include/common/bt_trace.h"
	.file 11 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 12 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/external/sbc/decoder/include/oi_stddefs.h"
	.file 13 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/external/sbc/decoder/include/oi_codec_sbc.h"
	.file 14 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xc
	.4byte	.LASF143
	.4byte	.LASF144
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x2b
	.byte	0x17
	.4byte	0x30
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x18
	.byte	0x13
	.4byte	0x24
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x87
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x4c
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xd5
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xa6
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xd5
	.byte	0
	.uleb128 0x9
	.4byte	0x30
	.4byte	0xe5
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x109
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xb3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xd
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xe
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x121
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1a0
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x45
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x45
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x45
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x45
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1a6
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x146
	.uleb128 0x9
	.4byte	0x13a
	.4byte	0x1b6
	.uleb128 0xa
	.4byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x239
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x45
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x45
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x45
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x45
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x45
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x45
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x45
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x45
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x27e
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x27e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x27e
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x13a
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x13a
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x6d
	.4byte	0x28e
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2d0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2d0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x45
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2d6
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2ed
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x28e
	.uleb128 0x9
	.4byte	0x2e6
	.4byte	0x2e6
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2ec
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x239
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x31b
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x31b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x45
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x394
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x31b
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x45
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x45
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x37
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x37
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x2f3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x45
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x4f8
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x321
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x4f8
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x73e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x73e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x73e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x45
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x128
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x45
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x45
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8a6
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8ac
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8bd
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x45
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x45
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x128
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8c3
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8c9
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x128
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8da
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2d0
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x28e
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6ff
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x73e
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8e6
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x128
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x399
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x641
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x31b
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x45
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x45
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x37
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x37
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2f3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x45
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x4f8
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x6d
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x65f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x68e
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6b2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6cc
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2f3
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x31b
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x45
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6d2
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6e2
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2f3
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x45
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x8e
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x115
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x109
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x45
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x45
	.4byte	0x65f
	.uleb128 0x18
	.4byte	0x4f8
	.uleb128 0x18
	.4byte	0x6d
	.uleb128 0x18
	.4byte	0x128
	.uleb128 0x18
	.4byte	0x45
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x641
	.uleb128 0x17
	.4byte	0x45
	.4byte	0x683
	.uleb128 0x18
	.4byte	0x4f8
	.uleb128 0x18
	.4byte	0x6d
	.uleb128 0x18
	.4byte	0x683
	.uleb128 0x18
	.4byte	0x45
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x135
	.uleb128 0xe
	.4byte	0x683
	.uleb128 0xd
	.byte	0x4
	.4byte	0x665
	.uleb128 0x17
	.4byte	0x9a
	.4byte	0x6b2
	.uleb128 0x18
	.4byte	0x4f8
	.uleb128 0x18
	.4byte	0x6d
	.uleb128 0x18
	.4byte	0x9a
	.uleb128 0x18
	.4byte	0x45
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x694
	.uleb128 0x17
	.4byte	0x45
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x4f8
	.uleb128 0x18
	.4byte	0x6d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6b8
	.uleb128 0x9
	.4byte	0x30
	.4byte	0x6e2
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x30
	.4byte	0x6f2
	.uleb128 0xa
	.4byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4fe
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x738
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x738
	.byte	0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x45
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x73e
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6ff
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6f2
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x78b
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x78b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x78b
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x5a
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3e
	.4byte	0x79b
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7e2
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1a0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x45
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1a0
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7e2
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x891
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x128
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x109
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x109
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x109
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x891
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x45
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x109
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x109
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x109
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x109
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x109
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x12e
	.4byte	0x8a1
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF145
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8a1
	.uleb128 0xd
	.byte	0x4
	.4byte	0x79b
	.uleb128 0x1a
	.4byte	0x8bd
	.uleb128 0x18
	.4byte	0x4f8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8b2
	.uleb128 0xd
	.byte	0x4
	.4byte	0x744
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1b6
	.uleb128 0x1a
	.4byte	0x8da
	.uleb128 0x18
	.4byte	0x45
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8e0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8cf
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7e8
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x394
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x394
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x394
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4f8
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x128
	.uleb128 0x9
	.4byte	0x689
	.4byte	0x93c
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	0x92c
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x8
	.byte	0x8e
	.byte	0x1a
	.4byte	0x93c
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x9
	.byte	0x1a
	.byte	0x11
	.4byte	0x61
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF125
	.uleb128 0x9
	.4byte	0x94d
	.4byte	0x970
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	0x960
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x2be
	.byte	0x16
	.4byte	0x970
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x2bf
	.byte	0x16
	.4byte	0x970
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x14f
	.byte	0xe
	.4byte	0x94d
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x241
	.byte	0xe
	.4byte	0x94d
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x138
	.byte	0x17
	.4byte	0x30
	.uleb128 0xe
	.4byte	0x9b7
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x139
	.byte	0x18
	.4byte	0x3e
	.uleb128 0xe
	.4byte	0x9c9
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xc
	.byte	0x85
	.byte	0xe
	.4byte	0x12e
	.uleb128 0xe
	.4byte	0x9db
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9e7
	.uleb128 0xe
	.4byte	0x9ec
	.uleb128 0x9
	.4byte	0x9f2
	.4byte	0xa02
	.uleb128 0x1e
	.byte	0
	.uleb128 0xe
	.4byte	0x9f7
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0xd
	.2byte	0x1cc
	.byte	0x1d
	.4byte	0xa02
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0xd
	.2byte	0x1cd
	.byte	0x1d
	.4byte	0xa02
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0xd
	.2byte	0x1ce
	.byte	0x1d
	.4byte	0xa02
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0xd
	.2byte	0x1cf
	.byte	0x1d
	.4byte	0xa02
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0xd
	.2byte	0x1d0
	.byte	0x1d
	.4byte	0xa02
	.uleb128 0x9
	.4byte	0x9d6
	.4byte	0xa58
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0xa48
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0xe
	.byte	0x56
	.byte	0x18
	.4byte	0xa58
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0x9
	.4byte	0x9c4
	.4byte	0xa82
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0xa72
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0xe
	.byte	0x57
	.byte	0x17
	.4byte	0xa82
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0xe
	.byte	0x58
	.byte	0x17
	.4byte	0xa82
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0x9
	.4byte	0x9c4
	.4byte	0xab9
	.uleb128 0xa
	.4byte	0x4c
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0xaa9
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0xe
	.byte	0x59
	.byte	0x17
	.4byte	0xab9
	.byte	0x2
	.byte	0x4
	.byte	0x8
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"_dso_handle"
.LASF2:
	.string	"short int"
.LASF40:
	.string	"_fnargs"
.LASF96:
	.string	"_rand48"
.LASF62:
	.string	"_emergency"
.LASF7:
	.string	"__uint8_t"
.LASF74:
	.string	"_atexit0"
.LASF116:
	.string	"_wcrtomb_state"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF54:
	.string	"_lbfsize"
.LASF145:
	.string	"__locale_t"
.LASF114:
	.string	"_mbrtowc_state"
.LASF109:
	.string	"_wctomb_state"
.LASF30:
	.string	"__tm_sec"
.LASF12:
	.string	"_off_t"
.LASF84:
	.string	"_close"
.LASF0:
	.string	"signed char"
.LASF85:
	.string	"_ubuf"
.LASF49:
	.string	"_base"
.LASF32:
	.string	"__tm_hour"
.LASF76:
	.string	"__sf"
.LASF39:
	.string	"_on_exit_args"
.LASF80:
	.string	"_cookie"
.LASF75:
	.string	"__sglue"
.LASF11:
	.string	"long int"
.LASF52:
	.string	"_flags"
.LASF43:
	.string	"_is_cxa"
.LASF58:
	.string	"_stdin"
.LASF131:
	.string	"OI_UINT16"
.LASF103:
	.string	"_result_k"
.LASF9:
	.string	"_lock_t"
.LASF5:
	.string	"long long int"
.LASF69:
	.string	"_cvtbuf"
.LASF88:
	.string	"_offset"
.LASF134:
	.string	"OI_CODEC_SBC_ModeText"
.LASF107:
	.string	"_strtok_last"
.LASF113:
	.string	"_mbrlen_state"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF46:
	.string	"_fns"
.LASF26:
	.string	"_sign"
.LASF20:
	.string	"_flock_t"
.LASF60:
	.string	"_stderr"
.LASF28:
	.string	"_Bigint"
.LASF87:
	.string	"_blksize"
.LASF81:
	.string	"_read"
.LASF29:
	.string	"__tm"
.LASF47:
	.string	"_on_exit_args_ptr"
.LASF16:
	.string	"__wchb"
.LASF136:
	.string	"OI_CODEC_SBC_BlocksText"
.LASF59:
	.string	"_stdout"
.LASF68:
	.string	"_cvtlen"
.LASF21:
	.string	"long unsigned int"
.LASF53:
	.string	"_file"
.LASF45:
	.string	"_ind"
.LASF55:
	.string	"_data"
.LASF94:
	.string	"_niobs"
.LASF100:
	.string	"_rand_next"
.LASF143:
	.string	"/home/dieter/Development/esp-idf/components/bt/host/bluedroid/external/sbc/decoder/srce/decoder-sbc.c"
.LASF72:
	.string	"_asctime_buf"
.LASF102:
	.string	"_result"
.LASF15:
	.string	"__wch"
.LASF14:
	.string	"wint_t"
.LASF89:
	.string	"_lock"
.LASF98:
	.string	"_mult"
.LASF82:
	.string	"_write"
.LASF35:
	.string	"__tm_year"
.LASF77:
	.string	"_misc"
.LASF137:
	.string	"OI_CODEC_SBC_AllocText"
.LASF118:
	.string	"__sf_fake_stdin"
.LASF119:
	.string	"__sf_fake_stdout"
.LASF34:
	.string	"__tm_mon"
.LASF44:
	.string	"_atexit"
.LASF122:
	.string	"suboptarg"
.LASF63:
	.string	"__sdidinit"
.LASF67:
	.string	"_gamma_signgam"
.LASF140:
	.string	"channel_values"
.LASF133:
	.string	"OI_CODEC_SBC_FreqText"
.LASF105:
	.string	"_freelist"
.LASF138:
	.string	"freq_values"
.LASF10:
	.string	"_LOCK_RECURSIVE_T"
.LASF127:
	.string	"bd_addr_null"
.LASF125:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF95:
	.string	"_iobs"
.LASF51:
	.string	"__sFILE_fake"
.LASF37:
	.string	"__tm_yday"
.LASF48:
	.string	"__sbuf"
.LASF91:
	.string	"_flags2"
.LASF92:
	.string	"__FILE"
.LASF19:
	.string	"_mbstate_t"
.LASF79:
	.string	"__sFILE"
.LASF90:
	.string	"_mbstate"
.LASF108:
	.string	"_mblen_state"
.LASF61:
	.string	"_inc"
.LASF144:
	.string	"/home/dieter/Development/ProjektEi/build/bt"
.LASF65:
	.string	"_locale"
.LASF66:
	.string	"__cleanup"
.LASF64:
	.string	"_unspecified_locale_info"
.LASF25:
	.string	"_maxwds"
.LASF56:
	.string	"_reent"
.LASF97:
	.string	"_seed"
.LASF141:
	.string	"band_values"
.LASF17:
	.string	"__count"
.LASF18:
	.string	"__value"
.LASF83:
	.string	"_seek"
.LASF123:
	.string	"exc_cause_table"
.LASF36:
	.string	"__tm_wday"
.LASF13:
	.string	"_fpos_t"
.LASF57:
	.string	"_errno"
.LASF22:
	.string	"char"
.LASF78:
	.string	"_signal_buf"
.LASF130:
	.string	"OI_UINT8"
.LASF50:
	.string	"_size"
.LASF4:
	.string	"unsigned int"
.LASF126:
	.string	"bd_addr_any"
.LASF101:
	.string	"_mprec"
.LASF24:
	.string	"_next"
.LASF142:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF128:
	.string	"btif_trace_level"
.LASF42:
	.string	"_fntypes"
.LASF106:
	.string	"_misc_reent"
.LASF3:
	.string	"short unsigned int"
.LASF99:
	.string	"_add"
.LASF139:
	.string	"block_values"
.LASF23:
	.string	"__ULong"
.LASF112:
	.string	"_getdate_err"
.LASF121:
	.string	"_global_impure_ptr"
.LASF132:
	.string	"OI_CHAR"
.LASF135:
	.string	"OI_CODEC_SBC_SubbandsText"
.LASF129:
	.string	"appl_trace_level"
.LASF27:
	.string	"_wds"
.LASF93:
	.string	"_glue"
.LASF124:
	.string	"UINT8"
.LASF8:
	.string	"uint8_t"
.LASF111:
	.string	"_l64a_buf"
.LASF73:
	.string	"_sig_func"
.LASF86:
	.string	"_nbuf"
.LASF38:
	.string	"__tm_isdst"
.LASF71:
	.string	"_localtime_buf"
.LASF31:
	.string	"__tm_min"
.LASF120:
	.string	"__sf_fake_stderr"
.LASF70:
	.string	"_r48"
.LASF110:
	.string	"_mbtowc_state"
.LASF104:
	.string	"_p5s"
.LASF33:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
