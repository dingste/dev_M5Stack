	.file	"bta_sdp_api.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"BT_APPL"
.LC4:
	.string	"\033[0;32mI (%d) %s: %s\n\033[0m\n"
	.section	.text.BTA_SdpEnable,"ax",@progbits
	.literal_position
	.literal .LC0, appl_trace_level
	.literal .LC1, __FUNCTION__$8874
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, bta_sdp_cb_ptr
	.literal .LC7, bta_sdp_reg
	.literal .LC8, 8448
	.align	4
	.global	BTA_SdpEnable
	.type	BTA_SdpEnable, @function
BTA_SdpEnable:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sdp/bta_sdp_api.c"
	.loc 1 59 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 63 0
	l32r	a3, .LC0
	l8ui	a3, a3, 0
	bltui	a3, 3, .L2
	.loc 1 63 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC3
	l32r	a15, .LC1
	l32r	a12, .LC5
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL3:
.L2:
	.loc 1 64 0 is_stmt 1
	bnez.n	a2, .L3
.L5:
	.loc 1 60 0
	movi.n	a2, 1
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 64 0 discriminator 1
	movi.n	a10, 0x21
	call8	bta_sys_is_register
.LVL6:
	mov.n	a3, a10
	.loc 1 64 0 discriminator 1
	bnez.n	a10, .L5
	.loc 1 65 0
	l32r	a8, .LC6
	mov.n	a11, a10
	l32i.n	a10, a8, 0
	movi.n	a12, 0xc
	call8	memset
.LVL7:
	.loc 1 68 0
	l32r	a11, .LC7
	movi.n	a10, 0x21
	call8	bta_sys_register
.LVL8:
	.loc 1 70 0
	movi.n	a10, 0xc
	call8	malloc
.LVL9:
	beqz.n	a10, .L5
	.loc 1 72 0
	l32r	a4, .LC8
	.loc 1 73 0
	s32i.n	a2, a10, 8
	.loc 1 72 0
	s16i	a4, a10, 0
	.loc 1 74 0
	call8	bta_sys_sendmsg
.LVL10:
	.loc 1 75 0
	mov.n	a2, a3
.LVL11:
	.loc 1 79 0
	retw.n
.LFE39:
	.size	BTA_SdpEnable, .-BTA_SdpEnable
	.section	.text.BTA_SdpSearch,"ax",@progbits
	.literal_position
	.literal .LC11, appl_trace_level
	.literal .LC12, __FUNCTION__$8881
	.literal .LC13, .LC2
	.literal .LC14, .LC4
	.literal .LC15, 8449
	.align	4
	.global	BTA_SdpSearch
	.type	BTA_SdpSearch, @function
BTA_SdpSearch:
.LFB40:
	.loc 1 95 0
.LVL12:
	entry	sp, 32
.LCFI1:
.LVL13:
	.loc 1 99 0
	l32r	a4, .LC11
	l8ui	a4, a4, 0
	bltui	a4, 3, .L10
	.loc 1 99 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL14:
	l32r	a11, .LC13
	l32r	a15, .LC12
	l32r	a12, .LC14
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL15:
.L10:
	.loc 1 100 0 is_stmt 1
	movi.n	a10, 0x24
	call8	malloc
.LVL16:
	mov.n	a4, a10
.LVL17:
	.loc 1 96 0
	movi.n	a8, 1
	.loc 1 100 0
	beqz.n	a10, .L11
	.loc 1 101 0
	l32r	a5, .LC15
	.loc 1 102 0
	addi.n	a9, a10, 8
	.loc 1 101 0
	s16i	a5, a10, 0
.LVL18:
	movi.n	a8, 6
	loop	a8, .L12_LEND
.LVL19:
.L12:
.LBB4:
.LBB5:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.loc 2 718 0
	l8ui	a10, a2, 0
	addi.n	a2, a2, 1
.LVL20:
	s8i	a10, a9, 0
.LVL21:
	addi.n	a9, a9, 1
	.L12_LEND:
.LBE5:
.LBE4:
	.loc 1 104 0
	movi.n	a12, 0x14
	mov.n	a11, a3
	addi	a10, a4, 16
	call8	memcpy
.LVL22:
	.loc 1 105 0
	mov.n	a10, a4
	call8	bta_sys_sendmsg
.LVL23:
	.loc 1 106 0
	movi.n	a8, 0
.LVL24:
.L11:
	.loc 1 110 0
	mov.n	a2, a8
	retw.n
.LFE40:
	.size	BTA_SdpSearch, .-BTA_SdpSearch
	.section	.text.BTA_SdpCreateRecordByUser,"ax",@progbits
	.literal_position
	.literal .LC16, appl_trace_level
	.literal .LC17, __FUNCTION__$8887
	.literal .LC18, .LC2
	.literal .LC19, .LC4
	.literal .LC20, 8450
	.align	4
	.global	BTA_SdpCreateRecordByUser
	.type	BTA_SdpCreateRecordByUser, @function
BTA_SdpCreateRecordByUser:
.LFB41:
	.loc 1 125 0
.LVL25:
	entry	sp, 32
.LCFI2:
.LVL26:
	.loc 1 129 0
	l32r	a8, .LC16
	l8ui	a8, a8, 0
	bltui	a8, 3, .L17
	.loc 1 129 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC18
	l32r	a15, .LC17
	l32r	a12, .LC19
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL28:
.L17:
	.loc 1 130 0 is_stmt 1
	movi.n	a10, 0xc
	call8	malloc
.LVL29:
	.loc 1 126 0
	movi.n	a8, 1
	.loc 1 130 0
	beqz.n	a10, .L18
	.loc 1 131 0
	l32r	a3, .LC20
	.loc 1 132 0
	s32i.n	a2, a10, 8
	.loc 1 131 0
	s16i	a3, a10, 0
	.loc 1 133 0
	call8	bta_sys_sendmsg
.LVL30:
	.loc 1 134 0
	movi.n	a8, 0
.LVL31:
.L18:
	.loc 1 138 0
	mov.n	a2, a8
.LVL32:
	retw.n
.LFE41:
	.size	BTA_SdpCreateRecordByUser, .-BTA_SdpCreateRecordByUser
	.section	.text.BTA_SdpRemoveRecordByUser,"ax",@progbits
	.literal_position
	.literal .LC21, appl_trace_level
	.literal .LC22, __FUNCTION__$8893
	.literal .LC23, .LC2
	.literal .LC24, .LC4
	.literal .LC25, 8451
	.align	4
	.global	BTA_SdpRemoveRecordByUser
	.type	BTA_SdpRemoveRecordByUser, @function
BTA_SdpRemoveRecordByUser:
.LFB42:
	.loc 1 153 0
.LVL33:
	entry	sp, 32
.LCFI3:
.LVL34:
	.loc 1 157 0
	l32r	a8, .LC21
	l8ui	a8, a8, 0
	bltui	a8, 3, .L22
	.loc 1 157 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC23
	l32r	a15, .LC22
	l32r	a12, .LC24
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL36:
.L22:
	.loc 1 158 0 is_stmt 1
	movi.n	a10, 0xc
	call8	malloc
.LVL37:
	.loc 1 154 0
	movi.n	a8, 1
	.loc 1 158 0
	beqz.n	a10, .L23
	.loc 1 159 0
	l32r	a3, .LC25
	.loc 1 160 0
	s32i.n	a2, a10, 8
	.loc 1 159 0
	s16i	a3, a10, 0
	.loc 1 161 0
	call8	bta_sys_sendmsg
.LVL38:
	.loc 1 162 0
	movi.n	a8, 0
.LVL39:
.L23:
	.loc 1 166 0
	mov.n	a2, a8
.LVL40:
	retw.n
.LFE42:
	.size	BTA_SdpRemoveRecordByUser, .-BTA_SdpRemoveRecordByUser
	.section	.rodata.__FUNCTION__$8893,"a",@progbits
	.type	__FUNCTION__$8893, @object
	.size	__FUNCTION__$8893, 26
__FUNCTION__$8893:
	.string	"BTA_SdpRemoveRecordByUser"
	.section	.rodata.__FUNCTION__$8887,"a",@progbits
	.type	__FUNCTION__$8887, @object
	.size	__FUNCTION__$8887, 26
__FUNCTION__$8887:
	.string	"BTA_SdpCreateRecordByUser"
	.section	.rodata.__FUNCTION__$8881,"a",@progbits
	.type	__FUNCTION__$8881, @object
	.size	__FUNCTION__$8881, 14
__FUNCTION__$8881:
	.string	"BTA_SdpSearch"
	.section	.rodata.__FUNCTION__$8874,"a",@progbits
	.type	__FUNCTION__$8874, @object
	.size	__FUNCTION__$8874, 14
__FUNCTION__$8874:
	.string	"BTA_SdpEnable"
	.section	.rodata.bta_sdp_reg,"a",@progbits
	.align	4
	.type	bta_sdp_reg, @object
	.size	bta_sdp_reg, 8
bta_sdp_reg:
	.word	bta_sdp_sm_execute
	.word	0
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI3-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/std/include/bt_sdp.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sdp_api.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sdp/include/bta_sdp_int.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd24
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0xc
	.4byte	.LASF185
	.4byte	.LASF186
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x8
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x1f
	.4byte	0x10b
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x2
	.byte	0x1a
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x1b
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x1c
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x2
	.byte	0x22
	.4byte	0x137
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.uleb128 0xa
	.byte	0x8
	.byte	0x2
	.byte	0xbf
	.4byte	0x183
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.byte	0xc0
	.4byte	0x94
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x2
	.byte	0xc1
	.4byte	0x94
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0xc2
	.4byte	0x94
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.byte	0xc3
	.4byte	0x94
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x2
	.byte	0xc4
	.4byte	0x183
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x192
	.uleb128 0xe
	.4byte	0xbe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x2
	.byte	0xc5
	.4byte	0x13e
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x12b
	.4byte	0x1a9
	.uleb128 0xd
	.4byte	0x10b
	.4byte	0x1b9
	.uleb128 0x10
	.4byte	0xbe
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x10b
	.uleb128 0xd
	.4byte	0x10b
	.4byte	0x1cf
	.uleb128 0x10
	.4byte	0xbe
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x2
	.2byte	0x1a4
	.4byte	0x1fd
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x1a5
	.4byte	0x116
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x1a6
	.4byte	0x121
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x1a7
	.4byte	0x1bf
	.byte	0
	.uleb128 0x13
	.byte	0x14
	.byte	0x2
	.2byte	0x19d
	.4byte	0x220
	.uleb128 0x14
	.string	"len"
	.byte	0x2
	.2byte	0x1a2
	.4byte	0x116
	.byte	0
	.uleb128 0x14
	.string	"uu"
	.byte	0x2
	.2byte	0x1a8
	.4byte	0x1cf
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x1aa
	.4byte	0x1fd
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0x40
	.4byte	0x240
	.uleb128 0xc
	.string	"uu"
	.byte	0x5
	.byte	0x41
	.4byte	0x240
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x250
	.uleb128 0x10
	.4byte	0xbe
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.byte	0x42
	.4byte	0x22c
	.uleb128 0x15
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.2byte	0x1c2
	.4byte	0x383
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x2e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x192
	.uleb128 0x15
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.2byte	0x6ec
	.4byte	0x3c1
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x89
	.uleb128 0x7
	.byte	0x4
	.4byte	0x220
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x8
	.byte	0x26
	.4byte	0x3d8
	.uleb128 0x16
	.4byte	0x12c
	.4byte	0x3e7
	.uleb128 0x17
	.4byte	0x383
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x8
	.byte	0x29
	.4byte	0xcc
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x96
	.4byte	0x413
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x8
	.byte	0x97
	.4byte	0x413
	.byte	0
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x8
	.byte	0x98
	.4byte	0x419
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3cd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3e7
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x8
	.byte	0x99
	.4byte	0x3f2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.byte	0x1d
	.4byte	0x461
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x9
	.byte	0x25
	.4byte	0x42a
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x38
	.byte	0x9
	.byte	0x35
	.4byte	0x4fd
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x9
	.byte	0x36
	.4byte	0x461
	.byte	0
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x9
	.byte	0x37
	.4byte	0x250
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x9
	.byte	0x38
	.4byte	0xaa
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x9
	.byte	0x39
	.4byte	0xcd
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x9
	.byte	0x3a
	.4byte	0x9f
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x9
	.byte	0x3b
	.4byte	0x9f
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x9
	.byte	0x3c
	.4byte	0x9f
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x9
	.byte	0x3f
	.4byte	0x62
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x9
	.byte	0x40
	.4byte	0x3c1
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x9
	.byte	0x41
	.4byte	0x62
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x9
	.byte	0x42
	.4byte	0x3c1
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x9
	.byte	0x43
	.4byte	0x46c
	.uleb128 0x18
	.4byte	.LASF121
	.byte	0x44
	.byte	0x9
	.byte	0x45
	.4byte	0x545
	.uleb128 0xc
	.string	"hdr"
	.byte	0x9
	.byte	0x46
	.4byte	0x4fd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x9
	.byte	0x47
	.4byte	0xaa
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x9
	.byte	0x48
	.4byte	0xaa
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x9
	.byte	0x49
	.4byte	0xaa
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x9
	.byte	0x4a
	.4byte	0x508
	.uleb128 0x18
	.4byte	.LASF126
	.byte	0x3c
	.byte	0x9
	.byte	0x4c
	.4byte	0x575
	.uleb128 0xc
	.string	"hdr"
	.byte	0x9
	.byte	0x4d
	.4byte	0x4fd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x9
	.byte	0x4e
	.4byte	0xaa
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x9
	.byte	0x4f
	.4byte	0x550
	.uleb128 0x18
	.4byte	.LASF128
	.byte	0x40
	.byte	0x9
	.byte	0x51
	.4byte	0x5b1
	.uleb128 0xc
	.string	"hdr"
	.byte	0x9
	.byte	0x52
	.4byte	0x4fd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x9
	.byte	0x53
	.4byte	0xaa
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x9
	.byte	0x54
	.4byte	0xaa
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x9
	.byte	0x55
	.4byte	0x580
	.uleb128 0x18
	.4byte	.LASF131
	.byte	0x38
	.byte	0x9
	.byte	0x57
	.4byte	0x5d5
	.uleb128 0xc
	.string	"hdr"
	.byte	0x9
	.byte	0x58
	.4byte	0x4fd
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x9
	.byte	0x59
	.4byte	0x5bc
	.uleb128 0x18
	.4byte	.LASF133
	.byte	0x4c
	.byte	0x9
	.byte	0x5b
	.4byte	0x611
	.uleb128 0xc
	.string	"hdr"
	.byte	0x9
	.byte	0x5c
	.4byte	0x4fd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x5d
	.4byte	0x62
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x5e
	.4byte	0x611
	.byte	0x3c
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x621
	.uleb128 0x10
	.4byte	0xbe
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x9
	.byte	0x5f
	.4byte	0x5e0
	.uleb128 0x18
	.4byte	.LASF137
	.byte	0x38
	.byte	0x9
	.byte	0x61
	.4byte	0x645
	.uleb128 0xc
	.string	"hdr"
	.byte	0x9
	.byte	0x62
	.4byte	0x4fd
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x9
	.byte	0x63
	.4byte	0x62c
	.uleb128 0x19
	.byte	0x4c
	.byte	0x9
	.byte	0x65
	.4byte	0x6a6
	.uleb128 0x1a
	.string	"hdr"
	.byte	0x9
	.byte	0x66
	.4byte	0x4fd
	.uleb128 0x1a
	.string	"mas"
	.byte	0x9
	.byte	0x67
	.4byte	0x545
	.uleb128 0x1a
	.string	"mns"
	.byte	0x9
	.byte	0x68
	.4byte	0x575
	.uleb128 0x1a
	.string	"pse"
	.byte	0x9
	.byte	0x69
	.4byte	0x5b1
	.uleb128 0x1a
	.string	"pce"
	.byte	0x9
	.byte	0x6a
	.4byte	0x5d5
	.uleb128 0x1a
	.string	"ops"
	.byte	0x9
	.byte	0x6b
	.4byte	0x621
	.uleb128 0x1a
	.string	"sap"
	.byte	0x9
	.byte	0x6c
	.4byte	0x645
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x9
	.byte	0x6d
	.4byte	0x650
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0x27
	.4byte	0x10b
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0xa
	.byte	0x34
	.4byte	0x116
	.uleb128 0x1b
	.2byte	0x494
	.byte	0xa
	.byte	0x37
	.4byte	0x70d
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.byte	0x38
	.4byte	0x6b1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.byte	0x39
	.4byte	0x19d
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0xa
	.byte	0x3a
	.4byte	0x220
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.byte	0x3b
	.4byte	0x62
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.byte	0x3c
	.4byte	0x70d
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x6a6
	.4byte	0x71d
	.uleb128 0x10
	.4byte	0xbe
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xa
	.byte	0x3d
	.4byte	0x6c7
	.uleb128 0x1c
	.2byte	0x494
	.byte	0xa
	.byte	0x3f
	.4byte	0x748
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0xa
	.byte	0x40
	.4byte	0x6b1
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0xa
	.byte	0x41
	.4byte	0x71d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xa
	.byte	0x42
	.4byte	0x728
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xa
	.byte	0x45
	.4byte	0x75e
	.uleb128 0x1e
	.4byte	0x773
	.uleb128 0x17
	.4byte	0x6bc
	.uleb128 0x17
	.4byte	0x773
	.uleb128 0x17
	.4byte	0xb5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x748
	.uleb128 0x8
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x27
	.4byte	0x7a9
	.uleb128 0x1f
	.4byte	.LASF150
	.2byte	0x2100
	.uleb128 0x1f
	.4byte	.LASF151
	.2byte	0x2101
	.uleb128 0x1f
	.4byte	.LASF152
	.2byte	0x2102
	.uleb128 0x1f
	.4byte	.LASF153
	.2byte	0x2103
	.uleb128 0x1f
	.4byte	.LASF154
	.2byte	0x2104
	.byte	0
	.uleb128 0xa
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.4byte	0x7ca
	.uleb128 0xc
	.string	"hdr"
	.byte	0xb
	.byte	0x39
	.4byte	0x192
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xb
	.byte	0x3a
	.4byte	0x7ca
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x753
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xb
	.byte	0x3b
	.4byte	0x7a9
	.uleb128 0xa
	.byte	0x24
	.byte	0xb
	.byte	0x3e
	.4byte	0x808
	.uleb128 0xc
	.string	"hdr"
	.byte	0xb
	.byte	0x3f
	.4byte	0x192
	.byte	0
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xb
	.byte	0x40
	.4byte	0x19d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0xb
	.byte	0x41
	.4byte	0x220
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0xb
	.byte	0x42
	.4byte	0x7db
	.uleb128 0xa
	.byte	0xc
	.byte	0xb
	.byte	0x45
	.4byte	0x834
	.uleb128 0xc
	.string	"hdr"
	.byte	0xb
	.byte	0x46
	.4byte	0x192
	.byte	0
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xb
	.byte	0x47
	.4byte	0xb5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0xb
	.byte	0x48
	.4byte	0x813
	.uleb128 0xa
	.byte	0xc
	.byte	0xb
	.byte	0x54
	.4byte	0x86c
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xb
	.byte	0x55
	.4byte	0x10b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xb
	.byte	0x56
	.4byte	0x19d
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xb
	.byte	0x57
	.4byte	0x7ca
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0xb
	.byte	0x58
	.4byte	0x83f
	.uleb128 0x20
	.4byte	.LASF166
	.byte	0x1
	.byte	0x3a
	.4byte	0x6b1
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x973
	.uleb128 0x21
	.4byte	.LASF155
	.byte	0x1
	.byte	0x3a
	.4byte	0x7ca
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x1
	.byte	0x3c
	.4byte	0x6b1
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LASF164
	.byte	0x1
	.byte	0x3d
	.4byte	0x973
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LASF165
	.4byte	0x989
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8874
	.uleb128 0x24
	.4byte	.LVL2
	.4byte	0xcd3
	.uleb128 0x25
	.4byte	.LVL3
	.4byte	0xcde
	.4byte	0x90c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8874
	.byte	0
	.uleb128 0x25
	.4byte	.LVL6
	.4byte	0xce9
	.4byte	0x920
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x25
	.4byte	.LVL7
	.4byte	0xcf4
	.4byte	0x939
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0xcfd
	.4byte	0x956
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sdp_reg
	.byte	0
	.uleb128 0x25
	.4byte	.LVL9
	.4byte	0xd08
	.4byte	0x969
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL10
	.4byte	0xd13
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7d0
	.uleb128 0xd
	.4byte	0xd3
	.4byte	0x989
	.uleb128 0x10
	.4byte	0xbe
	.byte	0xd
	.byte	0
	.uleb128 0x27
	.4byte	0x979
	.uleb128 0x28
	.4byte	.LASF187
	.byte	0x2
	.2byte	0x2c9
	.byte	0x3
	.4byte	0x9ba
	.uleb128 0x29
	.string	"a"
	.byte	0x2
	.2byte	0x2c9
	.4byte	0x1b9
	.uleb128 0x29
	.string	"b"
	.byte	0x2
	.2byte	0x2c9
	.4byte	0x9ba
	.uleb128 0x2a
	.string	"i"
	.byte	0x2
	.2byte	0x2cb
	.4byte	0x62
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9c0
	.uleb128 0x27
	.4byte	0x10b
	.uleb128 0x20
	.4byte	.LASF167
	.byte	0x1
	.byte	0x5e
	.4byte	0x6b1
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae2
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0x5e
	.4byte	0x1b9
	.4byte	.LLST3
	.uleb128 0x2b
	.4byte	.LASF109
	.byte	0x1
	.byte	0x5e
	.4byte	0x3c7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.byte	0x60
	.4byte	0x6b1
	.4byte	.LLST4
	.uleb128 0x2d
	.4byte	.LASF168
	.byte	0x1
	.byte	0x61
	.4byte	0xae2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF165
	.4byte	0xae8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8881
	.uleb128 0x2e
	.4byte	0x98e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x66
	.4byte	0xa5e
	.uleb128 0x2f
	.4byte	0x9a5
	.4byte	.LLST5
	.uleb128 0x2f
	.4byte	0x99b
	.4byte	.LLST6
	.uleb128 0x30
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x31
	.4byte	0x9af
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0xcd3
	.uleb128 0x25
	.4byte	.LVL15
	.4byte	0xcde
	.4byte	0xa9e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8881
	.byte	0
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0xd08
	.4byte	0xab2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x25
	.4byte	.LVL22
	.4byte	0xd1e
	.4byte	0xad1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x32
	.4byte	.LVL23
	.4byte	0xd13
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x808
	.uleb128 0x27
	.4byte	0x979
	.uleb128 0x20
	.4byte	.LASF169
	.byte	0x1
	.byte	0x7c
	.4byte	0x6b1
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9f
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x1
	.byte	0x7c
	.4byte	0xb5
	.4byte	.LLST8
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.byte	0x7e
	.4byte	0x6b1
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LASF168
	.byte	0x1
	.byte	0x7f
	.4byte	0xb9f
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF165
	.4byte	0xbb5
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8887
	.uleb128 0x24
	.4byte	.LVL27
	.4byte	0xcd3
	.uleb128 0x25
	.4byte	.LVL28
	.4byte	0xcde
	.4byte	0xb82
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8887
	.byte	0
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0xd08
	.4byte	0xb95
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0xd13
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x834
	.uleb128 0xd
	.4byte	0xd3
	.4byte	0xbb5
	.uleb128 0x10
	.4byte	0xbe
	.byte	0x19
	.byte	0
	.uleb128 0x27
	.4byte	0xba5
	.uleb128 0x20
	.4byte	.LASF170
	.byte	0x1
	.byte	0x98
	.4byte	0x6b1
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6c
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x1
	.byte	0x98
	.4byte	0xb5
	.4byte	.LLST11
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.byte	0x9a
	.4byte	0x6b1
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LASF168
	.byte	0x1
	.byte	0x9b
	.4byte	0xb9f
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF165
	.4byte	0xc6c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8893
	.uleb128 0x24
	.4byte	.LVL35
	.4byte	0xcd3
	.uleb128 0x25
	.4byte	.LVL36
	.4byte	0xcde
	.4byte	0xc4f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$8893
	.byte	0
	.uleb128 0x25
	.4byte	.LVL37
	.4byte	0xd08
	.4byte	0xc62
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0xd13
	.byte	0
	.uleb128 0x27
	.4byte	0xba5
	.uleb128 0x33
	.4byte	.LASF171
	.byte	0x2
	.2byte	0x2b8
	.4byte	0xc84
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x27
	.4byte	0x1a9
	.uleb128 0x33
	.4byte	.LASF172
	.byte	0x2
	.2byte	0x2b9
	.4byte	0xc9c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x1a9
	.uleb128 0x2d
	.4byte	.LASF173
	.byte	0x1
	.byte	0x27
	.4byte	0xcb2
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sdp_reg
	.uleb128 0x27
	.4byte	0x41f
	.uleb128 0x34
	.4byte	.LASF174
	.byte	0x8
	.byte	0xa6
	.4byte	0x10b
	.uleb128 0x34
	.4byte	.LASF175
	.byte	0xb
	.byte	0x5f
	.4byte	0xccd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x35
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x6
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x6
	.byte	0x6b
	.uleb128 0x35
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x8
	.byte	0xde
	.uleb128 0x36
	.4byte	.LASF182
	.4byte	.LASF182
	.uleb128 0x35
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x8
	.byte	0xdc
	.uleb128 0x35
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xc
	.byte	0x65
	.uleb128 0x35
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x8
	.byte	0xe0
	.uleb128 0x36
	.4byte	.LASF183
	.4byte	.LASF183
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x17
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
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
	.uleb128 0x2a
	.uleb128 0x34
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
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
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF168:
	.string	"p_msg"
.LASF135:
	.string	"supported_formats_list"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF101:
	.string	"SDP_TYPE_MAP_MAS"
.LASF115:
	.string	"user1_ptr_len"
.LASF3:
	.string	"__uint8_t"
.LASF100:
	.string	"SDP_TYPE_RAW"
.LASF108:
	.string	"type"
.LASF134:
	.string	"supported_formats_list_len"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF104:
	.string	"SDP_TYPE_PBAP_PCE"
.LASF33:
	.string	"data"
.LASF187:
	.string	"bdcpy"
.LASF154:
	.string	"BTA_SDP_MAX_INT_EVT"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF99:
	.string	"tBTA_SYS_REG"
.LASF157:
	.string	"bd_addr"
.LASF178:
	.string	"bta_sys_is_register"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF142:
	.string	"status"
.LASF150:
	.string	"BTA_SDP_API_ENABLE_EVT"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF10:
	.string	"long long unsigned int"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF98:
	.string	"disable"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF133:
	.string	"_bluetooth_sdp_ops_record"
.LASF132:
	.string	"bluetooth_sdp_pce_record"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF185:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sdp/bta_sdp_api.c"
.LASF111:
	.string	"service_name"
.LASF15:
	.string	"long int"
.LASF103:
	.string	"SDP_TYPE_PBAP_PSE"
.LASF166:
	.string	"BTA_SdpEnable"
.LASF39:
	.string	"tBT_UUID"
.LASF177:
	.string	"esp_log_write"
.LASF183:
	.string	"memcpy"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF95:
	.string	"tBTA_SYS_EVT_HDLR"
.LASF12:
	.string	"uint16_t"
.LASF110:
	.string	"service_name_length"
.LASF160:
	.string	"tBTA_SDP_API_RECORD_USER"
.LASF89:
	.string	"BTM_PM_STS_HOLD"
.LASF163:
	.string	"tBTA_SDP_CB"
.LASF37:
	.string	"uuid32"
.LASF146:
	.string	"tBTA_SDP_SEARCH_COMP"
.LASF128:
	.string	"_bluetooth_sdp_pse_record"
.LASF164:
	.string	"p_buf"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF26:
	.string	"UINT16"
.LASF92:
	.string	"BTM_PM_STS_SSR"
.LASF147:
	.string	"sdp_search_comp"
.LASF159:
	.string	"user_data"
.LASF35:
	.string	"BD_ADDR"
.LASF162:
	.string	"p_dm_cback"
.LASF87:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF172:
	.string	"bd_addr_null"
.LASF8:
	.string	"unsigned int"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF112:
	.string	"rfcomm_channel_number"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF34:
	.string	"BT_HDR"
.LASF17:
	.string	"long unsigned int"
.LASF131:
	.string	"_bluetooth_sdp_pce_record"
.LASF155:
	.string	"p_cback"
.LASF165:
	.string	"__FUNCTION__"
.LASF184:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF88:
	.string	"BTM_PM_STS_ACTIVE"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF30:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF139:
	.string	"bluetooth_sdp_record"
.LASF148:
	.string	"tBTA_SDP"
.LASF38:
	.string	"uuid128"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF121:
	.string	"_bluetooth_sdp_mas_record"
.LASF2:
	.string	"short int"
.LASF40:
	.string	"bt_uuid_t"
.LASF114:
	.string	"profile_version"
.LASF36:
	.string	"uuid16"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF94:
	.string	"BTM_PM_STS_ERROR"
.LASF156:
	.string	"tBTA_SDP_API_ENABLE"
.LASF16:
	.string	"sizetype"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF27:
	.string	"UINT32"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF152:
	.string	"BTA_SDP_API_CREATE_RECORD_USER_EVT"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF136:
	.string	"bluetooth_sdp_ops_record"
.LASF137:
	.string	"_bluetooth_sdp_sap_record"
.LASF130:
	.string	"bluetooth_sdp_pse_record"
.LASF170:
	.string	"BTA_SdpRemoveRecordByUser"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF118:
	.string	"user2_ptr"
.LASF141:
	.string	"tBTA_SDP_EVT"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF126:
	.string	"_bluetooth_sdp_mns_record"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF186:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF97:
	.string	"evt_hdlr"
.LASF29:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF145:
	.string	"records"
.LASF179:
	.string	"bta_sys_register"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF182:
	.string	"memset"
.LASF106:
	.string	"SDP_TYPE_SAP_SERVER"
.LASF158:
	.string	"tBTA_SDP_API_SEARCH"
.LASF176:
	.string	"esp_log_timestamp"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF90:
	.string	"BTM_PM_STS_SNIFF"
.LASF28:
	.string	"BOOLEAN"
.LASF91:
	.string	"BTM_PM_STS_PARK"
.LASF180:
	.string	"malloc"
.LASF124:
	.string	"supported_message_types"
.LASF102:
	.string	"SDP_TYPE_MAP_MNS"
.LASF113:
	.string	"l2cap_psm"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF169:
	.string	"BTA_SdpCreateRecordByUser"
.LASF144:
	.string	"record_count"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"uint32_t"
.LASF173:
	.string	"bta_sdp_reg"
.LASF109:
	.string	"uuid"
.LASF18:
	.string	"char"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
.LASF167:
	.string	"BTA_SdpSearch"
.LASF4:
	.string	"__uint16_t"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF6:
	.string	"__int32_t"
.LASF7:
	.string	"__uint32_t"
.LASF123:
	.string	"supported_features"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF31:
	.string	"offset"
.LASF153:
	.string	"BTA_SDP_API_REMOVE_RECORD_USER_EVT"
.LASF32:
	.string	"layer_specific"
.LASF119:
	.string	"bluetooth_sdp_hdr_overlay"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF120:
	.string	"_bluetooth_sdp_hdr_overlay"
.LASF149:
	.string	"tBTA_SDP_DM_CBACK"
.LASF138:
	.string	"bluetooth_sdp_sap_record"
.LASF174:
	.string	"appl_trace_level"
.LASF122:
	.string	"mas_instance_id"
.LASF127:
	.string	"bluetooth_sdp_mns_record"
.LASF175:
	.string	"bta_sdp_cb_ptr"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF25:
	.string	"UINT8"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF105:
	.string	"SDP_TYPE_OPP_SERVER"
.LASF11:
	.string	"uint8_t"
.LASF171:
	.string	"bd_addr_any"
.LASF93:
	.string	"BTM_PM_STS_PENDING"
.LASF140:
	.string	"tBTA_SDP_STATUS"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF125:
	.string	"bluetooth_sdp_mas_record"
.LASF107:
	.string	"bluetooth_sdp_types"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF116:
	.string	"user1_ptr"
.LASF96:
	.string	"tBTA_SYS_DISABLE"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF143:
	.string	"remote_addr"
.LASF181:
	.string	"bta_sys_sendmsg"
.LASF151:
	.string	"BTA_SDP_API_SEARCH_EVT"
.LASF129:
	.string	"supported_repositories"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF161:
	.string	"sdp_active"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF117:
	.string	"user2_ptr_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
