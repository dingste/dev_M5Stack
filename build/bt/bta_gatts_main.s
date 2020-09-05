	.file	"bta_gatts_main.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"BT_APPL"
.LC7:
	.string	"\033[0;31mE (%d) %s: service not created\n\033[0m\n"
	.section	.text.bta_gatts_hdl_event,"ax",@progbits
	.literal_position
	.literal .LC0, bta_gatts_cb_ptr
	.literal .LC1, .L4
	.literal .LC2, bta_gatts_srvc_build_act
	.literal .LC3, -8197
	.literal .LC4, appl_trace_level
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	bta_gatts_hdl_event
	.type	bta_gatts_hdl_event, @function
bta_gatts_hdl_event:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gatts_main.c"
	.loc 1 65 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 66 0
	l32r	a8, .LC0
	.loc 1 69 0
	movi.n	a9, 0x12
	.loc 1 66 0
	l32i.n	a10, a8, 0
.LVL1:
	.loc 1 69 0
	l16ui	a8, a2, 0
	addmi	a8, a8, -0x2000
	extui	a8, a8, 0, 16
	bltu	a9, a8, .L2
	l32r	a9, .LC1
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.bta_gatts_hdl_event,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L3
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.section	.text.bta_gatts_hdl_event
.L16:
	.loc 1 71 0
	call8	bta_gatts_api_disable
.LVL2:
	.loc 1 72 0
	j	.L2
.LVL3:
.L3:
	.loc 1 75 0
	mov.n	a11, a2
	call8	bta_gatts_register
.LVL4:
	.loc 1 76 0
	j	.L2
.LVL5:
.L5:
	.loc 1 79 0
	mov.n	a11, a2
	call8	bta_gatts_start_if
.LVL6:
	.loc 1 80 0
	j	.L2
.LVL7:
.L6:
	.loc 1 83 0
	mov.n	a11, a2
	call8	bta_gatts_deregister
.LVL8:
	.loc 1 84 0
	j	.L2
.LVL9:
.L7:
	.loc 1 87 0
	mov.n	a11, a2
	call8	bta_gatts_create_srvc
.LVL10:
	.loc 1 88 0
	j	.L2
.LVL11:
.L8:
	.loc 1 91 0
	mov.n	a11, a2
	call8	bta_gatts_indicate_handle
.LVL12:
	.loc 1 92 0
	j	.L2
.LVL13:
.L12:
	.loc 1 95 0
	mov.n	a11, a2
	call8	bta_gatts_open
.LVL14:
	.loc 1 96 0
	j	.L2
.LVL15:
.L13:
	.loc 1 99 0
	mov.n	a11, a2
	call8	bta_gatts_cancel_open
.LVL16:
	.loc 1 100 0
	j	.L2
.LVL17:
.L14:
	.loc 1 103 0
	mov.n	a11, a2
	call8	bta_gatts_close
.LVL18:
	.loc 1 104 0
	j	.L2
.LVL19:
.L10:
	.loc 1 107 0
	mov.n	a11, a2
	call8	bta_gatts_send_rsp
.LVL20:
	.loc 1 108 0
	j	.L2
.LVL21:
.L11:
.LBB2:
	.loc 1 111 0
	l16ui	a11, a2, 6
	call8	bta_gatts_find_srvc_cb_by_attr_id
.LVL22:
	.loc 1 112 0
	mov.n	a11, a2
	call8	bta_gatts_set_attr_value
.LVL23:
	.loc 1 113 0
	j	.L2
.LVL24:
.L15:
.LBE2:
	.loc 1 116 0
	mov.n	a11, a2
	call8	bta_gatts_listen
.LVL25:
	.loc 1 117 0
	j	.L2
.LVL26:
.L9:
	.loc 1 124 0
	l16ui	a11, a2, 6
	call8	bta_gatts_find_srvc_cb_by_srvc_id
.LVL27:
	.loc 1 127 0
	beqz.n	a10, .L18
	.loc 1 128 0
	l16ui	a9, a2, 0
	l32r	a8, .LC3
	mov.n	a11, a2
	add.n	a8, a9, a8
	l32r	a9, .LC2
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	callx8	a8
.LVL28:
	j	.L2
.LVL29:
.L18:
	.loc 1 130 0
	l32r	a2, .LC4
.LVL30:
	l8ui	a2, a2, 0
	beqz.n	a2, .L2
	.loc 1 130 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC6
	l32r	a12, .LC8
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	j	.L2
.LVL33:
.L17:
	.loc 1 134 0 is_stmt 1
	mov.n	a10, a2
.LVL34:
	call8	bta_gatts_send_service_change_indication
.LVL35:
.L2:
	.loc 1 142 0
	movi.n	a2, 1
	retw.n
.LFE39:
	.size	bta_gatts_hdl_event, .-bta_gatts_hdl_event
	.section	.text.bta_gatts_deinit,"ax",@progbits
	.literal_position
	.literal .LC9, bta_gatts_cb_ptr
	.align	4
	.global	bta_gatts_deinit
	.type	bta_gatts_deinit, @function
bta_gatts_deinit:
.LFB40:
	.loc 1 145 0
	entry	sp, 32
.LCFI1:
	.loc 1 146 0
	l32r	a2, .LC9
	movi	a12, 0x1e4
	l32i.n	a10, a2, 0
	movi.n	a11, 0
	call8	memset
.LVL36:
	.loc 1 148 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L22
	.loc 1 148 0 is_stmt 0 discriminator 1
	call8	free
.LVL37:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L22:
	retw.n
.LFE40:
	.size	bta_gatts_deinit, .-bta_gatts_deinit
	.comm	bta_gatts_cb_ptr,4,4
	.global	bta_gatts_srvc_build_act
	.section	.rodata.bta_gatts_srvc_build_act,"a",@progbits
	.align	4
	.type	bta_gatts_srvc_build_act, @object
	.size	bta_gatts_srvc_build_act, 24
bta_gatts_srvc_build_act:
	.word	bta_gatts_add_include_srvc
	.word	bta_gatts_add_char
	.word	bta_gatts_add_char_descr
	.word	bta_gatts_delete_service
	.word	bta_gatts_start_service
	.word	bta_gatts_stop_service
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_ble_api.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/gatt_api.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_gatt_api.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/include/bta_gatts_int.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13b2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF272
	.byte	0xc
	.4byte	.LASF273
	.4byte	.LASF274
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.byte	0x1f
	.4byte	0xec
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1a
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x22
	.4byte	0x118
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0xbf
	.4byte	0x164
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.byte	0xc0
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x4
	.byte	0xc1
	.4byte	0x89
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.byte	0xc2
	.4byte	0x89
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0xc3
	.4byte	0x89
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.byte	0xc4
	.4byte	0x164
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x173
	.uleb128 0xb
	.4byte	0xa6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0xc5
	.4byte	0x11f
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x12b
	.4byte	0x18a
	.uleb128 0xa
	.4byte	0xec
	.4byte	0x19a
	.uleb128 0xd
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x12c
	.4byte	0x1a6
	.uleb128 0xe
	.byte	0x4
	.4byte	0xec
	.uleb128 0xa
	.4byte	0xec
	.4byte	0x1bc
	.uleb128 0xd
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x1ea
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x1a5
	.4byte	0xf7
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x1a6
	.4byte	0x102
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x1a7
	.4byte	0x1ac
	.byte	0
	.uleb128 0x11
	.byte	0x14
	.byte	0x4
	.2byte	0x19d
	.4byte	0x20d
	.uleb128 0x12
	.string	"len"
	.byte	0x4
	.2byte	0x1a2
	.4byte	0xf7
	.byte	0
	.uleb128 0x12
	.string	"uu"
	.byte	0x4
	.2byte	0x1a8
	.4byte	0x1bc
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x1aa
	.4byte	0x1ea
	.uleb128 0xe
	.byte	0x4
	.4byte	0x173
	.uleb128 0x13
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.2byte	0x1c2
	.4byte	0x347
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x17
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x1b
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x1d
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x1f
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x21
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x22
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x23
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x25
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x26
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x27
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x2e
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.2byte	0x6ec
	.4byte	0x37f
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x209
	.4byte	0xec
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x139
	.4byte	0xec
	.uleb128 0x14
	.2byte	0x262
	.byte	0x8
	.2byte	0x13d
	.4byte	0x3f0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x13e
	.4byte	0xf7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x13f
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x140
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x12
	.string	"len"
	.byte	0x8
	.2byte	0x141
	.4byte	0xf7
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x142
	.4byte	0x38b
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x143
	.4byte	0x3f0
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	0xec
	.4byte	0x401
	.uleb128 0x16
	.4byte	0xa6
	.2byte	0x257
	.byte	0
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x144
	.4byte	0x397
	.uleb128 0x11
	.byte	0x8
	.byte	0x8
	.2byte	0x146
	.4byte	0x43e
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x147
	.4byte	0xf7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x148
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x149
	.4byte	0x1a6
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x14a
	.4byte	0x40d
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.2byte	0x14c
	.4byte	0x461
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x14d
	.4byte	0x7e
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x14e
	.4byte	0x44a
	.uleb128 0x17
	.2byte	0x262
	.byte	0x8
	.2byte	0x156
	.4byte	0x490
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x158
	.4byte	0x401
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x15a
	.4byte	0xf7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x15c
	.4byte	0x46d
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x166
	.4byte	0xec
	.uleb128 0x11
	.byte	0x6
	.byte	0x8
	.2byte	0x169
	.4byte	0x4e6
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x16a
	.4byte	0xf7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x16b
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x16c
	.4byte	0x10d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x16d
	.4byte	0x10d
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x16e
	.4byte	0x4a8
	.uleb128 0x14
	.2byte	0x260
	.byte	0x8
	.2byte	0x171
	.4byte	0x54d
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x172
	.4byte	0xf7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x173
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x12
	.string	"len"
	.byte	0x8
	.2byte	0x174
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x175
	.4byte	0x3f0
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x176
	.4byte	0x10d
	.2byte	0x25e
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x177
	.4byte	0x10d
	.2byte	0x25f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x178
	.4byte	0x4f2
	.uleb128 0x17
	.2byte	0x260
	.byte	0x8
	.2byte	0x17b
	.4byte	0x5a0
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x17c
	.4byte	0x4e6
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x17e
	.4byte	0x54d
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x181
	.4byte	0xf7
	.uleb128 0x19
	.string	"mtu"
	.byte	0x8
	.2byte	0x182
	.4byte	0xf7
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x183
	.4byte	0x49c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x184
	.4byte	0x559
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x9
	.byte	0x8d
	.4byte	0xec
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x9
	.byte	0xf4
	.4byte	0xf7
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x1d5
	.4byte	0xec
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x1d6
	.4byte	0x37f
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x1e2
	.4byte	0xf7
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x1e3
	.4byte	0x43e
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x1e4
	.4byte	0x461
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x1f3
	.4byte	0xec
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x212
	.4byte	0xec
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x218
	.4byte	0x490
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x227
	.4byte	0x5a0
	.uleb128 0x11
	.byte	0x1c
	.byte	0x9
	.2byte	0x229
	.4byte	0x6a0
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x22a
	.4byte	0x5ac
	.byte	0
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x22b
	.4byte	0x17e
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x22c
	.4byte	0x102
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x22d
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x22e
	.4byte	0xf7
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x22f
	.4byte	0x6a0
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x230
	.4byte	0xf7
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x231
	.4byte	0x1a6
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x622
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x232
	.4byte	0x62e
	.uleb128 0x11
	.byte	0x18
	.byte	0x9
	.2byte	0x234
	.4byte	0x6e3
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x235
	.4byte	0x5ce
	.byte	0
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x236
	.4byte	0x5ac
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x237
	.4byte	0x20d
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x238
	.4byte	0x6b2
	.uleb128 0x11
	.byte	0x1c
	.byte	0x9
	.2byte	0x23b
	.4byte	0x747
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x23c
	.4byte	0x5ce
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x23d
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x23e
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x9
	.2byte	0x23f
	.4byte	0x10d
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x240
	.4byte	0x5ac
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x241
	.4byte	0x20d
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x242
	.4byte	0x6ef
	.uleb128 0x11
	.byte	0x1c
	.byte	0x9
	.2byte	0x244
	.4byte	0x79e
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x245
	.4byte	0x5ce
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x246
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x247
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x248
	.4byte	0x5ac
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x9
	.2byte	0x249
	.4byte	0x20d
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x9
	.2byte	0x24a
	.4byte	0x753
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.2byte	0x24b
	.4byte	0x7e8
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x24c
	.4byte	0x5ce
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x24d
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x24e
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x24f
	.4byte	0x5ac
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x250
	.4byte	0x7aa
	.uleb128 0x11
	.byte	0x6
	.byte	0x9
	.2byte	0x252
	.4byte	0x825
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x253
	.4byte	0x5ce
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x254
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x255
	.4byte	0x5ac
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x256
	.4byte	0x7f4
	.uleb128 0x11
	.byte	0xe
	.byte	0x9
	.2byte	0x259
	.4byte	0x87c
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x25a
	.4byte	0x5ce
	.byte	0
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x25b
	.4byte	0x17e
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x25c
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x25d
	.4byte	0x5b7
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x25e
	.4byte	0x60a
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x25f
	.4byte	0x831
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.2byte	0x261
	.4byte	0x8ac
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x262
	.4byte	0xf7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x263
	.4byte	0x10d
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x264
	.4byte	0x888
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.2byte	0x266
	.4byte	0x8dc
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x267
	.4byte	0xf7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x268
	.4byte	0x5ac
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x269
	.4byte	0x8b8
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.2byte	0x26b
	.4byte	0x90c
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x26c
	.4byte	0x5ac
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x26d
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x26e
	.4byte	0x8e8
	.uleb128 0x11
	.byte	0x2
	.byte	0x9
	.2byte	0x270
	.4byte	0x93c
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x271
	.4byte	0x5ac
	.byte	0
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x272
	.4byte	0x5ce
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x273
	.4byte	0x918
	.uleb128 0x11
	.byte	0x2
	.byte	0x9
	.2byte	0x275
	.4byte	0x96c
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x276
	.4byte	0x5ac
	.byte	0
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x277
	.4byte	0x5ce
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x278
	.4byte	0x948
	.uleb128 0x11
	.byte	0x2
	.byte	0x9
	.2byte	0x27a
	.4byte	0x99c
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x27b
	.4byte	0x5ac
	.byte	0
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x27c
	.4byte	0x5ce
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x27d
	.4byte	0x978
	.uleb128 0xf
	.byte	0x1c
	.byte	0x9
	.2byte	0x27f
	.4byte	0xa5a
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x280
	.4byte	0x6e3
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x281
	.4byte	0x747
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x9
	.2byte	0x282
	.4byte	0x825
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x283
	.4byte	0x5ac
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x284
	.4byte	0x79e
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x287
	.4byte	0x7e8
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x288
	.4byte	0x6a6
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x289
	.4byte	0x87c
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x28a
	.4byte	0x8ac
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x28b
	.4byte	0x8dc
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x28c
	.4byte	0x90c
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x28d
	.4byte	0x96c
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x28e
	.4byte	0x99c
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x28f
	.4byte	0x93c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x291
	.4byte	0x9a8
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x29f
	.4byte	0xa72
	.uleb128 0x1a
	.4byte	0xa82
	.uleb128 0x1b
	.4byte	0x5c2
	.uleb128 0x1b
	.4byte	0xa82
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa5a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x24
	.4byte	0xb1a
	.uleb128 0x1c
	.4byte	.LASF171
	.2byte	0x2000
	.uleb128 0x1c
	.4byte	.LASF172
	.2byte	0x2001
	.uleb128 0x1c
	.4byte	.LASF173
	.2byte	0x2002
	.uleb128 0x1c
	.4byte	.LASF174
	.2byte	0x2003
	.uleb128 0x1c
	.4byte	.LASF175
	.2byte	0x2004
	.uleb128 0x1c
	.4byte	.LASF176
	.2byte	0x2005
	.uleb128 0x1c
	.4byte	.LASF177
	.2byte	0x2006
	.uleb128 0x1c
	.4byte	.LASF178
	.2byte	0x2007
	.uleb128 0x1c
	.4byte	.LASF179
	.2byte	0x2008
	.uleb128 0x1c
	.4byte	.LASF180
	.2byte	0x2009
	.uleb128 0x1c
	.4byte	.LASF181
	.2byte	0x200a
	.uleb128 0x1c
	.4byte	.LASF182
	.2byte	0x200b
	.uleb128 0x1c
	.4byte	.LASF183
	.2byte	0x200c
	.uleb128 0x1c
	.4byte	.LASF184
	.2byte	0x200d
	.uleb128 0x1c
	.4byte	.LASF185
	.2byte	0x200e
	.uleb128 0x1c
	.4byte	.LASF186
	.2byte	0x200f
	.uleb128 0x1c
	.4byte	.LASF187
	.2byte	0x2010
	.uleb128 0x1c
	.4byte	.LASF188
	.2byte	0x2011
	.uleb128 0x1c
	.4byte	.LASF189
	.2byte	0x2012
	.byte	0
	.uleb128 0x7
	.byte	0x20
	.byte	0xa
	.byte	0x43
	.4byte	0xb47
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x44
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF190
	.byte	0xa
	.byte	0x45
	.4byte	0x20d
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0xa
	.byte	0x46
	.4byte	0xb47
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa66
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0xa
	.byte	0x47
	.4byte	0xb1a
	.uleb128 0x7
	.byte	0xa
	.byte	0xa
	.byte	0x49
	.4byte	0xb79
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x4a
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xa
	.byte	0x4b
	.4byte	0x5ce
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0xa
	.byte	0x4c
	.4byte	0xb58
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0xa
	.byte	0x4e
	.4byte	0xb79
	.uleb128 0x7
	.byte	0x24
	.byte	0xa
	.byte	0x50
	.4byte	0xbe0
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x51
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xa
	.byte	0x52
	.4byte	0x5ce
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF195
	.byte	0xa
	.byte	0x53
	.4byte	0x20d
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF196
	.byte	0xa
	.byte	0x54
	.4byte	0xf7
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF197
	.byte	0xa
	.byte	0x55
	.4byte	0xec
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF198
	.byte	0xa
	.byte	0x56
	.4byte	0x10d
	.byte	0x23
	.byte	0
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0xa
	.byte	0x58
	.4byte	0xb8f
	.uleb128 0x7
	.byte	0x28
	.byte	0xa
	.byte	0x5a
	.4byte	0xc3c
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x5b
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0xa
	.byte	0x5c
	.4byte	0x20d
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF200
	.byte	0xa
	.byte	0x5d
	.4byte	0x5da
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF201
	.byte	0xa
	.byte	0x5e
	.4byte	0x5fe
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF202
	.byte	0xa
	.byte	0x5f
	.4byte	0x5f2
	.byte	0x1f
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0xa
	.byte	0x60
	.4byte	0x5e6
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0xa
	.byte	0x61
	.4byte	0xbeb
	.uleb128 0x7
	.byte	0xa
	.byte	0xa
	.byte	0x63
	.4byte	0xc68
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x64
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF204
	.byte	0xa
	.byte	0x65
	.4byte	0xf7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0xa
	.byte	0x66
	.4byte	0xc47
	.uleb128 0x7
	.byte	0x28
	.byte	0xa
	.byte	0x68
	.4byte	0xcb8
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x69
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF206
	.byte	0xa
	.byte	0x6a
	.4byte	0x20d
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF200
	.byte	0xa
	.byte	0x6b
	.4byte	0x5da
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF202
	.byte	0xa
	.byte	0x6c
	.4byte	0x5f2
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0xa
	.byte	0x6d
	.4byte	0x5e6
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF207
	.byte	0xa
	.byte	0x6e
	.4byte	0xc73
	.uleb128 0x1d
	.2byte	0x266
	.byte	0xa
	.byte	0x70
	.4byte	0xd09
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x71
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0xa
	.byte	0x72
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0xa
	.byte	0x73
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF208
	.byte	0xa
	.byte	0x74
	.4byte	0x10d
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0xa
	.byte	0x75
	.4byte	0x3f0
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF209
	.byte	0xa
	.byte	0x76
	.4byte	0xcc3
	.uleb128 0x7
	.byte	0x14
	.byte	0xa
	.byte	0x78
	.4byte	0xd4d
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x79
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0xa
	.byte	0x7a
	.4byte	0x102
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0xa
	.byte	0x7b
	.4byte	0x5ac
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF210
	.byte	0xa
	.byte	0x7c
	.4byte	0xd4d
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x616
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0xa
	.byte	0x7d
	.4byte	0xd14
	.uleb128 0x7
	.byte	0x10
	.byte	0xa
	.byte	0x7f
	.4byte	0xd8b
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x80
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF212
	.byte	0xa
	.byte	0x81
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0xa
	.byte	0x82
	.4byte	0x1a6
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF213
	.byte	0xa
	.byte	0x83
	.4byte	0xd5e
	.uleb128 0x7
	.byte	0xa
	.byte	0xa
	.byte	0x85
	.4byte	0xdb7
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x86
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0xa
	.byte	0x87
	.4byte	0x60a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0xa
	.byte	0x88
	.4byte	0xd96
	.uleb128 0x7
	.byte	0x12
	.byte	0xa
	.byte	0x8b
	.4byte	0xe07
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x8c
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0xa
	.byte	0x8d
	.4byte	0x17e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xa
	.byte	0x8e
	.4byte	0x5ce
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF215
	.byte	0xa
	.byte	0x8f
	.4byte	0x10d
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0xa
	.byte	0x90
	.4byte	0x60a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0xa
	.byte	0x92
	.4byte	0xdc2
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0xa
	.byte	0x94
	.4byte	0xe07
	.uleb128 0x7
	.byte	0x10
	.byte	0xa
	.byte	0x96
	.4byte	0xe56
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x97
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0xa
	.byte	0x98
	.4byte	0x19a
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xa
	.byte	0x99
	.4byte	0x5ce
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF218
	.byte	0xa
	.byte	0x9a
	.4byte	0x10d
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0xa
	.byte	0x9b
	.4byte	0xe1d
	.uleb128 0x7
	.byte	0x10
	.byte	0xa
	.byte	0x9d
	.4byte	0xe8e
	.uleb128 0x9
	.string	"hdr"
	.byte	0xa
	.byte	0x9e
	.4byte	0x173
	.byte	0
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xa
	.byte	0x9f
	.4byte	0x5ce
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0xa
	.byte	0xa0
	.4byte	0x17e
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0xa
	.byte	0xa1
	.4byte	0xe61
	.uleb128 0x1e
	.2byte	0x268
	.byte	0xa
	.byte	0xa3
	.4byte	0xf53
	.uleb128 0x1f
	.string	"hdr"
	.byte	0xa
	.byte	0xa4
	.4byte	0x173
	.uleb128 0x20
	.4byte	.LASF221
	.byte	0xa
	.byte	0xa5
	.4byte	0xb4d
	.uleb128 0x20
	.4byte	.LASF222
	.byte	0xa
	.byte	0xa6
	.4byte	0xb84
	.uleb128 0x20
	.4byte	.LASF223
	.byte	0xa
	.byte	0xa7
	.4byte	0xbe0
	.uleb128 0x20
	.4byte	.LASF224
	.byte	0xa
	.byte	0xa8
	.4byte	0xc68
	.uleb128 0x20
	.4byte	.LASF225
	.byte	0xa
	.byte	0xa9
	.4byte	0xc3c
	.uleb128 0x20
	.4byte	.LASF226
	.byte	0xa
	.byte	0xaa
	.4byte	0xcb8
	.uleb128 0x20
	.4byte	.LASF227
	.byte	0xa
	.byte	0xab
	.4byte	0xdb7
	.uleb128 0x20
	.4byte	.LASF228
	.byte	0xa
	.byte	0xac
	.4byte	0xd09
	.uleb128 0x20
	.4byte	.LASF229
	.byte	0xa
	.byte	0xad
	.4byte	0xd53
	.uleb128 0x20
	.4byte	.LASF230
	.byte	0xa
	.byte	0xae
	.4byte	0xd8b
	.uleb128 0x20
	.4byte	.LASF231
	.byte	0xa
	.byte	0xaf
	.4byte	0xe07
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0xa
	.byte	0xb0
	.4byte	0xe12
	.uleb128 0x20
	.4byte	.LASF233
	.byte	0xa
	.byte	0xb2
	.4byte	0xb79
	.uleb128 0x20
	.4byte	.LASF234
	.byte	0xa
	.byte	0xb4
	.4byte	0xe56
	.uleb128 0x20
	.4byte	.LASF235
	.byte	0xa
	.byte	0xb5
	.4byte	0xe8e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF236
	.byte	0xa
	.byte	0xb6
	.4byte	0xe99
	.uleb128 0x7
	.byte	0x20
	.byte	0xa
	.byte	0xb9
	.4byte	0xf97
	.uleb128 0x8
	.4byte	.LASF237
	.byte	0xa
	.byte	0xba
	.4byte	0x10d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF190
	.byte	0xa
	.byte	0xbb
	.4byte	0x20d
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0xa
	.byte	0xbc
	.4byte	0xb47
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF238
	.byte	0xa
	.byte	0xbd
	.4byte	0x5ce
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF239
	.byte	0xa
	.byte	0xbe
	.4byte	0xf5e
	.uleb128 0x7
	.byte	0x1c
	.byte	0xa
	.byte	0xc1
	.4byte	0xff3
	.uleb128 0x8
	.4byte	.LASF195
	.byte	0xa
	.byte	0xc2
	.4byte	0x20d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0xa
	.byte	0xc3
	.4byte	0xf7
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF240
	.byte	0xa
	.byte	0xc4
	.4byte	0xec
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF241
	.byte	0xa
	.byte	0xc5
	.4byte	0xec
	.byte	0x17
	.uleb128 0x9
	.string	"idx"
	.byte	0xa
	.byte	0xc6
	.4byte	0xec
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF237
	.byte	0xa
	.byte	0xc7
	.4byte	0x10d
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.4byte	.LASF242
	.byte	0xa
	.byte	0xc9
	.4byte	0xfa2
	.uleb128 0x1d
	.2byte	0x1e4
	.byte	0xa
	.byte	0xcd
	.4byte	0x102d
	.uleb128 0x8
	.4byte	.LASF243
	.byte	0xa
	.byte	0xce
	.4byte	0x10d
	.byte	0
	.uleb128 0x9
	.string	"rcb"
	.byte	0xa
	.byte	0xcf
	.4byte	0x102d
	.byte	0x4
	.uleb128 0x21
	.4byte	.LASF244
	.byte	0xa
	.byte	0xd0
	.4byte	0x103d
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0xf97
	.4byte	0x103d
	.uleb128 0xd
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xff3
	.4byte	0x104d
	.uleb128 0xd
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF245
	.byte	0xa
	.byte	0xd1
	.4byte	0xffe
	.uleb128 0x3
	.4byte	.LASF246
	.byte	0x1
	.byte	0x23
	.4byte	0x1063
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1069
	.uleb128 0x1a
	.4byte	0x1079
	.uleb128 0x1b
	.4byte	0x1079
	.uleb128 0x1b
	.4byte	0x107f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xff3
	.uleb128 0xe
	.byte	0x4
	.4byte	0xf53
	.uleb128 0x22
	.4byte	.LASF275
	.byte	0x1
	.byte	0x40
	.4byte	0x10d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1233
	.uleb128 0x23
	.4byte	.LASF276
	.byte	0x1
	.byte	0x40
	.4byte	0x219
	.4byte	.LLST0
	.uleb128 0x24
	.4byte	.LASF247
	.byte	0x1
	.byte	0x42
	.4byte	0x1233
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	.LASF248
	.byte	0x1
	.byte	0x43
	.4byte	0x1079
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x1101
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.byte	0x6e
	.4byte	0xf7
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LVL22
	.4byte	0x12e4
	.uleb128 0x27
	.4byte	.LVL23
	.4byte	0x12f0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL2
	.4byte	0x12fb
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0x1306
	.4byte	0x111e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0x1311
	.4byte	0x1132
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL8
	.4byte	0x131c
	.4byte	0x1146
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL10
	.4byte	0x1327
	.4byte	0x115a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0x1332
	.4byte	0x116e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x133d
	.4byte	0x1182
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL16
	.4byte	0x1348
	.4byte	0x1196
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL18
	.4byte	0x1353
	.4byte	0x11aa
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0x135e
	.4byte	0x11be
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL25
	.4byte	0x1369
	.4byte	0x11d2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL27
	.4byte	0x1374
	.uleb128 0x2a
	.4byte	.LVL28
	.4byte	0x11eb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL31
	.4byte	0x1380
	.uleb128 0x29
	.4byte	.LVL32
	.4byte	0x138b
	.4byte	0x1222
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x27
	.4byte	.LVL35
	.4byte	0x1396
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x104d
	.uleb128 0x2b
	.4byte	.LASF277
	.byte	0x1
	.byte	0x90
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1272
	.uleb128 0x29
	.4byte	.LVL36
	.4byte	0x13a1
	.4byte	0x1268
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e4
	.byte	0
	.uleb128 0x26
	.4byte	.LVL37
	.4byte	0x13aa
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF249
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x1285
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x2d
	.4byte	0x18a
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x129d
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x18a
	.uleb128 0x2e
	.4byte	.LASF251
	.byte	0xb
	.byte	0xa6
	.4byte	0xec
	.uleb128 0x2f
	.4byte	.LASF252
	.byte	0x1
	.byte	0x33
	.4byte	0x1233
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_gatts_cb_ptr
	.uleb128 0xa
	.4byte	0x1058
	.4byte	0x12ce
	.uleb128 0xd
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF253
	.byte	0x1
	.byte	0x26
	.4byte	0x12df
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_gatts_srvc_build_act
	.uleb128 0x2d
	.4byte	0x12be
	.uleb128 0x30
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x104
	.uleb128 0x31
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0xa
	.byte	0xef
	.uleb128 0x31
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xa
	.byte	0xe6
	.uleb128 0x31
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xa
	.byte	0xe8
	.uleb128 0x31
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0xa
	.byte	0xe9
	.uleb128 0x31
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0xa
	.byte	0xea
	.uleb128 0x31
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0xa
	.byte	0xeb
	.uleb128 0x31
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0xa
	.byte	0xf6
	.uleb128 0x31
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0xa
	.byte	0xf9
	.uleb128 0x31
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0xa
	.byte	0xfa
	.uleb128 0x31
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0xa
	.byte	0xfb
	.uleb128 0x31
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0xa
	.byte	0xf5
	.uleb128 0x31
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0xa
	.byte	0xfc
	.uleb128 0x30
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0xa
	.2byte	0x103
	.uleb128 0x31
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0x5
	.byte	0x57
	.uleb128 0x31
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0x5
	.byte	0x6b
	.uleb128 0x31
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0xa
	.byte	0xfd
	.uleb128 0x32
	.4byte	.LASF278
	.4byte	.LASF278
	.uleb128 0x31
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0xc
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x5
	.byte	0x3
	.4byte	bta_gatts_cb_ptr
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x2
	.byte	0x72
	.sleb128 6
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
.LASF13:
	.string	"long int"
.LASF89:
	.string	"BTM_PM_STS_PARK"
.LASF189:
	.string	"BTA_GATTS_API_SEND_SERVICE_CHANGE_EVT"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF35:
	.string	"uuid16"
.LASF86:
	.string	"BTM_PM_STS_ACTIVE"
.LASF152:
	.string	"tBTA_GATTS_CONF"
.LASF277:
	.string	"bta_gatts_deinit"
.LASF149:
	.string	"tBTA_GATTS_CONN"
.LASF162:
	.string	"conn"
.LASF167:
	.string	"cancel_open"
.LASF248:
	.string	"p_srvc_cb"
.LASF130:
	.string	"remote_bda"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF121:
	.string	"tBTA_GATTS_IF"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF143:
	.string	"char_uuid"
.LASF24:
	.string	"UINT16"
.LASF126:
	.string	"tBTA_GATT_TRANSPORT"
.LASF112:
	.string	"is_prep"
.LASF202:
	.string	"control"
.LASF7:
	.string	"unsigned int"
.LASF193:
	.string	"tBTA_GATTS_INT_START_IF"
.LASF132:
	.string	"p_data"
.LASF264:
	.string	"bta_gatts_close"
.LASF137:
	.string	"tBTA_GATTS_REG_OPER"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF154:
	.string	"tBTA_GATTS_SERVICE_CHANGE"
.LASF34:
	.string	"BD_ADDR_PTR"
.LASF230:
	.string	"api_set_val"
.LASF268:
	.string	"esp_log_timestamp"
.LASF104:
	.string	"auto_rsp"
.LASF176:
	.string	"BTA_GATTS_API_ADD_INCL_SRVC_EVT"
.LASF108:
	.string	"tGATT_EXEC_FLAG"
.LASF211:
	.string	"tBTA_GATTS_API_RSP"
.LASF26:
	.string	"BOOLEAN"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF106:
	.string	"attr_value"
.LASF195:
	.string	"service_uuid"
.LASF175:
	.string	"BTA_GATTS_API_INDICATION_EVT"
.LASF275:
	.string	"bta_gatts_hdl_event"
.LASF36:
	.string	"uuid32"
.LASF158:
	.string	"create"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF141:
	.string	"tBTA_GATTS_CREATE"
.LASF227:
	.string	"api_start"
.LASF267:
	.string	"bta_gatts_find_srvc_cb_by_srvc_id"
.LASF255:
	.string	"bta_gatts_set_attr_value"
.LASF25:
	.string	"UINT32"
.LASF12:
	.string	"uint32_t"
.LASF171:
	.string	"BTA_GATTS_API_REG_EVT"
.LASF101:
	.string	"attr_len"
.LASF263:
	.string	"bta_gatts_cancel_open"
.LASF215:
	.string	"is_direct"
.LASF28:
	.string	"event"
.LASF88:
	.string	"BTM_PM_STS_SNIFF"
.LASF216:
	.string	"tBTA_GATTS_API_OPEN"
.LASF219:
	.string	"tBTA_GATTS_API_LISTEN"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF256:
	.string	"bta_gatts_api_disable"
.LASF9:
	.string	"long long unsigned int"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF147:
	.string	"reason"
.LASF249:
	.string	"bd_addr_any"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF225:
	.string	"api_add_char"
.LASF260:
	.string	"bta_gatts_create_srvc"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF4:
	.string	"__uint16_t"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF262:
	.string	"bta_gatts_open"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF139:
	.string	"svc_instance"
.LASF90:
	.string	"BTM_PM_STS_SSR"
.LASF170:
	.string	"tBTA_GATTS_CBACK"
.LASF261:
	.string	"bta_gatts_indicate_handle"
.LASF98:
	.string	"value"
.LASF159:
	.string	"srvc_oper"
.LASF150:
	.string	"congested"
.LASF100:
	.string	"attr_max_len"
.LASF107:
	.string	"tGATTS_RSP"
.LASF161:
	.string	"req_data"
.LASF29:
	.string	"offset"
.LASF240:
	.string	"inst_num"
.LASF187:
	.string	"BTA_GATTS_API_LISTEN_EVT"
.LASF27:
	.string	"_Bool"
.LASF239:
	.string	"tBTA_GATTS_RCB"
.LASF122:
	.string	"tBTA_GATT_PERM"
.LASF272:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF145:
	.string	"tBAT_GATTS_ATTR_VAL_RESULT"
.LASF117:
	.string	"tGATTS_DATA"
.LASF136:
	.string	"uuid"
.LASF271:
	.string	"free"
.LASF200:
	.string	"perm"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF204:
	.string	"included_service_id"
.LASF242:
	.string	"tBTA_GATTS_SRVC_CB"
.LASF258:
	.string	"bta_gatts_start_if"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF234:
	.string	"api_listen"
.LASF217:
	.string	"tBTA_GATTS_API_CANCEL_OPEN"
.LASF253:
	.string	"bta_gatts_srvc_build_act"
.LASF127:
	.string	"tBTA_GATTS_RSP"
.LASF33:
	.string	"BD_ADDR"
.LASF185:
	.string	"BTA_GATTS_API_CANCEL_OPEN_EVT"
.LASF16:
	.string	"char"
.LASF198:
	.string	"is_pri"
.LASF37:
	.string	"uuid128"
.LASF165:
	.string	"close"
.LASF99:
	.string	"tGATT_VALUE"
.LASF174:
	.string	"BTA_GATTS_API_CREATE_SRVC_EVT"
.LASF197:
	.string	"inst"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF236:
	.string	"tBTA_GATTS_DATA"
.LASF173:
	.string	"BTA_GATTS_API_DEREG_EVT"
.LASF120:
	.string	"tBTA_GATTS_EVT"
.LASF10:
	.string	"uint8_t"
.LASF247:
	.string	"p_cb"
.LASF30:
	.string	"layer_specific"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF229:
	.string	"api_rsp"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF169:
	.string	"tBTA_GATTS"
.LASF134:
	.string	"tBTA_GATTS_REQ"
.LASF151:
	.string	"tBTA_GATTS_CONGEST"
.LASF8:
	.string	"long long int"
.LASF266:
	.string	"bta_gatts_listen"
.LASF140:
	.string	"is_primary"
.LASF148:
	.string	"transport"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF124:
	.string	"tBTA_GATTS_ATTR_CONTROL"
.LASF160:
	.string	"add_result"
.LASF214:
	.string	"tBTA_GATTS_API_START"
.LASF125:
	.string	"tBTA_GATT_CHAR_PROP"
.LASF131:
	.string	"trans_id"
.LASF191:
	.string	"p_cback"
.LASF278:
	.string	"memset"
.LASF208:
	.string	"need_confirm"
.LASF221:
	.string	"api_reg"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF252:
	.string	"bta_gatts_cb_ptr"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF274:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF93:
	.string	"tGATT_IF"
.LASF237:
	.string	"in_use"
.LASF123:
	.string	"tBTA_GATT_ATTR_VAL"
.LASF182:
	.string	"BTA_GATTS_API_RSP_EVT"
.LASF157:
	.string	"reg_oper"
.LASF269:
	.string	"esp_log_write"
.LASF223:
	.string	"api_create_svc"
.LASF92:
	.string	"BTM_PM_STS_ERROR"
.LASF210:
	.string	"p_rsp"
.LASF273:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gatts_main.c"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF276:
	.string	"p_msg"
.LASF224:
	.string	"api_add_incl_srvc"
.LASF31:
	.string	"data"
.LASF105:
	.string	"tGATTS_ATTR_CONTROL"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF257:
	.string	"bta_gatts_register"
.LASF164:
	.string	"confirm"
.LASF11:
	.string	"uint16_t"
.LASF270:
	.string	"bta_gatts_send_service_change_indication"
.LASF209:
	.string	"tBTA_GATTS_API_INDICATION"
.LASF97:
	.string	"auth_req"
.LASF87:
	.string	"BTM_PM_STS_HOLD"
.LASF254:
	.string	"bta_gatts_find_srvc_cb_by_attr_id"
.LASF133:
	.string	"data_len"
.LASF110:
	.string	"need_rsp"
.LASF180:
	.string	"BTA_GATTS_API_START_SRVC_EVT"
.LASF153:
	.string	"tBTA_GATTS_CLOSE"
.LASF232:
	.string	"api_cancel_open"
.LASF250:
	.string	"bd_addr_null"
.LASF245:
	.string	"tBTA_GATTS_CB"
.LASF228:
	.string	"api_indicate"
.LASF205:
	.string	"tBTA_GATTS_API_ADD_INCL_SRVC"
.LASF243:
	.string	"enabled"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF2:
	.string	"short int"
.LASF95:
	.string	"conn_id"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF184:
	.string	"BTA_GATTS_API_OPEN_EVT"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF163:
	.string	"congest"
.LASF212:
	.string	"length"
.LASF138:
	.string	"service_id"
.LASF246:
	.string	"tBTA_GATTS_SRVC_ACT"
.LASF220:
	.string	"tBTA_GATTS_API_SEND_SERVICE_CHANGE"
.LASF38:
	.string	"tBT_UUID"
.LASF203:
	.string	"tBTA_GATTS_API_ADD_CHAR"
.LASF94:
	.string	"tGATT_AUTH_REQ"
.LASF206:
	.string	"descr_uuid"
.LASF119:
	.string	"tBTA_GATT_REASON"
.LASF172:
	.string	"BTA_GATTS_INT_START_IF_EVT"
.LASF166:
	.string	"open"
.LASF177:
	.string	"BTA_GATTS_API_ADD_CHAR_EVT"
.LASF190:
	.string	"app_uuid"
.LASF3:
	.string	"__uint8_t"
.LASF156:
	.string	"tBTA_GATTS_CANCEL_OPEN"
.LASF218:
	.string	"start"
.LASF111:
	.string	"tGATT_READ_REQ"
.LASF146:
	.string	"tBTA_GATTS_SRVC_OPER"
.LASF113:
	.string	"tGATT_WRITE_REQ"
.LASF155:
	.string	"tBTA_GATTS_OPEN"
.LASF128:
	.string	"tBTA_GATTS_REQ_DATA"
.LASF233:
	.string	"int_start_if"
.LASF199:
	.string	"tBTA_GATTS_API_CREATE_SRVC"
.LASF114:
	.string	"read_req"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"sizetype"
.LASF238:
	.string	"gatt_if"
.LASF15:
	.string	"long unsigned int"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF231:
	.string	"api_open"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF192:
	.string	"tBTA_GATTS_API_REG"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF1:
	.string	"unsigned char"
.LASF179:
	.string	"BTA_GATTS_API_DEL_SRVC_EVT"
.LASF6:
	.string	"__uint32_t"
.LASF235:
	.string	"api_send_service_change"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF142:
	.string	"attr_id"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF168:
	.string	"service_change"
.LASF244:
	.string	"srvc_cb"
.LASF265:
	.string	"bta_gatts_send_rsp"
.LASF226:
	.string	"api_add_char_descr"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF259:
	.string	"bta_gatts_deregister"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF109:
	.string	"is_long"
.LASF188:
	.string	"BTA_GATTS_API_DISABLE_EVT"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF178:
	.string	"BTA_GATTS_API_ADD_DESCR_EVT"
.LASF144:
	.string	"tBTA_GATTS_ADD_RESULT"
.LASF251:
	.string	"appl_trace_level"
.LASF102:
	.string	"attr_val"
.LASF115:
	.string	"write_req"
.LASF0:
	.string	"signed char"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF135:
	.string	"server_if"
.LASF5:
	.string	"short unsigned int"
.LASF96:
	.string	"handle"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF207:
	.string	"tBTA_GATTS_API_ADD_DESCR"
.LASF118:
	.string	"tBTA_GATT_STATUS"
.LASF129:
	.string	"status"
.LASF196:
	.string	"num_handle"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF186:
	.string	"BTA_GATTS_API_CLOSE_EVT"
.LASF23:
	.string	"UINT8"
.LASF181:
	.string	"BTA_GATTS_API_STOP_SRVC_EVT"
.LASF201:
	.string	"property"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF194:
	.string	"tBTA_GATTS_API_DEREG"
.LASF213:
	.string	"tBTA_GATTS_API_SET_ATTR_VAL"
.LASF222:
	.string	"api_dereg"
.LASF241:
	.string	"rcb_idx"
.LASF91:
	.string	"BTM_PM_STS_PENDING"
.LASF103:
	.string	"tGATT_ATTR_VAL"
.LASF183:
	.string	"BTA_GATTS_API_SET_ATTR_VAL_EVT"
.LASF32:
	.string	"BT_HDR"
.LASF116:
	.string	"exec_write"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF85:
	.string	"BTM_EIR_MAX_SERVICES"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
