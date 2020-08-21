	.file	"btc_task.c"
	.text
.Ltext0:
	.section	.text.btc_task,"ax",@progbits
	.literal_position
	.literal .LC0, xBtcQueue
	.literal .LC1, profile_tab
	.align	4
	.type	btc_task, @function
btc_task:
.LFB35:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_task.c"
	.loc 1 99 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
.L2:
	.loc 1 103 0
	l32r	a2, .LC0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	movi.n	a12, -1
	mov.n	a11, sp
	call8	xQueueGenericReceive
.LVL2:
	bnei	a10, 1, .L2
	.loc 1 105 0
	l8ui	a8, sp, 0
	beqz.n	a8, .L4
	beqi	a8, 1, .L5
	j	.L3
.L4:
	.loc 1 107 0
	l8ui	a8, sp, 2
	l32r	a9, .LC1
	addx8	a8, a8, a9
	l32i.n	a8, a8, 0
	j	.L11
.L5:
	.loc 1 110 0
	l8ui	a8, sp, 2
	l32r	a9, .LC1
	addx8	a8, a8, a9
	l32i.n	a8, a8, 4
.L11:
	mov.n	a10, sp
	callx8	a8
.LVL3:
.L3:
	.loc 1 115 0
	l32i.n	a10, sp, 4
	beqz.n	a10, .L2
	.loc 1 116 0
	call8	free
.LVL4:
	j	.L2
.LFE35:
	.size	btc_task, .-btc_task
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"BT_BTC"
.LC5:
	.string	"\033[0;31mE (%d) %s: Btc Post failed\n\033[0m\n"
	.section	.text.btc_transfer_context,"ax",@progbits
	.literal_position
	.literal .LC2, xBtcQueue
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	btc_transfer_context
	.type	btc_transfer_context, @function
btc_transfer_context:
.LFB37:
	.loc 1 137 0
.LVL5:
	entry	sp, 48
.LCFI1:
	.loc 1 137 0
	mov.n	a11, a2
	.loc 1 141 0
	movi.n	a2, 7
.LVL6:
	.loc 1 140 0
	beqz.n	a11, .L13
	.loc 1 146 0
	movi.n	a12, 8
	mov.n	a10, sp
	call8	memcpy
.LVL7:
	.loc 1 147 0
	beqz.n	a3, .L14
	.loc 1 148 0
	mov.n	a10, a4
	call8	malloc
.LVL8:
	s32i.n	a10, sp, 4
	mov.n	a6, a10
	.loc 1 150 0
	movi.n	a2, 3
	.loc 1 149 0
	beqz.n	a10, .L13
	.loc 1 152 0
	mov.n	a12, a4
	movi.n	a11, 0
	call8	memset
.LVL9:
	.loc 1 153 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a6
	call8	memcpy
.LVL10:
	.loc 1 154 0
	beqz.n	a5, .L15
	.loc 1 155 0
	mov.n	a12, a3
	mov.n	a11, a6
	mov.n	a10, sp
	callx8	a5
.LVL11:
	j	.L15
.L14:
	.loc 1 158 0
	s32i.n	a3, sp, 4
.L15:
.LVL12:
.LBB4:
.LBB5:
	.loc 1 128 0
	l32r	a3, .LC2
.LVL13:
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	movi.n	a12, -1
	mov.n	a11, sp
.LVL14:
	call8	xQueueGenericSend
.LVL15:
	.loc 1 133 0
	movi.n	a2, 0
	.loc 1 128 0
	beqi	a10, 1, .L13
	.loc 1 129 0
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC4
	l32r	a12, .LC6
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 130 0
	movi.n	a2, 4
.LVL18:
.L13:
.LBE5:
.LBE4:
	.loc 1 162 0
	retw.n
.LFE37:
	.size	btc_transfer_context, .-btc_transfer_context
	.section	.rodata.str1.1
.LC10:
	.string	"Btc_task"
	.section	.text.btc_init,"ax",@progbits
	.literal_position
	.literal .LC7, xBtcQueue
	.literal .LC8, xBtcTaskHandle
	.literal .LC9, 3584
	.literal .LC11, .LC10
	.literal .LC12, btc_task
	.align	4
	.global	btc_init
	.type	btc_init, @function
btc_init:
.LFB38:
	.loc 1 166 0
	entry	sp, 48
.LCFI2:
	.loc 1 167 0
	movi.n	a12, 0
	movi.n	a11, 8
	movi.n	a10, 0x3c
	call8	xQueueGenericCreate
.LVL19:
	l32r	a4, .LC7
	.loc 1 168 0
	l32r	a2, .LC8
	.loc 1 167 0
	s32i.n	a10, a4, 0
	.loc 1 168 0
	movi.n	a3, 0
	l32r	a12, .LC9
	l32r	a11, .LC11
	l32r	a10, .LC12
	mov.n	a15, a2
	s32i.n	a3, sp, 0
	movi.n	a14, 0x13
	mov.n	a13, a3
	call8	xTaskCreatePinnedToCore
.LVL20:
	.loc 1 169 0
	l32i.n	a8, a2, 0
	.loc 1 170 0
	movi.n	a2, 3
	.loc 1 169 0
	beq	a8, a3, .L26
	.loc 1 169 0 discriminator 1
	l32i.n	a4, a4, 0
	beq	a4, a3, .L26
	.loc 1 172 0
	call8	btc_gap_callback_init
.LVL21:
	.loc 1 177 0
	mov.n	a2, a3
.L26:
	.loc 1 178 0
	retw.n
.LFE38:
	.size	btc_init, .-btc_init
	.section	.text.btc_deinit,"ax",@progbits
	.literal_position
	.literal .LC13, xBtcTaskHandle
	.literal .LC14, xBtcQueue
	.align	4
	.global	btc_deinit
	.type	btc_deinit, @function
btc_deinit:
.LFB39:
	.loc 1 181 0
	entry	sp, 32
.LCFI3:
	.loc 1 182 0
	l32r	a3, .LC13
	l32i.n	a10, a3, 0
	call8	vTaskDelete
.LVL22:
	.loc 1 183 0
	l32r	a2, .LC14
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL23:
	.loc 1 187 0
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 188 0
	s32i.n	a8, a2, 0
	retw.n
.LFE39:
	.size	btc_deinit, .-btc_deinit
	.section	.text.btc_check_queue_is_congest,"ax",@progbits
	.literal_position
	.literal .LC15, xBtcQueue
	.align	4
	.global	btc_check_queue_is_congest
	.type	btc_check_queue_is_congest, @function
btc_check_queue_is_congest:
.LFB40:
	.loc 1 192 0
	entry	sp, 32
.LCFI4:
	.loc 1 193 0
	l32r	a2, .LC15
	l32i.n	a10, a2, 0
	movi.n	a2, 1
	call8	uxQueueMessagesWaiting
.LVL24:
	movi.n	a8, 0x27
	bltu	a8, a10, .L33
	movi.n	a2, 0
.L33:
	.loc 1 198 0
	extui	a2, a2, 0, 1
	retw.n
.LFE40:
	.size	btc_check_queue_is_congest, .-btc_check_queue_is_congest
	.section	.rodata.profile_tab,"a",@progbits
	.align	4
	.type	profile_tab, @object
	.size	profile_tab, 128
profile_tab:
	.word	btc_main_call_handler
	.word	0
	.word	btc_dev_call_handler
	.word	0
	.word	btc_gatts_call_handler
	.word	btc_gatts_cb_handler
	.word	btc_gattc_call_handler
	.word	btc_gattc_cb_handler
	.word	btc_gatt_com_call_handler
	.word	0
	.word	btc_gap_ble_call_handler
	.word	btc_gap_ble_cb_handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	btc_blufi_call_handler
	.word	btc_blufi_cb_handler
	.word	0
	.word	btc_dm_sec_cb_handler
	.word	btc_alarm_handler
	.word	0
	.word	btc_gap_bt_call_handler
	.word	btc_gap_bt_cb_handler
	.word	btc_profile_queue_handler
	.word	0
	.zero	16
	.word	btc_spp_call_handler
	.word	btc_spp_cb_handler
	.section	.bss.xBtcQueue,"aw",@nobits
	.align	4
	.type	xBtcQueue, @object
	.size	xBtcQueue, 4
xBtcQueue:
	.zero	4
	.section	.bss.xBtcTaskHandle,"aw",@nobits
	.align	4
	.type	xBtcTaskHandle, @object
	.size	xBtcTaskHandle, 4
xBtcTaskHandle:
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI0-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI1-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI2-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI3-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI4-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/std/include/btc_gap_ble.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x898
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0xc
	.4byte	.LASF157
	.4byte	.LASF158
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
	.byte	0x1a
	.4byte	0x25
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
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x91
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x23
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	0xa7
	.4byte	0xd4
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x1f
	.4byte	0x105
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x48
	.4byte	0x17e
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0x5b
	.4byte	0x105
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x7
	.byte	0x70
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x7
	.byte	0x76
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x8
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x9
	.byte	0x6e
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xa
	.byte	0x68
	.4byte	0x9c
	.uleb128 0xa
	.4byte	.LASF159
	.byte	0x8
	.byte	0xb
	.byte	0x17
	.4byte	0x214
	.uleb128 0xb
	.string	"sig"
	.byte	0xb
	.byte	0x18
	.4byte	0x91
	.byte	0
	.uleb128 0xb
	.string	"aid"
	.byte	0xb
	.byte	0x19
	.4byte	0x91
	.byte	0x1
	.uleb128 0xb
	.string	"pid"
	.byte	0xb
	.byte	0x1a
	.4byte	0x91
	.byte	0x2
	.uleb128 0xb
	.string	"act"
	.byte	0xb
	.byte	0x1b
	.4byte	0x91
	.byte	0x3
	.uleb128 0xb
	.string	"arg"
	.byte	0xb
	.byte	0x1c
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0xb
	.byte	0x1d
	.4byte	0x1cb
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x24
	.4byte	0x23e
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x2a
	.4byte	0x2b1
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0xb
	.byte	0x45
	.4byte	0x2d2
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xb
	.byte	0x46
	.4byte	0x2e3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xb
	.byte	0x47
	.4byte	0x2e3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	0x2dd
	.uleb128 0xf
	.4byte	0x2dd
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x214
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2d2
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xb
	.byte	0x48
	.4byte	0x2b1
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xb
	.byte	0x4a
	.4byte	0x2ff
	.uleb128 0x10
	.byte	0x4
	.4byte	0x305
	.uleb128 0xe
	.4byte	0x31a
	.uleb128 0xf
	.4byte	0x2dd
	.uleb128 0xf
	.4byte	0x81
	.uleb128 0xf
	.4byte	0x81
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.2byte	0x1c2
	.4byte	0x442
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x2e
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.2byte	0x6ec
	.4byte	0x47a
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0x1
	.byte	0x7a
	.4byte	0x17e
	.byte	0x1
	.4byte	0x4a1
	.uleb128 0x13
	.string	"msg"
	.byte	0x1
	.byte	0x7a
	.4byte	0x2dd
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x1
	.byte	0x7a
	.4byte	0x1c0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x1
	.byte	0x62
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x515
	.uleb128 0x16
	.string	"arg"
	.byte	0x1
	.byte	0x62
	.4byte	0x81
	.4byte	.LLST0
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x64
	.4byte	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF132
	.4byte	0x525
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x7fe
	.4byte	0x4fb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x50b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x80a
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x525
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.4byte	0x515
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x1
	.byte	0x88
	.4byte	0x17e
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x699
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.byte	0x88
	.4byte	0x2dd
	.4byte	.LLST1
	.uleb128 0x16
	.string	"arg"
	.byte	0x1
	.byte	0x88
	.4byte	0x81
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0x88
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x88
	.4byte	0x2f4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0x8a
	.4byte	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF132
	.4byte	0x6a9
	.uleb128 0x21
	.4byte	0x47a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xa1
	.4byte	0x60a
	.uleb128 0x22
	.4byte	0x495
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	0x48a
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x815
	.4byte	0x5d6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x821
	.uleb128 0x23
	.4byte	.LVL17
	.4byte	0x82c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0x837
	.4byte	0x62a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x840
	.4byte	0x63e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0x84b
	.4byte	0x65d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x837
	.4byte	0x67d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL11
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x6a9
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x14
	.byte	0
	.uleb128 0x1d
	.4byte	0x699
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0xa5
	.4byte	0x33
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72e
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0x854
	.4byte	0x6e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x860
	.4byte	0x724
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_task
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xe00
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL21
	.4byte	0x86c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.byte	0xb4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x756
	.uleb128 0x1c
	.4byte	.LVL22
	.4byte	0x877
	.uleb128 0x1c
	.4byte	.LVL23
	.4byte	0x883
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0xbf
	.4byte	0xbd
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x786
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0xc1
	.4byte	0x194
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0x88f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x799
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1d
	.4byte	0xc4
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x7b1
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xc4
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.byte	0x33
	.4byte	0x1b5
	.uleb128 0x5
	.byte	0x3
	.4byte	xBtcTaskHandle
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.byte	0x34
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	xBtcQueue
	.uleb128 0x6
	.4byte	0x2e9
	.4byte	0x7e8
	.uleb128 0x7
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0x1
	.byte	0x36
	.4byte	0x7f9
	.uleb128 0x5
	.byte	0x3
	.4byte	profile_tab
	.uleb128 0x1d
	.4byte	0x7d8
	.uleb128 0x27
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x38a
	.uleb128 0x28
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xd
	.byte	0x5a
	.uleb128 0x27
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x265
	.uleb128 0x28
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x5
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x5
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF148
	.4byte	.LASF148
	.uleb128 0x28
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xd
	.byte	0x65
	.uleb128 0x29
	.4byte	.LASF149
	.4byte	.LASF149
	.uleb128 0x27
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x8
	.2byte	0x5d0
	.uleb128 0x27
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x151
	.uleb128 0x28
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xe
	.byte	0xaf
	.uleb128 0x27
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x2fb
	.uleb128 0x27
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x3ac
	.uleb128 0x27
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x8
	.2byte	0x395
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF152:
	.string	"btc_gap_callback_init"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF147:
	.string	"malloc"
.LASF155:
	.string	"uxQueueMessagesWaiting"
.LASF34:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF49:
	.string	"btc_msg_t"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"__uint8_t"
.LASF53:
	.string	"BTC_PID_MAIN_INIT"
.LASF140:
	.string	"xBtcQueue"
.LASF50:
	.string	"BTC_SIG_API_CALL"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF41:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF46:
	.string	"QueueHandle_t"
.LASF132:
	.string	"__func__"
.LASF160:
	.string	"btc_task_post"
.LASF143:
	.string	"free"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF142:
	.string	"xQueueGenericReceive"
.LASF63:
	.string	"BTC_PID_ALARM"
.LASF22:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF123:
	.string	"BTM_PM_STS_SNIFF"
.LASF157:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_task.c"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF8:
	.string	"long long unsigned int"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF58:
	.string	"BTC_PID_GAP_BLE"
.LASF68:
	.string	"BTC_PID_SPP"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF33:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF151:
	.string	"xTaskCreatePinnedToCore"
.LASF9:
	.string	"long int"
.LASF64:
	.string	"BTC_PID_GAP_BT"
.LASF133:
	.string	"btc_transfer_context"
.LASF146:
	.string	"esp_log_write"
.LASF47:
	.string	"TaskHandle_t"
.LASF148:
	.string	"memcpy"
.LASF45:
	.string	"TickType_t"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF39:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF43:
	.string	"BaseType_t"
.LASF122:
	.string	"BTM_PM_STS_HOLD"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF35:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF62:
	.string	"BTC_PID_DM_SEC"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF36:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF121:
	.string	"BTM_PM_STS_ACTIVE"
.LASF135:
	.string	"btc_check_queue_is_congest"
.LASF66:
	.string	"BTC_PID_A2DP"
.LASF42:
	.string	"bt_status_t"
.LASF27:
	.string	"BT_STATUS_NOMEM"
.LASF120:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF129:
	.string	"arg_len"
.LASF134:
	.string	"btc_init"
.LASF0:
	.string	"unsigned int"
.LASF130:
	.string	"copy_func"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF73:
	.string	"btc_arg_deep_copy_t"
.LASF11:
	.string	"long unsigned int"
.LASF26:
	.string	"BT_STATUS_NOT_READY"
.LASF128:
	.string	"timeout"
.LASF156:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF144:
	.string	"xQueueGenericSend"
.LASF60:
	.string	"BTC_PID_SPPLIKE"
.LASF1:
	.string	"short unsigned int"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF141:
	.string	"profile_tab"
.LASF67:
	.string	"BTC_PID_AVRC"
.LASF54:
	.string	"BTC_PID_DEV"
.LASF20:
	.string	"ESP_LOG_WARN"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF25:
	.string	"BT_STATUS_FAIL"
.LASF136:
	.string	"wait_size"
.LASF59:
	.string	"BTC_PID_BLE_HID"
.LASF71:
	.string	"btc_cb"
.LASF21:
	.string	"ESP_LOG_INFO"
.LASF127:
	.string	"BTM_PM_STS_ERROR"
.LASF159:
	.string	"btc_msg"
.LASF38:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF10:
	.string	"sizetype"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF72:
	.string	"btc_func_t"
.LASF16:
	.string	"UINT32"
.LASF154:
	.string	"vQueueDelete"
.LASF30:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF32:
	.string	"BT_STATUS_UNHANDLED"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF61:
	.string	"BTC_PID_BLUFI"
.LASF51:
	.string	"BTC_SIG_API_CB"
.LASF139:
	.string	"xBtcTaskHandle"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF24:
	.string	"BT_STATUS_SUCCESS"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF28:
	.string	"BT_STATUS_BUSY"
.LASF138:
	.string	"bd_addr_null"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF158:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF17:
	.string	"_Bool"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"BTC_SIG_NUM"
.LASF48:
	.string	"task_post_t"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF4:
	.string	"short int"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF145:
	.string	"esp_log_timestamp"
.LASF19:
	.string	"ESP_LOG_ERROR"
.LASF150:
	.string	"xQueueGenericCreate"
.LASF124:
	.string	"BTM_PM_STS_PARK"
.LASF70:
	.string	"btc_call"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"uint32_t"
.LASF57:
	.string	"BTC_PID_GATT_COMMON"
.LASF37:
	.string	"BT_STATUS_PENDING"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF161:
	.string	"btc_task"
.LASF12:
	.string	"char"
.LASF23:
	.string	"ESP_LOG_VERBOSE"
.LASF29:
	.string	"BT_STATUS_DONE"
.LASF153:
	.string	"vTaskDelete"
.LASF18:
	.string	"ESP_LOG_NONE"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF162:
	.string	"btc_deinit"
.LASF6:
	.string	"__uint32_t"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF125:
	.string	"BTM_PM_STS_SSR"
.LASF131:
	.string	"lmsg"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF149:
	.string	"memset"
.LASF65:
	.string	"BTC_PID_PRF_QUE"
.LASF31:
	.string	"BT_STATUS_PARM_INVALID"
.LASF15:
	.string	"UINT8"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF13:
	.string	"uint8_t"
.LASF137:
	.string	"bd_addr_any"
.LASF126:
	.string	"BTM_PM_STS_PENDING"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF56:
	.string	"BTC_PID_GATTC"
.LASF69:
	.string	"BTC_PID_NUM"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF55:
	.string	"BTC_PID_GATTS"
.LASF40:
	.string	"BT_STATUS_TIMEOUT"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF44:
	.string	"UBaseType_t"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
