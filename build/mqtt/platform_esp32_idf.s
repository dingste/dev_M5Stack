	.file	"platform_esp32_idf.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/platform_esp32_idf.c"
.LC2:
	.string	"PLATFORM"
.LC4:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
.LC6:
	.string	"Memory exhausted"
.LC9:
	.string	"ESP32_%02x%02X%02X"
	.section	.text.platform_create_id_string,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, __FUNCTION__$6387
	.literal .LC10, .LC9
	.align	4
	.global	platform_create_id_string
	.type	platform_create_id_string, @function
platform_create_id_string:
.LFB36:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/platform_esp32_idf.c"
	.loc 1 13 0
	entry	sp, 64
.LCFI0:
	.loc 1 15 0
	movi.n	a11, 0x20
	movi.n	a10, 1
	call8	calloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 16 0
	bnez.n	a10, .L2
	.loc 1 16 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL2:
	l32r	a8, .LC7
	l32r	a11, .LC3
	s32i.n	a8, sp, 8
	l32r	a8, .LC8
	l32r	a15, .LC1
	s32i.n	a8, sp, 4
	l32r	a12, .LC5
	movi.n	a8, 0x10
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 16 0 is_stmt 1 discriminator 4
	retw.n
.L2:
	.loc 1 17 0
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	esp_read_mac
.LVL4:
	.loc 1 18 0
	l8ui	a14, sp, 21
	l8ui	a13, sp, 20
	l8ui	a12, sp, 19
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	sprintf
.LVL5:
	.loc 1 20 0
	retw.n
.LFE36:
	.size	platform_create_id_string, .-platform_create_id_string
	.section	.text.platform_random,"ax",@progbits
	.align	4
	.global	platform_random
	.type	platform_random, @function
platform_random:
.LFB37:
	.loc 1 23 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 24 0
	call8	esp_random
.LVL7:
	.loc 1 25 0
	remu	a2, a10, a2
.LVL8:
	retw.n
.LFE37:
	.size	platform_random, .-platform_random
	.section	.text.platform_tick_get_ms,"ax",@progbits
	.literal_position
	.literal .LC11, 274877907
	.align	4
	.global	platform_tick_get_ms
	.type	platform_tick_get_ms, @function
platform_tick_get_ms:
.LFB38:
	.loc 1 28 0
	entry	sp, 48
.LCFI2:
	.loc 1 30 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	gettimeofday
.LVL9:
	.loc 1 31 0
	l32i.n	a8, sp, 4
	l32r	a9, .LC11
	l32i.n	a3, sp, 0
	mulsh	a9, a8, a9
	srai	a8, a8, 31
	srai	a9, a9, 6
	sub	a8, a9, a8
	movi	a9, 0x3e8
	mull	a2, a3, a9
	srai	a10, a8, 31
	add.n	a2, a8, a2
	mulsh	a9, a3, a9
	movi.n	a3, 1
	bltu	a2, a8, .L6
	movi.n	a3, 0
.L6:
	add.n	a9, a10, a9
.LVL10:
	.loc 1 34 0
	add.n	a3, a3, a9
.LVL11:
	retw.n
.LFE38:
	.size	platform_tick_get_ms, .-platform_tick_get_ms
	.section	.text.ms_to_timeval,"ax",@progbits
	.literal_position
	.literal .LC12, 274877907
	.align	4
	.global	ms_to_timeval
	.type	ms_to_timeval, @function
ms_to_timeval:
.LFB39:
	.loc 1 37 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 38 0
	l32r	a8, .LC12
	mulsh	a8, a2, a8
	srai	a9, a8, 6
	srai	a8, a2, 31
	sub	a8, a9, a8
	.loc 1 39 0
	movi	a9, -0x3e8
	.loc 1 38 0
	s32i.n	a8, a3, 0
	.loc 1 39 0
	mull	a8, a8, a9
	add.n	a8, a8, a2
	slli	a9, a8, 5
	sub	a9, a9, a8
	addx4	a8, a9, a8
	slli	a8, a8, 3
	s32i.n	a8, a3, 4
	retw.n
.LFE39:
	.size	ms_to_timeval, .-ms_to_timeval
	.section	.rodata.__FUNCTION__$6387,"a",@progbits
	.type	__FUNCTION__$6387, @object
	.size	__FUNCTION__$6387, 26
__FUNCTION__$6387:
	.string	"platform_create_id_string"
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI0-.LFB36
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI1-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI2-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI3-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_system.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x357
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xc
	.4byte	.LASF43
	.4byte	.LASF44
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
	.4byte	.LASF11
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x83
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x90
	.uleb128 0x6
	.4byte	0x83
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7a
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x11d
	.4byte	0x68
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1b
	.4byte	0xe3
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x8
	.byte	0x5
	.byte	0x11
	.4byte	0x10d
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x12
	.4byte	0xa0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x13
	.4byte	0xab
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x13e
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc
	.4byte	0x7d
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x227
	.uleb128 0xd
	.string	"mac"
	.byte	0x1
	.byte	0xe
	.4byte	0x227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF31
	.4byte	0x247
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6387
	.uleb128 0x10
	.4byte	.LVL0
	.4byte	0x30c
	.4byte	0x19a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0x317
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x322
	.4byte	0x1f4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6387
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x32d
	.4byte	0x20d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x339
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x95
	.4byte	0x237
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	0x83
	.4byte	0x247
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	0x237
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x16
	.4byte	0x25
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27e
	.uleb128 0x17
	.string	"max"
	.byte	0x1
	.byte	0x16
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x344
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1b
	.4byte	0x5a
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c5
	.uleb128 0xd
	.string	"te"
	.byte	0x1
	.byte	0x1d
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1f
	.4byte	0x5a
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0x34f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x24
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f4
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.byte	0x24
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"tv"
	.byte	0x1
	.byte	0x24
	.4byte	0x2f4
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe8
	.uleb128 0xd
	.string	"TAG"
	.byte	0x1
	.byte	0x8
	.4byte	0xe3
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x6b
	.uleb128 0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x10a
	.uleb128 0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.byte	0xde
	.uleb128 0x1c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0xa7
	.uleb128 0x1c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4d
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE37
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"__uint8_t"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF38:
	.string	"esp_read_mac"
.LASF18:
	.string	"ESP_MAC_BT"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"ESP_MAC_ETH"
.LASF36:
	.string	"esp_log_timestamp"
.LASF16:
	.string	"ESP_MAC_WIFI_STA"
.LASF40:
	.string	"esp_random"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF46:
	.string	"platform_random"
.LASF42:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"short unsigned int"
.LASF9:
	.string	"long unsigned int"
.LASF33:
	.string	"ms_to_timeval"
.LASF31:
	.string	"__FUNCTION__"
.LASF45:
	.string	"timeval"
.LASF17:
	.string	"ESP_MAC_WIFI_SOFTAP"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"char"
.LASF12:
	.string	"uint8_t"
.LASF13:
	.string	"time_t"
.LASF21:
	.string	"tv_usec"
.LASF32:
	.string	"milliseconds"
.LASF6:
	.string	"long long unsigned int"
.LASF41:
	.string	"gettimeofday"
.LASF8:
	.string	"sizetype"
.LASF20:
	.string	"tv_sec"
.LASF5:
	.string	"long long int"
.LASF28:
	.string	"id_string"
.LASF44:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mqtt"
.LASF14:
	.string	"suseconds_t"
.LASF35:
	.string	"calloc"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF30:
	.string	"platform_tick_get_ms"
.LASF37:
	.string	"esp_log_write"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"platform_create_id_string"
.LASF15:
	.string	"_Bool"
.LASF39:
	.string	"sprintf"
.LASF43:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/platform_esp32_idf.c"
.LASF34:
	.string	"timeout_ms"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
