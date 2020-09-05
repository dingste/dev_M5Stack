	.file	"ulp.c"
	.text
.Ltext0:
	.section	.text.ulp_run,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988184
	.literal .LC1, -16777217
	.literal .LC2, 1072990252
	.literal .LC3, -4192257
	.literal .LC4, 1072988204
	.literal .LC5, -65281
	.literal .LC6, 1072988160
	.literal .LC7, 131072
	.literal .LC8, 1048576
	.literal .LC9, 16384
	.literal .LC10, 16777216
	.align	4
	.global	ulp_run
	.type	ulp_run, @function
ulp_run:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/ulp/ulp.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 47 0
	l32r	a3, .LC0
	l32r	a8, .LC1
	memw
	l32i.n	a9, a3, 0
	.loc 1 49 0
	movi.n	a10, 0xa
	.loc 1 47 0
	and	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 49 0
	call8	ets_delay_us
.LVL1:
	.loc 1 51 0
	l32r	a10, .LC2
	l32r	a9, .LC3
	memw
	l32i.n	a8, a10, 0
	extui	a2, a2, 0, 11
.LVL2:
	slli	a2, a2, 11
	and	a8, a8, a9
	or	a8, a2, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 53 0
	memw
	l32i.n	a8, a10, 0
	movi	a2, -0x101
	.loc 1 55 0
	l32r	a9, .LC4
	.loc 1 53 0
	and	a2, a8, a2
	memw
	s32i.n	a2, a10, 0
	.loc 1 55 0
	memw
	l32i.n	a8, a9, 0
	l32r	a2, .LC5
	and	a8, a8, a2
	movi	a2, 0x200
	or	a2, a8, a2
	.loc 1 57 0
	l32r	a8, .LC6
	.loc 1 55 0
	memw
	s32i.n	a2, a9, 0
	.loc 1 57 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC7
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 58 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC8
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 59 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC9
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 61 0
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC10
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	.loc 1 63 0
	movi.n	a2, 0
	retw.n
.LFE1:
	.size	ulp_run, .-ulp_run
	.section	.text.ulp_load_binary,"ax",@progbits
	.literal_position
	.literal .LC11, 7367797
	.literal .LC12, 1342177280
	.align	4
	.global	ulp_load_binary
	.type	ulp_load_binary, @function
ulp_load_binary:
.LFB2:
	.loc 1 66 0
.LVL3:
	entry	sp, 48
.LCFI1:
	.loc 1 67 0
	slli	a4, a4, 2
.LVL4:
	.loc 1 70 0
	movi.n	a5, 0xb
	bltu	a5, a4, .L3
.LVL5:
.L5:
	.loc 1 71 0
	movi	a2, 0x104
	retw.n
.LVL6:
.L3:
	.loc 1 68 0
	slli	a5, a2, 2
	.loc 1 73 0
	movi	a8, 0x200
	.loc 1 74 0
	movi	a2, 0x102
.LVL7:
	.loc 1 73 0
	bltu	a8, a5, .L4
	.loc 1 76 0
	add.n	a2, a4, a5
	bltu	a8, a2, .L5
	.loc 1 82 0
	movi.n	a12, 0xc
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL8:
	.loc 1 84 0
	l32i.n	a9, sp, 0
	l32r	a8, .LC11
	.loc 1 85 0
	movi	a2, 0x106
	.loc 1 84 0
	bne	a9, a8, .L4
	.loc 1 88 0
	l16ui	a11, sp, 4
	l16ui	a10, sp, 6
	.loc 1 89 0
	l16ui	a8, sp, 8
.LVL9:
	.loc 1 95 0
	add.n	a9, a10, a11
	add.n	a9, a9, a8
	bne	a4, a9, .L5
	.loc 1 102 0
	l32r	a2, .LC12
	.loc 1 99 0
	add.n	a4, a10, a8
.LVL10:
	.loc 1 102 0
	mov.n	a12, a4
	add.n	a11, a3, a11
.LVL11:
	add.n	a10, a5, a2
.LVL12:
	call8	memcpy
.LVL13:
	.loc 1 103 0
	add.n	a10, a5, a4
	l16ui	a12, sp, 10
	add.n	a10, a10, a2
	movi.n	a11, 0
	call8	memset
.LVL14:
	.loc 1 105 0
	movi.n	a2, 0
.LVL15:
.L4:
	.loc 1 106 0
	retw.n
.LFE2:
	.size	ulp_load_binary, .-ulp_load_binary
	.global	__udivdi3
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC15:
	.string	"ulp"
.LC17:
	.string	"\033[0;33mW (%d) %s: Sleep period clipped to minimum of %d cycles\033[0m\n"
	.section	.text.ulp_set_wakeup_period,"ax",@progbits
	.literal_position
	.literal .LC14, 1072988192
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC19, 268247558
	.align	4
	.global	ulp_set_wakeup_period
	.type	ulp_set_wakeup_period, @function
ulp_set_wakeup_period:
.LFB3:
	.loc 1 109 0
.LVL16:
	entry	sp, 32
.LCFI2:
	.loc 1 111 0
	movi	a8, 0x102
	.loc 1 110 0
	bgeui	a2, 5, .L9
.LVL17:
	.loc 1 114 0
	call8	esp_clk_slowclk_cal_get
.LVL18:
	movi.n	a4, 0
	mov.n	a12, a10
	srli	a11, a3, 13
	slli	a10, a3, 19
	mov.n	a13, a4
	call8	__udivdi3
.LVL19:
	.loc 1 117 0
	l32r	a3, .LC14
.LVL20:
	memw
	l32i.n	a3, a3, 0
	extui	a3, a3, 15, 9
	addi.n	a3, a3, 4
.LVL21:
	.loc 1 118 0
	bne	a4, a11, .L10
	bgeu	a10, a3, .L10
.LVL22:
	.loc 1 120 0
	call8	esp_log_timestamp
.LVL23:
	l32r	a11, .LC16
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL24:
	.loc 1 119 0
	mov.n	a8, a4
	j	.L12
.LVL25:
.L10:
	.loc 1 122 0
	sub	a10, a10, a3
.LVL26:
	mov.n	a8, a10
.L12:
	.loc 1 124 0
	l32r	a3, .LC19
.LVL27:
	add.n	a2, a2, a3
.LVL28:
	slli	a2, a2, 2
.LVL29:
	memw
	l32i.n	a3, a2, 0
	memw
	s32i.n	a8, a2, 0
	.loc 1 126 0
	movi.n	a8, 0
.LVL30:
.L9:
	.loc 1 127 0
	mov.n	a2, a8
	retw.n
.LFE3:
	.size	ulp_set_wakeup_period, .-ulp_set_wakeup_period
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_clk.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3c1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x19
	.4byte	0x70
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd8
	.4byte	0x2c
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	0xdc
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x1f
	.4byte	0x139
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0xc
	.byte	0x1
	.byte	0x20
	.4byte	0x17e
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x21
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x22
	.4byte	0xd1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x23
	.4byte	0xd1
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x24
	.4byte	0xd1
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x25
	.4byte	0xd1
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x1
	.byte	0x26
	.4byte	0x139
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2c
	.4byte	0xfd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c1
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2c
	.4byte	0xe7
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0x385
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x41
	.4byte	0xfd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b6
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x41
	.4byte	0xe7
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x41
	.4byte	0x2b6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x41
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x43
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x44
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x51
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x58
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x63
	.4byte	0x94
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x64
	.4byte	0x2c1
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LVL8
	.4byte	0x391
	.4byte	0x27d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.4byte	.LVL13
	.4byte	0x391
	.4byte	0x29a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x39a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2bc
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6c
	.4byte	0xfd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36e
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6c
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6c
	.4byte	0xe7
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x71
	.4byte	0xf2
	.4byte	.LLST10
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x72
	.4byte	0xf2
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x73
	.4byte	0xf2
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LVL18
	.4byte	0x3a3
	.uleb128 0x14
	.4byte	.LVL23
	.4byte	0x3ae
	.uleb128 0xd
	.4byte	.LVL24
	.4byte	0x3b9
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"TAG"
	.byte	0x1
	.byte	0x2a
	.4byte	0x380
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC15
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x16
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x17f
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	.LASF53
	.uleb128 0x17
	.4byte	.LASF54
	.4byte	.LASF54
	.uleb128 0x18
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0x57
	.uleb128 0x18
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x8
	.byte	0x6b
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xb
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
	.4byte	.LFE1
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
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x11
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x17
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -44
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x19
	.byte	0x91
	.sleb128 -42
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -44
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x4
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x7
	.byte	0x72
	.sleb128 -268247558
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"total_size"
.LASF43:
	.string	"header"
.LASF56:
	.string	"esp_clk_slowclk_cal_get"
.LASF21:
	.string	"uint64_t"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF14:
	.string	"sizetype"
.LASF42:
	.string	"load_addr_bytes"
.LASF50:
	.string	"period_us_64"
.LASF55:
	.string	"ets_delay_us"
.LASF9:
	.string	"__uint32_t"
.LASF49:
	.string	"period_us"
.LASF6:
	.string	"__uint16_t"
.LASF53:
	.string	"memcpy"
.LASF31:
	.string	"text_size"
.LASF30:
	.string	"text_offset"
.LASF52:
	.string	"min_sleep_period_cycles"
.LASF10:
	.string	"long long int"
.LASF54:
	.string	"memset"
.LASF13:
	.string	"long int"
.LASF51:
	.string	"period_cycles"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF33:
	.string	"bss_size"
.LASF5:
	.string	"__uint8_t"
.LASF36:
	.string	"ulp_load_binary"
.LASF3:
	.string	"unsigned char"
.LASF35:
	.string	"ulp_run"
.LASF2:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF20:
	.string	"uint32_t"
.LASF41:
	.string	"program_size_bytes"
.LASF1:
	.string	"unsigned int"
.LASF18:
	.string	"uint16_t"
.LASF15:
	.string	"long unsigned int"
.LASF58:
	.string	"esp_log_write"
.LASF38:
	.string	"load_addr"
.LASF39:
	.string	"program_binary"
.LASF37:
	.string	"entry_point"
.LASF16:
	.string	"char"
.LASF47:
	.string	"ulp_set_wakeup_period"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF19:
	.string	"int32_t"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"short unsigned int"
.LASF11:
	.string	"__uint64_t"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF32:
	.string	"data_size"
.LASF28:
	.string	"ESP_LOG_VERBOSE"
.LASF8:
	.string	"__int32_t"
.LASF61:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/ulp"
.LASF45:
	.string	"text_data_size"
.LASF17:
	.string	"uint8_t"
.LASF48:
	.string	"period_index"
.LASF57:
	.string	"esp_log_timestamp"
.LASF40:
	.string	"program_size"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/ulp/ulp.c"
.LASF29:
	.string	"magic"
.LASF34:
	.string	"ulp_binary_header_t"
.LASF46:
	.string	"base"
.LASF24:
	.string	"ESP_LOG_ERROR"
.LASF22:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
