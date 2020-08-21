	.file	"rtc_wdt.c"
	.text
.Ltext0:
	.section	.text.rtc_wdt_get_protect_status,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988324
	.literal .LC1, -1356348065
	.align	4
	.global	rtc_wdt_get_protect_status
	.type	rtc_wdt_get_protect_status, @function
rtc_wdt_get_protect_status:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_wdt.c"
	.loc 1 20 0
	entry	sp, 32
.LCFI0:
	.loc 1 21 0
	l32r	a2, .LC0
	movi.n	a9, 1
	memw
	l32i.n	a8, a2, 0
	l32r	a2, .LC1
	add.n	a8, a8, a2
	movi.n	a2, 0
	movnez	a2, a9, a8
	.loc 1 22 0
	retw.n
.LFE0:
	.size	rtc_wdt_get_protect_status, .-rtc_wdt_get_protect_status
	.section	.text.rtc_wdt_protect_off,"ax",@progbits
	.literal_position
	.literal .LC2, 1072988324
	.literal .LC3, 1356348065
	.align	4
	.global	rtc_wdt_protect_off
	.type	rtc_wdt_protect_off, @function
rtc_wdt_protect_off:
.LFB1:
	.loc 1 25 0
	entry	sp, 32
.LCFI1:
	.loc 1 26 0
	l32r	a9, .LC3
	l32r	a8, .LC2
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE1:
	.size	rtc_wdt_protect_off, .-rtc_wdt_protect_off
	.section	.text.rtc_wdt_protect_on,"ax",@progbits
	.literal_position
	.literal .LC4, 1072988324
	.align	4
	.global	rtc_wdt_protect_on
	.type	rtc_wdt_protect_on, @function
rtc_wdt_protect_on:
.LFB2:
	.loc 1 30 0
	entry	sp, 32
.LCFI2:
	.loc 1 31 0
	l32r	a8, .LC4
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE2:
	.size	rtc_wdt_protect_on, .-rtc_wdt_protect_on
	.section	.text.rtc_wdt_enable,"ax",@progbits
	.literal_position
	.literal .LC5, 1072988320
	.literal .LC6, -2147483648
	.literal .LC7, 1072988300
	.literal .LC8, -2147483520
	.align	4
	.global	rtc_wdt_enable
	.type	rtc_wdt_enable, @function
rtc_wdt_enable:
.LFB3:
	.loc 1 36 0
	entry	sp, 32
.LCFI3:
	.loc 1 37 0
	l32r	a9, .LC5
	l32r	a8, .LC6
	memw
	l32i.n	a10, a9, 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 38 0
	l32r	a9, .LC7
	l32r	a8, .LC8
	memw
	l32i.n	a10, a9, 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE3:
	.size	rtc_wdt_enable, .-rtc_wdt_enable
	.section	.text.rtc_wdt_flashboot_mode_enable,"ax",@progbits
	.literal_position
	.literal .LC9, 1072988300
	.align	4
	.global	rtc_wdt_flashboot_mode_enable
	.type	rtc_wdt_flashboot_mode_enable, @function
rtc_wdt_flashboot_mode_enable:
.LFB4:
	.loc 1 42 0
	entry	sp, 32
.LCFI4:
	.loc 1 43 0
	l32r	a9, .LC9
	movi	a8, 0x400
	memw
	l32i.n	a10, a9, 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LFE4:
	.size	rtc_wdt_flashboot_mode_enable, .-rtc_wdt_flashboot_mode_enable
	.section	.text.rtc_wdt_feed,"ax",@progbits
	.literal_position
	.literal .LC10, 1072988324
	.literal .LC11, 1356348065
	.literal .LC12, 1072988320
	.literal .LC13, -2147483648
	.align	4
	.global	rtc_wdt_feed
	.type	rtc_wdt_feed, @function
rtc_wdt_feed:
.LFB6:
	.loc 1 65 0
	entry	sp, 32
.LCFI5:
.LBB16:
.LBB17:
	.loc 1 21 0
	l32r	a8, .LC10
.LBE17:
.LBE16:
	.loc 1 67 0
	l32r	a10, .LC11
.LBB19:
.LBB18:
	.loc 1 21 0
	memw
	l32i.n	a9, a8, 0
.LBE18:
.LBE19:
	.loc 1 67 0
	beq	a9, a10, .L7
.LBB20:
.LBB21:
	.loc 1 26 0
	memw
	s32i.n	a10, a8, 0
.L7:
.LBE21:
.LBE20:
	.loc 1 70 0
	l32r	a10, .LC12
	l32r	a8, .LC13
	memw
	l32i.n	a11, a10, 0
	or	a8, a11, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 71 0
	l32r	a8, .LC11
	beq	a9, a8, .L6
.LBB22:
.LBB23:
	.loc 1 31 0
	l32r	a8, .LC10
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
.L6:
	retw.n
.LBE23:
.LBE22:
.LFE6:
	.size	rtc_wdt_feed, .-rtc_wdt_feed
	.global	__udivdi3
	.section	.text.rtc_wdt_set_time,"ax",@progbits
	.literal_position
	.literal .LC14, 1000, 0
	.literal .LC15, 1072988304
	.literal .LC16, 1072988308
	.literal .LC17, 1072988312
	.literal .LC18, 1072988316
	.align	4
	.global	rtc_wdt_set_time
	.type	rtc_wdt_set_time, @function
rtc_wdt_set_time:
.LFB7:
	.loc 1 77 0
.LVL0:
	entry	sp, 32
.LCFI6:
	.loc 1 79 0
	movi	a8, 0x102
	.loc 1 78 0
	bgeui	a2, 4, .L10
	.loc 1 81 0
	call8	rtc_clk_slow_freq_get_hz
.LVL1:
	muluh	a11, a10, a3
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	mull	a10, a10, a3
	call8	__udivdi3
.LVL2:
	.loc 1 82 0
	bnez.n	a2, .L11
	.loc 1 83 0
	l32r	a3, .LC15
.LVL3:
	.loc 1 92 0
	mov.n	a8, a2
	.loc 1 83 0
	memw
	s32i.n	a10, a3, 0
	j	.L10
.LVL4:
.L11:
	.loc 1 84 0
	bnei	a2, 1, .L12
	.loc 1 85 0
	l32r	a2, .LC16
.LVL5:
	j	.L15
.LVL6:
.L12:
	.loc 1 86 0
	bnei	a2, 2, .L13
	.loc 1 87 0
	l32r	a2, .LC17
.LVL7:
	j	.L15
.LVL8:
.L13:
	.loc 1 89 0
	l32r	a2, .LC18
.LVL9:
.L15:
	memw
	s32i.n	a10, a2, 0
	.loc 1 92 0
	movi.n	a8, 0
.LVL10:
.L10:
	.loc 1 93 0
	mov.n	a2, a8
	retw.n
.LFE7:
	.size	rtc_wdt_set_time, .-rtc_wdt_set_time
	.section	.text.rtc_wdt_get_timeout,"ax",@progbits
	.literal_position
	.literal .LC19, 1072988304
	.literal .LC20, 1072988308
	.literal .LC21, 1072988312
	.literal .LC22, 1072988316
	.align	4
	.global	rtc_wdt_get_timeout
	.type	rtc_wdt_get_timeout, @function
rtc_wdt_get_timeout:
.LFB8:
	.loc 1 96 0
.LVL11:
	entry	sp, 32
.LCFI7:
	.loc 1 98 0
	movi	a8, 0x102
	.loc 1 97 0
	bgeui	a2, 4, .L17
	.loc 1 101 0
	bnez.n	a2, .L18
	.loc 1 102 0
	l32r	a2, .LC19
.LVL12:
	j	.L23
.LVL13:
.L18:
	.loc 1 103 0
	bnei	a2, 1, .L20
	.loc 1 104 0
	l32r	a2, .LC20
.LVL14:
	j	.L23
.LVL15:
.L20:
	.loc 1 105 0
	bnei	a2, 2, .L21
	.loc 1 106 0
	l32r	a2, .LC21
.LVL16:
	j	.L23
.LVL17:
.L21:
	.loc 1 108 0
	l32r	a2, .LC22
.LVL18:
.L23:
	memw
	l32i.n	a2, a2, 0
.LVL19:
	.loc 1 111 0
	call8	rtc_clk_slow_freq_get_hz
.LVL20:
	slli	a8, a2, 5
	sub	a8, a8, a2
	addx4	a8, a8, a2
	slli	a8, a8, 3
	quou	a10, a8, a10
	s32i.n	a10, a3, 0
	.loc 1 113 0
	movi.n	a8, 0
.LVL21:
.L17:
	.loc 1 114 0
	mov.n	a2, a8
	retw.n
.LFE8:
	.size	rtc_wdt_get_timeout, .-rtc_wdt_get_timeout
	.section	.text.rtc_wdt_set_stage,"ax",@progbits
	.literal_position
	.literal .LC23, 1072988300
	.literal .LC24, -1879048193
	.literal .LC25, -234881025
	.literal .LC26, -29360129
	.literal .LC27, -3670017
	.align	4
	.global	rtc_wdt_set_stage
	.type	rtc_wdt_set_stage, @function
rtc_wdt_set_stage:
.LFB9:
	.loc 1 117 0
.LVL22:
	entry	sp, 32
.LCFI8:
	.loc 1 118 0
	bgeui	a2, 4, .L31
	bgeui	a3, 5, .L31
	l32r	a8, .LC23
	.loc 1 121 0
	bnez.n	a2, .L28
	.loc 1 122 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC24
	slli	a3, a3, 28
.LVL23:
	and	a9, a10, a9
	or	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
	retw.n
.LVL24:
.L28:
	.loc 1 124 0
	memw
	l32i.n	a9, a8, 0
	.loc 1 123 0
	bnei	a2, 1, .L29
	.loc 1 124 0
	l32r	a2, .LC25
.LVL25:
	slli	a3, a3, 25
.LVL26:
	and	a2, a9, a2
	j	.L34
.LVL27:
.L29:
	.loc 1 125 0
	bnei	a2, 2, .L30
.LVL28:
.LBB26:
.LBB27:
	.loc 1 126 0
	l32r	a2, .LC26
.LVL29:
	slli	a3, a3, 22
.LVL30:
	and	a2, a9, a2
	j	.L34
.LVL31:
.L30:
.LBE27:
.LBE26:
	.loc 1 128 0
	l32r	a2, .LC27
.LVL32:
	slli	a3, a3, 19
.LVL33:
	and	a2, a9, a2
.L34:
	or	a3, a2, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LVL34:
.L31:
	.loc 1 119 0
	movi	a2, 0x102
.LVL35:
	.loc 1 132 0
	retw.n
.LFE9:
	.size	rtc_wdt_set_stage, .-rtc_wdt_set_stage
	.section	.text.rtc_wdt_disable,"ax",@progbits
	.literal_position
	.literal .LC28, 1072988324
	.literal .LC29, 1356348065
	.literal .LC30, 1072988320
	.literal .LC31, -2147483648
	.literal .LC32, 1072988300
	.literal .LC33, -29360129
	.literal .LC34, 2147483647
	.align	4
	.global	rtc_wdt_disable
	.type	rtc_wdt_disable, @function
rtc_wdt_disable:
.LFB5:
	.loc 1 47 0
	entry	sp, 32
.LCFI9:
.LBB38:
.LBB39:
	.loc 1 21 0
	l32r	a2, .LC28
.LBE39:
.LBE38:
	.loc 1 49 0
	l32r	a8, .LC29
.LBB41:
.LBB40:
	.loc 1 21 0
	memw
	l32i.n	a3, a2, 0
.LBE40:
.LBE41:
	.loc 1 49 0
	beq	a3, a8, .L36
.LBB42:
.LBB43:
	.loc 1 26 0
	memw
	s32i.n	a8, a2, 0
.L36:
.LBE43:
.LBE42:
	.loc 1 52 0
	l32r	a8, .LC30
	l32r	a2, .LC31
	memw
	l32i.n	a9, a8, 0
	.loc 1 53 0
	movi.n	a11, 0
	.loc 1 52 0
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 53 0
	mov.n	a10, a11
	call8	rtc_wdt_set_stage
.LVL36:
	.loc 1 54 0
	movi.n	a11, 0
	movi.n	a10, 1
	call8	rtc_wdt_set_stage
.LVL37:
.LBB44:
.LBB45:
.LBB46:
	.loc 1 126 0
	l32r	a2, .LC32
	l32r	a8, .LC33
	memw
	l32i.n	a9, a2, 0
.LBE46:
.LBE45:
.LBE44:
	.loc 1 56 0
	movi.n	a11, 0
.LBB49:
.LBB48:
.LBB47:
	.loc 1 126 0
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE47:
.LBE48:
.LBE49:
	.loc 1 56 0
	movi.n	a10, 3
	call8	rtc_wdt_set_stage
.LVL38:
	.loc 1 57 0
	memw
	l32i.n	a9, a2, 0
	movi	a8, -0x401
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 58 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC34
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 59 0
	l32r	a2, .LC29
	beq	a3, a2, .L35
.LBB50:
.LBB51:
	.loc 1 31 0
	l32r	a2, .LC28
	movi.n	a3, 0
	memw
	s32i.n	a3, a2, 0
.L35:
	retw.n
.LBE51:
.LBE50:
.LFE5:
	.size	rtc_wdt_disable, .-rtc_wdt_disable
	.section	.text.rtc_wdt_set_length_of_reset_signal,"ax",@progbits
	.literal_position
	.literal .LC35, 1072988300
	.literal .LC36, -14337
	.literal .LC37, -114689
	.align	4
	.global	rtc_wdt_set_length_of_reset_signal
	.type	rtc_wdt_set_length_of_reset_signal, @function
rtc_wdt_set_length_of_reset_signal:
.LFB10:
	.loc 1 135 0
.LVL39:
	entry	sp, 32
.LCFI10:
	.loc 1 136 0
	bgeui	a2, 2, .L43
	bgeui	a3, 8, .L43
	l32r	a8, .LC35
	.loc 1 139 0
	bnez.n	a2, .L42
	.loc 1 140 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC36
	slli	a3, a3, 11
.LVL40:
	and	a9, a10, a9
	or	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
	retw.n
.LVL41:
.L42:
	.loc 1 142 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC37
.LVL42:
	slli	a3, a3, 14
.LVL43:
	and	a2, a9, a2
	or	a3, a2, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 145 0
	movi.n	a2, 0
	retw.n
.LVL44:
.L43:
	.loc 1 137 0
	movi	a2, 0x102
.LVL45:
	.loc 1 146 0
	retw.n
.LFE10:
	.size	rtc_wdt_set_length_of_reset_signal, .-rtc_wdt_set_length_of_reset_signal
	.section	.text.rtc_wdt_is_on,"ax",@progbits
	.literal_position
	.literal .LC38, 1072988300
	.align	4
	.global	rtc_wdt_is_on
	.type	rtc_wdt_is_on, @function
rtc_wdt_is_on:
.LFB11:
	.loc 1 149 0
	entry	sp, 32
.LCFI11:
	.loc 1 150 0
	l32r	a8, .LC38
	movi.n	a2, 1
	memw
	l32i.n	a9, a8, 0
	bltz	a9, .L47
	.loc 1 150 0 is_stmt 0 discriminator 2
	memw
	l32i.n	a2, a8, 0
	extui	a2, a2, 10, 1
.L47:
	.loc 1 151 0 is_stmt 1 discriminator 6
	retw.n
.LFE11:
	.size	rtc_wdt_is_on, .-rtc_wdt_is_on
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI8-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x47f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0x48
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1e
	.4byte	0x77
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
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x40
	.4byte	0xeb
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x45
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x48
	.4byte	0x121
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4e
	.4byte	0xf6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x51
	.4byte	0x145
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x54
	.4byte	0x12c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x57
	.4byte	0x18d
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.byte	0x60
	.4byte	0x150
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x1
	.byte	0x13
	.4byte	0x1a4
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF41
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1
	.byte	0x74
	.4byte	0xbb
	.byte	0x1
	.4byte	0x1e2
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x1
	.byte	0x74
	.4byte	0xeb
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x1
	.byte	0x74
	.4byte	0x121
	.byte	0
	.uleb128 0xb
	.4byte	0x198
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	0x1ab
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	0x1b3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x23
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x29
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.byte	0x40
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27f
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0x42
	.4byte	0x1a4
	.uleb128 0xf
	.4byte	0x198
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x42
	.uleb128 0x10
	.4byte	0x1ab
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x44
	.uleb128 0x10
	.4byte	0x1b3
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4c
	.4byte	0xbb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cf
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4c
	.4byte	0xeb
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4c
	.4byte	0x5e
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x51
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0x476
	.byte	0
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0x5f
	.4byte	0xbb
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31d
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5f
	.4byte	0xeb
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x5f
	.4byte	0x31d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.byte	0x64
	.4byte	0x89
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0x476
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.4byte	0x5e
	.uleb128 0x18
	.4byte	0x1bb
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x365
	.uleb128 0x19
	.4byte	0x1cb
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	0x1d6
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x19
	.4byte	0x1cb
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	0x1d6
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x429
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0x30
	.4byte	0x1a4
	.uleb128 0xf
	.4byte	0x198
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.4byte	0x1ab
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.4byte	0x1bb
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x37
	.4byte	0x3d5
	.uleb128 0x1c
	.4byte	0x1d6
	.byte	0
	.uleb128 0x1c
	.4byte	0x1cb
	.byte	0x2
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1c
	.4byte	0x1cb
	.byte	0x2
	.uleb128 0x1c
	.4byte	0x1d6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x1b3
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1e
	.4byte	.LVL36
	.4byte	0x1bb
	.4byte	0x3fc
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0x1bb
	.4byte	0x414
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL38
	.4byte	0x1bb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x1
	.byte	0x86
	.4byte	0xbb
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x86
	.4byte	0x145
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x86
	.4byte	0x18d
	.4byte	.LLST10
	.byte	0
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0x94
	.4byte	0x1a4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x124
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"RTC_WDT_CPU_RESET_SIG"
.LASF39:
	.string	"RTC_WDT_LENGTH_3_2us"
.LASF12:
	.string	"uint64_t"
.LASF31:
	.string	"rtc_wdt_reset_sig_t"
.LASF14:
	.string	"sizetype"
.LASF65:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF18:
	.string	"RTC_WDT_STAGE0"
.LASF19:
	.string	"RTC_WDT_STAGE1"
.LASF20:
	.string	"RTC_WDT_STAGE2"
.LASF21:
	.string	"RTC_WDT_STAGE3"
.LASF62:
	.string	"rtc_wdt_get_protect_status"
.LASF55:
	.string	"protect"
.LASF5:
	.string	"__uint32_t"
.LASF45:
	.string	"stage_sel"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"RTC_WDT_STAGE_ACTION_RESET_RTC"
.LASF34:
	.string	"RTC_WDT_LENGTH_300ns"
.LASF26:
	.string	"RTC_WDT_STAGE_ACTION_RESET_SYSTEM"
.LASF43:
	.string	"rtc_wdt_protect_on"
.LASF29:
	.string	"RTC_WDT_SYS_RESET_SIG"
.LASF63:
	.string	"rtc_wdt_set_stage"
.LASF7:
	.string	"long long int"
.LASF40:
	.string	"rtc_wdt_length_sig_t"
.LASF13:
	.string	"long int"
.LASF50:
	.string	"rtc_wdt_get_timeout"
.LASF57:
	.string	"reset_src"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_wdt.c"
.LASF47:
	.string	"rtc_wdt_flashboot_mode_enable"
.LASF1:
	.string	"unsigned char"
.LASF54:
	.string	"rtc_wdt_disable"
.LASF42:
	.string	"rtc_wdt_protect_off"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF32:
	.string	"RTC_WDT_LENGTH_100ns"
.LASF11:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF22:
	.string	"rtc_wdt_stage_t"
.LASF17:
	.string	"esp_err_t"
.LASF49:
	.string	"rtc_wdt_set_time"
.LASF35:
	.string	"RTC_WDT_LENGTH_400ns"
.LASF44:
	.string	"stage"
.LASF24:
	.string	"RTC_WDT_STAGE_ACTION_INTERRUPT"
.LASF16:
	.string	"char"
.LASF10:
	.string	"int32_t"
.LASF56:
	.string	"rtc_wdt_set_length_of_reset_signal"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"_Bool"
.LASF8:
	.string	"__uint64_t"
.LASF64:
	.string	"rtc_wdt_is_on"
.LASF48:
	.string	"timeout_ms"
.LASF15:
	.string	"long unsigned int"
.LASF61:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/soc"
.LASF4:
	.string	"__int32_t"
.LASF46:
	.string	"rtc_wdt_enable"
.LASF38:
	.string	"RTC_WDT_LENGTH_1_6us"
.LASF33:
	.string	"RTC_WDT_LENGTH_200ns"
.LASF52:
	.string	"time_tick"
.LASF58:
	.string	"reset_signal_length"
.LASF28:
	.string	"rtc_wdt_stage_action_t"
.LASF53:
	.string	"rtc_wdt_feed"
.LASF36:
	.string	"RTC_WDT_LENGTH_500ns"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"RTC_WDT_STAGE_ACTION_RESET_CPU"
.LASF51:
	.string	"timeout"
.LASF37:
	.string	"RTC_WDT_LENGTH_800ns"
.LASF23:
	.string	"RTC_WDT_STAGE_ACTION_OFF"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
