	.file	"clk.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"clk"
.LC4:
	.string	"\033[0;33mW (%d) %s: 32 kHz XTAL not found, switching to internal 150 kHz oscillator\033[0m\n"
	.section	.text.select_rtc_slow_clk,"ax",@progbits
	.literal_position
	.literal .LC1, 14999999
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	select_rtc_slow_clk, @function
select_rtc_slow_clk:
.LFB14:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/clk.c"
	.loc 1 178 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 179 0
	extui	a3, a2, 0, 2
.LVL1:
	.loc 1 184 0
	movi.n	a4, 1
.LVL2:
.L7:
	.loc 1 187 0
	bnei	a3, 1, .L2
.LVL3:
	.loc 1 196 0
	bnei	a2, 1, .L3
	.loc 1 197 0
	mov.n	a10, a2
	call8	rtc_clk_32k_enable
.LVL4:
	j	.L4
.L3:
	.loc 1 198 0
	movi.n	a5, 9
	bne	a2, a5, .L4
	.loc 1 199 0
	call8	rtc_clk_32k_enable_external
.LVL5:
.L4:
	.loc 1 203 0
	movi	a11, 0x400
	movi.n	a10, 2
	call8	rtc_clk_cal
.LVL6:
	.loc 1 204 0
	l32r	a5, .LC1
	bltu	a5, a10, .L5
	.loc 1 205 0
	addi.n	a5, a4, -1
.LVL7:
	beqi	a4, 1, .L8
	.loc 1 208 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	mov.n	a11, a10
	l32r	a12, .LC3
	l32r	a10, .LC5
	mov.n	a4, a5
	call8	ets_printf
.LVL9:
	.loc 1 209 0 discriminator 1
	movi.n	a3, 0
	j	.L5
.LVL10:
.L2:
	.loc 1 212 0
	bnei	a3, 2, .L5
	.loc 1 213 0
	movi.n	a11, 1
	mov.n	a10, a11
	call8	rtc_clk_8m_enable
.LVL11:
.L5:
	.loc 1 215 0
	mov.n	a10, a3
	call8	rtc_clk_slow_freq_set
.LVL12:
	.loc 1 221 0
	movi	a11, 0x400
	movi.n	a10, 0
	call8	rtc_clk_cal
.LVL13:
	j	.L6
.LVL14:
.L8:
	movi.n	a4, 0
.LVL15:
.L6:
	.loc 1 226 0
	beqz.n	a10, .L7
	.loc 1 228 0
	call8	esp_clk_slowclk_cal_set
.LVL16:
	retw.n
.LFE14:
	.size	select_rtc_slow_clk, .-select_rtc_slow_clk
	.section	.rodata.str1.1
.LC7:
	.string	"rtc_clk_xtal_freq_get() != RTC_XTAL_FREQ_AUTO"
.LC10:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/clk.c"
.LC12:
	.string	"res"
	.section	.rodata
	.align	4
.LC0:
	.byte	20
	.byte	20
	.byte	20
	.byte	7
	.section	.text.esp_clk_init,"ax",@progbits
	.literal_position
	.literal .LC6, .LC0
	.literal .LC8, .LC7
	.literal .LC9, __func__$5089
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, 1072955420
	.literal .LC15, 268369920
	.align	4
	.global	esp_clk_init
	.type	esp_clk_init, @function
esp_clk_init:
.LFB9:
	.loc 1 84 0
	entry	sp, 64
.LCFI1:
	.loc 1 86 0
	l32r	a2, .LC6
	l32i.n	a10, a2, 0
	call8	rtc_init
.LVL17:
	.loc 1 100 0
	call8	rtc_clk_xtal_freq_get
.LVL18:
	bnez.n	a10, .L12
	.loc 1 100 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC9
	movi	a11, 0x64
	j	.L16
.L12:
	.loc 1 103 0 is_stmt 1
	movi.n	a10, 1
	call8	rtc_clk_fast_freq_set
.LVL19:
	.loc 1 124 0
	movi.n	a10, 0
	call8	select_rtc_slow_clk
.LVL20:
	.loc 1 136 0
	addi	a10, sp, 16
	call8	rtc_clk_cpu_freq_get_config
.LVL21:
	.loc 1 140 0
	mov.n	a11, sp
	movi	a10, 0xa0
	.loc 1 137 0
	l32i.n	a2, sp, 28
.LVL22:
	.loc 1 140 0
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL23:
.LBB26:
.LBB27:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 272 0
	l32r	a11, .LC14
	.loc 2 274 0
	l32r	a8, .LC15
.LBE27:
.LBE26:
	.loc 1 141 0
	bnez.n	a10, .L14
	.loc 1 141 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC9
	movi	a11, 0x8d
.LVL24:
.L16:
	l32r	a10, .LC11
	call8	__assert_func
.LVL25:
.L14:
.LBB29:
.LBB28:
	.loc 2 272 0 is_stmt 1
	memw
	l32i.n	a9, a11, 0
.LVL26:
	.loc 2 274 0
	bany	a9, a8, .L14
.LBE28:
.LBE29:
	.loc 1 147 0
	mov.n	a10, sp
.LVL27:
	call8	rtc_clk_cpu_freq_set_config
.LVL28:
.LBB30:
.LBB31:
	.loc 1 150 0
#APP
# 150 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/clk.c" 1
	rsr.ccount a8
# 0 "" 2
.LVL29:
#NO_APP
.LBE31:
	addx4	a8, a8, a8
.LVL30:
	slli	a8, a8, 5
	quou	a8, a8, a2
#APP
# 150 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/clk.c" 1
	wsr.ccount a8
# 0 "" 2
#NO_APP
	retw.n
.LBE30:
.LFE9:
	.size	esp_clk_init, .-esp_clk_init
	.section	.iram1.4,"ax",@progbits
	.literal_position
	.literal .LC16, g_ticks_per_us_pro
	.literal .LC17, 1000000
	.align	4
	.global	esp_clk_cpu_freq
	.type	esp_clk_cpu_freq, @function
esp_clk_cpu_freq:
.LFB10:
	.loc 1 154 0
	entry	sp, 32
.LCFI2:
	.loc 1 155 0
	l32r	a2, .LC16
	.loc 1 156 0
	l32r	a8, .LC17
	.loc 1 155 0
	l32i.n	a2, a2, 0
	.loc 1 156 0
	mull	a2, a2, a8
	retw.n
.LFE10:
	.size	esp_clk_cpu_freq, .-esp_clk_cpu_freq
	.section	.iram1.5,"ax",@progbits
	.literal_position
	.literal .LC18, g_ticks_per_us_pro
	.literal .LC19, 1000000
	.align	4
	.global	esp_clk_apb_freq
	.type	esp_clk_apb_freq, @function
esp_clk_apb_freq:
.LFB11:
	.loc 1 159 0
	entry	sp, 32
.LCFI3:
	.loc 1 160 0
	l32r	a2, .LC18
	l32i.n	a8, a2, 0
	movi.n	a2, 0x50
	minu	a8, a2, a8
	.loc 1 161 0
	l32r	a2, .LC19
	mull	a2, a8, a2
	retw.n
.LFE11:
	.size	esp_clk_apb_freq, .-esp_clk_apb_freq
	.section	.iram1.6,"ax",@progbits
	.literal_position
	.literal .LC20, 1000000
	.align	4
	.global	esp_clk_xtal_freq
	.type	esp_clk_xtal_freq, @function
esp_clk_xtal_freq:
.LFB12:
	.loc 1 164 0
	entry	sp, 32
.LCFI4:
	.loc 1 165 0
	call8	rtc_clk_xtal_freq_get
.LVL31:
	.loc 1 166 0
	l32r	a2, .LC20
	mull	a2, a10, a2
	retw.n
.LFE12:
	.size	esp_clk_xtal_freq, .-esp_clk_xtal_freq
	.section	.iram1.7,"ax",@progbits
	.literal_position
	.literal .LC21, g_ticks_per_us_pro
	.align	4
	.global	ets_update_cpu_frequency
	.type	ets_update_cpu_frequency, @function
ets_update_cpu_frequency:
.LFB13:
	.loc 1 169 0
.LVL32:
	entry	sp, 32
.LCFI5:
	.loc 1 171 0
	l32r	a8, .LC21
	s32i.n	a2, a8, 0
	retw.n
.LFE13:
	.size	ets_update_cpu_frequency, .-ets_update_cpu_frequency
	.section	.text.rtc_clk_select_rtc_slow_clk,"ax",@progbits
	.align	4
	.global	rtc_clk_select_rtc_slow_clk
	.type	rtc_clk_select_rtc_slow_clk, @function
rtc_clk_select_rtc_slow_clk:
.LFB15:
	.loc 1 232 0
	entry	sp, 32
.LCFI6:
	.loc 1 233 0
	movi.n	a10, 1
	call8	select_rtc_slow_clk
.LVL33:
	retw.n
.LFE15:
	.size	rtc_clk_select_rtc_slow_clk, .-rtc_clk_select_rtc_slow_clk
	.section	.text.esp_perip_clk_init,"ax",@progbits
	.literal_position
	.literal .LC22, 228406
	.literal .LC23, 102403080
	.literal .LC24, 1072693440
	.literal .LC25, 1072693276
	.literal .LC26, 1072693452
	.literal .LC27, 15012848
	.literal .LC28, 1073017004
	.literal .LC29, 2097152
	.literal .LC30, 1073139884
	.literal .LC31, 1072693444
	.literal .LC32, 1072693280
	.align	4
	.global	esp_perip_clk_init
	.type	esp_perip_clk_init, @function
esp_perip_clk_init:
.LFB16:
	.loc 1 243 0
	entry	sp, 32
.LCFI7:
.LVL34:
	.loc 1 252 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL35:
	.loc 1 261 0
	addi	a10, a10, -11
.LVL36:
	bgeui	a10, 3, .L24
.LVL37:
.LBB32:
.LBB33:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 170 0
	l32r	a8, .LC24
.LBE33:
.LBE32:
.LBB35:
.LBB36:
	l32r	a9, .LC25
.LBE36:
.LBE35:
.LBB38:
.LBB39:
	l32r	a11, .LC26
.LBE39:
.LBE38:
.LBB41:
.LBB34:
	memw
	l32i.n	a10, a8, 0
.LVL38:
.LBE34:
.LBE41:
.LBB42:
.LBB37:
	memw
	l32i.n	a9, a9, 0
.LBE37:
.LBE42:
.LBB43:
.LBB40:
	memw
	l32i.n	a11, a11, 0
.LBE40:
.LBE43:
	.loc 1 266 0
	movi.n	a8, -1
	xor	a10, a8, a10
.LVL39:
	.loc 1 267 0
	xor	a9, a8, a9
.LVL40:
	.loc 1 268 0
	xor	a8, a8, a11
.LVL41:
	j	.L23
.LVL42:
.L24:
	.loc 1 284 0
	l32r	a8, .LC22
	.loc 1 271 0
	l32r	a10, .LC23
.LVL43:
	.loc 1 280 0
	movi.n	a9, 0xf
.LVL44:
.L23:
.LBB44:
.LBB45:
	.loc 3 170 0
	l32r	a13, .LC28
.LBE45:
.LBE44:
	.loc 1 294 0
	l32r	a11, .LC27
.LBB47:
.LBB46:
	.loc 3 170 0
	memw
	l32i.n	a12, a13, 0
.LBE46:
.LBE47:
	.loc 1 294 0
	or	a10, a10, a11
.LVL45:
	.loc 1 330 0
	l32r	a11, .LC29
	or	a12, a12, a11
	memw
	s32i.n	a12, a13, 0
.LVL46:
.LBB48:
.LBB49:
	.loc 3 170 0
	l32r	a12, .LC30
	memw
	l32i.n	a13, a12, 0
.LBE49:
.LBE48:
	.loc 1 331 0
	or	a11, a13, a11
.LBB50:
.LBB51:
	.loc 3 170 0
	l32r	a13, .LC24
.LBE51:
.LBE50:
	.loc 1 331 0
	memw
	s32i.n	a11, a12, 0
.LVL47:
.LBB53:
.LBB52:
	.loc 3 170 0
	memw
	l32i.n	a12, a13, 0
.LBE52:
.LBE53:
	.loc 1 334 0
	movi.n	a11, -1
	xor	a14, a11, a10
	and	a12, a14, a12
	memw
	s32i.n	a12, a13, 0
.LVL48:
.LBB54:
.LBB55:
	.loc 3 170 0
	l32r	a13, .LC31
.LBE55:
.LBE54:
	.loc 1 342 0
	xor	a8, a11, a8
.LVL49:
.LBB57:
.LBB56:
	.loc 3 170 0
	memw
	l32i.n	a12, a13, 0
.LBE56:
.LBE57:
	.loc 1 335 0
	or	a10, a10, a12
.LVL50:
.LBB58:
.LBB59:
	.loc 3 170 0
	l32r	a12, .LC25
.LBE59:
.LBE58:
	.loc 1 335 0
	memw
	s32i.n	a10, a13, 0
.LVL51:
.LBB61:
.LBB60:
	.loc 3 170 0
	memw
	l32i.n	a10, a12, 0
.LBE60:
.LBE61:
	.loc 1 338 0
	xor	a13, a11, a9
	and	a10, a13, a10
	memw
	s32i.n	a10, a12, 0
.LVL52:
.LBB62:
.LBB63:
	.loc 3 170 0
	l32r	a12, .LC32
	memw
	l32i.n	a10, a12, 0
.LBE63:
.LBE62:
	.loc 1 339 0
	or	a9, a9, a10
.LVL53:
.LBB64:
.LBB65:
	.loc 3 170 0
	l32r	a10, .LC26
.LBE65:
.LBE64:
	.loc 1 339 0
	memw
	s32i.n	a9, a12, 0
.LVL54:
.LBB67:
.LBB66:
	.loc 3 170 0
	memw
	l32i.n	a9, a10, 0
.LBE66:
.LBE67:
	.loc 1 342 0
	and	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	.loc 1 345 0
	movi.n	a10, 0x1a
	call8	periph_module_enable
.LVL55:
	retw.n
.LFE16:
	.size	esp_perip_clk_init, .-esp_perip_clk_init
	.section	.rodata.__func__$5089,"a",@progbits
	.type	__func__$5089, @object
	.size	__func__$5089, 13
__func__$5089:
	.string	"esp_clk_init"
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI1-.LFB9
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI3-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI4-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI5-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI6-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/rtc.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_clk.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9c5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0xc
	.4byte	.LASF148
	.4byte	.LASF149
	.4byte	.Ldebug_ranges0+0xd8
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x1f
	.4byte	0xe1
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x52
	.4byte	0x14e
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x63
	.4byte	0xe1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x3c
	.4byte	0x17e
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x51
	.4byte	0x1a3
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x56
	.4byte	0x17e
	.uleb128 0x9
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.4byte	0x1e7
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5c
	.4byte	0x1a3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x8
	.byte	0x5d
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.string	"div"
	.byte	0x8
	.byte	0x5e
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0x5f
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x60
	.4byte	0x1ae
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x65
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x8
	.byte	0x69
	.4byte	0x1f2
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x6e
	.4byte	0x235
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x79
	.4byte	0x254
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.2byte	0x294
	.4byte	0x2be
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x295
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x296
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x297
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x298
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x299
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x29a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x29b
	.4byte	0x254
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x16
	.4byte	0x3a9
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x1d
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x1f
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x21
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x22
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x41
	.4byte	0x3ce
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x1
	.byte	0x46
	.4byte	0x3a9
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0x3
	.4byte	0x3f5
	.uleb128 0x10
	.string	"reg"
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x41b
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x10d
	.4byte	0x73
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x10e
	.4byte	0x7e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb1
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51a
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x1
	.byte	0xb1
	.4byte	0x3ce
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb3
	.4byte	0x211
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb4
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb8
	.4byte	0x53
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LVL4
	.4byte	0x906
	.4byte	0x47e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x911
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0x91c
	.4byte	0x4a1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x928
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x933
	.4byte	0x4ca
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x93e
	.4byte	0x4e2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0x949
	.4byte	0x4f6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL13
	.4byte	0x91c
	.4byte	0x510
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0x955
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.byte	0x53
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67e
	.uleb128 0x1b
	.string	"cfg"
	.byte	0x1
	.byte	0x55
	.4byte	0x2be
	.uleb128 0x1c
	.4byte	.LASF112
	.4byte	0x68e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5089
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x1
	.byte	0x87
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0x1
	.byte	0x87
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0x89
	.4byte	0x693
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.byte	0x8a
	.4byte	0x693
	.4byte	.LLST4
	.uleb128 0x1e
	.string	"res"
	.byte	0x1
	.byte	0x8c
	.4byte	0x698
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	0x3f5
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x91
	.4byte	0x5ba
	.uleb128 0x20
	.4byte	0x402
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x22
	.4byte	0x40e
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x5f0
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0x96
	.4byte	0x53
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0x96
	.4byte	0x53
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x960
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0x96c
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x977
	.4byte	0x615
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x41b
	.4byte	0x628
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x983
	.4byte	0x63c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x98f
	.4byte	0x656
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x17
	.4byte	.LVL25
	.4byte	0x99b
	.4byte	0x66d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x25
	.4byte	.LVL28
	.4byte	0x9a6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x9e
	.4byte	0x68e
	.uleb128 0x27
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x67e
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF118
	.uleb128 0x28
	.4byte	.LASF119
	.byte	0x1
	.byte	0x99
	.4byte	0x53
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF120
	.byte	0x1
	.byte	0x9e
	.4byte	0x53
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.byte	0xa3
	.4byte	0x53
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ec
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0x96c
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70f
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x1
	.byte	0xa8
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF154
	.byte	0x1
	.byte	0xe7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x734
	.uleb128 0x25
	.4byte	.LVL33
	.4byte	0x41b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0xf2
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d4
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0xf4
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0xf4
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.byte	0xf4
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF129
	.byte	0x1
	.byte	0xf7
	.4byte	0x8d4
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x10a
	.4byte	0x7a3
	.uleb128 0x2c
	.4byte	0x3e9
	.4byte	.LLST13
	.byte	0
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x10b
	.4byte	0x7c1
	.uleb128 0x2c
	.4byte	0x3e9
	.4byte	.LLST14
	.byte	0
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x10c
	.4byte	0x7df
	.uleb128 0x2c
	.4byte	0x3e9
	.4byte	.LLST15
	.byte	0
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x14a
	.4byte	0x7fd
	.uleb128 0x2d
	.4byte	0x3e9
	.4byte	0x3ff4f0ac
	.byte	0
	.uleb128 0x2e
	.4byte	0x3d9
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x14b
	.4byte	0x81b
	.uleb128 0x2d
	.4byte	0x3e9
	.4byte	0x3ff6d0ac
	.byte	0
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x14e
	.4byte	0x839
	.uleb128 0x2d
	.4byte	0x3e9
	.4byte	0x3ff000c0
	.byte	0
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x14f
	.4byte	0x857
	.uleb128 0x2d
	.4byte	0x3e9
	.4byte	0x3ff000c4
	.byte	0
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x152
	.4byte	0x875
	.uleb128 0x2d
	.4byte	0x3e9
	.4byte	0x3ff0001c
	.byte	0
	.uleb128 0x2e
	.4byte	0x3d9
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.2byte	0x153
	.4byte	0x893
	.uleb128 0x2d
	.4byte	0x3e9
	.4byte	0x3ff00020
	.byte	0
	.uleb128 0x2b
	.4byte	0x3d9
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x156
	.4byte	0x8b1
	.uleb128 0x2d
	.4byte	0x3e9
	.4byte	0x3ff000cc
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x9b2
	.4byte	0x8c4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL55
	.4byte	0x9bd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x14e
	.4byte	0x8e4
	.uleb128 0x27
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x2f
	.string	"TAG"
	.byte	0x1
	.byte	0x50
	.4byte	0x8f6
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x30
	.4byte	.LASF155
	.byte	0x1
	.byte	0x4b
	.4byte	0x7e
	.uleb128 0x31
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x8
	.byte	0xc2
	.uleb128 0x31
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x8
	.byte	0xc7
	.uleb128 0x32
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x1e4
	.uleb128 0x31
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x6
	.byte	0x57
	.uleb128 0x31
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xa
	.byte	0xde
	.uleb128 0x31
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x8
	.byte	0xeb
	.uleb128 0x32
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x110
	.uleb128 0x31
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xb
	.byte	0x2b
	.uleb128 0x32
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x2b0
	.uleb128 0x31
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x8
	.byte	0xb2
	.uleb128 0x32
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x12a
	.uleb128 0x32
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x1b5
	.uleb128 0x32
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x18b
	.uleb128 0x31
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xc
	.byte	0x29
	.uleb128 0x32
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x199
	.uleb128 0x31
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x7
	.byte	0x9c
	.uleb128 0x31
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xd
	.byte	0x25
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x8
	.byte	0xa0
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE9
	.2byte	0x3
	.byte	0x8
	.byte	0xa0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0xf
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xa0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x5
	.byte	0x7a
	.sleb128 11
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x5
	.byte	0x7a
	.sleb128 11
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000c0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0001c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"PERIPH_UART2_MODULE"
.LASF125:
	.string	"esp_perip_clk_init"
.LASF87:
	.string	"PERIPH_VSPI_MODULE"
.LASF25:
	.string	"DEEPSLEEP_RESET"
.LASF42:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF129:
	.string	"rst_reas"
.LASF80:
	.string	"PERIPH_PWM3_MODULE"
.LASF108:
	.string	"rtc_slow_freq"
.LASF5:
	.string	"__uint8_t"
.LASF151:
	.string	"uart_tx_wait_idle"
.LASF116:
	.string	"new_freq_mhz"
.LASF82:
	.string	"PERIPH_UHCI1_MODULE"
.LASF130:
	.string	"rtc_clk_32k_enable"
.LASF24:
	.string	"OWDT_RESET"
.LASF113:
	.string	"old_config"
.LASF62:
	.string	"pll_wait"
.LASF128:
	.string	"wifi_bt_sdio_clk"
.LASF40:
	.string	"RTC_XTAL_FREQ_26M"
.LASF106:
	.string	"slow_clk_sel_t"
.LASF8:
	.string	"long long unsigned int"
.LASF23:
	.string	"SW_RESET"
.LASF49:
	.string	"freq_mhz"
.LASF132:
	.string	"rtc_clk_cal"
.LASF46:
	.string	"rtc_cpu_freq_src_t"
.LASF55:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF21:
	.string	"NO_MEAN"
.LASF32:
	.string	"SW_CPU_RESET"
.LASF148:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/clk.c"
.LASF122:
	.string	"ets_update_cpu_frequency"
.LASF19:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF105:
	.string	"SLOW_CLK_32K_EXT_OSC"
.LASF38:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF124:
	.string	"ticks_per_us"
.LASF26:
	.string	"SDIO_RESET"
.LASF72:
	.string	"PERIPH_I2C1_MODULE"
.LASF11:
	.string	"long int"
.LASF29:
	.string	"RTCWDT_SYS_RESET"
.LASF131:
	.string	"rtc_clk_32k_enable_external"
.LASF54:
	.string	"rtc_slow_freq_t"
.LASF57:
	.string	"RTC_CAL_RTC_MUX"
.LASF88:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF94:
	.string	"PERIPH_WIFI_MODULE"
.LASF61:
	.string	"xtal_wait"
.LASF115:
	.string	"old_freq_mhz"
.LASF90:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF56:
	.string	"RTC_FAST_FREQ_8M"
.LASF34:
	.string	"EXT_CPU_RESET"
.LASF6:
	.string	"__uint32_t"
.LASF119:
	.string	"esp_clk_cpu_freq"
.LASF51:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF153:
	.string	"esp_clk_xtal_freq"
.LASF22:
	.string	"POWERON_RESET"
.LASF138:
	.string	"rtc_init"
.LASF0:
	.string	"unsigned int"
.LASF65:
	.string	"rtc_dboost_fpd"
.LASF93:
	.string	"PERIPH_RNG_MODULE"
.LASF79:
	.string	"PERIPH_PWM2_MODULE"
.LASF13:
	.string	"long unsigned int"
.LASF35:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF117:
	.string	"__ccount"
.LASF81:
	.string	"PERIPH_UHCI0_MODULE"
.LASF147:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short unsigned int"
.LASF100:
	.string	"PERIPH_SHA_MODULE"
.LASF96:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF69:
	.string	"PERIPH_UART1_MODULE"
.LASF127:
	.string	"hwcrypto_perip_clk"
.LASF36:
	.string	"RTCWDT_RTC_RESET"
.LASF92:
	.string	"PERIPH_EMAC_MODULE"
.LASF83:
	.string	"PERIPH_RMT_MODULE"
.LASF37:
	.string	"RESET_REASON"
.LASF144:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF71:
	.string	"PERIPH_I2C0_MODULE"
.LASF18:
	.string	"ESP_LOG_INFO"
.LASF101:
	.string	"PERIPH_RSA_MODULE"
.LASF28:
	.string	"TG1WDT_SYS_RESET"
.LASF47:
	.string	"source"
.LASF12:
	.string	"sizetype"
.LASF121:
	.string	"esp_clk_init"
.LASF134:
	.string	"ets_printf"
.LASF102:
	.string	"SLOW_CLK_150K"
.LASF86:
	.string	"PERIPH_HSPI_MODULE"
.LASF31:
	.string	"TGWDT_CPU_RESET"
.LASF155:
	.string	"g_ticks_per_us_pro"
.LASF74:
	.string	"PERIPH_I2S1_MODULE"
.LASF59:
	.string	"RTC_CAL_32K_XTAL"
.LASF76:
	.string	"PERIPH_TIMG1_MODULE"
.LASF135:
	.string	"rtc_clk_8m_enable"
.LASF67:
	.string	"PERIPH_LEDC_MODULE"
.LASF154:
	.string	"rtc_clk_select_rtc_slow_clk"
.LASF44:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF141:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF33:
	.string	"RTCWDT_CPU_RESET"
.LASF63:
	.string	"clkctl_init"
.LASF118:
	.string	"_Bool"
.LASF143:
	.string	"__assert_func"
.LASF2:
	.string	"unsigned char"
.LASF78:
	.string	"PERIPH_PWM1_MODULE"
.LASF27:
	.string	"TG0WDT_SYS_RESET"
.LASF30:
	.string	"INTRUSION_RESET"
.LASF3:
	.string	"short int"
.LASF133:
	.string	"esp_log_timestamp"
.LASF16:
	.string	"ESP_LOG_ERROR"
.LASF136:
	.string	"rtc_clk_slow_freq_set"
.LASF112:
	.string	"__func__"
.LASF152:
	.string	"select_rtc_slow_clk"
.LASF91:
	.string	"PERIPH_CAN_MODULE"
.LASF68:
	.string	"PERIPH_UART0_MODULE"
.LASF98:
	.string	"PERIPH_BT_LC_MODULE"
.LASF89:
	.string	"PERIPH_SDMMC_MODULE"
.LASF45:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF52:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF64:
	.string	"pwrctl_init"
.LASF150:
	.string	"DPORT_READ_PERI_REG"
.LASF107:
	.string	"uart_no"
.LASF48:
	.string	"source_freq_mhz"
.LASF120:
	.string	"esp_clk_apb_freq"
.LASF14:
	.string	"char"
.LASF20:
	.string	"ESP_LOG_VERBOSE"
.LASF149:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF53:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF15:
	.string	"ESP_LOG_NONE"
.LASF126:
	.string	"common_perip_clk"
.LASF139:
	.string	"rtc_clk_xtal_freq_get"
.LASF137:
	.string	"esp_clk_slowclk_cal_set"
.LASF99:
	.string	"PERIPH_AES_MODULE"
.LASF41:
	.string	"RTC_XTAL_FREQ_24M"
.LASF103:
	.string	"SLOW_CLK_32K_XTAL"
.LASF95:
	.string	"PERIPH_BT_MODULE"
.LASF50:
	.string	"rtc_cpu_freq_config_t"
.LASF109:
	.string	"cal_val"
.LASF142:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF104:
	.string	"SLOW_CLK_8MD256"
.LASF10:
	.string	"uint32_t"
.LASF73:
	.string	"PERIPH_I2S0_MODULE"
.LASF17:
	.string	"ESP_LOG_WARN"
.LASF110:
	.string	"retry_32k_xtal"
.LASF111:
	.string	"status"
.LASF145:
	.string	"rtc_get_reset_reason"
.LASF75:
	.string	"PERIPH_TIMG0_MODULE"
.LASF114:
	.string	"new_config"
.LASF123:
	.string	"slow_clk"
.LASF9:
	.string	"uint8_t"
.LASF66:
	.string	"rtc_config_t"
.LASF140:
	.string	"rtc_clk_fast_freq_set"
.LASF85:
	.string	"PERIPH_SPI_MODULE"
.LASF39:
	.string	"RTC_XTAL_FREQ_40M"
.LASF84:
	.string	"PERIPH_PCNT_MODULE"
.LASF43:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF77:
	.string	"PERIPH_PWM0_MODULE"
.LASF60:
	.string	"ck8m_wait"
.LASF146:
	.string	"periph_module_enable"
.LASF97:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF58:
	.string	"RTC_CAL_8MD256"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
