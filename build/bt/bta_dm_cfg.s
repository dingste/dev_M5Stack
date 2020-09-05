	.file	"bta_dm_cfg.c"
	.text
.Ltext0:
	.global	p_bta_dm_eir_cfg
	.section	.data.p_bta_dm_eir_cfg,"aw",@progbits
	.align	4
	.type	p_bta_dm_eir_cfg, @object
	.size	p_bta_dm_eir_cfg, 4
p_bta_dm_eir_cfg:
	.word	bta_dm_eir_cfg
	.global	bta_dm_eir_cfg
	.section	.rodata.bta_dm_eir_cfg,"a",@progbits
	.align	4
	.type	bta_dm_eir_cfg, @object
	.size	bta_dm_eir_cfg, 40
bta_dm_eir_cfg:
	.byte	50
	.zero	3
	.word	-1
	.word	-1
	.word	0
	.byte	0
	.zero	3
	.word	0
	.byte	0
	.zero	3
	.word	0
	.byte	0
	.zero	3
	.word	0
	.global	p_bta_dm_pm_md
	.section	.data.p_bta_dm_pm_md,"aw",@progbits
	.align	4
	.type	p_bta_dm_pm_md, @object
	.size	p_bta_dm_pm_md, 4
p_bta_dm_pm_md:
	.word	bta_dm_pm_md
	.global	p_bta_dm_pm_spec
	.section	.data.p_bta_dm_pm_spec,"aw",@progbits
	.align	4
	.type	p_bta_dm_pm_spec, @object
	.size	p_bta_dm_pm_spec, 4
p_bta_dm_pm_spec:
	.word	bta_dm_pm_spec
	.global	p_bta_dm_pm_cfg
	.section	.data.p_bta_dm_pm_cfg,"aw",@progbits
	.align	4
	.type	p_bta_dm_pm_cfg, @object
	.size	p_bta_dm_pm_cfg, 4
p_bta_dm_pm_cfg:
	.word	bta_dm_pm_cfg
	.global	bta_dm_pm_md
	.section	.rodata.bta_dm_pm_md,"a",@progbits
	.align	2
	.type	bta_dm_pm_md, @object
	.size	bta_dm_pm_md, 70
bta_dm_pm_md:
	.short	800
	.short	400
	.short	4
	.short	1
	.byte	2
	.zero	1
	.short	400
	.short	200
	.short	4
	.short	1
	.byte	2
	.zero	1
	.short	180
	.short	150
	.short	4
	.short	1
	.byte	2
	.zero	1
	.short	150
	.short	50
	.short	4
	.short	1
	.byte	2
	.zero	1
	.short	54
	.short	30
	.short	4
	.short	1
	.byte	2
	.zero	1
	.short	36
	.short	30
	.short	2
	.short	0
	.byte	2
	.zero	1
	.short	800
	.short	400
	.short	0
	.short	0
	.byte	3
	.zero	1
	.global	bta_dm_pm_spec
	.section	.rodata.bta_dm_pm_spec,"a",@progbits
	.align	2
	.type	bta_dm_pm_spec, @object
	.size	bta_dm_pm_spec, 592
bta_dm_pm_spec:
	.byte	48
	.zero	1
	.byte	32
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	35
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	-128
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.byte	32
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.byte	32
	.zero	1
	.short	5197
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.short	5197
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.byte	32
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	48
	.zero	1
	.byte	32
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	-128
	.zero	1
	.short	7197
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.byte	32
	.zero	1
	.short	3197
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	36
	.zero	1
	.short	3197
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	48
	.zero	1
	.byte	32
	.zero	1
	.short	10197
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	32
	.zero	1
	.short	10197
	.byte	0
	.zero	1
	.short	0
	.byte	64
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	-128
	.zero	1
	.short	5197
	.byte	0
	.zero	1
	.short	0
	.byte	48
	.zero	1
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	1
	.zero	1
	.short	0
	.byte	0
	.zero	1
	.short	0
	.byte	-128
	.zero	1
	.short	5197
	.byte	0
	.zero	1
	.short	0
	.global	bta_dm_pm_cfg
	.section	.rodata.bta_dm_pm_cfg,"a",@progbits
	.type	bta_dm_pm_cfg, @object
	.size	bta_dm_pm_cfg, 27
bta_dm_pm_cfg:
	.byte	0
	.byte	8
	.byte	0
	.byte	5
	.byte	-1
	.byte	0
	.byte	18
	.byte	-1
	.byte	1
	.byte	26
	.byte	1
	.byte	2
	.byte	26
	.byte	-1
	.byte	3
	.byte	27
	.byte	-1
	.byte	4
	.byte	19
	.byte	-1
	.byte	5
	.byte	31
	.byte	-1
	.byte	6
	.byte	32
	.byte	-1
	.byte	7
	.global	p_bta_dm_rm_cfg
	.section	.data.p_bta_dm_rm_cfg,"aw",@progbits
	.align	4
	.type	p_bta_dm_rm_cfg, @object
	.size	p_bta_dm_rm_cfg, 4
p_bta_dm_rm_cfg:
	.word	bta_dm_rm_cfg
	.global	p_bta_dm_cfg
	.section	.data.p_bta_dm_cfg,"aw",@progbits
	.align	4
	.type	p_bta_dm_cfg, @object
	.size	p_bta_dm_cfg, 4
p_bta_dm_cfg:
	.word	bta_dm_cfg
	.global	bta_dm_rm_cfg
	.section	.rodata.bta_dm_rm_cfg,"a",@progbits
	.type	bta_dm_rm_cfg, @object
	.size	bta_dm_rm_cfg, 21
bta_dm_rm_cfg:
	.byte	0
	.byte	6
	.byte	1
	.byte	14
	.byte	1
	.byte	0
	.byte	14
	.byte	2
	.byte	0
	.byte	14
	.byte	-2
	.byte	2
	.byte	14
	.byte	0
	.byte	3
	.byte	23
	.byte	-1
	.byte	1
	.byte	18
	.byte	-1
	.byte	1
	.global	bta_dm_cfg
	.section	.rodata.bta_dm_cfg,"a",@progbits
	.align	2
	.type	bta_dm_cfg, @object
	.size	bta_dm_cfg, 12
bta_dm_cfg:
	.byte	0
	.byte	31
	.byte	0
	.zero	1
	.short	15
	.short	8192
	.short	8000
	.byte	1
	.zero	1
	.comm	deinit_semaphore,4,4
	.text
.Letext0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/include/bta_dm_int.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/bta_dm_cfg.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6e5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xc
	.4byte	.LASF137
	.4byte	.LASF138
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x1
	.byte	0x11
	.4byte	0x3d
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x1
	.byte	0x12
	.4byte	0x4f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x1
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x1
	.byte	0x1a
	.4byte	0x24
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x14
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x15
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x21
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2d
	.4byte	0x68
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1a
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x1b
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x1c
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x3
	.byte	0x1f
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x22
	.4byte	0x102
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x6
	.4byte	0xcb
	.4byte	0x119
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcb
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x147
	.4byte	0x12b
	.uleb128 0x6
	.4byte	0xcb
	.4byte	0x13b
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x24
	.byte	0x4
	.2byte	0x1c2
	.4byte	0x263
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x21
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x22
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x23
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x25
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x26
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x27
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x29
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x2a
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x2b
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x2d
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x2e
	.byte	0
	.uleb128 0x6
	.4byte	0xe1
	.4byte	0x273
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x24
	.byte	0x4
	.2byte	0x6ec
	.4byte	0x2ab
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x24
	.byte	0x4
	.2byte	0x6f8
	.4byte	0x2d7
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x6ff
	.4byte	0xcb
	.uleb128 0xc
	.byte	0xa
	.byte	0x4
	.2byte	0x70b
	.4byte	0x32e
	.uleb128 0xd
	.string	"max"
	.byte	0x4
	.2byte	0x70c
	.4byte	0xd6
	.byte	0
	.uleb128 0xd
	.string	"min"
	.byte	0x4
	.2byte	0x70d
	.4byte	0xd6
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x70e
	.4byte	0xd6
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x70f
	.4byte	0xd6
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x710
	.4byte	0x2d7
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x711
	.4byte	0x2e3
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x5
	.byte	0x58
	.4byte	0xad
	.uleb128 0xa
	.byte	0x4
	.4byte	0x24
	.byte	0x6
	.2byte	0x101
	.4byte	0x365
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x28
	.byte	0x6
	.2byte	0x12a
	.4byte	0x3e4
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12b
	.4byte	0xcb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x130
	.4byte	0x263
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x132
	.4byte	0x3e4
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x133
	.4byte	0xcb
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x134
	.4byte	0x119
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x135
	.4byte	0xcb
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x136
	.4byte	0x119
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x137
	.4byte	0xcb
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x138
	.4byte	0x119
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xec
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x139
	.4byte	0x365
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x4b9
	.4byte	0xcb
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x7
	.byte	0x4f
	.4byte	0x33a
	.uleb128 0xc
	.byte	0xc
	.byte	0x8
	.2byte	0x45d
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x45e
	.4byte	0x11f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x45f
	.4byte	0xd6
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x460
	.4byte	0xd6
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x461
	.4byte	0xd6
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x462
	.4byte	0xf7
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x464
	.4byte	0x40d
	.uleb128 0xc
	.byte	0x3
	.byte	0x8
	.2byte	0x469
	.4byte	0x494
	.uleb128 0xd
	.string	"id"
	.byte	0x8
	.2byte	0x46a
	.4byte	0xcb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x46b
	.4byte	0xcb
	.byte	0x1
	.uleb128 0xd
	.string	"cfg"
	.byte	0x8
	.2byte	0x46c
	.4byte	0xcb
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x46e
	.4byte	0x464
	.uleb128 0xc
	.byte	0x3
	.byte	0x8
	.2byte	0x473
	.4byte	0x4d0
	.uleb128 0xd
	.string	"id"
	.byte	0x8
	.2byte	0x475
	.4byte	0xcb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x476
	.4byte	0xcb
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x477
	.4byte	0xcb
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x479
	.4byte	0x4a0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.2byte	0x47c
	.4byte	0x500
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x47e
	.4byte	0x3f6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x47f
	.4byte	0xd6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x481
	.4byte	0x4dc
	.uleb128 0xc
	.byte	0x4a
	.byte	0x8
	.2byte	0x483
	.4byte	0x530
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x485
	.4byte	0xcb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x489
	.4byte	0x530
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0x500
	.4byte	0x546
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x8
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x48b
	.4byte	0x50c
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0x3
	.2byte	0x2b8
	.4byte	0x565
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x10
	.4byte	0x109
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x3
	.2byte	0x2b9
	.4byte	0x57d
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x109
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x9
	.byte	0x72
	.4byte	0x593
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_dm_cfg
	.uleb128 0x8
	.byte	0x4
	.4byte	0x458
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x9
	.byte	0x74
	.4byte	0x5aa
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_dm_rm_cfg
	.uleb128 0x8
	.byte	0x4
	.4byte	0x494
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x17c
	.4byte	0x5c2
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_dm_pm_cfg
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4d0
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x17d
	.4byte	0x5da
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_dm_pm_spec
	.uleb128 0x8
	.byte	0x4
	.4byte	0x546
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x17e
	.4byte	0x5f2
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_dm_pm_md
	.uleb128 0x8
	.byte	0x4
	.4byte	0x32e
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x19e
	.4byte	0x60a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_dm_eir_cfg
	.uleb128 0x10
	.4byte	0x3ea
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x1b4
	.4byte	0x621
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_dm_eir_cfg
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3ea
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x4bc
	.4byte	0x402
	.uleb128 0x5
	.byte	0x3
	.4byte	deinit_semaphore
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0x9
	.byte	0x3c
	.4byte	0x64a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_dm_cfg
	.uleb128 0x10
	.4byte	0x458
	.uleb128 0x6
	.4byte	0x494
	.4byte	0x65f
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x9
	.byte	0x67
	.4byte	0x670
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_dm_rm_cfg
	.uleb128 0x10
	.4byte	0x64f
	.uleb128 0x6
	.4byte	0x4d0
	.4byte	0x685
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x9
	.byte	0x80
	.4byte	0x696
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_dm_pm_cfg
	.uleb128 0x10
	.4byte	0x675
	.uleb128 0x6
	.4byte	0x546
	.4byte	0x6ab
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x9
	.byte	0x8f
	.4byte	0x6bc
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_dm_pm_spec
	.uleb128 0x10
	.4byte	0x69b
	.uleb128 0x6
	.4byte	0x32e
	.4byte	0x6d1
	.uleb128 0x7
	.4byte	0xb6
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x149
	.4byte	0x6e3
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_dm_pm_md
	.uleb128 0x10
	.4byte	0x6c1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
.LASF27:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF137:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/bta_dm_cfg.c"
.LASF110:
	.string	"avoid_scatter"
.LASF83:
	.string	"BTM_PM_MD_PARK"
.LASF98:
	.string	"bta_dm_eir_flags"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF4:
	.string	"__uint8_t"
.LASF120:
	.string	"tBTA_DM_PM_SPEC"
.LASF89:
	.string	"tBTM_PM_PWR_MD"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF125:
	.string	"p_bta_dm_pm_cfg"
.LASF97:
	.string	"bta_dm_eir_flag_len"
.LASF90:
	.string	"QueueHandle_t"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF114:
	.string	"spec_idx"
.LASF115:
	.string	"tBTA_DM_PM_CFG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF131:
	.string	"bta_dm_cfg"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF10:
	.string	"long long unsigned int"
.LASF3:
	.string	"__int8_t"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF28:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF15:
	.string	"long int"
.LASF124:
	.string	"p_bta_dm_rm_cfg"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF13:
	.string	"uint16_t"
.LASF102:
	.string	"bta_dm_eir_additional"
.LASF94:
	.string	"bta_dm_eir_min_name_len"
.LASF74:
	.string	"BTM_PM_STS_HOLD"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF20:
	.string	"UINT16"
.LASF118:
	.string	"allow_mask"
.LASF77:
	.string	"BTM_PM_STS_SSR"
.LASF127:
	.string	"p_bta_dm_pm_md"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF99:
	.string	"bta_dm_eir_manufac_spec_len"
.LASF92:
	.string	"BTA_DM_PARTIAL_SCATTERNET"
.LASF72:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF122:
	.string	"bd_addr_null"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF29:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF17:
	.string	"long unsigned int"
.LASF136:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF104:
	.string	"tBTA_DM_PM_ACTION"
.LASF73:
	.string	"BTM_PM_STS_ACTIVE"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF111:
	.string	"tBTA_DM_CFG"
.LASF25:
	.string	"DEV_CLASS"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF135:
	.string	"bta_dm_pm_md"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF117:
	.string	"tBTA_DM_PM_ACTN"
.LASF82:
	.string	"BTM_PM_MD_SNIFF"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF95:
	.string	"uuid_mask"
.LASF132:
	.string	"bta_dm_rm_cfg"
.LASF79:
	.string	"BTM_PM_STS_ERROR"
.LASF22:
	.string	"INT8"
.LASF16:
	.string	"sizetype"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF96:
	.string	"bta_dm_eir_inq_tx_power"
.LASF21:
	.string	"UINT32"
.LASF128:
	.string	"bta_dm_eir_cfg"
.LASF134:
	.string	"bta_dm_pm_spec"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF130:
	.string	"deinit_semaphore"
.LASF87:
	.string	"timeout"
.LASF116:
	.string	"power_mode"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF34:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF101:
	.string	"bta_dm_eir_additional_len"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF100:
	.string	"bta_dm_eir_manufac_spec"
.LASF91:
	.string	"BTA_DM_NO_SCATTERNET"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF108:
	.string	"page_timeout"
.LASF138:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF85:
	.string	"tBTM_PM_MODE"
.LASF24:
	.string	"_Bool"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF5:
	.string	"unsigned char"
.LASF93:
	.string	"BTA_DM_FULL_SCATTERNET"
.LASF30:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF6:
	.string	"short int"
.LASF80:
	.string	"BTM_PM_MD_ACTIVE"
.LASF84:
	.string	"BTM_PM_MD_FORCE"
.LASF75:
	.string	"BTM_PM_STS_SNIFF"
.LASF23:
	.string	"BOOLEAN"
.LASF76:
	.string	"BTM_PM_STS_PARK"
.LASF129:
	.string	"p_bta_dm_eir_cfg"
.LASF113:
	.string	"tBTA_DM_RM"
.LASF86:
	.string	"attempt"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF112:
	.string	"app_id"
.LASF31:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"uint32_t"
.LASF18:
	.string	"char"
.LASF105:
	.string	"SemaphoreHandle_t"
.LASF88:
	.string	"mode"
.LASF7:
	.string	"__uint16_t"
.LASF109:
	.string	"link_timeout"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF107:
	.string	"policy_settings"
.LASF8:
	.string	"__uint32_t"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF126:
	.string	"p_bta_dm_pm_spec"
.LASF1:
	.string	"short unsigned int"
.LASF11:
	.string	"int8_t"
.LASF33:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF123:
	.string	"p_bta_dm_cfg"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF103:
	.string	"tBTA_DM_EIR_CONF"
.LASF106:
	.string	"dev_class"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF19:
	.string	"UINT8"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF12:
	.string	"uint8_t"
.LASF121:
	.string	"bd_addr_any"
.LASF78:
	.string	"BTM_PM_STS_PENDING"
.LASF81:
	.string	"BTM_PM_MD_HOLD"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF26:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF133:
	.string	"bta_dm_pm_cfg"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF119:
	.string	"actn_tbl"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
