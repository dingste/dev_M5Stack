	.file	"ffsystem.c"
	.text
.Ltext0:
	.section	.text.ff_memalloc,"ax",@progbits
	.align	4
	.global	ff_memalloc
	.type	ff_memalloc, @function
ff_memalloc:
.LFB26:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/ffsystem.c"
	.loc 1 23 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 28 0
	mov.n	a10, a2
	call8	malloc
.LVL1:
	.loc 1 30 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE26:
	.size	ff_memalloc, .-ff_memalloc
	.section	.text.ff_memcalloc,"ax",@progbits
	.align	4
	.global	ff_memcalloc
	.type	ff_memcalloc, @function
ff_memcalloc:
.LFB27:
	.loc 1 38 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 43 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	calloc
.LVL4:
	.loc 1 45 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE27:
	.size	ff_memcalloc, .-ff_memcalloc
	.section	.text.ff_memfree,"ax",@progbits
	.align	4
	.global	ff_memfree
	.type	ff_memfree, @function
ff_memfree:
.LFB28:
	.loc 1 55 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 56 0
	mov.n	a10, a2
	call8	free
.LVL7:
	retw.n
.LFE28:
	.size	ff_memfree, .-ff_memfree
	.section	.text.ff_cre_syncobj,"ax",@progbits
	.align	4
	.global	ff_cre_syncobj
	.type	ff_cre_syncobj, @function
ff_cre_syncobj:
.LFB29:
	.loc 1 77 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 78 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL9:
	.loc 1 79 0
	movi.n	a8, 1
	movi.n	a2, 0
.LVL10:
	.loc 1 78 0
	s32i.n	a10, a3, 0
	.loc 1 79 0
	movnez	a2, a8, a10
	.loc 1 80 0
	retw.n
.LFE29:
	.size	ff_cre_syncobj, .-ff_cre_syncobj
	.section	.text.ff_del_syncobj,"ax",@progbits
	.align	4
	.global	ff_del_syncobj
	.type	ff_del_syncobj, @function
ff_del_syncobj:
.LFB30:
	.loc 1 94 0
.LVL11:
	entry	sp, 32
.LCFI4:
	.loc 1 95 0
	mov.n	a10, a2
	call8	vQueueDelete
.LVL12:
	.loc 1 97 0
	movi.n	a2, 1
.LVL13:
	retw.n
.LFE30:
	.size	ff_del_syncobj, .-ff_del_syncobj
	.section	.text.ff_req_grant,"ax",@progbits
	.align	4
	.global	ff_req_grant
	.type	ff_req_grant, @function
ff_req_grant:
.LFB31:
	.loc 1 110 0
.LVL14:
	entry	sp, 32
.LCFI5:
	.loc 1 111 0
	movi.n	a13, 0
	movi	a12, 0x3e8
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL15:
	addi.n	a10, a10, -1
	movi.n	a8, 1
	movi.n	a2, 0
.LVL16:
	moveqz	a2, a8, a10
	.loc 1 112 0
	retw.n
.LFE31:
	.size	ff_req_grant, .-ff_req_grant
	.section	.text.ff_rel_grant,"ax",@progbits
	.align	4
	.global	ff_rel_grant
	.type	ff_rel_grant, @function
ff_rel_grant:
.LFB32:
	.loc 1 124 0
.LVL17:
	entry	sp, 32
.LCFI6:
	.loc 1 125 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL18:
	retw.n
.LFE32:
	.size	ff_rel_grant, .-ff_rel_grant
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/integer.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x306
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x16
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x76
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x4f
	.4byte	0xda
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x14
	.4byte	0x81
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x129
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x15
	.4byte	0x91
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LVL1
	.4byte	0x2b8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x25
	.4byte	0x81
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x175
	.uleb128 0xa
	.string	"num"
	.byte	0x1
	.byte	0x25
	.4byte	0x91
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x25
	.4byte	0x91
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x2c3
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x34
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x35
	.4byte	0x81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.4byte	.LVL7
	.4byte	0x2ce
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0x49
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ed
	.uleb128 0xa
	.string	"vol"
	.byte	0x1
	.byte	0x4a
	.4byte	0x9c
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4b
	.4byte	0x1ed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LVL9
	.4byte	0x2d9
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22c
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5c
	.4byte	0xe5
	.4byte	.LLST3
	.uleb128 0x8
	.4byte	.LVL12
	.4byte	0x2e5
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6b
	.4byte	0x25
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x276
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6c
	.4byte	0xe5
	.4byte	.LLST4
	.uleb128 0x8
	.4byte	.LVL15
	.4byte	0x2f1
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x79
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7a
	.4byte	0xe5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.4byte	.LVL18
	.4byte	0x2fd
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x8
	.byte	0x65
	.uleb128 0xe
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x8
	.byte	0x57
	.uleb128 0xe
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0x5a
	.uleb128 0xf
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x578
	.uleb128 0xf
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x3ac
	.uleb128 0xf
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x38a
	.uleb128 0xf
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x265
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
	.uleb128 0x8
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"calloc"
.LASF5:
	.string	"__uint8_t"
.LASF19:
	.string	"TickType_t"
.LASF29:
	.string	"ff_del_syncobj"
.LASF20:
	.string	"QueueHandle_t"
.LASF14:
	.string	"BYTE"
.LASF31:
	.string	"ff_memfree"
.LASF37:
	.string	"vQueueDelete"
.LASF40:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"ff_rel_grant"
.LASF11:
	.string	"long unsigned int"
.LASF38:
	.string	"xQueueGenericReceive"
.LASF1:
	.string	"short unsigned int"
.LASF24:
	.string	"msize"
.LASF21:
	.string	"SemaphoreHandle_t"
.LASF6:
	.string	"__uint32_t"
.LASF33:
	.string	"malloc"
.LASF41:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/ffsystem.c"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF15:
	.string	"uint8_t"
.LASF13:
	.string	"UINT"
.LASF8:
	.string	"long long unsigned int"
.LASF22:
	.string	"ff_memalloc"
.LASF30:
	.string	"ff_req_grant"
.LASF10:
	.string	"sizetype"
.LASF35:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"ff_memcalloc"
.LASF28:
	.string	"sobj"
.LASF39:
	.string	"xQueueGenericSend"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF27:
	.string	"ff_cre_syncobj"
.LASF36:
	.string	"xQueueCreateMutex"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"size"
.LASF17:
	.string	"_Bool"
.LASF42:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/fatfs"
.LASF18:
	.string	"BaseType_t"
.LASF26:
	.string	"mblock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
