	.file	"str.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"coap_new_string: malloc\n"
	.section	.text.coap_new_string,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	coap_new_string
	.type	coap_new_string, @function
coap_new_string:
.LFB38:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/str.c"
	.loc 1 17 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB4:
.LBB5:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/mem.h"
	.loc 2 71 0
	addi.n	a11, a2, 9
.LVL2:
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL3:
	mov.n	a2, a10
.LVL4:
.LBE5:
.LBE4:
	.loc 1 19 0
	bnez.n	a10, .L2
	.loc 1 21 0
	l32r	a11, .LC1
	movi.n	a10, 2
	call8	coap_log_impl
.LVL5:
	.loc 1 23 0
	retw.n
.L2:
	.loc 1 26 0
	movi.n	a12, 8
	movi.n	a11, 0
	call8	memset
.LVL6:
	.loc 1 27 0
	addi.n	a8, a2, 8
	s32i.n	a8, a2, 4
	.loc 1 29 0
	retw.n
.LFE38:
	.size	coap_new_string, .-coap_new_string
	.section	.text.coap_delete_string,"ax",@progbits
	.align	4
	.global	coap_delete_string
	.type	coap_delete_string, @function
coap_delete_string:
.LFB39:
	.loc 1 31 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
.LBB8:
.LBB9:
	.loc 2 78 0
	mov.n	a11, a2
	movi.n	a10, 0
	call8	coap_free_type
.LVL9:
	retw.n
.LBE9:
.LBE8:
.LFE39:
	.size	coap_delete_string, .-coap_delete_string
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
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
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/debug.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/str.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x28b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30
	.byte	0x3
	.byte	0x1a
	.4byte	0xd0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xf
	.4byte	0xef
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x10
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.string	"s"
	.byte	0x5
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"str"
	.byte	0x5
	.byte	0x12
	.4byte	0xd0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30
	.byte	0x2
	.byte	0x1d
	.4byte	0x149
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x2
	.byte	0x46
	.4byte	0x76
	.byte	0x3
	.4byte	0x165
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.byte	0x46
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x11
	.4byte	0x1f9
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f9
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x11
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x12
	.4byte	0x1f9
	.uleb128 0x12
	.4byte	0x149
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x12
	.4byte	0x1c8
	.uleb128 0x13
	.4byte	0x159
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x264
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 9
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x26f
	.4byte	0x1e4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x27a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x2
	.byte	0x4d
	.byte	0x3
	.4byte	0x217
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.byte	0x4d
	.4byte	0x76
	.byte	0
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x264
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1f9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	0x1ff
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x20
	.uleb128 0x1b
	.4byte	0x20b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x283
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x2
	.byte	0x37
	.uleb128 0x1c
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x3
	.byte	0x37
	.uleb128 0x1d
	.4byte	.LASF45
	.4byte	.LASF45
	.uleb128 0x1c
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x2
	.byte	0x41
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
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x16
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE38
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x9
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"coap_free_type"
.LASF21:
	.string	"size_t"
.LASF31:
	.string	"COAP_RESOURCE"
.LASF39:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/str.c"
.LASF45:
	.string	"memset"
.LASF41:
	.string	"coap_malloc"
.LASF1:
	.string	"short unsigned int"
.LASF19:
	.string	"LOG_DEBUG"
.LASF22:
	.string	"COAP_STRING"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"coap_delete_string"
.LASF15:
	.string	"LOG_ERR"
.LASF16:
	.string	"LOG_WARNING"
.LASF42:
	.string	"coap_new_string"
.LASF27:
	.string	"COAP_CONTEXT"
.LASF9:
	.string	"long unsigned int"
.LASF36:
	.string	"coap_log_impl"
.LASF30:
	.string	"COAP_PDU_BUF"
.LASF28:
	.string	"COAP_ENDPOINT"
.LASF3:
	.string	"unsigned char"
.LASF24:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF26:
	.string	"COAP_NODE"
.LASF13:
	.string	"LOG_ALERT"
.LASF25:
	.string	"COAP_PACKET"
.LASF43:
	.string	"coap_free"
.LASF17:
	.string	"LOG_NOTICE"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"LOG_EMERG"
.LASF14:
	.string	"LOG_CRIT"
.LASF10:
	.string	"char"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF34:
	.string	"object"
.LASF35:
	.string	"coap_malloc_type"
.LASF4:
	.string	"short int"
.LASF29:
	.string	"COAP_PDU"
.LASF18:
	.string	"LOG_INFO"
.LASF7:
	.string	"long int"
.LASF40:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/coap"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF33:
	.string	"size"
.LASF11:
	.string	"_Bool"
.LASF20:
	.string	"length"
.LASF6:
	.string	"long long unsigned int"
.LASF32:
	.string	"COAP_RESOURCEATTR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
