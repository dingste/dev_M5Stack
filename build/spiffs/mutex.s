	.file	"mutex.c"
	.text
.Ltext0:
	.section	.text._mtx_init,"ax",@progbits
	.align	4
	.global	_mtx_init
	.type	_mtx_init, @function
_mtx_init:
.LFB17:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/mutex.c"
	.loc 1 45 0
	entry	sp, 32
.LCFI0:
	retw.n
.LFE17:
	.size	_mtx_init, .-_mtx_init
	.section	.text.mtx_init,"ax",@progbits
	.literal_position
	.literal .LC0, port_interruptNesting
	.align	4
	.global	mtx_init
	.type	mtx_init, @function
mtx_init:
.LFB18:
	.loc 1 48 0
.LVL0:
	.loc 1 48 0
	entry	sp, 48
.LCFI1:
	.loc 1 49 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL1:
	s32i.n	a10, a2, 0
	.loc 1 51 0
	beqz.n	a10, .L2
.LBB14:
.LBB15:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE15:
.LBE14:
	.loc 1 52 0
	l32r	a9, .LC0
	addx4	a8, a8, a9
	l32i.n	a11, a8, 0
	beqz.n	a11, .L4
.LBB16:
	.loc 1 53 0
	movi.n	a8, 0
	.loc 1 54 0
	mov.n	a11, sp
	.loc 1 53 0
	s32i.n	a8, sp, 0
	.loc 1 54 0
	call8	xQueueGiveFromISR
.LVL2:
	.loc 1 55 0
	l32i.n	a8, sp, 0
	beqz.n	a8, .L2
	.loc 1 55 0 is_stmt 0 discriminator 1
	call8	_frxt_setup_switch
.LVL3:
	retw.n
.L4:
.LBE16:
	.loc 1 57 0 is_stmt 1
	mov.n	a13, a11
	mov.n	a12, a11
	call8	xQueueGenericSend
.LVL4:
.L2:
	retw.n
.LFE18:
	.size	mtx_init, .-mtx_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC1, port_interruptNesting
	.align	4
	.global	mtx_lock
	.type	mtx_lock, @function
mtx_lock:
.LFB19:
	.loc 1 62 0
.LVL5:
	entry	sp, 48
.LCFI2:
.LBB17:
.LBB18:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE18:
.LBE17:
	.loc 1 63 0
	l32r	a9, .LC1
	addx4	a8, a8, a9
	l32i.n	a11, a8, 0
	beqz.n	a11, .L13
.LBB19:
	.loc 1 65 0
	l32i.n	a10, a2, 0
	.loc 1 64 0
	movi.n	a11, 0
	.loc 1 65 0
	mov.n	a12, sp
	.loc 1 64 0
	s32i.n	a11, sp, 0
	.loc 1 65 0
	call8	xQueueReceiveFromISR
.LVL6:
	.loc 1 66 0
	l32i.n	a2, sp, 0
.LVL7:
	beqz.n	a2, .L12
	.loc 1 66 0 is_stmt 0 discriminator 1
	call8	_frxt_setup_switch
.LVL8:
	retw.n
.LVL9:
.L13:
.LBE19:
	.loc 1 68 0 is_stmt 1
	l32i.n	a10, a2, 0
	mov.n	a13, a11
	movi.n	a12, -1
	call8	xQueueGenericReceive
.LVL10:
.L12:
	retw.n
.LFE19:
	.size	mtx_lock, .-mtx_lock
	.section	.text.mtx_trylock,"ax",@progbits
	.align	4
	.global	mtx_trylock
	.type	mtx_trylock, @function
mtx_trylock:
.LFB20:
	.loc 1 72 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 73 0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL12:
	addi.n	a10, a10, -1
	movi.n	a8, 1
	movi.n	a2, 0
.LVL13:
	moveqz	a2, a8, a10
	.loc 1 78 0
	retw.n
.LFE20:
	.size	mtx_trylock, .-mtx_trylock
	.section	.iram1
	.literal_position
	.literal .LC2, port_interruptNesting
	.align	4
	.global	mtx_unlock
	.type	mtx_unlock, @function
mtx_unlock:
.LFB21:
	.loc 1 80 0
.LVL14:
	entry	sp, 48
.LCFI4:
.LBB20:
.LBB21:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE21:
.LBE20:
	.loc 1 81 0
	l32r	a9, .LC2
	addx4	a8, a8, a9
	l32i.n	a11, a8, 0
	beqz.n	a11, .L21
.LBB22:
	.loc 1 83 0
	l32i.n	a10, a2, 0
	.loc 1 82 0
	movi.n	a8, 0
	.loc 1 83 0
	mov.n	a11, sp
	.loc 1 82 0
	s32i.n	a8, sp, 0
	.loc 1 83 0
	call8	xQueueGiveFromISR
.LVL15:
	.loc 1 84 0
	l32i.n	a2, sp, 0
.LVL16:
	beqz.n	a2, .L20
	.loc 1 84 0 is_stmt 0 discriminator 1
	call8	_frxt_setup_switch
.LVL17:
	retw.n
.LVL18:
.L21:
.LBE22:
	.loc 1 86 0 is_stmt 1
	l32i.n	a10, a2, 0
	mov.n	a13, a11
	mov.n	a12, a11
	call8	xQueueGenericSend
.LVL19:
.L20:
	retw.n
.LFE21:
	.size	mtx_unlock, .-mtx_unlock
	.section	.text.mtx_destroy,"ax",@progbits
	.literal_position
	.literal .LC3, port_interruptNesting
	.align	4
	.global	mtx_destroy
	.type	mtx_destroy, @function
mtx_destroy:
.LFB22:
	.loc 1 90 0
.LVL20:
	entry	sp, 48
.LCFI5:
.LBB23:
.LBB24:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE24:
.LBE23:
	.loc 1 91 0
	l32r	a9, .LC3
	addx4	a8, a8, a9
	l32i.n	a11, a8, 0
	beqz.n	a11, .L28
.LBB25:
	.loc 1 93 0
	l32i.n	a10, a2, 0
	.loc 1 92 0
	movi.n	a8, 0
	.loc 1 93 0
	mov.n	a11, sp
	.loc 1 92 0
	s32i.n	a8, sp, 0
	.loc 1 93 0
	call8	xQueueGiveFromISR
.LVL21:
	.loc 1 94 0
	l32i.n	a8, sp, 0
	beqz.n	a8, .L30
	.loc 1 94 0 is_stmt 0 discriminator 1
	call8	_frxt_setup_switch
.LVL22:
	j	.L30
.L28:
.LBE25:
	.loc 1 96 0 is_stmt 1
	l32i.n	a10, a2, 0
	mov.n	a13, a11
	mov.n	a12, a11
	call8	xQueueGenericSend
.LVL23:
.L30:
	.loc 1 99 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL24:
	.loc 1 101 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	retw.n
.LFE22:
	.size	mtx_destroy, .-mtx_destroy
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/mutex.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x466
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
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
	.byte	0x3
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
	.byte	0x3
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x76
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4f
	.4byte	0xda
	.uleb128 0x8
	.string	"mtx"
	.byte	0x4
	.byte	0x8
	.byte	0x29
	.4byte	0x109
	.uleb128 0x9
	.string	"sem"
	.byte	0x8
	.byte	0x2a
	.4byte	0xe5
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x2
	.byte	0xce
	.4byte	0xa7
	.byte	0x3
	.4byte	0x124
	.uleb128 0xb
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x30
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x201
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x30
	.4byte	0x201
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x30
	.4byte	0x91
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x30
	.4byte	0x91
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.4byte	0x109
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x34
	.4byte	0x1a1
	.uleb128 0x10
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x11
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x1da
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x35
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x415
	.4byte	0x1d0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x421
	.byte	0
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0x42d
	.4byte	0x1f7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x439
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3e
	.4byte	0x201
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	0x109
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x3f
	.4byte	0x24e
	.uleb128 0x10
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x11
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x28c
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x40
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x445
	.4byte	0x282
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x421
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x451
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0x48
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2df
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0x1
	.byte	0x48
	.4byte	0x201
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x451
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x50
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x369
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0x1
	.byte	0x50
	.4byte	0x201
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	0x109
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x51
	.4byte	0x326
	.uleb128 0x10
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x11
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x35f
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x52
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LVL15
	.4byte	0x415
	.4byte	0x355
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0x421
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x439
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fa
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5a
	.4byte	0x201
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	0x109
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x5b
	.4byte	0x3ae
	.uleb128 0x10
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x11
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x3e7
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5c
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0x415
	.4byte	0x3dd
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL22
	.4byte	0x421
	.byte	0
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0x439
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x45d
	.byte	0
	.uleb128 0x1a
	.4byte	0x2c
	.4byte	0x40a
	.uleb128 0x1b
	.4byte	0x7a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2b
	.4byte	0x3fa
	.uleb128 0x1d
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x4f4
	.uleb128 0x1d
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x13d
	.uleb128 0x1d
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x5d0
	.uleb128 0x1d
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x265
	.uleb128 0x1d
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x543
	.uleb128 0x1d
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x38a
	.uleb128 0x1d
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"mtx_init"
.LASF5:
	.string	"__uint8_t"
.LASF41:
	.string	"_mtx_init"
.LASF18:
	.string	"TickType_t"
.LASF32:
	.string	"xQueueGenericCreate"
.LASF19:
	.string	"QueueHandle_t"
.LASF34:
	.string	"xQueueReceiveFromISR"
.LASF31:
	.string	"_frxt_setup_switch"
.LASF28:
	.string	"mtx_unlock"
.LASF36:
	.string	"vQueueDelete"
.LASF37:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"UBaseType_t"
.LASF40:
	.string	"xPortGetCoreID"
.LASF11:
	.string	"long unsigned int"
.LASF35:
	.string	"xQueueGenericReceive"
.LASF1:
	.string	"short unsigned int"
.LASF39:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spiffs"
.LASF6:
	.string	"__uint32_t"
.LASF22:
	.string	"name"
.LASF3:
	.string	"unsigned char"
.LASF20:
	.string	"SemaphoreHandle_t"
.LASF4:
	.string	"short int"
.LASF38:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/mutex.c"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"mtx_destroy"
.LASF43:
	.string	"port_interruptNesting"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF42:
	.string	"mtx_trylock"
.LASF30:
	.string	"xQueueGiveFromISR"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF26:
	.string	"mtx_lock"
.LASF21:
	.string	"mutex"
.LASF23:
	.string	"type"
.LASF27:
	.string	"xHigherPriorityTaskWoken"
.LASF33:
	.string	"xQueueGenericSend"
.LASF24:
	.string	"opts"
.LASF14:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF16:
	.string	"BaseType_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
