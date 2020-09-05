	.file	"future.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"future != NULL"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/future.c"
.LC5:
	.string	"future->ready_can_be_called"
	.section	.text.future_ready,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5329
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	future_ready
	.type	future_ready, @function
future_ready:
.LFB29:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/future.c"
	.loc 1 63 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 64 0
	bnez.n	a2, .L2
	.loc 1 64 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x40
	j	.L4
.L2:
	.loc 1 65 0 is_stmt 1
	l8ui	a8, a2, 0
	bnez.n	a8, .L3
	.loc 1 65 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x41
.L4:
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L3:
	.loc 1 67 0 is_stmt 1
	movi.n	a8, 0
	s8i	a8, a2, 0
	.loc 1 68 0
	s32i.n	a3, a2, 8
	.loc 1 69 0
	addi.n	a10, a2, 4
	call8	osi_sem_give
.LVL2:
	retw.n
.LFE29:
	.size	future_ready, .-future_ready
	.section	.text.future_free,"ax",@progbits
	.align	4
	.global	future_free
	.type	future_free, @function
future_free:
.LFB31:
	.loc 1 87 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 88 0
	beqz.n	a2, .L5
	.loc 1 92 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L7
	.loc 1 93 0
	addi.n	a10, a2, 4
	call8	osi_sem_free
.LVL4:
.L7:
	.loc 1 96 0
	mov.n	a10, a2
	call8	free
.LVL5:
.L5:
	retw.n
.LFE31:
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
	.literal .LC7, __func__$5317
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	future_new
	.type	future_new, @function
future_new:
.LFB27:
	.loc 1 27 0
	entry	sp, 32
.LCFI2:
	.loc 1 28 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL6:
	mov.n	a2, a10
.LVL7:
	.loc 1 29 0
	bnez.n	a10, .L15
	.loc 1 30 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC9
	l32r	a15, .LC7
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	j	.L19
.L15:
	.loc 1 34 0
	movi.n	a12, 0
	movi.n	a11, 1
	addi.n	a10, a10, 4
	call8	osi_sem_new
.LVL9:
	beqz.n	a10, .L17
	.loc 1 35 0 discriminator 1
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
	.loc 1 36 0 discriminator 1
	j	.L16
.L17:
	.loc 1 39 0
	movi.n	a8, 1
	s8i	a8, a2, 0
	.loc 1 40 0
	retw.n
.L16:
	.loc 1 42 0
	mov.n	a10, a2
	call8	future_free
.LVL12:
	.loc 1 43 0
	movi.n	a2, 0
.LVL13:
	.loc 1 44 0
	retw.n
.LFE27:
	.size	future_new, .-future_new
	.section	.text.future_new_immediate,"ax",@progbits
	.literal_position
	.literal .LC14, __func__$5323
	.literal .LC15, .LC8
	.literal .LC16, .LC10
	.align	4
	.global	future_new_immediate
	.type	future_new_immediate, @function
future_new_immediate:
.LFB28:
	.loc 1 47 0
.LVL14:
	entry	sp, 32
.LCFI3:
	.loc 1 48 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL15:
	.loc 1 47 0
	mov.n	a3, a2
	.loc 1 48 0
	mov.n	a2, a10
.LVL16:
	.loc 1 49 0
	bnez.n	a10, .L21
	.loc 1 50 0 discriminator 1
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
	.loc 1 58 0 discriminator 1
	mov.n	a10, a2
	call8	future_free
.LVL19:
	.loc 1 59 0 discriminator 1
	retw.n
.L21:
	.loc 1 55 0
	movi.n	a8, 0
	.loc 1 54 0
	s32i.n	a3, a10, 8
	.loc 1 55 0
	s8i	a8, a10, 0
	.loc 1 60 0
	retw.n
.LFE28:
	.size	future_new_immediate, .-future_new_immediate
	.section	.text.future_await,"ax",@progbits
	.literal_position
	.literal .LC17, .LC0
	.literal .LC18, __func__$5333
	.literal .LC19, .LC3
	.align	4
	.global	future_await
	.type	future_await, @function
future_await:
.LFB30:
	.loc 1 73 0
.LVL20:
	entry	sp, 32
.LCFI4:
	.loc 1 74 0
	bnez.n	a2, .L24
	.loc 1 74 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	l32r	a10, .LC19
	movi.n	a11, 0x4a
	call8	__assert_func
.LVL21:
.L24:
	.loc 1 77 0 is_stmt 1
	l32i.n	a3, a2, 4
	beqz.n	a3, .L25
	.loc 1 78 0
	movi.n	a11, -1
	addi.n	a10, a2, 4
	call8	osi_sem_take
.LVL22:
.L25:
	.loc 1 81 0
	l32i.n	a3, a2, 8
.LVL23:
	.loc 1 82 0
	mov.n	a10, a2
	call8	future_free
.LVL24:
	.loc 1 84 0
	mov.n	a2, a3
.LVL25:
	retw.n
.LFE30:
	.size	future_await, .-future_await
	.section	.rodata.__func__$5333,"a",@progbits
	.type	__func__$5333, @object
	.size	__func__$5333, 13
__func__$5333:
	.string	"future_await"
	.section	.rodata.__func__$5329,"a",@progbits
	.type	__func__$5329, @object
	.size	__func__$5329, 13
__func__$5329:
	.string	"future_ready"
	.section	.rodata.__func__$5323,"a",@progbits
	.type	__func__$5323, @object
	.size	__func__$5323, 21
__func__$5323:
	.string	"future_new_immediate"
	.section	.rodata.__func__$5317,"a",@progbits
	.type	__func__$5317, @object
	.size	__func__$5317, 11
__func__$5317:
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI0-.LFB29
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/future.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x46b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.byte	0x8
	.byte	0x1f
	.4byte	0xac
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x2
	.byte	0x58
	.4byte	0x5d
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x4f
	.4byte	0xb3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1d
	.4byte	0xbe
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x105
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1a
	.4byte	0xc9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1b
	.4byte	0x5d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1d
	.4byte	0xd4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x176
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3e
	.4byte	0x176
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3e
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF29
	.4byte	0x18c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5329
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0x40b
	.4byte	0x165
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x416
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x105
	.uleb128 0x11
	.4byte	0x74
	.4byte	0x18c
	.uleb128 0x12
	.4byte	0x66
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	0x17c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x56
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x56
	.4byte	0x176
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x421
	.4byte	0x1c7
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x42c
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1a
	.4byte	0x176
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x286
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x1c
	.4byte	0x176
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF29
	.4byte	0x296
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5317
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x29
	.4byte	.L16
	.uleb128 0xd
	.4byte	.LVL6
	.4byte	0x437
	.4byte	0x232
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x442
	.uleb128 0xd
	.4byte	.LVL9
	.4byte	0x44d
	.4byte	0x259
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x442
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x458
	.4byte	0x275
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.4byte	.LVL12
	.4byte	0x191
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x74
	.4byte	0x296
	.uleb128 0x12
	.4byte	0x66
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.4byte	0x286
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2e
	.4byte	0x176
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x353
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2e
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x30
	.4byte	0x176
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF29
	.4byte	0x363
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5323
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x39
	.4byte	.LDL1
	.uleb128 0xd
	.4byte	.LVL15
	.4byte	0x437
	.4byte	0x302
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0x442
	.uleb128 0xd
	.4byte	.LVL18
	.4byte	0x458
	.4byte	0x342
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5323
	.byte	0
	.uleb128 0xf
	.4byte	.LVL19
	.4byte	0x191
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x74
	.4byte	0x363
	.uleb128 0x12
	.4byte	0x66
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	0x353
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x48
	.4byte	0x5d
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x1
	.byte	0x48
	.4byte	0x176
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF29
	.4byte	0x406
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5333
	.uleb128 0x1a
	.4byte	.LASF23
	.byte	0x1
	.byte	0x51
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL21
	.4byte	0x40b
	.4byte	0x3db
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5333
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL22
	.4byte	0x463
	.4byte	0x3f5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.4byte	.LVL24
	.4byte	0x191
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x17c
	.uleb128 0x1b
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x29
	.uleb128 0x1b
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x28
	.uleb128 0x1b
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.byte	0x24
	.uleb128 0x1b
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x4
	.byte	0x22
	.uleb128 0x1b
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x6b
	.uleb128 0x1b
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LFE28
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
	.4byte	.LFE30
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF24:
	.string	"future_t"
.LASF25:
	.string	"future"
.LASF12:
	.string	"ESP_LOG_ERROR"
.LASF13:
	.string	"ESP_LOG_WARN"
.LASF26:
	.string	"value"
.LASF18:
	.string	"QueueHandle_t"
.LASF30:
	.string	"future_new"
.LASF39:
	.string	"esp_log_timestamp"
.LASF29:
	.string	"__func__"
.LASF22:
	.string	"semaphore"
.LASF43:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF36:
	.string	"osi_sem_free"
.LASF1:
	.string	"unsigned char"
.LASF37:
	.string	"free"
.LASF9:
	.string	"long unsigned int"
.LASF35:
	.string	"osi_sem_give"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"SemaphoreHandle_t"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"__assert_func"
.LASF40:
	.string	"osi_sem_new"
.LASF42:
	.string	"osi_sem_take"
.LASF4:
	.string	"unsigned int"
.LASF20:
	.string	"osi_sem_t"
.LASF10:
	.string	"char"
.LASF27:
	.string	"future_ready"
.LASF23:
	.string	"result"
.LASF8:
	.string	"sizetype"
.LASF32:
	.string	"error"
.LASF5:
	.string	"long long int"
.LASF21:
	.string	"ready_can_be_called"
.LASF38:
	.string	"calloc"
.LASF11:
	.string	"ESP_LOG_NONE"
.LASF14:
	.string	"ESP_LOG_INFO"
.LASF28:
	.string	"future_free"
.LASF7:
	.string	"long int"
.LASF33:
	.string	"future_await"
.LASF15:
	.string	"ESP_LOG_DEBUG"
.LASF0:
	.string	"signed char"
.LASF41:
	.string	"esp_log_write"
.LASF17:
	.string	"_Bool"
.LASF31:
	.string	"future_new_immediate"
.LASF6:
	.string	"long long unsigned int"
.LASF16:
	.string	"ESP_LOG_VERBOSE"
.LASF44:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/future.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
