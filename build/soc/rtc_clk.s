	.file	"rtc_clk.c"
	.text
.Ltext0:
	.section	.text.rtc_clk_bbpll_disable,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988160
	.literal .LC1, s_cur_pll_freq
	.literal .LC2, 1072988208
	.literal .LC3, 262144
	.align	4
	.type	rtc_clk_bbpll_disable, @function
rtc_clk_bbpll_disable:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk.c"
	.loc 1 417 0
	entry	sp, 32
.LCFI0:
	.loc 1 418 0
	l32r	a8, .LC0
	movi	a9, 0x540
	memw
	l32i.n	a10, a8, 0
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 421 0
	l32r	a9, .LC1
	movi.n	a10, 0
	s32i.n	a10, a9, 0
	.loc 1 424 0
	l32r	a9, .LC2
	memw
	l32i.n	a9, a9, 0
.LVL0:
	.loc 1 425 0
	bbci	a9, 23, .L1
.LBB31:
	.loc 1 427 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC3
.LVL1:
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.L1:
	retw.n
.LBE31:
.LFE27:
	.size	rtc_clk_bbpll_disable, .-rtc_clk_bbpll_disable
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"rtc_clk"
.LC6:
	.string	"\033[0;31mE (%d) %s: invalid frequency\033[0m\n"
	.section	.text.rtc_clk_cpu_freq_to_pll_mhz,"ax",@progbits
	.literal_position
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, 1072693308
	.literal .LC9, 1072988284
	.literal .LC10, -14337
	.literal .LC11, 1072988272
	.literal .LC12, -402653185
	.literal .LC13, 134217728
	.literal .LC14, 1072988340
	.literal .LC15, 1280003147
	.align	4
	.type	rtc_clk_cpu_freq_to_pll_mhz, @function
rtc_clk_cpu_freq_to_pll_mhz:
.LFB29:
	.loc 1 451 0
.LVL2:
	entry	sp, 32
.LCFI1:
.LVL3:
	.loc 1 454 0
	movi.n	a8, 0x50
	.loc 1 451 0
	mov.n	a10, a2
	.loc 1 454 0
	beq	a2, a8, .L8
	.loc 1 456 0
	movi	a8, 0xa0
	beq	a2, a8, .L9
	.loc 1 458 0
	movi	a11, 0xf0
	.loc 1 460 0
	movi.n	a9, 2
	.loc 1 459 0
	movi.n	a8, 7
	.loc 1 458 0
	beq	a2, a11, .L7
.LVL4:
.LBB40:
.LBB41:
	.loc 1 462 0
	call8	esp_log_timestamp
.LVL5:
	mov.n	a11, a10
	l32r	a12, .LC5
	l32r	a10, .LC7
	call8	ets_printf
.LVL6:
	.loc 1 463 0
	call8	abort
.LVL7:
.L8:
.LBE41:
.LBE40:
	.loc 1 453 0
	movi.n	a9, 0
	j	.L11
.L9:
	.loc 1 457 0
	movi.n	a9, 1
.L11:
	.loc 1 452 0
	movi.n	a8, 4
.L7:
.LVL8:
	.loc 1 465 0
	l32r	a11, .LC8
	.loc 1 466 0
	slli	a8, a8, 11
.LVL9:
	.loc 1 465 0
	memw
	s32i.n	a9, a11, 0
	.loc 1 466 0
	l32r	a11, .LC9
	l32r	a9, .LC10
.LVL10:
	memw
	l32i.n	a12, a11, 0
	and	a9, a12, a9
	or	a8, a9, a8
	memw
	s32i.n	a8, a11, 0
.LVL11:
	.loc 1 467 0
	l32r	a11, .LC11
	l32r	a8, .LC12
	memw
	l32i.n	a9, a11, 0
	and	a9, a9, a8
	l32r	a8, .LC13
	or	a8, a9, a8
	memw
	s32i.n	a8, a11, 0
.LVL12:
.LBB42:
.LBB43:
	.loc 1 759 0
	l32r	a9, .LC15
	l32r	a8, .LC14
	memw
	s32i.n	a9, a8, 0
.LBE43:
.LBE42:
	.loc 1 469 0
	call8	ets_update_cpu_frequency
.LVL13:
	.loc 1 470 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL14:
	retw.n
.LFE29:
	.size	rtc_clk_cpu_freq_to_pll_mhz, .-rtc_clk_cpu_freq_to_pll_mhz
	.section	.text.rtc_clk_32k_enable_common$constprop$7,"ax",@progbits
	.literal_position
	.literal .LC16, 1072989324
	.literal .LC17, 393216
	.literal .LC18, -415629313
	.literal .LC19, -3145729
	.literal .LC20, 524288
	.align	4
	.type	rtc_clk_32k_enable_common$constprop$7, @function
rtc_clk_32k_enable_common$constprop$7:
.LFB53:
	.loc 1 112 0
.LVL15:
	entry	sp, 32
.LCFI2:
.LVL16:
	.loc 1 114 0
	l32r	a8, .LC16
	l32r	a9, .LC17
	memw
	l32i.n	a10, a8, 0
	.loc 1 118 0
	extui	a2, a2, 0, 2
.LVL17:
	.loc 1 114 0
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 115 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC18
	.loc 1 118 0
	slli	a2, a2, 20
	.loc 1 115 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 118 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC19
	.loc 1 120 0
	extui	a3, a3, 0, 2
.LVL18:
	.loc 1 118 0
	and	a9, a10, a9
	or	a2, a2, a9
	memw
	s32i.n	a2, a8, 0
	.loc 1 119 0
	memw
	l32i.n	a9, a8, 0
	movi.n	a2, 0x18
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 120 0
	memw
	l32i.n	a2, a8, 0
	movi.n	a9, -7
	and	a9, a2, a9
	slli	a3, a3, 1
	or	a3, a3, a9
	memw
	s32i.n	a3, a8, 0
	.loc 1 121 0
	memw
	l32i.n	a3, a8, 0
	l32r	a2, .LC20
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	retw.n
.LFE53:
	.size	rtc_clk_32k_enable_common$constprop$7, .-rtc_clk_32k_enable_common$constprop$7
	.section	.text.rtc_clk_32k_enable,"ax",@progbits
	.literal_position
	.literal .LC21, 1072989324
	.literal .LC22, -524289
	.align	4
	.global	rtc_clk_32k_enable
	.type	rtc_clk_32k_enable, @function
rtc_clk_32k_enable:
.LFB11:
	.loc 1 125 0
.LVL19:
	entry	sp, 32
.LCFI3:
	.loc 1 125 0
	extui	a2, a2, 0, 8
	.loc 1 126 0
	beqz.n	a2, .L14
	.loc 1 127 0
	movi.n	a11, 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable_common$constprop$7
.LVL20:
	retw.n
.L14:
	.loc 1 129 0
	l32r	a9, .LC21
	l32r	a8, .LC22
	memw
	l32i.n	a10, a9, 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE11:
	.size	rtc_clk_32k_enable, .-rtc_clk_32k_enable
	.section	.text.rtc_clk_32k_enable_external,"ax",@progbits
	.align	4
	.global	rtc_clk_32k_enable_external
	.type	rtc_clk_32k_enable_external, @function
rtc_clk_32k_enable_external:
.LFB12:
	.loc 1 134 0
	entry	sp, 32
.LCFI4:
	.loc 1 135 0
	movi.n	a11, 1
	movi.n	a10, 2
	call8	rtc_clk_32k_enable_common$constprop$7
.LVL21:
	retw.n
.LFE12:
	.size	rtc_clk_32k_enable_external, .-rtc_clk_32k_enable_external
	.section	.text.rtc_clk_32k_bootstrap,"ax",@progbits
	.literal_position
	.literal .LC23, 1072989324
	.literal .LC24, -524289
	.literal .LC25, 272629760
	.align	4
	.global	rtc_clk_32k_bootstrap
	.type	rtc_clk_32k_bootstrap, @function
rtc_clk_32k_bootstrap:
.LFB13:
	.loc 1 143 0
.LVL22:
	entry	sp, 32
.LCFI5:
	.loc 1 144 0
	beqz.n	a2, .L18
.LVL23:
.LBB44:
	.loc 1 150 0
	movi.n	a10, 0x20
	call8	gpio_pad_select_gpio
.LVL24:
	.loc 1 151 0
	movi.n	a10, 0x21
	call8	gpio_pad_select_gpio
.LVL25:
	.loc 1 152 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 2
	movi.n	a10, 1
	call8	gpio_output_set_high
.LVL26:
.L19:
	.loc 1 156 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 2
	movi.n	a10, 1
	call8	gpio_output_set_high
.LVL27:
	.loc 1 157 0
	movi.n	a10, 0xf
	call8	ets_delay_us
.LVL28:
	.loc 1 158 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 1
	movi.n	a10, 2
	call8	gpio_output_set_high
.LVL29:
	.loc 1 159 0
	movi.n	a10, 0xf
	.loc 1 160 0
	addi.n	a2, a2, -1
.LVL30:
	.loc 1 159 0
	call8	ets_delay_us
.LVL31:
	.loc 1 155 0
	bnez.n	a2, .L19
	.loc 1 162 0
	movi.n	a13, 3
	mov.n	a12, a2
	mov.n	a11, a2
	mov.n	a10, a2
	call8	gpio_output_set_high
.LVL32:
.L18:
.LBE44:
	.loc 1 165 0
	l32r	a2, .LC23
.LVL33:
	l32r	a8, .LC24
	memw
	l32i.n	a9, a2, 0
	.loc 1 167 0
	movi.n	a10, 7
	.loc 1 165 0
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 166 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC25
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 167 0
	call8	ets_delay_us
.LVL34:
	.loc 1 169 0
	movi.n	a11, 0
	movi.n	a10, 3
	call8	rtc_clk_32k_enable_common$constprop$7
.LVL35:
	retw.n
.LFE13:
	.size	rtc_clk_32k_bootstrap, .-rtc_clk_32k_bootstrap
	.section	.text.rtc_clk_32k_enabled,"ax",@progbits
	.literal_position
	.literal .LC26, 1072989324
	.align	4
	.global	rtc_clk_32k_enabled
	.type	rtc_clk_32k_enabled, @function
rtc_clk_32k_enabled:
.LFB14:
	.loc 1 174 0
	entry	sp, 32
.LCFI6:
	.loc 1 175 0
	l32r	a2, .LC26
	memw
	l32i.n	a2, a2, 0
	.loc 1 176 0
	extui	a2, a2, 19, 1
	retw.n
.LFE14:
	.size	rtc_clk_32k_enabled, .-rtc_clk_32k_enabled
	.section	.text.rtc_clk_8m_enable,"ax",@progbits
	.literal_position
	.literal .LC27, 1072988272
	.literal .LC28, 1072988188
	.literal .LC29, -16321
	.align	4
	.global	rtc_clk_8m_enable
	.type	rtc_clk_8m_enable, @function
rtc_clk_8m_enable:
.LFB15:
	.loc 1 179 0
.LVL36:
	entry	sp, 32
.LCFI7:
	l32r	a8, .LC27
	.loc 1 179 0
	extui	a2, a2, 0, 8
	.loc 1 181 0
	memw
	l32i.n	a11, a8, 0
	.loc 1 179 0
	extui	a3, a3, 0, 8
	l32r	a9, .LC28
	.loc 1 180 0
	beqz.n	a2, .L26
	.loc 1 181 0
	movi	a10, -0x41
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 183 0
	memw
	l32i.n	a11, a9, 0
	l32r	a10, .LC29
	and	a11, a11, a10
	movi.n	a10, 0x40
	or	a10, a11, a10
	memw
	s32i.n	a10, a9, 0
	.loc 1 185 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x81
	and	a9, a10, a9
	.loc 1 184 0
	bnez.n	a3, .L30
.L27:
	.loc 1 187 0
	movi	a9, 0x80
	or	a9, a10, a9
.L30:
	memw
	s32i.n	a9, a8, 0
	.loc 1 189 0
	movi.n	a10, 0x32
	call8	ets_delay_us
.LVL37:
	retw.n
.L26:
	.loc 1 191 0
	movi.n	a10, 0x40
	or	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 192 0
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC29
	and	a10, a10, a8
	movi	a8, 0x500
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE15:
	.size	rtc_clk_8m_enable, .-rtc_clk_8m_enable
	.section	.text.rtc_clk_8m_enabled,"ax",@progbits
	.literal_position
	.literal .LC30, 1072988272
	.align	4
	.global	rtc_clk_8m_enabled
	.type	rtc_clk_8m_enabled, @function
rtc_clk_8m_enabled:
.LFB16:
	.loc 1 197 0
	entry	sp, 32
.LCFI8:
	.loc 1 198 0
	l32r	a2, .LC30
	memw
	l32i.n	a8, a2, 0
	.loc 1 199 0
	movi.n	a2, 1
	.loc 1 198 0
	extui	a8, a8, 6, 1
	.loc 1 199 0
	xor	a2, a8, a2
	retw.n
.LFE16:
	.size	rtc_clk_8m_enabled, .-rtc_clk_8m_enabled
	.section	.text.rtc_clk_8md256_enabled,"ax",@progbits
	.literal_position
	.literal .LC31, 1072988272
	.align	4
	.global	rtc_clk_8md256_enabled
	.type	rtc_clk_8md256_enabled, @function
rtc_clk_8md256_enabled:
.LFB17:
	.loc 1 202 0
	entry	sp, 32
.LCFI9:
	.loc 1 203 0
	l32r	a2, .LC31
	memw
	l32i.n	a8, a2, 0
	.loc 1 204 0
	movi.n	a2, 1
	.loc 1 203 0
	extui	a8, a8, 7, 1
	.loc 1 204 0
	xor	a2, a8, a2
	retw.n
.LFE17:
	.size	rtc_clk_8md256_enabled, .-rtc_clk_8md256_enabled
	.section	.text.rtc_clk_apll_enable,"ax",@progbits
	.literal_position
	.literal .LC32, 8388608
	.literal .LC33, 1072988208
	.literal .LC34, -8388609
	.literal .LC35, -16777217
	.literal .LC36, 1072988272
	.literal .LC37, 1072988160
	.literal .LC38, 262144
	.literal .LC39, -262145
	.literal .LC40, 1073061900
	.align	4
	.global	rtc_clk_apll_enable
	.type	rtc_clk_apll_enable, @function
rtc_clk_apll_enable:
.LFB18:
	.loc 1 207 0
.LVL38:
	entry	sp, 32
.LCFI10:
	.loc 1 208 0
	l32r	a10, .LC33
	l32r	a8, .LC34
	memw
	l32i.n	a9, a10, 0
	.loc 1 207 0
	extui	a2, a2, 0, 8
	.loc 1 208 0
	and	a9, a9, a8
	l32r	a8, .LC32
	movi.n	a11, 0
	movnez	a8, a11, a2
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	.loc 1 209 0
	memw
	l32i.n	a9, a10, 0
	l32r	a8, .LC35
	and	a9, a9, a8
	slli	a8, a2, 24
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	l32r	a8, .LC37
	.loc 1 211 0
	bne	a2, a11, .L35
	.loc 1 212 0 discriminator 1
	l32r	a9, .LC36
	memw
	l32i.n	a9, a9, 0
	.loc 1 211 0 discriminator 1
	extui	a9, a9, 27, 2
	beqi	a9, 1, .L35
	.loc 1 213 0
	memw
	l32i.n	a3, a8, 0
.LVL39:
	l32r	a2, .LC38
.LVL40:
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	retw.n
.LVL41:
.L35:
	.loc 1 215 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC39
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 218 0
	beqz.n	a2, .L33
.LVL42:
.LBB45:
	.loc 1 220 0
	l32r	a2, .LC40
	memw
	l32i.n	a8, a2, 0
.LVL43:
	.loc 1 219 0
	movi.n	a2, 0x49
	.loc 1 221 0
	extui	a8, a8, 15, 1
.LVL44:
	bnez.n	a8, .L38
	.loc 1 224 0
	movi	a2, 0x69
	.loc 1 223 0
	mov.n	a4, a8
.LVL45:
	.loc 1 222 0
	mov.n	a3, a8
.LVL46:
.L38:
	.loc 1 226 0
	extui	a15, a5, 0, 8
	movi.n	a14, 0
	movi.n	a13, 5
	movi.n	a12, 7
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL47:
	.loc 1 227 0
	extui	a15, a3, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 9
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL48:
	.loc 1 228 0
	extui	a15, a4, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 8
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL49:
	.loc 1 229 0
	movi.n	a13, 9
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL50:
	.loc 1 230 0
	mov.n	a13, a2
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL51:
	.loc 1 231 0
	movi.n	a13, 4
	extui	a15, a6, 0, 8
	movi.n	a14, 0
	mov.n	a12, a13
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL52:
	.loc 1 234 0
	movi.n	a13, 0xf
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL53:
	.loc 1 235 0
	movi.n	a13, 0x3f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL54:
	.loc 1 236 0
	movi.n	a13, 0x1f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL55:
	.loc 1 239 0
	j	.L39
.L40:
	.loc 1 241 0
	movi.n	a10, 1
	call8	ets_delay_us
.LVL56:
.L39:
	.loc 1 239 0
	movi.n	a14, 7
	movi.n	a12, 3
	mov.n	a13, a14
	mov.n	a11, a12
	movi	a10, 0x6d
	call8	rom_i2c_readReg_Mask
.LVL57:
	beqz.n	a10, .L40
.LVL58:
.L33:
	retw.n
.LBE45:
.LFE18:
	.size	rtc_clk_apll_enable, .-rtc_clk_apll_enable
	.section	.text.rtc_clk_slow_freq_set,"ax",@progbits
	.literal_position
	.literal .LC41, 1072988272
	.literal .LC42, 1073741823
	.align	4
	.global	rtc_clk_slow_freq_set
	.type	rtc_clk_slow_freq_set, @function
rtc_clk_slow_freq_set:
.LFB19:
	.loc 1 247 0
.LVL59:
	entry	sp, 32
.LCFI11:
	.loc 1 248 0
	l32r	a10, .LC41
	l32r	a8, .LC42
	memw
	l32i.n	a9, a10, 0
	.loc 1 250 0
	movi	a11, 0x100
	.loc 1 248 0
	and	a9, a9, a8
	slli	a8, a2, 30
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 250 0
	memw
	l32i.n	a9, a10, 0
	movi	a8, -0x101
	and	a9, a9, a8
	addi.n	a8, a2, -1
	movi.n	a2, 0
.LVL60:
	moveqz	a2, a11, a8
	or	a2, a2, a9
	memw
	s32i.n	a2, a10, 0
	.loc 1 253 0
	movi	a10, 0x12c
	call8	ets_delay_us
.LVL61:
	retw.n
.LFE19:
	.size	rtc_clk_slow_freq_set, .-rtc_clk_slow_freq_set
	.section	.text.rtc_clk_slow_freq_get,"ax",@progbits
	.literal_position
	.literal .LC43, 1072988272
	.align	4
	.global	rtc_clk_slow_freq_get
	.type	rtc_clk_slow_freq_get, @function
rtc_clk_slow_freq_get:
.LFB20:
	.loc 1 257 0
	entry	sp, 32
.LCFI12:
	.loc 1 258 0
	l32r	a2, .LC43
	memw
	l32i.n	a2, a2, 0
	.loc 1 259 0
	extui	a2, a2, 30, 2
	retw.n
.LFE20:
	.size	rtc_clk_slow_freq_get, .-rtc_clk_slow_freq_get
	.section	.text.rtc_clk_slow_freq_get_hz,"ax",@progbits
	.literal_position
	.literal .LC44, 150000
	.literal .LC45, 32768
	.literal .LC46, 33203
	.literal .LC47, 1072988272
	.align	4
	.global	rtc_clk_slow_freq_get_hz
	.type	rtc_clk_slow_freq_get_hz, @function
rtc_clk_slow_freq_get_hz:
.LFB21:
	.loc 1 262 0
	entry	sp, 32
.LCFI13:
.LBB46:
.LBB47:
	.loc 1 258 0
	l32r	a2, .LC47
	memw
	l32i.n	a8, a2, 0
.LBE47:
.LBE46:
	.loc 1 265 0
	l32r	a2, .LC45
	.loc 1 263 0
	extui	a8, a8, 30, 2
	beqi	a8, 1, .L54
	.loc 1 264 0
	l32r	a2, .LC44
	.loc 1 263 0
	beqz.n	a8, .L54
	.loc 1 268 0
	l32r	a2, .LC46
	addi	a8, a8, -2
	movi.n	a9, 0
	movnez	a2, a9, a8
.L54:
	.loc 1 269 0
	retw.n
.LFE21:
	.size	rtc_clk_slow_freq_get_hz, .-rtc_clk_slow_freq_get_hz
	.section	.text.rtc_clk_fast_freq_set,"ax",@progbits
	.literal_position
	.literal .LC48, 1072988272
	.literal .LC49, -536870913
	.align	4
	.global	rtc_clk_fast_freq_set
	.type	rtc_clk_fast_freq_set, @function
rtc_clk_fast_freq_set:
.LFB22:
	.loc 1 272 0
.LVL62:
	entry	sp, 32
.LCFI14:
	.loc 1 273 0
	l32r	a9, .LC48
	l32r	a8, .LC49
	memw
	l32i.n	a10, a9, 0
	extui	a2, a2, 0, 1
.LVL63:
	and	a8, a10, a8
	slli	a2, a2, 29
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
	.loc 1 274 0
	movi.n	a10, 3
	call8	ets_delay_us
.LVL64:
	retw.n
.LFE22:
	.size	rtc_clk_fast_freq_set, .-rtc_clk_fast_freq_set
	.section	.text.rtc_clk_fast_freq_get,"ax",@progbits
	.literal_position
	.literal .LC50, 1072988272
	.align	4
	.global	rtc_clk_fast_freq_get
	.type	rtc_clk_fast_freq_get, @function
rtc_clk_fast_freq_get:
.LFB23:
	.loc 1 278 0
	entry	sp, 32
.LCFI15:
	.loc 1 279 0
	l32r	a2, .LC50
	memw
	l32i.n	a2, a2, 0
	.loc 1 280 0
	extui	a2, a2, 29, 1
	retw.n
.LFE23:
	.size	rtc_clk_fast_freq_get, .-rtc_clk_fast_freq_get
	.section	.text.rtc_clk_bbpll_configure,"ax",@progbits
	.literal_position
	.literal .LC51, 1072988284
	.literal .LC52, -14337
	.literal .LC53, 8192
	.literal .LC54, 14336
	.literal .LC55, 1072988272
	.literal .LC56, s_cur_pll_freq
	.align	4
	.global	rtc_clk_bbpll_configure
	.type	rtc_clk_bbpll_configure, @function
rtc_clk_bbpll_configure:
.LFB24:
	.loc 1 283 0
.LVL65:
	entry	sp, 48
.LCFI16:
	l32r	a4, .LC51
	.loc 1 291 0
	movi	a5, 0x140
	.loc 1 293 0
	memw
	l32i.n	a6, a4, 0
	.loc 1 291 0
	bne	a3, a5, .L62
	.loc 1 293 0
	l32r	a5, .LC52
	and	a6, a6, a5
	l32r	a5, .LC53
	or	a5, a6, a5
	memw
	s32i.n	a5, a4, 0
	.loc 1 295 0
	movi.n	a4, 0x1a
	beq	a2, a4, .L64
	movi.n	a4, 0x28
	beq	a2, a4, .L73
	movi.n	a4, 0x18
	bne	a2, a4, .L76
	j	.L66
.L64:
	.loc 1 310 0
	movi.n	a2, 1
.LVL66:
.L78:
	.loc 1 309 0
	movi.n	a6, 0
	.loc 1 308 0
	mov.n	a4, a2
	.loc 1 307 0
	movi.n	a5, 4
	.loc 1 306 0
	movi	a7, 0xe0
	.loc 1 305 0
	movi.n	a8, 0xc
	j	.L65
.LVL67:
.L66:
	.loc 1 318 0
	movi.n	a2, 1
.LVL68:
	.loc 1 317 0
	movi.n	a6, 0
	.loc 1 316 0
	mov.n	a4, a2
	.loc 1 315 0
	movi.n	a5, 4
	.loc 1 314 0
	movi	a7, 0xe0
	.loc 1 313 0
	movi.n	a8, 0xb
	.loc 1 319 0
	j	.L65
.LVL69:
.L76:
	.loc 1 326 0
	movi.n	a2, 0
.LVL70:
	j	.L78
.LVL71:
.L73:
	.loc 1 300 0
	movi.n	a4, 0
	.loc 1 302 0
	movi.n	a2, 3
.LVL72:
	.loc 1 301 0
	movi.n	a6, 6
	.loc 1 299 0
	mov.n	a5, a4
	.loc 1 298 0
	movi.n	a7, 0x20
	.loc 1 297 0
	mov.n	a8, a4
.L65:
.LVL73:
	.loc 1 329 0
	movi.n	a13, 0x43
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	s32i.n	a8, sp, 0
	call8	rom_i2c_writeReg
.LVL74:
	.loc 1 330 0
	movi	a13, 0x84
	j	.L80
.LVL75:
.L62:
	.loc 1 333 0
	l32r	a5, .LC54
	.loc 1 334 0
	movi.n	a10, 3
	.loc 1 333 0
	or	a5, a6, a5
	memw
	s32i.n	a5, a4, 0
	.loc 1 336 0
	movi.n	a4, 0x1a
	.loc 1 334 0
	call8	ets_delay_us
.LVL76:
	.loc 1 336 0
	beq	a2, a4, .L69
	movi.n	a4, 0x28
	beq	a2, a4, .L74
	movi.n	a4, 0x18
	bne	a2, a4, .L77
	j	.L71
.L69:
	.loc 1 351 0
	movi.n	a2, 1
.LVL77:
	.loc 1 350 0
	movi.n	a6, 0
	.loc 1 349 0
	mov.n	a4, a2
	.loc 1 348 0
	movi.n	a5, 4
	.loc 1 347 0
	movi	a7, 0x90
	j	.L79
.LVL78:
.L71:
	.loc 1 359 0
	movi.n	a2, 1
.LVL79:
	.loc 1 358 0
	movi.n	a6, 0
	.loc 1 357 0
	mov.n	a4, a2
	.loc 1 356 0
	movi.n	a5, 4
	.loc 1 355 0
	movi	a7, 0x90
	.loc 1 354 0
	movi.n	a8, 0xb
	.loc 1 360 0
	j	.L70
.LVL80:
.L77:
	.loc 1 367 0
	movi.n	a2, 0
.LVL81:
	.loc 1 366 0
	mov.n	a6, a2
	.loc 1 365 0
	mov.n	a4, a2
	.loc 1 364 0
	movi.n	a5, 4
	.loc 1 363 0
	movi	a7, 0xe0
.LVL82:
.L79:
	.loc 1 362 0
	movi.n	a8, 0xc
	.loc 1 368 0
	j	.L70
.LVL83:
.L74:
	.loc 1 341 0
	movi.n	a4, 0
	.loc 1 343 0
	movi.n	a2, 3
.LVL84:
	.loc 1 342 0
	movi.n	a6, 6
	.loc 1 340 0
	mov.n	a5, a4
	.loc 1 339 0
	movi.n	a7, 0x1c
	.loc 1 338 0
	mov.n	a8, a4
.L70:
.LVL85:
	.loc 1 370 0
	movi	a13, 0xc3
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	s32i.n	a8, sp, 0
	call8	rom_i2c_writeReg
.LVL86:
	.loc 1 371 0
	movi	a13, 0x74
.LVL87:
.L80:
	movi.n	a12, 9
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL88:
	l32i.n	a8, sp, 0
.LVL89:
	.loc 1 377 0
	slli	a4, a4, 7
.LVL90:
	slli	a5, a5, 4
.LVL91:
	or	a13, a4, a5
	or	a13, a13, a8
	movi.n	a12, 2
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL92:
	.loc 1 378 0
	mov.n	a13, a7
	movi.n	a12, 3
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL93:
	.loc 1 379 0
	slli	a13, a2, 6
	or	a13, a13, a6
	movi.n	a12, 5
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL94:
.LBB48:
.LBB49:
	.loc 1 258 0
	l32r	a2, .LC55
.LVL95:
.LBE49:
.LBE48:
	.loc 1 382 0
	movi	a4, 0xa0
.LBB51:
.LBB50:
	.loc 1 258 0
	memw
	l32i.n	a2, a2, 0
.LBE50:
.LBE51:
	.loc 1 382 0
	movi.n	a10, 0x50
	.loc 1 380 0
	extui	a2, a2, 30, 2
.LVL96:
	.loc 1 382 0
	movnez	a10, a4, a2
.LVL97:
	call8	ets_delay_us
.LVL98:
	.loc 1 383 0
	l32r	a2, .LC56
.LVL99:
	s32i.n	a3, a2, 0
	retw.n
.LFE24:
	.size	rtc_clk_bbpll_configure, .-rtc_clk_bbpll_configure
	.section	.text.rtc_clk_xtal_freq_get,"ax",@progbits
	.literal_position
	.literal .LC57, 1072988336
	.literal .LC58, 65534
	.align	4
	.global	rtc_clk_xtal_freq_get
	.type	rtc_clk_xtal_freq_get, @function
rtc_clk_xtal_freq_get:
.LFB42:
	.loc 1 739 0
	entry	sp, 32
.LCFI17:
	.loc 1 741 0
	l32r	a2, .LC57
	memw
	l32i.n	a8, a2, 0
.LVL100:
	.loc 1 743 0
	movi.n	a2, 0
.LBB56:
.LBB57:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk_common.h"
	.loc 2 27 0
	extui	a10, a8, 0, 16
	extui	a9, a8, 16, 16
	bne	a10, a9, .L82
.LBE57:
.LBE56:
	.loc 1 742 0
	addi.n	a9, a8, -1
	movi.n	a10, -3
	bltu	a10, a9, .L82
.LVL101:
.LBB58:
.LBB59:
	.loc 2 32 0
	l32r	a2, .LC58
	and	a2, a8, a2
.LVL102:
.L82:
.LBE59:
.LBE58:
	.loc 1 746 0
	retw.n
.LFE42:
	.size	rtc_clk_xtal_freq_get, .-rtc_clk_xtal_freq_get
	.global	rtc_get_xtal
	.set	rtc_get_xtal,rtc_clk_xtal_freq_get
	.section	.text.rtc_clk_cpu_freq_from_mhz_internal,"ax",@progbits
	.align	4
	.type	rtc_clk_cpu_freq_from_mhz_internal, @function
rtc_clk_cpu_freq_from_mhz_internal:
.LFB35:
	.loc 1 526 0
.LVL103:
	entry	sp, 32
.LCFI18:
	.loc 1 526 0
	mov.n	a4, a2
	.loc 1 527 0
	movi	a2, 0xf0
.LVL104:
	bne	a4, a2, .L86
	.loc 1 528 0
	movi.n	a2, 3
	j	.L92
.L86:
	.loc 1 529 0
	movi	a2, 0xa0
	bne	a4, a2, .L88
	.loc 1 530 0
	movi.n	a2, 2
	j	.L92
.L88:
	.loc 1 531 0
	movi.n	a2, 0x50
	bne	a4, a2, .L89
	.loc 1 532 0
	movi.n	a2, 1
	s32i.n	a2, a3, 0
	retw.n
.L89:
.LVL105:
.LBB62:
.LBB63:
	.loc 1 533 0
	call8	rtc_clk_xtal_freq_get
.LVL106:
	.loc 1 534 0
	movi.n	a2, 0
	.loc 1 533 0
	bne	a4, a10, .L90
	j	.L92
.L90:
	.loc 1 535 0
	bnei	a4, 2, .L87
	.loc 1 536 0
	movi.n	a2, 4
.LVL107:
.L92:
	s32i.n	a2, a3, 0
	.loc 1 540 0
	movi.n	a2, 1
.L87:
.LBE63:
.LBE62:
	.loc 1 541 0
	retw.n
.LFE35:
	.size	rtc_clk_cpu_freq_from_mhz_internal, .-rtc_clk_cpu_freq_from_mhz_internal
	.section	.text.rtc_clk_cpu_freq_from_mhz,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_from_mhz
	.type	rtc_clk_cpu_freq_from_mhz, @function
rtc_clk_cpu_freq_from_mhz:
.LFB36:
	.loc 1 544 0
.LVL108:
	entry	sp, 32
.LCFI19:
	.loc 1 545 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_from_mhz_internal
.LVL109:
	.loc 1 546 0
	mov.n	a2, a10
.LVL110:
	retw.n
.LFE36:
	.size	rtc_clk_cpu_freq_from_mhz, .-rtc_clk_cpu_freq_from_mhz
	.section	.rodata.str1.1
.LC65:
	.string	"\033[0;31mE (%d) %s: invalid rtc_cpu_freq_t value\033[0m\n"
	.section	.text.rtc_clk_cpu_freq_value,"ax",@progbits
	.literal_position
	.literal .LC59, 2000000
	.literal .LC60, 80000000
	.literal .LC61, 160000000
	.literal .LC62, 240000000
	.literal .LC63, 1000000
	.literal .LC64, .LC4
	.literal .LC66, .LC65
	.align	4
	.global	rtc_clk_cpu_freq_value
	.type	rtc_clk_cpu_freq_value, @function
rtc_clk_cpu_freq_value:
.LFB34:
	.loc 1 507 0
.LVL111:
	entry	sp, 32
.LCFI20:
	.loc 1 516 0
	l32r	a10, .LC61
	.loc 1 508 0
	beqi	a2, 2, .L101
	bgeui	a2, 3, .L97
	beqz.n	a2, .L98
	.loc 1 514 0
	l32r	a10, .LC60
	.loc 1 508 0
	beqi	a2, 1, .L101
	j	.L95
.L97:
	.loc 1 518 0
	l32r	a10, .LC62
	.loc 1 508 0
	beqi	a2, 3, .L101
	.loc 1 512 0
	l32r	a10, .LC59
	.loc 1 508 0
	beqi	a2, 4, .L101
	j	.L95
.L98:
	.loc 1 510 0
	call8	rtc_clk_xtal_freq_get
.LVL112:
	l32r	a2, .LC63
.LVL113:
	mull	a10, a10, a2
	j	.L101
.LVL114:
.L95:
	.loc 1 520 0 discriminator 1
	call8	esp_log_timestamp
.LVL115:
	mov.n	a11, a10
	l32r	a12, .LC64
	l32r	a10, .LC66
	call8	ets_printf
.LVL116:
	.loc 1 521 0 discriminator 1
	movi.n	a10, 0
.LVL117:
.L101:
	.loc 1 523 0
	mov.n	a2, a10
	retw.n
.LFE34:
	.size	rtc_clk_cpu_freq_value, .-rtc_clk_cpu_freq_value
	.section	.text.rtc_clk_cpu_freq_to_config,"ax",@progbits
	.literal_position
	.literal .LC67, .LC4
	.literal .LC68, .LC65
	.align	4
	.global	rtc_clk_cpu_freq_to_config
	.type	rtc_clk_cpu_freq_to_config, @function
rtc_clk_cpu_freq_to_config:
.LFB37:
	.loc 1 549 0
.LVL118:
	entry	sp, 32
.LCFI21:
	.loc 1 555 0
	beqi	a2, 2, .L108
	bgeui	a2, 3, .L109
	beqz.n	a2, .L110
	.loc 1 571 0
	movi.n	a8, 4
	.loc 1 572 0
	movi.n	a9, 0x50
	.loc 1 555 0
	beqi	a2, 1, .L121
	j	.L107
.L109:
	beqi	a2, 3, .L113
	beqi	a2, 4, .L110
	j	.L107
.L108:
	.loc 1 577 0
	mov.n	a8, a2
	.loc 1 578 0
	movi	a9, 0xa0
	.loc 1 575 0
	movi.n	a2, 1
.LVL119:
	j	.L121
.LVL120:
.L110:
	.loc 1 558 0
	call8	rtc_clk_xtal_freq_get
.LVL121:
	.loc 1 564 0
	mov.n	a9, a10
	.loc 1 565 0
	movi.n	a8, 1
	.loc 1 560 0
	bnei	a2, 4, .L122
.LVL122:
	.loc 1 562 0
	l32i.n	a8, a3, 4
	.loc 1 561 0
	movi.n	a9, 2
	.loc 1 562 0
	srli	a8, a8, 1
.LVL123:
	j	.L122
.LVL124:
.L107:
.LBB66:
.LBB67:
	.loc 1 587 0
	call8	esp_log_timestamp
.LVL125:
	mov.n	a11, a10
	l32r	a12, .LC67
	l32r	a10, .LC68
	call8	ets_printf
.LVL126:
	.loc 1 588 0
	call8	abort
.LVL127:
.L121:
.LBE67:
.LBE66:
	.loc 1 570 0
	movi	a10, 0x140
	j	.L112
.LVL128:
.L113:
	.loc 1 583 0
	movi.n	a8, 2
	.loc 1 584 0
	movi	a9, 0xf0
	.loc 1 581 0
	movi.n	a2, 1
.LVL129:
	.loc 1 582 0
	movi	a10, 0x1e0
	j	.L112
.LVL130:
.L122:
	.loc 1 559 0
	movi.n	a2, 0
.LVL131:
.L112:
	.loc 1 591 0
	s32i.n	a2, a3, 0
	s32i.n	a10, a3, 4
	s32i.n	a8, a3, 8
	s32i.n	a9, a3, 12
	retw.n
.LFE37:
	.size	rtc_clk_cpu_freq_to_config, .-rtc_clk_cpu_freq_to_config
	.section	.text.rtc_clk_cpu_freq_mhz_to_config,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_mhz_to_config
	.type	rtc_clk_cpu_freq_mhz_to_config, @function
rtc_clk_cpu_freq_mhz_to_config:
.LFB38:
	.loc 1 600 0
.LVL132:
	entry	sp, 32
.LCFI22:
	.loc 1 600 0
	mov.n	a4, a2
	.loc 1 606 0
	call8	rtc_clk_xtal_freq_get
.LVL133:
	.loc 1 607 0
	bltu	a10, a2, .L124
	.loc 1 608 0
	quou	a9, a10, a2
.LVL134:
	.loc 1 609 0
	srli	a8, a9, 1
	add.n	a8, a8, a10
	quou	a8, a8, a9
.LVL135:
	.loc 1 612 0
	movi.n	a2, 0
.LVL136:
	.loc 1 610 0
	bne	a4, a8, .L125
	.loc 1 616 0
	mov.n	a8, a2
.LVL137:
	j	.L126
.LVL138:
.L124:
	.loc 1 617 0
	movi.n	a2, 0x50
.LVL139:
	beq	a4, a2, .L128
	.loc 1 622 0
	movi	a2, 0xa0
	beq	a4, a2, .L129
	.loc 1 627 0
	movi	a8, 0xf0
	.loc 1 612 0
	movi.n	a2, 0
	.loc 1 627 0
	bne	a4, a8, .L125
	.loc 1 631 0
	movi.n	a9, 2
	.loc 1 629 0
	movi.n	a8, 1
	.loc 1 630 0
	movi	a10, 0x1e0
.LVL140:
	j	.L126
.LVL141:
.L128:
	.loc 1 621 0
	movi.n	a9, 4
	j	.L131
.L129:
	.loc 1 626 0
	movi.n	a9, 2
.L131:
	.loc 1 624 0
	movi.n	a8, 1
	.loc 1 625 0
	movi	a10, 0x140
.LVL142:
.L126:
	.loc 1 636 0
	s32i.n	a8, a3, 0
	s32i.n	a10, a3, 4
	s32i.n	a9, a3, 8
	s32i.n	a4, a3, 12
	.loc 1 642 0
	movi.n	a2, 1
.LVL143:
.L125:
	.loc 1 643 0
	retw.n
.LFE38:
	.size	rtc_clk_cpu_freq_mhz_to_config, .-rtc_clk_cpu_freq_mhz_to_config
	.section	.rodata.str1.1
.LC73:
	.string	"\033[0;31mE (%d) %s: unsupported frequency configuration\033[0m\n"
	.section	.text.rtc_clk_cpu_freq_get_config,"ax",@progbits
	.literal_position
	.literal .LC69, 1072988272
	.literal .LC70, 1073111040
	.literal .LC71, 1072693308
	.literal .LC72, .LC4
	.literal .LC74, .LC73
	.align	4
	.global	rtc_clk_cpu_freq_get_config
	.type	rtc_clk_cpu_freq_get_config, @function
rtc_clk_cpu_freq_get_config:
.LFB40:
	.loc 1 671 0
.LVL144:
	entry	sp, 32
.LCFI23:
	.loc 1 676 0
	l32r	a3, .LC69
	memw
	l32i.n	a3, a3, 0
.LVL145:
	.loc 1 677 0
	extui	a3, a3, 27, 2
.LVL146:
	beqi	a3, 1, .L134
	beqz.n	a3, .L135
	beqi	a3, 2, .L137
	j	.L141
.L135:
.LVL147:
	.loc 1 680 0
	l32r	a4, .LC70
	memw
	l32i.n	a4, a4, 0
	.loc 1 681 0
	call8	rtc_clk_xtal_freq_get
.LVL148:
	.loc 1 680 0
	extui	a4, a4, 0, 10
	addi.n	a4, a4, 1
.LVL149:
	.loc 1 682 0
	quou	a9, a10, a4
.LVL150:
	.loc 1 684 0
	j	.L136
.LVL151:
.L134:
.LBB68:
.LBB69:
.LBB70:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 77 0
	l32r	a4, .LC71
	memw
	l32i.n	a8, a4, 0
.LBE70:
.LBE69:
	.loc 1 687 0
	extui	a8, a8, 0, 2
.LVL152:
	.loc 1 688 0
	beqz.n	a8, .L138
	.loc 1 692 0
	beqi	a8, 1, .L139
	.loc 1 696 0
	beqi	a8, 2, .L140
.LVL153:
.L141:
.LBE68:
	.loc 1 714 0 discriminator 1
	call8	esp_log_timestamp
.LVL154:
	mov.n	a11, a10
	l32r	a12, .LC72
	l32r	a10, .LC74
	call8	ets_printf
.LVL155:
	.loc 1 715 0 discriminator 1
	call8	abort
.LVL156:
.L137:
	.loc 1 710 0
	movi.n	a9, 8
	.loc 1 709 0
	movi.n	a4, 1
	.loc 1 708 0
	mov.n	a10, a9
	j	.L136
.LVL157:
.L138:
.LBB71:
	.loc 1 691 0
	movi.n	a9, 0x50
	.loc 1 690 0
	movi.n	a4, 4
	.loc 1 689 0
	movi	a10, 0x140
	j	.L136
.L139:
	.loc 1 695 0
	movi	a9, 0xa0
	.loc 1 694 0
	movi.n	a4, 2
	.loc 1 693 0
	movi	a10, 0x140
	.loc 1 686 0
	mov.n	a3, a8
	j	.L136
.L140:
	.loc 1 699 0
	movi	a9, 0xf0
	.loc 1 698 0
	mov.n	a4, a8
	.loc 1 697 0
	movi	a10, 0x1e0
.LVL158:
.L136:
.LBE71:
	.loc 1 717 0
	s32i.n	a3, a2, 0
	s32i.n	a10, a2, 4
	s32i.n	a4, a2, 8
	s32i.n	a9, a2, 12
	retw.n
.LFE40:
	.size	rtc_clk_cpu_freq_get_config, .-rtc_clk_cpu_freq_get_config
	.section	.text.rtc_clk_cpu_freq_get,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_get
	.type	rtc_clk_cpu_freq_get, @function
rtc_clk_cpu_freq_get:
.LFB33:
	.loc 1 498 0
	entry	sp, 64
.LCFI24:
	.loc 1 500 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_get_config
.LVL159:
	.loc 1 502 0
	l32i.n	a10, sp, 12
	addi	a11, sp, 16
	call8	rtc_clk_cpu_freq_from_mhz_internal
.LVL160:
	.loc 1 504 0
	l32i.n	a2, sp, 16
	retw.n
.LFE33:
	.size	rtc_clk_cpu_freq_get, .-rtc_clk_cpu_freq_get
	.section	.text.rtc_clk_xtal_freq_update,"ax",@progbits
	.literal_position
	.literal .LC75, 1072988336
	.literal .LC76, 65537
	.align	4
	.global	rtc_clk_xtal_freq_update
	.type	rtc_clk_xtal_freq_update, @function
rtc_clk_xtal_freq_update:
.LFB43:
	.loc 1 749 0
.LVL161:
	entry	sp, 32
.LCFI25:
	.loc 1 750 0
	l32r	a8, .LC75
	.loc 1 751 0
	l32r	a10, .LC76
	.loc 1 750 0
	memw
	l32i.n	a9, a8, 0
.LVL162:
	.loc 1 751 0
	and	a9, a9, a10
.LVL163:
	bne	a9, a10, .L144
	.loc 1 752 0
	movi.n	a9, 1
.LVL164:
	or	a2, a2, a9
.LVL165:
.L144:
.LBB72:
.LBB73:
	.loc 2 36 0
	extui	a9, a2, 0, 16
	slli	a2, a2, 16
.LVL166:
	or	a2, a9, a2
.LBE73:
.LBE72:
	.loc 1 754 0
	memw
	s32i.n	a2, a8, 0
	retw.n
.LFE43:
	.size	rtc_clk_xtal_freq_update, .-rtc_clk_xtal_freq_update
	.section	.text.rtc_clk_apb_freq_update,"ax",@progbits
	.literal_position
	.literal .LC77, 1072988340
	.align	4
	.global	rtc_clk_apb_freq_update
	.type	rtc_clk_apb_freq_update, @function
rtc_clk_apb_freq_update:
.LFB44:
	.loc 1 758 0
.LVL167:
	entry	sp, 32
.LCFI26:
	.loc 1 759 0
	srli	a2, a2, 12
.LVL168:
.LBB74:
.LBB75:
	.loc 2 36 0
	extui	a8, a2, 0, 16
	slli	a2, a2, 16
.LVL169:
	or	a2, a8, a2
.LBE75:
.LBE74:
	.loc 1 759 0
	l32r	a8, .LC77
	memw
	s32i.n	a2, a8, 0
	retw.n
.LFE44:
	.size	rtc_clk_apb_freq_update, .-rtc_clk_apb_freq_update
	.section	.text.rtc_clk_cpu_freq_to_xtal,"ax",@progbits
	.literal_position
	.literal .LC78, 1073111040
	.literal .LC79, 1073111044
	.literal .LC80, 1072988272
	.literal .LC81, -402653185
	.literal .LC82, 1000000
	.literal .LC83, 1072988284
	.literal .LC84, -14337
	.literal .LC85, 4096
	.literal .LC86, 8192
	.align	4
	.global	rtc_clk_cpu_freq_to_xtal
	.type	rtc_clk_cpu_freq_to_xtal, @function
rtc_clk_cpu_freq_to_xtal:
.LFB25:
	.loc 1 390 0
.LVL170:
	entry	sp, 32
.LCFI27:
	.loc 1 391 0
	mov.n	a10, a2
	call8	ets_update_cpu_frequency
.LVL171:
	.loc 1 393 0
	l32r	a10, .LC78
	movi	a9, -0x400
	memw
	l32i.n	a8, a10, 0
	addi.n	a3, a3, -1
.LVL172:
	extui	a3, a3, 0, 10
.LVL173:
	and	a8, a8, a9
	or	a8, a3, a8
	.loc 1 395 0
	l32r	a3, .LC79
	.loc 1 393 0
	memw
	s32i.n	a8, a10, 0
	.loc 1 395 0
	addi.n	a8, a2, -1
	memw
	s32i.n	a8, a3, 0
	.loc 1 397 0
	l32r	a8, .LC80
	l32r	a3, .LC81
	memw
	l32i.n	a9, a8, 0
	.loc 1 398 0
	l32r	a10, .LC82
	.loc 1 397 0
	and	a3, a9, a3
	.loc 1 398 0
	mull	a10, a2, a10
	.loc 1 397 0
	memw
	s32i.n	a3, a8, 0
	.loc 1 398 0
	call8	rtc_clk_apb_freq_update
.LVL174:
	l32r	a8, .LC84
	l32r	a3, .LC83
	.loc 1 400 0
	bgei	a2, 3, .L147
.LVL175:
.LBB78:
.LBB79:
	.loc 1 401 0
	memw
	l32i.n	a2, a3, 0
.LVL176:
	and	a8, a2, a8
	l32r	a2, .LC85
	j	.L149
.LVL177:
.L147:
.LBE79:
.LBE78:
	.loc 1 403 0
	memw
	l32i.n	a2, a3, 0
.LVL178:
	and	a8, a2, a8
	l32r	a2, .LC86
.L149:
	or	a8, a8, a2
	memw
	s32i.n	a8, a3, 0
	retw.n
.LFE25:
	.size	rtc_clk_cpu_freq_to_xtal, .-rtc_clk_cpu_freq_to_xtal
	.section	.text.rtc_clk_cpu_freq_set_xtal,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_set_xtal
	.type	rtc_clk_cpu_freq_set_xtal, @function
rtc_clk_cpu_freq_set_xtal:
.LFB32:
	.loc 1 489 0
	entry	sp, 32
.LCFI28:
	.loc 1 490 0
	call8	rtc_clk_xtal_freq_get
.LVL179:
	.loc 1 492 0
	movi.n	a11, 1
	call8	rtc_clk_cpu_freq_to_xtal
.LVL180:
	.loc 1 493 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL181:
	.loc 1 494 0
	call8	rtc_clk_bbpll_disable
.LVL182:
	retw.n
.LFE32:
	.size	rtc_clk_cpu_freq_set_xtal, .-rtc_clk_cpu_freq_set_xtal
	.section	.text.rtc_clk_cpu_freq_set_config,"ax",@progbits
	.literal_position
	.literal .LC87, 1072988272
	.literal .LC88, 1072988160
	.literal .LC89, -263489
	.literal .LC90, 1072988284
	.literal .LC91, -14337
	.literal .LC92, 8192
	.literal .LC93, 1073111040
	.literal .LC94, -402653185
	.literal .LC95, 268435456
	.literal .LC96, 1072988340
	.literal .LC97, 135989275
	.align	4
	.global	rtc_clk_cpu_freq_set_config
	.type	rtc_clk_cpu_freq_set_config, @function
rtc_clk_cpu_freq_set_config:
.LFB39:
	.loc 1 646 0
.LVL183:
	entry	sp, 32
.LCFI29:
	.loc 1 647 0
	call8	rtc_clk_xtal_freq_get
.LVL184:
	.loc 1 648 0
	l32r	a3, .LC87
	memw
	l32i.n	a3, a3, 0
	extui	a3, a3, 27, 2
.LVL185:
	.loc 1 649 0
	beqz.n	a3, .L153
	.loc 1 650 0
	movi.n	a11, 1
	call8	rtc_clk_cpu_freq_to_xtal
.LVL186:
	.loc 1 651 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL187:
	.loc 1 653 0
	bnei	a3, 1, .L153
	.loc 1 654 0
	call8	rtc_clk_bbpll_disable
.LVL188:
.L153:
	.loc 1 656 0
	l32i.n	a3, a2, 0
.LVL189:
	bnez.n	a3, .L155
	.loc 1 657 0
	l32i.n	a11, a2, 8
	bltui	a11, 2, .L151
	.loc 1 658 0
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_xtal
.LVL190:
	retw.n
.L155:
	.loc 1 660 0
	bnei	a3, 1, .L157
.LVL191:
.LBB88:
.LBB89:
.LBB90:
.LBB91:
	.loc 1 433 0
	l32r	a9, .LC88
	l32r	a8, .LC89
	memw
	l32i.n	a10, a9, 0
	.loc 1 438 0
	movi.n	a13, 0x18
	.loc 1 433 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 438 0
	movi.n	a12, 0
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL192:
	.loc 1 439 0
	mov.n	a12, a3
	movi.n	a13, 0x20
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL193:
	.loc 1 440 0
	movi.n	a12, 4
	mov.n	a11, a12
	movi	a13, 0x9a
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL194:
	.loc 1 441 0
	movi.n	a13, 0
	movi.n	a12, 0xa
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL195:
	.loc 1 442 0
	movi.n	a13, 0
	movi.n	a12, 0xc
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL196:
.LBE91:
.LBE90:
	.loc 1 662 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL197:
	.loc 1 663 0
	call8	rtc_clk_xtal_freq_get
.LVL198:
	l32i.n	a11, a2, 4
	call8	rtc_clk_bbpll_configure
.LVL199:
	.loc 1 664 0
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_pll_mhz
.LVL200:
	retw.n
.LVL201:
.L157:
.LBE89:
.LBE88:
	.loc 1 665 0
	bnei	a3, 2, .L151
.LBB92:
.LBB93:
	.loc 1 409 0
	movi.n	a10, 8
	call8	ets_update_cpu_frequency
.LVL202:
	.loc 1 410 0
	l32r	a8, .LC90
	l32r	a2, .LC91
.LVL203:
	memw
	l32i.n	a3, a8, 0
	and	a3, a3, a2
	l32r	a2, .LC92
	or	a2, a3, a2
	.loc 1 411 0
	l32r	a3, .LC93
	.loc 1 410 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 411 0
	memw
	l32i.n	a8, a3, 0
	movi	a2, -0x400
	and	a2, a8, a2
	.loc 1 412 0
	l32r	a8, .LC87
	.loc 1 411 0
	memw
	s32i.n	a2, a3, 0
	.loc 1 412 0
	memw
	l32i.n	a3, a8, 0
	l32r	a2, .LC94
	and	a3, a3, a2
	l32r	a2, .LC95
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.LVL204:
.LBB94:
.LBB95:
	.loc 1 759 0
	l32r	a3, .LC97
	l32r	a2, .LC96
	memw
	s32i.n	a3, a2, 0
.LVL205:
.L151:
	retw.n
.LBE95:
.LBE94:
.LBE93:
.LBE92:
.LFE39:
	.size	rtc_clk_cpu_freq_set_config, .-rtc_clk_cpu_freq_set_config
	.section	.text.rtc_clk_cpu_freq_set,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_set
	.type	rtc_clk_cpu_freq_set, @function
rtc_clk_cpu_freq_set:
.LFB30:
	.loc 1 475 0
.LVL206:
	entry	sp, 48
.LCFI30:
	.loc 1 477 0
	mov.n	a10, a2
	mov.n	a11, sp
	call8	rtc_clk_cpu_freq_to_config
.LVL207:
	.loc 1 478 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_set_config
.LVL208:
	retw.n
.LFE30:
	.size	rtc_clk_cpu_freq_set, .-rtc_clk_cpu_freq_set
	.section	.text.rtc_clk_cpu_freq_set_config_fast,"ax",@progbits
	.literal_position
	.literal .LC98, s_cur_pll_freq
	.align	4
	.global	rtc_clk_cpu_freq_set_config_fast
	.type	rtc_clk_cpu_freq_set_config_fast, @function
rtc_clk_cpu_freq_set_config_fast:
.LFB41:
	.loc 1 726 0
.LVL209:
	entry	sp, 32
.LCFI31:
	.loc 1 727 0
	l32i.n	a8, a2, 0
	.loc 1 726 0
	mov.n	a10, a2
	.loc 1 727 0
	bnez.n	a8, .L160
.LVL210:
.LBB98:
.LBB99:
	.loc 1 728 0
	l32i.n	a11, a2, 8
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_xtal
.LVL211:
	retw.n
.LVL212:
.L160:
.LBE99:
.LBE98:
	.loc 1 729 0
	bnei	a8, 1, .L162
	.loc 1 729 0 is_stmt 0 discriminator 1
	l32r	a8, .LC98
	l32i.n	a9, a2, 4
	l32i.n	a8, a8, 0
	bne	a9, a8, .L162
	.loc 1 731 0 is_stmt 1
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_pll_mhz
.LVL213:
	retw.n
.L162:
	.loc 1 734 0
	call8	rtc_clk_cpu_freq_set_config
.LVL214:
	retw.n
.LFE41:
	.size	rtc_clk_cpu_freq_set_config_fast, .-rtc_clk_cpu_freq_set_config_fast
	.section	.text.rtc_clk_cpu_freq_set_fast,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_set_fast
	.type	rtc_clk_cpu_freq_set_fast, @function
rtc_clk_cpu_freq_set_fast:
.LFB31:
	.loc 1 482 0
.LVL215:
	entry	sp, 48
.LCFI32:
	.loc 1 484 0
	mov.n	a10, a2
	mov.n	a11, sp
	call8	rtc_clk_cpu_freq_to_config
.LVL216:
	.loc 1 485 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_set_config_fast
.LVL217:
	retw.n
.LFE31:
	.size	rtc_clk_cpu_freq_set_fast, .-rtc_clk_cpu_freq_set_fast
	.section	.text.rtc_clk_apb_freq_get,"ax",@progbits
	.literal_position
	.literal .LC99, 1072988340
	.literal .LC100, 500000
	.literal .LC101, 1125899907
	.literal .LC102, 1000000
	.align	4
	.global	rtc_clk_apb_freq_get
	.type	rtc_clk_apb_freq_get, @function
rtc_clk_apb_freq_get:
.LFB45:
	.loc 1 763 0
	entry	sp, 32
.LCFI33:
	.loc 1 764 0
	l32r	a2, .LC99
	.loc 1 768 0
	l32r	a9, .LC101
	.loc 1 764 0
	memw
	l32i.n	a8, a2, 0
.LVL218:
	.loc 1 766 0
	l32r	a2, .LC100
	.loc 1 764 0
	extui	a8, a8, 0, 16
.LVL219:
	slli	a8, a8, 12
.LVL220:
	.loc 1 766 0
	add.n	a8, a8, a2
.LVL221:
	.loc 1 768 0
	muluh	a8, a8, a9
.LVL222:
	.loc 1 769 0
	l32r	a2, .LC102
	.loc 1 768 0
	extui	a8, a8, 18, 14
	.loc 1 769 0
	mull	a2, a8, a2
	retw.n
.LFE45:
	.size	rtc_clk_apb_freq_get, .-rtc_clk_apb_freq_get
	.section	.bss.s_cur_pll_freq,"aw",@nobits
	.align	4
	.type	s_cur_pll_freq, @object
	.size	s_cur_pll_freq, 4
s_cur_pll_freq:
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI2-.LFB53
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI6-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI7-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI8-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI10-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI11-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI12-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI13-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI14-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI15-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI16-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI17-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI18-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI19-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI20-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI21-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI22-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI23-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI24-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI25-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI26-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI27-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI28-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI29-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI30-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI31-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI32-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI33-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/rtc.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/gpio.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/i2c_rtc_clk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15d4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0xc
	.4byte	.LASF164
	.4byte	.LASF165
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x65
	.4byte	0x108
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
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF24
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF25
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF26
	.2byte	0x400
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x83
	.4byte	0x139
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x3c
	.4byte	0x165
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x41
	.4byte	0x140
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x46
	.4byte	0x19b
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4c
	.4byte	0x170
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x51
	.4byte	0x1cb
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x7
	.byte	0x56
	.4byte	0x1a6
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.byte	0x5b
	.4byte	0x20f
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x5c
	.4byte	0x1cb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x5d
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xc
	.string	"div"
	.byte	0x7
	.byte	0x5e
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x5f
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x60
	.4byte	0x1d6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x65
	.4byte	0x239
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0x69
	.4byte	0x21a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x6e
	.4byte	0x25d
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x7
	.byte	0x71
	.4byte	0x244
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x1f
	.4byte	0x299
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1a0
	.byte	0x1
	.4byte	0x2b3
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x100
	.4byte	0x239
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x2
	.byte	0x1f
	.4byte	0x7e
	.byte	0x3
	.4byte	0x2dc
	.uleb128 0x11
	.string	"val"
	.byte	0x2
	.byte	0x1f
	.4byte	0x7e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x20d
	.4byte	0x139
	.byte	0x1
	.4byte	0x306
	.uleb128 0x13
	.string	"mhz"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x53
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x20d
	.4byte	0x306
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19b
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x224
	.byte	0x1
	.4byte	0x362
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x224
	.4byte	0x19b
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x224
	.4byte	0x362
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x226
	.4byte	0x7e
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x227
	.4byte	0x1cb
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x228
	.4byte	0x7e
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x229
	.4byte	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20f
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x3
	.byte	0x4a
	.4byte	0x7e
	.byte	0x3
	.4byte	0x384
	.uleb128 0x11
	.string	"reg"
	.byte	0x3
	.byte	0x4a
	.4byte	0x7e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x2
	.byte	0x23
	.4byte	0x7e
	.byte	0x3
	.4byte	0x3a0
	.uleb128 0x11
	.string	"val"
	.byte	0x2
	.byte	0x23
	.4byte	0x7e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x185
	.byte	0x1
	.4byte	0x3c6
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x185
	.4byte	0x53
	.uleb128 0x13
	.string	"div"
	.byte	0x1
	.2byte	0x185
	.4byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x2f5
	.byte	0x1
	.4byte	0x3e0
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x7e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1c2
	.byte	0x1
	.4byte	0x412
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x53
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x53
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x285
	.byte	0x1
	.4byte	0x444
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x285
	.4byte	0x444
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x287
	.4byte	0x165
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x288
	.4byte	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x44a
	.uleb128 0x6
	.4byte	0x20f
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x2d5
	.byte	0x1
	.4byte	0x469
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x444
	.byte	0
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	0x497
	.uleb128 0x11
	.string	"dac"
	.byte	0x1
	.byte	0x70
	.4byte	0x53
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x1
	.byte	0x70
	.4byte	0x53
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x1
	.byte	0x70
	.4byte	0x53
	.byte	0
	.uleb128 0x19
	.4byte	0x299
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c3
	.uleb128 0x1a
	.4byte	0x2a6
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x1c
	.4byte	0x2a6
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x3e0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57d
	.uleb128 0x1d
	.4byte	0x3ed
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	0x3f9
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	0x405
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x54c
	.uleb128 0x1f
	.4byte	0x3ed
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x1c
	.4byte	0x3f9
	.uleb128 0x1c
	.4byte	0x405
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0x155b
	.uleb128 0x21
	.4byte	.LVL6
	.4byte	0x1566
	.4byte	0x541
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x1571
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x3c6
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x56a
	.uleb128 0x24
	.4byte	0x3d3
	.4byte	0x4c4b400
	.byte	0
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x157c
	.uleb128 0x20
	.4byte	.LVL14
	.4byte	0x1588
	.byte	0
	.uleb128 0x19
	.4byte	0x469
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a9
	.uleb128 0x1f
	.4byte	0x475
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	0x48b
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	0x480
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.4byte	.LASF92
	.byte	0x1
	.byte	0x7c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e0
	.uleb128 0x27
	.4byte	.LASF94
	.byte	0x1
	.byte	0x7c
	.4byte	0x139
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0x57d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF142
	.byte	0x1
	.byte	0x85
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60a
	.uleb128 0x28
	.4byte	.LVL21
	.4byte	0x57d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF93
	.byte	0x1
	.byte	0x8e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x784
	.uleb128 0x2a
	.4byte	.LASF95
	.byte	0x1
	.byte	0x8e
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0x75c
	.uleb128 0x2b
	.4byte	.LASF96
	.byte	0x1
	.byte	0x91
	.4byte	0x784
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x92
	.4byte	0x784
	.4byte	.LLST8
	.uleb128 0x2b
	.4byte	.LASF98
	.byte	0x1
	.byte	0x93
	.4byte	0x784
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	.LASF99
	.byte	0x1
	.byte	0x94
	.4byte	0x784
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	.LASF100
	.byte	0x1
	.byte	0x9a
	.4byte	0x784
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x1594
	.4byte	0x69a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x1594
	.4byte	0x6ae
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x21
	.4byte	.LVL26
	.4byte	0x159f
	.4byte	0x6d0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x159f
	.4byte	0x6f2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0x15aa
	.4byte	0x705
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL29
	.4byte	0x159f
	.4byte	0x727
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0x15aa
	.4byte	0x73a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x28
	.4byte	.LVL32
	.4byte	0x159f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL34
	.4byte	0x15aa
	.4byte	0x76f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x28
	.4byte	.LVL35
	.4byte	0x57d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.byte	0xad
	.4byte	0x139
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb2
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7de
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.byte	0xb2
	.4byte	0x139
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF103
	.byte	0x1
	.byte	0xb2
	.4byte	0x139
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LVL37
	.4byte	0x15aa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF105
	.byte	0x1
	.byte	0xc4
	.4byte	0x139
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF106
	.byte	0x1
	.byte	0xc9
	.4byte	0x139
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.byte	0xce
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa39
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xce
	.4byte	0x139
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.LASF108
	.byte	0x1
	.byte	0xce
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF109
	.byte	0x1
	.byte	0xce
	.4byte	0x7e
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0x1
	.byte	0xce
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.byte	0xce
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x2b
	.4byte	.LASF112
	.byte	0x1
	.byte	0xdb
	.4byte	0x73
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	.LASF113
	.byte	0x1
	.byte	0xdc
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	.LVL47
	.4byte	0x15b6
	.4byte	0x8bc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL48
	.4byte	0x15b6
	.4byte	0x8ed
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL49
	.4byte	0x15b6
	.4byte	0x91e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL50
	.4byte	0x15c1
	.4byte	0x941
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.4byte	.LVL51
	.4byte	0x15c1
	.4byte	0x965
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL52
	.4byte	0x15b6
	.4byte	0x996
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL53
	.4byte	0x15c1
	.4byte	0x9b9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL54
	.4byte	0x15c1
	.4byte	0x9dd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL55
	.4byte	0x15c1
	.4byte	0xa00
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL56
	.4byte	0x15aa
	.4byte	0xa13
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL57
	.4byte	0x15cc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF114
	.byte	0x1
	.byte	0xf6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6f
	.uleb128 0x2a
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf6
	.4byte	0x239
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LVL61
	.4byte	0x15aa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x2b3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x105
	.4byte	0x7e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa9
	.uleb128 0x2f
	.4byte	0x2b3
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x107
	.byte	0
	.uleb128 0x30
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x10f
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadf
	.uleb128 0x31
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x10f
	.4byte	0x25d
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LVL64
	.4byte	0x15aa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x115
	.4byte	0x25d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x11a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd6
	.uleb128 0x31
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x11a
	.4byte	0x165
	.4byte	.LLST19
	.uleb128 0x33
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x11a
	.4byte	0x53
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x11c
	.4byte	0x73
	.4byte	.LLST20
	.uleb128 0x34
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x11d
	.4byte	0x73
	.4byte	.LLST21
	.uleb128 0x34
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x11e
	.4byte	0x73
	.4byte	.LLST22
	.uleb128 0x34
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x11f
	.4byte	0x73
	.4byte	.LLST23
	.uleb128 0x34
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x120
	.4byte	0x73
	.4byte	.LLST24
	.uleb128 0x35
	.string	"bw"
	.byte	0x1
	.2byte	0x121
	.4byte	0x73
	.4byte	.LLST25
	.uleb128 0x34
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x176
	.4byte	0x73
	.4byte	.LLST26
	.uleb128 0x36
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x177
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x178
	.4byte	0x73
	.4byte	.LLST27
	.uleb128 0x34
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x17c
	.4byte	0x7e
	.4byte	.LLST28
	.uleb128 0x37
	.4byte	0x2b3
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x17c
	.uleb128 0x21
	.4byte	.LVL74
	.4byte	0x15c1
	.4byte	0xbfa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x21
	.4byte	.LVL76
	.4byte	0x15aa
	.4byte	0xc0d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.4byte	.LVL86
	.4byte	0x15c1
	.4byte	0xc31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xc3
	.byte	0
	.uleb128 0x21
	.4byte	.LVL88
	.4byte	0x15c1
	.4byte	0xc4f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.4byte	.LVL92
	.4byte	0x15c1
	.4byte	0xc6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x21
	.4byte	.LVL93
	.4byte	0x15c1
	.4byte	0xc91
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL94
	.4byte	0x15c1
	.4byte	0xcba
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x28
	.4byte	.LVL98
	.4byte	0x15aa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x8
	.byte	0x50
	.byte	0x8
	.byte	0xa0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x2
	.byte	0x19
	.4byte	0x139
	.byte	0x3
	.4byte	0xcf2
	.uleb128 0x11
	.string	"val"
	.byte	0x2
	.byte	0x19
	.4byte	0x7e
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x165
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd51
	.uleb128 0x36
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x23
	.4byte	0xcd6
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x2e6
	.4byte	0xd36
	.uleb128 0x1d
	.4byte	0xce6
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x38
	.4byte	0x2c0
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.2byte	0x2e9
	.uleb128 0x1f
	.4byte	0x2d0
	.4byte	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x2dc
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9a
	.uleb128 0x1f
	.4byte	0x2ed
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	0x2f9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.uleb128 0x1f
	.4byte	0x2f9
	.4byte	.LLST31
	.uleb128 0x1f
	.4byte	0x2ed
	.4byte	.LLST32
	.uleb128 0x20
	.4byte	.LVL106
	.4byte	0xcf2
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x21f
	.4byte	0x139
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde9
	.uleb128 0x3a
	.string	"mhz"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x53
	.4byte	.LLST33
	.uleb128 0x33
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x21f
	.4byte	0x306
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LVL109
	.4byte	0x2dc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x7e
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe42
	.uleb128 0x31
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x19b
	.4byte	.LLST34
	.uleb128 0x20
	.4byte	.LVL112
	.4byte	0xcf2
	.uleb128 0x20
	.4byte	.LVL115
	.4byte	0x155b
	.uleb128 0x28
	.4byte	.LVL116
	.4byte	0x1566
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x30c
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf03
	.uleb128 0x1f
	.4byte	0x319
	.4byte	.LLST35
	.uleb128 0x1d
	.4byte	0x325
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	0x331
	.4byte	.LLST36
	.uleb128 0x1a
	.4byte	0x33d
	.4byte	.LLST37
	.uleb128 0x1a
	.4byte	0x349
	.4byte	.LLST38
	.uleb128 0x1a
	.4byte	0x355
	.4byte	.LLST39
	.uleb128 0x1e
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.4byte	0xef9
	.uleb128 0x1f
	.4byte	0x319
	.4byte	.LLST40
	.uleb128 0x1f
	.4byte	0x325
	.4byte	.LLST41
	.uleb128 0x1b
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x1c
	.4byte	0x331
	.uleb128 0x1c
	.4byte	0x33d
	.uleb128 0x1c
	.4byte	0x349
	.uleb128 0x1c
	.4byte	0x355
	.uleb128 0x20
	.4byte	.LVL125
	.4byte	0x155b
	.uleb128 0x21
	.4byte	.LVL126
	.4byte	0x1566
	.4byte	0xeee
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x20
	.4byte	.LVL127
	.4byte	0x1571
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL121
	.4byte	0xcf2
	.byte	0
	.uleb128 0x39
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x257
	.4byte	0x139
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf95
	.uleb128 0x31
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x257
	.4byte	0x7e
	.4byte	.LLST42
	.uleb128 0x33
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x257
	.4byte	0x362
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x259
	.4byte	0x7e
	.4byte	.LLST43
	.uleb128 0x34
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x25a
	.4byte	0x1cb
	.4byte	.LLST44
	.uleb128 0x34
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x25b
	.4byte	0x7e
	.4byte	.LLST45
	.uleb128 0x34
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x25c
	.4byte	0x7e
	.4byte	.LLST46
	.uleb128 0x34
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x25e
	.4byte	0x7e
	.4byte	.LLST47
	.uleb128 0x20
	.4byte	.LVL133
	.4byte	0xcf2
	.byte	0
	.uleb128 0x30
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x29e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1079
	.uleb128 0x33
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x29e
	.4byte	0x362
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x1cb
	.4byte	.LLST48
	.uleb128 0x34
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x7e
	.4byte	.LLST49
	.uleb128 0x35
	.string	"div"
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x7e
	.4byte	.LLST50
	.uleb128 0x34
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x7e
	.4byte	.LLST51
	.uleb128 0x34
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x7e
	.4byte	.LLST52
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x103d
	.uleb128 0x34
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x2af
	.4byte	0x7e
	.4byte	.LLST53
	.uleb128 0x38
	.4byte	0x368
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.2byte	0x2af
	.uleb128 0x1f
	.4byte	0x378
	.4byte	.LLST54
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL148
	.4byte	0xcf2
	.uleb128 0x20
	.4byte	.LVL154
	.4byte	0x155b
	.uleb128 0x21
	.4byte	.LVL155
	.4byte	0x1566
	.4byte	0x106f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x20
	.4byte	.LVL156
	.4byte	0x1571
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x19b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d6
	.uleb128 0x36
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LVL159
	.4byte	0xf95
	.4byte	0x10c5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x28
	.4byte	.LVL160
	.4byte	0x2dc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x2ec
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1127
	.uleb128 0x31
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x165
	.4byte	.LLST55
	.uleb128 0x35
	.string	"reg"
	.byte	0x1
	.2byte	0x2ee
	.4byte	0x7e
	.4byte	.LLST56
	.uleb128 0x38
	.4byte	0x384
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.2byte	0x2f2
	.uleb128 0x1f
	.4byte	0x394
	.4byte	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x3c6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115e
	.uleb128 0x1f
	.4byte	0x3d3
	.4byte	.LLST58
	.uleb128 0x38
	.4byte	0x384
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.2byte	0x2f7
	.uleb128 0x1f
	.4byte	0x394
	.4byte	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x3a0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ce
	.uleb128 0x1f
	.4byte	0x3ad
	.4byte	.LLST60
	.uleb128 0x1f
	.4byte	0x3b9
	.4byte	.LLST61
	.uleb128 0x1e
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.4byte	0x11a3
	.uleb128 0x1f
	.4byte	0x3ad
	.4byte	.LLST62
	.uleb128 0x1f
	.4byte	0x3b9
	.4byte	.LLST63
	.byte	0
	.uleb128 0x21
	.4byte	.LVL171
	.4byte	0x157c
	.4byte	0x11b7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL174
	.4byte	0x3c6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1e8
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1223
	.uleb128 0x34
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x53
	.4byte	.LLST64
	.uleb128 0x20
	.4byte	.LVL179
	.4byte	0xcf2
	.uleb128 0x21
	.4byte	.LVL180
	.4byte	0x3a0
	.4byte	0x1210
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL181
	.4byte	0x1588
	.uleb128 0x20
	.4byte	.LVL182
	.4byte	0x299
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1af
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x197
	.byte	0x1
	.uleb128 0x19
	.4byte	0x412
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13ef
	.uleb128 0x1f
	.4byte	0x41f
	.4byte	.LLST65
	.uleb128 0x1a
	.4byte	0x42b
	.4byte	.LLST66
	.uleb128 0x1a
	.4byte	0x437
	.4byte	.LLST67
	.uleb128 0x1e
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.4byte	0x1375
	.uleb128 0x1f
	.4byte	0x41f
	.4byte	.LLST68
	.uleb128 0x1b
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.uleb128 0x1c
	.4byte	0x42b
	.uleb128 0x1c
	.4byte	0x437
	.uleb128 0x23
	.4byte	0x1223
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.2byte	0x295
	.4byte	0x134f
	.uleb128 0x21
	.4byte	.LVL192
	.4byte	0x15c1
	.4byte	0x12c3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x21
	.4byte	.LVL193
	.4byte	0x15c1
	.4byte	0x12e8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL194
	.4byte	0x15c1
	.4byte	0x130c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x9a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL195
	.4byte	0x15c1
	.4byte	0x132f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL196
	.4byte	0x15c1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL197
	.4byte	0x1588
	.uleb128 0x20
	.4byte	.LVL198
	.4byte	0xcf2
	.uleb128 0x20
	.4byte	.LVL199
	.4byte	0xaf5
	.uleb128 0x20
	.4byte	.LVL200
	.4byte	0x3e0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x122c
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x1
	.2byte	0x29a
	.4byte	0x13b7
	.uleb128 0x23
	.4byte	0x3c6
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.2byte	0x19d
	.4byte	0x13a7
	.uleb128 0x1f
	.4byte	0x3d3
	.4byte	.LLST69
	.byte	0
	.uleb128 0x28
	.4byte	.LVL202
	.4byte	0x157c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL184
	.4byte	0xcf2
	.uleb128 0x21
	.4byte	.LVL186
	.4byte	0x3a0
	.4byte	0x13d3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL187
	.4byte	0x1588
	.uleb128 0x20
	.4byte	.LVL188
	.4byte	0x299
	.uleb128 0x20
	.4byte	.LVL190
	.4byte	0x3a0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1da
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x144d
	.uleb128 0x33
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1da
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LVL207
	.4byte	0x30c
	.4byte	0x143c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.4byte	.LVL208
	.4byte	0x412
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x44f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149a
	.uleb128 0x1d
	.4byte	0x45c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.4byte	0x1487
	.uleb128 0x1f
	.4byte	0x45c
	.4byte	.LLST70
	.uleb128 0x20
	.4byte	.LVL211
	.4byte	0x3a0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL213
	.4byte	0x3e0
	.uleb128 0x20
	.4byte	.LVL214
	.4byte	0x412
	.byte	0
	.uleb128 0x30
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1e1
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f8
	.uleb128 0x33
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LVL216
	.4byte	0x30c
	.4byte	0x14e7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.4byte	.LVL217
	.4byte	0x44f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x7e
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1533
	.uleb128 0x34
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x2fc
	.4byte	0x7e
	.4byte	.LLST71
	.uleb128 0x34
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x7e
	.4byte	.LLST72
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF151
	.byte	0x1
	.byte	0x6c
	.4byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cur_pll_freq
	.uleb128 0x3f
	.string	"TAG"
	.byte	0x1
	.byte	0x6e
	.4byte	0x1556
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x40
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x8
	.byte	0x57
	.uleb128 0x40
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x9
	.byte	0xde
	.uleb128 0x40
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0x47
	.uleb128 0x41
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x189
	.uleb128 0x41
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x7
	.2byte	0x215
	.uleb128 0x40
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xb
	.byte	0xf6
	.uleb128 0x40
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xb
	.byte	0x70
	.uleb128 0x41
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x9
	.2byte	0x17f
	.uleb128 0x40
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xc
	.byte	0x21
	.uleb128 0x40
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xc
	.byte	0x20
	.uleb128 0x40
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xc
	.byte	0x1f
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x16
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
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.4byte	.LVL1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x47
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0xc
	.4byte	0x3ff0003c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x8
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0xc
	.byte	0x78
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL61-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x9
	.byte	0x90
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL89
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x78
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0xe
	.byte	0x8
	.byte	0x50
	.byte	0x8
	.byte	0xa0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98-1
	.4byte	.LVL99
	.2byte	0xe
	.byte	0x8
	.byte	0x50
	.byte	0x8
	.byte	0xa0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x11
	.sleb128 -65538
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL132
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL134
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x11
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL133
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL147
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL158
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x4b
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL161
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xc
	.4byte	0x10001
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LFE44
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL170
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL179
	.4byte	.LVL180-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL183
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL184
	.4byte	.LVL186-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL185
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL191
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x6
	.byte	0xc
	.4byte	0x81b320
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x124
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
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
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF149:
	.string	"freq_hz"
.LASF17:
	.string	"EXT_EVENT1_TRIG"
.LASF56:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF138:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF130:
	.string	"delay_pll_en"
.LASF54:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF89:
	.string	"rtc_clk_cpu_freq_to_pll_mhz"
.LASF30:
	.string	"SDIO_IDLE_INT"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"rtc_cpu_freq_src_t"
.LASF48:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF152:
	.string	"esp_log_timestamp"
.LASF79:
	.string	"rtc_clk_apb_freq_update"
.LASF23:
	.string	"UART1_TRIG"
.LASF80:
	.string	"apb_freq"
.LASF39:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF160:
	.string	"rom_i2c_writeReg_Mask"
.LASF29:
	.string	"REJECT_INT"
.LASF68:
	.string	"rtc_clk_cpu_freq_from_mhz_internal"
.LASF131:
	.string	"clk_val_is_valid"
.LASF120:
	.string	"rtc_clk_bbpll_configure"
.LASF150:
	.string	"remainder"
.LASF162:
	.string	"rom_i2c_readReg_Mask"
.LASF161:
	.string	"rom_i2c_writeReg"
.LASF135:
	.string	"rtc_clk_cpu_freq_value"
.LASF10:
	.string	"uint32_t"
.LASF27:
	.string	"NO_INT"
.LASF167:
	.string	"rtc_clk_slow_freq_get"
.LASF113:
	.string	"is_rev0"
.LASF40:
	.string	"RTC_CPU_FREQ_80M"
.LASF142:
	.string	"rtc_clk_32k_enable_external"
.LASF67:
	.string	"reg_val_to_clk_val"
.LASF91:
	.string	"dres"
.LASF153:
	.string	"ets_printf"
.LASF45:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF8:
	.string	"long long unsigned int"
.LASF155:
	.string	"ets_update_cpu_frequency"
.LASF34:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF25:
	.string	"SAR_TRIG"
.LASF96:
	.string	"pin_32"
.LASF97:
	.string	"pin_33"
.LASF166:
	.string	"rtc_clk_bbpll_disable"
.LASF112:
	.string	"sdm_stop_val_2"
.LASF136:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF132:
	.string	"rtc_clk_xtal_freq_get"
.LASF92:
	.string	"rtc_clk_32k_enable"
.LASF63:
	.string	"ESP_LOG_WARN"
.LASF139:
	.string	"cpuperiod_sel"
.LASF94:
	.string	"enable"
.LASF116:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF124:
	.string	"div10_8"
.LASF154:
	.string	"abort"
.LASF15:
	.string	"NO_SLEEP"
.LASF126:
	.string	"dcur"
.LASF71:
	.string	"out_config"
.LASF37:
	.string	"RTC_XTAL_FREQ_24M"
.LASF33:
	.string	"_Bool"
.LASF146:
	.string	"rtc_clk_cpu_freq_set"
.LASF104:
	.string	"rtc_clk_32k_enabled"
.LASF16:
	.string	"EXT_EVENT0_TRIG"
.LASF60:
	.string	"rtc_fast_freq_t"
.LASF61:
	.string	"ESP_LOG_NONE"
.LASF78:
	.string	"freq"
.LASF77:
	.string	"rtc_clk_cpu_freq_to_xtal"
.LASF76:
	.string	"rtc_clk_cpu_freq_to_config"
.LASF127:
	.string	"i2c_bbpll_lref"
.LASF70:
	.string	"cpu_freq"
.LASF110:
	.string	"sdm2"
.LASF134:
	.string	"rtc_clk_cpu_freq_from_mhz"
.LASF148:
	.string	"rtc_clk_apb_freq_get"
.LASF24:
	.string	"TOUCH_TRIG"
.LASF32:
	.string	"RTC_TIME_VALID_INT"
.LASF14:
	.string	"char"
.LASF58:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF75:
	.string	"clk_val_to_reg_val"
.LASF42:
	.string	"RTC_CPU_FREQ_240M"
.LASF44:
	.string	"rtc_cpu_freq_t"
.LASF51:
	.string	"source_freq_mhz"
.LASF47:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF144:
	.string	"rtc_clk_bbpll_enable"
.LASF158:
	.string	"gpio_output_set_high"
.LASF122:
	.string	"div_ref"
.LASF9:
	.string	"uint8_t"
.LASF36:
	.string	"RTC_XTAL_FREQ_26M"
.LASF121:
	.string	"pll_freq"
.LASF93:
	.string	"rtc_clk_32k_bootstrap"
.LASF106:
	.string	"rtc_clk_8md256_enabled"
.LASF105:
	.string	"rtc_clk_8m_enabled"
.LASF164:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_clk.c"
.LASF22:
	.string	"UART0_TRIG"
.LASF7:
	.string	"long long int"
.LASF90:
	.string	"rtc_clk_32k_enable_common"
.LASF156:
	.string	"rtc_clk_wait_for_slow_cycle"
.LASF137:
	.string	"real_freq_mhz"
.LASF159:
	.string	"ets_delay_us"
.LASF53:
	.string	"rtc_cpu_freq_config_t"
.LASF107:
	.string	"rtc_clk_apll_enable"
.LASF74:
	.string	"DPORT_REG_READ"
.LASF118:
	.string	"fast_freq"
.LASF87:
	.string	"soc_clk_sel"
.LASF119:
	.string	"rtc_clk_fast_freq_get"
.LASF157:
	.string	"gpio_pad_select_gpio"
.LASF64:
	.string	"ESP_LOG_INFO"
.LASF19:
	.string	"TIMER_EXPIRE"
.LASF72:
	.string	"apll_fpd"
.LASF140:
	.string	"rtc_clk_cpu_freq_get"
.LASF165:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/soc"
.LASF102:
	.string	"clk_8m_en"
.LASF59:
	.string	"RTC_FAST_FREQ_8M"
.LASF103:
	.string	"d256_en"
.LASF41:
	.string	"RTC_CPU_FREQ_160M"
.LASF101:
	.string	"rtc_clk_8m_enable"
.LASF123:
	.string	"div7_0"
.LASF85:
	.string	"config"
.LASF38:
	.string	"rtc_xtal_freq_t"
.LASF133:
	.string	"xtal_freq_reg"
.LASF108:
	.string	"sdm0"
.LASF109:
	.string	"sdm1"
.LASF3:
	.string	"short int"
.LASF73:
	.string	"divider"
.LASF11:
	.string	"long int"
.LASF57:
	.string	"rtc_slow_freq_t"
.LASF95:
	.string	"cycle"
.LASF31:
	.string	"RTC_WDT_INT"
.LASF143:
	.string	"rtc_clk_cpu_freq_set_xtal"
.LASF98:
	.string	"mask_32"
.LASF99:
	.string	"mask_33"
.LASF111:
	.string	"o_div"
.LASF5:
	.string	"__uint8_t"
.LASF50:
	.string	"source"
.LASF128:
	.string	"i2c_bbpll_div_7_0"
.LASF43:
	.string	"RTC_CPU_FREQ_2M"
.LASF82:
	.string	"dbias"
.LASF28:
	.string	"WAKEUP_INT"
.LASF86:
	.string	"xtal_freq"
.LASF18:
	.string	"GPIO_TRIG"
.LASF12:
	.string	"sizetype"
.LASF13:
	.string	"long unsigned int"
.LASF147:
	.string	"rtc_clk_cpu_freq_set_fast"
.LASF66:
	.string	"ESP_LOG_VERBOSE"
.LASF83:
	.string	"per_conf"
.LASF145:
	.string	"rtc_clk_cpu_freq_to_8m"
.LASF81:
	.string	"cpu_freq_mhz"
.LASF69:
	.string	"out_val"
.LASF125:
	.string	"lref"
.LASF20:
	.string	"SDIO_TRIG"
.LASF163:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF115:
	.string	"slow_freq"
.LASF52:
	.string	"freq_mhz"
.LASF88:
	.string	"rtc_clk_cpu_freq_set_config_fast"
.LASF35:
	.string	"RTC_XTAL_FREQ_40M"
.LASF84:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF129:
	.string	"i2c_bbpll_dcur"
.LASF65:
	.string	"ESP_LOG_DEBUG"
.LASF46:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF100:
	.string	"delay_us"
.LASF1:
	.string	"signed char"
.LASF141:
	.string	"rtc_clk_xtal_freq_update"
.LASF4:
	.string	"short unsigned int"
.LASF26:
	.string	"BT_TRIG"
.LASF117:
	.string	"rtc_clk_fast_freq_set"
.LASF55:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF21:
	.string	"MAC_TRIG"
.LASF151:
	.string	"s_cur_pll_freq"
.LASF114:
	.string	"rtc_clk_slow_freq_set"
.LASF62:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
