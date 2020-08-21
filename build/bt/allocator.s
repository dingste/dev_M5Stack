	.file	"allocator.c"
	.text
.Ltext0:
	.section	.text.osi_strdup,"ax",@progbits
	.align	4
	.global	osi_strdup
	.type	osi_strdup, @function
osi_strdup:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/allocator.c"
	.loc 1 119 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 120 0
	mov.n	a10, a2
	call8	strlen
.LVL1:
	addi.n	a3, a10, 1
.LVL2:
	.loc 1 121 0
	mov.n	a11, a3
	movi.n	a10, 1
	call8	calloc
.LVL3:
	mov.n	a8, a10
.LVL4:
	.loc 1 123 0
	beqz.n	a10, .L2
	.loc 1 127 0
	mov.n	a12, a3
	mov.n	a11, a2
	call8	memcpy
.LVL5:
	mov.n	a8, a10
.L2:
	.loc 1 129 0
	mov.n	a2, a8
.LVL6:
	retw.n
.LFE12:
	.size	osi_strdup, .-osi_strdup
	.section	.text.osi_malloc_func,"ax",@progbits
	.align	4
	.global	osi_malloc_func
	.type	osi_malloc_func, @function
osi_malloc_func:
.LFB13:
	.loc 1 132 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 146 0
	mov.n	a10, a2
	call8	malloc
.LVL8:
	.loc 1 149 0
	mov.n	a2, a10
.LVL9:
	retw.n
.LFE13:
	.size	osi_malloc_func, .-osi_malloc_func
	.section	.text.osi_calloc_func,"ax",@progbits
	.align	4
	.global	osi_calloc_func
	.type	osi_calloc_func, @function
osi_calloc_func:
.LFB14:
	.loc 1 152 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 1 166 0
	mov.n	a11, a2
	movi.n	a10, 1
	call8	calloc
.LVL11:
	.loc 1 169 0
	mov.n	a2, a10
.LVL12:
	retw.n
.LFE14:
	.size	osi_calloc_func, .-osi_calloc_func
	.section	.text.osi_free_func,"ax",@progbits
	.align	4
	.global	osi_free_func
	.type	osi_free_func, @function
osi_free_func:
.LFB15:
	.loc 1 172 0
.LVL13:
	entry	sp, 32
.LCFI3:
	.loc 1 176 0
	mov.n	a10, a2
	call8	free
.LVL14:
	retw.n
.LFE15:
	.size	osi_free_func, .-osi_free_func
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x263
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x90
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x7
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x21
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	0xad
	.4byte	0xcf
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x76
	.4byte	0x8a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157
	.uleb128 0xb
	.string	"str"
	.byte	0x1
	.byte	0x76
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x78
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x79
	.4byte	0x8a
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x231
	.4byte	0x127
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x23c
	.4byte	0x140
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL5
	.4byte	0x247
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x83
	.4byte	0x81
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x83
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0x250
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x97
	.4byte	0x81
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x97
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x23c
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0xab
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x201
	.uleb128 0x13
	.string	"ptr"
	.byte	0x1
	.byte	0xab
	.4byte	0x81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL14
	.4byte	0x25b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x214
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x7
	.4byte	0xbf
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x22c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.uleb128 0x15
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x6
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x7
	.byte	0x57
	.uleb128 0x16
	.4byte	.LASF31
	.4byte	.LASF31
	.uleb128 0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x7
	.byte	0x65
	.uleb128 0x15
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF22:
	.string	"bd_addr_null"
.LASF14:
	.string	"UINT8"
.LASF1:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"osi_strdup"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"new_string"
.LASF16:
	.string	"size"
.LASF29:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF30:
	.string	"osi_free_func"
.LASF5:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF6:
	.string	"short int"
.LASF23:
	.string	"strlen"
.LASF19:
	.string	"osi_malloc_func"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF20:
	.string	"osi_calloc_func"
.LASF21:
	.string	"bd_addr_any"
.LASF26:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"sizetype"
.LASF12:
	.string	"char"
.LASF31:
	.string	"memcpy"
.LASF24:
	.string	"calloc"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/allocator.c"
.LASF15:
	.string	"_Bool"
.LASF25:
	.string	"malloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
