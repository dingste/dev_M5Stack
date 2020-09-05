	.file	"xtensa_intr.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Unhandled interrupt %d on cpu %d!\n"
	.section	.text.xt_unhandled_interrupt,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	xt_unhandled_interrupt
	.type	xt_unhandled_interrupt, @function
xt_unhandled_interrupt:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/xtensa_intr.c"
	.loc 1 102 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 102 0
	mov.n	a11, a2
.LBB8:
.LBB9:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a12
 extui a12,a12,13,1
# 0 "" 2
.LVL1:
#NO_APP
.LBE9:
.LBE8:
	.loc 1 103 0
	l32r	a10, .LC1
	call8	ets_printf
.LVL2:
	retw.n
.LFE27:
	.size	xt_unhandled_interrupt, .-xt_unhandled_interrupt
	.section	.text.xt_set_exception_handler,"ax",@progbits
	.literal_position
	.literal .LC2, _xt_exception_table
	.literal .LC3, xt_unhandled_exception
	.align	4
	.global	xt_set_exception_handler
	.type	xt_set_exception_handler, @function
xt_set_exception_handler:
.LFB26:
	.loc 1 64 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 67 0
	movi.n	a8, 0x3f
	bltu	a8, a2, .L3
.LBB10:
.LBB11:
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL4:
#NO_APP
.LBE11:
.LBE10:
	.loc 1 71 0
	add.n	a2, a8, a2
.LVL5:
	.loc 1 72 0
	l32r	a8, .LC2
.LVL6:
	l32r	a9, .LC3
	addx4	a8, a2, a8
	l32i.n	a2, a8, 0
.LVL7:
	.loc 1 75 0
	moveqz	a3, a9, a3
.LVL8:
	s32i.n	a3, a8, 0
	.loc 1 81 0
	bne	a2, a9, .L6
.LVL9:
.L3:
	movi.n	a2, 0
.L6:
	.loc 1 82 0
	retw.n
.LFE26:
	.size	xt_set_exception_handler, .-xt_set_exception_handler
	.section	.text.xt_set_interrupt_handler,"ax",@progbits
	.literal_position
	.literal .LC4, Xthal_intlevel
	.literal .LC5, _xt_interrupt_table
	.literal .LC6, xt_unhandled_interrupt
	.align	4
	.global	xt_set_interrupt_handler
	.type	xt_set_interrupt_handler, @function
xt_set_interrupt_handler:
.LFB28:
	.loc 1 114 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 1 118 0
	movi.n	a8, 0x1f
	bltu	a8, a2, .L9
	.loc 1 120 0
	l32r	a8, .LC4
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	bgeui	a8, 4, .L9
.LBB12:
.LBB13:
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a9
 extui a9,a9,13,1
# 0 "" 2
.LVL11:
#NO_APP
.LBE13:
.LBE12:
	.loc 1 126 0
	l32r	a8, .LC5
	.loc 1 124 0
	add.n	a9, a9, a2
.LVL12:
	.loc 1 126 0
	addx8	a8, a9, a8
.LVL13:
	.loc 1 127 0
	l32i.n	a2, a8, 0
.LVL14:
	l32r	a10, .LC6
	.loc 1 129 0
	beqz.n	a3, .L10
	.loc 1 130 0
	s32i.n	a3, a8, 0
	.loc 1 131 0
	s32i.n	a4, a8, 4
	j	.L11
.L10:
	.loc 1 134 0
	s32i.n	a10, a8, 0
	.loc 1 135 0
	s32i.n	a9, a8, 4
.L11:
	.loc 1 138 0
	bne	a2, a10, .L12
.LVL15:
.L9:
	movi.n	a2, 0
.L12:
	.loc 1 139 0
	retw.n
.LFE28:
	.size	xt_set_interrupt_handler, .-xt_set_interrupt_handler
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_context.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_api.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/hal.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x427
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x70
	.byte	0x5
	.byte	0x67
	.4byte	0x1de
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x5
	.byte	0x68
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.string	"pc"
	.byte	0x5
	.byte	0x69
	.4byte	0x68
	.byte	0x4
	.uleb128 0x8
	.string	"ps"
	.byte	0x5
	.byte	0x6a
	.4byte	0x68
	.byte	0x8
	.uleb128 0x8
	.string	"a0"
	.byte	0x5
	.byte	0x6b
	.4byte	0x68
	.byte	0xc
	.uleb128 0x8
	.string	"a1"
	.byte	0x5
	.byte	0x6c
	.4byte	0x68
	.byte	0x10
	.uleb128 0x8
	.string	"a2"
	.byte	0x5
	.byte	0x6d
	.4byte	0x68
	.byte	0x14
	.uleb128 0x8
	.string	"a3"
	.byte	0x5
	.byte	0x6e
	.4byte	0x68
	.byte	0x18
	.uleb128 0x8
	.string	"a4"
	.byte	0x5
	.byte	0x6f
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x8
	.string	"a5"
	.byte	0x5
	.byte	0x70
	.4byte	0x68
	.byte	0x20
	.uleb128 0x8
	.string	"a6"
	.byte	0x5
	.byte	0x71
	.4byte	0x68
	.byte	0x24
	.uleb128 0x8
	.string	"a7"
	.byte	0x5
	.byte	0x72
	.4byte	0x68
	.byte	0x28
	.uleb128 0x8
	.string	"a8"
	.byte	0x5
	.byte	0x73
	.4byte	0x68
	.byte	0x2c
	.uleb128 0x8
	.string	"a9"
	.byte	0x5
	.byte	0x74
	.4byte	0x68
	.byte	0x30
	.uleb128 0x8
	.string	"a10"
	.byte	0x5
	.byte	0x75
	.4byte	0x68
	.byte	0x34
	.uleb128 0x8
	.string	"a11"
	.byte	0x5
	.byte	0x76
	.4byte	0x68
	.byte	0x38
	.uleb128 0x8
	.string	"a12"
	.byte	0x5
	.byte	0x77
	.4byte	0x68
	.byte	0x3c
	.uleb128 0x8
	.string	"a13"
	.byte	0x5
	.byte	0x78
	.4byte	0x68
	.byte	0x40
	.uleb128 0x8
	.string	"a14"
	.byte	0x5
	.byte	0x79
	.4byte	0x68
	.byte	0x44
	.uleb128 0x8
	.string	"a15"
	.byte	0x5
	.byte	0x7a
	.4byte	0x68
	.byte	0x48
	.uleb128 0x8
	.string	"sar"
	.byte	0x5
	.byte	0x7b
	.4byte	0x68
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x7c
	.4byte	0x68
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x7d
	.4byte	0x68
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7f
	.4byte	0x68
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x80
	.4byte	0x68
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x81
	.4byte	0x68
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x85
	.4byte	0x68
	.byte	0x64
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x86
	.4byte	0x68
	.byte	0x68
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x87
	.4byte	0x68
	.byte	0x6c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x91
	.4byte	0x91
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0xa
	.4byte	0x1fa
	.uleb128 0xb
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x25
	.4byte	0x1e9
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x28
	.4byte	0x217
	.uleb128 0x9
	.byte	0x4
	.4byte	0x21d
	.uleb128 0xa
	.4byte	0x228
	.uleb128 0xb
	.4byte	0x228
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1de
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.4byte	0x253
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5b
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.string	"arg"
	.byte	0x1
	.byte	0x5c
	.4byte	0x76
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5d
	.4byte	0x22e
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x2
	.byte	0xd0
	.4byte	0x86
	.byte	0x3
	.4byte	0x279
	.uleb128 0xe
	.string	"id"
	.byte	0x2
	.byte	0xd1
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x65
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0x65
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	0x25e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x67
	.4byte	0x2c2
	.uleb128 0x12
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x13
	.4byte	0x26e
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x41f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3f
	.4byte	0x20c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x342
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x3f
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x3f
	.4byte	0x20c
	.4byte	.LLST2
	.uleb128 0x18
	.string	"old"
	.byte	0x1
	.byte	0x41
	.4byte	0x20c
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	0x25e
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x47
	.uleb128 0x12
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x13
	.4byte	0x26e
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x71
	.4byte	0x201
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c2
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x71
	.4byte	0x33
	.4byte	.LLST5
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0x71
	.4byte	0x201
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0x71
	.4byte	0x76
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF30
	.byte	0x1
	.byte	0x73
	.4byte	0x3c2
	.4byte	.LLST6
	.uleb128 0x18
	.string	"old"
	.byte	0x1
	.byte	0x74
	.4byte	0x201
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	0x25e
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x7c
	.uleb128 0x12
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x13
	.4byte	0x26e
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x253
	.uleb128 0x1b
	.4byte	0x41
	.4byte	0x3d8
	.uleb128 0x1c
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x2ae
	.4byte	0x3e4
	.uleb128 0x1e
	.4byte	0x3c8
	.uleb128 0x1b
	.4byte	0x20c
	.4byte	0x3f9
	.uleb128 0x1c
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2b
	.4byte	0x3e9
	.uleb128 0x1b
	.4byte	0x253
	.4byte	0x414
	.uleb128 0x1c
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5f
	.4byte	0x404
	.uleb128 0x20
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.byte	0xde
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"_xt_exception_table"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"sizetype"
.LASF37:
	.string	"xPortGetCoreID"
.LASF25:
	.string	"xt_exc_handler"
.LASF11:
	.string	"__uint32_t"
.LASF26:
	.string	"handler"
.LASF27:
	.string	"xt_handler_table_entry"
.LASF16:
	.string	"lbeg"
.LASF28:
	.string	"xt_set_exception_handler"
.LASF35:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/xtensa_intr.c"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freertos"
.LASF7:
	.string	"long int"
.LASF15:
	.string	"excvaddr"
.LASF24:
	.string	"xt_handler"
.LASF38:
	.string	"xt_unhandled_interrupt"
.LASF13:
	.string	"exit"
.LASF30:
	.string	"entry"
.LASF3:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF33:
	.string	"_xt_interrupt_table"
.LASF39:
	.string	"ets_printf"
.LASF1:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF23:
	.string	"_Bool"
.LASF19:
	.string	"tmp0"
.LASF20:
	.string	"tmp1"
.LASF21:
	.string	"tmp2"
.LASF17:
	.string	"lend"
.LASF14:
	.string	"exccause"
.LASF22:
	.string	"XtExcFrame"
.LASF9:
	.string	"long unsigned int"
.LASF29:
	.string	"xt_set_interrupt_handler"
.LASF18:
	.string	"lcount"
.LASF34:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"Xthal_intlevel"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
