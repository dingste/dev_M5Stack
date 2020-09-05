	.file	"bte_main.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"BT_APPL"
.LC5:
	.string	"\033[0;31mE (%d) %s: %s could not get hci layer interface.\n\033[0m\n"
.LC8:
	.string	"\033[0;31mE (%d) %s: Start HCI Host Layer Failure\n\033[0m\n"
	.section	.text.bte_main_boot_entry,"ax",@progbits
	.literal_position
	.literal .LC0, hci
	.literal .LC1, appl_trace_level
	.literal .LC2, __func__$8891
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, bluedroid_init_done_cb
	.literal .LC9, .LC8
	.align	4
	.global	bte_main_boot_entry
	.type	bte_main_boot_entry, @function
bte_main_boot_entry:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/main/bte_main.c"
	.loc 1 77 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 78 0
	call8	hci_layer_get_interface
.LVL1:
	l32r	a8, .LC0
	s32i.n	a10, a8, 0
	.loc 1 79 0
	bnez.n	a10, .L2
	.loc 1 80 0
	l32r	a2, .LC1
.LVL2:
	l8ui	a8, a2, 0
	.loc 1 81 0
	movi.n	a2, -2
	.loc 1 80 0
	beqz.n	a8, .L3
	.loc 1 80 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL3:
	l32r	a11, .LC4
	l32r	a15, .LC2
	l32r	a12, .LC6
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL4:
	retw.n
.LVL5:
.L2:
	.loc 1 84 0 is_stmt 1
	l32r	a8, .LC7
	s32i.n	a2, a8, 0
	.loc 1 86 0
	call8	osi_init
.LVL6:
.LBB4:
.LBB5:
	.loc 1 126 0
	call8	hci_start_up
.LVL7:
	mov.n	a2, a10
.LVL8:
	beqz.n	a10, .L4
	.loc 1 127 0
	l32r	a2, .LC1
	l8ui	a8, a2, 0
.LBE5:
.LBE4:
	.loc 1 91 0
	movi.n	a2, 0
.LBB7:
.LBB6:
	.loc 1 127 0
	beq	a8, a2, .L3
	call8	esp_log_timestamp
.LVL9:
	l32r	a11, .LC4
	l32r	a12, .LC9
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL10:
	retw.n
.L4:
	.loc 1 132 0
	call8	BTU_StartUp
.LVL11:
.L3:
.LBE6:
.LBE7:
	.loc 1 92 0
	retw.n
.LFE39:
	.size	bte_main_boot_entry, .-bte_main_boot_entry
	.section	.text.bte_main_shutdown,"ax",@progbits
	.align	4
	.global	bte_main_shutdown
	.type	bte_main_shutdown, @function
bte_main_shutdown:
.LFB40:
	.loc 1 104 0
	entry	sp, 32
.LCFI1:
	.loc 1 106 0
	call8	BTA_VendorCleanup
.LVL12:
.LBB10:
.LBB11:
	.loc 1 154 0
	call8	hci_shut_down
.LVL13:
	.loc 1 156 0
	call8	BTU_ShutDown
.LVL14:
.LBE11:
.LBE10:
	.loc 1 110 0
	call8	osi_deinit
.LVL15:
	retw.n
.LFE40:
	.size	bte_main_shutdown, .-bte_main_shutdown
	.section	.text.bte_main_postload_cfg,"ax",@progbits
	.literal_position
	.literal .LC10, hci
	.align	4
	.global	bte_main_postload_cfg
	.type	bte_main_postload_cfg, @function
bte_main_postload_cfg:
.LFB43:
	.loc 1 169 0
	entry	sp, 32
.LCFI2:
	.loc 1 170 0
	l32r	a8, .LC10
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	callx8	a8
.LVL16:
	retw.n
.LFE43:
	.size	bte_main_postload_cfg, .-bte_main_postload_cfg
	.section	.text.bte_main_hci_send,"ax",@progbits
	.literal_position
	.literal .LC11, hci
	.align	4
	.global	bte_main_hci_send
	.type	bte_main_hci_send, @function
bte_main_hci_send:
.LFB44:
	.loc 1 232 0
.LVL17:
	entry	sp, 32
.LCFI3:
	.loc 1 232 0
	extui	a10, a3, 0, 16
.LVL18:
	.loc 1 235 0
	s16i	a10, a2, 0
	.loc 1 240 0
	extui	a8, a10, 0, 8
	.loc 1 232 0
	mov.n	a11, a2
	.loc 1 240 0
	bgeui	a8, 2, .L12
	.loc 1 242 0
	l32r	a8, .LC11
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	callx8	a8
.LVL19:
	retw.n
.LVL20:
.L12:
	.loc 1 245 0
	mov.n	a10, a2
.LVL21:
	call8	free
.LVL22:
	retw.n
.LFE44:
	.size	bte_main_hci_send, .-bte_main_hci_send
	.section	.rodata.__func__$8891,"a",@progbits
	.type	__func__$8891, @object
	.size	__func__$8891, 20
__func__$8891:
	.string	"bte_main_boot_entry"
	.comm	bluedroid_init_done_cb,4,4
	.section	.bss.hci,"aw",@nobits
	.align	4
	.type	hci, @object
	.size	hci, 4
hci:
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x20
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI2-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI3-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_common_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/future.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/hci_layer.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_trace.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btu.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/osi.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6ef
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xc
	.4byte	.LASF124
	.4byte	.LASF125
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x7
	.uleb128 0x2
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
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x1f
	.4byte	0xf5
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1a
	.4byte	0xa3
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1b
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1c
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xbf
	.4byte	0x162
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0xc0
	.4byte	0xae
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x4
	.byte	0xc1
	.4byte	0xae
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0xc2
	.4byte	0xae
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0xc3
	.4byte	0xae
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0xc4
	.4byte	0x162
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0xa3
	.4byte	0x171
	.uleb128 0xe
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x4
	.byte	0xc5
	.4byte	0x11d
	.uleb128 0xd
	.4byte	0xf5
	.4byte	0x18c
	.uleb128 0xf
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x19
	.4byte	0x95
	.uleb128 0x6
	.byte	0x4
	.4byte	0x171
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x7
	.byte	0x4f
	.4byte	0x18c
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1d
	.4byte	0x1a8
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0xc
	.byte	0x9
	.byte	0x18
	.4byte	0x1ef
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x19
	.4byte	0x116
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x1a
	.4byte	0x1b3
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x1b
	.4byte	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x9
	.byte	0x1d
	.4byte	0x1be
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xa
	.byte	0x45
	.4byte	0x205
	.uleb128 0x6
	.byte	0x4
	.4byte	0x20b
	.uleb128 0x11
	.4byte	0x21b
	.uleb128 0x12
	.4byte	0x1a2
	.uleb128 0x12
	.4byte	0x8c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xa
	.byte	0x46
	.4byte	0x226
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22c
	.uleb128 0x11
	.4byte	0x241
	.uleb128 0x12
	.4byte	0xa3
	.uleb128 0x12
	.4byte	0x1a2
	.uleb128 0x12
	.4byte	0x8c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x10
	.byte	0xa
	.byte	0x48
	.4byte	0x27e
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0x4d
	.4byte	0x95
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0x50
	.4byte	0x298
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xa
	.byte	0x57
	.4byte	0x2b3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xa
	.byte	0x5a
	.4byte	0x2c9
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	0x298
	.uleb128 0x12
	.4byte	0x1a2
	.uleb128 0x12
	.4byte	0x1fa
	.uleb128 0x12
	.4byte	0x21b
	.uleb128 0x12
	.4byte	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x13
	.4byte	0x2ad
	.4byte	0x2ad
	.uleb128 0x12
	.4byte	0x1a2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29e
	.uleb128 0x11
	.4byte	0x2c9
	.uleb128 0x12
	.4byte	0xae
	.uleb128 0x12
	.4byte	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b9
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xa
	.byte	0x5b
	.4byte	0x241
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.2byte	0x1c2
	.4byte	0x402
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x2e
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.2byte	0x6ec
	.4byte	0x43a
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4c
	.4byte	0x33
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x528
	.uleb128 0x17
	.string	"cb"
	.byte	0x1
	.byte	0x4c
	.4byte	0x197
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF127
	.4byte	0x538
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8891
	.uleb128 0x19
	.4byte	0x43a
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x59
	.4byte	0x4d5
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0x676
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x681
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x68c
	.4byte	0x4cb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x697
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL1
	.4byte	0x6a3
	.uleb128 0x1a
	.4byte	.LVL3
	.4byte	0x681
	.uleb128 0x1b
	.4byte	.LVL4
	.4byte	0x68c
	.4byte	0x51e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8891
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x6ae
	.byte	0
	.uleb128 0xd
	.4byte	0x9c
	.4byte	0x538
	.uleb128 0xf
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x1d
	.4byte	0x528
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x1
	.byte	0x67
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x593
	.uleb128 0x1f
	.4byte	0x53d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x6c
	.4byte	0x580
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x6b9
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x6c4
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0x6d0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x6dc
	.byte	0
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x1
	.byte	0xe7
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60d
	.uleb128 0x21
	.4byte	.LASF106
	.byte	0x1
	.byte	0xe7
	.4byte	0x1a2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF27
	.byte	0x1
	.byte	0xe7
	.4byte	0x100
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF107
	.byte	0x1
	.byte	0xe9
	.4byte	0x100
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.LVL19
	.4byte	0x5fc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x6e7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x620
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1d
	.4byte	0x17c
	.uleb128 0x25
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x638
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x17c
	.uleb128 0x26
	.string	"hci"
	.byte	0x1
	.byte	0x34
	.4byte	0x64e
	.uleb128 0x5
	.byte	0x3
	.4byte	hci
	.uleb128 0x6
	.byte	0x4
	.4byte	0x654
	.uleb128 0x1d
	.4byte	0x2cf
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0xd
	.2byte	0x29f
	.4byte	0xf5
	.uleb128 0x28
	.4byte	.LASF111
	.byte	0x1
	.byte	0x40
	.4byte	0x197
	.uleb128 0x5
	.byte	0x3
	.4byte	bluedroid_init_done_cb
	.uleb128 0x29
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xa
	.byte	0x5f
	.uleb128 0x29
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xb
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xb
	.byte	0x6b
	.uleb128 0x2a
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xe
	.2byte	0x10f
	.uleb128 0x29
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xa
	.byte	0x5d
	.uleb128 0x29
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xf
	.byte	0xd
	.uleb128 0x29
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xa
	.byte	0x60
	.uleb128 0x2a
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xe
	.2byte	0x110
	.uleb128 0x2a
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x10
	.2byte	0xa2b
	.uleb128 0x29
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xf
	.byte	0xe
	.uleb128 0x29
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x11
	.byte	0x5a
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL19-1
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE44
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF106:
	.string	"p_msg"
.LASF42:
	.string	"future"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF43:
	.string	"hci_t"
.LASF5:
	.string	"__uint8_t"
.LASF104:
	.string	"bte_main_shutdown"
.LASF45:
	.string	"transmit_command"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF30:
	.string	"data"
.LASF118:
	.string	"hci_shut_down"
.LASF32:
	.string	"QueueHandle_t"
.LASF122:
	.string	"free"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF41:
	.string	"command_status_cb"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF111:
	.string	"bluedroid_init_done_cb"
.LASF120:
	.string	"BTA_VendorCleanup"
.LASF10:
	.string	"long int"
.LASF114:
	.string	"esp_log_write"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF15:
	.string	"uint16_t"
.LASF40:
	.string	"command_complete_cb"
.LASF96:
	.string	"BTM_PM_STS_HOLD"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF126:
	.string	"bte_main_boot_entry"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF24:
	.string	"UINT16"
.LASF99:
	.string	"BTM_PM_STS_SSR"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF105:
	.string	"bte_main_hci_send"
.LASF94:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF109:
	.string	"bd_addr_null"
.LASF7:
	.string	"__uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF47:
	.string	"transmit_downward"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF31:
	.string	"BT_HDR"
.LASF12:
	.string	"long unsigned int"
.LASF123:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF95:
	.string	"BTM_PM_STS_ACTIVE"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF27:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF33:
	.string	"bluedroid_init_done_cb_t"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF44:
	.string	"do_postload"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF101:
	.string	"BTM_PM_STS_ERROR"
.LASF11:
	.string	"sizetype"
.LASF117:
	.string	"osi_init"
.LASF46:
	.string	"transmit_command_futured"
.LASF25:
	.string	"UINT32"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF36:
	.string	"ready_can_be_called"
.LASF121:
	.string	"osi_deinit"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF128:
	.string	"bte_main_postload_cfg"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF125:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF37:
	.string	"semaphore"
.LASF102:
	.string	"bte_main_enable"
.LASF26:
	.string	"_Bool"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"future_t"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF4:
	.string	"short int"
.LASF112:
	.string	"hci_start_up"
.LASF113:
	.string	"esp_log_timestamp"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF97:
	.string	"BTM_PM_STS_SNIFF"
.LASF127:
	.string	"__func__"
.LASF98:
	.string	"BTM_PM_STS_PARK"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF16:
	.string	"uint32_t"
.LASF107:
	.string	"sub_event"
.LASF34:
	.string	"SemaphoreHandle_t"
.LASF13:
	.string	"char"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF103:
	.string	"bte_main_disable"
.LASF6:
	.string	"__uint16_t"
.LASF115:
	.string	"BTU_StartUp"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF28:
	.string	"offset"
.LASF116:
	.string	"hci_layer_get_interface"
.LASF29:
	.string	"layer_specific"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF124:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/main/bte_main.c"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF110:
	.string	"appl_trace_level"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF23:
	.string	"UINT8"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF14:
	.string	"uint8_t"
.LASF108:
	.string	"bd_addr_any"
.LASF35:
	.string	"osi_sem_t"
.LASF100:
	.string	"BTM_PM_STS_PENDING"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF119:
	.string	"BTU_ShutDown"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF38:
	.string	"result"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
