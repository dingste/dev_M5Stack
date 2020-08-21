	.file	"esp_bt_device.c"
	.text
.Ltext0:
	.section	.text.esp_bt_dev_get_address,"ax",@progbits
	.align	4
	.global	esp_bt_dev_get_address
	.type	esp_bt_dev_get_address, @function
esp_bt_dev_get_address:
.LFB30:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/esp_bt_device.c"
	.loc 1 24 0
	entry	sp, 32
.LCFI0:
	.loc 1 25 0
	call8	esp_bluedroid_get_status
.LVL0:
	.loc 1 26 0
	movi.n	a2, 0
	.loc 1 25 0
	bnei	a10, 2, .L2
	.loc 1 28 0
	call8	controller_get_interface
.LVL1:
	l32i.n	a10, a10, 12
	callx8	a10
.LVL2:
	mov.n	a2, a10
.L2:
	.loc 1 29 0
	retw.n
.LFE30:
	.size	esp_bt_dev_get_address, .-esp_bt_dev_get_address
	.section	.text.esp_bt_dev_set_device_name,"ax",@progbits
	.align	4
	.global	esp_bt_dev_set_device_name
	.type	esp_bt_dev_set_device_name, @function
esp_bt_dev_set_device_name:
.LFB31:
	.loc 1 32 0
.LVL3:
	entry	sp, 80
.LCFI1:
	.loc 1 36 0
	call8	esp_bluedroid_get_status
.LVL4:
	.loc 1 32 0
	mov.n	a3, a2
	.loc 1 37 0
	movi	a2, 0x103
.LVL5:
	.loc 1 36 0
	bnei	a10, 2, .L5
	.loc 1 40 0
	movi	a2, 0x102
	.loc 1 39 0
	beqz.n	a3, .L5
	.loc 1 42 0
	mov.n	a10, a3
	call8	strlen
.LVL6:
	movi.n	a8, 0x20
	bltu	a8, a10, .L5
	.loc 1 46 0
	movi.n	a2, 0
	.loc 1 47 0
	movi.n	a8, 1
	.loc 1 49 0
	mov.n	a11, a3
	mov.n	a10, sp
	.loc 1 46 0
	s8i	a2, sp, 36
	.loc 1 47 0
	s8i	a8, sp, 38
	.loc 1 48 0
	s8i	a2, sp, 39
	.loc 1 49 0
	call8	strcpy
.LVL7:
	.loc 1 51 0
	movi.n	a13, 0
	movi.n	a12, 0x21
	mov.n	a11, sp
	addi	a10, sp, 36
	call8	btc_transfer_context
.LVL8:
	.loc 1 51 0
	movi.n	a2, 0
	movi.n	a3, 1
.LVL9:
	movnez	a2, a3, a10
	neg	a2, a2
.L5:
	.loc 1 52 0
	retw.n
.LFE31:
	.size	esp_bt_dev_set_device_name, .-esp_bt_dev_set_device_name
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_dev.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/controller.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3f3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.LASF76
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x1b
	.4byte	0xdc
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x21
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0xfe
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x48
	.4byte	0x177
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17d
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0x8
	.byte	0x17
	.4byte	0x1cb
	.uleb128 0xd
	.string	"sig"
	.byte	0x8
	.byte	0x18
	.4byte	0x9c
	.byte	0
	.uleb128 0xd
	.string	"aid"
	.byte	0x8
	.byte	0x19
	.4byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.string	"pid"
	.byte	0x8
	.byte	0x1a
	.4byte	0x9c
	.byte	0x2
	.uleb128 0xd
	.string	"act"
	.byte	0x8
	.byte	0x1b
	.4byte	0x9c
	.byte	0x3
	.uleb128 0xd
	.string	"arg"
	.byte	0x8
	.byte	0x1c
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x8
	.byte	0x1d
	.4byte	0x182
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x24
	.4byte	0x1f5
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x2a
	.4byte	0x268
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x16
	.4byte	0x27b
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x21
	.byte	0x9
	.byte	0x1d
	.4byte	0x294
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x9
	.byte	0x1f
	.4byte	0x294
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x8a
	.4byte	0x2a4
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.byte	0x21
	.byte	0x9
	.byte	0x1b
	.4byte	0x2b8
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x9
	.byte	0x20
	.4byte	0x27b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x9
	.byte	0x21
	.4byte	0x2a4
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x17
	.4byte	0x177
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ef
	.uleb128 0x12
	.4byte	.LVL0
	.4byte	0x3bf
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x3ca
	.byte	0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1f
	.4byte	0xb2
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38f
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1f
	.4byte	0x91
	.4byte	.LLST0
	.uleb128 0x15
	.string	"msg"
	.byte	0x1
	.byte	0x21
	.4byte	0x1cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.byte	0x22
	.4byte	0x2b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	.LVL4
	.4byte	0x3bf
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0x3d5
	.4byte	0x351
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x3e0
	.4byte	0x36c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x3eb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x3a2
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x7
	.4byte	0xee
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x3ba
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xee
	.uleb128 0x1a
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x27
	.uleb128 0x1a
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xa
	.byte	0x59
	.uleb128 0x1a
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xb
	.byte	0x21
	.uleb128 0x1a
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xb
	.byte	0x1e
	.uleb128 0x1a
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0x4c
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE31
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"bd_addr_null"
.LASF26:
	.string	"BT_STATUS_DONE"
.LASF32:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF34:
	.string	"BT_STATUS_PENDING"
.LASF4:
	.string	"short int"
.LASF66:
	.string	"esp_bt_dev_set_device_name"
.LASF10:
	.string	"sizetype"
.LASF71:
	.string	"strlen"
.LASF38:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF25:
	.string	"BT_STATUS_BUSY"
.LASF54:
	.string	"BTC_PID_GAP_BT"
.LASF28:
	.string	"BT_STATUS_PARM_INVALID"
.LASF36:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF61:
	.string	"btc_msg"
.LASF13:
	.string	"uint8_t"
.LASF46:
	.string	"BTC_PID_GATTC"
.LASF40:
	.string	"BTC_SIG_API_CALL"
.LASF57:
	.string	"BTC_PID_AVRC"
.LASF44:
	.string	"BTC_PID_DEV"
.LASF50:
	.string	"BTC_PID_SPPLIKE"
.LASF18:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF55:
	.string	"BTC_PID_PRF_QUE"
.LASF29:
	.string	"BT_STATUS_UNHANDLED"
.LASF45:
	.string	"BTC_PID_GATTS"
.LASF31:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF35:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF7:
	.string	"long long int"
.LASF63:
	.string	"device_name"
.LASF9:
	.string	"long int"
.LASF64:
	.string	"btc_dev_args_t"
.LASF19:
	.string	"UINT8"
.LASF5:
	.string	"__uint8_t"
.LASF30:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF27:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF69:
	.string	"esp_bluedroid_get_status"
.LASF23:
	.string	"BT_STATUS_NOT_READY"
.LASF3:
	.string	"unsigned char"
.LASF43:
	.string	"BTC_PID_MAIN_INIT"
.LASF73:
	.string	"btc_transfer_context"
.LASF58:
	.string	"BTC_PID_SPP"
.LASF51:
	.string	"BTC_PID_BLUFI"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF70:
	.string	"controller_get_interface"
.LASF42:
	.string	"BTC_SIG_NUM"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"BTC_SIG_API_CB"
.LASF76:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF12:
	.string	"char"
.LASF60:
	.string	"BTC_DEV_ACT_SET_DEVICE_NAME"
.LASF14:
	.string	"int32_t"
.LASF17:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF72:
	.string	"strcpy"
.LASF20:
	.string	"_Bool"
.LASF53:
	.string	"BTC_PID_ALARM"
.LASF49:
	.string	"BTC_PID_BLE_HID"
.LASF65:
	.string	"esp_bt_dev_get_address"
.LASF56:
	.string	"BTC_PID_A2DP"
.LASF11:
	.string	"long unsigned int"
.LASF77:
	.string	"set_dev_name"
.LASF33:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF24:
	.string	"BT_STATUS_NOMEM"
.LASF6:
	.string	"__int32_t"
.LASF22:
	.string	"BT_STATUS_FAIL"
.LASF21:
	.string	"BT_STATUS_SUCCESS"
.LASF78:
	.string	"name"
.LASF48:
	.string	"BTC_PID_GAP_BLE"
.LASF67:
	.string	"bd_addr_any"
.LASF37:
	.string	"BT_STATUS_TIMEOUT"
.LASF75:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/esp_bt_device.c"
.LASF59:
	.string	"BTC_PID_NUM"
.LASF47:
	.string	"BTC_PID_GATT_COMMON"
.LASF52:
	.string	"BTC_PID_DM_SEC"
.LASF74:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF62:
	.string	"set_bt_dev_name_args"
.LASF15:
	.string	"esp_err_t"
.LASF39:
	.string	"btc_msg_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
