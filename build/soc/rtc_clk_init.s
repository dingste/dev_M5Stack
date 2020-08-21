	.file	"rtc_clk_init.c"
	.text
.Ltext0:
	.global	__udivdi3
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"rtc_clk_init"
.LC5:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 26 MHz\033[0m\n"
.LC7:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 40 MHz\033[0m\n"
.LC9:
	.string	"\033[0;33mW (%d) %s: Bogus XTAL frequency: %d MHz\033[0m\n"
	.section	.text.rtc_clk_xtal_freq_estimate,"ax",@progbits
	.literal_position
	.literal .LC0, 8500000
	.literal .LC1, 256000000, 0
	.literal .LC2, .L5
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	rtc_clk_xtal_freq_estimate, @function
rtc_clk_xtal_freq_estimate:
.LFB11:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk_init.c"
	.loc 1 146 0
	entry	sp, 32
.LCFI0:
	.loc 1 148 0
	call8	rtc_clk_8m_enabled
.LVL0:
	.loc 1 149 0
	call8	rtc_clk_8md256_enabled
.LVL1:
	.loc 1 150 0
	bnez.n	a10, .L2
	.loc 1 151 0
	movi.n	a11, 1
	mov.n	a10, a11
.LVL2:
	call8	rtc_clk_8m_enable
.LVL3:
.L2:
	.loc 1 154 0
	movi.n	a11, 0xa
	movi.n	a10, 1
	call8	rtc_clk_cal_ratio
.LVL4:
	.loc 1 159 0
	l32r	a2, .LC0
	l32r	a12, .LC1
	muluh	a11, a10, a2
	l32r	a13, .LC1+4
	mull	a10, a10, a2
.LVL5:
	call8	__udivdi3
.LVL6:
	slli	a11, a11, 13
	extui	a10, a10, 19, 13
	or	a2, a11, a10
.LVL7:
	.loc 1 162 0
	addi	a8, a2, -21
	movi.n	a9, 0x18
	bltu	a9, a8, .L3
	l32r	a9, .LC2
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.rtc_clk_xtal_freq_estimate,"a",@progbits
	.align	4
	.align	4
.L5:
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L6
	.word	.L6
	.word	.L7
	.word	.L7
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L10
	.section	.text.rtc_clk_xtal_freq_estimate
.L6:
	.loc 1 166 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	mov.n	a11, a10
	l32r	a12, .LC4
	l32r	a10, .LC6
	mov.n	a13, a2
	call8	ets_printf
.LVL9:
	j	.L9
.L7:
	.loc 1 169 0 discriminator 1
	call8	esp_log_timestamp
.LVL10:
	mov.n	a11, a10
	l32r	a12, .LC4
	l32r	a10, .LC8
	mov.n	a13, a2
	call8	ets_printf
.LVL11:
.L10:
	.loc 1 170 0 discriminator 1
	movi.n	a2, 0x28
.LVL12:
	retw.n
.LVL13:
.L3:
	.loc 1 174 0 discriminator 1
	call8	esp_log_timestamp
.LVL14:
	mov.n	a11, a10
	l32r	a12, .LC4
	l32r	a10, .LC10
	mov.n	a13, a2
	call8	ets_printf
.LVL15:
	.loc 1 175 0 discriminator 1
	movi.n	a2, 0
.LVL16:
	retw.n
.LVL17:
.L9:
	.loc 1 164 0
	movi.n	a2, 0x1a
.LVL18:
	.loc 1 179 0
	retw.n
.LFE11:
	.size	rtc_clk_xtal_freq_estimate, .-rtc_clk_xtal_freq_estimate
	.section	.rodata.str1.1
.LC21:
	.string	"\033[0;33mW (%d) %s: Can't estimate XTAL frequency, assuming 26MHz\033[0m\n"
.LC23:
	.string	"\033[0;33mW (%d) %s: Possibly invalid CONFIG_ESP32_XTAL_FREQ setting (%dMHz). Detected %d MHz.\033[0m\n"
.LC28:
	.string	"\033[0;31mE (%d) %s: invalid CPU frequency value\033[0m\n"
	.section	.text.rtc_clk_init,"ax",@progbits
	.literal_position
	.literal .LC11, 1072988272
	.literal .LC12, 1072988284
	.literal .LC13, -4177921
	.literal .LC14, -33423361
	.literal .LC15, -28673
	.literal .LC16, 1610670148
	.literal .LC17, 261888
	.literal .LC18, -147457
	.literal .LC19, 1072988336
	.literal .LC20, .LC3
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC25, 1072955420
	.literal .LC26, 268369920
	.literal .LC27, 1000000
	.literal .LC29, .LC28
	.literal .LC30, 1073111044
	.literal .LC31, 1073111048
	.literal .LC32, -261889
	.literal .LC33, 1572864
	.literal .LC34, 524288
	.literal .LC36, -1048576
	.align	4
	.global	rtc_clk_init
	.type	rtc_clk_init, @function
rtc_clk_init:
.LFB10:
	.loc 1 46 0
	entry	sp, 80
.LCFI1:
	.loc 1 46 0
	s32i.n	a3, sp, 36
	.loc 1 58 0
	l32r	a3, .LC11
	.loc 1 46 0
	s32i.n	a2, sp, 32
	.loc 1 58 0
	memw
	l32i.n	a11, a3, 0
	extui	a2, a2, 8, 10
.LVL19:
	extui	a11, a11, 27, 2
	bnei	a11, 1, .L12
	.loc 1 63 0
	movi.n	a10, 0x28
	call8	rtc_clk_cpu_freq_to_xtal
.LVL20:
.L12:
	.loc 1 74 0
	l32r	a4, .LC12
	l8ui	a9, sp, 35
	memw
	l32i.n	a3, a4, 0
	l32r	a8, .LC13
	slli	a9, a9, 14
	and	a3, a3, a8
	.loc 1 75 0
	l32r	a10, .LC11
	.loc 1 74 0
	or	a3, a9, a3
	memw
	s32i.n	a3, a4, 0
	.loc 1 75 0
	memw
	l32i.n	a3, a10, 0
	l8ui	a9, sp, 36
	l32r	a8, .LC14
	slli	a9, a9, 17
	and	a3, a3, a8
	or	a3, a9, a3
	memw
	s32i.n	a3, a10, 0
	.loc 1 78 0
	l32i.n	a9, sp, 32
	memw
	l32i.n	a3, a10, 0
	l32r	a8, .LC15
	extui	a9, a9, 21, 3
	and	a3, a3, a8
	slli	a9, a9, 12
	or	a3, a9, a3
	memw
	s32i.n	a3, a10, 0
	.loc 1 81 0
	l32r	a3, .LC16
	l32r	a8, .LC17
	memw
	l32i.n	a4, a3, 0
	or	a8, a4, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 82 0
	memw
	l32i.n	a4, a3, 0
	l32r	a8, .LC18
	and	a8, a4, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 85 0
	l8ui	a3, sp, 32
.LVL21:
	l32r	a4, .LC19
	.loc 1 86 0
	bnez.n	a3, .L13
	.loc 1 87 0
	memw
	l32i.n	a3, a4, 0
.LVL22:
.LBB12:
.LBB13:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk_common.h"
	.loc 2 27 0
	extui	a8, a3, 0, 16
	extui	a4, a3, 16, 16
	bne	a8, a4, .L14
	addi.n	a3, a3, -1
.LVL23:
	movi.n	a4, -3
	bltu	a4, a3, .L14
	j	.L15
.LVL24:
.L22:
.LBE13:
.LBE12:
	.loc 1 94 0 discriminator 1
	call8	esp_log_timestamp
.LVL25:
	mov.n	a11, a10
	l32r	a12, .LC20
	l32r	a10, .LC22
	.loc 1 95 0 discriminator 1
	movi.n	a3, 0x1a
.LVL26:
	.loc 1 94 0 discriminator 1
	call8	ets_printf
.LVL27:
	j	.L16
.LVL28:
.L13:
	.loc 1 98 0
	memw
	l32i.n	a8, a4, 0
.LVL29:
.LBB14:
.LBB15:
	.loc 2 27 0
	extui	a9, a8, 0, 16
	extui	a4, a8, 16, 16
	bne	a9, a4, .L17
	addi.n	a8, a8, -1
.LVL30:
	movi.n	a4, -3
	bltu	a4, a8, .L17
	j	.L16
.LVL31:
.L23:
.LBE15:
.LBE14:
.LBB16:
	.loc 1 106 0 discriminator 1
	call8	esp_log_timestamp
.LVL32:
	mov.n	a11, a10
	l32r	a12, .LC20
	l32r	a10, .LC24
	mov.n	a14, a4
	mov.n	a13, a3
	call8	ets_printf
.LVL33:
.L16:
.LBE16:
.LBB17:
.LBB18:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/uart.h"
	.loc 3 272 0
	l32r	a9, .LC25
	.loc 3 274 0
	l32r	a4, .LC26
.L18:
	.loc 3 272 0
	memw
	l32i.n	a8, a9, 0
.LVL34:
	.loc 3 274 0
	bany	a8, a4, .L18
.LBE18:
.LBE17:
	.loc 1 111 0
	mov.n	a10, a3
	call8	rtc_clk_xtal_freq_update
.LVL35:
	.loc 1 112 0
	l32r	a10, .LC27
	mull	a10, a3, a10
	call8	rtc_clk_apb_freq_update
.LVL36:
	.loc 1 116 0
	addi	a10, sp, 16
	call8	rtc_clk_cpu_freq_get_config
.LVL37:
	.loc 1 119 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 117 0
	l32i.n	a4, sp, 28
.LVL38:
	.loc 1 119 0
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL39:
	.loc 1 120 0
	bnez.n	a10, .L19
	.loc 1 121 0 discriminator 1
	call8	esp_log_timestamp
.LVL40:
	mov.n	a11, a10
	l32r	a12, .LC20
	l32r	a10, .LC29
	call8	ets_printf
.LVL41:
	.loc 1 122 0 discriminator 1
	call8	abort
.LVL42:
.L19:
	.loc 1 124 0
	mov.n	a10, sp
.LVL43:
	call8	rtc_clk_cpu_freq_set_config
.LVL44:
	.loc 1 127 0
	l32r	a8, .LC30
	addi.n	a3, a3, -1
.LVL45:
	memw
	s32i.n	a3, a8, 0
	.loc 1 128 0
	l32r	a3, .LC31
.LVL46:
	movi.n	a8, 0x4f
.LVL47:
	memw
	s32i.n	a8, a3, 0
.LVL48:
.LBB19:
.LBB20:
	.loc 1 131 0
#APP
# 131 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk_init.c" 1
	rsr.ccount a3
# 0 "" 2
.LVL49:
#NO_APP
.LBE20:
	mull	a3, a2, a3
.LVL50:
	quou	a3, a3, a4
#APP
# 131 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk_init.c" 1
	wsr.ccount a3
# 0 "" 2
#NO_APP
.LBE19:
	.loc 1 134 0
	l32r	a3, .LC32
	l32i.n	a4, sp, 32
.LVL51:
	slli	a2, a2, 8
	and	a3, a4, a3
	l32r	a11, .LC33
	or	a2, a3, a2
	l32r	a4, .LC34
	s32i.n	a2, sp, 32
.LVL52:
	and	a3, a2, a11
	bne	a3, a4, .L20
	.loc 1 135 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL53:
.L20:
	.loc 1 137 0
	bbci	a2, 18, .L21
.LVL54:
.LBB21:
	.loc 1 139 0
	l32r	a2, .LC36
	movi.n	a10, 1
	add.n	a11, a3, a2
	movi.n	a2, 0
	moveqz	a2, a10, a11
	mov.n	a11, a2
	call8	rtc_clk_8m_enable
.LVL55:
.L21:
.LBE21:
	.loc 1 141 0
	l32i.n	a10, sp, 32
	extui	a10, a10, 18, 1
	call8	rtc_clk_fast_freq_set
.LVL56:
	.loc 1 142 0
	l32i.n	a10, sp, 32
	extui	a10, a10, 19, 2
	call8	rtc_clk_slow_freq_set
.LVL57:
	.loc 1 143 0
	retw.n
.LVL58:
.L15:
	.loc 1 89 0
	call8	rtc_clk_xtal_freq_get
.LVL59:
	mov.n	a3, a10
.LVL60:
	j	.L16
.LVL61:
.L14:
	.loc 1 92 0
	call8	rtc_clk_xtal_freq_estimate
.LVL62:
	mov.n	a3, a10
.LVL63:
	.loc 1 93 0
	bnez.n	a10, .L16
	j	.L22
.L17:
.LBB22:
	.loc 1 104 0
	call8	rtc_clk_xtal_freq_estimate
.LVL64:
	mov.n	a4, a10
.LVL65:
	.loc 1 105 0
	bne	a3, a10, .L23
	j	.L16
.LBE22:
.LFE10:
	.size	rtc_clk_init, .-rtc_clk_init
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.4byte	.LASF91
	.4byte	.LASF92
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1e
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x39
	.4byte	0x6c
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x3c
	.4byte	0xf2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x41
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x46
	.4byte	0x128
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
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x4c
	.4byte	0xfd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x51
	.4byte	0x158
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x56
	.4byte	0x133
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0x5b
	.4byte	0x19c
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5c
	.4byte	0x158
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x5d
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.string	"div"
	.byte	0x6
	.byte	0x5e
	.4byte	0x89
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x5f
	.4byte	0x89
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x60
	.4byte	0x163
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x65
	.4byte	0x1c6
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x69
	.4byte	0x1a7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x6e
	.4byte	0x1ea
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x71
	.4byte	0x1d1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x79
	.4byte	0x214
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x286
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x83
	.4byte	0xf2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x84
	.4byte	0x128
	.byte	0x4
	.byte	0xa
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x85
	.4byte	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x86
	.4byte	0x1c6
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x87
	.4byte	0x89
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x88
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x89
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0x8a
	.4byte	0x214
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x1f
	.4byte	0x2c2
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x3
	.2byte	0x10d
	.byte	0x3
	.4byte	0x2e8
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x10d
	.4byte	0x7e
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x10e
	.4byte	0x89
	.byte	0
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.byte	0x91
	.4byte	0xf2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x401
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x94
	.4byte	0x401
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x95
	.4byte	0x401
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9a
	.4byte	0x94
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x9f
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL0
	.4byte	0x70b
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x716
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x721
	.4byte	0x35f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL4
	.4byte	0x72c
	.4byte	0x377
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x738
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x743
	.4byte	0x3a6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x738
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x743
	.4byte	0x3d5
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x738
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x743
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x2
	.byte	0x19
	.4byte	0xc6
	.byte	0x3
	.4byte	0x422
	.uleb128 0x18
	.string	"val"
	.byte	0x2
	.byte	0x19
	.4byte	0x89
	.byte	0
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f4
	.uleb128 0x1a
	.string	"cfg"
	.byte	0x1
	.byte	0x2d
	.4byte	0x286
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2f
	.4byte	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2f
	.4byte	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x55
	.4byte	0xf2
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x1
	.byte	0x75
	.4byte	0x89
	.4byte	.LLST4
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.byte	0x77
	.4byte	0xc6
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	0x406
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x57
	.4byte	0x4ad
	.uleb128 0x1e
	.4byte	0x416
	.4byte	.LLST6
	.byte	0
	.uleb128 0x1d
	.4byte	0x406
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x62
	.4byte	0x4ca
	.uleb128 0x1e
	.4byte	0x416
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0
	.4byte	0x521
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x68
	.4byte	0xf2
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0x738
	.uleb128 0x14
	.4byte	.LVL33
	.4byte	0x743
	.4byte	0x517
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL64
	.4byte	0x2e8
	.byte	0
	.uleb128 0x1d
	.4byte	0x2c2
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x6e
	.4byte	0x551
	.uleb128 0x1e
	.4byte	0x2cf
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x21
	.4byte	0x2db
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x587
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.byte	0x83
	.4byte	0x53
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.byte	0x83
	.4byte	0x53
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x5b9
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0x8a
	.4byte	0xc6
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LVL55
	.4byte	0x721
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0x74e
	.4byte	0x5cd
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x738
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x743
	.4byte	0x5f6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x14
	.4byte	.LVL35
	.4byte	0x759
	.4byte	0x60a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL36
	.4byte	0x764
	.4byte	0x624
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.4byte	.LVL37
	.4byte	0x770
	.4byte	0x638
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x14
	.4byte	.LVL39
	.4byte	0x77c
	.4byte	0x653
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0x738
	.uleb128 0x14
	.4byte	.LVL41
	.4byte	0x743
	.4byte	0x67c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL42
	.4byte	0x788
	.uleb128 0x14
	.4byte	.LVL44
	.4byte	0x793
	.4byte	0x69a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x14
	.4byte	.LVL53
	.4byte	0x79f
	.4byte	0x6ad
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL56
	.4byte	0x7aa
	.4byte	0x6c7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf1
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x14
	.4byte	.LVL57
	.4byte	0x7b6
	.4byte	0x6e1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xef
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LVL59
	.4byte	0x7c2
	.uleb128 0x13
	.4byte	.LVL62
	.4byte	0x2e8
	.byte	0
	.uleb128 0x23
	.string	"TAG"
	.byte	0x1
	.byte	0x2b
	.4byte	0x706
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x24
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x6
	.byte	0xf1
	.uleb128 0x24
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x6
	.byte	0xf7
	.uleb128 0x24
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x6
	.byte	0xeb
	.uleb128 0x25
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1ed
	.uleb128 0x24
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x7
	.byte	0x57
	.uleb128 0x24
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x8
	.byte	0xde
	.uleb128 0x24
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x2
	.byte	0x13
	.uleb128 0x24
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.byte	0xbc
	.uleb128 0x25
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x1cd
	.uleb128 0x25
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x1b5
	.uleb128 0x25
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x18b
	.uleb128 0x24
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x9
	.byte	0x47
	.uleb128 0x25
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x199
	.uleb128 0x24
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x6
	.byte	0xc2
	.uleb128 0x25
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x12a
	.uleb128 0x25
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x110
	.uleb128 0x24
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x6
	.byte	0xb2
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
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL52
	.2byte	0x12
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf2
	.byte	0x24
	.byte	0x9
	.byte	0xfa
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2e
	.uleb128 0
	.4byte	.LVL58
	.4byte	.LFE10
	.2byte	0x12
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf2
	.byte	0x24
	.byte	0x9
	.byte	0xfa
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2e
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x4a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x9
	.byte	0xc
	.4byte	0x3ff66004
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x16
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf2
	.byte	0x24
	.byte	0x9
	.byte	0xfa
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x40
	.byte	0x24
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"rtc_slow_freq_t"
.LASF95:
	.string	"clk_val_is_valid"
.LASF21:
	.string	"RTC_XTAL_FREQ_24M"
.LASF35:
	.string	"source_freq_mhz"
.LASF94:
	.string	"rtc_clk_xtal_freq_estimate"
.LASF39:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF52:
	.string	"clk_8m_div"
.LASF54:
	.string	"clk_8m_dfreq"
.LASF25:
	.string	"RTC_CPU_FREQ_160M"
.LASF3:
	.string	"short int"
.LASF55:
	.string	"rtc_clk_config_t"
.LASF89:
	.string	"rtc_clk_xtal_freq_get"
.LASF19:
	.string	"RTC_XTAL_FREQ_40M"
.LASF48:
	.string	"xtal_freq"
.LASF6:
	.string	"__uint32_t"
.LASF66:
	.string	"uart_no"
.LASF37:
	.string	"rtc_cpu_freq_config_t"
.LASF80:
	.string	"rtc_clk_xtal_freq_update"
.LASF27:
	.string	"RTC_CPU_FREQ_2M"
.LASF64:
	.string	"cal_val"
.LASF10:
	.string	"uint8_t"
.LASF51:
	.string	"slow_freq"
.LASF23:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF36:
	.string	"freq_mhz"
.LASF81:
	.string	"rtc_clk_apb_freq_update"
.LASF42:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF69:
	.string	"freq_before"
.LASF96:
	.string	"rtc_clk_init"
.LASF7:
	.string	"long long int"
.LASF29:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF24:
	.string	"RTC_CPU_FREQ_80M"
.LASF63:
	.string	"clk_8m_enabled"
.LASF49:
	.string	"cpu_freq_mhz"
.LASF13:
	.string	"long int"
.LASF91:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk_init.c"
.LASF14:
	.string	"sizetype"
.LASF59:
	.string	"ESP_LOG_INFO"
.LASF28:
	.string	"rtc_cpu_freq_t"
.LASF5:
	.string	"__uint8_t"
.LASF34:
	.string	"source"
.LASF76:
	.string	"rtc_clk_cal_ratio"
.LASF72:
	.string	"need_8md256"
.LASF71:
	.string	"__ccount"
.LASF22:
	.string	"rtc_xtal_freq_t"
.LASF44:
	.string	"rtc_fast_freq_t"
.LASF31:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF2:
	.string	"unsigned char"
.LASF43:
	.string	"RTC_FAST_FREQ_8M"
.LASF53:
	.string	"slow_clk_dcap"
.LASF84:
	.string	"abort"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"uint64_t"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF93:
	.string	"uart_tx_wait_idle"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"RTC_CPU_FREQ_240M"
.LASF20:
	.string	"RTC_XTAL_FREQ_26M"
.LASF78:
	.string	"ets_printf"
.LASF83:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF62:
	.string	"status"
.LASF16:
	.string	"char"
.LASF47:
	.string	"RTC_CAL_32K_XTAL"
.LASF65:
	.string	"clk_8md256_enabled"
.LASF82:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF56:
	.string	"ESP_LOG_NONE"
.LASF4:
	.string	"short unsigned int"
.LASF17:
	.string	"_Bool"
.LASF74:
	.string	"rtc_clk_8md256_enabled"
.LASF8:
	.string	"__uint64_t"
.LASF58:
	.string	"ESP_LOG_WARN"
.LASF60:
	.string	"ESP_LOG_DEBUG"
.LASF86:
	.string	"rtc_clk_32k_enable"
.LASF15:
	.string	"long unsigned int"
.LASF87:
	.string	"rtc_clk_fast_freq_set"
.LASF45:
	.string	"RTC_CAL_RTC_MUX"
.LASF33:
	.string	"rtc_cpu_freq_src_t"
.LASF32:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF73:
	.string	"rtc_clk_8m_enabled"
.LASF92:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/soc"
.LASF61:
	.string	"ESP_LOG_VERBOSE"
.LASF38:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF30:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF75:
	.string	"rtc_clk_8m_enable"
.LASF77:
	.string	"esp_log_timestamp"
.LASF68:
	.string	"new_config"
.LASF88:
	.string	"rtc_clk_slow_freq_set"
.LASF90:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF40:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF46:
	.string	"RTC_CAL_8MD256"
.LASF79:
	.string	"rtc_clk_cpu_freq_to_xtal"
.LASF18:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF57:
	.string	"ESP_LOG_ERROR"
.LASF70:
	.string	"est_xtal_freq"
.LASF85:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF50:
	.string	"fast_freq"
.LASF67:
	.string	"old_config"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
