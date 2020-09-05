	.file	"btc_main.c"
	.text
.Ltext0:
	.section	.text.btc_init_callback,"ax",@progbits
	.literal_position
	.literal .LC0, main_future
	.align	4
	.global	btc_init_callback
	.type	btc_init_callback, @function
btc_init_callback:
.LFB42:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_main.c"
	.loc 1 56 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 57 0
	l32r	a8, .LC0
	movi.n	a11, 1
	l32i.n	a10, a8, 0
	call8	future_ready
.LVL1:
	retw.n
.LFE42:
	.size	btc_init_callback, .-btc_init_callback
	.section	.text.btc_main_get_future_p,"ax",@progbits
	.literal_position
	.literal .LC1, main_future
	.align	4
	.global	btc_main_get_future_p
	.type	btc_main_get_future_p, @function
btc_main_get_future_p:
.LFB39:
	.loc 1 34 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 36 0
	l32r	a8, .LC1
	addx4	a2, a2, a8
.LVL3:
	retw.n
.LFE39:
	.size	btc_main_get_future_p, .-btc_main_get_future_p
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"BT_BTC"
.LC9:
	.string	"\033[0;31mE (%d) %s: %s UNKNOWN ACT %d\n\033[0m\n"
	.section	.text.btc_main_call_handler,"ax",@progbits
	.literal_position
	.literal .LC2, btc_init_callback
	.literal .LC3, deinit_semaphore
	.literal .LC4, main_future
	.literal .LC5, btc_dm_sec_evt
	.literal .LC6, __func__$12614
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.global	btc_main_call_handler
	.type	btc_main_call_handler, @function
btc_main_call_handler:
.LFB45:
	.loc 1 104 0
.LVL4:
	entry	sp, 48
.LCFI2:
	.loc 1 107 0
	l8ui	a3, a2, 3
	beqi	a3, 1, .L5
	beqz.n	a3, .L6
	beqi	a3, 2, .L7
	beqi	a3, 3, .L8
	j	.L15
.L6:
.LBB18:
.LBB19:
	.loc 1 62 0
	call8	osi_alarm_create_mux
.LVL5:
	.loc 1 63 0
	call8	osi_alarm_init
.LVL6:
	.loc 1 64 0
	l32r	a10, .LC2
	call8	bte_main_boot_entry
.LVL7:
	.loc 1 66 0
	call8	btc_config_init
.LVL8:
	.loc 1 68 0
	call8	btc_dm_load_ble_local_keys
.LVL9:
	.loc 1 71 0
	movi.n	a12, 3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL10:
	l32r	a2, .LC3
.LVL11:
	s32i.n	a10, a2, 0
	retw.n
.LVL12:
.L5:
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	.loc 1 80 0
	l32r	a2, .LC3
.LVL13:
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a11, a13
	movi.n	a12, 0x14
	call8	xQueueGenericReceive
.LVL14:
	.loc 1 82 0
	call8	btc_gap_ble_deinit
.LVL15:
	.loc 1 83 0
	call8	bta_dm_sm_deinit
.LVL16:
	.loc 1 85 0
	call8	bta_gattc_deinit
.LVL17:
	.loc 1 88 0
	call8	bta_gatts_deinit
.LVL18:
	.loc 1 90 0
	call8	bte_main_shutdown
.LVL19:
	.loc 1 92 0
	call8	btc_config_clean_up
.LVL20:
	.loc 1 94 0
	call8	osi_alarm_deinit
.LVL21:
	.loc 1 95 0
	call8	osi_alarm_delete_mux
.LVL22:
	.loc 1 96 0
	mov.n	a11, a3
	l32r	a3, .LC4
	l32i.n	a10, a3, 4
	.loc 1 99 0
	movi.n	a3, 0
	.loc 1 96 0
	call8	future_ready
.LVL23:
	.loc 1 98 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL24:
	.loc 1 99 0
	s32i.n	a3, a2, 0
	retw.n
.LVL25:
.L7:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 40 0
	l32r	a10, .LC5
	call8	BTA_EnableBluetooth
.LVL26:
	beqz.n	a10, .L3
.LVL27:
	.loc 1 41 0
	l32r	a2, .LC4
.LVL28:
	movi.n	a11, 0
	l32i.n	a10, a2, 8
	j	.L16
.LVL29:
.L8:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 1 48 0
	call8	btc_config_shut_down
.LVL30:
	.loc 1 50 0
	call8	BTA_DisableBluetooth
.LVL31:
	beqz.n	a10, .L3
.LVL32:
	.loc 1 51 0
	l32r	a2, .LC4
.LVL33:
	movi.n	a11, 0
	l32i.n	a10, a2, 12
.LVL34:
.L16:
	call8	future_ready
.LVL35:
	retw.n
.LVL36:
.L15:
.LBE25:
.LBE24:
	.loc 1 121 0 discriminator 1
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC8
	l8ui	a2, a2, 3
.LVL38:
	l32r	a15, .LC6
	l32r	a12, .LC10
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL39:
.L3:
	retw.n
.LFE45:
	.size	btc_main_call_handler, .-btc_main_call_handler
	.section	.rodata.__func__$12614,"a",@progbits
	.type	__func__$12614, @object
	.size	__func__$12614, 22
__func__$12614:
	.string	"btc_main_call_handler"
	.section	.bss.main_future,"aw",@nobits
	.align	4
	.type	main_future, @object
	.size	main_future, 16
main_future:
	.zero	16
	.comm	deinit_semaphore,4,4
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI0-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI1-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI2-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_task.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/future.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_main.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/alarm.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_config.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_dm.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/std/include/btc_gap_ble.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/include/bta_dm_int.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/include/bta_gattc_int.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/include/bta_gatts_int.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x748
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0xc
	.4byte	.LASF133
	.4byte	.LASF134
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e
	.byte	0xb
	.byte	0x1f
	.4byte	0xd8
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x70
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x76
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x58
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x1a
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1c
	.4byte	0x7e
	.uleb128 0x8
	.4byte	0x10b
	.4byte	0x131
	.uleb128 0x9
	.4byte	0x92
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x8
	.byte	0x7
	.byte	0x1a
	.4byte	0x17a
	.uleb128 0xb
	.string	"sig"
	.byte	0x7
	.byte	0x1b
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.string	"aid"
	.byte	0x7
	.byte	0x1c
	.4byte	0x73
	.byte	0x1
	.uleb128 0xb
	.string	"pid"
	.byte	0x7
	.byte	0x1d
	.4byte	0x73
	.byte	0x2
	.uleb128 0xb
	.string	"act"
	.byte	0x7
	.byte	0x1e
	.4byte	0x73
	.byte	0x3
	.uleb128 0xb
	.string	"arg"
	.byte	0x7
	.byte	0x1f
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x20
	.4byte	0x131
	.uleb128 0xc
	.byte	0x4
	.4byte	0x17a
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4f
	.4byte	0x100
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x9
	.byte	0x1d
	.4byte	0x18b
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xc
	.byte	0xa
	.byte	0x18
	.4byte	0x1d2
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0xa
	.byte	0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xa
	.byte	0x1a
	.4byte	0x196
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0xa
	.byte	0x1b
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xa
	.byte	0x1d
	.4byte	0x1a1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.2byte	0x1c2
	.4byte	0x305
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x2e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.2byte	0x6ec
	.4byte	0x33d
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e
	.byte	0xd
	.byte	0x18
	.4byte	0x362
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e
	.byte	0xd
	.byte	0x1f
	.4byte	0x38d
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xd
	.byte	0x25
	.4byte	0x362
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x1
	.byte	0x21
	.4byte	0x3b4
	.byte	0x1
	.4byte	0x3b4
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x1
	.byte	0x21
	.4byte	0x38d
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x1
	.byte	0x37
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e5
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x651
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x398
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x402
	.uleb128 0x15
	.4byte	0x3a8
	.4byte	.LLST0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x1
	.byte	0x67
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x67
	.4byte	0x185
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF137
	.4byte	0x5e9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$12614
	.uleb128 0x19
	.4byte	0x402
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x6d
	.4byte	0x4be
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x65c
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x667
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x672
	.4byte	0x491
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_init_callback
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x67d
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x688
	.uleb128 0x12
	.4byte	.LVL10
	.4byte	0x693
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x40a
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x70
	.4byte	0x549
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x69f
	.4byte	0x4ee
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x6ab
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x6b6
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x6c2
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x6ce
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x6da
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x6e5
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x6f0
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x6fb
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x651
	.uleb128 0x1a
	.4byte	.LVL24
	.4byte	0x706
	.byte	0
	.uleb128 0x19
	.4byte	0x412
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x73
	.4byte	0x566
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0x712
	.byte	0
	.uleb128 0x19
	.4byte	0x41a
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x76
	.4byte	0x595
	.uleb128 0x1a
	.4byte	.LVL30
	.4byte	0x71e
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0x729
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x651
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0x735
	.uleb128 0x12
	.4byte	.LVL39
	.4byte	0x740
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$12614
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0x5e9
	.uleb128 0x9
	.4byte	0x92
	.byte	0x15
	.byte	0
	.uleb128 0x1c
	.4byte	0x5d9
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x2b8
	.4byte	0x601
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1c
	.4byte	0x121
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x2b9
	.4byte	0x619
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x121
	.uleb128 0x8
	.4byte	0x3ba
	.4byte	0x62e
	.uleb128 0x9
	.4byte	0x92
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1c
	.4byte	0x61e
	.uleb128 0x5
	.byte	0x3
	.4byte	main_future
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x12
	.2byte	0x4bc
	.4byte	0x18b
	.uleb128 0x5
	.byte	0x3
	.4byte	deinit_semaphore
	.uleb128 0x20
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xa
	.byte	0x2d
	.uleb128 0x20
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xe
	.byte	0x27
	.uleb128 0x20
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xe
	.byte	0x29
	.uleb128 0x20
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x1
	.byte	0x1e
	.uleb128 0x20
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xf
	.byte	0x19
	.uleb128 0x20
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x10
	.byte	0x50
	.uleb128 0x21
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x5d0
	.uleb128 0x21
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x38a
	.uleb128 0x20
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x11
	.byte	0xb7
	.uleb128 0x21
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x12
	.2byte	0x4c1
	.uleb128 0x21
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x13
	.2byte	0x222
	.uleb128 0x21
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x14
	.2byte	0x105
	.uleb128 0x20
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x1
	.byte	0x1f
	.uleb128 0x20
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xf
	.byte	0x1b
	.uleb128 0x20
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xe
	.byte	0x2a
	.uleb128 0x20
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xe
	.byte	0x28
	.uleb128 0x21
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x3ac
	.uleb128 0x21
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x15
	.2byte	0x57a
	.uleb128 0x20
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xf
	.byte	0x1a
	.uleb128 0x21
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x15
	.2byte	0x588
	.uleb128 0x20
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xb
	.byte	0x57
	.uleb128 0x20
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xb
	.byte	0x6b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE45
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF32:
	.string	"future"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF28:
	.string	"btc_msg_t"
.LASF128:
	.string	"btc_config_shut_down"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"__uint8_t"
.LASF122:
	.string	"bte_main_shutdown"
.LASF111:
	.string	"osi_alarm_create_mux"
.LASF136:
	.string	"type"
.LASF97:
	.string	"BTC_MAIN_ENABLE_FUTURE"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF95:
	.string	"BTC_MAIN_INIT_FUTURE"
.LASF25:
	.string	"QueueHandle_t"
.LASF137:
	.string	"__func__"
.LASF127:
	.string	"BTA_EnableBluetooth"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF117:
	.string	"xQueueGenericReceive"
.LASF19:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF86:
	.string	"BTM_PM_STS_SNIFF"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF8:
	.string	"long long unsigned int"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF11:
	.string	"long int"
.LASF103:
	.string	"btc_enable_bluetooth"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF131:
	.string	"esp_log_write"
.LASF24:
	.string	"TickType_t"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF100:
	.string	"btc_main_future_type_t"
.LASF22:
	.string	"BaseType_t"
.LASF85:
	.string	"BTM_PM_STS_HOLD"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF113:
	.string	"bte_main_boot_entry"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF92:
	.string	"BTC_MAIN_ACT_DEINIT"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF84:
	.string	"BTM_PM_STS_ACTIVE"
.LASF106:
	.string	"btc_main_call_handler"
.LASF121:
	.string	"bta_gatts_deinit"
.LASF83:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF109:
	.string	"main_future"
.LASF112:
	.string	"osi_alarm_init"
.LASF6:
	.string	"unsigned int"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF13:
	.string	"long unsigned int"
.LASF98:
	.string	"BTC_MAIN_DISABLE_FUTURE"
.LASF132:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF125:
	.string	"osi_alarm_delete_mux"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF3:
	.string	"short unsigned int"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF91:
	.string	"BTC_MAIN_ACT_INIT"
.LASF17:
	.string	"ESP_LOG_WARN"
.LASF94:
	.string	"BTC_MAIN_ACT_DISABLE"
.LASF118:
	.string	"btc_gap_ble_deinit"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF18:
	.string	"ESP_LOG_INFO"
.LASF93:
	.string	"BTC_MAIN_ACT_ENABLE"
.LASF33:
	.string	"ready_can_be_called"
.LASF90:
	.string	"BTM_PM_STS_ERROR"
.LASF31:
	.string	"btc_msg"
.LASF12:
	.string	"sizetype"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF115:
	.string	"btc_dm_load_ble_local_keys"
.LASF120:
	.string	"bta_gattc_deinit"
.LASF123:
	.string	"btc_config_clean_up"
.LASF27:
	.string	"UINT32"
.LASF126:
	.string	"vQueueDelete"
.LASF104:
	.string	"btc_disable_bluetooth"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF138:
	.string	"deinit_semaphore"
.LASF119:
	.string	"bta_dm_sm_deinit"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF99:
	.string	"BTC_MAIN_FUTURE_NUM"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF124:
	.string	"osi_alarm_deinit"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF108:
	.string	"bd_addr_null"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF134:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF34:
	.string	"semaphore"
.LASF21:
	.string	"_Bool"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF110:
	.string	"future_ready"
.LASF36:
	.string	"future_t"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF2:
	.string	"short int"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF130:
	.string	"esp_log_timestamp"
.LASF16:
	.string	"ESP_LOG_ERROR"
.LASF116:
	.string	"xQueueGenericCreate"
.LASF87:
	.string	"BTM_PM_STS_PARK"
.LASF96:
	.string	"BTC_MAIN_DEINIT_FUTURE"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF10:
	.string	"uint32_t"
.LASF105:
	.string	"btc_init_callback"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF29:
	.string	"SemaphoreHandle_t"
.LASF14:
	.string	"char"
.LASF20:
	.string	"ESP_LOG_VERBOSE"
.LASF15:
	.string	"ESP_LOG_NONE"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF5:
	.string	"__uint32_t"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF88:
	.string	"BTM_PM_STS_SSR"
.LASF1:
	.string	"unsigned char"
.LASF102:
	.string	"btc_deinit_bluetooth"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF129:
	.string	"BTA_DisableBluetooth"
.LASF26:
	.string	"UINT8"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF9:
	.string	"uint8_t"
.LASF107:
	.string	"bd_addr_any"
.LASF30:
	.string	"osi_sem_t"
.LASF89:
	.string	"BTM_PM_STS_PENDING"
.LASF133:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_main.c"
.LASF114:
	.string	"btc_config_init"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF101:
	.string	"btc_init_bluetooth"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF135:
	.string	"btc_main_get_future_p"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF23:
	.string	"UBaseType_t"
.LASF35:
	.string	"result"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
