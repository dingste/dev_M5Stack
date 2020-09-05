	.file	"cpu_util.c"
	.text
.Ltext0:
	.section	.iram1.0,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988332
	.literal .LC1, -66060289
	.literal .LC2, 34603008
	.literal .LC3, 1072988160
	.literal .LC4, 67108863
	.literal .LC5, -2080374784
	.align	4
	.global	esp_cpu_stall
	.type	esp_cpu_stall, @function
esp_cpu_stall:
.LFB5:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/cpu_util.c"
	.loc 1 22 0
.LVL0:
	entry	sp, 32
.LCFI0:
	l32r	a8, .LC0
	.loc 1 24 0
	memw
	l32i.n	a10, a8, 0
	.loc 1 23 0
	bnei	a2, 1, .L2
	.loc 1 24 0
	l32r	a9, .LC1
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 25 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 26 0
	l32r	a8, .LC3
	movi.n	a9, -4
	memw
	l32i.n	a10, a8, 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 27 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 2
	j	.L4
.L2:
	.loc 1 29 0
	l32r	a9, .LC4
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 30 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC5
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 31 0
	l32r	a8, .LC3
	movi.n	a9, -0xd
	memw
	l32i.n	a10, a8, 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 32 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 8
.L4:
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE5:
	.size	esp_cpu_stall, .-esp_cpu_stall
	.section	.iram1.1,"ax",@progbits
	.literal_position
	.literal .LC6, 1072988332
	.literal .LC7, -66060289
	.literal .LC8, 1072988160
	.literal .LC9, 67108863
	.align	4
	.global	esp_cpu_unstall
	.type	esp_cpu_unstall, @function
esp_cpu_unstall:
.LFB6:
	.loc 1 37 0
.LVL1:
	entry	sp, 32
.LCFI1:
	l32r	a9, .LC6
	l32r	a8, .LC8
	.loc 1 39 0
	memw
	l32i.n	a11, a9, 0
	.loc 1 38 0
	bnei	a2, 1, .L6
	.loc 1 39 0
	l32r	a10, .LC7
	and	a10, a11, a10
	memw
	s32i.n	a10, a9, 0
	.loc 1 40 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -4
	j	.L8
.L6:
	.loc 1 42 0
	l32r	a10, .LC9
	and	a10, a11, a10
	memw
	s32i.n	a10, a9, 0
	.loc 1 43 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -0xd
.L8:
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE6:
	.size	esp_cpu_unstall, .-esp_cpu_unstall
	.section	.iram1.2,"ax",@progbits
	.literal_position
	.literal .LC10, 1072988160
	.align	4
	.global	esp_cpu_reset
	.type	esp_cpu_reset, @function
esp_cpu_reset:
.LFB7:
	.loc 1 48 0
.LVL2:
	entry	sp, 32
.LCFI2:
	.loc 1 49 0
	l32r	a10, .LC10
	movi.n	a11, 0x10
	memw
	l32i.n	a8, a10, 0
	movi.n	a9, 0x20
	moveqz	a11, a9, a2
	or	a8, a11, a8
	mov.n	a2, a11
.LVL3:
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE7:
	.size	esp_cpu_reset, .-esp_cpu_reset
	.section	.iram1.3,"ax",@progbits
	.align	4
	.global	esp_cpu_in_ocd_debug_mode
	.type	esp_cpu_in_ocd_debug_mode, @function
esp_cpu_in_ocd_debug_mode:
.LFB8:
	.loc 1 54 0
	entry	sp, 32
.LCFI3:
	.loc 1 63 0
	movi.n	a2, 0
	retw.n
.LFE8:
	.size	esp_cpu_in_ocd_debug_mode, .-esp_cpu_in_ocd_debug_mode
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x4f
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
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2d
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x15
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x24
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x24
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2f
	.4byte	0x3d
	.4byte	.LLST0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x35
	.4byte	0x10b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
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
	.uleb128 0x6
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE7
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF16:
	.string	"esp_cpu_reset"
.LASF7:
	.string	"__uint32_t"
.LASF14:
	.string	"esp_cpu_unstall"
.LASF19:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/cpu_util.c"
.LASF11:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF18:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"esp_cpu_stall"
.LASF20:
	.string	"esp_cpu_in_ocd_debug_mode"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF17:
	.string	"_Bool"
.LASF15:
	.string	"cpu_id"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
