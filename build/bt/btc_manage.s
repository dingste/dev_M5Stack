	.file	"btc_manage.c"
	.text
.Ltext0:
	.section	.text.esp_profile_cb_reset,"ax",@progbits
	.literal_position
	.literal .LC2, btc_profile_cb_tab
	.align	4
	.global	esp_profile_cb_reset
	.type	esp_profile_cb_reset, @function
esp_profile_cb_reset:
.LFB33:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/core/btc_manage.c"
	.loc 1 22 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 22 0
	movi.n	a8, 0
	.loc 1 26 0
	l32r	a12, .LC2
	mov.n	a11, a8
	movi.n	a9, 0x10
	loop	a9, .L2_LEND
.LVL1:
.L2:
	.loc 1 26 0 is_stmt 0 discriminator 3
	add.n	a10, a8, a12
	s32i.n	a11, a10, 0
	addi.n	a8, a8, 4
	.L2_LEND:
	.loc 1 28 0 is_stmt 1
	retw.n
.LFE33:
	.size	esp_profile_cb_reset, .-esp_profile_cb_reset
	.section	.text.btc_profile_cb_set,"ax",@progbits
	.literal_position
	.literal .LC3, btc_profile_cb_tab
	.align	4
	.global	btc_profile_cb_set
	.type	btc_profile_cb_set, @function
btc_profile_cb_set:
.LFB34:
	.loc 1 31 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 31 0
	mov.n	a8, a2
	.loc 1 32 0
	movi.n	a9, 0xf
	.loc 1 33 0
	movi.n	a2, -1
.LVL3:
	.loc 1 32 0
	bltu	a9, a8, .L5
	.loc 1 36 0
	l32r	a2, .LC3
	addx4	a8, a8, a2
.LVL4:
	s32i.n	a3, a8, 0
	.loc 1 38 0
	movi.n	a2, 0
.L5:
	.loc 1 39 0
	retw.n
.LFE34:
	.size	btc_profile_cb_set, .-btc_profile_cb_set
	.section	.text.btc_profile_cb_get,"ax",@progbits
	.literal_position
	.literal .LC4, btc_profile_cb_tab
	.align	4
	.global	btc_profile_cb_get
	.type	btc_profile_cb_get, @function
btc_profile_cb_get:
.LFB35:
	.loc 1 42 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 42 0
	mov.n	a8, a2
	.loc 1 43 0
	movi.n	a9, 0xf
	.loc 1 44 0
	movi.n	a2, 0
.LVL6:
	.loc 1 43 0
	bltu	a9, a8, .L8
	.loc 1 47 0
	l32r	a2, .LC4
	addx4	a8, a8, a2
.LVL7:
	l32i.n	a2, a8, 0
.L8:
	.loc 1 48 0
	retw.n
.LFE35:
	.size	btc_profile_cb_get, .-btc_profile_cb_get
	.section	.bss.btc_profile_cb_tab,"aw",@nobits
	.align	4
	.type	btc_profile_cb_tab, @object
	.size	btc_profile_cb_tab, 64
btc_profile_cb_tab:
	.zero	64
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI1-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI2-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x200
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x1a
	.4byte	0x68
	.uleb128 0x6
	.4byte	0x98
	.4byte	0xb3
	.uleb128 0x7
	.4byte	0x7c
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x2d
	.4byte	0x126
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x56
	.4byte	0xb3
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0x15
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x154
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x17
	.4byte	0x4c
	.4byte	.LLST0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1e
	.4byte	0x4c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1e
	.4byte	0x126
	.4byte	.LLST1
	.uleb128 0xe
	.string	"cb"
	.byte	0x1
	.byte	0x1e
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x29
	.4byte	0x73
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b2
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x29
	.4byte	0x126
	.4byte	.LLST2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x1c5
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x10
	.4byte	0xa3
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x1dd
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0x73
	.4byte	0x1f2
	.uleb128 0x7
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x13
	.4byte	0x1e2
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_profile_cb_tab
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
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF16:
	.string	"BTC_PID_DEV"
.LASF7:
	.string	"__uint8_t"
.LASF17:
	.string	"BTC_PID_GATTS"
.LASF23:
	.string	"BTC_PID_BLUFI"
.LASF14:
	.string	"UINT8"
.LASF3:
	.string	"short unsigned int"
.LASF35:
	.string	"btc_profile_cb_get"
.LASF33:
	.string	"profile_id"
.LASF25:
	.string	"BTC_PID_ALARM"
.LASF39:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"btc_profile_cb_set"
.LASF27:
	.string	"BTC_PID_PRF_QUE"
.LASF11:
	.string	"long unsigned int"
.LASF38:
	.string	"btc_profile_cb_tab"
.LASF26:
	.string	"BTC_PID_GAP_BT"
.LASF24:
	.string	"BTC_PID_DM_SEC"
.LASF29:
	.string	"BTC_PID_AVRC"
.LASF4:
	.string	"unsigned int"
.LASF32:
	.string	"btc_pid_t"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF22:
	.string	"BTC_PID_SPPLIKE"
.LASF10:
	.string	"sizetype"
.LASF40:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/core/btc_manage.c"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"bd_addr_any"
.LASF15:
	.string	"BTC_PID_MAIN_INIT"
.LASF31:
	.string	"BTC_PID_NUM"
.LASF28:
	.string	"BTC_PID_A2DP"
.LASF2:
	.string	"short int"
.LASF21:
	.string	"BTC_PID_BLE_HID"
.LASF19:
	.string	"BTC_PID_GATT_COMMON"
.LASF9:
	.string	"long int"
.LASF37:
	.string	"bd_addr_null"
.LASF42:
	.string	"esp_profile_cb_reset"
.LASF30:
	.string	"BTC_PID_SPP"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"BTC_PID_GATTC"
.LASF13:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"BTC_PID_GAP_BLE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
