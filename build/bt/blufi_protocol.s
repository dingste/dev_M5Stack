	.file	"blufi_protocol.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"BT_BTC"
.LC5:
	.string	"\033[0;31mE (%d) %s: %s Unkown Ctrl pkt %02x\n\033[0m\n"
	.section	.text.btc_blufi_protocol_handler,"ax",@progbits
	.literal_position
	.literal .LC0, .L6
	.literal .LC1, blufi_env
	.literal .LC2, __func__$10933
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, .L18
	.literal .LC8, btc_blufi_cb_deep_copy
	.align	4
	.global	btc_blufi_protocol_handler
	.type	btc_blufi_protocol_handler, @function
btc_blufi_protocol_handler:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/esp/blufi/blufi_protocol.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 80
.LCFI0:
	.loc 1 45 0
	movi.n	a8, 0
	.loc 1 42 0
	extui	a2, a2, 0, 8
	.loc 1 45 0
	s32i.n	a8, sp, 40
	.loc 1 46 0
	s32i.n	a8, sp, 36
	.loc 1 47 0
	s8i	a8, sp, 44
	.loc 1 49 0
	extui	a8, a2, 0, 2
	.loc 1 42 0
	mov.n	a10, a3
	mov.n	a11, a4
	.loc 1 49 0
	beqz.n	a8, .L3
	beqi	a8, 1, .L4
	retw.n
.L3:
	.loc 1 51 0
	srli	a8, a2, 2
	movi.n	a9, 9
	bltu	a9, a8, .L16
	l32r	a2, .LC0
.LVL1:
	addx4	a8, a8, a2
	l32i.n	a2, a8, 0
	jx	a2
	.section	.rodata.btc_blufi_protocol_handler,"a",@progbits
	.align	4
	.align	4
.L6:
	.word	.L1
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.section	.text.btc_blufi_protocol_handler
.L7:
	.loc 1 56 0
	l8ui	a8, a3, 0
	l32r	a2, .LC1
	s8i	a8, a2, 43
	.loc 1 57 0
	retw.n
.L8:
	.loc 1 59 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 60 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 61 0
	movi.n	a2, 2
	j	.L50
.L9:
	.loc 1 67 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 68 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 69 0
	movi.n	a2, 5
	j	.L49
.L10:
	.loc 1 74 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 75 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 76 0
	movi.n	a2, 6
	j	.L49
.L11:
	.loc 1 81 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 82 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 83 0
	movi.n	a2, 7
	j	.L49
.L12:
	.loc 1 88 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 89 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	j	.L49
.L13:
.LVL2:
.LBB2:
	.loc 1 98 0
	movi.n	a2, 1
	s8i	a2, sp, 16
	.loc 1 99 0
	movi.n	a2, 2
	s8i	a2, sp, 17
	.loc 1 100 0
	movi.n	a12, 2
	addi	a11, sp, 16
	movi.n	a10, 0x41
	j	.L47
.LVL3:
.L14:
.LBE2:
	.loc 1 104 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 105 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 106 0
	movi.n	a2, 0x17
	j	.L49
.L15:
	.loc 1 110 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 111 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 112 0
	movi.n	a2, 0x18
.L49:
	.loc 1 113 0
	movi.n	a13, 0
	.loc 1 112 0
	s8i	a2, sp, 31
	.loc 1 113 0
	mov.n	a12, a13
	mov.n	a11, a13
	j	.L46
.L4:
	.loc 1 121 0
	srli	a8, a2, 2
	movi.n	a9, 0x13
	bltu	a9, a8, .L16
	l32r	a9, .LC7
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.btc_blufi_protocol_handler
	.align	4
	.align	4
.L18:
	.word	.L17
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L16
	.word	.L16
	.word	.L16
	.word	.L16
	.word	.L33
	.section	.text.btc_blufi_protocol_handler
.L17:
	.loc 1 123 0
	l32r	a2, .LC1
	l32i.n	a2, a2, 36
	beqz.n	a2, .L34
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 4
	beqz.n	a2, .L34
	.loc 1 124 0 is_stmt 1
	addi	a14, sp, 44
	addi	a13, sp, 36
	addi	a12, sp, 40
	callx8	a2
.LVL4:
.L34:
	.loc 1 127 0
	l32i.n	a11, sp, 40
	beqz.n	a11, .L1
	.loc 1 127 0 is_stmt 0 discriminator 1
	l32i.n	a12, sp, 36
	blti	a12, 1, .L1
	.loc 1 128 0 is_stmt 1
	movi.n	a10, 1
.L47:
	call8	btc_blufi_send_encap
.LVL5:
	retw.n
.L19:
	.loc 1 133 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 134 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 136 0
	movi.n	a12, 6
	.loc 1 135 0
	movi.n	a2, 9
	.loc 1 136 0
	mov.n	a11, a3
	addi	a10, sp, 16
	.loc 1 135 0
	s8i	a2, sp, 31
	.loc 1 136 0
	call8	memcpy
.LVL6:
	j	.L48
.L20:
	.loc 1 141 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 142 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 143 0
	movi.n	a2, 0xa
	j	.L44
.L21:
	.loc 1 150 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 151 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 152 0
	movi.n	a2, 0xb
	j	.L44
.L22:
	.loc 1 159 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 160 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 161 0
	movi.n	a2, 0xc
	j	.L44
.L23:
	.loc 1 168 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 169 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 170 0
	movi.n	a2, 0xd
	j	.L44
.L24:
	.loc 1 177 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 178 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 179 0
	movi.n	a2, 0xe
.L50:
	s8i	a2, sp, 31
	.loc 1 180 0
	l8ui	a2, a10, 0
	s32i.n	a2, sp, 16
	j	.L48
.L25:
	.loc 1 185 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 186 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 187 0
	movi.n	a2, 0xf
	j	.L50
.L26:
	.loc 1 193 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 194 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 195 0
	movi.n	a2, 0x10
	s8i	a2, sp, 31
	.loc 1 196 0
	l8ui	a2, a3, 0
	s8i	a2, sp, 16
.L48:
	.loc 1 198 0
	movi.n	a13, 0
	j	.L45
.L27:
	.loc 1 201 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 202 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 203 0
	movi.n	a2, 0x11
	j	.L44
.L28:
	.loc 1 210 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 211 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 212 0
	movi.n	a2, 0x12
	j	.L44
.L29:
	.loc 1 219 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 220 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 221 0
	movi.n	a2, 0x13
	j	.L44
.L30:
	.loc 1 228 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 229 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 230 0
	movi.n	a2, 0x14
	j	.L44
.L31:
	.loc 1 237 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 238 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 239 0
	movi.n	a2, 0x15
	j	.L44
.L32:
	.loc 1 246 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 247 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 248 0
	movi.n	a2, 0x16
	j	.L44
.L33:
	.loc 1 255 0
	movi.n	a2, 1
	s8i	a2, sp, 28
	.loc 1 256 0
	movi.n	a2, 8
	s8i	a2, sp, 30
	.loc 1 257 0
	movi.n	a2, 0x1a
.L44:
	.loc 1 260 0
	l32r	a13, .LC8
	.loc 1 257 0
	s8i	a2, sp, 31
	.loc 1 258 0
	s32i.n	a10, sp, 16
	.loc 1 259 0
	s32i.n	a11, sp, 20
.L45:
	.loc 1 260 0
	movi.n	a12, 0xc
	addi	a11, sp, 16
.L46:
	addi	a10, sp, 28
	call8	btc_transfer_context
.LVL7:
	.loc 1 261 0
	retw.n
.L16:
	.loc 1 263 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC4
	l32r	a15, .LC2
	l32r	a12, .LC6
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
.L1:
	retw.n
.LFE39:
	.size	btc_blufi_protocol_handler, .-btc_blufi_protocol_handler
	.section	.rodata.__func__$10933,"a",@progbits
	.type	__func__$10933, @object
	.size	__func__$10933, 27
__func__$10933:
	.string	"btc_blufi_protocol_handler"
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
	.uleb128 0x50
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_ble_api.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_task.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/include/api/esp_blufi_api.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/esp/blufi/include/blufi_int.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc07
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0xc
	.4byte	.LASF218
	.4byte	.LASF219
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x1f
	.4byte	0xee
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x7
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
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x12b
	.4byte	0x12d
	.uleb128 0x9
	.4byte	0xee
	.4byte	0x13d
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x7e
	.4byte	0x14d
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x209
	.4byte	0xee
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x8
	.byte	0x6
	.byte	0x1a
	.4byte	0x1a8
	.uleb128 0xd
	.string	"sig"
	.byte	0x6
	.byte	0x1b
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.string	"aid"
	.byte	0x6
	.byte	0x1c
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xd
	.string	"pid"
	.byte	0x6
	.byte	0x1d
	.4byte	0x7e
	.byte	0x2
	.uleb128 0xd
	.string	"act"
	.byte	0x6
	.byte	0x1e
	.4byte	0x7e
	.byte	0x3
	.uleb128 0xd
	.string	"arg"
	.byte	0x6
	.byte	0x1f
	.4byte	0xad
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x20
	.4byte	0x15f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x27
	.4byte	0x1d2
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x2d
	.4byte	0x245
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x69
	.4byte	0x13d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x9
	.byte	0x1c
	.4byte	0x27b
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x9
	.byte	0x22
	.4byte	0x250
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x9
	.byte	0x37
	.4byte	0x2bd
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3f
	.4byte	0x286
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x1b
	.4byte	0x377
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x1a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xa
	.byte	0x38
	.4byte	0x2c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x41
	.4byte	0x39b
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0x44
	.4byte	0x382
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x47
	.4byte	0x3bf
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0x4a
	.4byte	0x3a6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x4c
	.4byte	0x413
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xa
	.byte	0x57
	.4byte	0x3ca
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x4
	.byte	0xa
	.byte	0x7d
	.4byte	0x437
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xa
	.byte	0x7e
	.4byte	0x39b
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x4
	.byte	0xa
	.byte	0x84
	.4byte	0x450
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xa
	.byte	0x85
	.4byte	0x3bf
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x4
	.byte	0xa
	.byte	0x8b
	.4byte	0x469
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0xa
	.byte	0x8c
	.4byte	0x27b
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0xa
	.byte	0xa
	.byte	0x92
	.4byte	0x49a
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0xa
	.byte	0x93
	.4byte	0x245
	.byte	0
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0xa
	.byte	0x94
	.4byte	0x7e
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0xa
	.byte	0x95
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x6
	.byte	0xa
	.byte	0x9b
	.4byte	0x4b3
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0xa
	.byte	0x9c
	.4byte	0x245
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x6
	.byte	0xa
	.byte	0xa5
	.4byte	0x4cc
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xa
	.byte	0xa6
	.4byte	0x13d
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x8
	.byte	0xa
	.byte	0xac
	.4byte	0x4f1
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xa
	.byte	0xad
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xa
	.byte	0xae
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x8
	.byte	0xa
	.byte	0xb5
	.4byte	0x516
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0xa
	.byte	0xb6
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0xa
	.byte	0xb7
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x8
	.byte	0xa
	.byte	0xbd
	.4byte	0x53b
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xa
	.byte	0xbe
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xa
	.byte	0xbf
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.4byte	0x560
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0xa
	.byte	0xc7
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0xa
	.byte	0xc8
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x4
	.byte	0xa
	.byte	0xce
	.4byte	0x579
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xa
	.byte	0xcf
	.4byte	0x57
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x4
	.byte	0xa
	.byte	0xd6
	.4byte	0x592
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xa
	.byte	0xd7
	.4byte	0x2bd
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa
	.byte	0xde
	.4byte	0x5ab
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0xa
	.byte	0xdf
	.4byte	0x7e
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x8
	.byte	0xa
	.byte	0xe5
	.4byte	0x5d0
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0xa
	.byte	0xe6
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0xa
	.byte	0xe7
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x8
	.byte	0xa
	.byte	0xed
	.4byte	0x5f5
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0xa
	.byte	0xee
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0xa
	.byte	0xef
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x8
	.byte	0xa
	.byte	0xf5
	.4byte	0x61a
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0xa
	.byte	0xf6
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0xa
	.byte	0xf7
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x8
	.byte	0xa
	.byte	0xfd
	.4byte	0x63f
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0xa
	.byte	0xfe
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0xa
	.byte	0xff
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x8
	.byte	0xa
	.2byte	0x105
	.4byte	0x667
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x106
	.4byte	0x14d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x107
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x8
	.byte	0xa
	.2byte	0x10c
	.4byte	0x68f
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x10d
	.4byte	0x14d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x10e
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0x4
	.byte	0xa
	.2byte	0x114
	.4byte	0x6aa
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x115
	.4byte	0x413
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0x8
	.byte	0xa
	.2byte	0x11b
	.4byte	0x6d2
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x11c
	.4byte	0x14d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x11d
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.byte	0x79
	.4byte	0x7c6
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0xa
	.byte	0x7f
	.4byte	0x41e
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0xa
	.byte	0x86
	.4byte	0x437
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xa
	.byte	0x8d
	.4byte	0x450
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0xa
	.byte	0x96
	.4byte	0x469
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0xa
	.byte	0x9d
	.4byte	0x49a
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0xa
	.byte	0xa7
	.4byte	0x4b3
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xa
	.byte	0xaf
	.4byte	0x4cc
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0xa
	.byte	0xb8
	.4byte	0x4f1
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xa
	.byte	0xc0
	.4byte	0x516
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0xa
	.byte	0xc9
	.4byte	0x53b
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0xa
	.byte	0xd0
	.4byte	0x560
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0xa
	.byte	0xd8
	.4byte	0x579
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xa
	.byte	0xe0
	.4byte	0x592
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0xa
	.byte	0xe8
	.4byte	0x5ab
	.uleb128 0x13
	.string	"ca"
	.byte	0xa
	.byte	0xf0
	.4byte	0x5d0
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0xa
	.byte	0xf8
	.4byte	0x5f5
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x100
	.4byte	0x61a
	.uleb128 0x14
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x108
	.4byte	0x63f
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x10f
	.4byte	0x667
	.uleb128 0x14
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x116
	.4byte	0x68f
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x11e
	.4byte	0x6aa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF174
	.byte	0xa
	.2byte	0x11f
	.4byte	0x6d2
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x126
	.4byte	0x7de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7e4
	.uleb128 0x15
	.4byte	0x7f4
	.uleb128 0x16
	.4byte	0x377
	.uleb128 0x16
	.4byte	0x7f4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7c6
	.uleb128 0x8
	.4byte	.LASF176
	.byte	0xa
	.2byte	0x131
	.4byte	0x806
	.uleb128 0xb
	.byte	0x4
	.4byte	0x80c
	.uleb128 0x15
	.4byte	0x82b
	.uleb128 0x16
	.4byte	0x14d
	.uleb128 0x16
	.4byte	0x57
	.uleb128 0x16
	.4byte	0x82b
	.uleb128 0x16
	.4byte	0x831
	.uleb128 0x16
	.4byte	0x837
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x14d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x57
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11a
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0xa
	.2byte	0x13a
	.4byte	0x849
	.uleb128 0xb
	.byte	0x4
	.4byte	0x84f
	.uleb128 0x17
	.4byte	0x57
	.4byte	0x868
	.uleb128 0x16
	.4byte	0x7e
	.uleb128 0x16
	.4byte	0x14d
	.uleb128 0x16
	.4byte	0x57
	.byte	0
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0xa
	.2byte	0x143
	.4byte	0x849
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x14b
	.4byte	0x880
	.uleb128 0xb
	.byte	0x4
	.4byte	0x886
	.uleb128 0x17
	.4byte	0x89
	.4byte	0x89f
	.uleb128 0x16
	.4byte	0x7e
	.uleb128 0x16
	.4byte	0x14d
	.uleb128 0x16
	.4byte	0x57
	.byte	0
	.uleb128 0x18
	.byte	0x14
	.byte	0xa
	.2byte	0x150
	.4byte	0x8ea
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0xa
	.2byte	0x151
	.4byte	0x7d2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0xa
	.2byte	0x152
	.4byte	0x7fa
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0xa
	.2byte	0x153
	.4byte	0x83d
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0xa
	.2byte	0x154
	.4byte	0x868
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF184
	.byte	0xa
	.2byte	0x155
	.4byte	0x874
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF185
	.byte	0xa
	.2byte	0x156
	.4byte	0x89f
	.uleb128 0x19
	.byte	0x34
	.byte	0xb
	.byte	0x17
	.4byte	0xa07
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0xb
	.byte	0x19
	.4byte	0x153
	.byte	0
	.uleb128 0xe
	.4byte	.LASF187
	.byte	0xb
	.byte	0x1a
	.4byte	0xee
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0xb
	.byte	0x1b
	.4byte	0xf9
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF189
	.byte	0xb
	.byte	0x1c
	.4byte	0xf9
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF190
	.byte	0xb
	.byte	0x1d
	.4byte	0xf9
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF191
	.byte	0xb
	.byte	0x1e
	.4byte	0xf9
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0xb
	.byte	0x1f
	.4byte	0xf9
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF192
	.byte	0xb
	.byte	0x20
	.4byte	0x10f
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0xb
	.byte	0x21
	.4byte	0x121
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF193
	.byte	0xb
	.byte	0x22
	.4byte	0x104
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF194
	.byte	0xb
	.byte	0x23
	.4byte	0xee
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF195
	.byte	0xb
	.byte	0x24
	.4byte	0xf9
	.byte	0x1a
	.uleb128 0xe
	.4byte	.LASF196
	.byte	0xb
	.byte	0x26
	.4byte	0x14d
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0xb
	.byte	0x27
	.4byte	0x57
	.byte	0x20
	.uleb128 0xd
	.string	"cbs"
	.byte	0xb
	.byte	0x29
	.4byte	0xa07
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF198
	.byte	0xb
	.byte	0x2a
	.4byte	0x10f
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0xb
	.byte	0x2b
	.4byte	0x7e
	.byte	0x29
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0xb
	.byte	0x2c
	.4byte	0x7e
	.byte	0x2a
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0xb
	.byte	0x2d
	.4byte	0x7e
	.byte	0x2b
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0xb
	.byte	0x2e
	.4byte	0x14d
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF203
	.byte	0xb
	.byte	0x2f
	.4byte	0x89
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0xb
	.byte	0x30
	.4byte	0x89
	.byte	0x32
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8ea
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0xb
	.byte	0x31
	.4byte	0x8f6
	.uleb128 0x1a
	.4byte	.LASF220
	.byte	0x1
	.byte	0x29
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb75
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x1
	.byte	0x29
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x1
	.byte	0x29
	.4byte	0x14d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x29
	.4byte	0x57
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0x2b
	.4byte	0x1a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.4byte	.LASF207
	.byte	0x1
	.byte	0x2c
	.4byte	0x7c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LASF208
	.byte	0x1
	.byte	0x2d
	.4byte	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LASF209
	.byte	0x1
	.byte	0x2e
	.4byte	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.4byte	.LASF210
	.byte	0x1
	.byte	0x2f
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.4byte	.LASF221
	.4byte	0xb85
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10933
	.uleb128 0x21
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xad6
	.uleb128 0x22
	.4byte	.LASF206
	.byte	0x1
	.byte	0x5f
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.byte	0x60
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.4byte	.LVL4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xaf5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.4byte	.LVL5
	.4byte	0xbd5
	.uleb128 0x26
	.4byte	.LVL6
	.4byte	0xbe0
	.4byte	0xb1d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x26
	.4byte	.LVL7
	.4byte	0xbe9
	.4byte	0xb31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0xbf4
	.uleb128 0x27
	.4byte	.LVL9
	.4byte	0xbff
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10933
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xb6
	.4byte	0xb85
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x1a
	.byte	0
	.uleb128 0x28
	.4byte	0xb75
	.uleb128 0x9
	.4byte	0x7e
	.4byte	0xb9a
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x4
	.2byte	0x2b8
	.4byte	0xbad
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x28
	.4byte	0x12d
	.uleb128 0x29
	.4byte	.LASF212
	.byte	0x4
	.2byte	0x2b9
	.4byte	0xbc5
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x12d
	.uleb128 0x2a
	.4byte	.LASF222
	.byte	0x1
	.byte	0x27
	.4byte	0xa0d
	.uleb128 0x2b
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xb
	.byte	0xb2
	.uleb128 0x2c
	.4byte	.LASF223
	.4byte	.LASF223
	.uleb128 0x2b
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x6
	.byte	0x5f
	.uleb128 0x2b
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x7
	.byte	0x57
	.uleb128 0x2b
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x7
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF196:
	.string	"prepare_buf"
.LASF220:
	.string	"btc_blufi_protocol_handler"
.LASF72:
	.string	"ESP_BLUFI_EVENT_REQ_DISCONNECT_FROM_AP"
.LASF176:
	.string	"esp_blufi_negotiate_data_handler_t"
.LASF140:
	.string	"name_len"
.LASF29:
	.string	"tGATT_IF"
.LASF30:
	.string	"btc_msg_t"
.LASF171:
	.string	"server_pkey"
.LASF112:
	.string	"blufi_init_finish_evt_param"
.LASF3:
	.string	"__uint8_t"
.LASF175:
	.string	"esp_blufi_event_cb_t"
.LASF34:
	.string	"BTC_PID_MAIN_INIT"
.LASF131:
	.string	"blufi_recv_softap_passwd_evt_param"
.LASF206:
	.string	"type"
.LASF100:
	.string	"ESP_BLUFI_SEQUENCE_ERROR"
.LASF69:
	.string	"ESP_BLUFI_EVENT_BLE_CONNECT"
.LASF31:
	.string	"BTC_SIG_API_CALL"
.LASF85:
	.string	"ESP_BLUFI_EVENT_RECV_CLIENT_CERT"
.LASF216:
	.string	"esp_log_write"
.LASF47:
	.string	"BTC_PID_A2DP"
.LASF197:
	.string	"prepare_len"
.LASF65:
	.string	"wifi_auth_mode_t"
.LASF199:
	.string	"send_seq"
.LASF165:
	.string	"softap_auth_mode"
.LASF179:
	.string	"esp_blufi_checksum_func_t"
.LASF44:
	.string	"BTC_PID_ALARM"
.LASF209:
	.string	"output_len"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF76:
	.string	"ESP_BLUFI_EVENT_RECV_STA_SSID"
.LASF195:
	.string	"frag_size"
.LASF61:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF118:
	.string	"remote_bda"
.LASF173:
	.string	"custom_data"
.LASF39:
	.string	"BTC_PID_GAP_BLE"
.LASF49:
	.string	"BTC_PID_SPP"
.LASF89:
	.string	"ESP_BLUFI_EVENT_RECV_SLAVE_DISCONNECT_BLE"
.LASF101:
	.string	"ESP_BLUFI_CHECKSUM_ERROR"
.LASF113:
	.string	"state"
.LASF86:
	.string	"ESP_BLUFI_EVENT_RECV_SERVER_CERT"
.LASF13:
	.string	"long int"
.LASF28:
	.string	"BD_ADDR"
.LASF45:
	.string	"BTC_PID_GAP_BT"
.LASF214:
	.string	"btc_transfer_context"
.LASF115:
	.string	"blufi_set_wifi_mode_evt_param"
.LASF58:
	.string	"WIFI_AUTH_OPEN"
.LASF223:
	.string	"memcpy"
.LASF129:
	.string	"passwd_len"
.LASF110:
	.string	"esp_blufi_error_state_t"
.LASF11:
	.string	"uint16_t"
.LASF55:
	.string	"WIFI_MODE_APSTA"
.LASF9:
	.string	"long long unsigned int"
.LASF102:
	.string	"ESP_BLUFI_DECRYPT_ERROR"
.LASF75:
	.string	"ESP_BLUFI_EVENT_RECV_STA_BSSID"
.LASF63:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF169:
	.string	"server_cert"
.LASF136:
	.string	"blufi_recv_softap_channel_evt_param"
.LASF43:
	.string	"BTC_PID_DM_SEC"
.LASF24:
	.string	"UINT16"
.LASF6:
	.string	"__uint32_t"
.LASF83:
	.string	"ESP_BLUFI_EVENT_RECV_USERNAME"
.LASF133:
	.string	"max_conn_num"
.LASF64:
	.string	"WIFI_AUTH_MAX"
.LASF116:
	.string	"op_mode"
.LASF177:
	.string	"esp_blufi_encrypt_func_t"
.LASF106:
	.string	"ESP_BLUFI_DH_PARAM_ERROR"
.LASF138:
	.string	"blufi_recv_username_evt_param"
.LASF205:
	.string	"tBLUFI_ENV"
.LASF141:
	.string	"blufi_recv_ca_evt_param"
.LASF87:
	.string	"ESP_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY"
.LASF147:
	.string	"pkey"
.LASF14:
	.string	"sizetype"
.LASF52:
	.string	"WIFI_MODE_NULL"
.LASF125:
	.string	"ssid"
.LASF15:
	.string	"long unsigned int"
.LASF70:
	.string	"ESP_BLUFI_EVENT_BLE_DISCONNECT"
.LASF57:
	.string	"wifi_mode_t"
.LASF155:
	.string	"deinit_finish"
.LASF217:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF139:
	.string	"name"
.LASF97:
	.string	"ESP_BLUFI_DEINIT_OK"
.LASF66:
	.string	"ESP_BLUFI_EVENT_INIT_FINISH"
.LASF41:
	.string	"BTC_PID_SPPLIKE"
.LASF5:
	.string	"short unsigned int"
.LASF149:
	.string	"blufi_recv_server_pkey_evt_param"
.LASF180:
	.string	"event_cb"
.LASF74:
	.string	"ESP_BLUFI_EVENT_DEAUTHENTICATE_STA"
.LASF77:
	.string	"ESP_BLUFI_EVENT_RECV_STA_PASSWD"
.LASF25:
	.string	"UINT32"
.LASF48:
	.string	"BTC_PID_AVRC"
.LASF40:
	.string	"BTC_PID_BLE_HID"
.LASF210:
	.string	"need_free"
.LASF114:
	.string	"blufi_deinit_finish_evt_param"
.LASF132:
	.string	"blufi_recv_softap_max_conn_num_evt_param"
.LASF109:
	.string	"ESP_BLUFI_DATA_FORMAT_ERROR"
.LASF167:
	.string	"username"
.LASF183:
	.string	"decrypt_func"
.LASF35:
	.string	"BTC_PID_DEV"
.LASF143:
	.string	"cert_len"
.LASF162:
	.string	"softap_ssid"
.LASF33:
	.string	"BTC_SIG_NUM"
.LASF62:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF103:
	.string	"ESP_BLUFI_ENCRYPT_ERROR"
.LASF79:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_PASSWD"
.LASF193:
	.string	"trans_id"
.LASF144:
	.string	"blufi_recv_client_cert_evt_param"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF82:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_CHANNEL"
.LASF202:
	.string	"aggr_buf"
.LASF111:
	.string	"btc_msg"
.LASF189:
	.string	"handle_char_p2e"
.LASF71:
	.string	"ESP_BLUFI_EVENT_REQ_CONNECT_TO_AP"
.LASF93:
	.string	"esp_blufi_cb_event_t"
.LASF158:
	.string	"disconnect"
.LASF160:
	.string	"sta_ssid"
.LASF145:
	.string	"blufi_recv_server_cert_evt_param"
.LASF184:
	.string	"checksum_func"
.LASF178:
	.string	"esp_blufi_decrypt_func_t"
.LASF222:
	.string	"blufi_env"
.LASF56:
	.string	"WIFI_MODE_MAX"
.LASF190:
	.string	"handle_char_e2p"
.LASF164:
	.string	"softap_max_conn_num"
.LASF208:
	.string	"output_data"
.LASF142:
	.string	"cert"
.LASF73:
	.string	"ESP_BLUFI_EVENT_GET_WIFI_STATUS"
.LASF81:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_AUTH_MODE"
.LASF42:
	.string	"BTC_PID_BLUFI"
.LASF120:
	.string	"conn_id"
.LASF148:
	.string	"pkey_len"
.LASF154:
	.string	"init_finish"
.LASF32:
	.string	"BTC_SIG_API_CB"
.LASF119:
	.string	"server_if"
.LASF80:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_MAX_CONN_NUM"
.LASF194:
	.string	"congest"
.LASF161:
	.string	"sta_passwd"
.LASF150:
	.string	"blufi_get_error_evt_param"
.LASF123:
	.string	"bssid"
.LASF108:
	.string	"ESP_BLUFI_MAKE_PUBLIC_ERROR"
.LASF191:
	.string	"handle_descr_e2p"
.LASF172:
	.string	"report_error"
.LASF212:
	.string	"bd_addr_null"
.LASF218:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/esp/blufi/blufi_protocol.c"
.LASF185:
	.string	"esp_blufi_callbacks_t"
.LASF219:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF151:
	.string	"blufi_recv_custom_data_evt_param"
.LASF27:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"unsigned int"
.LASF146:
	.string	"blufi_recv_client_pkey_evt_param"
.LASF2:
	.string	"short int"
.LASF126:
	.string	"ssid_len"
.LASF26:
	.string	"BOOLEAN"
.LASF215:
	.string	"esp_log_timestamp"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF122:
	.string	"blufi_recv_sta_bssid_evt_param"
.LASF135:
	.string	"auth_mode"
.LASF221:
	.string	"__func__"
.LASF153:
	.string	"data_len"
.LASF128:
	.string	"passwd"
.LASF204:
	.string	"offset"
.LASF137:
	.string	"channel"
.LASF186:
	.string	"gatt_if"
.LASF213:
	.string	"btc_blufi_send_encap"
.LASF157:
	.string	"connect"
.LASF117:
	.string	"blufi_connect_evt_param"
.LASF187:
	.string	"srvc_inst"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF50:
	.string	"BTC_PID_NUM"
.LASF68:
	.string	"ESP_BLUFI_EVENT_SET_WIFI_OPMODE"
.LASF38:
	.string	"BTC_PID_GATT_COMMON"
.LASF198:
	.string	"enabled"
.LASF124:
	.string	"blufi_recv_sta_ssid_evt_param"
.LASF200:
	.string	"recv_seq"
.LASF201:
	.string	"sec_mode"
.LASF159:
	.string	"sta_bssid"
.LASF182:
	.string	"encrypt_func"
.LASF16:
	.string	"char"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF134:
	.string	"blufi_recv_softap_auth_mode_evt_param"
.LASF170:
	.string	"client_pkey"
.LASF166:
	.string	"softap_channel"
.LASF4:
	.string	"__uint16_t"
.LASF60:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF51:
	.string	"esp_bd_addr_t"
.LASF96:
	.string	"esp_blufi_init_state_t"
.LASF78:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_SSID"
.LASF94:
	.string	"ESP_BLUFI_INIT_OK"
.LASF121:
	.string	"blufi_disconnect_evt_param"
.LASF152:
	.string	"data"
.LASF99:
	.string	"esp_blufi_deinit_state_t"
.LASF207:
	.string	"param"
.LASF36:
	.string	"BTC_PID_GATTS"
.LASF95:
	.string	"ESP_BLUFI_INIT_FAILED"
.LASF181:
	.string	"negotiate_data_handler"
.LASF188:
	.string	"handle_srvc"
.LASF127:
	.string	"blufi_recv_sta_passwd_evt_param"
.LASF12:
	.string	"uint32_t"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF67:
	.string	"ESP_BLUFI_EVENT_DEINIT_FINISH"
.LASF46:
	.string	"BTC_PID_PRF_QUE"
.LASF54:
	.string	"WIFI_MODE_AP"
.LASF23:
	.string	"UINT8"
.LASF84:
	.string	"ESP_BLUFI_EVENT_RECV_CA_CERT"
.LASF53:
	.string	"WIFI_MODE_STA"
.LASF10:
	.string	"uint8_t"
.LASF211:
	.string	"bd_addr_any"
.LASF90:
	.string	"ESP_BLUFI_EVENT_GET_WIFI_LIST"
.LASF91:
	.string	"ESP_BLUFI_EVENT_REPORT_ERROR"
.LASF156:
	.string	"wifi_mode"
.LASF37:
	.string	"BTC_PID_GATTC"
.LASF98:
	.string	"ESP_BLUFI_DEINIT_FAILED"
.LASF104:
	.string	"ESP_BLUFI_INIT_SECURITY_ERROR"
.LASF174:
	.string	"esp_blufi_cb_param_t"
.LASF130:
	.string	"blufi_recv_softap_ssid_evt_param"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF192:
	.string	"is_connected"
.LASF88:
	.string	"ESP_BLUFI_EVENT_RECV_SERVER_PRIV_KEY"
.LASF107:
	.string	"ESP_BLUFI_READ_PARAM_ERROR"
.LASF92:
	.string	"ESP_BLUFI_EVENT_RECV_CUSTOM_DATA"
.LASF168:
	.string	"client_cert"
.LASF163:
	.string	"softap_passwd"
.LASF203:
	.string	"total_len"
.LASF105:
	.string	"ESP_BLUFI_DH_MALLOC_ERROR"
.LASF59:
	.string	"WIFI_AUTH_WEP"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
