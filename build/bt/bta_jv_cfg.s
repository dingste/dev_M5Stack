	.file	"bta_jv_cfg.c"
	.text
.Ltext0:
	.global	p_bta_jv_cfg
	.section	.data.p_bta_jv_cfg,"aw",@progbits
	.align	4
	.type	p_bta_jv_cfg, @object
	.size	p_bta_jv_cfg, 4
p_bta_jv_cfg:
	.word	bta_jv_cfg
	.global	bta_jv_cfg
	.section	.rodata.bta_jv_cfg,"a",@progbits
	.align	4
	.type	bta_jv_cfg, @object
	.size	bta_jv_cfg, 12
bta_jv_cfg:
	.short	1800
	.short	4500
	.word	bta_jv_sdp_raw_data
	.word	bta_jv_sdp_db_data
	.section	.bss.bta_jv_sdp_db_data,"aw",@nobits
	.align	4
	.type	bta_jv_sdp_db_data, @object
	.size	bta_jv_sdp_db_data, 4500
bta_jv_sdp_db_data:
	.zero	4500
	.section	.bss.bta_jv_sdp_raw_data,"aw",@nobits
	.type	bta_jv_sdp_raw_data, @object
	.size	bta_jv_sdp_raw_data, 1800
bta_jv_sdp_raw_data:
	.zero	1800
	.text
.Letext0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/sdp_api.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_jv_api.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/jv/bta_jv_cfg.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x585
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0xc
	.4byte	.LASF119
	.4byte	.LASF120
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x1
	.byte	0x12
	.4byte	0x44
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x1
	.byte	0x1a
	.4byte	0x24
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x15
	.4byte	0x39
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x21
	.4byte	0x52
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x2d
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x22
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x23
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x132
	.4byte	0xe7
	.uleb128 0x6
	.4byte	0xb3
	.4byte	0xf7
	.uleb128 0x7
	.4byte	0x7d
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x6
	.4byte	0xb3
	.4byte	0x10d
	.uleb128 0x7
	.4byte	0x7d
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x3
	.2byte	0x1ab
	.4byte	0x13b
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x1ac
	.4byte	0xbe
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x1ad
	.4byte	0xc9
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x1ae
	.4byte	0xfd
	.byte	0
	.uleb128 0xb
	.byte	0x14
	.byte	0x3
	.2byte	0x1a4
	.4byte	0x15e
	.uleb128 0xc
	.string	"len"
	.byte	0x3
	.2byte	0x1a9
	.4byte	0xbe
	.byte	0
	.uleb128 0xc
	.string	"uu"
	.byte	0x3
	.2byte	0x1af
	.4byte	0x10d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x1b1
	.4byte	0x13b
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x5f
	.4byte	0x1a9
	.uleb128 0xe
	.string	"u8"
	.byte	0x4
	.byte	0x60
	.4byte	0xb3
	.uleb128 0xe
	.string	"u16"
	.byte	0x4
	.byte	0x61
	.4byte	0xbe
	.uleb128 0xe
	.string	"u32"
	.byte	0x4
	.byte	0x62
	.4byte	0xc9
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x63
	.4byte	0x1a9
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x64
	.4byte	0x1f6
	.byte	0
	.uleb128 0x6
	.4byte	0xb3
	.4byte	0x1b9
	.uleb128 0x7
	.4byte	0x7d
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0xc
	.byte	0x4
	.byte	0x69
	.4byte	0x1f6
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x4
	.byte	0x6a
	.4byte	0x1f6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x4
	.byte	0x6b
	.4byte	0xbe
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x4
	.byte	0x6c
	.4byte	0xbe
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x4
	.byte	0x6d
	.4byte	0x20f
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x5e
	.4byte	0x20f
	.uleb128 0x13
	.string	"v"
	.byte	0x4
	.byte	0x65
	.4byte	0x16a
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x4
	.byte	0x67
	.4byte	0x1fc
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x4
	.byte	0x6e
	.4byte	0x1b9
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x14
	.byte	0x4
	.byte	0x70
	.4byte	0x262
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x4
	.byte	0x71
	.4byte	0x262
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x4
	.byte	0x72
	.4byte	0x268
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x4
	.byte	0x73
	.4byte	0xc9
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x4
	.byte	0x74
	.4byte	0xdb
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x21a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x225
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x4
	.byte	0x75
	.4byte	0x225
	.uleb128 0x12
	.byte	0x7c
	.byte	0x4
	.byte	0x77
	.4byte	0x306
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x4
	.byte	0x78
	.4byte	0xc9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x4
	.byte	0x79
	.4byte	0xc9
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x4
	.byte	0x7a
	.4byte	0x306
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7b
	.4byte	0xbe
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7c
	.4byte	0x30c
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7d
	.4byte	0xbe
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x4
	.byte	0x7e
	.4byte	0x31c
	.byte	0x4e
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x4
	.byte	0x7f
	.4byte	0xf7
	.byte	0x6c
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x4
	.byte	0x81
	.4byte	0xf7
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x4
	.byte	0x82
	.4byte	0xc9
	.byte	0x74
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x4
	.byte	0x83
	.4byte	0xc9
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x26e
	.uleb128 0x6
	.4byte	0x15e
	.4byte	0x31c
	.uleb128 0x7
	.4byte	0x7d
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xbe
	.4byte	0x32c
	.uleb128 0x7
	.4byte	0x7d
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x4
	.byte	0x85
	.4byte	0x279
	.uleb128 0x14
	.byte	0x4
	.4byte	0x24
	.byte	0x5
	.2byte	0x1c2
	.4byte	0x45f
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1b
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x1d
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1e
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1f
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x22
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x23
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x25
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x27
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x2a
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x2b
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x2d
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x2e
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x24
	.byte	0x5
	.2byte	0x6ec
	.4byte	0x497
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.byte	0xc
	.byte	0x6
	.2byte	0x190
	.4byte	0x4d5
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x191
	.4byte	0xbe
	.byte	0
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x192
	.4byte	0xbe
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x193
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x194
	.4byte	0x4d5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x32c
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x195
	.4byte	0x497
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x3
	.2byte	0x2cc
	.4byte	0x4fa
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x18
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x2cd
	.4byte	0x512
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xe7
	.uleb128 0x6
	.4byte	0xb3
	.4byte	0x528
	.uleb128 0x19
	.4byte	0x7d
	.2byte	0x707
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x7
	.byte	0x2e
	.4byte	0x517
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_jv_sdp_raw_data
	.uleb128 0x6
	.4byte	0xb3
	.4byte	0x54a
	.uleb128 0x19
	.4byte	0x7d
	.2byte	0x1193
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0x7
	.byte	0x2f
	.4byte	0x539
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_jv_sdp_db_data
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x7
	.byte	0x32
	.4byte	0x56c
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_jv_cfg
	.uleb128 0x18
	.4byte	0x4db
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x7
	.byte	0x39
	.4byte	0x582
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_jv_cfg
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4db
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF119:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/jv/bta_jv_cfg.c"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF5:
	.string	"__uint8_t"
.LASF116:
	.string	"bta_jv_cfg"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF43:
	.string	"p_first_rec"
.LASF30:
	.string	"attr_len_type"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF10:
	.string	"long int"
.LASF25:
	.string	"tBT_UUID"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF15:
	.string	"uint16_t"
.LASF28:
	.string	"p_next_attr"
.LASF101:
	.string	"BTM_PM_STS_HOLD"
.LASF23:
	.string	"uuid32"
.LASF48:
	.string	"p_free_mem"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF50:
	.string	"raw_size"
.LASF107:
	.string	"sdp_raw_size"
.LASF18:
	.string	"UINT16"
.LASF37:
	.string	"p_next_rec"
.LASF104:
	.string	"BTM_PM_STS_SSR"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF21:
	.string	"BD_ADDR"
.LASF40:
	.string	"tSDP_DISC_REC"
.LASF99:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF113:
	.string	"bd_addr_null"
.LASF26:
	.string	"array"
.LASF0:
	.string	"unsigned int"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF39:
	.string	"remote_bd_addr"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF12:
	.string	"long unsigned int"
.LASF118:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF100:
	.string	"BTM_PM_STS_ACTIVE"
.LASF111:
	.string	"tBTA_JV_CFG"
.LASF1:
	.string	"short unsigned int"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF38:
	.string	"time_read"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF45:
	.string	"uuid_filters"
.LASF24:
	.string	"uuid128"
.LASF110:
	.string	"p_sdp_db"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF109:
	.string	"p_sdp_raw_data"
.LASF51:
	.string	"raw_used"
.LASF22:
	.string	"uuid16"
.LASF106:
	.string	"BTM_PM_STS_ERROR"
.LASF11:
	.string	"sizetype"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF36:
	.string	"p_first_attr"
.LASF19:
	.string	"UINT32"
.LASF114:
	.string	"bta_jv_sdp_raw_data"
.LASF105:
	.string	"BTM_PM_STS_PENDING"
.LASF32:
	.string	"tSDP_DISC_ATVAL"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF49:
	.string	"raw_data"
.LASF108:
	.string	"sdp_db_size"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF44:
	.string	"num_uuid_filters"
.LASF120:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF20:
	.string	"_Bool"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF3:
	.string	"unsigned char"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF4:
	.string	"short int"
.LASF102:
	.string	"BTM_PM_STS_SNIFF"
.LASF47:
	.string	"attr_filters"
.LASF103:
	.string	"BTM_PM_STS_PARK"
.LASF41:
	.string	"mem_size"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF27:
	.string	"p_sub_attr"
.LASF52:
	.string	"tSDP_DISCOVERY_DB"
.LASF16:
	.string	"uint32_t"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF42:
	.string	"mem_free"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF13:
	.string	"char"
.LASF6:
	.string	"__uint16_t"
.LASF29:
	.string	"attr_id"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF34:
	.string	"t_sdp_disc_attr"
.LASF14:
	.string	"uint8_t"
.LASF7:
	.string	"__uint32_t"
.LASF115:
	.string	"bta_jv_sdp_db_data"
.LASF33:
	.string	"tSDP_DISC_ATTR"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF35:
	.string	"t_sdp_disc_rec"
.LASF117:
	.string	"p_bta_jv_cfg"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF17:
	.string	"UINT8"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF31:
	.string	"attr_value"
.LASF112:
	.string	"bd_addr_any"
.LASF46:
	.string	"num_attr_filters"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
