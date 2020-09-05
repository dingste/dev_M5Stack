	.file	"portevent.c"
	.text
.Ltext0:
	.section	.text.xMBPortEventInit,"ax",@progbits
	.literal_position
	.literal .LC0, xQueueHdl
	.align	4
	.global	xMBPortEventInit
	.type	xMBPortEventInit, @function
xMBPortEventInit:
.LFB30:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portevent.c"
	.loc 1 52 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 54 0
	movi.n	a12, 0
	movi.n	a11, 4
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL1:
	l32r	a2, .LC0
	.loc 1 59 0
	movi.n	a8, 1
	.loc 1 54 0
	s32i.n	a10, a2, 0
.LVL2:
	.loc 1 59 0
	movi.n	a2, 0
	movnez	a2, a8, a10
	.loc 1 60 0
	retw.n
.LFE30:
	.size	xMBPortEventInit, .-xMBPortEventInit
	.section	.text.vMBPortEventClose,"ax",@progbits
	.literal_position
	.literal .LC1, xQueueHdl
	.align	4
	.global	vMBPortEventClose
	.type	vMBPortEventClose, @function
vMBPortEventClose:
.LFB31:
	.loc 1 64 0
	entry	sp, 32
.LCFI1:
	.loc 1 65 0
	l32r	a2, .LC1
	l32i.n	a10, a2, 0
	beqz.n	a10, .L2
	.loc 1 67 0
	call8	vQueueDelete
.LVL3:
	.loc 1 68 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L2:
	retw.n
.LFE31:
	.size	vMBPortEventClose, .-vMBPortEventClose
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"xQueueHdl != NULL"
.LC6:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portevent.c"
	.section	.text.xMBPortEventPost,"ax",@progbits
	.literal_position
	.literal .LC2, xQueueHdl
	.literal .LC4, .LC3
	.literal .LC5, __func__$6480
	.literal .LC7, .LC6
	.align	4
	.global	xMBPortEventPost
	.type	xMBPortEventPost, @function
xMBPortEventPost:
.LFB32:
	.loc 1 74 0
.LVL4:
	entry	sp, 48
.LCFI2:
.LVL5:
	.loc 1 74 0
	s32i.n	a2, sp, 0
	.loc 1 76 0
	l32r	a2, .LC2
.LVL6:
	.loc 1 76 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L8
	.loc 1 76 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	l32r	a10, .LC7
	movi.n	a11, 0x4c
	call8	__assert_func
.LVL7:
.L8:
	.loc 1 78 0 is_stmt 1
	call8	bMBPortIsWithinException
.LVL8:
	beqz.n	a10, .L9
	.loc 1 80 0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, sp
.LVL9:
	call8	xQueueGenericSendFromISR
.LVL10:
	j	.L10
.L9:
	.loc 1 84 0
	mov.n	a13, a10
	l32i.n	a10, a2, 0
	movi.n	a12, 2
	mov.n	a11, sp
.LVL11:
	call8	xQueueGenericSend
.LVL12:
.L10:
	.loc 1 87 0
	movi.n	a2, 1
	retw.n
.LFE32:
	.size	xMBPortEventPost, .-xMBPortEventPost
	.section	.text.xMBPortEventGet,"ax",@progbits
	.literal_position
	.literal .LC8, xQueueHdl
	.literal .LC9, .LC3
	.literal .LC10, __func__$6484
	.literal .LC11, .LC6
	.align	4
	.global	xMBPortEventGet
	.type	xMBPortEventGet, @function
xMBPortEventGet:
.LFB33:
	.loc 1 91 0
.LVL13:
	entry	sp, 32
.LCFI3:
	.loc 1 92 0
	l32r	a8, .LC8
	l32i.n	a10, a8, 0
	.loc 1 92 0
	bnez.n	a10, .L12
	.loc 1 92 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC10
	l32r	a10, .LC11
	movi.n	a11, 0x5c
	call8	__assert_func
.LVL14:
.L12:
	.loc 1 95 0 is_stmt 1
	mov.n	a11, a2
	movi.n	a13, 0
	movi.n	a12, -1
	call8	xQueueGenericReceive
.LVL15:
	.loc 1 98 0
	addi.n	a10, a10, -1
.LVL16:
	movi.n	a8, 1
	movi.n	a2, 0
.LVL17:
	moveqz	a2, a8, a10
	.loc 1 99 0
	retw.n
.LFE33:
	.size	xMBPortEventGet, .-xMBPortEventGet
	.section	.text.xMBPortEventGetHandle,"ax",@progbits
	.literal_position
	.literal .LC12, xQueueHdl
	.align	4
	.global	xMBPortEventGetHandle
	.type	xMBPortEventGetHandle, @function
xMBPortEventGetHandle:
.LFB34:
	.loc 1 103 0
	entry	sp, 32
.LCFI4:
	.loc 1 109 0
	l32r	a8, .LC12
	l32i.n	a2, a8, 0
	retw.n
.LFE34:
	.size	xMBPortEventGetHandle, .-xMBPortEventGetHandle
	.section	.rodata.__func__$6484,"a",@progbits
	.type	__func__$6484, @object
	.size	__func__$6484, 16
__func__$6484:
	.string	"xMBPortEventGet"
	.section	.rodata.__func__$6480,"a",@progbits
	.type	__func__$6480, @object
	.size	__func__$6480, 17
__func__$6480:
	.string	"xMBPortEventPost"
	.section	.bss.xQueueHdl,"aw",@nobits
	.align	4
	.type	xQueueHdl, @object
	.size	xQueueHdl, 4
xQueueHdl:
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI4-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/port.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mbport.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x350
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
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
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x76
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x45
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x29
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2e
	.4byte	0xda
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0x33
	.4byte	0xcf
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14c
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x35
	.4byte	0xcf
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LVL1
	.4byte	0x301
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b
	.uleb128 0xd
	.4byte	.LVL3
	.4byte	0x30d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x49
	.4byte	0xcf
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21a
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x49
	.4byte	0xff
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4b
	.4byte	0xcf
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x22a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6480
	.uleb128 0x11
	.4byte	.LVL7
	.4byte	0x319
	.4byte	0x1dd
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6480
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0xd
	.4byte	.LVL8
	.4byte	0x324
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0x32f
	.4byte	0x204
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.4byte	.LVL12
	.4byte	0x33b
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x8a
	.4byte	0x22a
	.uleb128 0x13
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.4byte	0x21a
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5a
	.4byte	0xcf
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5a
	.4byte	0x2c0
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x2d6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6484
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5d
	.4byte	0xcf
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0x319
	.4byte	0x2a4
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6484
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0xa
	.4byte	.LVL15
	.4byte	0x347
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xff
	.uleb128 0x12
	.4byte	0x8a
	.4byte	0x2d6
	.uleb128 0x13
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.4byte	0x2c6
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0x66
	.4byte	0xc4
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2a
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	xQueueHdl
	.uleb128 0x18
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x5d0
	.uleb128 0x18
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x3ac
	.uleb128 0x19
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x8
	.byte	0x29
	.uleb128 0x19
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2f
	.uleb128 0x18
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x4f3
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x265
	.uleb128 0x18
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x38a
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE30
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL12-1
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE33
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x29
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"xMBPortEventGet"
.LASF5:
	.string	"__uint8_t"
.LASF23:
	.string	"EV_FRAME_SENT"
.LASF17:
	.string	"TickType_t"
.LASF24:
	.string	"eMBEventType"
.LASF34:
	.string	"xQueueGenericCreate"
.LASF19:
	.string	"BOOL"
.LASF18:
	.string	"QueueHandle_t"
.LASF4:
	.string	"short int"
.LASF44:
	.string	"vMBPortEventClose"
.LASF31:
	.string	"__func__"
.LASF35:
	.string	"vQueueDelete"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"xQueueGenericSendFromISR"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"long long unsigned int"
.LASF11:
	.string	"long unsigned int"
.LASF40:
	.string	"xQueueGenericReceive"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portevent.c"
.LASF25:
	.string	"xMBPortEventInit"
.LASF32:
	.string	"xEventHappened"
.LASF6:
	.string	"__uint32_t"
.LASF26:
	.string	"xMBPortEventPost"
.LASF36:
	.string	"__assert_func"
.LASF45:
	.string	"xMBPortEventGetHandle"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF13:
	.string	"uint8_t"
.LASF37:
	.string	"bMBPortIsWithinException"
.LASF43:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freemodbus"
.LASF22:
	.string	"EV_EXECUTE"
.LASF21:
	.string	"EV_FRAME_RECEIVED"
.LASF10:
	.string	"sizetype"
.LASF33:
	.string	"xQueueHdl"
.LASF7:
	.string	"long long int"
.LASF39:
	.string	"xQueueGenericSend"
.LASF27:
	.string	"bStatus"
.LASF20:
	.string	"EV_READY"
.LASF29:
	.string	"eEvent"
.LASF14:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF30:
	.string	"peEvent"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF16:
	.string	"BaseType_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
