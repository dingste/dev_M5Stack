	.file	"gpio.c"
	.text
.Ltext0:
	.section	.text.rtc_gpio_is_valid_gpio,"ax",@progbits
	.literal_position
	.literal .LC0, rtc_gpio_desc
	.align	4
	.type	rtc_gpio_is_valid_gpio, @function
rtc_gpio_is_valid_gpio:
.LFB26:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/rtc_io.h"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 43 0
	movi.n	a8, 0x27
	movi.n	a9, 0
	bltu	a8, a2, .L2
	.loc 1 43 0 is_stmt 0 discriminator 1
	addx2	a8, a2, a2
	addx4	a8, a8, a2
	l32r	a2, .LC0
.LVL1:
	addx4	a8, a8, a2
	l32i.n	a8, a8, 0
	movi.n	a2, 1
	movnez	a9, a2, a8
.L2:
	.loc 1 44 0 is_stmt 1
	mov.n	a2, a9
	retw.n
.LFE26:
	.size	rtc_gpio_is_valid_gpio, .-rtc_gpio_is_valid_gpio
	.section	.text.gpio_intr_status_clr,"ax",@progbits
	.literal_position
	.literal .LC1, GPIO
	.align	4
	.type	gpio_intr_status_clr, @function
gpio_intr_status_clr:
.LFB32:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/gpio.c"
	.loc 2 110 0
.LVL2:
	entry	sp, 32
.LCFI1:
	movi.n	a8, 1
	.loc 2 111 0
	movi.n	a10, 0x1f
	l32r	a9, .LC1
	.loc 2 112 0
	ssl	a2
	sll	a8, a8
	.loc 2 111 0
	bltu	a10, a2, .L5
	.loc 2 112 0
	memw
	s32i	a8, a9, 76
	retw.n
.L5:
	.loc 2 114 0
	memw
	l32i	a10, a9, 88
	extui	a2, a8, 0, 8
.LVL3:
	movi	a8, -0x100
	and	a8, a10, a8
	or	a8, a8, a2
	memw
	s32i	a8, a9, 88
	retw.n
.LFE32:
	.size	gpio_intr_status_clr, .-gpio_intr_status_clr
	.section	.iram1.13,"ax",@progbits
	.literal_position
	.literal .LC2, isr_core_id
	.literal .LC3, GPIO
	.literal .LC4, gpio_isr_func
	.align	4
	.global	gpio_intr_service
	.type	gpio_intr_service, @function
gpio_intr_service:
.LFB44:
	.loc 2 351 0
.LVL4:
	entry	sp, 48
.LCFI2:
.LVL5:
	.loc 2 355 0
	l32r	a2, .LC2
.LVL6:
	l32r	a3, .LC3
	l32i.n	a2, a2, 0
	bnez.n	a2, .L8
	.loc 2 355 0 is_stmt 0 discriminator 1
	memw
	l32i	a5, a3, 104
.LVL7:
	.loc 2 357 0 is_stmt 1 discriminator 1
	memw
	l32i	a4, a3, 124
	j	.L31
.LVL8:
.L8:
	.loc 2 355 0 discriminator 2
	memw
	l32i	a5, a3, 96
.LVL9:
	.loc 2 357 0 discriminator 2
	memw
	l32i	a4, a3, 116
.L31:
	.loc 2 359 0 discriminator 2
	l32r	a7, .LC4
	.loc 2 357 0 discriminator 2
	extui	a4, a4, 0, 8
.LVL10:
	.loc 2 359 0 discriminator 2
	l32i.n	a8, a7, 0
	movi.n	a2, 0
	.loc 2 363 0 discriminator 2
	movi.n	a6, 0x1f
.LVL11:
.L32:
	.loc 2 359 0 discriminator 4
	beq	a8, a2, .L7
.LVL12:
	.loc 2 363 0
	bltu	a6, a2, .L11
	.loc 2 364 0
	bbc	a5, a2, .L12
	.loc 2 365 0
	l32i.n	a8, a7, 0
	addx8	a8, a2, a8
	l32i.n	a9, a8, 0
	beqz.n	a9, .L13
	.loc 2 366 0
	l32i.n	a10, a8, 4
	callx8	a9
.LVL13:
.L13:
	.loc 2 368 0
	movi.n	a8, 1
	ssl	a2
	sll	a8, a8
	memw
	s32i	a8, a3, 76
	j	.L12
.L11:
	.loc 2 371 0
	addi	a9, a2, -32
	bbc	a4, a9, .L12
	.loc 2 372 0
	l32i.n	a10, a7, 0
	addx8	a10, a2, a10
	l32i.n	a8, a10, 0
	beqz.n	a8, .L14
	.loc 2 373 0
	l32i.n	a10, a10, 4
	s32i.n	a9, sp, 0
	callx8	a8
.LVL14:
	l32i.n	a9, sp, 0
.L14:
	.loc 2 375 0
	movi.n	a8, 1
	memw
	l32i	a10, a3, 88
	ssl	a9
	sll	a9, a8
	movi	a8, -0x100
	extui	a9, a9, 0, 8
	and	a8, a10, a8
	or	a8, a8, a9
	memw
	s32i	a8, a3, 88
.L12:
	.loc 2 378 0
	addi.n	a2, a2, 1
.LVL15:
	movi.n	a8, 0x28
	j	.L32
.LVL16:
.L7:
	retw.n
.LFE44:
	.size	gpio_intr_service, .-gpio_intr_service
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"gpio"
.LC9:
	.string	"\033[0;31mE (%d) %s: %s(%d): %s\033[0m\n"
.LC11:
	.string	"GPIO number error"
	.section	.text.gpio_output_disable,"ax",@progbits
	.literal_position
	.literal .LC5, GPIO_PIN_MUX_REG
	.literal .LC6, __FUNCTION__$5001
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC13, GPIO
	.literal .LC14, 268243276
	.align	4
	.type	gpio_output_disable, @function
gpio_output_disable:
.LFB36:
	.loc 2 149 0
.LVL17:
	entry	sp, 48
.LCFI3:
	.loc 2 150 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L34
	.loc 2 150 0 is_stmt 0 discriminator 2
	l32r	a8, .LC5
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L35
.L34:
	.loc 2 150 0 discriminator 6
	call8	esp_log_timestamp
.LVL18:
	l32r	a2, .LC12
.LVL19:
	l32r	a11, .LC8
	s32i.n	a2, sp, 4
	l32r	a15, .LC6
	movi	a2, 0x96
	l32r	a12, .LC10
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	movi	a2, 0x102
	retw.n
.LVL21:
.L35:
	movi.n	a8, 1
.LBB12:
.LBB13:
	.loc 2 151 0 is_stmt 1
	movi.n	a9, 0x1f
	l32r	a10, .LC13
	.loc 2 152 0
	ssl	a2
	sll	a8, a8
	.loc 2 151 0
	bltu	a9, a2, .L37
	.loc 2 152 0
	memw
	s32i.n	a8, a10, 40
	j	.L38
.L37:
	.loc 2 154 0
	memw
	l32i.n	a11, a10, 52
	extui	a9, a8, 0, 8
	movi	a8, -0x100
	and	a8, a11, a8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 52
.L38:
	.loc 2 158 0
	l32r	a8, .LC14
	add.n	a2, a2, a8
.LVL22:
	slli	a2, a2, 2
.LVL23:
	movi	a8, 0x100
	memw
	s32i.n	a8, a2, 0
	movi.n	a2, 0
.LBE13:
.LBE12:
	.loc 2 162 0
	retw.n
.LFE36:
	.size	gpio_output_disable, .-gpio_output_disable
	.section	.rodata.str1.1
.LC19:
	.string	"GPIO output gpio_num error"
	.section	.text.gpio_output_enable,"ax",@progbits
	.literal_position
	.literal .LC15, GPIO_PIN_MUX_REG
	.literal .LC16, __FUNCTION__$5005
	.literal .LC17, .LC7
	.literal .LC18, .LC9
	.literal .LC20, .LC19
	.literal .LC21, GPIO
	.align	4
	.type	gpio_output_enable, @function
gpio_output_enable:
.LFB37:
	.loc 2 165 0
.LVL24:
	entry	sp, 48
.LCFI4:
	.loc 2 165 0
	mov.n	a10, a2
	.loc 2 166 0
	movi.n	a2, 0x27
.LVL25:
	bltu	a2, a10, .L40
	.loc 2 166 0 is_stmt 0 discriminator 2
	l32r	a8, .LC15
	addx4	a8, a10, a8
	l32i.n	a2, a8, 0
	movi.n	a8, 1
	beqz.n	a2, .L40
	movi.n	a2, 0x21
	bltu	a2, a10, .L40
.LVL26:
.LBB16:
.LBB17:
	.loc 2 167 0 is_stmt 1 discriminator 2
	movi.n	a2, 0x1f
	l32r	a11, .LC21
	bltu	a2, a10, .L45
	j	.L48
.LVL27:
.L40:
.LBE17:
.LBE16:
	.loc 2 166 0 discriminator 8
	call8	esp_log_timestamp
.LVL28:
	l32r	a2, .LC20
	l32r	a11, .LC17
	s32i.n	a2, sp, 4
	l32r	a15, .LC16
	movi	a2, 0xa6
	l32r	a12, .LC18
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
	movi	a2, 0x102
	retw.n
.LVL30:
.L48:
.LBB19:
.LBB18:
	.loc 2 168 0
	ssl	a10
	sll	a8, a8
	memw
	s32i.n	a8, a11, 36
	j	.L46
.L45:
	.loc 2 170 0
	ssl	a10
	sll	a8, a8
	memw
	l32i.n	a2, a11, 48
	extui	a9, a8, 0, 8
	movi	a8, -0x100
	and	a8, a2, a8
	or	a8, a8, a9
	memw
	s32i.n	a8, a11, 48
.L46:
	.loc 2 172 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi	a11, 0x100
	call8	gpio_matrix_out
.LVL31:
	movi.n	a2, 0
.LBE18:
.LBE19:
	.loc 2 174 0
	retw.n
.LFE37:
	.size	gpio_output_enable, .-gpio_output_enable
	.section	.text.gpio_pullup_en,"ax",@progbits
	.literal_position
	.literal .LC22, GPIO_PIN_MUX_REG
	.literal .LC23, __FUNCTION__$4965
	.literal .LC24, .LC7
	.literal .LC25, .LC9
	.literal .LC26, .LC11
	.align	4
	.global	gpio_pullup_en
	.type	gpio_pullup_en, @function
gpio_pullup_en:
.LFB27:
	.loc 2 58 0
.LVL32:
	entry	sp, 48
.LCFI5:
	.loc 2 59 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L50
	.loc 2 59 0 is_stmt 0 discriminator 2
	l32r	a3, .LC22
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L51
.L50:
	.loc 2 59 0 discriminator 6
	call8	esp_log_timestamp
.LVL33:
	l32r	a2, .LC26
.LVL34:
	l32r	a11, .LC24
	s32i.n	a2, sp, 4
	l32r	a15, .LC23
	movi.n	a2, 0x3b
	l32r	a12, .LC25
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	movi	a2, 0x102
	retw.n
.LVL36:
.L51:
	.loc 2 60 0 is_stmt 1
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL37:
	beqz.n	a10, .L53
	.loc 2 61 0
	mov.n	a10, a2
	call8	rtc_gpio_pullup_en
.LVL38:
.L54:
	.loc 2 65 0
	movi.n	a2, 0
	retw.n
.LVL39:
.L53:
	.loc 2 63 0
	memw
	l32i.n	a8, a3, 0
	movi	a2, 0x100
.LVL40:
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	j	.L54
.LFE27:
	.size	gpio_pullup_en, .-gpio_pullup_en
	.section	.text.gpio_pullup_dis,"ax",@progbits
	.literal_position
	.literal .LC27, GPIO_PIN_MUX_REG
	.literal .LC28, __FUNCTION__$4969
	.literal .LC29, .LC7
	.literal .LC30, .LC9
	.literal .LC31, .LC11
	.align	4
	.global	gpio_pullup_dis
	.type	gpio_pullup_dis, @function
gpio_pullup_dis:
.LFB28:
	.loc 2 69 0
.LVL41:
	entry	sp, 48
.LCFI6:
	.loc 2 70 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L56
	.loc 2 70 0 is_stmt 0 discriminator 2
	l32r	a3, .LC27
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L57
.L56:
	.loc 2 70 0 discriminator 6
	call8	esp_log_timestamp
.LVL42:
	l32r	a2, .LC31
.LVL43:
	l32r	a11, .LC29
	s32i.n	a2, sp, 4
	l32r	a15, .LC28
	movi.n	a2, 0x46
	l32r	a12, .LC30
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	movi	a2, 0x102
	retw.n
.LVL45:
.L57:
	.loc 2 71 0 is_stmt 1
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL46:
	beqz.n	a10, .L59
	.loc 2 72 0
	mov.n	a10, a2
	call8	rtc_gpio_pullup_dis
.LVL47:
.L60:
	.loc 2 76 0
	movi.n	a2, 0
	retw.n
.LVL48:
.L59:
	.loc 2 74 0
	memw
	l32i.n	a8, a3, 0
	movi	a2, -0x101
.LVL49:
	and	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	j	.L60
.LFE28:
	.size	gpio_pullup_dis, .-gpio_pullup_dis
	.section	.text.gpio_pulldown_en,"ax",@progbits
	.literal_position
	.literal .LC32, GPIO_PIN_MUX_REG
	.literal .LC33, __FUNCTION__$4973
	.literal .LC34, .LC7
	.literal .LC35, .LC9
	.literal .LC36, .LC11
	.align	4
	.global	gpio_pulldown_en
	.type	gpio_pulldown_en, @function
gpio_pulldown_en:
.LFB29:
	.loc 2 80 0
.LVL50:
	entry	sp, 48
.LCFI7:
	.loc 2 81 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L62
	.loc 2 81 0 is_stmt 0 discriminator 2
	l32r	a3, .LC32
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L63
.L62:
	.loc 2 81 0 discriminator 6
	call8	esp_log_timestamp
.LVL51:
	l32r	a2, .LC36
.LVL52:
	l32r	a11, .LC34
	s32i.n	a2, sp, 4
	l32r	a15, .LC33
	movi.n	a2, 0x51
	l32r	a12, .LC35
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	movi	a2, 0x102
	retw.n
.LVL54:
.L63:
	.loc 2 82 0 is_stmt 1
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL55:
	beqz.n	a10, .L65
	.loc 2 83 0
	mov.n	a10, a2
	call8	rtc_gpio_pulldown_en
.LVL56:
.L66:
	.loc 2 87 0
	movi.n	a2, 0
	retw.n
.LVL57:
.L65:
	.loc 2 85 0
	memw
	l32i.n	a8, a3, 0
	movi	a2, 0x80
.LVL58:
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	j	.L66
.LFE29:
	.size	gpio_pulldown_en, .-gpio_pulldown_en
	.section	.text.gpio_pulldown_dis,"ax",@progbits
	.literal_position
	.literal .LC37, GPIO_PIN_MUX_REG
	.literal .LC38, __FUNCTION__$4977
	.literal .LC39, .LC7
	.literal .LC40, .LC9
	.literal .LC41, .LC11
	.align	4
	.global	gpio_pulldown_dis
	.type	gpio_pulldown_dis, @function
gpio_pulldown_dis:
.LFB30:
	.loc 2 91 0
.LVL59:
	entry	sp, 48
.LCFI8:
	.loc 2 92 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L68
	.loc 2 92 0 is_stmt 0 discriminator 2
	l32r	a3, .LC37
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L69
.L68:
	.loc 2 92 0 discriminator 6
	call8	esp_log_timestamp
.LVL60:
	l32r	a2, .LC41
.LVL61:
	l32r	a11, .LC39
	s32i.n	a2, sp, 4
	l32r	a15, .LC38
	movi.n	a2, 0x5c
	l32r	a12, .LC40
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL62:
	movi	a2, 0x102
	retw.n
.LVL63:
.L69:
	.loc 2 93 0 is_stmt 1
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL64:
	beqz.n	a10, .L71
	.loc 2 94 0
	mov.n	a10, a2
	call8	rtc_gpio_pulldown_dis
.LVL65:
.L72:
	.loc 2 98 0
	movi.n	a2, 0
	retw.n
.LVL66:
.L71:
	.loc 2 96 0
	memw
	l32i.n	a8, a3, 0
	movi	a2, -0x81
.LVL67:
	and	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	j	.L72
.LFE30:
	.size	gpio_pulldown_dis, .-gpio_pulldown_dis
	.section	.rodata.str1.1
.LC47:
	.string	"GPIO interrupt type error"
	.section	.text.gpio_set_intr_type,"ax",@progbits
	.literal_position
	.literal .LC42, GPIO_PIN_MUX_REG
	.literal .LC43, __FUNCTION__$4982
	.literal .LC44, .LC7
	.literal .LC45, .LC9
	.literal .LC46, .LC11
	.literal .LC48, .LC47
	.literal .LC49, GPIO
	.align	4
	.global	gpio_set_intr_type
	.type	gpio_set_intr_type, @function
gpio_set_intr_type:
.LFB31:
	.loc 2 102 0
.LVL68:
	entry	sp, 48
.LCFI9:
	.loc 2 103 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L74
	.loc 2 103 0 is_stmt 0 discriminator 2
	l32r	a8, .LC42
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L75
.L74:
	.loc 2 103 0 discriminator 6
	call8	esp_log_timestamp
.LVL69:
	l32r	a2, .LC46
.LVL70:
	l32r	a11, .LC44
	s32i.n	a2, sp, 4
	movi	a2, 0x67
	j	.L78
.LVL71:
.L75:
	.loc 2 104 0 is_stmt 1
	bltui	a3, 6, .L77
.LVL72:
.LBB22:
.LBB23:
	call8	esp_log_timestamp
.LVL73:
	l32r	a2, .LC48
.LVL74:
	l32r	a11, .LC44
	s32i.n	a2, sp, 4
	movi	a2, 0x68
.LVL75:
.L78:
	l32r	a15, .LC43
	l32r	a12, .LC45
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL76:
	movi	a2, 0x102
	retw.n
.LVL77:
.L77:
.LBE23:
.LBE22:
	.loc 2 105 0
	l32r	a8, .LC49
	addi	a2, a2, 32
.LVL78:
	addx4	a2, a2, a8
.LVL79:
	memw
	l32i.n	a9, a2, 8
	extui	a3, a3, 0, 3
.LVL80:
	slli	a8, a3, 7
	movi	a3, -0x381
	and	a3, a9, a3
	or	a3, a3, a8
	memw
	s32i.n	a3, a2, 8
	.loc 2 106 0
	movi.n	a2, 0
	.loc 2 107 0
	retw.n
.LFE31:
	.size	gpio_set_intr_type, .-gpio_set_intr_type
	.section	.text.gpio_intr_enable,"ax",@progbits
	.literal_position
	.literal .LC50, GPIO_PIN_MUX_REG
	.literal .LC51, __FUNCTION__$4993
	.literal .LC52, .LC7
	.literal .LC53, .LC9
	.literal .LC54, .LC11
	.literal .LC55, gpio_spinlock
	.literal .LC56, isr_core_id
	.literal .LC57, GPIO
	.literal .LC58, -253953
	.literal .LC59, 32768
	.literal .LC60, 8192
	.align	4
	.global	gpio_intr_enable
	.type	gpio_intr_enable, @function
gpio_intr_enable:
.LFB34:
	.loc 2 130 0
.LVL81:
	entry	sp, 48
.LCFI10:
	.loc 2 131 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L80
	.loc 2 131 0 is_stmt 0 discriminator 2
	l32r	a3, .LC50
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L81
.L80:
	.loc 2 131 0 discriminator 6
	call8	esp_log_timestamp
.LVL82:
	l32r	a2, .LC54
.LVL83:
	l32r	a11, .LC52
	s32i.n	a2, sp, 4
	l32r	a15, .LC51
	movi	a2, 0x83
	l32r	a12, .LC53
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	movi	a2, 0x102
	retw.n
.LVL85:
.L81:
.LBB30:
.LBB31:
	.loc 2 132 0 is_stmt 1
	l32r	a4, .LC55
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL86:
	.loc 2 133 0
	l32r	a3, .LC56
	mov.n	a10, a4
	l32i.n	a8, a3, 0
	bnei	a8, 3, .L83
.LBB32:
.LBB33:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 3 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL87:
#NO_APP
.LBE33:
.LBE32:
	.loc 2 134 0
	s32i.n	a4, a3, 0
.LVL88:
.L83:
	.loc 2 136 0
	call8	vTaskExitCritical
.LVL89:
.LBB34:
.LBB35:
	.loc 2 120 0
	mov.n	a10, a2
.LBE35:
.LBE34:
	.loc 2 137 0
	l32i.n	a3, a3, 0
.LVL90:
.LBB37:
.LBB36:
	.loc 2 120 0
	call8	gpio_intr_status_clr
.LVL91:
	addi	a8, a2, 32
	l32r	a4, .LC57
	l32r	a9, .LC58
	.loc 2 121 0
	bnez.n	a3, .L84
	.loc 2 122 0
	addx4	a8, a8, a4
	memw
	l32i.n	a2, a8, 8
.LVL92:
	and	a9, a2, a9
	l32r	a2, .LC59
	or	a9, a9, a2
	memw
	s32i.n	a9, a8, 8
	mov.n	a2, a3
	retw.n
.LVL93:
.L84:
	.loc 2 124 0
	addx4	a2, a8, a4
.LVL94:
	memw
	l32i.n	a3, a2, 8
.LVL95:
	and	a9, a3, a9
	l32r	a3, .LC60
	or	a9, a9, a3
	memw
	s32i.n	a9, a2, 8
	movi.n	a2, 0
.LBE36:
.LBE37:
.LBE31:
.LBE30:
	.loc 2 138 0
	retw.n
.LFE34:
	.size	gpio_intr_enable, .-gpio_intr_enable
	.section	.text.gpio_intr_disable,"ax",@progbits
	.literal_position
	.literal .LC61, GPIO_PIN_MUX_REG
	.literal .LC62, __FUNCTION__$4997
	.literal .LC63, .LC7
	.literal .LC64, .LC9
	.literal .LC65, .LC11
	.literal .LC66, GPIO
	.literal .LC67, -253953
	.align	4
	.global	gpio_intr_disable
	.type	gpio_intr_disable, @function
gpio_intr_disable:
.LFB35:
	.loc 2 141 0
.LVL96:
	entry	sp, 48
.LCFI11:
	.loc 2 141 0
	mov.n	a10, a2
	.loc 2 142 0
	movi.n	a2, 0x27
.LVL97:
	bltu	a2, a10, .L86
	.loc 2 142 0 is_stmt 0 discriminator 2
	l32r	a8, .LC61
	addx4	a8, a10, a8
	l32i.n	a2, a8, 0
	bnez.n	a2, .L87
.L86:
	.loc 2 142 0 discriminator 6
	call8	esp_log_timestamp
.LVL98:
	l32r	a2, .LC65
	l32r	a11, .LC63
	s32i.n	a2, sp, 4
	l32r	a15, .LC62
	movi	a2, 0x8e
	l32r	a12, .LC64
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL99:
	movi	a2, 0x102
	retw.n
.LVL100:
.L87:
	.loc 2 143 0 is_stmt 1
	l32r	a2, .LC66
	addi	a8, a10, 32
	addx4	a8, a8, a2
	memw
	l32i.n	a2, a8, 8
	l32r	a9, .LC67
	and	a9, a2, a9
	memw
	s32i.n	a9, a8, 8
	.loc 2 144 0
	call8	gpio_intr_status_clr
.LVL101:
	.loc 2 145 0
	movi.n	a2, 0
	.loc 2 146 0
	retw.n
.LFE35:
	.size	gpio_intr_disable, .-gpio_intr_disable
	.section	.text.gpio_set_level,"ax",@progbits
	.literal_position
	.literal .LC68, GPIO_PIN_MUX_REG
	.literal .LC69, __FUNCTION__$5010
	.literal .LC70, .LC7
	.literal .LC71, .LC9
	.literal .LC72, .LC19
	.literal .LC73, GPIO
	.align	4
	.global	gpio_set_level
	.type	gpio_set_level, @function
gpio_set_level:
.LFB38:
	.loc 2 177 0
.LVL102:
	entry	sp, 48
.LCFI12:
	.loc 2 177 0
	mov.n	a9, a2
	.loc 2 178 0
	movi.n	a2, 0x27
.LVL103:
	bltu	a2, a9, .L90
	.loc 2 178 0 is_stmt 0 discriminator 2
	l32r	a2, .LC68
	movi.n	a8, 1
	addx4	a2, a9, a2
	l32i.n	a2, a2, 0
	movi.n	a10, 0
	moveqz	a10, a8, a2
	extui	a2, a10, 0, 8
	bnez.n	a2, .L90
	movi.n	a10, 0x21
	bltu	a10, a9, .L90
	movi.n	a11, 0x1f
	l32r	a10, .LC73
	.loc 2 179 0 is_stmt 1 discriminator 2
	beqz.n	a3, .L95
	j	.L99
.L90:
	.loc 2 178 0 discriminator 8
	call8	esp_log_timestamp
.LVL104:
	l32r	a2, .LC72
	l32r	a11, .LC70
	s32i.n	a2, sp, 4
	l32r	a15, .LC69
	movi	a2, 0xb2
	l32r	a12, .LC71
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL105:
	movi	a2, 0x102
	retw.n
.LVL106:
.L99:
	.loc 2 181 0
	ssl	a9
	sll	a8, a8
	.loc 2 180 0
	bltu	a11, a9, .L96
	.loc 2 181 0
	memw
	s32i.n	a8, a10, 8
	retw.n
.L96:
	.loc 2 183 0
	memw
	l32i.n	a11, a10, 20
	movi	a3, -0x100
.LVL107:
	extui	a9, a8, 0, 8
.LVL108:
	and	a8, a11, a3
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 20
	retw.n
.LVL109:
.L95:
	.loc 2 187 0
	ssl	a9
	sll	a8, a8
	.loc 2 186 0
	bltu	a11, a9, .L97
	.loc 2 187 0
	memw
	s32i.n	a8, a10, 12
	j	.L100
.L97:
	.loc 2 189 0
	memw
	l32i.n	a11, a10, 24
	movi	a2, -0x100
	extui	a9, a8, 0, 8
.LVL110:
	and	a8, a11, a2
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 24
.L100:
	.loc 2 192 0
	mov.n	a2, a3
	.loc 2 193 0
	retw.n
.LFE38:
	.size	gpio_set_level, .-gpio_set_level
	.section	.text.gpio_get_level,"ax",@progbits
	.literal_position
	.literal .LC74, GPIO
	.align	4
	.global	gpio_get_level
	.type	gpio_get_level, @function
gpio_get_level:
.LFB39:
	.loc 2 196 0
.LVL111:
	entry	sp, 32
.LCFI13:
	.loc 2 197 0
	movi.n	a9, 0x1f
	l32r	a8, .LC74
	bltu	a9, a2, .L102
	.loc 2 198 0
	memw
	l32i.n	a8, a8, 60
	ssr	a2
	srl	a2, a8
.LVL112:
	j	.L104
.LVL113:
.L102:
	.loc 2 200 0
	memw
	l32i	a8, a8, 64
	extui	a8, a8, 0, 8
	ssr	a2
	sra	a2, a8
.LVL114:
.L104:
	extui	a2, a2, 0, 1
	.loc 2 202 0
	retw.n
.LFE39:
	.size	gpio_get_level, .-gpio_get_level
	.section	.rodata.str1.1
.LC80:
	.string	"GPIO pull mode error"
	.section	.text.gpio_set_pull_mode,"ax",@progbits
	.literal_position
	.literal .LC75, GPIO_PIN_MUX_REG
	.literal .LC76, __FUNCTION__$5018
	.literal .LC77, .LC7
	.literal .LC78, .LC9
	.literal .LC79, .LC11
	.literal .LC81, .LC80
	.align	4
	.global	gpio_set_pull_mode
	.type	gpio_set_pull_mode, @function
gpio_set_pull_mode:
.LFB40:
	.loc 2 205 0
.LVL115:
	entry	sp, 48
.LCFI14:
	.loc 2 206 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L106
	.loc 2 206 0 is_stmt 0 discriminator 2
	l32r	a8, .LC75
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L107
.L106:
	.loc 2 206 0 discriminator 6
	call8	esp_log_timestamp
.LVL116:
	l32r	a2, .LC79
.LVL117:
	l32r	a11, .LC77
	s32i.n	a2, sp, 4
	movi	a2, 0xce
	j	.L114
.LVL118:
.L107:
	.loc 2 207 0 is_stmt 1
	bltui	a3, 4, .L109
	.loc 2 207 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL119:
	l32r	a2, .LC81
.LVL120:
	l32r	a11, .LC77
	s32i.n	a2, sp, 4
	movi	a2, 0xcf
.L114:
	l32r	a15, .LC76
	l32r	a12, .LC78
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL121:
	movi	a2, 0x102
	retw.n
.LVL122:
.L109:
	.loc 2 219 0 is_stmt 1
	mov.n	a10, a2
	.loc 2 209 0
	beqi	a3, 2, .L111
	beqi	a3, 3, .L112
	beqi	a3, 1, .L113
	.loc 2 211 0
	call8	gpio_pulldown_dis
.LVL123:
	j	.L117
.L113:
	.loc 2 215 0
	call8	gpio_pulldown_en
.LVL124:
	j	.L116
.L111:
	.loc 2 219 0
	call8	gpio_pulldown_en
.LVL125:
.L117:
	.loc 2 220 0
	mov.n	a10, a2
	call8	gpio_pullup_en
.LVL126:
	j	.L115
.L112:
	.loc 2 223 0
	call8	gpio_pulldown_dis
.LVL127:
.L116:
	.loc 2 224 0
	mov.n	a10, a2
	call8	gpio_pullup_dis
.LVL128:
.L115:
	.loc 2 208 0
	movi.n	a2, 0
.LVL129:
	.loc 2 232 0
	retw.n
.LFE40:
	.size	gpio_set_pull_mode, .-gpio_set_pull_mode
	.section	.rodata.str1.1
.LC87:
	.string	"\033[0;31mE (%d) %s: io_num=%d can only be input\033[0m\n"
	.section	.text.gpio_set_direction,"ax",@progbits
	.literal_position
	.literal .LC82, GPIO_PIN_MUX_REG
	.literal .LC83, __FUNCTION__$5030
	.literal .LC84, .LC7
	.literal .LC85, .LC9
	.literal .LC86, .LC11
	.literal .LC88, .LC87
	.literal .LC89, GPIO
	.align	4
	.global	gpio_set_direction
	.type	gpio_set_direction, @function
gpio_set_direction:
.LFB41:
	.loc 2 235 0
.LVL130:
	entry	sp, 48
.LCFI15:
	.loc 2 236 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L119
	.loc 2 236 0 is_stmt 0 discriminator 2
	l32r	a8, .LC82
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L120
.L119:
	.loc 2 236 0 discriminator 6
	call8	esp_log_timestamp
.LVL131:
	l32r	a2, .LC86
.LVL132:
	l32r	a11, .LC84
	s32i.n	a2, sp, 4
	l32r	a15, .LC83
	movi	a2, 0xec
	l32r	a12, .LC85
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL133:
	j	.L132
.LVL134:
.L120:
	.loc 2 237 0 is_stmt 1
	movi.n	a9, 0x21
	bgeu	a9, a2, .L122
	.loc 2 237 0 is_stmt 0 discriminator 1
	bbci	a3, 1, .L122
	.loc 2 238 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL135:
	l32r	a11, .LC84
	l32r	a12, .LC88
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL136:
.L132:
	.loc 2 239 0 discriminator 2
	movi	a2, 0x102
	retw.n
.LVL137:
.L122:
	.loc 2 243 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, 0x200
	or	a9, a10, a9
	.loc 2 242 0
	bbsi	a3, 0, .L131
.L123:
	.loc 2 245 0
	movi	a9, -0x201
	and	a9, a10, a9
.L131:
	memw
	s32i.n	a9, a8, 0
	.loc 2 248 0
	mov.n	a10, a2
	.loc 2 247 0
	bbci	a3, 1, .L125
	.loc 2 248 0
	call8	gpio_output_enable
.LVL138:
	j	.L126
.L125:
	.loc 2 250 0
	call8	gpio_output_disable
.LVL139:
.L126:
	.loc 2 252 0
	movi.n	a9, 4
	l32r	a8, .LC89
	addi	a15, a2, 32
	and	a3, a3, a9
.LVL140:
	.loc 2 253 0
	addx4	a8, a15, a8
	.loc 2 252 0
	beqz.n	a3, .L127
	.loc 2 253 0
	memw
	l32i.n	a2, a8, 8
.LVL141:
	or	a9, a2, a9
	memw
	s32i.n	a9, a8, 8
.L133:
	.loc 2 257 0
	movi.n	a2, 0
	retw.n
.LVL142:
.L127:
	.loc 2 255 0
	memw
	l32i.n	a9, a8, 8
	movi.n	a2, -5
.LVL143:
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 8
	j	.L133
.LFE41:
	.size	gpio_set_direction, .-gpio_set_direction
	.section	.rodata.str1.1
.LC94:
	.string	"\033[0;31mE (%d) %s: GPIO_PIN mask error \033[0m\n"
.LC96:
	.string	"\033[0;31mE (%d) %s: GPIO34-39 can only be used as input mode\033[0m\n"
	.global	__lshrdi3
.LC99:
	.string	"\033[0;31mE (%d) %s: IO%d is not a valid GPIO\033[0m\n"
.LC102:
	.string	"\033[0;32mI (%d) %s: GPIO[%d]| InputEn: %d| OutputEn: %d| OpenDrain: %d| Pullup: %d| Pulldown: %d| Intr:%d \033[0m\n"
	.section	.text.gpio_config,"ax",@progbits
	.literal_position
	.literal .LC93, .LC7
	.literal .LC95, .LC94
	.literal .LC97, .LC96
	.literal .LC98, GPIO_PIN_MUX_REG
	.literal .LC100, .LC99
	.literal .LC101, GPIO
	.literal .LC103, .LC102
	.literal .LC104, -28673
	.literal .LC105, 8192
	.align	4
	.global	gpio_config
	.type	gpio_config, @function
gpio_config:
.LFB42:
	.loc 2 261 0
.LVL144:
	entry	sp, 80
.LCFI16:
	.loc 2 262 0
	l32i.n	a6, a2, 0
	l32i.n	a7, a2, 4
.LVL145:
	.loc 2 270 0
	addi.n	a4, a6, -1
	movi.n	a5, 1
	bltu	a4, a6, .L136
	movi.n	a5, 0
.L136:
	addi.n	a3, a7, -1
	add.n	a3, a5, a3
	movi	a5, 0xff
	bltu	a5, a3, .L160
	bne	a3, a5, .L135
	movi.n	a3, -2
	bgeu	a3, a4, .L135
.L160:
	.loc 2 271 0 discriminator 2
	call8	esp_log_timestamp
.LVL146:
	l32r	a11, .LC93
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC95
	j	.L168
.L135:
	.loc 2 274 0
	l32i.n	a3, a2, 8
	movi.n	a4, 2
	and	a3, a4, a3
	beqz.n	a3, .L159
	.loc 2 276 0
	movi	a3, 0xfc
	and	a3, a3, a7
	beqz.n	a3, .L159
	.loc 2 277 0
	call8	esp_log_timestamp
.LVL147:
	l32r	a11, .LC93
	l32r	a12, .LC97
	mov.n	a14, a11
	mov.n	a13, a10
.L168:
	movi.n	a10, 1
	call8	esp_log_write
.LVL148:
.L169:
	.loc 2 278 0
	movi	a2, 0x102
.LVL149:
	retw.n
.LVL150:
.L159:
	s32i.n	a3, sp, 44
	s32i.n	a3, sp, 40
	s32i.n	a3, sp, 36
	s32i.n	a3, sp, 32
	mov.n	a4, a3
.LVL151:
.L157:
	.loc 2 283 0
	mov.n	a12, a4
	mov.n	a10, a6
	mov.n	a11, a7
	call8	__lshrdi3
.LVL152:
	bbci	a10, 0, .L141
	.loc 2 282 0
	l32r	a8, .LC98
	addx4	a5, a4, a8
	l32i.n	a5, a5, 0
	.loc 2 284 0
	bnez.n	a5, .L143
	.loc 2 285 0 discriminator 2
	call8	esp_log_timestamp
.LVL153:
	l32r	a11, .LC93
	l32r	a12, .LC100
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL154:
	j	.L169
.L143:
	.loc 2 288 0
	mov.n	a10, a4
	call8	rtc_gpio_is_valid_gpio
.LVL155:
	beqz.n	a10, .L144
	.loc 2 289 0
	mov.n	a10, a4
	call8	rtc_gpio_deinit
.LVL156:
.L144:
	.loc 2 291 0
	l32i.n	a10, a2, 8
	.loc 2 293 0
	memw
	l32i.n	a9, a5, 0
	.loc 2 291 0
	bbci	a10, 0, .L145
.LVL157:
	.loc 2 293 0
	movi	a8, 0x200
	or	a8, a9, a8
	memw
	s32i.n	a8, a5, 0
	.loc 2 292 0
	movi.n	a8, 1
	s32i.n	a8, sp, 32
	j	.L146
.LVL158:
.L145:
	.loc 2 295 0
	movi	a8, -0x201
	and	a8, a9, a8
	memw
	s32i.n	a8, a5, 0
.LVL159:
.L146:
	l32r	a11, .LC101
	addi	a8, a4, 32
	.loc 2 299 0
	addx4	a8, a8, a11
	.loc 2 297 0
	movi.n	a9, 4
	.loc 2 299 0
	memw
	l32i.n	a11, a8, 8
	.loc 2 297 0
	bnone	a10, a9, .L147
.LVL160:
	.loc 2 299 0
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 8
	.loc 2 298 0
	movi.n	a8, 1
	s32i.n	a8, sp, 40
	j	.L148
.LVL161:
.L147:
	.loc 2 301 0
	movi.n	a9, -5
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 8
.LVL162:
.L148:
	.loc 2 303 0
	bbci	a10, 1, .L149
.LVL163:
	.loc 2 305 0
	mov.n	a10, a4
	call8	gpio_output_enable
.LVL164:
	.loc 2 304 0
	movi.n	a8, 1
	s32i.n	a8, sp, 36
	j	.L150
.LVL165:
.L149:
	.loc 2 307 0
	mov.n	a10, a4
	call8	gpio_output_disable
.LVL166:
.L150:
	.loc 2 309 0
	l32i.n	a8, a2, 12
	.loc 2 311 0
	mov.n	a10, a4
	.loc 2 309 0
	beqz.n	a8, .L151
.LVL167:
	.loc 2 311 0
	call8	gpio_pullup_en
.LVL168:
	.loc 2 310 0
	movi.n	a8, 1
	s32i.n	a8, sp, 44
	j	.L152
.LVL169:
.L151:
	.loc 2 313 0
	call8	gpio_pullup_dis
.LVL170:
.L152:
	.loc 2 315 0
	l32i.n	a8, a2, 16
	.loc 2 317 0
	mov.n	a10, a4
	.loc 2 315 0
	beqz.n	a8, .L153
.LVL171:
	.loc 2 317 0
	call8	gpio_pulldown_en
.LVL172:
	.loc 2 316 0
	movi.n	a3, 1
	j	.L154
.LVL173:
.L153:
	.loc 2 319 0
	call8	gpio_pulldown_dis
.LVL174:
.L154:
	.loc 2 321 0 discriminator 9
	call8	esp_log_timestamp
.LVL175:
	l32i.n	a8, a2, 20
	l32r	a11, .LC93
	s32i.n	a8, sp, 20
	l32i.n	a8, sp, 44
	l32r	a12, .LC103
	s32i.n	a8, sp, 12
	l32i.n	a8, sp, 40
	mov.n	a14, a11
	s32i.n	a8, sp, 8
	l32i.n	a8, sp, 36
	mov.n	a13, a10
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 32
	mov.n	a15, a4
	s32i.n	a8, sp, 0
	movi.n	a10, 3
	s32i.n	a3, sp, 16
	call8	esp_log_write
.LVL176:
	.loc 2 322 0 discriminator 9
	l32i.n	a11, a2, 20
	mov.n	a10, a4
	call8	gpio_set_intr_type
.LVL177:
	.loc 2 323 0 discriminator 9
	l32i.n	a8, a2, 20
	.loc 2 324 0 discriminator 9
	mov.n	a10, a4
	.loc 2 323 0 discriminator 9
	beqz.n	a8, .L155
	.loc 2 324 0
	call8	gpio_intr_enable
.LVL178:
	j	.L156
.L155:
	.loc 2 326 0
	call8	gpio_intr_disable
.LVL179:
.L156:
	.loc 2 328 0
	memw
	l32i.n	a9, a5, 0
	l32r	a8, .LC104
	and	a9, a9, a8
	l32r	a8, .LC105
	or	a8, a9, a8
	memw
	s32i.n	a8, a5, 0
.LVL180:
.L141:
	.loc 2 330 0
	addi.n	a4, a4, 1
.LVL181:
	.loc 2 331 0
	movi.n	a5, 0x28
	bne	a4, a5, .L157
	.loc 2 332 0
	movi.n	a2, 0
.LVL182:
	.loc 2 333 0
	retw.n
.LFE42:
	.size	gpio_config, .-gpio_config
	.section	.rodata.str1.1
.LC107:
	.string	"gpio_num >= 0 && GPIO_IS_VALID_GPIO(gpio_num)"
.LC110:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/gpio.c"
	.global	__ashldi3
	.section	.text.gpio_reset_pin,"ax",@progbits
	.literal_position
	.literal .LC106, GPIO_PIN_MUX_REG
	.literal .LC108, .LC107
	.literal .LC109, __func__$5048
	.literal .LC111, .LC110
	.literal .LC112, 1, 0
	.align	4
	.global	gpio_reset_pin
	.type	gpio_reset_pin, @function
gpio_reset_pin:
.LFB43:
	.loc 2 336 0
.LVL183:
	entry	sp, 64
.LCFI17:
	.loc 2 337 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L171
	.loc 2 337 0 is_stmt 0 discriminator 2
	l32r	a8, .LC106
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L172
.L171:
	.loc 2 337 0 discriminator 3
	l32r	a13, .LC108
	l32r	a12, .LC109
	l32r	a10, .LC111
	movi	a11, 0x151
	call8	__assert_func
.LVL184:
.L172:
	.loc 2 338 0 is_stmt 1
	l32r	a10, .LC112
	l32r	a11, .LC112+4
	mov.n	a12, a2
	call8	__ashldi3
.LVL185:
	movi.n	a2, 0
.LVL186:
	s32i.n	a10, sp, 0
	movi.n	a8, 1
	.loc 2 346 0
	mov.n	a10, sp
	.loc 2 338 0
	s32i.n	a11, sp, 4
	s32i.n	a2, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a2, sp, 16
	s32i.n	a2, sp, 20
	.loc 2 346 0
	call8	gpio_config
.LVL187:
	.loc 2 348 0
	retw.n
.LFE43:
	.size	gpio_reset_pin, .-gpio_reset_pin
	.section	.rodata.str1.1
.LC117:
	.string	"GPIO isr service is not installed, call gpio_install_isr_service() first"
	.section	.text.gpio_isr_handler_add,"ax",@progbits
	.literal_position
	.literal .LC113, gpio_isr_func
	.literal .LC114, __FUNCTION__$5063
	.literal .LC115, .LC7
	.literal .LC116, .LC9
	.literal .LC118, .LC117
	.literal .LC119, GPIO_PIN_MUX_REG
	.literal .LC120, .LC11
	.literal .LC121, gpio_spinlock
	.literal .LC122, gpio_isr_handle
	.literal .LC123, GPIO
	.literal .LC124, -253953
	.literal .LC125, 32768
	.literal .LC126, 8192
	.align	4
	.global	gpio_isr_handler_add
	.type	gpio_isr_handler_add, @function
gpio_isr_handler_add:
.LFB45:
	.loc 2 382 0
.LVL188:
	entry	sp, 48
.LCFI18:
	.loc 2 383 0
	l32r	a6, .LC113
	l32i.n	a5, a6, 0
	bnez.n	a5, .L174
	.loc 2 383 0 discriminator 4
	call8	esp_log_timestamp
.LVL189:
	l32r	a2, .LC118
.LVL190:
	l32r	a11, .LC115
	s32i.n	a2, sp, 4
	l32r	a15, .LC114
	movi	a2, 0x17f
	l32r	a12, .LC116
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL191:
	movi	a2, 0x103
	retw.n
.LVL192:
.L174:
	.loc 2 384 0
	movi.n	a5, 0x27
	bltu	a5, a2, .L176
	.loc 2 384 0 is_stmt 0 discriminator 2
	l32r	a5, .LC119
	addx4	a5, a2, a5
	l32i.n	a5, a5, 0
	bnez.n	a5, .L177
.L176:
	.loc 2 384 0 discriminator 6
	call8	esp_log_timestamp
.LVL193:
	l32r	a2, .LC120
.LVL194:
	l32r	a11, .LC115
	s32i.n	a2, sp, 4
	l32r	a15, .LC114
	movi	a2, 0x180
	l32r	a12, .LC116
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL195:
	movi	a2, 0x102
	retw.n
.LVL196:
.L177:
	.loc 2 385 0 is_stmt 1
	l32r	a5, .LC121
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL197:
	.loc 2 386 0
	mov.n	a10, a2
	call8	gpio_intr_disable
.LVL198:
	.loc 2 387 0
	l32i.n	a8, a6, 0
	beqz.n	a8, .L178
	.loc 2 388 0
	addx8	a8, a2, a8
	s32i.n	a3, a8, 0
	.loc 2 389 0
	s32i.n	a4, a8, 4
.L178:
	.loc 2 391 0
	l32r	a6, .LC122
	l32i.n	a10, a6, 0
	call8	esp_intr_get_cpu
.LVL199:
	mov.n	a6, a10
.LVL200:
.LBB40:
.LBB41:
	.loc 2 120 0
	mov.n	a10, a2
	call8	gpio_intr_status_clr
.LVL201:
	l32r	a9, .LC123
	addi	a2, a2, 32
.LVL202:
	l32r	a8, .LC124
	.loc 2 122 0
	addx4	a2, a2, a9
.LVL203:
	.loc 2 121 0
	bnez.n	a6, .L179
	.loc 2 122 0
	memw
	l32i.n	a6, a2, 8
.LVL204:
	l32r	a9, .LC125
	and	a8, a6, a8
	j	.L184
.LVL205:
.L179:
	.loc 2 124 0
	memw
	l32i.n	a6, a2, 8
.LVL206:
	l32r	a9, .LC126
	and	a8, a6, a8
.L184:
	or	a8, a8, a9
	memw
	s32i.n	a8, a2, 8
.LBE41:
.LBE40:
	.loc 2 392 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL207:
	.loc 2 393 0
	movi.n	a2, 0
	.loc 2 394 0
	retw.n
.LFE45:
	.size	gpio_isr_handler_add, .-gpio_isr_handler_add
	.section	.text.gpio_isr_handler_remove,"ax",@progbits
	.literal_position
	.literal .LC127, gpio_isr_func
	.literal .LC128, __FUNCTION__$5067
	.literal .LC129, .LC7
	.literal .LC130, .LC9
	.literal .LC131, .LC117
	.literal .LC132, GPIO_PIN_MUX_REG
	.literal .LC133, .LC11
	.literal .LC134, gpio_spinlock
	.align	4
	.global	gpio_isr_handler_remove
	.type	gpio_isr_handler_remove, @function
gpio_isr_handler_remove:
.LFB46:
	.loc 2 397 0
.LVL208:
	entry	sp, 48
.LCFI19:
	.loc 2 398 0
	l32r	a4, .LC127
	l32i.n	a3, a4, 0
	bnez.n	a3, .L186
	.loc 2 398 0 discriminator 4
	call8	esp_log_timestamp
.LVL209:
	l32r	a2, .LC131
.LVL210:
	l32r	a11, .LC129
	s32i.n	a2, sp, 4
	l32r	a15, .LC128
	movi	a2, 0x18e
	l32r	a12, .LC130
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL211:
	movi	a2, 0x103
	retw.n
.LVL212:
.L186:
	.loc 2 399 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L188
	.loc 2 399 0 is_stmt 0 discriminator 2
	l32r	a3, .LC132
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L189
.L188:
	.loc 2 399 0 discriminator 6
	call8	esp_log_timestamp
.LVL213:
	l32r	a2, .LC133
.LVL214:
	l32r	a11, .LC129
	s32i.n	a2, sp, 4
	l32r	a15, .LC128
	movi	a2, 0x18f
	l32r	a12, .LC130
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL215:
	movi	a2, 0x102
	retw.n
.LVL216:
.L189:
	.loc 2 400 0 is_stmt 1
	l32r	a3, .LC134
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL217:
	.loc 2 401 0
	mov.n	a10, a2
	call8	gpio_intr_disable
.LVL218:
	.loc 2 402 0
	l32i.n	a8, a4, 0
	mov.n	a10, a3
	beqz.n	a8, .L190
	.loc 2 403 0
	addx8	a2, a2, a8
.LVL219:
	movi.n	a3, 0
	s32i.n	a3, a2, 0
	.loc 2 404 0
	s32i.n	a3, a2, 4
.L190:
	.loc 2 406 0
	call8	vTaskExitCritical
.LVL220:
	.loc 2 407 0
	movi.n	a2, 0
	.loc 2 408 0
	retw.n
.LFE46:
	.size	gpio_isr_handler_remove, .-gpio_isr_handler_remove
	.section	.text.gpio_uninstall_isr_service,"ax",@progbits
	.literal_position
	.literal .LC135, gpio_isr_func
	.literal .LC136, gpio_spinlock
	.literal .LC137, gpio_isr_handle
	.literal .LC138, isr_core_id
	.align	4
	.global	gpio_uninstall_isr_service
	.type	gpio_uninstall_isr_service, @function
gpio_uninstall_isr_service:
.LFB48:
	.loc 2 426 0
	entry	sp, 32
.LCFI20:
	.loc 2 427 0
	l32r	a2, .LC135
	l32i.n	a3, a2, 0
	beqz.n	a3, .L194
	.loc 2 430 0
	l32r	a3, .LC136
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL221:
	.loc 2 431 0
	l32r	a8, .LC137
	l32i.n	a10, a8, 0
	call8	esp_intr_free
.LVL222:
	.loc 2 432 0
	l32i.n	a10, a2, 0
	call8	free
.LVL223:
	.loc 2 433 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 2 434 0
	l32r	a2, .LC138
	movi.n	a8, 3
	.loc 2 435 0
	mov.n	a10, a3
	.loc 2 434 0
	s32i.n	a8, a2, 0
	.loc 2 435 0
	call8	vTaskExitCritical
.LVL224:
.L194:
	retw.n
.LFE48:
	.size	gpio_uninstall_isr_service, .-gpio_uninstall_isr_service
	.section	.rodata.str1.1
.LC142:
	.string	"GPIO ISR null"
	.section	.text.gpio_isr_register,"ax",@progbits
	.literal_position
	.literal .LC139, __FUNCTION__$5086
	.literal .LC140, .LC7
	.literal .LC141, .LC9
	.literal .LC143, .LC142
	.literal .LC144, gpio_spinlock
	.literal .LC145, isr_core_id
	.align	4
	.global	gpio_isr_register
	.type	gpio_isr_register, @function
gpio_isr_register:
.LFB50:
	.loc 2 447 0
.LVL225:
	entry	sp, 48
.LCFI21:
	.loc 2 448 0
	bnez.n	a2, .L200
.LVL226:
.LBB50:
.LBB51:
	call8	esp_log_timestamp
.LVL227:
	l32r	a2, .LC143
.LVL228:
	l32r	a11, .LC140
	s32i.n	a2, sp, 4
	l32r	a15, .LC139
	movi	a2, 0x1c0
	l32r	a12, .LC141
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL229:
	movi	a10, 0x102
	j	.L201
.LVL230:
.L200:
.LBE51:
.LBE50:
	.loc 2 455 0
	l32r	a6, .LC144
	mov.n	a10, a6
	call8	vTaskEnterCritical
.LVL231:
	.loc 2 456 0
	l32r	a8, .LC145
	mov.n	a10, a6
	l32i.n	a9, a8, 0
	bnei	a9, 3, .L202
.LBB52:
.LBB53:
	.loc 3 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a6
 extui a6,a6,13,1
# 0 "" 2
.LVL232:
#NO_APP
.LBE53:
.LBE52:
	.loc 2 457 0
	s32i.n	a6, a8, 0
.LVL233:
.L202:
	.loc 2 459 0
	call8	vTaskExitCritical
.LVL234:
.LBB54:
.LBB55:
	.loc 2 443 0
	mov.n	a12, a2
	mov.n	a14, a5
	mov.n	a13, a3
	mov.n	a11, a4
	movi.n	a10, 0x16
	call8	esp_intr_alloc
.LVL235:
.LBE55:
.LBE54:
	.loc 2 468 0
	movi	a2, 0x105
.LVL236:
	movnez	a10, a2, a10
.LVL237:
.L201:
	.loc 2 471 0
	mov.n	a2, a10
	retw.n
.LFE50:
	.size	gpio_isr_register, .-gpio_isr_register
	.section	.rodata.str1.1
.LC150:
	.string	"GPIO isr service already installed"
	.section	.text.gpio_install_isr_service,"ax",@progbits
	.literal_position
	.literal .LC146, gpio_isr_func
	.literal .LC147, __FUNCTION__$5071
	.literal .LC148, .LC7
	.literal .LC149, .LC9
	.literal .LC151, .LC150
	.literal .LC152, gpio_spinlock
	.literal .LC153, gpio_isr_handle
	.literal .LC154, gpio_intr_service
	.align	4
	.global	gpio_install_isr_service
	.type	gpio_install_isr_service, @function
gpio_install_isr_service:
.LFB47:
	.loc 2 411 0
.LVL238:
	entry	sp, 48
.LCFI22:
	.loc 2 412 0
	l32r	a3, .LC146
	l32i.n	a4, a3, 0
	beqz.n	a4, .L205
	.loc 2 412 0 discriminator 4
	call8	esp_log_timestamp
.LVL239:
	l32r	a2, .LC151
.LVL240:
	l32r	a11, .LC148
	s32i.n	a2, sp, 4
	l32r	a15, .LC147
	movi	a2, 0x19c
	l32r	a12, .LC149
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL241:
	movi	a10, 0x103
	j	.L206
.LVL242:
.L205:
	.loc 2 414 0
	l32r	a5, .LC152
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL243:
	.loc 2 415 0
	movi.n	a11, 8
	movi.n	a10, 0x28
	call8	calloc
.LVL244:
	s32i.n	a10, a3, 0
	.loc 2 416 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL245:
	.loc 2 417 0
	l32i.n	a3, a3, 0
	.loc 2 418 0
	movi	a10, 0x101
	.loc 2 417 0
	beqz.n	a3, .L206
	.loc 2 420 0
	l32r	a13, .LC153
	l32r	a10, .LC154
	mov.n	a12, a2
	mov.n	a11, a4
	call8	gpio_isr_register
.LVL246:
.L206:
	.loc 2 423 0
	mov.n	a2, a10
	retw.n
.LFE47:
	.size	gpio_install_isr_service, .-gpio_install_isr_service
	.section	.rodata.str1.1
.LC161:
	.string	"\033[0;31mE (%d) %s: GPIO wakeup only supports level mode, but edge mode set. gpio_num:%u\033[0m\n"
	.section	.text.gpio_wakeup_enable,"ax",@progbits
	.literal_position
	.literal .LC155, GPIO_PIN_MUX_REG
	.literal .LC156, __FUNCTION__$5093
	.literal .LC157, .LC7
	.literal .LC158, .LC9
	.literal .LC159, .LC11
	.literal .LC160, GPIO
	.literal .LC162, .LC161
	.align	4
	.global	gpio_wakeup_enable
	.type	gpio_wakeup_enable, @function
gpio_wakeup_enable:
.LFB51:
	.loc 2 474 0
.LVL247:
	entry	sp, 48
.LCFI23:
	.loc 2 475 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L210
	.loc 2 475 0 is_stmt 0 discriminator 2
	l32r	a8, .LC155
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L211
.L210:
	.loc 2 475 0 discriminator 6
	call8	esp_log_timestamp
.LVL248:
	l32r	a2, .LC159
.LVL249:
	l32r	a11, .LC157
	s32i.n	a2, sp, 4
	l32r	a15, .LC156
	movi	a2, 0x1db
	l32r	a12, .LC158
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL250:
	j	.L215
.LVL251:
.L211:
	.loc 2 477 0 is_stmt 1
	addi	a8, a3, -4
	bgeui	a8, 2, .L213
	.loc 2 478 0
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL252:
	beqz.n	a10, .L214
	.loc 2 479 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_gpio_wakeup_enable
.LVL253:
	j	.L212
.LVL254:
.L214:
	.loc 2 481 0
	l32r	a8, .LC160
	addi	a15, a2, 32
	addx4	a8, a15, a8
	memw
	l32i.n	a11, a8, 8
	extui	a3, a3, 0, 3
.LVL255:
	movi	a2, -0x381
.LVL256:
	slli	a9, a3, 7
	and	a3, a11, a2
	or	a3, a3, a9
	memw
	s32i.n	a3, a8, 8
	.loc 2 482 0
	memw
	l32i.n	a3, a8, 8
	movi	a2, 0x400
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 8
	j	.L212
.LVL257:
.L213:
	.loc 2 485 0 discriminator 2
	call8	esp_log_timestamp
.LVL258:
	l32r	a11, .LC157
	l32r	a12, .LC162
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL259:
.L215:
	.loc 2 486 0 discriminator 2
	movi	a10, 0x102
.LVL260:
.L212:
	.loc 2 489 0
	mov.n	a2, a10
	retw.n
.LFE51:
	.size	gpio_wakeup_enable, .-gpio_wakeup_enable
	.section	.text.gpio_wakeup_disable,"ax",@progbits
	.literal_position
	.literal .LC163, GPIO_PIN_MUX_REG
	.literal .LC164, __FUNCTION__$5098
	.literal .LC165, .LC7
	.literal .LC166, .LC9
	.literal .LC167, .LC11
	.literal .LC168, GPIO
	.align	4
	.global	gpio_wakeup_disable
	.type	gpio_wakeup_disable, @function
gpio_wakeup_disable:
.LFB52:
	.loc 2 492 0
.LVL261:
	entry	sp, 48
.LCFI24:
	.loc 2 493 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L217
	.loc 2 493 0 is_stmt 0 discriminator 2
	l32r	a8, .LC163
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L218
.L217:
	.loc 2 493 0 discriminator 6
	call8	esp_log_timestamp
.LVL262:
	l32r	a2, .LC167
.LVL263:
	l32r	a11, .LC165
	s32i.n	a2, sp, 4
	l32r	a15, .LC164
	movi	a2, 0x1ed
	l32r	a12, .LC166
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL264:
	movi	a10, 0x102
	j	.L219
.LVL265:
.L218:
	.loc 2 495 0 is_stmt 1
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL266:
	beqz.n	a10, .L220
	.loc 2 496 0
	mov.n	a10, a2
	call8	rtc_gpio_wakeup_disable
.LVL267:
	j	.L219
.LVL268:
.L220:
	.loc 2 498 0
	addi	a8, a2, 32
	l32r	a2, .LC168
.LVL269:
	addx4	a8, a8, a2
.LVL270:
	memw
	l32i.n	a9, a8, 8
	movi	a2, -0x401
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 8
.LVL271:
.L219:
	.loc 2 501 0
	mov.n	a2, a10
	retw.n
.LFE52:
	.size	gpio_wakeup_disable, .-gpio_wakeup_disable
	.section	.rodata.str1.1
.LC174:
	.string	"GPIO drive capability error"
	.section	.text.gpio_set_drive_capability,"ax",@progbits
	.literal_position
	.literal .LC169, GPIO_PIN_MUX_REG
	.literal .LC170, __FUNCTION__$5104
	.literal .LC171, .LC7
	.literal .LC172, .LC9
	.literal .LC173, .LC11
	.literal .LC175, .LC174
	.literal .LC176, -3073
	.align	4
	.global	gpio_set_drive_capability
	.type	gpio_set_drive_capability, @function
gpio_set_drive_capability:
.LFB53:
	.loc 2 504 0
.LVL272:
	entry	sp, 48
.LCFI25:
	.loc 2 505 0
	movi.n	a4, 0x27
	bltu	a4, a2, .L222
	.loc 2 505 0 is_stmt 0 discriminator 2
	l32r	a4, .LC169
	addx4	a4, a2, a4
	l32i.n	a5, a4, 0
	movi.n	a4, 0x21
	bltu	a4, a2, .L222
	movi.n	a6, 1
	movi.n	a4, 0
	moveqz	a4, a6, a5
	extui	a4, a4, 0, 8
	beqz.n	a4, .L223
.L222:
	.loc 2 505 0 discriminator 8
	call8	esp_log_timestamp
.LVL273:
	l32r	a2, .LC173
.LVL274:
	l32r	a11, .LC171
	s32i.n	a2, sp, 4
	movi	a2, 0x1f9
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	l32r	a15, .LC170
	mov.n	a14, a11
	l32r	a12, .LC172
	movi.n	a10, 1
	j	.L230
.LVL275:
.L223:
	.loc 2 506 0 is_stmt 1
	bltui	a3, 4, .L227
	.loc 2 506 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL276:
	l32r	a2, .LC175
.LVL277:
	l32r	a11, .LC171
	s32i.n	a2, sp, 4
	l32r	a15, .LC170
	movi	a2, 0x1fa
	l32r	a12, .LC172
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a10, a6
.L230:
	call8	esp_log_write
.LVL278:
	movi	a2, 0x102
	retw.n
.LVL279:
.L227:
	.loc 2 508 0 is_stmt 1
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL280:
	beqz.n	a10, .L228
	.loc 2 509 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_gpio_set_drive_capability
.LVL281:
	.loc 2 513 0
	mov.n	a2, a4
.LVL282:
	retw.n
.LVL283:
.L228:
	.loc 2 511 0
	memw
	l32i.n	a4, a5, 0
	l32r	a2, .LC176
.LVL284:
	slli	a3, a3, 10
.LVL285:
	and	a2, a4, a2
	or	a3, a2, a3
	memw
	s32i.n	a3, a5, 0
	.loc 2 513 0
	mov.n	a2, a10
	.loc 2 514 0
	retw.n
.LFE53:
	.size	gpio_set_drive_capability, .-gpio_set_drive_capability
	.section	.rodata.str1.1
.LC182:
	.string	"GPIO drive capability pointer error"
	.section	.text.gpio_get_drive_capability,"ax",@progbits
	.literal_position
	.literal .LC177, GPIO_PIN_MUX_REG
	.literal .LC178, __FUNCTION__$5109
	.literal .LC179, .LC7
	.literal .LC180, .LC9
	.literal .LC181, .LC11
	.literal .LC183, .LC182
	.align	4
	.global	gpio_get_drive_capability
	.type	gpio_get_drive_capability, @function
gpio_get_drive_capability:
.LFB54:
	.loc 2 517 0
.LVL286:
	entry	sp, 48
.LCFI26:
	.loc 2 518 0
	movi.n	a4, 0x27
	bltu	a4, a2, .L232
	.loc 2 518 0 is_stmt 0 discriminator 2
	l32r	a8, .LC177
	addx4	a8, a2, a8
	l32i.n	a4, a8, 0
	beqz.n	a4, .L232
	movi.n	a8, 0x21
	bltu	a8, a2, .L232
	.loc 2 519 0 is_stmt 1 discriminator 2
	bnez.n	a3, .L237
	j	.L240
.L232:
	.loc 2 518 0 discriminator 8
	call8	esp_log_timestamp
.LVL287:
	l32r	a2, .LC181
.LVL288:
	l32r	a11, .LC179
	s32i.n	a2, sp, 4
	movi	a2, 0x206
	j	.L241
.LVL289:
.L240:
	.loc 2 519 0 discriminator 4
	call8	esp_log_timestamp
.LVL290:
	l32r	a2, .LC183
.LVL291:
	l32r	a11, .LC179
	s32i.n	a2, sp, 4
	movi	a2, 0x207
.L241:
	l32r	a15, .LC178
	l32r	a12, .LC180
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL292:
	movi	a10, 0x102
	j	.L236
.LVL293:
.L237:
	.loc 2 521 0
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL294:
	beqz.n	a10, .L238
	.loc 2 522 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_gpio_get_drive_capability
.LVL295:
	j	.L236
.L238:
	.loc 2 524 0
	memw
	l32i.n	a2, a4, 0
.LVL296:
	extui	a2, a2, 10, 2
	s32i.n	a2, a3, 0
.L236:
	.loc 2 527 0
	mov.n	a2, a10
	retw.n
.LFE54:
	.size	gpio_get_drive_capability, .-gpio_get_drive_capability
	.section	.rodata.str1.1
.LC188:
	.string	"Only output-capable GPIO support this function"
	.section	.text.gpio_hold_en,"ax",@progbits
	.literal_position
	.literal .LC184, GPIO_PIN_MUX_REG
	.literal .LC185, __FUNCTION__$5114
	.literal .LC186, .LC7
	.literal .LC187, .LC9
	.literal .LC189, .LC188
	.literal .LC190, GPIO_HOLD_MASK
	.literal .LC191, 1072989300
	.align	4
	.global	gpio_hold_en
	.type	gpio_hold_en, @function
gpio_hold_en:
.LFB55:
	.loc 2 567 0
.LVL297:
	entry	sp, 48
.LCFI27:
	.loc 2 568 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L243
	.loc 2 568 0 is_stmt 0 discriminator 2
	l32r	a3, .LC184
	slli	a4, a2, 2
	add.n	a3, a3, a4
	l32i.n	a8, a3, 0
	movi.n	a10, 1
	movi.n	a3, 0
	moveqz	a3, a10, a8
	extui	a3, a3, 0, 8
	bnez.n	a3, .L243
	movi.n	a8, 0x21
	bltu	a8, a2, .L243
.LVL298:
	.loc 2 570 0 is_stmt 1 discriminator 2
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL299:
	beqz.n	a10, .L248
	j	.L256
.LVL300:
.L243:
	.loc 2 568 0 discriminator 8
	call8	esp_log_timestamp
.LVL301:
	l32r	a2, .LC189
.LVL302:
	l32r	a11, .LC186
	s32i.n	a2, sp, 4
	l32r	a15, .LC185
	movi	a2, 0x238
	l32r	a12, .LC187
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL303:
	j	.L249
.LVL304:
.L256:
	.loc 2 571 0
	mov.n	a10, a2
	call8	rtc_gpio_hold_en
.LVL305:
	.loc 2 577 0
	mov.n	a2, a3
.LVL306:
	bnez.n	a10, .L249
	retw.n
.LVL307:
.L248:
	.loc 2 572 0
	l32r	a2, .LC190
.LVL308:
	add.n	a4, a2, a4
	l32i.n	a4, a4, 0
	beqz.n	a4, .L249
	.loc 2 573 0
	l32r	a3, .LC191
	memw
	l32i.n	a2, a3, 0
	or	a2, a4, a2
	memw
	s32i.n	a2, a3, 0
	.loc 2 577 0
	mov.n	a2, a10
	retw.n
.LVL309:
.L249:
	.loc 2 577 0 is_stmt 0 discriminator 2
	movi	a2, 0x106
	.loc 2 578 0 is_stmt 1 discriminator 2
	retw.n
.LFE55:
	.size	gpio_hold_en, .-gpio_hold_en
	.section	.text.gpio_hold_dis,"ax",@progbits
	.literal_position
	.literal .LC192, GPIO_PIN_MUX_REG
	.literal .LC193, __FUNCTION__$5119
	.literal .LC194, .LC7
	.literal .LC195, .LC9
	.literal .LC196, .LC188
	.literal .LC197, GPIO_HOLD_MASK
	.literal .LC198, 1072989300
	.align	4
	.global	gpio_hold_dis
	.type	gpio_hold_dis, @function
gpio_hold_dis:
.LFB56:
	.loc 2 581 0
.LVL310:
	entry	sp, 48
.LCFI28:
	.loc 2 582 0
	movi.n	a3, 0x27
	bltu	a3, a2, .L258
	.loc 2 582 0 is_stmt 0 discriminator 2
	l32r	a3, .LC192
	slli	a4, a2, 2
	add.n	a3, a3, a4
	l32i.n	a8, a3, 0
	movi.n	a10, 1
	movi.n	a3, 0
	moveqz	a3, a10, a8
	extui	a3, a3, 0, 8
	bnez.n	a3, .L258
	movi.n	a8, 0x21
	bltu	a8, a2, .L258
.LVL311:
	.loc 2 584 0 is_stmt 1 discriminator 2
	mov.n	a10, a2
	call8	rtc_gpio_is_valid_gpio
.LVL312:
	beqz.n	a10, .L263
	j	.L271
.LVL313:
.L258:
	.loc 2 582 0 discriminator 8
	call8	esp_log_timestamp
.LVL314:
	l32r	a2, .LC196
.LVL315:
	l32r	a11, .LC194
	s32i.n	a2, sp, 4
	l32r	a15, .LC193
	movi	a2, 0x246
	l32r	a12, .LC195
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL316:
	j	.L264
.LVL317:
.L271:
	.loc 2 585 0
	mov.n	a10, a2
	call8	rtc_gpio_hold_dis
.LVL318:
	.loc 2 591 0
	mov.n	a2, a3
.LVL319:
	bnez.n	a10, .L264
	retw.n
.LVL320:
.L263:
	.loc 2 586 0
	l32r	a2, .LC197
.LVL321:
	add.n	a4, a2, a4
	l32i.n	a2, a4, 0
	beqz.n	a2, .L264
	.loc 2 587 0
	l32r	a4, .LC198
	movi.n	a8, -1
	memw
	l32i.n	a3, a4, 0
	xor	a2, a8, a2
	and	a2, a2, a3
	memw
	s32i.n	a2, a4, 0
	.loc 2 591 0
	mov.n	a2, a10
	retw.n
.LVL322:
.L264:
	.loc 2 591 0 is_stmt 0 discriminator 2
	movi	a2, 0x106
	.loc 2 592 0 is_stmt 1 discriminator 2
	retw.n
.LFE56:
	.size	gpio_hold_dis, .-gpio_hold_dis
	.section	.text.gpio_deep_sleep_hold_en,"ax",@progbits
	.literal_position
	.literal .LC199, gpio_spinlock
	.literal .LC200, 1072988296
	.literal .LC201, 2048
	.align	4
	.global	gpio_deep_sleep_hold_en
	.type	gpio_deep_sleep_hold_en, @function
gpio_deep_sleep_hold_en:
.LFB57:
	.loc 2 595 0
	entry	sp, 32
.LCFI29:
	.loc 2 596 0
	l32r	a2, .LC199
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL323:
	.loc 2 597 0
	l32r	a9, .LC200
	l32r	a8, .LC201
	memw
	l32i.n	a10, a9, 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 2 598 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL324:
	retw.n
.LFE57:
	.size	gpio_deep_sleep_hold_en, .-gpio_deep_sleep_hold_en
	.section	.text.gpio_deep_sleep_hold_dis,"ax",@progbits
	.literal_position
	.literal .LC202, gpio_spinlock
	.literal .LC203, 1072988296
	.literal .LC204, -2049
	.align	4
	.global	gpio_deep_sleep_hold_dis
	.type	gpio_deep_sleep_hold_dis, @function
gpio_deep_sleep_hold_dis:
.LFB58:
	.loc 2 602 0
	entry	sp, 32
.LCFI30:
	.loc 2 603 0
	l32r	a2, .LC202
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL325:
	.loc 2 604 0
	l32r	a9, .LC203
	l32r	a8, .LC204
	memw
	l32i.n	a10, a9, 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 2 605 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL326:
	retw.n
.LFE58:
	.size	gpio_deep_sleep_hold_dis, .-gpio_deep_sleep_hold_dis
	.section	.text.gpio_iomux_in,"ax",@progbits
	.literal_position
	.literal .LC205, GPIO
	.literal .LC206, GPIO_PIN_MUX_REG
	.align	4
	.global	gpio_iomux_in
	.type	gpio_iomux_in, @function
gpio_iomux_in:
.LFB59:
	.loc 2 609 0
.LVL327:
	entry	sp, 32
.LCFI31:
	.loc 2 610 0
	l32r	a8, .LC205
	addi	a3, a3, 76
.LVL328:
	addx4	a3, a3, a8
.LVL329:
	memw
	l32i.n	a9, a3, 0
	movi	a8, -0x81
	and	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
	.loc 2 611 0
	l32r	a3, .LC206
	addx4	a2, a2, a3
.LVL330:
	l32i.n	a2, a2, 0
	movi	a3, 0x200
	memw
	l32i.n	a8, a2, 0
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	retw.n
.LFE59:
	.size	gpio_iomux_in, .-gpio_iomux_in
	.section	.text.gpio_iomux_out,"ax",@progbits
	.literal_position
	.literal .LC207, GPIO
	.literal .LC208, -2049
	.literal .LC209, GPIO_PIN_MUX_REG
	.literal .LC210, -28673
	.align	4
	.global	gpio_iomux_out
	.type	gpio_iomux_out, @function
gpio_iomux_out:
.LFB60:
	.loc 2 615 0
.LVL331:
	entry	sp, 32
.LCFI32:
	.loc 2 615 0
	extui	a2, a2, 0, 8
	.loc 2 616 0
	l32r	a9, .LC207
	movi	a8, 0x14c
	add.n	a8, a2, a8
	addx4	a8, a8, a9
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x401
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 2 617 0
	extui	a4, a4, 0, 1
.LVL332:
	memw
	l32i.n	a10, a8, 0
	slli	a9, a4, 11
	l32r	a4, .LC208
	.loc 2 618 0
	extui	a3, a3, 0, 3
.LVL333:
	.loc 2 617 0
	and	a4, a10, a4
	or	a4, a4, a9
	memw
	s32i.n	a4, a8, 0
	.loc 2 618 0
	l32r	a4, .LC209
	l32r	a8, .LC210
	addx4	a2, a2, a4
.LVL334:
	l32i.n	a2, a2, 0
	slli	a3, a3, 12
	memw
	l32i.n	a4, a2, 0
	and	a8, a4, a8
	or	a3, a3, a8
	memw
	s32i.n	a3, a2, 0
	retw.n
.LFE60:
	.size	gpio_iomux_out, .-gpio_iomux_out
	.section	.rodata.__FUNCTION__$5119,"a",@progbits
	.type	__FUNCTION__$5119, @object
	.size	__FUNCTION__$5119, 14
__FUNCTION__$5119:
	.string	"gpio_hold_dis"
	.section	.rodata.__FUNCTION__$5114,"a",@progbits
	.type	__FUNCTION__$5114, @object
	.size	__FUNCTION__$5114, 13
__FUNCTION__$5114:
	.string	"gpio_hold_en"
	.section	.rodata.__FUNCTION__$5109,"a",@progbits
	.type	__FUNCTION__$5109, @object
	.size	__FUNCTION__$5109, 26
__FUNCTION__$5109:
	.string	"gpio_get_drive_capability"
	.section	.rodata.__FUNCTION__$5104,"a",@progbits
	.type	__FUNCTION__$5104, @object
	.size	__FUNCTION__$5104, 26
__FUNCTION__$5104:
	.string	"gpio_set_drive_capability"
	.section	.rodata.__FUNCTION__$5098,"a",@progbits
	.type	__FUNCTION__$5098, @object
	.size	__FUNCTION__$5098, 20
__FUNCTION__$5098:
	.string	"gpio_wakeup_disable"
	.section	.rodata.__FUNCTION__$5093,"a",@progbits
	.type	__FUNCTION__$5093, @object
	.size	__FUNCTION__$5093, 19
__FUNCTION__$5093:
	.string	"gpio_wakeup_enable"
	.section	.rodata.__FUNCTION__$5086,"a",@progbits
	.type	__FUNCTION__$5086, @object
	.size	__FUNCTION__$5086, 18
__FUNCTION__$5086:
	.string	"gpio_isr_register"
	.section	.rodata.__FUNCTION__$5071,"a",@progbits
	.type	__FUNCTION__$5071, @object
	.size	__FUNCTION__$5071, 25
__FUNCTION__$5071:
	.string	"gpio_install_isr_service"
	.section	.rodata.__FUNCTION__$5067,"a",@progbits
	.type	__FUNCTION__$5067, @object
	.size	__FUNCTION__$5067, 24
__FUNCTION__$5067:
	.string	"gpio_isr_handler_remove"
	.section	.rodata.__FUNCTION__$5063,"a",@progbits
	.type	__FUNCTION__$5063, @object
	.size	__FUNCTION__$5063, 21
__FUNCTION__$5063:
	.string	"gpio_isr_handler_add"
	.section	.rodata.__func__$5048,"a",@progbits
	.type	__func__$5048, @object
	.size	__func__$5048, 15
__func__$5048:
	.string	"gpio_reset_pin"
	.section	.rodata.__FUNCTION__$5001,"a",@progbits
	.type	__FUNCTION__$5001, @object
	.size	__FUNCTION__$5001, 20
__FUNCTION__$5001:
	.string	"gpio_output_disable"
	.section	.rodata.__FUNCTION__$5005,"a",@progbits
	.type	__FUNCTION__$5005, @object
	.size	__FUNCTION__$5005, 19
__FUNCTION__$5005:
	.string	"gpio_output_enable"
	.section	.rodata.__FUNCTION__$5030,"a",@progbits
	.type	__FUNCTION__$5030, @object
	.size	__FUNCTION__$5030, 19
__FUNCTION__$5030:
	.string	"gpio_set_direction"
	.section	.rodata.__FUNCTION__$5018,"a",@progbits
	.type	__FUNCTION__$5018, @object
	.size	__FUNCTION__$5018, 19
__FUNCTION__$5018:
	.string	"gpio_set_pull_mode"
	.section	.rodata.__FUNCTION__$5010,"a",@progbits
	.type	__FUNCTION__$5010, @object
	.size	__FUNCTION__$5010, 15
__FUNCTION__$5010:
	.string	"gpio_set_level"
	.section	.rodata.__FUNCTION__$4997,"a",@progbits
	.type	__FUNCTION__$4997, @object
	.size	__FUNCTION__$4997, 18
__FUNCTION__$4997:
	.string	"gpio_intr_disable"
	.section	.rodata.__FUNCTION__$4993,"a",@progbits
	.type	__FUNCTION__$4993, @object
	.size	__FUNCTION__$4993, 17
__FUNCTION__$4993:
	.string	"gpio_intr_enable"
	.section	.rodata.__FUNCTION__$4982,"a",@progbits
	.type	__FUNCTION__$4982, @object
	.size	__FUNCTION__$4982, 19
__FUNCTION__$4982:
	.string	"gpio_set_intr_type"
	.section	.rodata.__FUNCTION__$4977,"a",@progbits
	.type	__FUNCTION__$4977, @object
	.size	__FUNCTION__$4977, 18
__FUNCTION__$4977:
	.string	"gpio_pulldown_dis"
	.section	.rodata.__FUNCTION__$4973,"a",@progbits
	.type	__FUNCTION__$4973, @object
	.size	__FUNCTION__$4973, 17
__FUNCTION__$4973:
	.string	"gpio_pulldown_en"
	.section	.rodata.__FUNCTION__$4969,"a",@progbits
	.type	__FUNCTION__$4969, @object
	.size	__FUNCTION__$4969, 16
__FUNCTION__$4969:
	.string	"gpio_pullup_dis"
	.section	.rodata.__FUNCTION__$4965,"a",@progbits
	.type	__FUNCTION__$4965, @object
	.size	__FUNCTION__$4965, 15
__FUNCTION__$4965:
	.string	"gpio_pullup_en"
	.section	.rodata.GPIO_HOLD_MASK,"a",@progbits
	.align	4
	.type	GPIO_HOLD_MASK, @object
	.size	GPIO_HOLD_MASK, 136
GPIO_HOLD_MASK:
	.word	0
	.word	2
	.word	0
	.word	1
	.word	0
	.word	256
	.word	4
	.word	8
	.word	16
	.word	32
	.word	64
	.word	128
	.word	0
	.word	0
	.word	0
	.word	0
	.word	512
	.word	1024
	.word	2048
	.word	4096
	.word	0
	.word	16384
	.word	32768
	.word	65536
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.data.gpio_spinlock,"aw",@progbits
	.align	4
	.type	gpio_spinlock, @object
	.size	gpio_spinlock, 8
gpio_spinlock:
	.word	-1287651329
	.word	0
	.section	.data.isr_core_id,"aw",@progbits
	.align	4
	.type	isr_core_id, @object
	.size	isr_core_id, 4
isr_core_id:
	.word	3
	.section	.bss.gpio_isr_handle,"aw",@nobits
	.align	4
	.type	gpio_isr_handle, @object
	.size	gpio_isr_handle, 4
gpio_isr_handle:
	.zero	4
	.section	.bss.gpio_isr_func,"aw",@nobits
	.align	4
	.type	gpio_isr_func, @object
	.size	gpio_isr_func, 4
gpio_isr_func:
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI2-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI3-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI4-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI7-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI8-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI9-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI10-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI11-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI14-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI15-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI16-.LFB42
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI17-.LFB43
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI18-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI19-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI20-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI21-.LFB50
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI22-.LFB47
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI23-.LFB51
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI24-.LFB52
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI25-.LFB53
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI26-.LFB54
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI27-.LFB55
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI28-.LFB56
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI29-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI30-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI31-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI32-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/gpio_struct.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/gpio.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_periph.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/gpio_periph.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/gpio.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2995
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF277
	.byte	0xc
	.4byte	.LASF278
	.4byte	.LASF279
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x37
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
	.4byte	.LASF5
	.byte	0x4
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x39
	.4byte	0x77
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x18
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0xb5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x56
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x57
	.4byte	0x115
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x82
	.4byte	0x143
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x8
	.byte	0x8a
	.4byte	0x9f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x8
	.byte	0x8f
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x94
	.4byte	0x122
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.4byte	0x175
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x1e
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x1f
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x1c
	.4byte	0x18e
	.uleb128 0xf
	.4byte	0x14e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x21
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x24
	.4byte	0x1b5
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x25
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x26
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x23
	.4byte	0x1ce
	.uleb128 0xf
	.4byte	0x18e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x28
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x2b
	.4byte	0x1f5
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x2c
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x2d
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x2a
	.4byte	0x20e
	.uleb128 0xf
	.4byte	0x1ce
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x2f
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x32
	.4byte	0x235
	.uleb128 0x11
	.string	"sel"
	.byte	0x9
	.byte	0x33
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x34
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x31
	.4byte	0x24e
	.uleb128 0xf
	.4byte	0x20e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x36
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x3c
	.4byte	0x275
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x3d
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x3e
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x3b
	.4byte	0x28e
	.uleb128 0xf
	.4byte	0x24e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x40
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x43
	.4byte	0x2b5
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x44
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x45
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x42
	.4byte	0x2ce
	.uleb128 0xf
	.4byte	0x28e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x47
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.4byte	0x2f5
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x4b
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x4c
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x49
	.4byte	0x30e
	.uleb128 0xf
	.4byte	0x2ce
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x4e
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x51
	.4byte	0x335
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x9
	.byte	0x52
	.4byte	0x9f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.byte	0x53
	.4byte	0x9f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x50
	.4byte	0x34e
	.uleb128 0xf
	.4byte	0x30e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x55
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x59
	.4byte	0x375
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.byte	0x5a
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x5b
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.4byte	0x38e
	.uleb128 0xf
	.4byte	0x34e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x5d
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x63
	.4byte	0x3b5
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x64
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x65
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x62
	.4byte	0x3ce
	.uleb128 0xf
	.4byte	0x38e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x67
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x6a
	.4byte	0x3f5
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x6b
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x6c
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x69
	.4byte	0x40e
	.uleb128 0xf
	.4byte	0x3ce
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x6e
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x71
	.4byte	0x435
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x72
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x73
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x70
	.4byte	0x44e
	.uleb128 0xf
	.4byte	0x40e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x75
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x7e
	.4byte	0x475
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x7f
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x80
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x7d
	.4byte	0x48e
	.uleb128 0xf
	.4byte	0x44e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x82
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x85
	.4byte	0x4b5
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x86
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x87
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x84
	.4byte	0x4ce
	.uleb128 0xf
	.4byte	0x48e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x89
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x8c
	.4byte	0x4f5
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x8d
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x8e
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x8b
	.4byte	0x50e
	.uleb128 0xf
	.4byte	0x4ce
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x90
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x93
	.4byte	0x535
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x94
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x95
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x92
	.4byte	0x54e
	.uleb128 0xf
	.4byte	0x50e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x97
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x9a
	.4byte	0x575
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x9b
	.4byte	0x9f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0x9c
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x99
	.4byte	0x58e
	.uleb128 0xf
	.4byte	0x54e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0x9e
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xa1
	.4byte	0x60f
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x9
	.byte	0xa2
	.4byte	0x9f
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x9
	.byte	0xa3
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x9
	.byte	0xa4
	.4byte	0x9f
	.byte	0x4
	.byte	0x4
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa5
	.4byte	0x9f
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x9
	.byte	0xa6
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x9
	.byte	0xa7
	.4byte	0x9f
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa8
	.4byte	0x9f
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa9
	.4byte	0x9f
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xa0
	.4byte	0x628
	.uleb128 0xf
	.4byte	0x58e
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xab
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xae
	.4byte	0x65e
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x9
	.byte	0xaf
	.4byte	0x9f
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x9
	.byte	0xb0
	.4byte	0x9f
	.byte	0x4
	.byte	0x15
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x9
	.byte	0xb1
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xad
	.4byte	0x677
	.uleb128 0xf
	.4byte	0x628
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xb3
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xb6
	.4byte	0x6bc
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x9
	.byte	0xb7
	.4byte	0x9f
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x9
	.byte	0xb8
	.4byte	0x9f
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x9
	.byte	0xb9
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x9
	.byte	0xba
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xb5
	.4byte	0x6d5
	.uleb128 0xf
	.4byte	0x677
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xbc
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xbf
	.4byte	0x71a
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x9
	.byte	0xc0
	.4byte	0x9f
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x9
	.byte	0xc1
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x9
	.byte	0xc2
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.byte	0xc3
	.4byte	0x9f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xbe
	.4byte	0x733
	.uleb128 0xf
	.4byte	0x6d5
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xc5
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xc8
	.4byte	0x787
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x9
	.byte	0xc9
	.4byte	0x9f
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x9
	.byte	0xca
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x9
	.byte	0xcb
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x9
	.byte	0xcc
	.4byte	0x9f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x9
	.byte	0xcd
	.4byte	0x9f
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0xc7
	.4byte	0x7a0
	.uleb128 0xf
	.4byte	0x733
	.uleb128 0x10
	.string	"val"
	.byte	0x9
	.byte	0xcf
	.4byte	0x9f
	.byte	0
	.uleb128 0x12
	.2byte	0x5d0
	.byte	0x9
	.byte	0x17
	.4byte	0x981
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x9
	.byte	0x18
	.4byte	0x9f
	.byte	0
	.uleb128 0x13
	.string	"out"
	.byte	0x9
	.byte	0x19
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x9
	.byte	0x1a
	.4byte	0x9f
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x9
	.byte	0x1b
	.4byte	0x9f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x9
	.byte	0x22
	.4byte	0x175
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x9
	.byte	0x29
	.4byte	0x1b5
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x9
	.byte	0x30
	.4byte	0x1f5
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x9
	.byte	0x37
	.4byte	0x235
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x9
	.byte	0x38
	.4byte	0x9f
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x9
	.byte	0x39
	.4byte	0x9f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x9
	.byte	0x3a
	.4byte	0x9f
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x9
	.byte	0x41
	.4byte	0x275
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x9
	.byte	0x48
	.4byte	0x2b5
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x9
	.byte	0x4f
	.4byte	0x2f5
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x9
	.byte	0x56
	.4byte	0x335
	.byte	0x38
	.uleb128 0x13
	.string	"in"
	.byte	0x9
	.byte	0x57
	.4byte	0x9f
	.byte	0x3c
	.uleb128 0x13
	.string	"in1"
	.byte	0x9
	.byte	0x5e
	.4byte	0x375
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x9
	.byte	0x5f
	.4byte	0x9f
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x9
	.byte	0x60
	.4byte	0x9f
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x9
	.byte	0x61
	.4byte	0x9f
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x9
	.byte	0x68
	.4byte	0x3b5
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x9
	.byte	0x6f
	.4byte	0x3f5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x9
	.byte	0x76
	.4byte	0x435
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x9
	.byte	0x77
	.4byte	0x9f
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x9
	.byte	0x78
	.4byte	0x9f
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x9
	.byte	0x79
	.4byte	0x9f
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x9
	.byte	0x7a
	.4byte	0x9f
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x9
	.byte	0x7b
	.4byte	0x9f
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x9
	.byte	0x7c
	.4byte	0x9f
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x9
	.byte	0x83
	.4byte	0x475
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x9
	.byte	0x8a
	.4byte	0x4b5
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x9
	.byte	0x91
	.4byte	0x4f5
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x9
	.byte	0x98
	.4byte	0x535
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x9
	.byte	0x9f
	.4byte	0x575
	.byte	0x84
	.uleb128 0x13
	.string	"pin"
	.byte	0x9
	.byte	0xac
	.4byte	0x981
	.byte	0x88
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x9
	.byte	0xb4
	.4byte	0x65e
	.2byte	0x128
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x9
	.byte	0xbd
	.4byte	0x6bc
	.2byte	0x12c
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x9
	.byte	0xc6
	.4byte	0x991
	.2byte	0x130
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x9
	.byte	0xd0
	.4byte	0x9a1
	.2byte	0x530
	.byte	0
	.uleb128 0x15
	.4byte	0x60f
	.4byte	0x991
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x15
	.4byte	0x71a
	.4byte	0x9a1
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	0x787
	.4byte	0x9b1
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x9
	.byte	0xd1
	.4byte	0x9bc
	.uleb128 0x17
	.4byte	0x7a0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x82
	.4byte	0xaa0
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0xa
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xb
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0xd
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xe
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xf
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x11
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x12
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x13
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x17
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x1a
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1b
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x21
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x22
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x23
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x25
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x26
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x27
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xa
	.byte	0xaf
	.4byte	0x9c1
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xb1
	.4byte	0xae2
	.uleb128 0x19
	.4byte	.LASF126
	.byte	0
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xa
	.byte	0xb9
	.4byte	0xaab
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xbb
	.4byte	0xb1e
	.uleb128 0x19
	.4byte	.LASF134
	.byte	0
	.uleb128 0x19
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0xc2
	.4byte	0xaed
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xc4
	.4byte	0xb42
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0
	.uleb128 0x19
	.4byte	.LASF142
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xa
	.byte	0xc7
	.4byte	0xb29
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xc9
	.4byte	0xb66
	.uleb128 0x19
	.4byte	.LASF144
	.byte	0
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xa
	.byte	0xcc
	.4byte	0xb4d
	.uleb128 0xb
	.byte	0x18
	.byte	0xa
	.byte	0xd1
	.4byte	0xbb6
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xa
	.byte	0xd2
	.4byte	0xaa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xa
	.byte	0xd3
	.4byte	0xb1e
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xa
	.byte	0xd4
	.4byte	0xb42
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xa
	.byte	0xd5
	.4byte	0xb66
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0xa
	.byte	0xd6
	.4byte	0xae2
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xa
	.byte	0xd7
	.4byte	0xb71
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xd9
	.4byte	0xbe6
	.uleb128 0x19
	.4byte	.LASF153
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF155
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF156
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xa
	.byte	0xde
	.4byte	0xbc1
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0xe0
	.4byte	0xc22
	.uleb128 0x19
	.4byte	.LASF158
	.byte	0
	.uleb128 0x19
	.4byte	.LASF159
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF160
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF163
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0xa
	.byte	0xe7
	.4byte	0xbf1
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0xa
	.byte	0xe9
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0xa
	.byte	0xea
	.4byte	0x10a
	.uleb128 0xb
	.byte	0x34
	.byte	0xb
	.byte	0x21
	.4byte	0xce7
	.uleb128 0x13
	.string	"reg"
	.byte	0xb
	.byte	0x22
	.4byte	0x9f
	.byte	0
	.uleb128 0x13
	.string	"mux"
	.byte	0xb
	.byte	0x23
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xb
	.byte	0x24
	.4byte	0x9f
	.byte	0x8
	.uleb128 0x13
	.string	"ie"
	.byte	0xb
	.byte	0x25
	.4byte	0x9f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xb
	.byte	0x26
	.4byte	0x9f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xb
	.byte	0x27
	.4byte	0x9f
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xb
	.byte	0x28
	.4byte	0x9f
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0xb
	.byte	0x29
	.4byte	0x9f
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0xb
	.byte	0x2a
	.4byte	0x9f
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xb
	.byte	0x2b
	.4byte	0x9f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0xb
	.byte	0x2c
	.4byte	0x9f
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xb
	.byte	0x2d
	.4byte	0x9f
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0xb
	.byte	0x2e
	.4byte	0x57
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0xb
	.byte	0x2f
	.4byte	0xc43
	.uleb128 0x18
	.byte	0x4
	.4byte	0x69
	.byte	0xc
	.byte	0x1f
	.4byte	0xd23
	.uleb128 0x19
	.4byte	.LASF178
	.byte	0
	.uleb128 0x19
	.4byte	.LASF179
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF180
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF181
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF182
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x2
	.byte	0x24
	.4byte	0xd43
	.uleb128 0x13
	.string	"fn"
	.byte	0x2
	.byte	0x25
	.4byte	0xc2d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x2
	.byte	0x26
	.4byte	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x2
	.byte	0x27
	.4byte	0xd23
	.uleb128 0xb
	.byte	0x18
	.byte	0x2
	.byte	0x2a
	.4byte	0xd9e
	.uleb128 0xc
	.4byte	.LASF186
	.byte	0x2
	.byte	0x2b
	.4byte	0x57
	.byte	0
	.uleb128 0xc
	.4byte	.LASF187
	.byte	0x2
	.byte	0x2c
	.4byte	0x57
	.byte	0x4
	.uleb128 0x13
	.string	"fn"
	.byte	0x2
	.byte	0x2d
	.4byte	0xe9
	.byte	0x8
	.uleb128 0x13
	.string	"arg"
	.byte	0x2
	.byte	0x2e
	.4byte	0xb5
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF188
	.byte	0x2
	.byte	0x2f
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x13
	.string	"ret"
	.byte	0x2
	.byte	0x30
	.4byte	0xde
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0x2
	.byte	0x31
	.4byte	0xd4e
	.uleb128 0x1a
	.4byte	.LASF190
	.byte	0x2
	.byte	0x94
	.4byte	0xde
	.byte	0x1
	.4byte	0xdd2
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x2
	.byte	0x94
	.4byte	0xaa0
	.uleb128 0x1c
	.4byte	.LASF193
	.4byte	0xde2
	.4byte	.LASF190
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0xde2
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xdd2
	.uleb128 0x1a
	.4byte	.LASF191
	.byte	0x2
	.byte	0xa4
	.4byte	0xde
	.byte	0x1
	.4byte	0xe10
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x2
	.byte	0xa4
	.4byte	0xaa0
	.uleb128 0x1c
	.4byte	.LASF193
	.4byte	0xe20
	.4byte	.LASF191
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0xe20
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0xe10
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x2
	.byte	0x65
	.4byte	0xde
	.byte	0x1
	.4byte	0xe59
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x2
	.byte	0x65
	.4byte	0xaa0
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x2
	.byte	0x65
	.4byte	0xae2
	.uleb128 0x1c
	.4byte	.LASF193
	.4byte	0xe59
	.4byte	.LASF194
	.byte	0
	.uleb128 0x7
	.4byte	0xe10
	.uleb128 0x1e
	.4byte	.LASF227
	.byte	0x3
	.byte	0xd0
	.4byte	0x9f
	.byte	0x3
	.4byte	0xe79
	.uleb128 0x1f
	.string	"id"
	.byte	0x3
	.byte	0xd1
	.4byte	0x57
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF195
	.byte	0x2
	.byte	0x81
	.4byte	0xde
	.byte	0x1
	.4byte	0xea2
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x2
	.byte	0x81
	.4byte	0xaa0
	.uleb128 0x1c
	.4byte	.LASF193
	.4byte	0xeb2
	.4byte	.LASF195
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0xeb2
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xea2
	.uleb128 0x20
	.4byte	.LASF196
	.byte	0x2
	.2byte	0x1be
	.4byte	0xde
	.byte	0x1
	.4byte	0xf1b
	.uleb128 0x21
	.string	"fn"
	.byte	0x2
	.2byte	0x1be
	.4byte	0xe9
	.uleb128 0x21
	.string	"arg"
	.byte	0x2
	.2byte	0x1be
	.4byte	0xb5
	.uleb128 0x22
	.4byte	.LASF187
	.byte	0x2
	.2byte	0x1be
	.4byte	0x57
	.uleb128 0x22
	.4byte	.LASF188
	.byte	0x2
	.2byte	0x1be
	.4byte	0xf1b
	.uleb128 0x1c
	.4byte	.LASF193
	.4byte	0xf31
	.4byte	.LASF196
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.2byte	0x1c1
	.4byte	0xd9e
	.uleb128 0x23
	.string	"ret"
	.byte	0x2
	.2byte	0x1cc
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc38
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0xf31
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0xf21
	.uleb128 0x24
	.4byte	.LASF280
	.byte	0x1
	.byte	0x28
	.4byte	0x11b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5f
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x1
	.byte	0x28
	.4byte	0xaa0
	.4byte	.LLST0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF281
	.byte	0x2
	.byte	0x6d
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf84
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0x6d
	.4byte	0xaa0
	.4byte	.LLST1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF238
	.byte	0x2
	.2byte	0x15e
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd9
	.uleb128 0x28
	.string	"arg"
	.byte	0x2
	.2byte	0x15e
	.4byte	0xb5
	.4byte	.LLST2
	.uleb128 0x29
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x161
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x29
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x163
	.4byte	0xfd9
	.4byte	.LLST4
	.uleb128 0x2a
	.4byte	.LASF198
	.byte	0x2
	.2byte	0x165
	.4byte	0xfd9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x7
	.4byte	0x9f
	.uleb128 0x2b
	.4byte	0xda9
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107f
	.uleb128 0x2c
	.4byte	0xdb9
	.4byte	.LLST5
	.uleb128 0x2d
	.4byte	0xdc4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5001
	.uleb128 0x2e
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1031
	.uleb128 0x2c
	.4byte	0xdb9
	.4byte	.LLST6
	.uleb128 0x2f
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x2d
	.4byte	0xdc4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5001
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL18
	.4byte	0x28a4
	.uleb128 0x31
	.4byte	.LVL20
	.4byte	0x28af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5001
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0xde7
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1133
	.uleb128 0x2c
	.4byte	0xdf7
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	0xe02
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5005
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0
	.4byte	0x10e5
	.uleb128 0x2c
	.4byte	0xdf7
	.4byte	.LLST8
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2d
	.4byte	0xe02
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5005
	.uleb128 0x31
	.4byte	.LVL31
	.4byte	0x28ba
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL28
	.4byte	0x28a4
	.uleb128 0x31
	.4byte	.LVL29
	.4byte	0x28af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5005
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF199
	.byte	0x2
	.byte	0x39
	.4byte	0xde
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e0
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0x39
	.4byte	0xaa0
	.4byte	.LLST9
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x11f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4965
	.uleb128 0x30
	.4byte	.LVL33
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL35
	.4byte	0x28af
	.4byte	0x11bb
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4965
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL37
	.4byte	0xf36
	.4byte	0x11cf
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL38
	.4byte	0x28c5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x11f0
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x11e0
	.uleb128 0x35
	.4byte	.LASF200
	.byte	0x2
	.byte	0x44
	.4byte	0xde
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a2
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0x44
	.4byte	0xaa0
	.4byte	.LLST10
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x12b2
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4969
	.uleb128 0x30
	.4byte	.LVL42
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL44
	.4byte	0x28af
	.4byte	0x127d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4969
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL46
	.4byte	0xf36
	.4byte	0x1291
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL47
	.4byte	0x28d0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x12b2
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x12a2
	.uleb128 0x35
	.4byte	.LASF201
	.byte	0x2
	.byte	0x4f
	.4byte	0xde
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1364
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0x4f
	.4byte	0xaa0
	.4byte	.LLST11
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x1364
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4973
	.uleb128 0x30
	.4byte	.LVL51
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL53
	.4byte	0x28af
	.4byte	0x133f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4973
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL55
	.4byte	0xf36
	.4byte	0x1353
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL56
	.4byte	0x28db
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xea2
	.uleb128 0x35
	.4byte	.LASF202
	.byte	0x2
	.byte	0x5a
	.4byte	0xde
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1416
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0x5a
	.4byte	0xaa0
	.4byte	.LLST12
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x1416
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4977
	.uleb128 0x30
	.4byte	.LVL60
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL62
	.4byte	0x28af
	.4byte	0x13f1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4977
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL64
	.4byte	0xf36
	.4byte	0x1405
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL65
	.4byte	0x28e6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xf21
	.uleb128 0x2b
	.4byte	0xe25
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14cd
	.uleb128 0x2c
	.4byte	0xe35
	.4byte	.LLST13
	.uleb128 0x2c
	.4byte	0xe40
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	0xe4b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4982
	.uleb128 0x2e
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x14c3
	.uleb128 0x2c
	.4byte	0xe35
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	0xe40
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x2d
	.4byte	0xe4b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4982
	.uleb128 0x30
	.4byte	.LVL73
	.4byte	0x28a4
	.uleb128 0x31
	.4byte	.LVL76
	.4byte	0x28af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4982
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL69
	.4byte	0x28a4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF203
	.byte	0x2
	.byte	0x76
	.4byte	0xde
	.byte	0x1
	.4byte	0x14f4
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x2
	.byte	0x76
	.4byte	0xaa0
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x2
	.byte	0x76
	.4byte	0x9f
	.byte	0
	.uleb128 0x2b
	.4byte	0xe79
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160f
	.uleb128 0x2c
	.4byte	0xe89
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	0xe94
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4993
	.uleb128 0x2e
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x15c1
	.uleb128 0x2c
	.4byte	0xe89
	.4byte	.LLST18
	.uleb128 0x2f
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x2d
	.4byte	0xe94
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4993
	.uleb128 0x38
	.4byte	0xe5e
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x2
	.byte	0x86
	.4byte	0x156c
	.uleb128 0x2f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x39
	.4byte	0xe6e
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0x14cd
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x89
	.4byte	0x15a2
	.uleb128 0x2c
	.4byte	0x14e8
	.4byte	.LLST20
	.uleb128 0x2c
	.4byte	0x14dd
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	.LVL91
	.4byte	0xf5f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL86
	.4byte	0x28f1
	.4byte	0x15b6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL89
	.4byte	0x28fc
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL82
	.4byte	0x28a4
	.uleb128 0x31
	.4byte	.LVL84
	.4byte	0x28af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4993
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF205
	.byte	0x2
	.byte	0x8c
	.4byte	0xde
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a9
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0x8c
	.4byte	0xaa0
	.4byte	.LLST22
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x16a9
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4997
	.uleb128 0x30
	.4byte	.LVL98
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL99
	.4byte	0x28af
	.4byte	0x1697
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4997
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x31
	.4byte	.LVL101
	.4byte	0xf5f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xf21
	.uleb128 0x35
	.4byte	.LASF206
	.byte	0x2
	.byte	0xb0
	.4byte	0xde
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1742
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0xb0
	.4byte	0xaa0
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	.LASF207
	.byte	0x2
	.byte	0xb0
	.4byte	0x9f
	.4byte	.LLST24
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x1742
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5010
	.uleb128 0x30
	.4byte	.LVL104
	.4byte	0x28a4
	.uleb128 0x31
	.4byte	.LVL105
	.4byte	0x28af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5010
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x11e0
	.uleb128 0x35
	.4byte	.LASF208
	.byte	0x2
	.byte	0xc3
	.4byte	0x57
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1770
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0xc3
	.4byte	0xaa0
	.4byte	.LLST25
	.byte	0
	.uleb128 0x35
	.4byte	.LASF209
	.byte	0x2
	.byte	0xcc
	.4byte	0xde
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1864
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0xcc
	.4byte	0xaa0
	.4byte	.LLST26
	.uleb128 0x3b
	.4byte	.LASF210
	.byte	0x2
	.byte	0xcc
	.4byte	0xbe6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x1864
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5018
	.uleb128 0x3c
	.string	"ret"
	.byte	0x2
	.byte	0xd0
	.4byte	0xde
	.byte	0
	.uleb128 0x30
	.4byte	.LVL116
	.4byte	0x28a4
	.uleb128 0x30
	.4byte	.LVL119
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL121
	.4byte	0x28af
	.4byte	0x1810
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5018
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL123
	.4byte	0x1369
	.4byte	0x1824
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL124
	.4byte	0x12b7
	.uleb128 0x30
	.4byte	.LVL125
	.4byte	0x12b7
	.uleb128 0x37
	.4byte	.LVL126
	.4byte	0x1133
	.4byte	0x184a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL127
	.4byte	0x1369
	.uleb128 0x31
	.4byte	.LVL128
	.4byte	0x11f5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xe10
	.uleb128 0x35
	.4byte	.LASF211
	.byte	0x2
	.byte	0xea
	.4byte	0xde
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1967
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x2
	.byte	0xea
	.4byte	0xaa0
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	.LASF148
	.byte	0x2
	.byte	0xea
	.4byte	0xb1e
	.4byte	.LLST28
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x1967
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5030
	.uleb128 0x3c
	.string	"ret"
	.byte	0x2
	.byte	0xf1
	.4byte	0xde
	.byte	0
	.uleb128 0x30
	.4byte	.LVL131
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL133
	.4byte	0x28af
	.4byte	0x190c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5030
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x30
	.4byte	.LVL135
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL136
	.4byte	0x28af
	.4byte	0x1949
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL138
	.4byte	0xde7
	.4byte	0x195d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL139
	.4byte	0xda9
	.byte	0
	.uleb128 0x7
	.4byte	0xe10
	.uleb128 0x3d
	.4byte	.LASF212
	.byte	0x2
	.2byte	0x104
	.4byte	0xde
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9b
	.uleb128 0x3e
	.4byte	.LASF213
	.byte	0x2
	.2byte	0x104
	.4byte	0x1b9b
	.4byte	.LLST29
	.uleb128 0x2a
	.4byte	.LASF214
	.byte	0x2
	.2byte	0x106
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x29
	.4byte	.LASF215
	.byte	0x2
	.2byte	0x107
	.4byte	0x9f
	.4byte	.LLST30
	.uleb128 0x29
	.4byte	.LASF216
	.byte	0x2
	.2byte	0x108
	.4byte	0x9f
	.4byte	.LLST31
	.uleb128 0x29
	.4byte	.LASF217
	.byte	0x2
	.2byte	0x109
	.4byte	0x89
	.4byte	.LLST32
	.uleb128 0x29
	.4byte	.LASF218
	.byte	0x2
	.2byte	0x10a
	.4byte	0x89
	.4byte	.LLST33
	.uleb128 0x29
	.4byte	.LASF219
	.byte	0x2
	.2byte	0x10b
	.4byte	0x89
	.4byte	.LLST34
	.uleb128 0x29
	.4byte	.LASF220
	.byte	0x2
	.2byte	0x10c
	.4byte	0x89
	.4byte	.LLST35
	.uleb128 0x29
	.4byte	.LASF221
	.byte	0x2
	.2byte	0x10d
	.4byte	0x89
	.4byte	.LLST36
	.uleb128 0x30
	.4byte	.LVL146
	.4byte	0x28a4
	.uleb128 0x30
	.4byte	.LVL147
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL148
	.4byte	0x28af
	.4byte	0x1a3e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.4byte	.LVL153
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL154
	.4byte	0x28af
	.4byte	0x1a7b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL155
	.4byte	0xf36
	.4byte	0x1a8f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL156
	.4byte	0x2907
	.4byte	0x1aa3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL164
	.4byte	0xde7
	.4byte	0x1ab7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL166
	.4byte	0xda9
	.4byte	0x1acb
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL168
	.4byte	0x1133
	.4byte	0x1adf
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL170
	.4byte	0x11f5
	.uleb128 0x37
	.4byte	.LVL172
	.4byte	0x12b7
	.4byte	0x1afc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL174
	.4byte	0x1369
	.uleb128 0x30
	.4byte	.LVL175
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL176
	.4byte	0x28af
	.4byte	0x1b69
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC102
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL177
	.4byte	0xe25
	.4byte	0x1b7d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL178
	.4byte	0xe79
	.4byte	0x1b91
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL179
	.4byte	0x160f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ba1
	.uleb128 0x7
	.4byte	0xbb6
	.uleb128 0x3d
	.4byte	.LASF222
	.byte	0x2
	.2byte	0x14f
	.4byte	0xde
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2f
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x14f
	.4byte	0xaa0
	.4byte	.LLST37
	.uleb128 0x36
	.4byte	.LASF223
	.4byte	0x1c2f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5048
	.uleb128 0x3f
	.string	"cfg"
	.byte	0x2
	.2byte	0x152
	.4byte	0xbb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.4byte	.LVL184
	.4byte	0x2912
	.4byte	0x1c1e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC110
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x151
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5048
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.byte	0
	.uleb128 0x31
	.4byte	.LVL187
	.4byte	0x196c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x11e0
	.uleb128 0x40
	.4byte	.LASF224
	.byte	0x2
	.2byte	0x17d
	.4byte	0xde
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1da4
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x17d
	.4byte	0xaa0
	.4byte	.LLST38
	.uleb128 0x41
	.4byte	.LASF225
	.byte	0x2
	.2byte	0x17d
	.4byte	0xc2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x41
	.4byte	.LASF184
	.byte	0x2
	.2byte	0x17d
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x1db4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5063
	.uleb128 0x42
	.4byte	0x14cd
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x2
	.2byte	0x187
	.4byte	0x1cc0
	.uleb128 0x2c
	.4byte	0x14e8
	.4byte	.LLST39
	.uleb128 0x2c
	.4byte	0x14dd
	.4byte	.LLST40
	.uleb128 0x31
	.4byte	.LVL201
	.4byte	0xf5f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL189
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL191
	.4byte	0x28af
	.4byte	0x1d11
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5063
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.byte	0
	.uleb128 0x30
	.4byte	.LVL193
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL195
	.4byte	0x28af
	.4byte	0x1d62
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5063
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL197
	.4byte	0x28f1
	.4byte	0x1d76
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL198
	.4byte	0x160f
	.4byte	0x1d8a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL199
	.4byte	0x291d
	.uleb128 0x31
	.4byte	.LVL207
	.4byte	0x28fc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x1db4
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x1da4
	.uleb128 0x40
	.4byte	.LASF226
	.byte	0x2
	.2byte	0x18c
	.4byte	0xde
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ec6
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x18c
	.4byte	0xaa0
	.4byte	.LLST41
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x1ed6
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5067
	.uleb128 0x30
	.4byte	.LVL209
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL211
	.4byte	0x28af
	.4byte	0x1e43
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5067
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.byte	0
	.uleb128 0x30
	.4byte	.LVL213
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL215
	.4byte	0x28af
	.4byte	0x1e94
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5067
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL217
	.4byte	0x28f1
	.4byte	0x1ea8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL218
	.4byte	0x160f
	.4byte	0x1ebc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL220
	.4byte	0x28fc
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x1ed6
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x1ec6
	.uleb128 0x43
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x1a9
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f28
	.uleb128 0x37
	.4byte	.LVL221
	.4byte	0x28f1
	.4byte	0x1f05
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL222
	.4byte	0x2928
	.uleb128 0x30
	.4byte	.LVL223
	.4byte	0x2933
	.uleb128 0x31
	.4byte	.LVL224
	.4byte	0x28fc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF228
	.byte	0x2
	.2byte	0x1b7
	.byte	0x1
	.4byte	0x1f4c
	.uleb128 0x22
	.4byte	.LASF229
	.byte	0x2
	.2byte	0x1b7
	.4byte	0xb5
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.2byte	0x1b9
	.4byte	0x1f4c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9e
	.uleb128 0x2b
	.4byte	0xeb7
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20d8
	.uleb128 0x2c
	.4byte	0xec8
	.4byte	.LLST42
	.uleb128 0x45
	.4byte	0xed3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x45
	.4byte	0xedf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x45
	.4byte	0xeeb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	0xef7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5086
	.uleb128 0x46
	.4byte	0xf04
	.uleb128 0x39
	.4byte	0xf0e
	.4byte	.LLST43
	.uleb128 0x2e
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0x203a
	.uleb128 0x2c
	.4byte	0xec8
	.4byte	.LLST44
	.uleb128 0x2c
	.4byte	0xed3
	.4byte	.LLST45
	.uleb128 0x2c
	.4byte	0xedf
	.4byte	.LLST46
	.uleb128 0x2c
	.4byte	0xeeb
	.4byte	.LLST47
	.uleb128 0x2f
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.uleb128 0x46
	.4byte	0xf04
	.uleb128 0x46
	.4byte	0xf0e
	.uleb128 0x2d
	.4byte	0xef7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5086
	.uleb128 0x30
	.4byte	.LVL227
	.4byte	0x28a4
	.uleb128 0x31
	.4byte	.LVL229
	.4byte	0x28af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5086
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC142
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0xe5e
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x2
	.2byte	0x1c9
	.4byte	0x2062
	.uleb128 0x2f
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x39
	.4byte	0xe6e
	.4byte	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x1f28
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x2
	.2byte	0x1ce
	.4byte	0x20ba
	.uleb128 0x2c
	.4byte	0x1f35
	.4byte	.LLST49
	.uleb128 0x2f
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x39
	.4byte	0x1f41
	.4byte	.LLST49
	.uleb128 0x31
	.4byte	.LVL235
	.4byte	0x293e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL231
	.4byte	0x28f1
	.4byte	0x20ce
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL234
	.4byte	0x28fc
	.byte	0
	.uleb128 0x40
	.4byte	.LASF230
	.byte	0x2
	.2byte	0x19a
	.4byte	0xde
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21d8
	.uleb128 0x3e
	.4byte	.LASF187
	.byte	0x2
	.2byte	0x19a
	.4byte	0x57
	.4byte	.LLST51
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x21e8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5071
	.uleb128 0x23
	.string	"ret"
	.byte	0x2
	.2byte	0x19d
	.4byte	0xde
	.uleb128 0x30
	.4byte	.LVL239
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL241
	.4byte	0x28af
	.4byte	0x216e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5071
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC150
	.byte	0
	.uleb128 0x37
	.4byte	.LVL243
	.4byte	0x28f1
	.4byte	0x2182
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL244
	.4byte	0x2949
	.4byte	0x219b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x37
	.4byte	.LVL245
	.4byte	0x28fc
	.4byte	0x21af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL246
	.4byte	0xeb7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_intr_service
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_isr_handle
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x21e8
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x21d8
	.uleb128 0x40
	.4byte	.LASF231
	.byte	0x2
	.2byte	0x1d9
	.4byte	0xde
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22ff
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x1d9
	.4byte	0xaa0
	.4byte	.LLST52
	.uleb128 0x3e
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x1d9
	.4byte	0xae2
	.4byte	.LLST53
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x22ff
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5093
	.uleb128 0x47
	.string	"ret"
	.byte	0x2
	.2byte	0x1dc
	.4byte	0xde
	.4byte	.LLST54
	.uleb128 0x30
	.4byte	.LVL248
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL250
	.4byte	0x28af
	.4byte	0x2297
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5093
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL252
	.4byte	0xf36
	.4byte	0x22ab
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL253
	.4byte	0x2954
	.4byte	0x22c5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL258
	.4byte	0x28a4
	.uleb128 0x31
	.4byte	.LVL259
	.4byte	0x28af
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC161
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xe10
	.uleb128 0x40
	.4byte	.LASF232
	.byte	0x2
	.2byte	0x1eb
	.4byte	0xde
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23c3
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x1eb
	.4byte	0xaa0
	.4byte	.LLST55
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x23c3
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5098
	.uleb128 0x47
	.string	"ret"
	.byte	0x2
	.2byte	0x1ee
	.4byte	0xde
	.4byte	.LLST56
	.uleb128 0x30
	.4byte	.LVL262
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL264
	.4byte	0x28af
	.4byte	0x239e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5098
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x37
	.4byte	.LVL266
	.4byte	0xf36
	.4byte	0x23b2
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL267
	.4byte	0x2960
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xdd2
	.uleb128 0x40
	.4byte	.LASF233
	.byte	0x2
	.2byte	0x1f7
	.4byte	0xde
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2457
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x1f7
	.4byte	0xaa0
	.4byte	.LLST57
	.uleb128 0x3e
	.4byte	.LASF234
	.byte	0x2
	.2byte	0x1f7
	.4byte	0xc22
	.4byte	.LLST58
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x2467
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5104
	.uleb128 0x30
	.4byte	.LVL273
	.4byte	0x28a4
	.uleb128 0x30
	.4byte	.LVL276
	.4byte	0x28a4
	.uleb128 0x30
	.4byte	.LVL278
	.4byte	0x28af
	.uleb128 0x37
	.4byte	.LVL280
	.4byte	0xf36
	.4byte	0x2440
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL281
	.4byte	0x296c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x2467
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x2457
	.uleb128 0x40
	.4byte	.LASF235
	.byte	0x2
	.2byte	0x204
	.4byte	0xde
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x252e
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x204
	.4byte	0xaa0
	.4byte	.LLST59
	.uleb128 0x41
	.4byte	.LASF234
	.byte	0x2
	.2byte	0x204
	.4byte	0x252e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x2534
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5109
	.uleb128 0x30
	.4byte	.LVL287
	.4byte	0x28a4
	.uleb128 0x30
	.4byte	.LVL290
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL292
	.4byte	0x28af
	.4byte	0x2503
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5109
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL294
	.4byte	0xf36
	.4byte	0x2517
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL295
	.4byte	0x2977
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc22
	.uleb128 0x7
	.4byte	0x2457
	.uleb128 0x40
	.4byte	.LASF236
	.byte	0x2
	.2byte	0x236
	.4byte	0xde
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f6
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x236
	.4byte	0xaa0
	.4byte	.LLST60
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x2606
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5114
	.uleb128 0x47
	.string	"r"
	.byte	0x2
	.2byte	0x239
	.4byte	0xde
	.4byte	.LLST61
	.uleb128 0x37
	.4byte	.LVL299
	.4byte	0xf36
	.4byte	0x2594
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL301
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL303
	.4byte	0x28af
	.4byte	0x25e5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5114
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC188
	.byte	0
	.uleb128 0x31
	.4byte	.LVL305
	.4byte	0x2982
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x2606
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x25f6
	.uleb128 0x40
	.4byte	.LASF237
	.byte	0x2
	.2byte	0x244
	.4byte	0xde
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26c8
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x244
	.4byte	0xaa0
	.4byte	.LLST62
	.uleb128 0x36
	.4byte	.LASF193
	.4byte	0x26d8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5119
	.uleb128 0x47
	.string	"r"
	.byte	0x2
	.2byte	0x247
	.4byte	0xde
	.4byte	.LLST63
	.uleb128 0x37
	.4byte	.LVL312
	.4byte	0xf36
	.4byte	0x2666
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL314
	.4byte	0x28a4
	.uleb128 0x37
	.4byte	.LVL316
	.4byte	0x28af
	.4byte	0x26b7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5119
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC188
	.byte	0
	.uleb128 0x31
	.4byte	.LVL318
	.4byte	0x298d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xcc
	.4byte	0x26d8
	.uleb128 0x16
	.4byte	0xbe
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x26c8
	.uleb128 0x48
	.4byte	.LASF239
	.byte	0x2
	.2byte	0x252
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2718
	.uleb128 0x37
	.4byte	.LVL323
	.4byte	0x28f1
	.4byte	0x2707
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL324
	.4byte	0x28fc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.LASF240
	.byte	0x2
	.2byte	0x259
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2753
	.uleb128 0x37
	.4byte	.LVL325
	.4byte	0x28f1
	.4byte	0x2742
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL326
	.4byte	0x28fc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.LASF241
	.byte	0x2
	.2byte	0x260
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x278a
	.uleb128 0x3e
	.4byte	.LASF242
	.byte	0x2
	.2byte	0x260
	.4byte	0x9f
	.4byte	.LLST64
	.uleb128 0x3e
	.4byte	.LASF243
	.byte	0x2
	.2byte	0x260
	.4byte	0x9f
	.4byte	.LLST65
	.byte	0
	.uleb128 0x48
	.4byte	.LASF244
	.byte	0x2
	.2byte	0x266
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27d1
	.uleb128 0x3e
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x266
	.4byte	0x89
	.4byte	.LLST66
	.uleb128 0x3e
	.4byte	.LASF167
	.byte	0x2
	.2byte	0x266
	.4byte	0x57
	.4byte	.LLST67
	.uleb128 0x3e
	.4byte	.LASF245
	.byte	0x2
	.2byte	0x266
	.4byte	0x11b
	.4byte	.LLST68
	.byte	0
	.uleb128 0x49
	.4byte	.LASF246
	.byte	0x2
	.byte	0x33
	.4byte	0x27e3
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC7
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x49
	.4byte	.LASF247
	.byte	0x2
	.byte	0x34
	.4byte	0x27f9
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_isr_func
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd43
	.uleb128 0x49
	.4byte	.LASF248
	.byte	0x2
	.byte	0x35
	.4byte	0xc38
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_isr_handle
	.uleb128 0x49
	.4byte	.LASF249
	.byte	0x2
	.byte	0x36
	.4byte	0x9f
	.uleb128 0x5
	.byte	0x3
	.4byte	isr_core_id
	.uleb128 0x49
	.4byte	.LASF250
	.byte	0x2
	.byte	0x37
	.4byte	0x143
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_spinlock
	.uleb128 0x15
	.4byte	0x9f
	.4byte	0x2842
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x21
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF251
	.byte	0x2
	.2byte	0x211
	.4byte	0x2854
	.uleb128 0x5
	.byte	0x3
	.4byte	GPIO_HOLD_MASK
	.uleb128 0x7
	.4byte	0x2832
	.uleb128 0x4a
	.4byte	.LASF252
	.byte	0x9
	.byte	0xd2
	.4byte	0x9b1
	.uleb128 0x15
	.4byte	0x9f
	.4byte	0x2874
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF253
	.byte	0xd
	.byte	0x1d
	.4byte	0x287f
	.uleb128 0x7
	.4byte	0x2864
	.uleb128 0x15
	.4byte	0xce7
	.4byte	0x2894
	.uleb128 0x16
	.4byte	0xbe
	.byte	0x27
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF254
	.byte	0xb
	.byte	0x38
	.4byte	0x289f
	.uleb128 0x7
	.4byte	0x2884
	.uleb128 0x4b
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0xc
	.byte	0x57
	.uleb128 0x4b
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xc
	.byte	0x6b
	.uleb128 0x4b
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xe
	.byte	0xed
	.uleb128 0x4b
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0x1
	.byte	0x7b
	.uleb128 0x4b
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0x1
	.byte	0x97
	.uleb128 0x4b
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x1
	.byte	0x89
	.uleb128 0x4b
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x1
	.byte	0xa5
	.uleb128 0x4b
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x8
	.byte	0xf4
	.uleb128 0x4b
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x8
	.byte	0xf3
	.uleb128 0x4b
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x1
	.byte	0x46
	.uleb128 0x4b
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0xf
	.byte	0x29
	.uleb128 0x4b
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x7
	.byte	0xde
	.uleb128 0x4b
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0x7
	.byte	0xd4
	.uleb128 0x4b
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0x10
	.byte	0x5a
	.uleb128 0x4b
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0x7
	.byte	0x99
	.uleb128 0x4b
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0x10
	.byte	0x57
	.uleb128 0x4c
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x103
	.uleb128 0x4c
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x10c
	.uleb128 0x4b
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0x1
	.byte	0xeb
	.uleb128 0x4b
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0x1
	.byte	0xf7
	.uleb128 0x4b
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0x1
	.byte	0xb4
	.uleb128 0x4b
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0x1
	.byte	0xc2
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x7
	.byte	0x72
	.sleb128 -268243276
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x7
	.byte	0x72
	.sleb128 -268243276
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL68
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
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL85
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91-1
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE34
	.2byte	0x3
	.byte	0x78
	.sleb128 -32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98-1
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101-1
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL104-1
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL110
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
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
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x3
	.byte	0x7f
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LFE41
	.2byte	0x3
	.byte	0x7f
	.sleb128 -32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL130
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL144
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL196
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL200
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL225
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL236
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL235
	.4byte	.LVL237
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL234
	.4byte	.LVL237
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3844
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL246
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x3
	.byte	0x7f
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL259
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL247
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL255
	.4byte	.LVL257
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL260
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL259
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL263
	.4byte	.LVL265
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL265
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x3
	.byte	0x78
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL265
	.4byte	.LVL267
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL268
	.4byte	.LVL271
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL272
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL275
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL277
	.4byte	.LVL279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL284
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL272
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL285
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL291
	.4byte	.LVL293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL296
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL297
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302
	.4byte	.LVL304
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL304
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL308
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL298
	.4byte	.LVL300
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL305
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL307
	.4byte	.LVL309
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL310
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL315
	.4byte	.LVL317
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL321
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL311
	.4byte	.LVL313
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL318
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL320
	.4byte	.LVL322
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL327
	.4byte	.LVL330
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL330
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x4
	.byte	0x73
	.sleb128 -76
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL331
	.4byte	.LVL334
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL334
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL331
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL333
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL332
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x11c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF207:
	.string	"level"
.LASF221:
	.string	"pd_en"
.LASF254:
	.string	"rtc_gpio_desc"
.LASF16:
	.string	"sizetype"
.LASF42:
	.string	"start"
.LASF153:
	.string	"GPIO_PULLUP_ONLY"
.LASF86:
	.string	"cali_data"
.LASF23:
	.string	"owner"
.LASF38:
	.string	"int_ena"
.LASF144:
	.string	"GPIO_PULLDOWN_DISABLE"
.LASF130:
	.string	"GPIO_INTR_LOW_LEVEL"
.LASF12:
	.string	"int32_t"
.LASF168:
	.string	"pullup"
.LASF138:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF223:
	.string	"__func__"
.LASF127:
	.string	"GPIO_INTR_POSEDGE"
.LASF280:
	.string	"rtc_gpio_is_valid_gpio"
.LASF60:
	.string	"sdio_select"
.LASF266:
	.string	"esp_intr_get_cpu"
.LASF54:
	.string	"bt_select"
.LASF154:
	.string	"GPIO_PULLDOWN_ONLY"
.LASF214:
	.string	"gpio_pin_mask"
.LASF37:
	.string	"config"
.LASF272:
	.string	"rtc_gpio_wakeup_disable"
.LASF244:
	.string	"gpio_iomux_out"
.LASF74:
	.string	"reserved_5c"
.LASF192:
	.string	"gpio_num"
.LASF238:
	.string	"gpio_intr_service"
.LASF279:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/driver"
.LASF66:
	.string	"enable1_w1tc"
.LASF4:
	.string	"__uint8_t"
.LASF195:
	.string	"gpio_intr_enable"
.LASF215:
	.string	"io_reg"
.LASF65:
	.string	"enable1_w1ts"
.LASF31:
	.string	"intr"
.LASF128:
	.string	"GPIO_INTR_NEGEDGE"
.LASF85:
	.string	"cali_conf"
.LASF15:
	.string	"long int"
.LASF191:
	.string	"gpio_output_enable"
.LASF274:
	.string	"rtc_gpio_get_drive_capability"
.LASF242:
	.string	"gpio"
.LASF35:
	.string	"int_type"
.LASF82:
	.string	"pcpu_int1"
.LASF201:
	.string	"gpio_pulldown_en"
.LASF199:
	.string	"gpio_pullup_en"
.LASF76:
	.string	"acpu_nmi_int"
.LASF198:
	.string	"gpio_intr_status_h"
.LASF135:
	.string	"GPIO_MODE_INPUT"
.LASF190:
	.string	"gpio_output_disable"
.LASF0:
	.string	"signed char"
.LASF43:
	.string	"value_sync2"
.LASF11:
	.string	"uint8_t"
.LASF225:
	.string	"isr_handler"
.LASF90:
	.string	"GPIO_NUM_0"
.LASF91:
	.string	"GPIO_NUM_1"
.LASF92:
	.string	"GPIO_NUM_2"
.LASF93:
	.string	"GPIO_NUM_3"
.LASF94:
	.string	"GPIO_NUM_4"
.LASF95:
	.string	"GPIO_NUM_5"
.LASF96:
	.string	"GPIO_NUM_6"
.LASF97:
	.string	"GPIO_NUM_7"
.LASF98:
	.string	"GPIO_NUM_8"
.LASF99:
	.string	"GPIO_NUM_9"
.LASF177:
	.string	"rtc_gpio_desc_t"
.LASF212:
	.string	"gpio_config"
.LASF152:
	.string	"gpio_config_t"
.LASF237:
	.string	"gpio_hold_dis"
.LASF247:
	.string	"gpio_isr_func"
.LASF1:
	.string	"unsigned char"
.LASF165:
	.string	"gpio_isr_t"
.LASF278:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/gpio.c"
.LASF251:
	.string	"GPIO_HOLD_MASK"
.LASF136:
	.string	"GPIO_MODE_OUTPUT"
.LASF193:
	.string	"__FUNCTION__"
.LASF50:
	.string	"inv_sel"
.LASF178:
	.string	"ESP_LOG_NONE"
.LASF196:
	.string	"gpio_isr_register"
.LASF22:
	.string	"_Bool"
.LASF246:
	.string	"GPIO_TAG"
.LASF249:
	.string	"isr_core_id"
.LASF189:
	.string	"gpio_isr_alloc_t"
.LASF208:
	.string	"gpio_get_level"
.LASF18:
	.string	"char"
.LASF205:
	.string	"gpio_intr_disable"
.LASF277:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF186:
	.string	"source"
.LASF126:
	.string	"GPIO_INTR_DISABLE"
.LASF204:
	.string	"core_id"
.LASF179:
	.string	"ESP_LOG_ERROR"
.LASF45:
	.string	"rdy_real"
.LASF163:
	.string	"GPIO_DRIVE_CAP_MAX"
.LASF166:
	.string	"gpio_isr_handle_t"
.LASF134:
	.string	"GPIO_MODE_DISABLE"
.LASF88:
	.string	"func_out_sel_cfg"
.LASF263:
	.string	"vTaskExitCritical"
.LASF164:
	.string	"gpio_drive_cap_t"
.LASF197:
	.string	"gpio_intr_status"
.LASF137:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF235:
	.string	"gpio_get_drive_capability"
.LASF217:
	.string	"input_en"
.LASF113:
	.string	"GPIO_NUM_25"
.LASF230:
	.string	"gpio_install_isr_service"
.LASF64:
	.string	"enable1"
.LASF83:
	.string	"pcpu_nmi_int1"
.LASF59:
	.string	"out1_w1tc"
.LASF265:
	.string	"__assert_func"
.LASF175:
	.string	"drv_s"
.LASF58:
	.string	"out1_w1ts"
.LASF145:
	.string	"GPIO_PULLDOWN_ENABLE"
.LASF219:
	.string	"od_en"
.LASF259:
	.string	"rtc_gpio_pullup_dis"
.LASF268:
	.string	"free"
.LASF9:
	.string	"__uint64_t"
.LASF17:
	.string	"long unsigned int"
.LASF282:
	.string	"gpio_uninstall_isr_service"
.LASF253:
	.string	"GPIO_PIN_MUX_REG"
.LASF68:
	.string	"status"
.LASF229:
	.string	"param"
.LASF236:
	.string	"gpio_hold_en"
.LASF218:
	.string	"output_en"
.LASF173:
	.string	"hold_force"
.LASF275:
	.string	"rtc_gpio_hold_en"
.LASF117:
	.string	"GPIO_NUM_33"
.LASF49:
	.string	"sig_in_sel"
.LASF281:
	.string	"gpio_intr_status_clr"
.LASF240:
	.string	"gpio_deep_sleep_hold_dis"
.LASF125:
	.string	"gpio_num_t"
.LASF234:
	.string	"strength"
.LASF47:
	.string	"func_sel"
.LASF184:
	.string	"args"
.LASF271:
	.string	"rtc_gpio_wakeup_enable"
.LASF142:
	.string	"GPIO_PULLUP_ENABLE"
.LASF6:
	.string	"__uint32_t"
.LASF81:
	.string	"acpu_nmi_int1"
.LASF133:
	.string	"gpio_int_type_t"
.LASF8:
	.string	"long long int"
.LASF176:
	.string	"rtc_num"
.LASF187:
	.string	"intr_alloc_flags"
.LASF61:
	.string	"enable"
.LASF20:
	.string	"intr_handle_data_t"
.LASF147:
	.string	"pin_bit_mask"
.LASF170:
	.string	"slpsel"
.LASF161:
	.string	"GPIO_DRIVE_CAP_DEFAULT"
.LASF139:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF19:
	.string	"esp_err_t"
.LASF100:
	.string	"GPIO_NUM_10"
.LASF101:
	.string	"GPIO_NUM_11"
.LASF102:
	.string	"GPIO_NUM_12"
.LASF103:
	.string	"GPIO_NUM_13"
.LASF104:
	.string	"GPIO_NUM_14"
.LASF105:
	.string	"GPIO_NUM_15"
.LASF106:
	.string	"GPIO_NUM_16"
.LASF107:
	.string	"GPIO_NUM_17"
.LASF108:
	.string	"GPIO_NUM_18"
.LASF109:
	.string	"GPIO_NUM_19"
.LASF124:
	.string	"GPIO_NUM_MAX"
.LASF158:
	.string	"GPIO_DRIVE_CAP_0"
.LASF159:
	.string	"GPIO_DRIVE_CAP_1"
.LASF160:
	.string	"GPIO_DRIVE_CAP_2"
.LASF162:
	.string	"GPIO_DRIVE_CAP_3"
.LASF41:
	.string	"reserved10"
.LASF57:
	.string	"out1"
.LASF53:
	.string	"reserved12"
.LASF29:
	.string	"reserved16"
.LASF39:
	.string	"reserved18"
.LASF24:
	.string	"count"
.LASF70:
	.string	"status_w1tc"
.LASF232:
	.string	"gpio_wakeup_disable"
.LASF149:
	.string	"pull_up_en"
.LASF7:
	.string	"unsigned int"
.LASF110:
	.string	"GPIO_NUM_21"
.LASF111:
	.string	"GPIO_NUM_22"
.LASF112:
	.string	"GPIO_NUM_23"
.LASF69:
	.string	"status_w1ts"
.LASF114:
	.string	"GPIO_NUM_26"
.LASF115:
	.string	"GPIO_NUM_27"
.LASF248:
	.string	"gpio_isr_handle"
.LASF44:
	.string	"reserved20"
.LASF157:
	.string	"gpio_pull_mode_t"
.LASF30:
	.string	"intr_st"
.LASF180:
	.string	"ESP_LOG_WARN"
.LASF156:
	.string	"GPIO_FLOATING"
.LASF116:
	.string	"GPIO_NUM_32"
.LASF51:
	.string	"oen_sel"
.LASF118:
	.string	"GPIO_NUM_34"
.LASF119:
	.string	"GPIO_NUM_35"
.LASF120:
	.string	"GPIO_NUM_36"
.LASF121:
	.string	"GPIO_NUM_37"
.LASF122:
	.string	"GPIO_NUM_38"
.LASF123:
	.string	"GPIO_NUM_39"
.LASF131:
	.string	"GPIO_INTR_HIGH_LEVEL"
.LASF174:
	.string	"drv_v"
.LASF185:
	.string	"gpio_isr_func_t"
.LASF33:
	.string	"pad_driver"
.LASF21:
	.string	"intr_handle_t"
.LASF183:
	.string	"ESP_LOG_VERBOSE"
.LASF46:
	.string	"rdy_sync2"
.LASF270:
	.string	"calloc"
.LASF222:
	.string	"gpio_reset_pin"
.LASF40:
	.string	"rtc_max"
.LASF202:
	.string	"gpio_pulldown_dis"
.LASF188:
	.string	"handle"
.LASF84:
	.string	"cpusdio_int1"
.LASF255:
	.string	"esp_log_timestamp"
.LASF52:
	.string	"oen_inv_sel"
.LASF10:
	.string	"long long unsigned int"
.LASF171:
	.string	"slpie"
.LASF78:
	.string	"pcpu_nmi_int"
.LASF36:
	.string	"wakeup_enable"
.LASF228:
	.string	"gpio_isr_register_on_core_static"
.LASF264:
	.string	"rtc_gpio_deinit"
.LASF250:
	.string	"gpio_spinlock"
.LASF241:
	.string	"gpio_iomux_in"
.LASF273:
	.string	"rtc_gpio_set_drive_capability"
.LASF48:
	.string	"sig_in_inv"
.LASF257:
	.string	"gpio_matrix_out"
.LASF89:
	.string	"gpio_dev_t"
.LASF25:
	.string	"portMUX_TYPE"
.LASF181:
	.string	"ESP_LOG_INFO"
.LASF87:
	.string	"func_in_sel_cfg"
.LASF209:
	.string	"gpio_set_pull_mode"
.LASF227:
	.string	"xPortGetCoreID"
.LASF146:
	.string	"gpio_pulldown_t"
.LASF269:
	.string	"esp_intr_alloc"
.LASF231:
	.string	"gpio_wakeup_enable"
.LASF140:
	.string	"gpio_mode_t"
.LASF73:
	.string	"status1_w1tc"
.LASF224:
	.string	"gpio_isr_handler_add"
.LASF72:
	.string	"status1_w1ts"
.LASF71:
	.string	"status1"
.LASF56:
	.string	"out_w1tc"
.LASF75:
	.string	"acpu_int"
.LASF55:
	.string	"out_w1ts"
.LASF155:
	.string	"GPIO_PULLUP_PULLDOWN"
.LASF262:
	.string	"vTaskEnterCritical"
.LASF258:
	.string	"rtc_gpio_pullup_en"
.LASF194:
	.string	"gpio_set_intr_type"
.LASF210:
	.string	"pull"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint64_t"
.LASF148:
	.string	"mode"
.LASF167:
	.string	"func"
.LASF245:
	.string	"oen_inv"
.LASF220:
	.string	"pu_en"
.LASF143:
	.string	"gpio_pullup_t"
.LASF150:
	.string	"pull_down_en"
.LASF276:
	.string	"rtc_gpio_hold_dis"
.LASF169:
	.string	"pulldown"
.LASF63:
	.string	"enable_w1tc"
.LASF216:
	.string	"io_num"
.LASF62:
	.string	"enable_w1ts"
.LASF32:
	.string	"reserved0"
.LASF34:
	.string	"reserved3"
.LASF27:
	.string	"reserved8"
.LASF80:
	.string	"acpu_int1"
.LASF28:
	.string	"strapping"
.LASF182:
	.string	"ESP_LOG_DEBUG"
.LASF141:
	.string	"GPIO_PULLUP_DISABLE"
.LASF260:
	.string	"rtc_gpio_pulldown_en"
.LASF67:
	.string	"strap"
.LASF243:
	.string	"signal_idx"
.LASF200:
	.string	"gpio_pullup_dis"
.LASF129:
	.string	"GPIO_INTR_ANYEDGE"
.LASF239:
	.string	"gpio_deep_sleep_hold_en"
.LASF13:
	.string	"uint32_t"
.LASF206:
	.string	"gpio_set_level"
.LASF211:
	.string	"gpio_set_direction"
.LASF233:
	.string	"gpio_set_drive_capability"
.LASF3:
	.string	"short unsigned int"
.LASF267:
	.string	"esp_intr_free"
.LASF252:
	.string	"GPIO"
.LASF5:
	.string	"__int32_t"
.LASF226:
	.string	"gpio_isr_handler_remove"
.LASF172:
	.string	"hold"
.LASF132:
	.string	"GPIO_INTR_MAX"
.LASF261:
	.string	"rtc_gpio_pulldown_dis"
.LASF151:
	.string	"intr_type"
.LASF79:
	.string	"cpusdio_int"
.LASF256:
	.string	"esp_log_write"
.LASF203:
	.string	"gpio_intr_enable_on_core"
.LASF26:
	.string	"data"
.LASF77:
	.string	"pcpu_int"
.LASF213:
	.string	"pGPIOConfig"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
