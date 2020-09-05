	.file	"esp_event_private.c"
	.text
.Ltext0:
	.section	.text.esp_event_is_handler_registered,"ax",@progbits
	.align	4
	.global	esp_event_is_handler_registered
	.type	esp_event_is_handler_registered, @function
esp_event_is_handler_registered:
.LFB29:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/esp_event_private.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 33 0
	movi.n	a10, 1
	movi.n	a9, 0
	.loc 1 21 0
	mov.n	a14, a2
	.loc 1 31 0
	l32i.n	a8, a2, 20
.LVL2:
	.loc 1 33 0
	mov.n	a13, a9
	add.n	a2, a4, a10
.LVL3:
	moveqz	a13, a10, a3
	movnez	a10, a9, a2
	extui	a13, a13, 0, 8
	extui	a10, a10, 0, 8
	.loc 1 31 0
	j	.L2
.L18:
	.loc 1 32 0
	l32i.n	a2, a8, 0
.LVL4:
	j	.L3
.L6:
	.loc 1 33 0
	beqz.n	a13, .L4
	beqz.n	a10, .L4
	.loc 1 33 0 discriminator 1
	l32i.n	a9, a2, 0
	beq	a5, a9, .L21
.L4:
	.loc 1 32 0 discriminator 2
	l32i.n	a2, a2, 24
.LVL5:
.L3:
	.loc 1 32 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L6
	.loc 1 40 0 is_stmt 1
	l32i.n	a9, a8, 4
.LVL6:
	j	.L7
.LVL7:
.L17:
	.loc 1 41 0
	l32i.n	a2, a9, 0
	bne	a2, a3, .L8
	.loc 1 42 0
	l32i.n	a11, a9, 4
.LVL8:
	j	.L9
.L11:
	.loc 1 43 0
	bnei	a4, -1, .L10
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32i.n	a2, a11, 0
	beq	a2, a5, .L21
.L10:
	.loc 1 42 0 is_stmt 1 discriminator 2
	l32i.n	a11, a11, 24
.LVL9:
.L9:
	.loc 1 42 0 is_stmt 0 discriminator 1
	bnez.n	a11, .L11
	.loc 1 50 0 is_stmt 1
	l32i.n	a11, a9, 8
.LVL10:
	j	.L12
.L16:
	.loc 1 51 0
	l32i.n	a2, a11, 0
	bne	a4, a2, .L13
	.loc 1 52 0
	l32i.n	a12, a11, 4
.LVL11:
	j	.L14
.L15:
	.loc 1 53 0
	l32i.n	a2, a12, 0
	beq	a5, a2, .L21
	.loc 1 52 0 discriminator 2
	l32i.n	a12, a12, 24
.LVL12:
.L14:
	.loc 1 52 0 is_stmt 0 discriminator 1
	bnez.n	a12, .L15
.LVL13:
.L13:
	.loc 1 50 0 is_stmt 1 discriminator 2
	l32i.n	a11, a11, 8
.LVL14:
.L12:
	.loc 1 50 0 is_stmt 0 discriminator 1
	bnez.n	a11, .L16
.LVL15:
.L8:
	.loc 1 40 0 is_stmt 1 discriminator 2
	l32i.n	a9, a9, 12
.LVL16:
.L7:
	.loc 1 40 0 is_stmt 0 discriminator 1
	bnez.n	a9, .L17
	.loc 1 31 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 8
.LVL17:
.L2:
	.loc 1 31 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L18
	.loc 1 24 0 is_stmt 1
	mov.n	a2, a8
	j	.L5
.L21:
	.loc 1 35 0
	movi.n	a2, 1
.L5:
.LVL18:
	.loc 1 66 0
	movi.n	a13, 0
	l32i.n	a10, a14, 16
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL19:
	.loc 1 68 0
	retw.n
.LFE29:
	.size	esp_event_is_handler_registered, .-esp_event_is_handler_registered
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/include/esp_event_base.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/private_include/esp_event_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4f6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x38
	.4byte	0x65
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x76
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x6e
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x58
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x4f
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x1b
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1c
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x1d
	.4byte	0x127
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12d
	.uleb128 0x8
	.4byte	0x147
	.uleb128 0x9
	.4byte	0x9f
	.uleb128 0x9
	.4byte	0x106
	.uleb128 0x9
	.4byte	0x7e
	.uleb128 0x9
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x22
	.4byte	0x15c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0x22
	.4byte	0x1a5
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x20
	.byte	0x9
	.byte	0x1b
	.4byte	0x1a5
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x9
	.byte	0x1c
	.4byte	0x11c
	.byte	0
	.uleb128 0xd
	.string	"arg"
	.byte	0x9
	.byte	0x1d
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x9
	.byte	0x1f
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x9
	.byte	0x20
	.4byte	0x94
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x22
	.4byte	0x147
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x23
	.4byte	0x15c
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0x9
	.byte	0x25
	.4byte	0x1cf
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x25
	.4byte	0x1a5
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x25
	.4byte	0x1b6
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.4byte	0x1ef
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0x2c
	.4byte	0x21f
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0xc
	.byte	0x9
	.byte	0x28
	.4byte	0x21f
	.uleb128 0xd
	.string	"id"
	.byte	0x9
	.byte	0x29
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x2a
	.4byte	0x1cf
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x2c
	.4byte	0x1da
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x2d
	.4byte	0x1ef
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9
	.byte	0x2f
	.4byte	0x249
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x2f
	.4byte	0x21f
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x2f
	.4byte	0x230
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x36
	.4byte	0x269
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0x36
	.4byte	0x2a6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x10
	.byte	0x9
	.byte	0x31
	.4byte	0x2a6
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0x32
	.4byte	0x106
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x33
	.4byte	0x1cf
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x9
	.byte	0x35
	.4byte	0x249
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x36
	.4byte	0x254
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x269
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x37
	.4byte	0x269
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x4
	.byte	0x9
	.byte	0x39
	.4byte	0x2d0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x39
	.4byte	0x2a6
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x9
	.byte	0x39
	.4byte	0x2b7
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x3e
	.4byte	0x2f0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0x3e
	.4byte	0x321
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0xc
	.byte	0x9
	.byte	0x3b
	.4byte	0x321
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3c
	.4byte	0x1cf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x3d
	.4byte	0x2d0
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x3e
	.4byte	0x2db
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x41
	.4byte	0x2f0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x4
	.byte	0x9
	.byte	0x43
	.4byte	0x34b
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x43
	.4byte	0x321
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x9
	.byte	0x43
	.4byte	0x332
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x53
	.4byte	0x36b
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0x53
	.4byte	0x3f0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x28
	.byte	0x9
	.byte	0x46
	.4byte	0x3f0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x47
	.4byte	0xbd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x9
	.byte	0x48
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x9
	.byte	0x49
	.4byte	0xe5
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x4a
	.4byte	0xe5
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x9
	.byte	0x4c
	.4byte	0xfb
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x9
	.byte	0x4d
	.4byte	0x34b
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x9
	.byte	0x50
	.4byte	0x89
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x9
	.byte	0x51
	.4byte	0x89
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x9
	.byte	0x52
	.4byte	0xfb
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x53
	.4byte	0x356
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36b
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x9
	.byte	0x55
	.4byte	0x36b
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x1
	.byte	0x14
	.4byte	0xc8
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cf
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x14
	.4byte	0x111
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x14
	.4byte	0x106
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x14
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x14
	.4byte	0x11c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.byte	0x16
	.4byte	0x4cf
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0x18
	.4byte	0xc8
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x1a
	.4byte	0x4d5
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.byte	0x1b
	.4byte	0x4db
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0x1c
	.4byte	0x4e1
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1d
	.4byte	0x4e7
	.4byte	.LLST6
	.uleb128 0x12
	.string	"out"
	.byte	0x1
	.byte	0x41
	.4byte	.L5
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x4ed
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x327
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0x225
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ab
	.uleb128 0x15
	.4byte	.LASF76
	.4byte	.LASF76
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"result"
.LASF35:
	.string	"esp_event_handler_instances_t"
.LASF43:
	.string	"id_nodes"
.LASF2:
	.string	"short int"
.LASF33:
	.string	"esp_event_handler_instances"
.LASF14:
	.string	"sizetype"
.LASF20:
	.string	"TaskHandle_t"
.LASF55:
	.string	"task"
.LASF75:
	.string	"esp_event_is_handler_registered"
.LASF52:
	.string	"esp_event_loop_instance"
.LASF51:
	.string	"esp_event_loop_nodes_t"
.LASF5:
	.string	"__uint32_t"
.LASF63:
	.string	"event_loop"
.LASF27:
	.string	"handler"
.LASF12:
	.string	"int64_t"
.LASF32:
	.string	"esp_event_handler_instance"
.LASF64:
	.string	"event_base"
.LASF74:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp_event"
.LASF36:
	.string	"esp_event_id_node"
.LASF26:
	.string	"sle_next"
.LASF76:
	.string	"xQueueGenericSend"
.LASF38:
	.string	"esp_event_id_node_t"
.LASF62:
	.string	"esp_event_loop_instance_t"
.LASF23:
	.string	"esp_event_base_t"
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"TickType_t"
.LASF41:
	.string	"esp_event_base_node"
.LASF13:
	.string	"long int"
.LASF71:
	.string	"id_node"
.LASF60:
	.string	"events_dropped"
.LASF44:
	.string	"esp_event_base_node_t"
.LASF50:
	.string	"esp_event_loop_nodes"
.LASF21:
	.string	"QueueHandle_t"
.LASF54:
	.string	"queue"
.LASF53:
	.string	"name"
.LASF7:
	.string	"__int64_t"
.LASF47:
	.string	"esp_event_loop_node"
.LASF22:
	.string	"SemaphoreHandle_t"
.LASF58:
	.string	"loop_nodes"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF66:
	.string	"event_handler"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF37:
	.string	"handlers"
.LASF6:
	.string	"unsigned int"
.LASF24:
	.string	"esp_event_loop_handle_t"
.LASF18:
	.string	"BaseType_t"
.LASF29:
	.string	"time"
.LASF39:
	.string	"esp_event_id_nodes"
.LASF34:
	.string	"slh_first"
.LASF57:
	.string	"mutex"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"char"
.LASF48:
	.string	"base_nodes"
.LASF10:
	.string	"int32_t"
.LASF42:
	.string	"base"
.LASF69:
	.string	"loop_node"
.LASF17:
	.string	"_Bool"
.LASF40:
	.string	"esp_event_id_nodes_t"
.LASF49:
	.string	"esp_event_loop_node_t"
.LASF31:
	.string	"esp_event_handler_instance_t"
.LASF15:
	.string	"long unsigned int"
.LASF65:
	.string	"event_id"
.LASF45:
	.string	"esp_event_base_nodes"
.LASF70:
	.string	"base_node"
.LASF4:
	.string	"__int32_t"
.LASF56:
	.string	"running_task"
.LASF28:
	.string	"invoked"
.LASF46:
	.string	"esp_event_base_nodes_t"
.LASF67:
	.string	"loop"
.LASF73:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/esp_event_private.c"
.LASF25:
	.string	"esp_event_handler_t"
.LASF72:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF61:
	.string	"profiling_mutex"
.LASF59:
	.string	"events_recieved"
.LASF30:
	.string	"next"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
