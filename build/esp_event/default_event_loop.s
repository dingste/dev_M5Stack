	.file	"default_event_loop.c"
	.text
.Ltext0:
	.section	.text.esp_event_handler_register,"ax",@progbits
	.literal_position
	.literal .LC2, s_default_loop
	.align	4
	.global	esp_event_handler_register
	.type	esp_event_handler_register, @function
esp_event_handler_register:
.LFB29:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/default_event_loop.c"
	.loc 1 27 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 28 0
	l32r	a8, .LC2
	.loc 1 27 0
	mov.n	a11, a2
	.loc 1 28 0
	l32i.n	a10, a8, 0
	.loc 1 27 0
	mov.n	a12, a3
	mov.n	a13, a4
	mov.n	a14, a5
	.loc 1 29 0
	movi	a2, 0x103
.LVL1:
	.loc 1 28 0
	beqz.n	a10, .L2
	.loc 1 32 0
	call8	esp_event_handler_register_with
.LVL2:
	mov.n	a2, a10
.L2:
	.loc 1 34 0
	retw.n
.LFE29:
	.size	esp_event_handler_register, .-esp_event_handler_register
	.section	.text.esp_event_handler_unregister,"ax",@progbits
	.literal_position
	.literal .LC3, s_default_loop
	.align	4
	.global	esp_event_handler_unregister
	.type	esp_event_handler_unregister, @function
esp_event_handler_unregister:
.LFB30:
	.loc 1 38 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 39 0
	l32r	a8, .LC3
	.loc 1 38 0
	mov.n	a11, a2
	.loc 1 39 0
	l32i.n	a10, a8, 0
	.loc 1 38 0
	mov.n	a12, a3
	mov.n	a13, a4
	.loc 1 40 0
	movi	a2, 0x103
.LVL4:
	.loc 1 39 0
	beqz.n	a10, .L6
	.loc 1 43 0
	call8	esp_event_handler_unregister_with
.LVL5:
	mov.n	a2, a10
.L6:
	.loc 1 45 0
	retw.n
.LFE30:
	.size	esp_event_handler_unregister, .-esp_event_handler_unregister
	.section	.text.esp_event_post,"ax",@progbits
	.literal_position
	.literal .LC4, s_default_loop
	.align	4
	.global	esp_event_post
	.type	esp_event_post, @function
esp_event_post:
.LFB31:
	.loc 1 49 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 50 0
	l32r	a8, .LC4
	.loc 1 49 0
	mov.n	a11, a2
	.loc 1 50 0
	l32i.n	a10, a8, 0
	.loc 1 49 0
	mov.n	a12, a3
	mov.n	a13, a4
	mov.n	a14, a5
	mov.n	a15, a6
	.loc 1 51 0
	movi	a2, 0x103
.LVL7:
	.loc 1 50 0
	beqz.n	a10, .L10
	.loc 1 54 0
	call8	esp_event_post_to
.LVL8:
	mov.n	a2, a10
.L10:
	.loc 1 56 0
	retw.n
.LFE31:
	.size	esp_event_post, .-esp_event_post
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sys_evt"
	.section	.rodata
	.align	4
.LC6:
	.word	32
	.word	.LC0
	.word	20
	.word	2816
	.word	0
	.section	.text.esp_event_loop_create_default,"ax",@progbits
	.literal_position
	.literal .LC5, s_default_loop
	.literal .LC7, .LC6
	.align	4
	.global	esp_event_loop_create_default
	.type	esp_event_loop_create_default, @function
esp_event_loop_create_default:
.LFB32:
	.loc 1 60 0
	entry	sp, 64
.LCFI3:
	.loc 1 61 0
	l32r	a2, .LC5
	.loc 1 62 0
	movi	a10, 0x103
	.loc 1 61 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L14
	.loc 1 65 0
	l32r	a11, .LC7
	movi.n	a12, 0x14
	mov.n	a10, sp
	call8	memcpy
.LVL9:
	.loc 1 75 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	esp_event_loop_create
.LVL10:
.L14:
	.loc 1 81 0
	mov.n	a2, a10
	retw.n
.LFE32:
	.size	esp_event_loop_create_default, .-esp_event_loop_create_default
	.section	.text.esp_event_loop_delete_default,"ax",@progbits
	.literal_position
	.literal .LC8, s_default_loop
	.align	4
	.global	esp_event_loop_delete_default
	.type	esp_event_loop_delete_default, @function
esp_event_loop_delete_default:
.LFB33:
	.loc 1 84 0
	entry	sp, 32
.LCFI4:
	.loc 1 85 0
	l32r	a3, .LC8
	.loc 1 86 0
	movi	a2, 0x103
	.loc 1 85 0
	l32i.n	a10, a3, 0
	beqz.n	a10, .L17
	.loc 1 91 0
	call8	esp_event_loop_delete
.LVL11:
	mov.n	a2, a10
.LVL12:
	.loc 1 93 0
	bnez.n	a10, .L17
	.loc 1 97 0
	s32i.n	a10, a3, 0
.LVL13:
.L17:
	.loc 1 100 0
	retw.n
.LFE33:
	.size	esp_event_loop_delete_default, .-esp_event_loop_delete_default
	.section	.bss.s_default_loop,"aw",@nobits
	.align	4
	.type	s_default_loop, @object
	.size	s_default_loop, 4
s_default_loop:
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI3-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI4-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/include/esp_event_base.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/include/esp_event.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3c6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.LASF51
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x70
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x76
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x1b
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x1d
	.4byte	0x111
	.uleb128 0x6
	.byte	0x4
	.4byte	0x117
	.uleb128 0x8
	.4byte	0x131
	.uleb128 0x9
	.4byte	0x94
	.uleb128 0x9
	.4byte	0xf0
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.byte	0x14
	.byte	0x8
	.byte	0x22
	.4byte	0x176
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x8
	.byte	0x23
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x24
	.4byte	0xb2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x26
	.4byte	0xda
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x27
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x28
	.4byte	0xcf
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x2a
	.4byte	0x131
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x19
	.4byte	0xbd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x19
	.4byte	0xf0
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x19
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1a
	.4byte	0x106
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1a
	.4byte	0x94
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x388
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x24
	.4byte	0xbd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x254
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x24
	.4byte	0xf0
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x24
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x25
	.4byte	0x106
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x393
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2f
	.4byte	0xbd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2da
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2f
	.4byte	0xf0
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2f
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x1
	.byte	0x30
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x30
	.4byte	0x89
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x30
	.4byte	0xe5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x39e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3b
	.4byte	0xbd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x345
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x41
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0x49
	.4byte	0xbd
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x3aa
	.4byte	0x32e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x3b3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x53
	.4byte	0xbd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x377
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0x59
	.4byte	0xbd
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x3be
	.byte	0
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x15
	.4byte	0xfb
	.uleb128 0x5
	.byte	0x3
	.4byte	s_default_loop
	.uleb128 0x17
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0xab
	.uleb128 0x17
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x8
	.byte	0xd8
	.uleb128 0x18
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x10d
	.uleb128 0x19
	.4byte	.LASF52
	.4byte	.LASF52
	.uleb128 0x17
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x8
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x8
	.byte	0x43
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
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE29
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
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"esp_event_handler_unregister"
.LASF11:
	.string	"size_t"
.LASF33:
	.string	"event_handler_arg"
.LASF25:
	.string	"task_name"
.LASF20:
	.string	"TickType_t"
.LASF46:
	.string	"esp_event_post_to"
.LASF22:
	.string	"esp_event_loop_handle_t"
.LASF4:
	.string	"__int32_t"
.LASF34:
	.string	"esp_event_handler_register"
.LASF44:
	.string	"esp_event_handler_register_with"
.LASF29:
	.string	"esp_event_loop_args_t"
.LASF47:
	.string	"esp_event_loop_create"
.LASF48:
	.string	"esp_event_loop_delete"
.LASF21:
	.string	"esp_event_base_t"
.LASF32:
	.string	"event_handler"
.LASF16:
	.string	"esp_err_t"
.LASF26:
	.string	"task_priority"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"loop_args"
.LASF24:
	.string	"queue_size"
.LASF1:
	.string	"unsigned char"
.LASF36:
	.string	"esp_event_post"
.LASF37:
	.string	"event_data"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"task_core_id"
.LASF49:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF30:
	.string	"event_base"
.LASF41:
	.string	"esp_event_loop_delete_default"
.LASF50:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/default_event_loop.c"
.LASF27:
	.string	"task_stack_size"
.LASF5:
	.string	"__uint32_t"
.LASF31:
	.string	"event_id"
.LASF6:
	.string	"unsigned int"
.LASF39:
	.string	"ticks_to_wait"
.LASF15:
	.string	"char"
.LASF8:
	.string	"long long unsigned int"
.LASF19:
	.string	"UBaseType_t"
.LASF9:
	.string	"int32_t"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF52:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF45:
	.string	"esp_event_handler_unregister_with"
.LASF40:
	.string	"esp_event_loop_create_default"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF38:
	.string	"event_data_size"
.LASF43:
	.string	"s_default_loop"
.LASF23:
	.string	"esp_event_handler_t"
.LASF51:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp_event"
.LASF17:
	.string	"_Bool"
.LASF18:
	.string	"BaseType_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
