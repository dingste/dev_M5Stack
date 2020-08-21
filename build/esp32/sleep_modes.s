	.file	"sleep_modes.c"
	.text
.Ltext0:
	.section	.text.get_power_down_flags,"ax",@progbits
	.literal_position
	.literal .LC4, s_config
	.align	4
	.type	get_power_down_flags, @function
get_power_down_flags:
.LFB59:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/sleep_modes.c"
	.loc 1 634 0
	entry	sp, 32
.LCFI0:
	.loc 1 645 0
	l32r	a8, .LC4
	l32i.n	a2, a8, 4
	bnei	a2, 2, .L2
	.loc 1 648 0
	movi.n	a2, 1
	s32i.n	a2, a8, 4
.L2:
	.loc 1 656 0
	l32i.n	a2, a8, 8
	bnei	a2, 2, .L3
	.loc 1 657 0
	movi.n	a2, 1
	s32i.n	a2, a8, 8
.L3:
	.loc 1 662 0
	l32i.n	a2, a8, 0
	bnei	a2, 2, .L4
	.loc 1 663 0
	l32i.n	a9, a8, 24
	movi.n	a2, 5
	extui	a9, a9, 0, 11
	and	a2, a9, a2
	beqz.n	a2, .L5
	.loc 1 664 0
	movi.n	a2, 1
	j	.L24
.L5:
	.loc 1 665 0
	movi	a10, 0x300
	bnone	a9, a10, .L4
.L24:
	.loc 1 668 0
	s32i.n	a2, a8, 0
.L4:
	.loc 1 672 0
	l32i.n	a2, a8, 12
	bnei	a2, 2, .L6
	.loc 1 673 0
	movi.n	a2, 0
	s32i.n	a2, a8, 12
.L6:
.LVL0:
	.loc 1 684 0
	l32i.n	a2, a8, 8
	.loc 1 685 0
	movi.n	a10, 0
	addi.n	a9, a2, -1
	movi.n	a2, 8
	moveqz	a2, a10, a9
.LVL1:
	.loc 1 687 0
	l32i.n	a9, a8, 4
	beqi	a9, 1, .L8
	.loc 1 688 0
	movi.n	a9, 4
	or	a2, a2, a9
.LVL2:
.L8:
	.loc 1 690 0
	l32i.n	a9, a8, 0
	beqi	a9, 1, .L9
	.loc 1 691 0
	movi.n	a9, 2
	or	a2, a2, a9
.LVL3:
.L9:
	.loc 1 693 0
	l32i.n	a8, a8, 12
	beqi	a8, 1, .L10
	.loc 1 694 0
	movi.n	a8, 0x40
	or	a2, a2, a8
.LVL4:
.L10:
	.loc 1 697 0
	retw.n
.LFE59:
	.size	get_power_down_flags, .-get_power_down_flags
	.section	.rtc.text,"ax",@progbits
	.literal_position
	.literal .LC5, 1072693316
	.literal .LC6, 8192
	.literal .LC7, -8193
	.literal .LC8, 1125899907
	.align	4
	.global	esp_default_wake_deep_sleep
	.type	esp_default_wake_deep_sleep, @function
esp_default_wake_deep_sleep:
.LFB35:
	.loc 1 127 0
	entry	sp, 32
.LCFI1:
	.loc 1 129 0
	l32r	a8, .LC5
	l32r	a9, .LC6
	memw
	l32i.n	a10, a8, 0
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 131 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC7
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 136 0
	call8	ets_get_detected_xtal_freq
.LVL5:
	l32r	a8, .LC8
	muluh	a10, a10, a8
	extui	a10, a10, 18, 14
	call8	ets_update_cpu_frequency_rom
.LVL6:
	.loc 1 139 0
	movi	a10, 0x7d0
	call8	ets_delay_us
.LVL7:
	retw.n
.LFE35:
	.size	esp_default_wake_deep_sleep, .-esp_default_wake_deep_sleep
	.weak	esp_wake_deep_sleep
	.set	esp_wake_deep_sleep,esp_default_wake_deep_sleep
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC11, 57344
	.literal .LC12, 16372
	.literal .LC13, 268369920
	.literal .LC14, s_config
	.literal .LC15, 1072989372
	.literal .LC16, 134217727
	.literal .LC17, 1072988256
	.literal .LC18, -1073741825
	.literal .LC19, rtc_gpio_desc
	.literal .LC20, 262143
	.literal .LC21, 1072988360
	.literal .LC22, 1072988364
	.literal .LC23, 262144
	.literal .LC24, -262144
	.literal .LC25, 2147483647
	.literal .LC26, 1072988184
	.literal .LC27, 2097152
	.literal .LC29, 4096
	.literal .LC30, -57345
	.literal .LC31, -458753
	.literal .LC32, -3670017
	.literal .LC33, 4194304
	.literal .LC34, -8388609
	.literal .LC35, -16777217
	.align	4
	.type	esp_sleep_start, @function
esp_sleep_start:
.LFB40:
	.loc 1 178 0
.LVL8:
	entry	sp, 64
.LCFI2:
	.loc 1 182 0
	extui	a4, a2, 0, 1
	beqz.n	a4, .L27
	movi.n	a5, 0
.LBB23:
.LBB24:
.LBB25:
.LBB26:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 272 0
	l32r	a7, .LC12
	l32r	a8, .LC11
	.loc 2 274 0
	l32r	a10, .LC13
	.loc 2 272 0
	mov.n	a9, a5
.L29:
.LVL9:
	add.n	a3, a5, a7
	slli	a6, a3, 16
	extui	a3, a5, 0, 8
	addi	a3, a3, -2
	mov.n	a11, a9
	moveqz	a11, a8, a3
	add.n	a3, a6, a11
	addi	a3, a3, 28
.L28:
	memw
	l32i.n	a6, a3, 0
.LVL10:
	.loc 2 274 0
	bany	a6, a10, .L28
.LBE26:
.LBE25:
	.loc 1 153 0
	addi.n	a5, a5, 1
.LVL11:
	bnei	a5, 3, .L29
.LVL12:
.L36:
.LBE24:
.LBE23:
	.loc 1 190 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_get_config
.LVL13:
	.loc 1 191 0
	call8	rtc_clk_cpu_freq_set_xtal
.LVL14:
	.loc 1 194 0
	l32r	a3, .LC14
	l32i.n	a5, a3, 24
	bbci	a5, 0, .L37
	j	.L30
.L27:
	l32r	a7, .LC12
	l32r	a8, .LC11
	mov.n	a6, a4
.LBB27:
.LBB28:
	.loc 1 161 0
	mov.n	a9, a4
	movi.n	a10, 8
.L35:
.LVL15:
	add.n	a3, a6, a7
	slli	a5, a3, 16
	mov.n	a12, a9
	addi	a3, a6, -2
	moveqz	a12, a8, a3
	add.n	a3, a12, a5
	memw
	l32i.n	a5, a3, 52
	.loc 1 162 0
	addi	a3, a3, 28
	.loc 1 161 0
	or	a5, a5, a10
	memw
	s32i.n	a5, a3, 24
.L34:
	.loc 1 162 0
	memw
	l32i.n	a5, a3, 0
	extui	a5, a5, 24, 4
	bnez.n	a5, .L34
	.loc 1 160 0
	addi.n	a6, a6, 1
.LVL16:
	bnei	a6, 3, .L35
	j	.L36
.LVL17:
.L30:
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	.loc 1 478 0
	l32r	a9, .LC15
	.loc 1 476 0
	l32i.n	a8, a3, 28
	.loc 1 478 0
	memw
	l32i.n	a7, a9, 0
	l32r	a6, .LC16
	.loc 1 476 0
	extui	a8, a8, 0, 5
.LVL18:
	.loc 1 478 0
	and	a7, a7, a6
	slli	a6, a8, 27
	or	a6, a7, a6
	.loc 1 480 0
	l32r	a7, .LC17
	.loc 1 478 0
	memw
	s32i.n	a6, a9, 0
	.loc 1 480 0
	memw
	l32i.n	a9, a7, 0
	l32r	a6, .LC18
	extui	a5, a5, 30, 1
	and	a6, a9, a6
	slli	a5, a5, 30
	or	a5, a5, a6
	memw
	s32i.n	a5, a7, 0
.LVL19:
	l32r	a7, .LC19
.LBB31:
	.loc 1 483 0
	movi.n	a5, 0
	mov.n	a6, a7
	movi.n	a9, 0x28
	loop	a9, .L39_LEND
.LVL20:
.L39:
.LBB32:
	.loc 1 485 0
	l32i.n	a10, a7, 48
	bne	a8, a10, .L38
	.loc 1 486 0
	addx2	a7, a5, a5
	addx4	a5, a7, a5
.LVL21:
	addx4	a5, a5, a6
	l32i.n	a6, a5, 0
	l32i.n	a7, a5, 4
	memw
	l32i.n	a8, a6, 0
.LVL22:
	or	a7, a8, a7
	memw
	s32i.n	a7, a6, 0
	.loc 1 487 0
	l32i.n	a7, a5, 8
	movi.n	a8, 3
	memw
	l32i.n	a9, a6, 0
	ssl	a7
	sll	a8, a8
	movi.n	a7, -1
	xor	a7, a7, a8
	and	a7, a7, a9
	memw
	s32i.n	a7, a6, 0
	.loc 1 488 0
	memw
	l32i.n	a7, a6, 0
	l32i.n	a5, a5, 12
	or	a5, a7, a5
	memw
	s32i.n	a5, a6, 0
	j	.L37
.LVL23:
.L38:
.LBE32:
	.loc 1 483 0
	addi.n	a5, a5, 1
.LVL24:
	addi	a7, a7, 52
	.L39_LEND:
.LVL25:
.L37:
.LBE31:
.LBE30:
.LBE29:
	.loc 1 197 0
	l32i.n	a10, a3, 24
	bbci	a10, 1, .L40
.LBB33:
.LBB34:
	.loc 1 520 0
	l32r	a5, .LC20
	srli	a10, a10, 12
	and	a10, a10, a5
.LVL26:
.LBB35:
.LBB36:
	.loc 1 533 0
	l32i.n	a5, a3, 0
	l32r	a8, .LC19
	s32i.n	a5, sp, 16
.LBE36:
	.loc 1 521 0
	movi.n	a14, 0
	movi.n	a5, 0x27
	movi.n	a6, 1
.LBB37:
	.loc 1 529 0
	movi.n	a7, 3
	movi.n	a13, -1
	j	.L41
.LVL27:
.L44:
	.loc 1 522 0
	l32i.n	a11, a8, 48
.LVL28:
	.loc 1 523 0
	bbc	a10, a11, .L42
.LVL29:
	.loc 1 528 0
	l32i.n	a9, a8, 0
	l32i.n	a12, a8, 4
	memw
	l32i.n	a15, a9, 0
	or	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 529 0
	l32i.n	a12, a8, 8
	memw
	l32i.n	a15, a9, 0
	ssl	a12
	sll	a12, a7
	xor	a12, a13, a12
	and	a12, a12, a15
	memw
	s32i.n	a12, a9, 0
	.loc 1 531 0
	memw
	l32i.n	a15, a9, 0
	l32i.n	a12, a8, 12
	or	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 533 0
	l32i.n	a12, sp, 16
	beqi	a12, 1, .L43
	.loc 1 537 0
	l32i.n	a15, a8, 20
	memw
	l32i.n	a12, a9, 0
	xor	a15, a13, a15
	and	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 538 0
	l32i.n	a15, a8, 16
	memw
	l32i.n	a12, a9, 0
	xor	a15, a13, a15
	and	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
	.loc 1 539 0
	l32r	a9, .LC21
	memw
	l32i.n	a12, a9, 0
	l32i.n	a9, a8, 36
	or	a9, a12, a9
	l32r	a12, .LC21
	memw
	s32i.n	a9, a12, 0
.L43:
	.loc 1 542 0
	ssl	a11
	sll	a11, a6
.LVL30:
	xor	a11, a13, a11
	and	a10, a10, a11
.LVL31:
.L42:
.LBE37:
	.loc 1 521 0
	addi.n	a14, a14, 1
.LVL32:
	addi	a8, a8, 52
.LVL33:
.L41:
	blt	a5, a14, .L69
	bnez.n	a10, .L44
.L69:
.LBE35:
	.loc 1 545 0
	l32r	a8, .LC22
	l32r	a5, .LC23
	memw
	l32i.n	a6, a8, 0
	.loc 1 547 0
	l32r	a7, .LC20
	.loc 1 545 0
	or	a5, a6, a5
	memw
	s32i.n	a5, a8, 0
	.loc 1 547 0
	memw
	l32i.n	a6, a8, 0
	l32r	a5, .LC24
	and	a9, a6, a5
	l32i.n	a5, a3, 24
	srli	a6, a5, 12
	and	a6, a6, a7
	or	a6, a9, a6
	.loc 1 549 0
	l32r	a7, .LC17
	.loc 1 547 0
	memw
	s32i.n	a6, a8, 0
	.loc 1 549 0
	memw
	l32i.n	a8, a7, 0
	l32r	a6, .LC25
	extui	a5, a5, 11, 1
	slli	a5, a5, 31
	and	a6, a8, a6
	or	a5, a5, a6
	memw
	s32i.n	a5, a7, 0
.LVL34:
.L40:
.LBE34:
.LBE33:
	.loc 1 201 0
	l32i.n	a5, a3, 24
	bbci	a5, 9, .L47
	.loc 1 202 0
	l32r	a6, .LC26
	l32r	a5, .LC27
	memw
	l32i.n	a7, a6, 0
	or	a5, a7, a5
	memw
	s32i.n	a5, a6, 0
.L47:
	.loc 1 206 0
	extui	a7, a2, 4, 1
	extui	a5, a2, 3, 1
	slli	a6, a5, 3
	slli	a5, a7, 2
	extui	a7, a2, 2, 1
	or	a5, a5, a6
	slli	a7, a7, 4
	extui	a6, a2, 1, 1
	slli	a6, a6, 5
	or	a5, a5, a7
	or	a5, a5, a6
	slli	a4, a4, 8
	or	a4, a5, a4
	l32r	a5, .LC29
	l32r	a6, .LC30
	or	a5, a4, a5
	and	a5, a5, a6
	l32r	a6, .LC31
	l32r	a4, .LC33
	and	a5, a5, a6
	l32r	a6, .LC23
	l32r	a10, .LC35
	or	a5, a5, a6
	l32r	a6, .LC32
	and	a5, a5, a6
	l32r	a6, .LC34
	or	a5, a5, a4
	extui	a4, a2, 5, 1
	slli	a4, a4, 23
	and	a5, a5, a6
	or	a5, a5, a4
	extui	a2, a2, 6, 1
.LVL35:
	movi.n	a4, 1
	xor	a2, a2, a4
	slli	a2, a2, 24
	and	a10, a5, a10
	.loc 1 207 0
	or	a10, a10, a2
	call8	rtc_sleep_init
.LVL36:
	.loc 1 210 0
	l32i.n	a2, a3, 24
	bbci	a2, 3, .L48
	.loc 1 210 0 is_stmt 0 discriminator 1
	l32i.n	a2, a3, 16
	l32i.n	a5, a3, 20
	or	a2, a2, a5
	beqz.n	a2, .L48
.LBB38:
.LBB39:
	.loc 1 425 0 is_stmt 1 discriminator 1
	call8	esp_clk_slowclk_cal_get
.LVL37:
	.loc 1 426 0 discriminator 1
	l32i.n	a2, a3, 32
	l32i.n	a5, a3, 16
	l32i.n	a6, a3, 20
	sub	a2, a5, a2
	bltu	a5, a2, .L50
	.loc 1 426 0 is_stmt 0
	movi.n	a4, 0
.L50:
.LVL38:
	.loc 1 430 0 is_stmt 1
	sub	a11, a6, a4
	mov.n	a5, a2
	bgez	a11, .L51
	movi.n	a5, 0
	mov.n	a11, a5
.L51:
	mov.n	a12, a10
	mov.n	a10, a5
.LVL39:
	call8	rtc_time_us_to_slowclk
.LVL40:
	.loc 1 432 0
	l32i.n	a2, a3, 40
.LVL41:
	l32i.n	a4, a3, 44
	add.n	a2, a10, a2
	movi.n	a5, 1
	bltu	a2, a10, .L53
	movi.n	a5, 0
.L53:
	add.n	a11, a11, a4
.LVL42:
	mov.n	a10, a2
	add.n	a11, a5, a11
	call8	rtc_sleep_set_wakeup_time
.LVL43:
.L48:
.LBE39:
.LBE38:
	.loc 1 214 0
	l32i.n	a10, a3, 24
	movi.n	a11, 0
	extui	a10, a10, 0, 11
	call8	rtc_sleep_start
.LVL44:
	mov.n	a2, a10
.LVL45:
	.loc 1 217 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_set_config
.LVL46:
.LBB40:
.LBB41:
	.loc 1 171 0
	l32r	a7, .LC11
	.loc 1 170 0
	movi.n	a5, 0
	.loc 1 171 0
	mov.n	a6, a5
	mov.n	a14, a7
	movi.n	a13, -9
	.loc 1 172 0
	mov.n	a12, a7
	mov.n	a11, a7
	movi.n	a10, 4
	.loc 1 173 0
	mov.n	a9, a7
.LVL47:
.L60:
	l32r	a4, .LC12
	.loc 1 171 0
	mov.n	a15, a6
	add.n	a3, a5, a4
	addi	a4, a5, -2
	slli	a3, a3, 16
	moveqz	a15, a14, a4
	add.n	a15, a15, a3
	memw
	l32i.n	a15, a15, 52
	mov.n	a8, a6
	moveqz	a8, a7, a4
	add.n	a8, a8, a3
	and	a15, a15, a13
	memw
	s32i.n	a15, a8, 52
	.loc 1 172 0
	mov.n	a15, a6
	moveqz	a15, a11, a4
	add.n	a15, a15, a3
	memw
	l32i.n	a15, a15, 52
	mov.n	a8, a6
	moveqz	a8, a12, a4
	add.n	a8, a8, a3
	or	a15, a15, a10
	memw
	s32i.n	a15, a8, 52
	.loc 1 173 0
	l32r	a15, .LC11
	mov.n	a8, a6
	moveqz	a8, a9, a4
	movnez	a15, a6, a4
	add.n	a8, a8, a3
	add.n	a3, a15, a3
	memw
	l32i.n	a4, a3, 52
	movi.n	a3, -5
	and	a3, a4, a3
	memw
	s32i.n	a3, a8, 52
	.loc 1 170 0
	addi.n	a5, a5, 1
.LVL48:
	bnei	a5, 3, .L60
.LBE41:
.LBE40:
	.loc 1 223 0
	retw.n
.LFE40:
	.size	esp_sleep_start, .-esp_sleep_start
	.literal_position
	.literal .LC37, 2700
	.align	4
	.type	esp_light_sleep_inner$constprop$0, @function
esp_light_sleep_inner$constprop$0:
.LFB61:
	.loc 1 259 0
.LVL49:
	entry	sp, 32
.LCFI3:
.LVL50:
	.loc 1 264 0
	mov.n	a10, a2
	call8	esp_sleep_start
.LVL51:
	mov.n	a4, a10
.LVL52:
	.loc 1 268 0
	bbci	a3, 0, .L98
	.loc 1 269 0
	mov.n	a10, a3
	call8	rtc_vddsdio_set_config
.LVL53:
.L98:
	.loc 1 273 0
	bbci	a2, 5, .L99
	.loc 1 275 0
	l32r	a10, .LC37
	call8	ets_delay_us
.LVL54:
.L99:
	.loc 1 278 0
	mov.n	a2, a4
.LVL55:
	retw.n
.LFE61:
	.size	esp_light_sleep_inner$constprop$0, .-esp_light_sleep_inner$constprop$0
	.section	.text.esp_get_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC38, lock_rtc_memory_crc
	.literal .LC39, 1072988348
	.literal .LC40, 1072988344
	.literal .LC41, -1074593792
	.literal .LC42, 3342335
	.literal .LC43, -1074266112
	.literal .LC44, 131071
	.literal .LC45, -1074528256
	.literal .LC46, 8191
	.align	4
	.global	esp_get_deep_sleep_wake_stub
	.type	esp_get_deep_sleep_wake_stub, @function
esp_get_deep_sleep_wake_stub:
.LFB33:
	.loc 1 101 0
	entry	sp, 32
.LCFI4:
	.loc 1 102 0
	l32r	a4, .LC38
	mov.n	a10, a4
	call8	_lock_acquire
.LVL56:
	.loc 1 103 0
	l32r	a2, .LC39
	memw
	l32i.n	a3, a2, 0
.LVL57:
	.loc 1 104 0
	call8	set_rtc_memory_crc
.LVL58:
	.loc 1 105 0
	memw
	l32i.n	a5, a2, 0
.LVL59:
	.loc 1 107 0
	mov.n	a10, a4
	.loc 1 106 0
	memw
	s32i.n	a3, a2, 0
	.loc 1 107 0
	call8	_lock_release
.LVL60:
	.loc 1 110 0
	movi.n	a2, 0
	.loc 1 109 0
	bne	a3, a5, .L107
	.loc 1 112 0
	l32r	a3, .LC40
.LVL61:
.LBB44:
.LBB45:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 3 152 0
	l32r	a9, .LC41
.LBE45:
.LBE44:
	.loc 1 112 0
	memw
	l32i.n	a8, a3, 0
.LVL62:
.LBB47:
.LBB46:
	.loc 3 152 0
	l32r	a3, .LC42
	add.n	a9, a8, a9
	bgeu	a3, a9, .L111
	l32r	a9, .LC43
	l32r	a3, .LC44
	add.n	a9, a8, a9
	bgeu	a3, a9, .L111
.LBE46:
.LBE47:
	.loc 1 113 0
	l32r	a9, .LC45
	l32r	a3, .LC46
	add.n	a9, a8, a9
	bltu	a3, a9, .L107
.L111:
	.loc 1 116 0
	mov.n	a2, a8
.LVL63:
.L107:
	.loc 1 117 0
	retw.n
.LFE33:
	.size	esp_get_deep_sleep_wake_stub, .-esp_get_deep_sleep_wake_stub
	.section	.text.esp_set_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC47, lock_rtc_memory_crc
	.literal .LC48, 1072988344
	.align	4
	.global	esp_set_deep_sleep_wake_stub
	.type	esp_set_deep_sleep_wake_stub, @function
esp_set_deep_sleep_wake_stub:
.LFB34:
	.loc 1 120 0
.LVL64:
	entry	sp, 32
.LCFI5:
	.loc 1 121 0
	l32r	a3, .LC47
	mov.n	a10, a3
	call8	_lock_acquire
.LVL65:
	.loc 1 122 0
	l32r	a8, .LC48
	memw
	s32i.n	a2, a8, 0
	.loc 1 123 0
	call8	set_rtc_memory_crc
.LVL66:
	.loc 1 124 0
	mov.n	a10, a3
	call8	_lock_release
.LVL67:
	retw.n
.LFE34:
	.size	esp_set_deep_sleep_wake_stub, .-esp_set_deep_sleep_wake_stub
	.section	.iram1
	.literal_position
	.literal .LC49, s_config
	.literal .LC50, esp_wake_deep_sleep
	.align	4
	.global	esp_deep_sleep_start
	.type	esp_deep_sleep_start, @function
esp_deep_sleep_start:
.LFB41:
	.loc 1 226 0
	entry	sp, 32
.LCFI6:
	.loc 1 228 0
	call8	rtc_time_get
.LVL68:
	l32r	a2, .LC49
	s32i.n	a10, a2, 40
	s32i.n	a11, a2, 44
	.loc 1 229 0
	call8	esp_sync_counters_rtc_and_frc
.LVL69:
	.loc 1 231 0
	call8	esp_get_deep_sleep_wake_stub
.LVL70:
	bnez.n	a10, .L117
	.loc 1 232 0
	l32r	a10, .LC50
	call8	esp_set_deep_sleep_wake_stub
.LVL71:
.L117:
	.loc 1 236 0
	call8	get_power_down_flags
.LVL72:
	.loc 1 239 0
	movi	a8, 0x190
	s32i.n	a8, a2, 32
	.loc 1 242 0
	movi	a2, 0x61
	or	a10, a10, a2
.LVL73:
	call8	esp_sleep_start
.LVL74:
.L118:
	j	.L118
.LFE41:
	.size	esp_deep_sleep_start, .-esp_deep_sleep_start
	.section	.text.esp_light_sleep_start,"ax",@progbits
	.literal_position
	.literal .LC51, light_sleep_lock$6728
	.literal .LC52, s_config
	.literal .LC53, 3195
	.literal .LC54, 2995
	.literal .LC55, s_light_sleep_wakeup
	.align	4
	.global	esp_light_sleep_start
	.type	esp_light_sleep_start, @function
esp_light_sleep_start:
.LFB43:
	.loc 1 281 0
	entry	sp, 48
.LCFI7:
	.loc 1 283 0
	l32r	a5, .LC51
	.loc 1 298 0
	movi	a2, 0x127
	.loc 1 283 0
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL75:
	.loc 1 288 0
	call8	esp_timer_impl_lock
.LVL76:
	.loc 1 289 0
	call8	rtc_time_get
.LVL77:
	l32r	a3, .LC52
	s32i.n	a10, a3, 40
	s32i.n	a11, a3, 44
	.loc 1 290 0
	call8	esp_timer_get_time
.LVL78:
	mov.n	a7, a10
	s32i.n	a11, sp, 0
.LVL79:
	.loc 1 294 0
	call8	get_power_down_flags
.LVL80:
	.loc 1 298 0
	s32i.n	a2, a3, 32
	.loc 1 309 0
	l32i.n	a2, a3, 20
	.loc 1 294 0
	mov.n	a6, a10
.LVL81:
	.loc 1 309 0
	bnez.n	a2, .L129
	l32i.n	a2, a3, 16
	l32r	a4, .LC53
	bgeu	a4, a2, .L120
.L129:
	.loc 1 310 0
	movi.n	a2, 0x20
	or	a6, a6, a2
.LVL82:
	.loc 1 311 0
	l32r	a2, .LC54
	s32i.n	a2, a3, 32
.L120:
	.loc 1 315 0
	call8	rtc_vddsdio_get_config
.LVL83:
	mov.n	a2, a10
.LVL84:
	.loc 1 318 0
	call8	rtc_wdt_is_on
.LVL85:
	mov.n	a4, a10
.LVL86:
	.loc 1 319 0
	bnez.n	a10, .L122
	.loc 1 320 0
	call8	rtc_wdt_protect_off
.LVL87:
	.loc 1 321 0
	call8	rtc_wdt_disable
.LVL88:
	.loc 1 322 0
	movi.n	a11, 7
	mov.n	a10, a4
	call8	rtc_wdt_set_length_of_reset_signal
.LVL89:
	.loc 1 323 0
	movi.n	a11, 7
	movi.n	a10, 1
	call8	rtc_wdt_set_length_of_reset_signal
.LVL90:
	.loc 1 324 0
	movi.n	a11, 4
	mov.n	a10, a4
	call8	rtc_wdt_set_stage
.LVL91:
	.loc 1 325 0
	movi	a11, 0x3e8
	mov.n	a10, a4
	call8	rtc_wdt_set_time
.LVL92:
	.loc 1 326 0
	call8	rtc_wdt_enable
.LVL93:
	.loc 1 327 0
	call8	rtc_wdt_protect_on
.LVL94:
.L122:
	.loc 1 331 0
	mov.n	a11, a2
	mov.n	a10, a6
	call8	esp_light_sleep_inner$constprop$0
.LVL95:
	.loc 1 334 0
	l32r	a8, .LC55
	movi.n	a9, 1
	s8i	a9, a8, 0
	.loc 1 331 0
	mov.n	a2, a10
.LVL96:
	.loc 1 337 0
	call8	rtc_time_get
.LVL97:
	.loc 1 338 0
	s32i.n	a11, sp, 8
	s32i.n	a10, sp, 4
	call8	esp_timer_get_time
.LVL98:
	.loc 1 340 0
	l32i.n	a13, a3, 40
	l32i.n	a14, sp, 4
	.loc 1 338 0
	mov.n	a9, a10
	.loc 1 340 0
	sub	a13, a14, a13
	.loc 1 338 0
	mov.n	a8, a11
.LVL99:
	.loc 1 340 0
	movi.n	a10, 1
	l32i.n	a11, a3, 44
	l32i.n	a12, sp, 8
	bltu	a14, a13, .L123
	movi.n	a10, 0
.L123:
	sub	a11, a12, a11
	sub	a3, a11, a10
	s32i.n	a8, sp, 12
	s32i.n	a9, sp, 8
	s32i.n	a13, sp, 4
	call8	esp_clk_slowclk_cal_get
.LVL100:
	l32i.n	a13, sp, 4
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a13
	call8	rtc_time_slowclk_to_us
.LVL101:
	.loc 1 344 0
	l32i.n	a9, sp, 8
	l32i.n	a8, sp, 12
	sub	a3, a9, a7
	movi.n	a7, 1
.LVL102:
	bltu	a9, a3, .L124
	movi.n	a7, 0
.L124:
	l32i.n	a9, sp, 0
	sub	a3, a10, a3
	sub	a6, a8, a9
.LVL103:
	sub	a6, a6, a7
	movi.n	a7, 1
	bltu	a10, a3, .L125
	movi.n	a7, 0
.L125:
	sub	a11, a11, a6
.LVL104:
	sub	a11, a11, a7
.LVL105:
	.loc 1 349 0
	bgei	a11, 1, .L130
	bnez.n	a11, .L126
	beqz.n	a3, .L126
.L130:
	.loc 1 350 0
	mov.n	a10, a3
	call8	esp_timer_impl_advance
.LVL106:
.L126:
	.loc 1 352 0
	call8	esp_set_time_from_rtc
.LVL107:
	.loc 1 354 0
	call8	esp_timer_impl_unlock
.LVL108:
	.loc 1 356 0
	bnez.n	a4, .L128
	.loc 1 357 0
	call8	rtc_wdt_disable
.LVL109:
.L128:
	.loc 1 359 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL110:
	.loc 1 361 0
	retw.n
.LFE43:
	.size	esp_light_sleep_start, .-esp_light_sleep_start
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC61:
	.string	"sleep"
.LC63:
	.string	"\033[0;31mE (%d) %s: Incorrect wakeup source (%d) to disable.\033[0m\n"
	.section	.text.esp_sleep_disable_wakeup_source,"ax",@progbits
	.literal_position
	.literal .LC56, s_config
	.literal .LC57, 0, 0
	.literal .LC58, -1073741825
	.literal .LC59, -1073737729
	.literal .LC60, -2049
	.literal .LC62, .LC61
	.literal .LC64, .LC63
	.align	4
	.global	esp_sleep_disable_wakeup_source
	.type	esp_sleep_disable_wakeup_source, @function
esp_sleep_disable_wakeup_source:
.LFB44:
	.loc 1 366 0
.LVL111:
	entry	sp, 32
.LCFI8:
	l32r	a8, .LC56
	.loc 1 370 0
	bnei	a2, 1, .L132
	.loc 1 371 0
	l32i.n	a9, a8, 24
	movi	a2, -0x800
.LVL112:
	and	a2, a9, a2
	s32i.n	a2, a8, 24
	j	.L183
.LVL113:
.L132:
	.loc 1 372 0
	l32i.n	a10, a8, 24
	extui	a9, a10, 0, 11
	bbci	a9, 3, .L134
	bnei	a2, 4, .L134
	.loc 1 373 0
	movi	a2, 0x7f7
.LVL114:
	and	a9, a9, a2
	movi	a2, -0x800
	and	a2, a10, a2
	.loc 1 374 0
	l32r	a11, .LC57+4
	l32r	a10, .LC57
	.loc 1 373 0
	or	a9, a2, a9
	s32i.n	a9, a8, 24
	.loc 1 374 0
	s32i.n	a10, a8, 16
	s32i.n	a11, a8, 20
.L183:
	.loc 1 399 0
	movi.n	a2, 0
	.loc 1 374 0
	retw.n
.LVL115:
.L134:
	.loc 1 375 0
	bnei	a2, 2, .L135
	bbci	a9, 0, .L135
	.loc 1 376 0
	l32i.n	a10, a8, 28
	movi.n	a2, -0x20
.LVL116:
	and	a2, a10, a2
	s32i.n	a2, a8, 28
	.loc 1 377 0
	l32i.n	a10, a8, 24
	l32r	a2, .LC58
	and	a10, a10, a2
	.loc 1 378 0
	movi	a2, 0x7fe
	j	.L186
.LVL117:
.L135:
	.loc 1 379 0
	bbci	a9, 1, .L136
	bnei	a2, 3, .L136
	.loc 1 380 0
	l32i.n	a10, a8, 24
	l32r	a2, .LC59
.LVL118:
	and	a2, a10, a2
	.loc 1 381 0
	l32r	a10, .LC60
	and	a10, a2, a10
	.loc 1 382 0
	movi	a2, 0x7fd
.L186:
	and	a9, a9, a2
	j	.L184
.LVL119:
.L136:
	.loc 1 383 0
	bbci	a9, 8, .L137
	bnei	a2, 5, .L137
	.loc 1 384 0
	movi	a2, 0x6ff
.LVL120:
	j	.L185
.LVL121:
.L137:
	.loc 1 385 0
	bbci	a9, 2, .L138
	bnei	a2, 7, .L138
	.loc 1 386 0
	movi	a2, 0x7fb
.LVL122:
	j	.L185
.LVL123:
.L138:
	.loc 1 387 0
	movi	a10, 0xc0
	bnone	a9, a10, .L139
	bnei	a2, 8, .L139
	.loc 1 388 0
	movi	a2, 0x73f
.LVL124:
	j	.L185
.LVL125:
.L139:
	.loc 1 391 0
	bbci	a9, 9, .L140
	bnei	a2, 6, .L140
	.loc 1 392 0
	movi	a2, 0x5ff
.LVL126:
.L185:
	l32i.n	a10, a8, 24
	and	a9, a9, a2
.L184:
	movi	a2, -0x800
	and	a2, a10, a2
	or	a9, a2, a9
	s32i.n	a9, a8, 24
	j	.L183
.LVL127:
.L140:
	.loc 1 396 0 discriminator 2
	call8	esp_log_timestamp
.LVL128:
	l32r	a11, .LC62
	l32r	a12, .LC64
	mov.n	a15, a2
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL129:
	.loc 1 397 0 discriminator 2
	movi	a2, 0x103
.LVL130:
	.loc 1 400 0 discriminator 2
	retw.n
.LFE44:
	.size	esp_sleep_disable_wakeup_source, .-esp_sleep_disable_wakeup_source
	.section	.rodata.str1.1
.LC67:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up trigger: ext0\033[0m\n"
	.section	.text.esp_sleep_enable_ulp_wakeup,"ax",@progbits
	.literal_position
	.literal .LC65, s_config
	.literal .LC66, .LC61
	.literal .LC68, .LC67
	.align	4
	.global	esp_sleep_enable_ulp_wakeup
	.type	esp_sleep_enable_ulp_wakeup, @function
esp_sleep_enable_ulp_wakeup:
.LFB45:
	.loc 1 403 0
	entry	sp, 32
.LCFI9:
	.loc 1 405 0
	l32r	a10, .LC65
	l32i.n	a11, a10, 24
	extui	a8, a11, 0, 11
	extui	a2, a8, 0, 1
	beqz.n	a2, .L188
	.loc 1 406 0 discriminator 2
	call8	esp_log_timestamp
.LVL131:
	l32r	a11, .LC66
	l32r	a12, .LC68
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL132:
	.loc 1 407 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L188:
	.loc 1 409 0
	movi	a9, 0x200
	or	a9, a8, a9
	movi	a8, -0x800
	and	a8, a11, a8
	or	a8, a8, a9
	s32i.n	a8, a10, 24
	.loc 1 414 0
	retw.n
.LFE45:
	.size	esp_sleep_enable_ulp_wakeup, .-esp_sleep_enable_ulp_wakeup
	.section	.text.esp_sleep_enable_timer_wakeup,"ax",@progbits
	.literal_position
	.literal .LC69, s_config
	.align	4
	.global	esp_sleep_enable_timer_wakeup
	.type	esp_sleep_enable_timer_wakeup, @function
esp_sleep_enable_timer_wakeup:
.LFB46:
	.loc 1 417 0
.LVL133:
	entry	sp, 32
.LCFI10:
	.loc 1 418 0
	l32r	a8, .LC69
	movi.n	a9, 8
	l32i.n	a10, a8, 24
	.loc 1 419 0
	s32i.n	a2, a8, 16
	.loc 1 418 0
	or	a9, a10, a9
	s32i.n	a9, a8, 24
	.loc 1 419 0
	s32i.n	a3, a8, 20
	.loc 1 421 0
	movi.n	a2, 0
.LVL134:
	retw.n
.LFE46:
	.size	esp_sleep_enable_timer_wakeup, .-esp_sleep_enable_timer_wakeup
	.section	.text.esp_deep_sleep,"ax",@progbits
	.align	4
	.global	esp_deep_sleep
	.type	esp_deep_sleep, @function
esp_deep_sleep:
.LFB36:
	.loc 1 146 0
.LVL135:
	entry	sp, 32
.LCFI11:
	.loc 1 147 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_sleep_enable_timer_wakeup
.LVL136:
	.loc 1 148 0
	call8	esp_deep_sleep_start
.LVL137:
.LFE36:
	.size	esp_deep_sleep, .-esp_deep_sleep
	.global	system_deep_sleep
	.set	system_deep_sleep,esp_deep_sleep
	.section	.text.esp_sleep_enable_touchpad_wakeup,"ax",@progbits
	.literal_position
	.literal .LC70, s_config
	.literal .LC71, .LC61
	.literal .LC72, .LC67
	.align	4
	.global	esp_sleep_enable_touchpad_wakeup
	.type	esp_sleep_enable_touchpad_wakeup, @function
esp_sleep_enable_touchpad_wakeup:
.LFB48:
	.loc 1 436 0
	entry	sp, 32
.LCFI12:
	.loc 1 437 0
	l32r	a10, .LC70
	l32i.n	a11, a10, 24
	extui	a8, a11, 0, 11
	extui	a2, a8, 0, 1
	beqz.n	a2, .L193
	.loc 1 438 0 discriminator 2
	call8	esp_log_timestamp
.LVL138:
	l32r	a11, .LC71
	l32r	a12, .LC72
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL139:
	.loc 1 439 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L193:
	.loc 1 441 0
	movi	a9, 0x100
	or	a9, a8, a9
	movi	a8, -0x800
	and	a8, a11, a8
	or	a8, a8, a9
	s32i.n	a8, a10, 24
	.loc 1 443 0
	retw.n
.LFE48:
	.size	esp_sleep_enable_touchpad_wakeup, .-esp_sleep_enable_touchpad_wakeup
	.section	.rodata.str1.1
.LC75:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up triggers: touch / ULP\033[0m\n"
	.section	.text.esp_sleep_enable_ext0_wakeup,"ax",@progbits
	.literal_position
	.literal .LC73, rtc_gpio_desc
	.literal .LC74, .LC61
	.literal .LC76, .LC75
	.literal .LC77, s_config
	.literal .LC78, -1073741825
	.align	4
	.global	esp_sleep_enable_ext0_wakeup
	.type	esp_sleep_enable_ext0_wakeup, @function
esp_sleep_enable_ext0_wakeup:
.LFB50:
	.loc 1 457 0
.LVL140:
	entry	sp, 32
.LCFI13:
	.loc 1 459 0
	movi	a8, 0x102
	.loc 1 458 0
	bgeui	a3, 2, .L202
.LVL141:
.LBB50:
.LBB51:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/rtc_io.h"
	.loc 4 43 0
	movi.n	a9, 0x27
	bltu	a9, a2, .L202
	addx2	a9, a2, a2
	addx4	a2, a9, a2
.LVL142:
	l32r	a9, .LC73
	addx4	a9, a2, a9
	l32i.n	a2, a9, 0
	beqz.n	a2, .L202
	j	.L197
.L198:
.LBE51:
.LBE50:
	.loc 1 465 0 discriminator 2
	call8	esp_log_timestamp
.LVL143:
	l32r	a11, .LC74
	l32r	a12, .LC76
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL144:
	.loc 1 466 0 discriminator 2
	movi	a8, 0x103
	j	.L202
.L203:
	.loc 1 468 0
	l8ui	a10, a9, 48
	movi.n	a9, -0x20
	extui	a11, a10, 0, 5
	l32i.n	a10, a12, 28
	.loc 1 469 0
	extui	a3, a3, 0, 1
.LVL145:
	.loc 1 468 0
	and	a10, a10, a9
	or	a10, a10, a11
	s32i.n	a10, a12, 28
	.loc 1 469 0
	slli	a10, a3, 30
	l32r	a3, .LC78
	.loc 1 470 0
	movi.n	a9, 1
	.loc 1 469 0
	and	a3, a13, a3
	.loc 1 470 0
	or	a9, a2, a9
	.loc 1 469 0
	or	a3, a3, a10
	.loc 1 470 0
	movi	a2, -0x800
	and	a2, a3, a2
	or	a2, a2, a9
	s32i.n	a2, a12, 24
	.loc 1 471 0
	j	.L202
.LVL146:
.L197:
	.loc 1 464 0
	l32r	a12, .LC77
	movi	a8, 0x300
	l32i.n	a13, a12, 24
	extui	a2, a13, 0, 11
	and	a8, a2, a8
	beqz.n	a8, .L203
	j	.L198
.LVL147:
.L202:
	.loc 1 472 0
	mov.n	a2, a8
	retw.n
.LFE50:
	.size	esp_sleep_enable_ext0_wakeup, .-esp_sleep_enable_ext0_wakeup
	.section	.rodata.str1.1
.LC85:
	.string	"\033[0;31mE (%d) %s: Not an RTC IO: GPIO%d\033[0m\n"
	.section	.text.esp_sleep_enable_ext1_wakeup,"ax",@progbits
	.literal_position
	.literal .LC79, rtc_gpio_desc
	.literal .LC80, s_config
	.literal .LC81, 262143
	.literal .LC82, -1073737729
	.literal .LC83, -2049
	.literal .LC84, .LC61
	.literal .LC86, .LC85
	.align	4
	.global	esp_sleep_enable_ext1_wakeup
	.type	esp_sleep_enable_ext1_wakeup, @function
esp_sleep_enable_ext1_wakeup:
.LFB52:
	.loc 1 495 0
.LVL148:
	entry	sp, 32
.LCFI14:
	.loc 1 495 0
	mov.n	a10, a2
	.loc 1 497 0
	movi	a2, 0x102
.LVL149:
	.loc 1 496 0
	bgeui	a4, 2, .L215
	movi.n	a5, 0
	l32r	a11, .LC79
	mov.n	a9, a5
.LBB55:
.LBB56:
.LBB57:
	.loc 4 43 0
	movi.n	a12, 0x27
.LBE57:
.LBE56:
	.loc 1 509 0
	movi.n	a8, 1
	j	.L206
.LVL150:
.L211:
	.loc 1 502 0
	bbci	a10, 0, .L207
.LVL151:
.LBB59:
.LBB58:
	.loc 4 43 0
	blt	a12, a5, .L209
	l32i.n	a2, a11, 0
	beqz.n	a2, .L209
	j	.L210
.LVL152:
.L207:
.LBE58:
.LBE59:
	.loc 1 501 0 discriminator 2
	slli	a2, a3, 31
	srli	a10, a10, 1
.LVL153:
	addi.n	a5, a5, 1
.LVL154:
	or	a10, a2, a10
	srli	a3, a3, 1
.LVL155:
	addi	a11, a11, 52
.LVL156:
.L206:
	.loc 1 501 0 is_stmt 0 discriminator 1
	or	a2, a10, a3
	bnez.n	a2, .L211
.LBE55:
	.loc 1 511 0 is_stmt 1
	l32r	a8, .LC81
	l32r	a5, .LC80
.LVL157:
	and	a8, a9, a8
	slli	a9, a8, 12
.LVL158:
	l32i.n	a10, a5, 24
.LVL159:
	l32r	a8, .LC82
	.loc 1 512 0
	extui	a4, a4, 0, 1
.LVL160:
	.loc 1 511 0
	and	a8, a10, a8
	or	a8, a8, a9
	.loc 1 512 0
	l32r	a9, .LC83
	slli	a4, a4, 11
	and	a8, a8, a9
	or	a8, a8, a4
	.loc 1 513 0
	movi.n	a4, 2
	or	a8, a8, a4
	s32i.n	a8, a5, 24
	.loc 1 514 0
	retw.n
.LVL161:
.L209:
.LBB60:
	.loc 1 506 0
	call8	esp_log_timestamp
.LVL162:
	l32r	a11, .LC84
	l32r	a12, .LC86
	mov.n	a13, a10
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL163:
	.loc 1 507 0
	movi	a2, 0x102
	retw.n
.LVL164:
.L210:
	.loc 1 509 0
	l32i.n	a2, a11, 48
	ssl	a2
	sll	a2, a8
	or	a9, a9, a2
.LVL165:
	j	.L207
.LVL166:
.L215:
.LBE60:
	.loc 1 515 0
	retw.n
.LFE52:
	.size	esp_sleep_enable_ext1_wakeup, .-esp_sleep_enable_ext1_wakeup
	.section	.text.esp_sleep_enable_gpio_wakeup,"ax",@progbits
	.literal_position
	.literal .LC87, s_config
	.literal .LC88, .LC61
	.literal .LC89, .LC75
	.align	4
	.global	esp_sleep_enable_gpio_wakeup
	.type	esp_sleep_enable_gpio_wakeup, @function
esp_sleep_enable_gpio_wakeup:
.LFB55:
	.loc 1 575 0
	entry	sp, 32
.LCFI15:
	.loc 1 576 0
	l32r	a10, .LC87
	movi	a2, 0x300
	l32i.n	a11, a10, 24
	extui	a8, a11, 0, 11
	and	a2, a8, a2
	beqz.n	a2, .L218
	.loc 1 577 0 discriminator 2
	call8	esp_log_timestamp
.LVL167:
	l32r	a11, .LC88
	l32r	a12, .LC89
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL168:
	.loc 1 578 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L218:
	.loc 1 580 0
	movi.n	a9, 4
	or	a9, a8, a9
	movi	a8, -0x800
	and	a8, a11, a8
	or	a8, a8, a9
	s32i.n	a8, a10, 24
	.loc 1 582 0
	retw.n
.LFE55:
	.size	esp_sleep_enable_gpio_wakeup, .-esp_sleep_enable_gpio_wakeup
	.section	.text.esp_sleep_enable_uart_wakeup,"ax",@progbits
	.literal_position
	.literal .LC90, s_config
	.align	4
	.global	esp_sleep_enable_uart_wakeup
	.type	esp_sleep_enable_uart_wakeup, @function
esp_sleep_enable_uart_wakeup:
.LFB56:
	.loc 1 585 0
.LVL169:
	entry	sp, 32
.LCFI16:
	.loc 1 586 0
	bnez.n	a2, .L221
	.loc 1 587 0
	l32r	a9, .LC90
	movi.n	a8, 0x40
	l32i.n	a10, a9, 24
	or	a8, a10, a8
	s32i.n	a8, a9, 24
	.loc 1 594 0
	mov.n	a8, a2
	j	.L222
.L221:
	.loc 1 591 0
	movi	a8, 0x102
	.loc 1 588 0
	bnei	a2, 1, .L222
	.loc 1 589 0
	l32r	a2, .LC90
.LVL170:
	movi	a8, 0x80
	l32i.n	a9, a2, 24
	or	a8, a9, a8
	s32i.n	a8, a2, 24
	.loc 1 594 0
	movi.n	a8, 0
.L222:
	.loc 1 595 0
	mov.n	a2, a8
	retw.n
.LFE56:
	.size	esp_sleep_enable_uart_wakeup, .-esp_sleep_enable_uart_wakeup
	.section	.text.esp_sleep_get_wakeup_cause,"ax",@progbits
	.literal_position
	.literal .LC91, s_light_sleep_wakeup
	.literal .LC92, 1072988216
	.align	4
	.global	esp_sleep_get_wakeup_cause
	.type	esp_sleep_get_wakeup_cause, @function
esp_sleep_get_wakeup_cause:
.LFB57:
	.loc 1 598 0
	entry	sp, 32
.LCFI17:
	.loc 1 599 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL171:
	beqi	a10, 5, .L225
	.loc 1 599 0 is_stmt 0 discriminator 1
	l32r	a2, .LC91
	l8ui	a8, a2, 0
	.loc 1 619 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	.loc 1 599 0 discriminator 1
	beq	a8, a2, .L226
.L225:
	.loc 1 603 0
	l32r	a2, .LC92
	memw
	l32i.n	a8, a2, 0
.LVL172:
	movi.n	a2, 2
	.loc 1 604 0
	bbsi	a8, 0, .L226
	.loc 1 607 0
	movi.n	a2, 3
	.loc 1 606 0
	bbsi	a8, 1, .L226
	.loc 1 608 0
	movi.n	a10, 8
	.loc 1 609 0
	movi.n	a2, 4
	.loc 1 608 0
	bany	a8, a10, .L226
	.loc 1 611 0
	movi.n	a2, 5
	.loc 1 610 0
	bbs	a8, a10, .L226
	.loc 1 613 0
	movi.n	a2, 6
	.loc 1 612 0
	bbsi	a8, 9, .L226
	.loc 1 614 0
	movi.n	a9, 4
	and	a9, a8, a9
	.loc 1 615 0
	movi.n	a2, 7
	.loc 1 614 0
	bnez.n	a9, .L226
	.loc 1 616 0
	movi	a2, 0xc0
	and	a2, a8, a2
	.loc 1 617 0
	moveqz	a10, a9, a2
	mov.n	a2, a10
.LVL173:
.L226:
	.loc 1 621 0
	retw.n
.LFE57:
	.size	esp_sleep_get_wakeup_cause, .-esp_sleep_get_wakeup_cause
	.section	.rodata.str1.1
.LC93:
	.string	"ret == ESP_OK && \"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\""
.LC96:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/sleep_modes.c"
	.section	.text.esp_sleep_get_touchpad_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC94, .LC93
	.literal .LC95, __func__$6762
	.literal .LC97, .LC96
	.align	4
	.global	esp_sleep_get_touchpad_wakeup_status
	.type	esp_sleep_get_touchpad_wakeup_status, @function
esp_sleep_get_touchpad_wakeup_status:
.LFB49:
	.loc 1 446 0
	entry	sp, 48
.LCFI18:
	.loc 1 447 0
	call8	esp_sleep_get_wakeup_cause
.LVL174:
	.loc 1 448 0
	movi.n	a2, 0xa
	.loc 1 447 0
	bnei	a10, 5, .L240
	.loc 1 451 0
	mov.n	a10, sp
	call8	touch_pad_get_wakeup_status
.LVL175:
	.loc 1 453 0
	l32i.n	a2, sp, 0
	.loc 1 452 0
	beqz.n	a10, .L240
	.loc 1 452 0 is_stmt 0 discriminator 1
	l32r	a13, .LC94
	l32r	a12, .LC95
	l32r	a10, .LC97
.LVL176:
	movi	a11, 0x1c4
	call8	__assert_func
.LVL177:
.L240:
	.loc 1 454 0 is_stmt 1
	retw.n
.LFE49:
	.size	esp_sleep_get_touchpad_wakeup_status, .-esp_sleep_get_touchpad_wakeup_status
	.global	__ashldi3
	.section	.text.esp_sleep_get_ext1_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC99, 1072988368
	.literal .LC100, 262143
	.literal .LC101, rtc_gpio_desc
	.literal .LC102, 1, 0
	.align	4
	.global	esp_sleep_get_ext1_wakeup_status
	.type	esp_sleep_get_ext1_wakeup_status, @function
esp_sleep_get_ext1_wakeup_status:
.LFB54:
	.loc 1 554 0
	entry	sp, 32
.LCFI19:
	.loc 1 556 0
	movi.n	a2, 0
	.loc 1 555 0
	call8	esp_sleep_get_wakeup_cause
.LVL178:
	.loc 1 556 0
	mov.n	a3, a2
	.loc 1 555 0
	bnei	a10, 3, .L245
	.loc 1 558 0
	l32r	a4, .LC99
	l32r	a5, .LC101
	memw
	l32i.n	a6, a4, 0
	l32r	a4, .LC100
.LBB65:
	.loc 1 561 0
	movi.n	a7, 0x28
.LBE65:
	.loc 1 558 0
	and	a6, a6, a4
.LVL179:
.LBB67:
	.loc 1 561 0
	mov.n	a4, a2
.LVL180:
.L247:
.LBB66:
	.loc 1 562 0
	l32i.n	a8, a5, 0
	beqz.n	a8, .L246
.LVL181:
	.loc 1 566 0
	l32i.n	a8, a5, 48
	bbc	a6, a8, .L246
	.loc 1 569 0
	l32r	a10, .LC102
	l32r	a11, .LC102+4
	mov.n	a12, a4
	call8	__ashldi3
.LVL182:
	or	a10, a10, a2
	or	a11, a11, a3
	mov.n	a2, a10
.LVL183:
	mov.n	a3, a11
.LVL184:
.L246:
.LBE66:
	.loc 1 561 0 discriminator 2
	addi.n	a4, a4, 1
.LVL185:
	addi	a5, a5, 52
	bne	a4, a7, .L247
.LVL186:
.L245:
.LBE67:
	.loc 1 572 0
	retw.n
.LFE54:
	.size	esp_sleep_get_ext1_wakeup_status, .-esp_sleep_get_ext1_wakeup_status
	.section	.text.esp_sleep_pd_config,"ax",@progbits
	.literal_position
	.literal .LC103, s_config
	.align	4
	.global	esp_sleep_pd_config
	.type	esp_sleep_pd_config, @function
esp_sleep_pd_config:
.LFB58:
	.loc 1 625 0
.LVL187:
	entry	sp, 32
.LCFI20:
	.loc 1 626 0
	bgeui	a2, 4, .L260
	bgeui	a3, 3, .L260
	.loc 1 629 0
	l32r	a8, .LC103
	addx4	a2, a2, a8
.LVL188:
	s32i.n	a3, a2, 0
	.loc 1 630 0
	movi.n	a2, 0
	retw.n
.LVL189:
.L260:
	.loc 1 627 0
	movi	a2, 0x102
.LVL190:
	.loc 1 631 0
	retw.n
.LFE58:
	.size	esp_sleep_pd_config, .-esp_sleep_pd_config
	.section	.text.esp_deep_sleep_disable_rom_logging,"ax",@progbits
	.literal_position
	.literal .LC104, 1072988336
	.literal .LC105, 65537
	.align	4
	.global	esp_deep_sleep_disable_rom_logging
	.type	esp_deep_sleep_disable_rom_logging, @function
esp_deep_sleep_disable_rom_logging:
.LFB60:
	.loc 1 700 0
	entry	sp, 32
.LCFI21:
	.loc 1 706 0
	l32r	a9, .LC104
	l32r	a8, .LC105
	memw
	l32i.n	a10, a9, 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE60:
	.size	esp_deep_sleep_disable_rom_logging, .-esp_deep_sleep_disable_rom_logging
	.section	.rodata.__func__$6762,"a",@progbits
	.type	__func__$6762, @object
	.size	__func__$6762, 37
__func__$6762:
	.string	"esp_sleep_get_touchpad_wakeup_status"
	.section	.data.light_sleep_lock$6728,"aw",@progbits
	.align	4
	.type	light_sleep_lock$6728, @object
	.size	light_sleep_lock$6728, 8
light_sleep_lock$6728:
	.word	-1287651329
	.word	0
	.section	.bss.lock_rtc_memory_crc,"aw",@nobits
	.align	4
	.type	lock_rtc_memory_crc, @object
	.size	lock_rtc_memory_crc, 4
lock_rtc_memory_crc:
	.zero	4
	.global	s_light_sleep_wakeup
	.section	.bss.s_light_sleep_wakeup,"aw",@nobits
	.type	s_light_sleep_wakeup, @object
	.size	s_light_sleep_wakeup, 1
s_light_sleep_wakeup:
	.zero	1
	.section	.data.s_config,"aw",@progbits
	.align	8
	.type	s_config, @object
	.size	s_config, 48
s_config:
	.word	2
	.word	2
	.word	2
	.zero	4
	.zero	8
	.byte	0
	.byte	0
	.zero	22
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
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI0-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI3-.LFB61
	.byte	0xe
	.uleb128 0x20
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI5-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI6-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI7-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI8-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI9-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI10-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI11-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI12-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI13-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI14-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI15-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI16-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI17-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI18-.LFB49
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI19-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI20-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI21-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
	.text
.Letext0:
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/gpio.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/touch_pad.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_sleep.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/rtc.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_periph.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/uart.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_clk.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 23 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_timer_impl.h"
	.file 24 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_timer.h"
	.file 25 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x182e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF333
	.byte	0xc
	.4byte	.LASF334
	.4byte	.LASF335
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.byte	0xd8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x6
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x7
	.byte	0x12
	.4byte	0x69
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x7
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x7
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x7
	.byte	0x1d
	.4byte	0x98
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x7
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x7
	.byte	0x31
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x8
	.byte	0x15
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x8
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x8
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x8
	.byte	0x38
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x8
	.byte	0x39
	.4byte	0x9f
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x8
	.byte	0xa9
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF21
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x5
	.byte	0x4
	.4byte	0x112
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x5
	.byte	0x4
	.4byte	0x120
	.uleb128 0x7
	.4byte	0x113
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12b
	.uleb128 0x8
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x9
	.byte	0x18
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xa
	.byte	0x82
	.4byte	0x21d
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xa
	.byte	0xaf
	.4byte	0x13e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x19
	.4byte	0x277
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xb
	.byte	0x25
	.4byte	0x228
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x1d
	.4byte	0x29b
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xc
	.byte	0x20
	.4byte	0x282
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x25
	.4byte	0x2d1
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xc
	.byte	0x2b
	.4byte	0x2a6
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x30
	.4byte	0x2fb
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xc
	.byte	0x34
	.4byte	0x2dc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x39
	.4byte	0x349
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0xc
	.byte	0x43
	.4byte	0x306
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0xc
	.byte	0x46
	.4byte	0x349
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0xc
	.2byte	0x14d
	.4byte	0x10c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xd
	.byte	0x1f
	.4byte	0x39c
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x52
	.4byte	0x409
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x65
	.4byte	0x461
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF131
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF132
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF133
	.2byte	0x400
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x83
	.4byte	0x492
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xf
	.byte	0x51
	.4byte	0x4b7
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0xf
	.byte	0x56
	.4byte	0x492
	.uleb128 0xd
	.byte	0x10
	.byte	0xf
	.byte	0x5b
	.4byte	0x4fb
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xf
	.byte	0x5c
	.4byte	0x4b7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xf
	.byte	0x5d
	.4byte	0xcb
	.byte	0x4
	.uleb128 0xf
	.string	"div"
	.byte	0xf
	.byte	0x5e
	.4byte	0xcb
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0xf
	.byte	0x5f
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xf
	.byte	0x60
	.4byte	0x4c2
	.uleb128 0x10
	.byte	0x4
	.byte	0xf
	.2byte	0x21a
	.4byte	0x620
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xf
	.2byte	0x21b
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xf
	.2byte	0x21c
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xf
	.2byte	0x21d
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xf
	.2byte	0x21e
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xf
	.2byte	0x21f
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xf
	.2byte	0x220
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xf
	.2byte	0x221
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xf
	.2byte	0x222
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xf
	.2byte	0x223
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xf
	.2byte	0x224
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xf
	.2byte	0x225
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xf
	.2byte	0x226
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0xf
	.2byte	0x227
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xf
	.2byte	0x228
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xf
	.2byte	0x229
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xf
	.2byte	0x22a
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xf
	.2byte	0x22b
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xf
	.2byte	0x22c
	.4byte	0x506
	.uleb128 0x10
	.byte	0x4
	.byte	0xf
	.2byte	0x2b8
	.4byte	0x696
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0xf
	.2byte	0x2b9
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0xf
	.2byte	0x2ba
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xf
	.2byte	0x2bb
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0xf
	.2byte	0x2bc
	.4byte	0xcb
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0xf
	.2byte	0x2bd
	.4byte	0xcb
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0xf
	.2byte	0x2be
	.4byte	0xcb
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xf
	.2byte	0x2bf
	.4byte	0x62c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x40
	.4byte	0x6c7
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x48
	.4byte	0x6f2
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x51
	.4byte	0x70b
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x57
	.4byte	0x748
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x34
	.byte	0x11
	.byte	0x21
	.4byte	0x7ec
	.uleb128 0xf
	.string	"reg"
	.byte	0x11
	.byte	0x22
	.4byte	0xcb
	.byte	0
	.uleb128 0xf
	.string	"mux"
	.byte	0x11
	.byte	0x23
	.4byte	0xcb
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF193
	.byte	0x11
	.byte	0x24
	.4byte	0xcb
	.byte	0x8
	.uleb128 0xf
	.string	"ie"
	.byte	0x11
	.byte	0x25
	.4byte	0xcb
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF194
	.byte	0x11
	.byte	0x26
	.4byte	0xcb
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF195
	.byte	0x11
	.byte	0x27
	.4byte	0xcb
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF196
	.byte	0x11
	.byte	0x28
	.4byte	0xcb
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0x11
	.byte	0x29
	.4byte	0xcb
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF198
	.byte	0x11
	.byte	0x2a
	.4byte	0xcb
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0x11
	.byte	0x2b
	.4byte	0xcb
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0x11
	.byte	0x2c
	.4byte	0xcb
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0x11
	.byte	0x2d
	.4byte	0xcb
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0x11
	.byte	0x2e
	.4byte	0x2c
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LASF203
	.byte	0x11
	.byte	0x2f
	.4byte	0x748
	.uleb128 0xd
	.byte	0x8
	.byte	0x12
	.byte	0x82
	.4byte	0x818
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0x12
	.byte	0x8a
	.4byte	0xcb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0x12
	.byte	0x8f
	.4byte	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF206
	.byte	0x12
	.byte	0x94
	.4byte	0x7f7
	.uleb128 0x7
	.4byte	0x11a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x13
	.byte	0x54
	.4byte	0x84d
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0
	.uleb128 0xa
	.4byte	.LASF208
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0x1
	.byte	0x43
	.4byte	0x8d1
	.uleb128 0xe
	.4byte	.LASF211
	.byte	0x1
	.byte	0x44
	.4byte	0x8d1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF212
	.byte	0x1
	.byte	0x45
	.4byte	0xe1
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF213
	.byte	0x1
	.byte	0x46
	.4byte	0xcb
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0x1
	.byte	0x47
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0x1
	.byte	0x48
	.4byte	0xcb
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x1
	.byte	0x49
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0x1
	.byte	0x4a
	.4byte	0xcb
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF218
	.byte	0x1
	.byte	0x4b
	.4byte	0xcb
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF219
	.byte	0x1
	.byte	0x4c
	.4byte	0xe1
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.4byte	0x2fb
	.4byte	0x8e1
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4d
	.4byte	0x84d
	.uleb128 0x15
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x103
	.4byte	0x12c
	.byte	0x1
	.4byte	0x92e
	.uleb128 0x16
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x103
	.4byte	0xcb
	.uleb128 0x16
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x104
	.4byte	0xcb
	.uleb128 0x16
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x105
	.4byte	0x696
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.2byte	0x108
	.4byte	0x12c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x279
	.4byte	0xcb
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x971
	.uleb128 0x19
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x283
	.4byte	0x2c
	.uleb128 0x1a
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x971
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x2ab
	.4byte	0xcb
	.4byte	.LLST0
	.byte	0
	.uleb128 0x13
	.4byte	0x11a
	.4byte	0x981
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF249
	.byte	0x1
	.byte	0x7f
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ba
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x1675
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0x1681
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0x168d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF227
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.4byte	0x9d2
	.uleb128 0x21
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x99
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF337
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x9f8
	.uleb128 0x16
	.4byte	.LASF225
	.byte	0x2
	.2byte	0x10d
	.4byte	0xb5
	.uleb128 0x1a
	.4byte	.LASF226
	.byte	0x2
	.2byte	0x10e
	.4byte	0xcb
	.byte	0
	.uleb128 0x20
	.4byte	.LASF228
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	0xa10
	.uleb128 0x21
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.4byte	0xa46
	.uleb128 0x1a
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x2c
	.uleb128 0x21
	.uleb128 0x1a
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x33
	.uleb128 0x21
	.uleb128 0x1a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xa46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa4c
	.uleb128 0x7
	.4byte	0x7ec
	.uleb128 0x24
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x205
	.byte	0x1
	.4byte	0xa93
	.uleb128 0x1a
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x208
	.4byte	0xcb
	.uleb128 0x21
	.uleb128 0x1a
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x209
	.4byte	0x2c
	.uleb128 0x21
	.uleb128 0x1a
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x20a
	.4byte	0x2c
	.uleb128 0x1a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x20e
	.4byte	0xa46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x1a7
	.byte	0x1
	.4byte	0xac5
	.uleb128 0x1a
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xcb
	.uleb128 0x1a
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xd6
	.uleb128 0x1a
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xd6
	.byte	0
	.uleb128 0x20
	.4byte	.LASF240
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.4byte	0xadd
	.uleb128 0x21
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF338
	.byte	0x1
	.byte	0xb1
	.4byte	0xcb
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd11
	.uleb128 0x26
	.4byte	.LASF221
	.byte	0x1
	.byte	0xb1
	.4byte	0xcb
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	.LASF241
	.byte	0x1
	.byte	0xbd
	.4byte	0x4fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.4byte	.LASF242
	.byte	0x1
	.byte	0xce
	.4byte	0x620
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0xd6
	.4byte	0xcb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x9ba
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0xb7
	.4byte	0xb7e
	.uleb128 0x2a
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x2b
	.4byte	0x9c7
	.4byte	.LLST2
	.uleb128 0x2c
	.4byte	0x9d2
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x9a
	.uleb128 0x2d
	.4byte	0x9df
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x2b
	.4byte	0x9eb
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x9f8
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0xb9
	.4byte	0xba5
	.uleb128 0x2a
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x2b
	.4byte	0xa05
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xa10
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xc3
	.4byte	0xbee
	.uleb128 0x2a
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x2b
	.4byte	0xa1d
	.4byte	.LLST6
	.uleb128 0x2a
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x2b
	.4byte	0xa2a
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x2e
	.4byte	0xa37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xa51
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.byte	0xc6
	.4byte	0xc3c
	.uleb128 0x2a
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x2b
	.4byte	0xa5e
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x2b
	.4byte	0xa6b
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2b
	.4byte	0xa78
	.4byte	.LLST10
	.uleb128 0x2e
	.4byte	0xa84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xa93
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0xd4
	.4byte	0xc8c
	.uleb128 0x2a
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x2b
	.4byte	0xaa0
	.4byte	.LLST11
	.uleb128 0x2e
	.4byte	0xaac
	.uleb128 0x2b
	.4byte	0xab8
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0x1699
	.uleb128 0x1d
	.4byte	.LVL40
	.4byte	0x16a4
	.uleb128 0x1d
	.4byte	.LVL43
	.4byte	0x16b0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xac5
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0xdc
	.4byte	0xcb3
	.uleb128 0x2a
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x2b
	.4byte	0xad2
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL13
	.4byte	0x16bc
	.4byte	0xcc7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0x16c8
	.uleb128 0x30
	.4byte	.LVL36
	.4byte	0x16d4
	.4byte	0xced
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0x75
	.sleb128 0
	.byte	0x11
	.sleb128 -16777217
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x30
	.4byte	.LVL44
	.4byte	0x16e0
	.4byte	0xd00
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL46
	.4byte	0x16ec
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x8ec
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7c
	.uleb128 0x2d
	.4byte	0x8fd
	.4byte	.LLST14
	.uleb128 0x32
	.4byte	0x915
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	0x921
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	0x909
	.2byte	0xa8c
	.uleb128 0x30
	.4byte	.LVL51
	.4byte	0xadd
	.4byte	0xd56
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL53
	.4byte	0x16f8
	.4byte	0xd6a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL54
	.4byte	0x168d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa8c
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF245
	.byte	0x3
	.byte	0x93
	.4byte	0x137
	.byte	0x3
	.4byte	0xda0
	.uleb128 0x36
	.string	"p"
	.byte	0x3
	.byte	0x93
	.4byte	0x125
	.uleb128 0x22
	.string	"ip"
	.byte	0x3
	.byte	0x95
	.4byte	0xec
	.byte	0
	.uleb128 0x37
	.4byte	.LASF263
	.byte	0x1
	.byte	0x64
	.4byte	0x35f
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3e
	.uleb128 0x38
	.4byte	.LASF246
	.byte	0x1
	.byte	0x67
	.4byte	0xcb
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LASF247
	.byte	0x1
	.byte	0x69
	.4byte	0xcb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x38
	.4byte	.LASF248
	.byte	0x1
	.byte	0x70
	.4byte	0x35f
	.4byte	.LLST16
	.uleb128 0x39
	.4byte	0xd7c
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x71
	.4byte	0xe10
	.uleb128 0x2d
	.4byte	0xd8c
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2b
	.4byte	0xd95
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL56
	.4byte	0x1704
	.4byte	0xe24
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0x170f
	.uleb128 0x1e
	.4byte	.LVL60
	.4byte	0x171a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF250
	.byte	0x1
	.byte	0x77
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8e
	.uleb128 0x3a
	.4byte	.LASF251
	.byte	0x1
	.byte	0x77
	.4byte	0x35f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LVL65
	.4byte	0x1704
	.4byte	0xe74
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL66
	.4byte	0x170f
	.uleb128 0x1e
	.4byte	.LVL67
	.4byte	0x171a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF252
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef7
	.uleb128 0x38
	.4byte	.LASF221
	.byte	0x1
	.byte	0xec
	.4byte	0xcb
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LVL68
	.4byte	0x1725
	.uleb128 0x1d
	.4byte	.LVL69
	.4byte	0x1731
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0xda0
	.uleb128 0x30
	.4byte	.LVL71
	.4byte	0xe3e
	.4byte	0xee4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_wake_deep_sleep
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL72
	.4byte	0x92e
	.uleb128 0x1d
	.4byte	.LVL74
	.4byte	0xadd
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x118
	.4byte	0x12c
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111d
	.uleb128 0x3d
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x11a
	.4byte	0x818
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$6728
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x122
	.4byte	0xe1
	.4byte	.LLST20
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x126
	.4byte	0xcb
	.4byte	.LLST21
	.uleb128 0x3e
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x12e
	.4byte	0x111d
	.2byte	0xa8c
	.uleb128 0x3e
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x132
	.4byte	0x111d
	.2byte	0xc7b
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x13b
	.4byte	0x696
	.4byte	.LLST22
	.uleb128 0x3d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x13e
	.4byte	0x137
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3f
	.string	"err"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x12c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x151
	.4byte	0xe1
	.4byte	.LLST23
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x152
	.4byte	0xe1
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x154
	.4byte	0xe1
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x156
	.4byte	0xe1
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x158
	.4byte	0xd6
	.4byte	.LLST26
	.uleb128 0x30
	.4byte	.LVL75
	.4byte	0x173c
	.4byte	0xfeb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL76
	.4byte	0x1747
	.uleb128 0x1d
	.4byte	.LVL77
	.4byte	0x1725
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0x1752
	.uleb128 0x1d
	.4byte	.LVL80
	.4byte	0x92e
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0x175d
	.uleb128 0x1d
	.4byte	.LVL85
	.4byte	0x1769
	.uleb128 0x1d
	.4byte	.LVL87
	.4byte	0x1774
	.uleb128 0x1d
	.4byte	.LVL88
	.4byte	0x177f
	.uleb128 0x30
	.4byte	.LVL89
	.4byte	0x178a
	.4byte	0x104c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x30
	.4byte	.LVL90
	.4byte	0x178a
	.4byte	0x1064
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x30
	.4byte	.LVL91
	.4byte	0x1795
	.4byte	0x107d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x30
	.4byte	.LVL92
	.4byte	0x17a0
	.4byte	0x1098
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL93
	.4byte	0x17ab
	.uleb128 0x1d
	.4byte	.LVL94
	.4byte	0x17b6
	.uleb128 0x30
	.4byte	.LVL95
	.4byte	0xd11
	.4byte	0x10c4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL97
	.4byte	0x1725
	.uleb128 0x1d
	.4byte	.LVL98
	.4byte	0x1752
	.uleb128 0x1d
	.4byte	.LVL100
	.4byte	0x1699
	.uleb128 0x1d
	.4byte	.LVL101
	.4byte	0x17c1
	.uleb128 0x1d
	.4byte	.LVL106
	.4byte	0x17cd
	.uleb128 0x1d
	.4byte	.LVL107
	.4byte	0x17d8
	.uleb128 0x1d
	.4byte	.LVL108
	.4byte	0x17e3
	.uleb128 0x1d
	.4byte	.LVL109
	.4byte	0x177f
	.uleb128 0x1e
	.4byte	.LVL110
	.4byte	0x17ee
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xcb
	.uleb128 0x40
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x16d
	.4byte	0x12c
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1186
	.uleb128 0x41
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x16d
	.4byte	0x349
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	.LVL128
	.4byte	0x17f9
	.uleb128 0x1e
	.4byte	.LVL129
	.4byte	0x1804
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x192
	.4byte	0x12c
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d4
	.uleb128 0x1d
	.4byte	.LVL131
	.4byte	0x17f9
	.uleb128 0x1e
	.4byte	.LVL132
	.4byte	0x1804
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x12c
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ff
	.uleb128 0x41
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xe1
	.4byte	.LLST28
	.byte	0
	.uleb128 0x42
	.4byte	.LASF268
	.byte	0x1
	.byte	0x91
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1239
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.byte	0x91
	.4byte	0xe1
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1d
	.4byte	.LVL136
	.4byte	0x11d4
	.uleb128 0x1d
	.4byte	.LVL137
	.4byte	0xe8e
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x12c
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1287
	.uleb128 0x1d
	.4byte	.LVL138
	.4byte	0x17f9
	.uleb128 0x1e
	.4byte	.LVL139
	.4byte	0x1804
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF270
	.byte	0x4
	.byte	0x28
	.4byte	0x137
	.byte	0x3
	.4byte	0x12a3
	.uleb128 0x43
	.4byte	.LASF231
	.byte	0x4
	.byte	0x28
	.4byte	0x21d
	.byte	0
	.uleb128 0x40
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x12c
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x132f
	.uleb128 0x41
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x21d
	.4byte	.LLST29
	.uleb128 0x41
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x44
	.4byte	0x1287
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x12fb
	.uleb128 0x2d
	.4byte	0x1297
	.4byte	.LLST31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL143
	.4byte	0x17f9
	.uleb128 0x1e
	.4byte	.LVL144
	.4byte	0x1804
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x12c
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e7
	.uleb128 0x41
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x1ee
	.4byte	0xe1
	.4byte	.LLST32
	.uleb128 0x41
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x29b
	.4byte	.LLST33
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xcb
	.4byte	.LLST34
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x2c
	.4byte	.LLST35
	.uleb128 0x45
	.4byte	0x1287
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x13ac
	.uleb128 0x2d
	.4byte	0x1297
	.4byte	.LLST36
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL162
	.4byte	0x17f9
	.uleb128 0x1e
	.4byte	.LVL163
	.4byte	0x1804
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x23e
	.4byte	0x12c
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1435
	.uleb128 0x1d
	.4byte	.LVL167
	.4byte	0x17f9
	.uleb128 0x1e
	.4byte	.LVL168
	.4byte	0x1804
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x248
	.4byte	0x12c
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1460
	.uleb128 0x41
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x248
	.4byte	0x2c
	.4byte	.LLST37
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x255
	.4byte	0x354
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149a
	.uleb128 0x1b
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x25b
	.4byte	0xcb
	.4byte	.LLST38
	.uleb128 0x1e
	.4byte	.LVL171
	.4byte	0x180f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x277
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x152c
	.uleb128 0x3d
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x277
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x46
	.string	"ret"
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x12c
	.4byte	.LLST39
	.uleb128 0x47
	.4byte	.LASF283
	.4byte	0x153c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6762
	.uleb128 0x1d
	.4byte	.LVL174
	.4byte	0x1460
	.uleb128 0x30
	.4byte	.LVL175
	.4byte	0x181a
	.4byte	0x14ff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL177
	.4byte	0x1826
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6762
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x153c
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.4byte	0x152c
	.uleb128 0x48
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x229
	.4byte	0xe1
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b9
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x22e
	.4byte	0xcb
	.4byte	.LLST40
	.uleb128 0x1b
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x230
	.4byte	0xe1
	.4byte	.LLST41
	.uleb128 0x49
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x15af
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x231
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x2a
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x235
	.4byte	0x2c
	.4byte	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL178
	.4byte	0x1460
	.byte	0
	.uleb128 0x40
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x26f
	.4byte	0x12c
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f2
	.uleb128 0x41
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x26f
	.4byte	0x2d1
	.4byte	.LLST44
	.uleb128 0x4a
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x270
	.4byte	0x2fb
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x2bb
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF289
	.byte	0x1
	.byte	0x4f
	.4byte	0x8e1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_config
	.uleb128 0x27
	.4byte	.LASF290
	.byte	0x1
	.byte	0x58
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_rtc_memory_crc
	.uleb128 0x4c
	.string	"TAG"
	.byte	0x1
	.byte	0x5a
	.4byte	0x823
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC61
	.byte	0x9f
	.uleb128 0x13
	.4byte	0x7ec
	.4byte	0x1648
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x27
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF292
	.byte	0x11
	.byte	0x38
	.4byte	0x1653
	.uleb128 0x7
	.4byte	0x1638
	.uleb128 0x4e
	.4byte	.LASF293
	.byte	0x1
	.byte	0x54
	.4byte	0x137
	.uleb128 0x5
	.byte	0x3
	.4byte	s_light_sleep_wakeup
	.uleb128 0x19
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x283
	.4byte	0x2c
	.uleb128 0x4f
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0x14
	.2byte	0x1b5
	.uleb128 0x4f
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0x14
	.2byte	0x195
	.uleb128 0x4f
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x14
	.2byte	0x17f
	.uleb128 0x50
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x15
	.byte	0x1f
	.uleb128 0x4f
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0xf
	.2byte	0x1f6
	.uleb128 0x4f
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0xf
	.2byte	0x267
	.uleb128 0x4f
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0xf
	.2byte	0x1b5
	.uleb128 0x4f
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0xf
	.2byte	0x1be
	.uleb128 0x4f
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0xf
	.2byte	0x25f
	.uleb128 0x4f
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0xf
	.2byte	0x28f
	.uleb128 0x4f
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0xf
	.2byte	0x199
	.uleb128 0x4f
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0xf
	.2byte	0x2d1
	.uleb128 0x50
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0x6
	.byte	0x20
	.uleb128 0x50
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0xe
	.byte	0xb9
	.uleb128 0x50
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x6
	.byte	0x24
	.uleb128 0x4f
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0xf
	.2byte	0x20c
	.uleb128 0x50
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0x16
	.byte	0x2c
	.uleb128 0x50
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x12
	.byte	0xda
	.uleb128 0x50
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x17
	.byte	0x5f
	.uleb128 0x50
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x18
	.byte	0xbe
	.uleb128 0x4f
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0xf
	.2byte	0x2c8
	.uleb128 0x50
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0x10
	.byte	0xc4
	.uleb128 0x50
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x10
	.byte	0x72
	.uleb128 0x50
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0x10
	.byte	0x85
	.uleb128 0x50
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x10
	.byte	0xbc
	.uleb128 0x50
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x10
	.byte	0xb0
	.uleb128 0x50
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x10
	.byte	0x98
	.uleb128 0x50
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0x10
	.byte	0x77
	.uleb128 0x50
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0x10
	.byte	0x6d
	.uleb128 0x4f
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0xf
	.2byte	0x1ff
	.uleb128 0x50
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0x17
	.byte	0x46
	.uleb128 0x50
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0x16
	.byte	0x27
	.uleb128 0x50
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0x17
	.byte	0x65
	.uleb128 0x50
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0x12
	.byte	0xd9
	.uleb128 0x50
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0xd
	.byte	0x57
	.uleb128 0x50
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0xd
	.byte	0x6b
	.uleb128 0x50
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0xe
	.byte	0x9c
	.uleb128 0x4f
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0xb
	.2byte	0x231
	.uleb128 0x50
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0x19
	.byte	0x29
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x87
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x87
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL80-1
	.4byte	.LVL102
	.2byte	0x7
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL81
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134
	.4byte	.LFE46
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL140
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL153
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL155
	.4byte	.LVL159
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL166
	.4byte	.LFE52
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL148
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL150
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL150
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL161
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL161
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL179
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL181
	.4byte	.LVL182-1
	.2byte	0x2
	.byte	0x75
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF272:
	.string	"level"
.LASF314:
	.string	"rtc_vddsdio_get_config"
.LASF278:
	.string	"uart_num"
.LASF3:
	.string	"size_t"
.LASF215:
	.string	"ext1_rtc_gpio_mask"
.LASF292:
	.string	"rtc_gpio_desc"
.LASF22:
	.string	"sizetype"
.LASF180:
	.string	"RTC_WDT_STAGE_ACTION_RESET_CPU"
.LASF204:
	.string	"owner"
.LASF324:
	.string	"esp_timer_impl_advance"
.LASF129:
	.string	"UART0_TRIG"
.LASF327:
	.string	"vTaskExitCritical"
.LASF140:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF16:
	.string	"int32_t"
.LASF194:
	.string	"pullup"
.LASF186:
	.string	"RTC_WDT_LENGTH_200ns"
.LASF108:
	.string	"SW_RESET"
.LASF307:
	.string	"set_rtc_memory_crc"
.LASF270:
	.string	"rtc_gpio_is_valid_gpio"
.LASF283:
	.string	"__func__"
.LASF319:
	.string	"rtc_wdt_set_stage"
.LASF277:
	.string	"esp_sleep_enable_uart_wakeup"
.LASF279:
	.string	"esp_sleep_get_wakeup_cause"
.LASF96:
	.string	"ESP_SLEEP_WAKEUP_UART"
.LASF147:
	.string	"freq_mhz"
.LASF148:
	.string	"rtc_cpu_freq_config_t"
.LASF97:
	.string	"esp_sleep_source_t"
.LASF76:
	.string	"ESP_EXT1_WAKEUP_ANY_HIGH"
.LASF280:
	.string	"wakeup_cause"
.LASF267:
	.string	"time_in_us"
.LASF112:
	.string	"TG0WDT_SYS_RESET"
.LASF269:
	.string	"esp_sleep_enable_touchpad_wakeup"
.LASF167:
	.string	"force"
.LASF231:
	.string	"gpio_num"
.LASF190:
	.string	"RTC_WDT_LENGTH_800ns"
.LASF301:
	.string	"rtc_clk_cpu_freq_set_xtal"
.LASF6:
	.string	"__uint8_t"
.LASF63:
	.string	"TOUCH_PAD_NUM0"
.LASF64:
	.string	"TOUCH_PAD_NUM1"
.LASF65:
	.string	"TOUCH_PAD_NUM2"
.LASF66:
	.string	"TOUCH_PAD_NUM3"
.LASF67:
	.string	"TOUCH_PAD_NUM4"
.LASF68:
	.string	"TOUCH_PAD_NUM5"
.LASF69:
	.string	"TOUCH_PAD_NUM6"
.LASF70:
	.string	"TOUCH_PAD_NUM7"
.LASF71:
	.string	"TOUCH_PAD_NUM8"
.LASF72:
	.string	"TOUCH_PAD_NUM9"
.LASF243:
	.string	"result"
.LASF83:
	.string	"esp_sleep_pd_domain_t"
.LASF21:
	.string	"long int"
.LASF133:
	.string	"BT_TRIG"
.LASF281:
	.string	"esp_sleep_get_touchpad_wakeup_status"
.LASF326:
	.string	"esp_timer_impl_unlock"
.LASF211:
	.string	"pd_options"
.LASF235:
	.string	"gpio"
.LASF296:
	.string	"ets_delay_us"
.LASF124:
	.string	"EXT_EVENT1_TRIG"
.LASF287:
	.string	"domain"
.LASF144:
	.string	"rtc_cpu_freq_src_t"
.LASF185:
	.string	"RTC_WDT_LENGTH_100ns"
.LASF273:
	.string	"esp_sleep_enable_ext1_wakeup"
.LASF179:
	.string	"RTC_WDT_STAGE_ACTION_INTERRUPT"
.LASF246:
	.string	"stored_crc"
.LASF5:
	.string	"signed char"
.LASF15:
	.string	"uint8_t"
.LASF259:
	.string	"frc_time_at_end"
.LASF265:
	.string	"esp_sleep_enable_ulp_wakeup"
.LASF27:
	.string	"GPIO_NUM_0"
.LASF28:
	.string	"GPIO_NUM_1"
.LASF29:
	.string	"GPIO_NUM_2"
.LASF30:
	.string	"GPIO_NUM_3"
.LASF31:
	.string	"GPIO_NUM_4"
.LASF32:
	.string	"GPIO_NUM_5"
.LASF33:
	.string	"GPIO_NUM_6"
.LASF34:
	.string	"GPIO_NUM_7"
.LASF35:
	.string	"GPIO_NUM_8"
.LASF36:
	.string	"GPIO_NUM_9"
.LASF203:
	.string	"rtc_gpio_desc_t"
.LASF128:
	.string	"MAC_TRIG"
.LASF251:
	.string	"new_stub"
.LASF118:
	.string	"RTCWDT_CPU_RESET"
.LASF310:
	.string	"esp_sync_counters_rtc_and_frc"
.LASF136:
	.string	"REJECT_INT"
.LASF7:
	.string	"unsigned char"
.LASF240:
	.string	"resume_uarts"
.LASF295:
	.string	"ets_update_cpu_frequency_rom"
.LASF291:
	.string	"_rtc_slow_length"
.LASF216:
	.string	"ext0_trigger_level"
.LASF106:
	.string	"NO_MEAN"
.LASF26:
	.string	"_Bool"
.LASF87:
	.string	"esp_sleep_pd_option_t"
.LASF93:
	.string	"ESP_SLEEP_WAKEUP_TOUCHPAD"
.LASF252:
	.string	"esp_deep_sleep_start"
.LASF192:
	.string	"RTC_WDT_LENGTH_3_2us"
.LASF24:
	.string	"char"
.LASF223:
	.string	"vddsdio_config"
.LASF115:
	.string	"INTRUSION_RESET"
.LASF159:
	.string	"dig_dbias_wak"
.LASF264:
	.string	"esp_sleep_disable_wakeup_source"
.LASF262:
	.string	"time_diff"
.LASF257:
	.string	"wdt_was_enabled"
.LASF333:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF330:
	.string	"rtc_get_reset_reason"
.LASF302:
	.string	"rtc_sleep_init"
.LASF161:
	.string	"rtc_dbias_wak"
.LASF145:
	.string	"source"
.LASF73:
	.string	"TOUCH_PAD_MAX"
.LASF139:
	.string	"RTC_TIME_VALID_INT"
.LASF334:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/sleep_modes.c"
.LASF266:
	.string	"esp_sleep_enable_timer_wakeup"
.LASF173:
	.string	"rtc_vddsdio_config_t"
.LASF101:
	.string	"ESP_LOG_ERROR"
.LASF183:
	.string	"RTC_WDT_SYS_RESET_SIG"
.LASF309:
	.string	"rtc_time_get"
.LASF80:
	.string	"ESP_PD_DOMAIN_RTC_FAST_MEM"
.LASF178:
	.string	"RTC_WDT_STAGE_ACTION_OFF"
.LASF120:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF271:
	.string	"esp_sleep_enable_ext0_wakeup"
.LASF248:
	.string	"stub_ptr"
.LASF74:
	.string	"touch_pad_t"
.LASF117:
	.string	"SW_CPU_RESET"
.LASF119:
	.string	"EXT_CPU_RESET"
.LASF163:
	.string	"lslp_meminf_pd"
.LASF230:
	.string	"rtc_gpio_num"
.LASF225:
	.string	"uart_no"
.LASF245:
	.string	"esp_ptr_executable"
.LASF122:
	.string	"NO_SLEEP"
.LASF156:
	.string	"rom_mem_pd_en"
.LASF191:
	.string	"RTC_WDT_LENGTH_1_6us"
.LASF332:
	.string	"__assert_func"
.LASF151:
	.string	"rtc_mem_inf_follow_cpu"
.LASF131:
	.string	"TOUCH_TRIG"
.LASF13:
	.string	"__uint64_t"
.LASF170:
	.string	"drefh"
.LASF23:
	.string	"long unsigned int"
.LASF172:
	.string	"drefl"
.LASF171:
	.string	"drefm"
.LASF241:
	.string	"cpu_freq_config"
.LASF226:
	.string	"status"
.LASF199:
	.string	"hold_force"
.LASF288:
	.string	"option"
.LASF227:
	.string	"flush_uarts"
.LASF174:
	.string	"RTC_WDT_STAGE0"
.LASF175:
	.string	"RTC_WDT_STAGE1"
.LASF176:
	.string	"RTC_WDT_STAGE2"
.LASF177:
	.string	"RTC_WDT_STAGE3"
.LASF62:
	.string	"gpio_num_t"
.LASF85:
	.string	"ESP_PD_OPTION_ON"
.LASF110:
	.string	"DEEPSLEEP_RESET"
.LASF254:
	.string	"light_sleep_lock"
.LASF323:
	.string	"rtc_time_slowclk_to_us"
.LASF325:
	.string	"esp_set_time_from_rtc"
.LASF14:
	.string	"__intptr_t"
.LASF81:
	.string	"ESP_PD_DOMAIN_XTAL"
.LASF285:
	.string	"gpio_mask"
.LASF132:
	.string	"SAR_TRIG"
.LASF10:
	.string	"__uint32_t"
.LASF4:
	.string	"_lock_t"
.LASF12:
	.string	"long long int"
.LASF293:
	.string	"s_light_sleep_wakeup"
.LASF202:
	.string	"rtc_num"
.LASF169:
	.string	"tieh"
.LASF168:
	.string	"enable"
.LASF196:
	.string	"slpsel"
.LASF236:
	.string	"rtc_pin"
.LASF304:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF242:
	.string	"config"
.LASF125:
	.string	"GPIO_TRIG"
.LASF134:
	.string	"NO_INT"
.LASF86:
	.string	"ESP_PD_OPTION_AUTO"
.LASF305:
	.string	"rtc_vddsdio_set_config"
.LASF316:
	.string	"rtc_wdt_protect_off"
.LASF258:
	.string	"rtc_ticks_at_end"
.LASF25:
	.string	"esp_err_t"
.LASF274:
	.string	"mask"
.LASF164:
	.string	"vddsdio_pd_en"
.LASF37:
	.string	"GPIO_NUM_10"
.LASF38:
	.string	"GPIO_NUM_11"
.LASF39:
	.string	"GPIO_NUM_12"
.LASF40:
	.string	"GPIO_NUM_13"
.LASF41:
	.string	"GPIO_NUM_14"
.LASF42:
	.string	"GPIO_NUM_15"
.LASF43:
	.string	"GPIO_NUM_16"
.LASF44:
	.string	"GPIO_NUM_17"
.LASF45:
	.string	"GPIO_NUM_18"
.LASF46:
	.string	"GPIO_NUM_19"
.LASF61:
	.string	"GPIO_NUM_MAX"
.LASF79:
	.string	"ESP_PD_DOMAIN_RTC_SLOW_MEM"
.LASF263:
	.string	"esp_get_deep_sleep_wake_stub"
.LASF205:
	.string	"count"
.LASF123:
	.string	"EXT_EVENT0_TRIG"
.LASF198:
	.string	"hold"
.LASF1:
	.string	"unsigned int"
.LASF47:
	.string	"GPIO_NUM_21"
.LASF48:
	.string	"GPIO_NUM_22"
.LASF49:
	.string	"GPIO_NUM_23"
.LASF50:
	.string	"GPIO_NUM_25"
.LASF51:
	.string	"GPIO_NUM_26"
.LASF52:
	.string	"GPIO_NUM_27"
.LASF20:
	.string	"intptr_t"
.LASF89:
	.string	"ESP_SLEEP_WAKEUP_ALL"
.LASF331:
	.string	"touch_pad_get_wakeup_status"
.LASF165:
	.string	"xtal_fpu"
.LASF189:
	.string	"RTC_WDT_LENGTH_500ns"
.LASF253:
	.string	"esp_light_sleep_start"
.LASF237:
	.string	"timer_wakeup_prepare"
.LASF102:
	.string	"ESP_LOG_WARN"
.LASF233:
	.string	"ext1_wakeup_prepare"
.LASF116:
	.string	"TGWDT_CPU_RESET"
.LASF99:
	.string	"esp_deep_sleep_wake_stub_fn_t"
.LASF141:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF53:
	.string	"GPIO_NUM_32"
.LASF54:
	.string	"GPIO_NUM_33"
.LASF55:
	.string	"GPIO_NUM_34"
.LASF56:
	.string	"GPIO_NUM_35"
.LASF57:
	.string	"GPIO_NUM_36"
.LASF58:
	.string	"GPIO_NUM_37"
.LASF59:
	.string	"GPIO_NUM_38"
.LASF60:
	.string	"GPIO_NUM_39"
.LASF290:
	.string	"lock_rtc_memory_crc"
.LASF94:
	.string	"ESP_SLEEP_WAKEUP_ULP"
.LASF282:
	.string	"pad_num"
.LASF249:
	.string	"esp_default_wake_deep_sleep"
.LASF107:
	.string	"POWERON_RESET"
.LASF312:
	.string	"esp_timer_impl_lock"
.LASF201:
	.string	"drv_s"
.LASF200:
	.string	"drv_v"
.LASF338:
	.string	"esp_sleep_start"
.LASF75:
	.string	"ESP_EXT1_WAKEUP_ALL_LOW"
.LASF105:
	.string	"ESP_LOG_VERBOSE"
.LASF82:
	.string	"ESP_PD_DOMAIN_MAX"
.LASF155:
	.string	"wifi_pd_en"
.LASF130:
	.string	"UART1_TRIG"
.LASF298:
	.string	"rtc_time_us_to_slowclk"
.LASF220:
	.string	"sleep_config_t"
.LASF207:
	.string	"UART_NUM_0"
.LASF208:
	.string	"UART_NUM_1"
.LASF209:
	.string	"UART_NUM_2"
.LASF90:
	.string	"ESP_SLEEP_WAKEUP_EXT0"
.LASF91:
	.string	"ESP_SLEEP_WAKEUP_EXT1"
.LASF328:
	.string	"esp_log_timestamp"
.LASF0:
	.string	"long long unsigned int"
.LASF197:
	.string	"slpie"
.LASF261:
	.string	"frc_time_diff"
.LASF114:
	.string	"RTCWDT_SYS_RESET"
.LASF239:
	.string	"rtc_count_delta"
.LASF135:
	.string	"WAKEUP_INT"
.LASF95:
	.string	"ESP_SLEEP_WAKEUP_GPIO"
.LASF276:
	.string	"esp_sleep_enable_gpio_wakeup"
.LASF158:
	.string	"wdt_flashboot_mod_en"
.LASF100:
	.string	"ESP_LOG_NONE"
.LASF184:
	.string	"RTC_WDT_CPU_RESET_SIG"
.LASF188:
	.string	"RTC_WDT_LENGTH_400ns"
.LASF111:
	.string	"SDIO_RESET"
.LASF206:
	.string	"portMUX_TYPE"
.LASF303:
	.string	"rtc_sleep_start"
.LASF238:
	.string	"period"
.LASF103:
	.string	"ESP_LOG_INFO"
.LASF228:
	.string	"suspend_uarts"
.LASF255:
	.string	"frc_time_at_start"
.LASF98:
	.string	"esp_sleep_wakeup_cause_t"
.LASF308:
	.string	"_lock_release"
.LASF232:
	.string	"desc"
.LASF234:
	.string	"rtc_gpio_mask"
.LASF152:
	.string	"rtc_fastmem_pd_en"
.LASF157:
	.string	"deep_slp"
.LASF210:
	.string	"UART_NUM_MAX"
.LASF313:
	.string	"esp_timer_get_time"
.LASF337:
	.string	"uart_tx_wait_idle"
.LASF311:
	.string	"vTaskEnterCritical"
.LASF320:
	.string	"rtc_wdt_set_time"
.LASF127:
	.string	"SDIO_TRIG"
.LASF214:
	.string	"ext1_trigger_mode"
.LASF153:
	.string	"rtc_slowmem_pd_en"
.LASF250:
	.string	"esp_set_deep_sleep_wake_stub"
.LASF77:
	.string	"esp_sleep_ext1_wakeup_mode_t"
.LASF284:
	.string	"esp_sleep_get_ext1_wakeup_status"
.LASF318:
	.string	"rtc_wdt_set_length_of_reset_signal"
.LASF8:
	.string	"short int"
.LASF19:
	.string	"uint64_t"
.LASF275:
	.string	"mode"
.LASF193:
	.string	"func"
.LASF260:
	.string	"rtc_time_diff"
.LASF336:
	.string	"get_power_down_flags"
.LASF195:
	.string	"pulldown"
.LASF160:
	.string	"dig_dbias_slp"
.LASF109:
	.string	"OWDT_RESET"
.LASF229:
	.string	"ext0_wakeup_prepare"
.LASF162:
	.string	"rtc_dbias_slp"
.LASF299:
	.string	"rtc_sleep_set_wakeup_time"
.LASF181:
	.string	"RTC_WDT_STAGE_ACTION_RESET_SYSTEM"
.LASF317:
	.string	"rtc_wdt_disable"
.LASF256:
	.string	"vddsdio_pd_sleep_duration"
.LASF322:
	.string	"rtc_wdt_protect_on"
.LASF121:
	.string	"RTCWDT_RTC_RESET"
.LASF286:
	.string	"esp_sleep_pd_config"
.LASF182:
	.string	"RTC_WDT_STAGE_ACTION_RESET_RTC"
.LASF268:
	.string	"esp_deep_sleep"
.LASF104:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"__int64_t"
.LASF113:
	.string	"TG1WDT_SYS_RESET"
.LASF315:
	.string	"rtc_wdt_is_on"
.LASF247:
	.string	"calc_crc"
.LASF219:
	.string	"rtc_ticks_at_sleep_start"
.LASF187:
	.string	"RTC_WDT_LENGTH_300ns"
.LASF17:
	.string	"uint32_t"
.LASF306:
	.string	"_lock_acquire"
.LASF149:
	.string	"lslp_mem_inf_fpu"
.LASF78:
	.string	"ESP_PD_DOMAIN_RTC_PERIPH"
.LASF2:
	.string	"short unsigned int"
.LASF321:
	.string	"rtc_wdt_enable"
.LASF146:
	.string	"source_freq_mhz"
.LASF217:
	.string	"ext0_rtc_gpio_num"
.LASF289:
	.string	"s_config"
.LASF222:
	.string	"flash_enable_time_us"
.LASF9:
	.string	"__int32_t"
.LASF18:
	.string	"int64_t"
.LASF84:
	.string	"ESP_PD_OPTION_OFF"
.LASF212:
	.string	"sleep_duration"
.LASF92:
	.string	"ESP_SLEEP_WAKEUP_TIMER"
.LASF166:
	.string	"rtc_sleep_config_t"
.LASF150:
	.string	"rtc_mem_inf_fpu"
.LASF88:
	.string	"ESP_SLEEP_WAKEUP_UNDEFINED"
.LASF218:
	.string	"sleep_time_adjustment"
.LASF143:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF224:
	.string	"option_str"
.LASF137:
	.string	"SDIO_IDLE_INT"
.LASF329:
	.string	"esp_log_write"
.LASF213:
	.string	"wakeup_triggers"
.LASF244:
	.string	"esp_light_sleep_inner"
.LASF294:
	.string	"ets_get_detected_xtal_freq"
.LASF335:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF142:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF126:
	.string	"TIMER_EXPIRE"
.LASF138:
	.string	"RTC_WDT_INT"
.LASF297:
	.string	"esp_clk_slowclk_cal_get"
.LASF221:
	.string	"pd_flags"
.LASF339:
	.string	"esp_deep_sleep_disable_rom_logging"
.LASF300:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF154:
	.string	"rtc_peri_pd_en"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
