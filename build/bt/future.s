	.file	"future.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"future != NULL"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/future.c"
.LC5:
	.string	"future->ready_can_be_called"
	.section	.text.future_ready,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5394
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	future_ready
	.type	future_ready, @function
future_ready:
.LFB26:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/future.c"
	.loc 1 64 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 65 0
	bnez.n	a2, .L2
	.loc 1 65 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x41
	j	.L4
.L2:
	.loc 1 66 0 is_stmt 1
	l8ui	a8, a2, 0
	bnez.n	a8, .L3
	.loc 1 66 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x42
.L4:
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L3:
	.loc 1 68 0 is_stmt 1
	movi.n	a8, 0
	s8i	a8, a2, 0
	.loc 1 69 0
	s32i.n	a3, a2, 8
	.loc 1 70 0
	addi.n	a10, a2, 4
	call8	osi_sem_give
.LVL2:
	retw.n
.LFE26:
	.size	future_ready, .-future_ready
	.section	.text.future_free,"ax",@progbits
	.align	4
	.global	future_free
	.type	future_free, @function
future_free:
.LFB28:
	.loc 1 88 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 89 0
	beqz.n	a2, .L5
	.loc 1 93 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L7
	.loc 1 94 0
	addi.n	a10, a2, 4
	call8	osi_sem_free
.LVL4:
.L7:
	.loc 1 97 0
	mov.n	a10, a2
	call8	free
.LVL5:
.L5:
	retw.n
.LFE28:
	.size	future_free, .-future_free
	.section	.rodata.str1.1
.LC8:
	.string	"BT_OSI"
.LC10:
	.string	"\033[0;31mE (%d) %s: %s unable to allocate memory for return value.\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: %s unable to allocate memory for the semaphore.\033[0m\n"
	.section	.text.future_new,"ax",@progbits
	.literal_position
	.literal .LC7, __func__$5382
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	future_new
	.type	future_new, @function
future_new:
.LFB24:
	.loc 1 28 0
	entry	sp, 32
.LCFI2:
	.loc 1 29 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL6:
	mov.n	a2, a10
.LVL7:
	.loc 1 30 0
	bnez.n	a10, .L15
	.loc 1 31 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC9
	l32r	a15, .LC7
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	j	.L19
.L15:
	.loc 1 35 0
	movi.n	a12, 0
	movi.n	a11, 1
	addi.n	a10, a10, 4
	call8	osi_sem_new
.LVL9:
	beqz.n	a10, .L17
	.loc 1 36 0 discriminator 1
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC9
	l32r	a15, .LC7
	l32r	a12, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
.L19:
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 37 0 discriminator 1
	j	.L16
.L17:
	.loc 1 40 0
	movi.n	a8, 1
	s8i	a8, a2, 0
	.loc 1 41 0
	retw.n
.L16:
	.loc 1 43 0
	mov.n	a10, a2
	call8	future_free
.LVL12:
	.loc 1 44 0
	movi.n	a2, 0
.LVL13:
	.loc 1 45 0
	retw.n
.LFE24:
	.size	future_new, .-future_new
	.section	.text.future_new_immediate,"ax",@progbits
	.literal_position
	.literal .LC14, __func__$5388
	.literal .LC15, .LC8
	.literal .LC16, .LC10
	.align	4
	.global	future_new_immediate
	.type	future_new_immediate, @function
future_new_immediate:
.LFB25:
	.loc 1 48 0
.LVL14:
	entry	sp, 32
.LCFI3:
	.loc 1 49 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL15:
	.loc 1 48 0
	mov.n	a3, a2
	.loc 1 49 0
	mov.n	a2, a10
.LVL16:
	.loc 1 50 0
	bnez.n	a10, .L21
	.loc 1 51 0 discriminator 1
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC15
	l32r	a15, .LC14
	l32r	a12, .LC16
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
.LDL1:
	.loc 1 59 0 discriminator 1
	mov.n	a10, a2
	call8	future_free
.LVL19:
	.loc 1 60 0 discriminator 1
	retw.n
.L21:
	.loc 1 56 0
	movi.n	a8, 0
	.loc 1 55 0
	s32i.n	a3, a10, 8
	.loc 1 56 0
	s8i	a8, a10, 0
	.loc 1 61 0
	retw.n
.LFE25:
	.size	future_new_immediate, .-future_new_immediate
	.section	.text.future_await,"ax",@progbits
	.literal_position
	.literal .LC17, .LC0
	.literal .LC18, __func__$5398
	.literal .LC19, .LC3
	.align	4
	.global	future_await
	.type	future_await, @function
future_await:
.LFB27:
	.loc 1 74 0
.LVL20:
	entry	sp, 32
.LCFI4:
	.loc 1 75 0
	bnez.n	a2, .L24
	.loc 1 75 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	l32r	a10, .LC19
	movi.n	a11, 0x4b
	call8	__assert_func
.LVL21:
.L24:
	.loc 1 78 0 is_stmt 1
	l32i.n	a3, a2, 4
	beqz.n	a3, .L25
	.loc 1 79 0
	movi.n	a11, -1
	addi.n	a10, a2, 4
	call8	osi_sem_take
.LVL22:
.L25:
	.loc 1 82 0
	l32i.n	a3, a2, 8
.LVL23:
	.loc 1 83 0
	mov.n	a10, a2
	call8	future_free
.LVL24:
	.loc 1 85 0
	mov.n	a2, a3
.LVL25:
	retw.n
.LFE27:
	.size	future_await, .-future_await
	.section	.rodata.__func__$5398,"a",@progbits
	.type	__func__$5398, @object
	.size	__func__$5398, 13
__func__$5398:
	.string	"future_await"
	.section	.rodata.__func__$5394,"a",@progbits
	.type	__func__$5394, @object
	.size	__func__$5394, 13
__func__$5394:
	.string	"future_ready"
	.section	.rodata.__func__$5388,"a",@progbits
	.type	__func__$5388, @object
	.size	__func__$5388, 21
__func__$5388:
	.string	"future_new_immediate"
	.section	.rodata.__func__$5382,"a",@progbits
	.type	__func__$5382, @object
	.size	__func__$5382, 11
__func__$5382:
	.string	"future_new"
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI2-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI3-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/future.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4cc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF11
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x21
	.4byte	0x86
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	0x91
	.4byte	0xb3
	.uleb128 0x7
	.4byte	0x71
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53
	.byte	0xb
	.byte	0x1f
	.4byte	0xe4
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x58
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x4f
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x1d
	.4byte	0xef
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xc
	.byte	0x8
	.byte	0x18
	.4byte	0x136
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x8
	.byte	0x19
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x1a
	.4byte	0xfa
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x1b
	.4byte	0x68
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1d
	.4byte	0x105
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a7
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3f
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3f
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF32
	.4byte	0x1bd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5394
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x46c
	.4byte	0x196
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x477
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x136
	.uleb128 0x6
	.4byte	0x7f
	.4byte	0x1bd
	.uleb128 0x7
	.4byte	0x71
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x57
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x209
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x57
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x482
	.4byte	0x1f8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x48d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1b
	.4byte	0x1a7
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b7
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.4byte	0x1a7
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF32
	.4byte	0x2c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5382
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2a
	.4byte	.L16
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x498
	.4byte	0x263
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x4a3
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x4ae
	.4byte	0x28a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x4a3
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x4b9
	.4byte	0x2a6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x1c2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x7f
	.4byte	0x2c7
	.uleb128 0x7
	.4byte	0x71
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.4byte	0x2b7
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2f
	.4byte	0x1a7
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x384
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2f
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x31
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF32
	.4byte	0x394
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5388
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3a
	.4byte	.LDL1
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x498
	.4byte	0x333
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0x4a3
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0x4b9
	.4byte	0x373
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5388
	.byte	0
	.uleb128 0x11
	.4byte	.LVL19
	.4byte	0x1c2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x7f
	.4byte	0x394
	.uleb128 0x7
	.4byte	0x71
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	0x384
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x49
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x437
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x49
	.4byte	0x1a7
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LASF32
	.4byte	0x437
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5398
	.uleb128 0x1a
	.4byte	.LASF26
	.byte	0x1
	.byte	0x52
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LVL21
	.4byte	0x46c
	.4byte	0x40c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5398
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL22
	.4byte	0x4c4
	.4byte	0x426
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	.LVL24
	.4byte	0x1c2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x1ad
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x44f
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x13
	.4byte	0xa3
	.uleb128 0x1b
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x467
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xa3
	.uleb128 0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.byte	0x29
	.uleb128 0x1c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x28
	.uleb128 0x1c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x24
	.uleb128 0x1c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0xa
	.byte	0x5a
	.uleb128 0x1c
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0xa
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0xb
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x22
	.uleb128 0x1c
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xb
	.byte	0x6b
	.uleb128 0x1c
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x7
	.byte	0x26
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE27
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF11:
	.string	"__uint8_t"
.LASF28:
	.string	"future"
.LASF38:
	.string	"bd_addr_null"
.LASF16:
	.string	"ESP_LOG_ERROR"
.LASF17:
	.string	"ESP_LOG_WARN"
.LASF29:
	.string	"value"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"QueueHandle_t"
.LASF27:
	.string	"future_t"
.LASF33:
	.string	"future_new"
.LASF44:
	.string	"esp_log_timestamp"
.LASF32:
	.string	"__func__"
.LASF25:
	.string	"semaphore"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"UINT8"
.LASF41:
	.string	"osi_sem_free"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"free"
.LASF9:
	.string	"long unsigned int"
.LASF40:
	.string	"osi_sem_give"
.LASF49:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/future.c"
.LASF22:
	.string	"SemaphoreHandle_t"
.LASF2:
	.string	"short int"
.LASF30:
	.string	"future_ready"
.LASF39:
	.string	"__assert_func"
.LASF45:
	.string	"osi_sem_new"
.LASF47:
	.string	"osi_sem_take"
.LASF4:
	.string	"unsigned int"
.LASF23:
	.string	"osi_sem_t"
.LASF10:
	.string	"char"
.LASF12:
	.string	"uint8_t"
.LASF26:
	.string	"result"
.LASF8:
	.string	"sizetype"
.LASF35:
	.string	"error"
.LASF5:
	.string	"long long int"
.LASF37:
	.string	"bd_addr_any"
.LASF24:
	.string	"ready_can_be_called"
.LASF43:
	.string	"calloc"
.LASF15:
	.string	"ESP_LOG_NONE"
.LASF18:
	.string	"ESP_LOG_INFO"
.LASF31:
	.string	"future_free"
.LASF7:
	.string	"long int"
.LASF36:
	.string	"future_await"
.LASF19:
	.string	"ESP_LOG_DEBUG"
.LASF0:
	.string	"signed char"
.LASF46:
	.string	"esp_log_write"
.LASF14:
	.string	"_Bool"
.LASF34:
	.string	"future_new_immediate"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
