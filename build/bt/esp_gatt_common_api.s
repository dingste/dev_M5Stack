	.file	"esp_gatt_common_api.c"
	.text
.Ltext0:
	.section	.text.esp_ble_gatt_set_local_mtu,"ax",@progbits
	.align	4
	.global	esp_ble_gatt_set_local_mtu
	.type	esp_ble_gatt_set_local_mtu, @function
esp_ble_gatt_set_local_mtu:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/esp_gatt_common_api.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 37 0
	call8	esp_bluedroid_get_status
.LVL1:
	.loc 1 33 0
	extui	a3, a2, 0, 16
	.loc 1 37 0
	movi	a2, 0x103
.LVL2:
	bnei	a10, 2, .L2
	.loc 1 39 0
	addi	a8, a3, -23
	extui	a8, a8, 0, 16
	movi	a9, 0x1ee
	.loc 1 40 0
	movi	a2, 0x104
	.loc 1 39 0
	bltu	a9, a8, .L2
	.loc 1 43 0
	movi.n	a2, 0
	.loc 1 44 0
	movi.n	a8, 4
	.loc 1 48 0
	mov.n	a12, a10
	movi.n	a13, 0
	addi.n	a11, sp, 8
	mov.n	a10, sp
	.loc 1 43 0
	s8i	a2, sp, 0
	.loc 1 45 0
	s8i	a2, sp, 3
	.loc 1 46 0
	s16i	a3, sp, 8
	.loc 1 44 0
	s8i	a8, sp, 2
	.loc 1 48 0
	movi.n	a2, 0
	.loc 1 48 0
	call8	btc_transfer_context
.LVL3:
	.loc 1 48 0
	movi.n	a3, 1
.LVL4:
	movnez	a2, a3, a10
	neg	a2, a2
.L2:
	.loc 1 49 0
	retw.n
.LFE39:
	.size	esp_ble_gatt_set_local_mtu, .-esp_ble_gatt_set_local_mtu
	.section	.text.esp_ble_get_sendable_packets_num,"ax",@progbits
	.align	4
	.global	esp_ble_get_sendable_packets_num
	.type	esp_ble_get_sendable_packets_num, @function
esp_ble_get_sendable_packets_num:
.LFB40:
	.loc 1 55 0
	entry	sp, 32
.LCFI1:
	.loc 1 56 0
	call8	L2CA_GetFreePktBufferNum_LE
.LVL5:
	.loc 1 57 0
	mov.n	a2, a10
	retw.n
.LFE40:
	.size	esp_ble_get_sendable_packets_num, .-esp_ble_get_sendable_packets_num
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/include/bt_common.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_task.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/std/include/btc_gatt_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x394
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
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
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
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x25
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
	.uleb128 0x5
	.byte	0x4
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
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x1b
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x93
	.4byte	0x16d
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x7
	.byte	0x1a
	.4byte	0x9c
	.uleb128 0x8
	.4byte	0x16d
	.4byte	0x188
	.uleb128 0x9
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8
	.byte	0x1a
	.4byte	0x1d1
	.uleb128 0xb
	.string	"sig"
	.byte	0x8
	.byte	0x1b
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.string	"aid"
	.byte	0x8
	.byte	0x1c
	.4byte	0x9c
	.byte	0x1
	.uleb128 0xb
	.string	"pid"
	.byte	0x8
	.byte	0x1d
	.4byte	0x9c
	.byte	0x2
	.uleb128 0xb
	.string	"act"
	.byte	0x8
	.byte	0x1e
	.4byte	0x9c
	.byte	0x3
	.uleb128 0xb
	.string	"arg"
	.byte	0x8
	.byte	0x1f
	.4byte	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x8
	.byte	0x20
	.4byte	0x188
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x27
	.4byte	0x1fb
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x2d
	.4byte	0x26e
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x18
	.4byte	0x281
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x2
	.byte	0x9
	.byte	0x1f
	.4byte	0x29a
	.uleb128 0xb
	.string	"mtu"
	.byte	0x9
	.byte	0x20
	.4byte	0xa7
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x9
	.byte	0x1d
	.4byte	0x2ae
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x9
	.byte	0x21
	.4byte	0x281
	.byte	0
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x9
	.byte	0x22
	.4byte	0x29a
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x20
	.4byte	0xbd
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x323
	.uleb128 0xf
	.string	"mtu"
	.byte	0x1
	.byte	0x20
	.4byte	0xa7
	.4byte	.LLST0
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0x22
	.4byte	0x1d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0x23
	.4byte	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x376
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x381
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x1
	.byte	0x36
	.4byte	0xa7
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x346
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x38c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x2b8
	.4byte	0x359
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x15
	.4byte	0x178
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x2b9
	.4byte	0x371
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x178
	.uleb128 0x16
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x5
	.byte	0x27
	.uleb128 0x16
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.byte	0x5f
	.uleb128 0x16
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x1
	.byte	0x34
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE39
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"bd_addr_null"
.LASF27:
	.string	"BT_STATUS_DONE"
.LASF65:
	.string	"set_mtu_arg"
.LASF33:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF35:
	.string	"BT_STATUS_PENDING"
.LASF63:
	.string	"BTC_GATT_ACT_SET_LOCAL_MTU"
.LASF4:
	.string	"short int"
.LASF29:
	.string	"BT_STATUS_PARM_INVALID"
.LASF11:
	.string	"sizetype"
.LASF39:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF28:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF6:
	.string	"__uint16_t"
.LASF57:
	.string	"BTC_PID_GAP_BT"
.LASF37:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF26:
	.string	"BT_STATUS_BUSY"
.LASF14:
	.string	"uint8_t"
.LASF49:
	.string	"BTC_PID_GATTC"
.LASF43:
	.string	"BTC_SIG_API_CALL"
.LASF75:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/esp_gatt_common_api.c"
.LASF60:
	.string	"BTC_PID_AVRC"
.LASF53:
	.string	"BTC_PID_SPPLIKE"
.LASF20:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF58:
	.string	"BTC_PID_PRF_QUE"
.LASF30:
	.string	"BT_STATUS_UNHANDLED"
.LASF25:
	.string	"BT_STATUS_NOMEM"
.LASF32:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF47:
	.string	"BTC_PID_DEV"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"long int"
.LASF41:
	.string	"UINT8"
.LASF5:
	.string	"__uint8_t"
.LASF31:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF36:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF24:
	.string	"BT_STATUS_NOT_READY"
.LASF48:
	.string	"BTC_PID_GATTS"
.LASF3:
	.string	"unsigned char"
.LASF46:
	.string	"BTC_PID_MAIN_INIT"
.LASF72:
	.string	"btc_transfer_context"
.LASF61:
	.string	"BTC_PID_SPP"
.LASF54:
	.string	"BTC_PID_BLUFI"
.LASF2:
	.string	"signed char"
.LASF66:
	.string	"btc_ble_gatt_com_args_t"
.LASF71:
	.string	"esp_bluedroid_get_status"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF18:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF45:
	.string	"BTC_SIG_NUM"
.LASF1:
	.string	"short unsigned int"
.LASF76:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF44:
	.string	"BTC_SIG_API_CB"
.LASF13:
	.string	"char"
.LASF16:
	.string	"int32_t"
.LASF19:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF21:
	.string	"_Bool"
.LASF73:
	.string	"L2CA_GetFreePktBufferNum_LE"
.LASF56:
	.string	"BTC_PID_ALARM"
.LASF40:
	.string	"BT_STATUS_EIR_TOO_LARGE"
.LASF52:
	.string	"BTC_PID_BLE_HID"
.LASF59:
	.string	"BTC_PID_A2DP"
.LASF12:
	.string	"long unsigned int"
.LASF67:
	.string	"esp_ble_gatt_set_local_mtu"
.LASF34:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF7:
	.string	"__int32_t"
.LASF77:
	.string	"set_mtu"
.LASF68:
	.string	"esp_ble_get_sendable_packets_num"
.LASF23:
	.string	"BT_STATUS_FAIL"
.LASF22:
	.string	"BT_STATUS_SUCCESS"
.LASF51:
	.string	"BTC_PID_GAP_BLE"
.LASF69:
	.string	"bd_addr_any"
.LASF38:
	.string	"BT_STATUS_TIMEOUT"
.LASF64:
	.string	"btc_msg"
.LASF62:
	.string	"BTC_PID_NUM"
.LASF50:
	.string	"BTC_PID_GATT_COMMON"
.LASF55:
	.string	"BTC_PID_DM_SEC"
.LASF74:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"esp_err_t"
.LASF42:
	.string	"btc_msg_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
