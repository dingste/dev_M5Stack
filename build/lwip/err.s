	.file	"err.c"
	.text
.Ltext0:
	.section	.text.err_to_errno,"ax",@progbits
	.literal_position
	.literal .LC0, err_to_errno_table
	.align	4
	.global	err_to_errno
	.type	err_to_errno, @function
err_to_errno:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/api/err.c"
	.loc 1 70 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 70 0
	extui	a8, a2, 0, 8
	.loc 1 71 0
	addi	a9, a8, 16
	extui	a9, a9, 0, 8
	movi.n	a10, 0x10
	.loc 1 72 0
	movi.n	a2, 5
.LVL1:
	.loc 1 71 0
	bltu	a10, a9, .L2
	.loc 1 74 0
	l32r	a2, .LC0
	sext	a8, a8, 7
.LVL2:
	neg	a8, a8
	addx4	a8, a8, a2
	l32i.n	a2, a8, 0
.L2:
	.loc 1 75 0
	retw.n
.LFE27:
	.size	err_to_errno, .-err_to_errno
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Unknown error."
	.section	.text.lwip_strerr,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, err_strerr
	.align	4
	.global	lwip_strerr
	.type	lwip_strerr, @function
lwip_strerr:
.LFB28:
	.loc 1 108 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 108 0
	extui	a8, a2, 0, 8
	.loc 1 109 0
	addi	a9, a8, 16
	extui	a9, a9, 0, 8
	movi.n	a10, 0x10
	.loc 1 110 0
	l32r	a2, .LC2
.LVL4:
	.loc 1 109 0
	bltu	a10, a9, .L5
	.loc 1 112 0
	l32r	a2, .LC3
	sext	a8, a8, 7
.LVL5:
	neg	a8, a8
	addx4	a8, a8, a2
	l32i.n	a2, a8, 0
.L5:
	.loc 1 113 0
	retw.n
.LFE28:
	.size	lwip_strerr, .-lwip_strerr
	.section	.rodata.str1.1
.LC4:
	.string	"Ok."
.LC5:
	.string	"Out of memory error."
.LC6:
	.string	"Buffer error."
.LC7:
	.string	"Timeout."
.LC8:
	.string	"Routing problem."
.LC9:
	.string	"Operation in progress."
.LC10:
	.string	"Illegal value."
.LC11:
	.string	"Operation would block."
.LC12:
	.string	"Address in use."
.LC13:
	.string	"Already connecting."
.LC14:
	.string	"Already connected."
.LC15:
	.string	"Not connected."
.LC16:
	.string	"Low-level netif error."
.LC17:
	.string	"Connection aborted."
.LC18:
	.string	"Connection reset."
.LC19:
	.string	"Connection closed."
.LC20:
	.string	"Illegal argument."
	.section	.rodata.err_strerr,"a",@progbits
	.align	4
	.type	err_strerr, @object
	.size	err_strerr, 68
err_strerr:
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.section	.rodata.err_to_errno_table,"a",@progbits
	.align	4
	.type	err_to_errno_table, @object
	.size	err_to_errno_table, 68
err_to_errno_table:
	.word	0
	.word	12
	.word	105
	.word	11
	.word	118
	.word	119
	.word	22
	.word	11
	.word	112
	.word	120
	.word	127
	.word	128
	.word	-1
	.word	113
	.word	104
	.word	128
	.word	5
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x147
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x11
	.4byte	0x45
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x39
	.4byte	0x8f
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x45
	.4byte	0x33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5
	.uleb128 0x8
	.string	"err"
	.byte	0x1
	.byte	0x45
	.4byte	0xa1
	.4byte	.LLST0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6b
	.4byte	0x84
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe
	.uleb128 0x8
	.string	"err"
	.byte	0x1
	.byte	0x6b
	.4byte	0xa1
	.4byte	.LLST1
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x10e
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.4byte	0x11f
	.uleb128 0x5
	.byte	0x3
	.4byte	err_to_errno_table
	.uleb128 0x6
	.4byte	0xfe
	.uleb128 0x9
	.4byte	0x84
	.4byte	0x134
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x50
	.4byte	0x145
	.uleb128 0x5
	.byte	0x3
	.4byte	err_strerr
	.uleb128 0x6
	.4byte	0x124
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE28
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"err_strerr"
.LASF9:
	.string	"long unsigned int"
.LASF17:
	.string	"err_to_errno_table"
.LASF21:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF14:
	.string	"err_t"
.LASF6:
	.string	"long long unsigned int"
.LASF16:
	.string	"lwip_strerr"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF12:
	.string	"int8_t"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"_Bool"
.LASF20:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/api/err.c"
.LASF11:
	.string	"__int8_t"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"err_to_errno"
.LASF19:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
