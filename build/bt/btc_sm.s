	.file	"btc_sm.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"BT_BTC"
.LC3:
	.string	"\033[0;31mE (%d) %s: %s : p_handlers is NULL\033[0m\n"
	.section	.text.btc_sm_init,"ax",@progbits
	.literal_position
	.literal .LC0, __FUNCTION__$3410
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, 65535
	.align	4
	.global	btc_sm_init
	.type	btc_sm_init, @function
btc_sm_init:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_sm.c"
	.loc 1 71 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 74 0
	bnez.n	a2, .L2
	.loc 1 75 0 discriminator 1
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC2
	l32r	a15, .LC0
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 76 0 discriminator 1
	retw.n
.L2:
	.loc 1 79 0
	movi.n	a10, 8
	call8	malloc
.LVL3:
	.loc 1 80 0
	s32i.n	a3, a10, 0
	.loc 1 84 0
	addx4	a3, a3, a2
.LVL4:
	.loc 1 79 0
	mov.n	a4, a10
.LVL5:
	.loc 1 81 0
	s32i.n	a2, a10, 4
	.loc 1 84 0
	l32i.n	a2, a3, 0
.LVL6:
	l32r	a10, .LC5
.LVL7:
	movi.n	a11, 0
	callx8	a2
.LVL8:
	.loc 1 86 0
	mov.n	a2, a4
	.loc 1 87 0
	retw.n
.LFE12:
	.size	btc_sm_init, .-btc_sm_init
	.section	.rodata.str1.1
.LC8:
	.string	"\033[0;31mE (%d) %s: %s : Invalid handle\033[0m\n"
	.section	.text.btc_sm_shutdown,"ax",@progbits
	.literal_position
	.literal .LC6, __FUNCTION__$3415
	.literal .LC7, .LC1
	.literal .LC9, .LC8
	.align	4
	.global	btc_sm_shutdown
	.type	btc_sm_shutdown, @function
btc_sm_shutdown:
.LFB13:
	.loc 1 99 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 99 0
	mov.n	a10, a2
	.loc 1 102 0
	bnez.n	a2, .L5
	.loc 1 103 0 discriminator 1
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC7
	l32r	a15, .LC6
	l32r	a12, .LC9
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL12:
	.loc 1 104 0 discriminator 1
	retw.n
.L5:
	.loc 1 106 0
	call8	free
.LVL13:
	retw.n
.LFE13:
	.size	btc_sm_shutdown, .-btc_sm_shutdown
	.section	.text.btc_sm_get_state,"ax",@progbits
	.literal_position
	.literal .LC10, __FUNCTION__$3420
	.literal .LC11, .LC1
	.literal .LC12, .LC8
	.align	4
	.global	btc_sm_get_state
	.type	btc_sm_get_state, @function
btc_sm_get_state:
.LFB14:
	.loc 1 119 0
.LVL14:
	entry	sp, 32
.LCFI2:
.LVL15:
	.loc 1 122 0
	bnez.n	a2, .L8
	.loc 1 123 0 discriminator 1
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC11
	l32r	a15, .LC10
	l32r	a12, .LC12
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 124 0 discriminator 1
	retw.n
.L8:
	.loc 1 127 0
	l32i.n	a2, a2, 0
.LVL18:
	.loc 1 128 0
	retw.n
.LFE14:
	.size	btc_sm_get_state, .-btc_sm_get_state
	.section	.text.btc_sm_dispatch,"ax",@progbits
	.literal_position
	.literal .LC13, __FUNCTION__$3428
	.literal .LC14, .LC1
	.literal .LC15, .LC8
	.align	4
	.global	btc_sm_dispatch
	.type	btc_sm_dispatch, @function
btc_sm_dispatch:
.LFB15:
	.loc 1 143 0
.LVL19:
	entry	sp, 32
.LCFI3:
.LVL20:
	.loc 1 143 0
	mov.n	a10, a3
	mov.n	a11, a4
	.loc 1 148 0
	bnez.n	a2, .L11
	.loc 1 149 0 discriminator 1
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC14
	l32r	a15, .LC13
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	.loc 1 150 0 discriminator 1
	movi.n	a2, 1
.LVL23:
	retw.n
.LVL24:
.L11:
	.loc 1 153 0
	l32i.n	a8, a2, 0
	l32i.n	a2, a2, 4
.LVL25:
	addx4	a2, a8, a2
	l32i.n	a2, a2, 0
	callx8	a2
.LVL26:
	.loc 1 157 0
	movi.n	a8, 8
	movi.n	a2, 0
	moveqz	a2, a8, a10
	.loc 1 158 0
	retw.n
.LFE15:
	.size	btc_sm_dispatch, .-btc_sm_dispatch
	.section	.text.btc_sm_change_state,"ax",@progbits
	.literal_position
	.literal .LC16, __FUNCTION__$3435
	.literal .LC17, .LC1
	.literal .LC18, .LC8
	.literal .LC19, 65534
	.literal .LC20, 65535
	.align	4
	.global	btc_sm_change_state
	.type	btc_sm_change_state, @function
btc_sm_change_state:
.LFB16:
	.loc 1 174 0
.LVL27:
	entry	sp, 32
.LCFI4:
.LVL28:
	.loc 1 178 0
	bnez.n	a2, .L15
	.loc 1 179 0 discriminator 1
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC17
	l32r	a15, .LC16
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
	.loc 1 180 0 discriminator 1
	movi.n	a2, 1
.LVL31:
	retw.n
.LVL32:
.L15:
	.loc 1 184 0
	l32i.n	a5, a2, 4
	l32i.n	a4, a2, 0
	l32r	a10, .LC19
	addx4	a4, a4, a5
	l32i.n	a4, a4, 0
	movi.n	a11, 0
	callx8	a4
.LVL33:
	.loc 1 189 0
	s32i.n	a3, a2, 0
	.loc 1 192 0
	l32i.n	a2, a2, 4
.LVL34:
	.loc 1 185 0
	movi.n	a5, 8
	movi.n	a11, 0
	mov.n	a4, a5
	.loc 1 192 0
	addx4	a3, a3, a2
.LVL35:
	.loc 1 185 0
	movnez	a4, a11, a10
.LVL36:
	.loc 1 192 0
	l32i.n	a2, a3, 0
	l32r	a10, .LC20
	callx8	a2
.LVL37:
	.loc 1 193 0
	mov.n	a2, a5
	movnez	a2, a4, a10
	.loc 1 197 0
	retw.n
.LFE16:
	.size	btc_sm_change_state, .-btc_sm_change_state
	.section	.rodata.__FUNCTION__$3435,"a",@progbits
	.type	__FUNCTION__$3435, @object
	.size	__FUNCTION__$3435, 20
__FUNCTION__$3435:
	.string	"btc_sm_change_state"
	.section	.rodata.__FUNCTION__$3428,"a",@progbits
	.type	__FUNCTION__$3428, @object
	.size	__FUNCTION__$3428, 16
__FUNCTION__$3428:
	.string	"btc_sm_dispatch"
	.section	.rodata.__FUNCTION__$3420,"a",@progbits
	.type	__FUNCTION__$3420, @object
	.size	__FUNCTION__$3420, 17
__FUNCTION__$3420:
	.string	"btc_sm_get_state"
	.section	.rodata.__FUNCTION__$3415,"a",@progbits
	.type	__FUNCTION__$3415, @object
	.size	__FUNCTION__$3415, 16
__FUNCTION__$3415:
	.string	"btc_sm_shutdown"
	.section	.rodata.__FUNCTION__$3410,"a",@progbits
	.type	__FUNCTION__$3410, @object
	.size	__FUNCTION__$3410, 12
__FUNCTION__$3410:
	.string	"btc_sm_init"
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
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
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_sm.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x620
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xc
	.4byte	.LASF69
	.4byte	.LASF70
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x23
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x29
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0x89
	.4byte	0xc8
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x1f
	.4byte	0x110
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
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x48
	.4byte	0x189
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x6
	.byte	0x5b
	.4byte	0x110
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x27
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0x28
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x29
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x7
	.byte	0x2a
	.4byte	0x1c0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x1da
	.uleb128 0xc
	.4byte	0x19f
	.uleb128 0xc
	.4byte	0xcf
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0x24
	.4byte	0x1fb
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x25
	.4byte	0x194
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0x26
	.4byte	0x1fb
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1b5
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x1
	.byte	0x27
	.4byte	0x1da
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1
	.byte	0x46
	.4byte	0x1aa
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ca
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x46
	.4byte	0x2ca
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x46
	.4byte	0x194
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x48
	.4byte	0x2d5
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF54
	.4byte	0x2eb
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3410
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x5f7
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x602
	.4byte	0x2a1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3410
	.byte	0
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x60d
	.4byte	0x2b4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2d0
	.uleb128 0x17
	.4byte	0x1b5
	.uleb128 0xa
	.byte	0x4
	.4byte	0x201
	.uleb128 0x5
	.4byte	0xc8
	.4byte	0x2eb
	.uleb128 0x6
	.4byte	0xb1
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.4byte	0x2db
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.byte	0x62
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x378
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0x62
	.4byte	0x1aa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0x64
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF54
	.4byte	0x388
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3415
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x5f7
	.uleb128 0x14
	.4byte	.LVL12
	.4byte	0x602
	.4byte	0x36e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3415
	.byte	0
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0x618
	.byte	0
	.uleb128 0x5
	.4byte	0xc8
	.4byte	0x388
	.uleb128 0x6
	.4byte	0xb1
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.4byte	0x378
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x76
	.4byte	0x194
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x410
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x76
	.4byte	0x1aa
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x78
	.4byte	0x2d5
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF54
	.4byte	0x420
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3420
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x5f7
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0x602
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3420
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xc8
	.4byte	0x420
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.4byte	0x410
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8d
	.4byte	0x189
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4da
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x8d
	.4byte	0x1aa
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.byte	0x8d
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF59
	.byte	0x1
	.byte	0x8e
	.4byte	0xcf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.byte	0x90
	.4byte	0x189
	.byte	0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x92
	.4byte	0x2d5
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF54
	.4byte	0x4da
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3428
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x5f7
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x602
	.4byte	0x4d1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3428
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL26
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	0x378
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.byte	0xad
	.4byte	0x189
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b2
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0xad
	.4byte	0x1aa
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0xad
	.4byte	0x194
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0xaf
	.4byte	0x189
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0xb0
	.4byte	0x2d5
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.LASF54
	.4byte	0x5c2
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3435
	.uleb128 0x13
	.4byte	.LVL29
	.4byte	0x5f7
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x602
	.4byte	0x583
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3435
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL33
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x59c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfffe
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL37
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xc8
	.4byte	0x5c2
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x13
	.byte	0
	.uleb128 0x17
	.4byte	0x5b2
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x5da
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x17
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x5f2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xb8
	.uleb128 0x20
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.byte	0x57
	.uleb128 0x20
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x5
	.byte	0x6b
	.uleb128 0x20
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x8
	.byte	0x65
	.uleb128 0x20
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL8-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL8-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.4byte	.LVL37-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"p_handlers"
.LASF57:
	.string	"btc_sm_dispatch"
.LASF30:
	.string	"BT_STATUS_DONE"
.LASF44:
	.string	"btc_sm_state_t"
.LASF69:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_sm.c"
.LASF36:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF48:
	.string	"state"
.LASF2:
	.string	"short int"
.LASF66:
	.string	"malloc"
.LASF32:
	.string	"BT_STATUS_PARM_INVALID"
.LASF15:
	.string	"sizetype"
.LASF42:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF12:
	.string	"UINT32"
.LASF5:
	.string	"__uint32_t"
.LASF58:
	.string	"event"
.LASF56:
	.string	"btc_sm_get_state"
.LASF29:
	.string	"BT_STATUS_BUSY"
.LASF9:
	.string	"uint8_t"
.LASF67:
	.string	"free"
.LASF33:
	.string	"BT_STATUS_UNHANDLED"
.LASF28:
	.string	"BT_STATUS_NOMEM"
.LASF35:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF39:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF7:
	.string	"long long int"
.LASF61:
	.string	"btc_sm_change_state"
.LASF13:
	.string	"BOOLEAN"
.LASF17:
	.string	"long int"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF11:
	.string	"UINT8"
.LASF54:
	.string	"__FUNCTION__"
.LASF55:
	.string	"btc_sm_init"
.LASF34:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF31:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF27:
	.string	"BT_STATUS_NOT_READY"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"bt_status_t"
.LASF53:
	.string	"p_cb"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF63:
	.string	"bd_addr_null"
.LASF50:
	.string	"btc_sm_cb_t"
.LASF38:
	.string	"BT_STATUS_PENDING"
.LASF60:
	.string	"status"
.LASF65:
	.string	"esp_log_write"
.LASF70:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF16:
	.string	"char"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"_Bool"
.LASF59:
	.string	"data"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF71:
	.string	"btc_sm_shutdown"
.LASF47:
	.string	"btc_sm_handler_t"
.LASF18:
	.string	"long unsigned int"
.LASF52:
	.string	"handle"
.LASF37:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
.LASF26:
	.string	"BT_STATUS_FAIL"
.LASF25:
	.string	"BT_STATUS_SUCCESS"
.LASF64:
	.string	"esp_log_timestamp"
.LASF62:
	.string	"bd_addr_any"
.LASF41:
	.string	"BT_STATUS_TIMEOUT"
.LASF40:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF46:
	.string	"btc_sm_handle_t"
.LASF68:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF51:
	.string	"initial_state"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF4:
	.string	"__uint8_t"
.LASF45:
	.string	"btc_sm_event_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
