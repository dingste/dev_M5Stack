	.file	"semaphore.c"
	.text
.Ltext0:
	.section	.text.osi_sem_new,"ax",@progbits
	.align	4
	.global	osi_sem_new
	.type	osi_sem_new, @function
osi_sem_new:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/semaphore.c"
	.loc 1 27 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 27 0
	mov.n	a10, a3
	mov.n	a11, a4
	.loc 1 28 0
	movi.n	a8, -1
	.loc 1 30 0
	beqz.n	a2, .L2
	.loc 1 31 0
	call8	xQueueCreateCountingSemaphore
.LVL2:
	.loc 1 32 0
	movi.n	a8, 1
	.loc 1 31 0
	s32i.n	a10, a2, 0
	.loc 1 32 0
	movi.n	a2, 0
.LVL3:
	moveqz	a2, a8, a10
	neg	a8, a2
.L2:
.LVL4:
	.loc 1 38 0
	mov.n	a2, a8
	retw.n
.LFE27:
	.size	osi_sem_new, .-osi_sem_new
	.section	.text.osi_sem_give,"ax",@progbits
	.align	4
	.global	osi_sem_give
	.type	osi_sem_give, @function
osi_sem_give:
.LFB28:
	.loc 1 43 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 44 0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL6:
	retw.n
.LFE28:
	.size	osi_sem_give, .-osi_sem_give
	.section	.text.osi_sem_take,"ax",@progbits
	.literal_position
	.literal .LC0, -858993459
	.align	4
	.global	osi_sem_take
	.type	osi_sem_take, @function
osi_sem_take:
.LFB29:
	.loc 1 56 0
.LVL7:
	entry	sp, 32
.LCFI2:
.LVL8:
	.loc 1 56 0
	mov.n	a12, a3
	.loc 1 59 0
	bnei	a3, -1, .L6
	.loc 1 60 0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL9:
	addi.n	a10, a10, -1
	movi.n	a8, 1
	movi.n	a2, 0
.LVL10:
	movnez	a2, a8, a10
	neg	a2, a2
	retw.n
.LVL11:
.L6:
	.loc 1 64 0
	l32r	a8, .LC0
	movi.n	a13, 0
	muluh	a12, a3, a8
	l32i.n	a10, a2, 0
	srli	a12, a12, 3
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL12:
	.loc 1 65 0
	addi.n	a10, a10, -1
	movi.n	a8, 0
	movi.n	a2, -2
.LVL13:
	moveqz	a2, a8, a10
.LVL14:
	.loc 1 70 0
	retw.n
.LFE29:
	.size	osi_sem_take, .-osi_sem_take
	.section	.text.osi_sem_free,"ax",@progbits
	.align	4
	.global	osi_sem_free
	.type	osi_sem_free, @function
osi_sem_free:
.LFB30:
	.loc 1 74 0
.LVL15:
	entry	sp, 32
.LCFI3:
	.loc 1 75 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL16:
	.loc 1 76 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	retw.n
.LFE30:
	.size	osi_sem_free, .-osi_sem_free
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x268
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
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
	.byte	0x3
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x76
	.4byte	0x86
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x58
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x4f
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7
	.byte	0x1d
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.4byte	0x33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137
	.uleb128 0x7
	.string	"sem"
	.byte	0x1
	.byte	0x1a
	.4byte	0x137
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1a
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x86
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.string	"ret"
	.byte	0x1
	.byte	0x1c
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LVL2
	.4byte	0x23b
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179
	.uleb128 0xe
	.string	"sem"
	.byte	0x1
	.byte	0x2a
	.4byte	0x137
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	.LVL6
	.4byte	0x247
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
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
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x37
	.4byte	0x33
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20f
	.uleb128 0x7
	.string	"sem"
	.byte	0x1
	.byte	0x37
	.4byte	0x137
	.4byte	.LLST2
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x37
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.string	"ret"
	.byte	0x1
	.byte	0x39
	.4byte	0x33
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x253
	.4byte	0x1db
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.4byte	.LVL12
	.4byte	0x253
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x49
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23b
	.uleb128 0xe
	.string	"sem"
	.byte	0x1
	.byte	0x49
	.4byte	0x137
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x25f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x57a
	.uleb128 0x11
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x265
	.uleb128 0x11
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x38a
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x3ac
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF20:
	.string	"init_count"
.LASF15:
	.string	"TickType_t"
.LASF16:
	.string	"QueueHandle_t"
.LASF5:
	.string	"short int"
.LASF29:
	.string	"vQueueDelete"
.LASF30:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"osi_sem_free"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF24:
	.string	"osi_sem_give"
.LASF2:
	.string	"short unsigned int"
.LASF28:
	.string	"xQueueGenericReceive"
.LASF17:
	.string	"SemaphoreHandle_t"
.LASF11:
	.string	"__uint32_t"
.LASF19:
	.string	"max_count"
.LASF22:
	.string	"osi_sem_take"
.LASF1:
	.string	"unsigned int"
.LASF18:
	.string	"osi_sem_t"
.LASF10:
	.string	"char"
.LASF0:
	.string	"long long unsigned int"
.LASF8:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF23:
	.string	"timeout"
.LASF31:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/semaphore.c"
.LASF27:
	.string	"xQueueGenericSend"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF26:
	.string	"xQueueCreateCountingSemaphore"
.LASF13:
	.string	"_Bool"
.LASF21:
	.string	"osi_sem_new"
.LASF14:
	.string	"BaseType_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
