	.file	"timer.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"timer_group"
.LC3:
	.string	"\033[0;31mE (%d) %s: %s(%d): %s\033[0m\n"
.LC5:
	.string	"TIMER GROUP NUM ERROR"
.LC7:
	.string	"HW TIMER NUM ERROR"
.LC9:
	.string	"HW TIMER PARAM ADDR ERROR"
	.section	.text.timer_get_counter_value,"ax",@progbits
	.literal_position
	.literal .LC0, __FUNCTION__$5379
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC11, timer_spinlock
	.literal .LC12, TG
	.align	4
	.global	timer_get_counter_value
	.type	timer_get_counter_value, @function
timer_get_counter_value:
.LFB20:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/timer.c"
	.loc 1 46 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 47 0
	bltui	a2, 2, .L2
	.loc 1 47 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL1:
	l32r	a2, .LC6
.LVL2:
	l32r	a11, .LC2
	s32i.n	a2, sp, 4
	movi.n	a2, 0x2f
	j	.L6
.LVL3:
.L2:
	.loc 1 48 0 is_stmt 1
	bltui	a3, 2, .L4
	.loc 1 48 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL4:
	l32r	a2, .LC8
.LVL5:
	l32r	a11, .LC2
	s32i.n	a2, sp, 4
	movi.n	a2, 0x30
	j	.L6
.LVL6:
.L4:
.LBB4:
.LBB5:
	.loc 1 49 0 is_stmt 1
	bnez.n	a4, .L5
	.loc 1 49 0
	call8	esp_log_timestamp
.LVL7:
	l32r	a2, .LC10
.LVL8:
	l32r	a11, .LC2
	s32i.n	a2, sp, 4
	movi.n	a2, 0x31
.LVL9:
.L6:
	l32r	a15, .LC0
	l32r	a12, .LC4
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL10:
	movi	a2, 0x102
	retw.n
.LVL11:
.L5:
	.loc 1 50 0
	l32r	a5, .LC11
	addx8	a3, a3, a3
.LVL12:
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL13:
	.loc 1 51 0
	l32r	a8, .LC12
	.loc 1 54 0
	mov.n	a10, a5
	.loc 1 51 0
	addx4	a2, a2, a8
.LVL14:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
	movi.n	a2, 1
	memw
	s32i.n	a2, a3, 12
	.loc 1 52 0
	memw
	l32i.n	a2, a3, 8
	.loc 1 53 0
	memw
	l32i.n	a3, a3, 4
	.loc 1 52 0
	s32i.n	a2, a4, 4
	s32i.n	a3, a4, 0
	.loc 1 54 0
	call8	vTaskExitCritical
.LVL15:
	.loc 1 55 0
	movi.n	a2, 0
.LBE5:
.LBE4:
	.loc 1 56 0
	retw.n
.LFE20:
	.size	timer_get_counter_value, .-timer_get_counter_value
	.global	__floatundidf
	.global	__floatsidf
	.global	__muldf3
	.global	__divdf3
	.section	.text.timer_get_counter_time_sec,"ax",@progbits
	.literal_position
	.literal .LC13, __FUNCTION__$5385
	.literal .LC14, .LC1
	.literal .LC15, .LC3
	.literal .LC16, .LC5
	.literal .LC17, .LC7
	.literal .LC18, .LC9
	.literal .LC19, TG
	.literal .LC20, 0x00000000, 0x419312d0
	.align	4
	.global	timer_get_counter_time_sec
	.type	timer_get_counter_time_sec, @function
timer_get_counter_time_sec:
.LFB21:
	.loc 1 59 0
.LVL16:
	entry	sp, 80
.LCFI1:
	.loc 1 60 0
	bltui	a2, 2, .L8
	.loc 1 60 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL17:
	l32r	a2, .LC16
.LVL18:
	l32r	a11, .LC14
	s32i.n	a2, sp, 4
	movi.n	a2, 0x3c
	j	.L13
.LVL19:
.L8:
	.loc 1 61 0 is_stmt 1
	bltui	a3, 2, .L10
	.loc 1 61 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL20:
	l32r	a2, .LC17
.LVL21:
	l32r	a11, .LC14
	s32i.n	a2, sp, 4
	movi.n	a2, 0x3d
.L13:
	l32r	a15, .LC13
	l32r	a12, .LC15
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	movi	a5, 0x102
	j	.L9
.LVL23:
.L10:
	.loc 1 62 0 is_stmt 1
	bnez.n	a4, .L11
	.loc 1 62 0 discriminator 4
	call8	esp_log_timestamp
.LVL24:
	l32r	a2, .LC18
.LVL25:
	l32r	a11, .LC14
	s32i.n	a2, sp, 4
	movi.n	a2, 0x3e
	j	.L13
.LVL26:
.L11:
	.loc 1 65 0
	addi	a12, sp, 16
	mov.n	a11, a3
	mov.n	a10, a2
	call8	timer_get_counter_value
.LVL27:
	mov.n	a5, a10
.LVL28:
	.loc 1 66 0
	bnez.n	a10, .L9
.LBB6:
	.loc 1 67 0
	l32r	a8, .LC19
	addx8	a3, a3, a3
.LVL29:
	addx4	a2, a2, a8
.LVL30:
	l32i.n	a2, a2, 0
	.loc 1 68 0
	l32i.n	a10, sp, 16
	.loc 1 67 0
	addx4	a3, a3, a2
	memw
	l32i.n	a2, a3, 0
	.loc 1 68 0
	l32i.n	a11, sp, 20
	.loc 1 67 0
	extui	a2, a2, 13, 16
.LVL31:
	.loc 1 68 0
	call8	__floatundidf
.LVL32:
	mov.n	a8, a10
	mov.n	a10, a2
	s32i.n	a8, sp, 32
	s32i.n	a11, sp, 36
	call8	__floatsidf
.LVL33:
	l32i.n	a8, sp, 32
	l32i.n	a9, sp, 36
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a8
	mov.n	a11, a9
	call8	__muldf3
.LVL34:
	l32r	a12, .LC20
	l32r	a13, .LC20+4
	call8	__divdf3
.LVL35:
	s32i.n	a10, a4, 0
	s32i.n	a11, a4, 4
.LVL36:
.L9:
.LBE6:
	.loc 1 71 0
	mov.n	a2, a5
	retw.n
.LFE21:
	.size	timer_get_counter_time_sec, .-timer_get_counter_time_sec
	.section	.text.timer_set_counter_value,"ax",@progbits
	.literal_position
	.literal .LC21, __FUNCTION__$5394
	.literal .LC22, .LC1
	.literal .LC23, .LC3
	.literal .LC24, .LC5
	.literal .LC25, .LC7
	.literal .LC26, timer_spinlock
	.literal .LC27, TG
	.align	4
	.global	timer_set_counter_value
	.type	timer_set_counter_value, @function
timer_set_counter_value:
.LFB22:
	.loc 1 74 0
.LVL37:
	entry	sp, 48
.LCFI2:
	.loc 1 75 0
	bltui	a2, 2, .L15
	.loc 1 75 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL38:
	l32r	a2, .LC24
.LVL39:
	l32r	a11, .LC22
	s32i.n	a2, sp, 4
	movi.n	a2, 0x4b
	j	.L18
.LVL40:
.L15:
	.loc 1 76 0 is_stmt 1
	bltui	a3, 2, .L17
	.loc 1 76 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL41:
	l32r	a2, .LC25
.LVL42:
	l32r	a11, .LC22
	s32i.n	a2, sp, 4
	movi.n	a2, 0x4c
.L18:
	l32r	a15, .LC21
	l32r	a12, .LC23
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
	movi	a2, 0x102
	retw.n
.LVL44:
.L17:
	.loc 1 77 0 is_stmt 1
	l32r	a6, .LC26
	.loc 1 78 0
	addx8	a3, a3, a3
.LVL45:
	.loc 1 77 0
	addx8	a6, a2, a6
	mov.n	a10, a6
	call8	vTaskEnterCritical
.LVL46:
	.loc 1 78 0
	l32r	a8, .LC27
	.loc 1 81 0
	mov.n	a10, a6
	.loc 1 78 0
	addx4	a2, a2, a8
.LVL47:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
	memw
	s32i.n	a5, a3, 28
	.loc 1 79 0
	memw
	s32i.n	a4, a3, 24
	.loc 1 80 0
	movi.n	a2, 1
	memw
	s32i.n	a2, a3, 32
	.loc 1 81 0
	call8	vTaskExitCritical
.LVL48:
	.loc 1 82 0
	movi.n	a2, 0
	.loc 1 83 0
	retw.n
.LFE22:
	.size	timer_set_counter_value, .-timer_set_counter_value
	.section	.text.timer_start,"ax",@progbits
	.literal_position
	.literal .LC28, __FUNCTION__$5399
	.literal .LC29, .LC1
	.literal .LC30, .LC3
	.literal .LC31, .LC5
	.literal .LC32, .LC7
	.literal .LC33, timer_spinlock
	.literal .LC34, TG
	.literal .LC35, -2147483648
	.align	4
	.global	timer_start
	.type	timer_start, @function
timer_start:
.LFB23:
	.loc 1 86 0
.LVL49:
	entry	sp, 48
.LCFI3:
	.loc 1 87 0
	bltui	a2, 2, .L20
	.loc 1 87 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL50:
	l32r	a2, .LC31
.LVL51:
	l32r	a11, .LC29
	s32i.n	a2, sp, 4
	movi.n	a2, 0x57
	j	.L23
.LVL52:
.L20:
	.loc 1 88 0 is_stmt 1
	bltui	a3, 2, .L22
	.loc 1 88 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL53:
	l32r	a2, .LC32
.LVL54:
	l32r	a11, .LC29
	s32i.n	a2, sp, 4
	movi.n	a2, 0x58
.L23:
	l32r	a15, .LC28
	l32r	a12, .LC30
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	movi	a2, 0x102
	retw.n
.LVL56:
.L22:
	.loc 1 89 0 is_stmt 1
	l32r	a4, .LC33
	.loc 1 90 0
	addx8	a3, a3, a3
.LVL57:
	.loc 1 89 0
	addx8	a4, a2, a4
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL58:
	.loc 1 90 0
	l32r	a8, .LC34
	.loc 1 91 0
	mov.n	a10, a4
	.loc 1 90 0
	addx4	a2, a2, a8
.LVL59:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC35
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	.loc 1 91 0
	call8	vTaskExitCritical
.LVL60:
	.loc 1 92 0
	movi.n	a2, 0
	.loc 1 93 0
	retw.n
.LFE23:
	.size	timer_start, .-timer_start
	.section	.text.timer_pause,"ax",@progbits
	.literal_position
	.literal .LC36, __FUNCTION__$5404
	.literal .LC37, .LC1
	.literal .LC38, .LC3
	.literal .LC39, .LC5
	.literal .LC40, .LC7
	.literal .LC41, timer_spinlock
	.literal .LC42, TG
	.literal .LC43, 2147483647
	.align	4
	.global	timer_pause
	.type	timer_pause, @function
timer_pause:
.LFB24:
	.loc 1 96 0
.LVL61:
	entry	sp, 48
.LCFI4:
	.loc 1 97 0
	bltui	a2, 2, .L25
	.loc 1 97 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL62:
	l32r	a2, .LC39
.LVL63:
	l32r	a11, .LC37
	s32i.n	a2, sp, 4
	movi	a2, 0x61
	j	.L28
.LVL64:
.L25:
	.loc 1 98 0 is_stmt 1
	bltui	a3, 2, .L27
	.loc 1 98 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL65:
	l32r	a2, .LC40
.LVL66:
	l32r	a11, .LC37
	s32i.n	a2, sp, 4
	movi	a2, 0x62
.L28:
	l32r	a15, .LC36
	l32r	a12, .LC38
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
	movi	a2, 0x102
	retw.n
.LVL68:
.L27:
	.loc 1 99 0 is_stmt 1
	l32r	a4, .LC41
	.loc 1 100 0
	addx8	a3, a3, a3
.LVL69:
	.loc 1 99 0
	addx8	a4, a2, a4
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL70:
	.loc 1 100 0
	l32r	a8, .LC42
	.loc 1 101 0
	mov.n	a10, a4
	.loc 1 100 0
	addx4	a2, a2, a8
.LVL71:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC43
	and	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	.loc 1 101 0
	call8	vTaskExitCritical
.LVL72:
	.loc 1 102 0
	movi.n	a2, 0
	.loc 1 103 0
	retw.n
.LFE24:
	.size	timer_pause, .-timer_pause
	.section	.rodata.str1.1
.LC49:
	.string	"HW TIMER COUNTER DIR ERROR"
	.section	.text.timer_set_counter_mode,"ax",@progbits
	.literal_position
	.literal .LC44, __FUNCTION__$5410
	.literal .LC45, .LC1
	.literal .LC46, .LC3
	.literal .LC47, .LC5
	.literal .LC48, .LC7
	.literal .LC50, .LC49
	.literal .LC51, timer_spinlock
	.literal .LC52, TG
	.literal .LC53, -1073741825
	.align	4
	.global	timer_set_counter_mode
	.type	timer_set_counter_mode, @function
timer_set_counter_mode:
.LFB25:
	.loc 1 106 0
.LVL73:
	entry	sp, 48
.LCFI5:
	.loc 1 107 0
	bltui	a2, 2, .L30
	.loc 1 107 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL74:
	l32r	a2, .LC47
.LVL75:
	l32r	a11, .LC45
	s32i.n	a2, sp, 4
	movi	a2, 0x6b
	j	.L34
.LVL76:
.L30:
	.loc 1 108 0 is_stmt 1
	bltui	a3, 2, .L32
	.loc 1 108 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL77:
	l32r	a2, .LC48
.LVL78:
	l32r	a11, .LC45
	s32i.n	a2, sp, 4
	movi	a2, 0x6c
.L34:
	l32r	a15, .LC44
	l32r	a12, .LC46
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL79:
	movi	a2, 0x102
	retw.n
.LVL80:
.L32:
	.loc 1 109 0 is_stmt 1
	bltui	a4, 2, .L33
	.loc 1 109 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL81:
	l32r	a2, .LC50
.LVL82:
	l32r	a11, .LC45
	s32i.n	a2, sp, 4
	movi	a2, 0x6d
	j	.L34
.LVL83:
.L33:
	.loc 1 110 0 is_stmt 1
	l32r	a5, .LC51
	.loc 1 111 0
	addx8	a3, a3, a3
.LVL84:
	.loc 1 110 0
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL85:
	.loc 1 111 0
	l32r	a8, .LC52
	extui	a4, a4, 0, 1
.LVL86:
	addx4	a2, a2, a8
.LVL87:
	l32i.n	a2, a2, 0
	slli	a8, a4, 30
	addx4	a3, a3, a2
	memw
	l32i.n	a9, a3, 0
	l32r	a2, .LC53
	.loc 1 112 0
	mov.n	a10, a5
	.loc 1 111 0
	and	a4, a9, a2
	or	a4, a4, a8
	memw
	s32i.n	a4, a3, 0
	.loc 1 112 0
	call8	vTaskExitCritical
.LVL88:
	.loc 1 113 0
	movi.n	a2, 0
	.loc 1 114 0
	retw.n
.LFE25:
	.size	timer_set_counter_mode, .-timer_set_counter_mode
	.section	.rodata.str1.1
.LC59:
	.string	"HW TIMER AUTORELOAD ERROR"
	.section	.text.timer_set_auto_reload,"ax",@progbits
	.literal_position
	.literal .LC54, __FUNCTION__$5416
	.literal .LC55, .LC1
	.literal .LC56, .LC3
	.literal .LC57, .LC5
	.literal .LC58, .LC7
	.literal .LC60, .LC59
	.literal .LC61, timer_spinlock
	.literal .LC62, TG
	.literal .LC63, -536870913
	.align	4
	.global	timer_set_auto_reload
	.type	timer_set_auto_reload, @function
timer_set_auto_reload:
.LFB26:
	.loc 1 117 0
.LVL89:
	entry	sp, 48
.LCFI6:
	.loc 1 118 0
	bltui	a2, 2, .L36
	.loc 1 118 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL90:
	l32r	a2, .LC57
.LVL91:
	l32r	a11, .LC55
	s32i.n	a2, sp, 4
	movi	a2, 0x76
	j	.L40
.LVL92:
.L36:
	.loc 1 119 0 is_stmt 1
	bltui	a3, 2, .L38
	.loc 1 119 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL93:
	l32r	a2, .LC58
.LVL94:
	l32r	a11, .LC55
	s32i.n	a2, sp, 4
	movi	a2, 0x77
.L40:
	l32r	a15, .LC54
	l32r	a12, .LC56
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
	movi	a2, 0x102
	retw.n
.LVL96:
.L38:
	.loc 1 120 0 is_stmt 1
	bltui	a4, 2, .L39
	.loc 1 120 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL97:
	l32r	a2, .LC60
.LVL98:
	l32r	a11, .LC55
	s32i.n	a2, sp, 4
	movi	a2, 0x78
	j	.L40
.LVL99:
.L39:
	.loc 1 121 0 is_stmt 1
	l32r	a5, .LC61
	.loc 1 122 0
	addx8	a3, a3, a3
.LVL100:
	.loc 1 121 0
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL101:
	.loc 1 122 0
	l32r	a8, .LC62
	extui	a4, a4, 0, 1
.LVL102:
	addx4	a2, a2, a8
.LVL103:
	l32i.n	a2, a2, 0
	slli	a8, a4, 29
	addx4	a3, a3, a2
	memw
	l32i.n	a9, a3, 0
	l32r	a2, .LC63
	.loc 1 123 0
	mov.n	a10, a5
	.loc 1 122 0
	and	a4, a9, a2
	or	a4, a4, a8
	memw
	s32i.n	a4, a3, 0
	.loc 1 123 0
	call8	vTaskExitCritical
.LVL104:
	.loc 1 124 0
	movi.n	a2, 0
	.loc 1 125 0
	retw.n
.LFE26:
	.size	timer_set_auto_reload, .-timer_set_auto_reload
	.section	.rodata.str1.1
.LC70:
	.string	"HW TIMER divider outside of [2, 65536] range error"
	.section	.text.timer_set_divider,"ax",@progbits
	.literal_position
	.literal .LC64, __FUNCTION__$5422
	.literal .LC65, .LC1
	.literal .LC66, .LC3
	.literal .LC67, .LC5
	.literal .LC68, .LC7
	.literal .LC69, 65534
	.literal .LC71, .LC70
	.literal .LC72, timer_spinlock
	.literal .LC73, TG
	.literal .LC74, 2147483647
	.literal .LC75, -536862721
	.align	4
	.global	timer_set_divider
	.type	timer_set_divider, @function
timer_set_divider:
.LFB27:
	.loc 1 128 0
.LVL105:
	entry	sp, 48
.LCFI7:
	.loc 1 129 0
	bltui	a2, 2, .L42
	.loc 1 129 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL106:
	l32r	a2, .LC67
.LVL107:
	l32r	a11, .LC65
	s32i.n	a2, sp, 4
	movi	a2, 0x81
	j	.L46
.LVL108:
.L42:
	.loc 1 130 0 is_stmt 1
	bltui	a3, 2, .L44
	.loc 1 130 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL109:
	l32r	a2, .LC68
.LVL110:
	l32r	a11, .LC65
	s32i.n	a2, sp, 4
	movi	a2, 0x82
.L46:
	l32r	a15, .LC64
	l32r	a12, .LC66
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL111:
	movi	a2, 0x102
	retw.n
.LVL112:
.L44:
	.loc 1 131 0 is_stmt 1
	l32r	a8, .LC69
	addi	a5, a4, -2
	bgeu	a8, a5, .L45
	.loc 1 131 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL113:
	l32r	a2, .LC71
.LVL114:
	l32r	a11, .LC65
	s32i.n	a2, sp, 4
	movi	a2, 0x83
	j	.L46
.LVL115:
.L45:
	.loc 1 132 0 is_stmt 1
	l32r	a5, .LC72
	.loc 1 133 0
	addx8	a3, a3, a3
.LVL116:
	.loc 1 132 0
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL117:
	.loc 1 133 0
	l32r	a8, .LC73
	.loc 1 135 0
	extui	a4, a4, 0, 16
.LVL118:
	.loc 1 133 0
	addx4	a2, a2, a8
.LVL119:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
	memw
	l32i.n	a8, a3, 0
	.loc 1 134 0
	l32r	a2, .LC74
	.loc 1 133 0
	extui	a9, a8, 31, 1
.LVL120:
	.loc 1 134 0
	memw
	l32i.n	a8, a3, 0
.LVL121:
	and	a8, a8, a2
	memw
	s32i.n	a8, a3, 0
	.loc 1 135 0
	memw
	l32i.n	a10, a3, 0
	slli	a8, a4, 13
	l32r	a4, .LC75
	and	a4, a10, a4
	or	a4, a4, a8
	memw
	s32i.n	a4, a3, 0
	.loc 1 136 0
	memw
	l32i.n	a4, a3, 0
	slli	a8, a9, 31
	and	a4, a4, a2
	or	a4, a4, a8
	memw
	s32i.n	a4, a3, 0
	.loc 1 137 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL122:
	.loc 1 138 0
	movi.n	a2, 0
	.loc 1 139 0
	retw.n
.LFE27:
	.size	timer_set_divider, .-timer_set_divider
	.section	.text.timer_set_alarm_value,"ax",@progbits
	.literal_position
	.literal .LC76, __FUNCTION__$5429
	.literal .LC77, .LC1
	.literal .LC78, .LC3
	.literal .LC79, .LC5
	.literal .LC80, .LC7
	.literal .LC81, timer_spinlock
	.literal .LC82, TG
	.align	4
	.global	timer_set_alarm_value
	.type	timer_set_alarm_value, @function
timer_set_alarm_value:
.LFB28:
	.loc 1 142 0
.LVL123:
	entry	sp, 48
.LCFI8:
	.loc 1 143 0
	bltui	a2, 2, .L48
	.loc 1 143 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL124:
	l32r	a2, .LC79
.LVL125:
	l32r	a11, .LC77
	s32i.n	a2, sp, 4
	movi	a2, 0x8f
	j	.L51
.LVL126:
.L48:
	.loc 1 144 0 is_stmt 1
	bltui	a3, 2, .L50
	.loc 1 144 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL127:
	l32r	a2, .LC80
.LVL128:
	l32r	a11, .LC77
	s32i.n	a2, sp, 4
	movi	a2, 0x90
.L51:
	l32r	a15, .LC76
	l32r	a12, .LC78
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL129:
	movi	a2, 0x102
	retw.n
.LVL130:
.L50:
	.loc 1 145 0 is_stmt 1
	l32r	a6, .LC81
	.loc 1 146 0
	addx8	a3, a3, a3
.LVL131:
	.loc 1 145 0
	addx8	a6, a2, a6
	mov.n	a10, a6
	call8	vTaskEnterCritical
.LVL132:
	.loc 1 146 0
	l32r	a8, .LC82
	.loc 1 148 0
	mov.n	a10, a6
	.loc 1 146 0
	addx4	a2, a2, a8
.LVL133:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
	memw
	s32i.n	a5, a3, 20
	.loc 1 147 0
	memw
	s32i.n	a4, a3, 16
	.loc 1 148 0
	call8	vTaskExitCritical
.LVL134:
	.loc 1 149 0
	movi.n	a2, 0
	.loc 1 150 0
	retw.n
.LFE28:
	.size	timer_set_alarm_value, .-timer_set_alarm_value
	.section	.text.timer_get_alarm_value,"ax",@progbits
	.literal_position
	.literal .LC83, __FUNCTION__$5435
	.literal .LC84, .LC1
	.literal .LC85, .LC3
	.literal .LC86, .LC5
	.literal .LC87, .LC7
	.literal .LC88, .LC9
	.literal .LC89, timer_spinlock
	.literal .LC90, TG
	.align	4
	.global	timer_get_alarm_value
	.type	timer_get_alarm_value, @function
timer_get_alarm_value:
.LFB29:
	.loc 1 153 0
.LVL135:
	entry	sp, 48
.LCFI9:
	.loc 1 154 0
	bltui	a2, 2, .L53
	.loc 1 154 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL136:
	l32r	a2, .LC86
.LVL137:
	l32r	a11, .LC84
	s32i.n	a2, sp, 4
	movi	a2, 0x9a
	j	.L57
.LVL138:
.L53:
	.loc 1 155 0 is_stmt 1
	bltui	a3, 2, .L55
	.loc 1 155 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL139:
	l32r	a2, .LC87
.LVL140:
	l32r	a11, .LC84
	s32i.n	a2, sp, 4
	movi	a2, 0x9b
.L57:
	l32r	a15, .LC83
	l32r	a12, .LC85
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL141:
	movi	a2, 0x102
	retw.n
.LVL142:
.L55:
	.loc 1 156 0 is_stmt 1
	bnez.n	a4, .L56
	.loc 1 156 0 discriminator 4
	call8	esp_log_timestamp
.LVL143:
	l32r	a2, .LC88
.LVL144:
	l32r	a11, .LC84
	s32i.n	a2, sp, 4
	movi	a2, 0x9c
	j	.L57
.LVL145:
.L56:
	.loc 1 157 0
	l32r	a5, .LC89
	.loc 1 158 0
	addx8	a3, a3, a3
.LVL146:
	.loc 1 157 0
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL147:
	.loc 1 158 0
	l32r	a8, .LC90
	.loc 1 160 0
	mov.n	a10, a5
	.loc 1 158 0
	addx4	a2, a2, a8
.LVL148:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
	memw
	l32i.n	a2, a3, 20
	.loc 1 159 0
	memw
	l32i.n	a3, a3, 16
	.loc 1 158 0
	s32i.n	a2, a4, 4
	s32i.n	a3, a4, 0
	.loc 1 160 0
	call8	vTaskExitCritical
.LVL149:
	.loc 1 161 0
	movi.n	a2, 0
	.loc 1 162 0
	retw.n
.LFE29:
	.size	timer_get_alarm_value, .-timer_get_alarm_value
	.section	.rodata.str1.1
.LC96:
	.string	"HW TIMER ALARM ERROR"
	.section	.text.timer_set_alarm,"ax",@progbits
	.literal_position
	.literal .LC91, __FUNCTION__$5441
	.literal .LC92, .LC1
	.literal .LC93, .LC3
	.literal .LC94, .LC5
	.literal .LC95, .LC7
	.literal .LC97, .LC96
	.literal .LC98, timer_spinlock
	.literal .LC99, TG
	.align	4
	.global	timer_set_alarm
	.type	timer_set_alarm, @function
timer_set_alarm:
.LFB30:
	.loc 1 165 0
.LVL150:
	entry	sp, 48
.LCFI10:
	.loc 1 166 0
	bltui	a2, 2, .L59
	.loc 1 166 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL151:
	l32r	a2, .LC94
.LVL152:
	l32r	a11, .LC92
	s32i.n	a2, sp, 4
	movi	a2, 0xa6
	j	.L63
.LVL153:
.L59:
	.loc 1 167 0 is_stmt 1
	bltui	a3, 2, .L61
	.loc 1 167 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL154:
	l32r	a2, .LC95
.LVL155:
	l32r	a11, .LC92
	s32i.n	a2, sp, 4
	movi	a2, 0xa7
.L63:
	l32r	a15, .LC91
	l32r	a12, .LC93
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL156:
	movi	a2, 0x102
	retw.n
.LVL157:
.L61:
	.loc 1 168 0 is_stmt 1
	bltui	a4, 2, .L62
	.loc 1 168 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL158:
	l32r	a2, .LC97
.LVL159:
	l32r	a11, .LC92
	s32i.n	a2, sp, 4
	movi	a2, 0xa8
	j	.L63
.LVL160:
.L62:
	.loc 1 169 0 is_stmt 1
	l32r	a5, .LC98
	.loc 1 170 0
	addx8	a3, a3, a3
.LVL161:
	.loc 1 169 0
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL162:
	.loc 1 170 0
	l32r	a8, .LC99
	extui	a4, a4, 0, 1
.LVL163:
	addx4	a2, a2, a8
.LVL164:
	l32i.n	a2, a2, 0
	slli	a8, a4, 10
	addx4	a3, a3, a2
	memw
	l32i.n	a9, a3, 0
	movi	a2, -0x401
	and	a4, a9, a2
	or	a4, a4, a8
	memw
	s32i.n	a4, a3, 0
	.loc 1 171 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL165:
	.loc 1 172 0
	movi.n	a2, 0
	.loc 1 173 0
	retw.n
.LFE30:
	.size	timer_set_alarm, .-timer_set_alarm
	.section	.text.timer_isr_register,"ax",@progbits
	.literal_position
	.literal .LC100, 1073082528
	.literal .LC101, 1073086624
	.literal .LC102, __FUNCTION__$5451
	.literal .LC103, .LC1
	.literal .LC104, .LC3
	.literal .LC105, .LC5
	.literal .LC106, .LC7
	.literal .LC107, .LC9
	.align	4
	.global	timer_isr_register
	.type	timer_isr_register, @function
timer_isr_register:
.LFB31:
	.loc 1 177 0
.LVL166:
	entry	sp, 48
.LCFI11:
	.loc 1 177 0
	mov.n	a14, a4
	mov.n	a15, a5
	mov.n	a11, a6
	.loc 1 178 0
	bltui	a2, 2, .L65
	.loc 1 178 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL167:
	l32r	a2, .LC105
.LVL168:
	l32r	a11, .LC103
	s32i.n	a2, sp, 4
	movi	a2, 0xb2
	j	.L76
.LVL169:
.L65:
	.loc 1 179 0 is_stmt 1
	bltui	a3, 2, .L67
	.loc 1 179 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL170:
	l32r	a2, .LC106
.LVL171:
	l32r	a11, .LC103
	s32i.n	a2, sp, 4
	movi	a2, 0xb3
.L76:
	l32r	a15, .LC102
	l32r	a12, .LC104
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL172:
	movi	a10, 0x102
	j	.L66
.LVL173:
.L67:
	.loc 1 180 0 is_stmt 1
	bnez.n	a4, .L68
	.loc 1 180 0 discriminator 4
	call8	esp_log_timestamp
.LVL174:
	l32r	a2, .LC107
.LVL175:
	l32r	a11, .LC103
	s32i.n	a2, sp, 4
	movi	a2, 0xb4
	j	.L76
.LVL176:
.L68:
	movi	a10, 0x200
	.loc 1 197 0
	and	a10, a6, a10
	.loc 1 185 0
	beqi	a2, 1, .L70
	.loc 1 189 0
	addi.n	a2, a3, 14
.LVL177:
	addi	a8, a3, 58
	movnez	a2, a8, a10
	.loc 1 194 0
	movi.n	a13, 1
	.loc 1 189 0
	mov.n	a10, a2
.LVL178:
	.loc 1 194 0
	ssl	a3
	sll	a13, a13
.LVL179:
	.loc 1 193 0
	l32r	a12, .LC100
	.loc 1 195 0
	j	.L73
.LVL180:
.L70:
	.loc 1 198 0
	addi	a8, a3, 18
	addi	a9, a3, 62
	movnez	a8, a9, a10
	.loc 1 202 0
	l32r	a12, .LC101
	.loc 1 198 0
	mov.n	a10, a8
.LVL181:
	.loc 1 203 0
	ssl	a3
	sll	a13, a2
.LVL182:
.L73:
	.loc 1 206 0
	s32i.n	a7, sp, 0
	call8	esp_intr_alloc_intrstatus
.LVL183:
.L66:
	.loc 1 207 0
	mov.n	a2, a10
	retw.n
.LFE31:
	.size	timer_isr_register, .-timer_isr_register
	.section	.text.timer_init,"ax",@progbits
	.literal_position
	.literal .LC108, __FUNCTION__$5464
	.literal .LC109, .LC1
	.literal .LC110, .LC3
	.literal .LC111, .LC5
	.literal .LC112, .LC7
	.literal .LC113, .LC9
	.literal .LC114, 65534
	.literal .LC115, .LC70
	.literal .LC116, timer_spinlock
	.literal .LC117, TG
	.literal .LC118, -536870913
	.literal .LC119, -536862721
	.literal .LC120, 2147483647
	.literal .LC121, -1073741825
	.literal .LC122, -2049
	.literal .LC123, -4097
	.align	4
	.global	timer_init
	.type	timer_init, @function
timer_init:
.LFB32:
	.loc 1 210 0
.LVL184:
	entry	sp, 48
.LCFI12:
	.loc 1 211 0
	bltui	a2, 2, .L78
	.loc 1 211 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL185:
	l32r	a2, .LC111
.LVL186:
	l32r	a11, .LC109
	s32i.n	a2, sp, 4
	movi	a2, 0xd3
	j	.L86
.LVL187:
.L78:
	.loc 1 212 0 is_stmt 1
	bltui	a3, 2, .L80
	.loc 1 212 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL188:
	l32r	a2, .LC112
.LVL189:
	l32r	a11, .LC109
	s32i.n	a2, sp, 4
	movi	a2, 0xd4
.L86:
	l32r	a15, .LC108
	l32r	a12, .LC110
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL190:
	movi	a2, 0x102
	retw.n
.LVL191:
.L80:
	.loc 1 213 0 is_stmt 1
	bnez.n	a4, .L81
	.loc 1 213 0 discriminator 4
	call8	esp_log_timestamp
.LVL192:
	l32r	a2, .LC113
.LVL193:
	l32r	a11, .LC109
	s32i.n	a2, sp, 4
	movi	a2, 0xd5
	j	.L86
.LVL194:
.L81:
	.loc 1 214 0
	l32i.n	a5, a4, 16
	l32r	a8, .LC114
	addi	a5, a5, -2
	bgeu	a8, a5, .L82
	.loc 1 214 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL195:
	l32r	a2, .LC115
.LVL196:
	l32r	a11, .LC109
	s32i.n	a2, sp, 4
	movi	a2, 0xd6
	j	.L86
.LVL197:
.L82:
	.loc 1 217 0 is_stmt 1
	movi.n	a10, 8
	.loc 1 216 0
	beqz.n	a2, .L85
.L83:
	.loc 1 219 0
	movi.n	a10, 9
.L85:
	call8	periph_module_enable
.LVL198:
	.loc 1 221 0
	l32r	a5, .LC116
	.loc 1 222 0
	addx8	a3, a3, a3
.LVL199:
	.loc 1 221 0
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL200:
	.loc 1 222 0
	l32r	a8, .LC117
	addx4	a2, a2, a8
.LVL201:
	l32i.n	a2, a2, 0
	l8ui	a8, a4, 12
	addx4	a3, a3, a2
	memw
	l32i.n	a9, a3, 0
	l32r	a2, .LC118
	extui	a8, a8, 0, 1
	slli	a8, a8, 29
	and	a2, a9, a2
	or	a2, a2, a8
	memw
	s32i.n	a2, a3, 0
	.loc 1 223 0
	memw
	l32i.n	a9, a3, 0
	l16ui	a8, a4, 16
	l32r	a2, .LC119
	slli	a8, a8, 13
	and	a2, a9, a2
	or	a2, a2, a8
	memw
	s32i.n	a2, a3, 0
	.loc 1 224 0
	memw
	l32i.n	a9, a3, 0
	l8ui	a8, a4, 1
	l32r	a2, .LC120
	slli	a8, a8, 31
	and	a2, a9, a2
	or	a2, a2, a8
	memw
	s32i.n	a2, a3, 0
	.loc 1 225 0
	l32i.n	a8, a4, 8
	memw
	l32i.n	a9, a3, 0
	l32r	a2, .LC121
	extui	a8, a8, 0, 1
	slli	a8, a8, 30
	and	a2, a9, a2
	or	a2, a2, a8
	memw
	s32i.n	a2, a3, 0
	.loc 1 226 0
	l8ui	a8, a4, 0
	memw
	l32i.n	a9, a3, 0
	extui	a8, a8, 0, 1
	movi	a2, -0x401
	slli	a8, a8, 10
	and	a2, a9, a2
	or	a2, a2, a8
	memw
	s32i.n	a2, a3, 0
	.loc 1 227 0
	l32i.n	a8, a4, 4
	movi.n	a2, 0
	memw
	l32i.n	a11, a3, 0
	movi.n	a9, 1
	mov.n	a10, a2
	l32r	a4, .LC122
.LVL202:
	moveqz	a10, a9, a8
	slli	a10, a10, 11
	and	a4, a11, a4
	or	a4, a4, a10
	memw
	s32i.n	a4, a3, 0
	.loc 1 228 0
	memw
	l32i.n	a10, a3, 0
	l32r	a4, .LC123
	moveqz	a9, a2, a8
	slli	a9, a9, 12
	and	a8, a10, a4
	or	a8, a8, a9
	memw
	s32i.n	a8, a3, 0
	.loc 1 229 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL203:
	.loc 1 231 0
	retw.n
.LFE32:
	.size	timer_init, .-timer_init
	.section	.text.timer_get_config,"ax",@progbits
	.literal_position
	.literal .LC124, 65536
	.literal .LC125, __FUNCTION__$5470
	.literal .LC126, .LC1
	.literal .LC127, .LC3
	.literal .LC128, .LC5
	.literal .LC129, .LC7
	.literal .LC130, .LC9
	.literal .LC131, timer_spinlock
	.literal .LC132, TG
	.align	4
	.global	timer_get_config
	.type	timer_get_config, @function
timer_get_config:
.LFB33:
	.loc 1 234 0
.LVL204:
	entry	sp, 48
.LCFI13:
	.loc 1 235 0
	bltui	a2, 2, .L88
	.loc 1 235 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL205:
	l32r	a2, .LC128
.LVL206:
	l32r	a11, .LC126
	s32i.n	a2, sp, 4
	movi	a2, 0xeb
	j	.L99
.LVL207:
.L88:
	.loc 1 236 0 is_stmt 1
	bltui	a3, 2, .L90
	.loc 1 236 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL208:
	l32r	a2, .LC129
.LVL209:
	l32r	a11, .LC126
	s32i.n	a2, sp, 4
	movi	a2, 0xec
.L99:
	l32r	a15, .LC125
	l32r	a12, .LC127
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL210:
	movi	a2, 0x102
	retw.n
.LVL211:
.L90:
	.loc 1 237 0 is_stmt 1
	bnez.n	a4, .L91
	.loc 1 237 0 discriminator 4
	call8	esp_log_timestamp
.LVL212:
	l32r	a2, .LC130
.LVL213:
	l32r	a11, .LC126
	s32i.n	a2, sp, 4
	movi	a2, 0xed
	j	.L99
.LVL214:
.L91:
	.loc 1 238 0
	l32r	a5, .LC131
	addx8	a5, a2, a5
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL215:
	.loc 1 239 0
	l32r	a8, .LC132
	slli	a11, a3, 3
	addx4	a2, a2, a8
.LVL216:
	l32i.n	a10, a2, 0
	add.n	a8, a11, a3
	addx4	a8, a8, a10
	memw
	l32i.n	a2, a8, 0
	extui	a2, a2, 10, 1
	s8i	a2, a4, 0
	.loc 1 240 0
	memw
	l32i.n	a2, a8, 0
	extui	a2, a2, 29, 1
	s8i	a2, a4, 12
	.loc 1 241 0
	memw
	l32i.n	a2, a8, 0
	.loc 1 242 0
	memw
	l32i.n	a9, a8, 0
	.loc 1 241 0
	extui	a2, a2, 30, 1
	s32i.n	a2, a4, 8
	.loc 1 242 0
	extui	a9, a9, 13, 16
	l32r	a2, .LC124
	beqz.n	a9, .L92
	.loc 1 243 0 discriminator 1
	memw
	l32i.n	a2, a8, 0
	extui	a2, a2, 13, 16
.L92:
	.loc 1 244 0 discriminator 4
	add.n	a3, a11, a3
.LVL217:
	addx4	a3, a3, a10
	.loc 1 242 0 discriminator 4
	s32i.n	a2, a4, 16
	.loc 1 244 0 discriminator 4
	memw
	l32i.n	a2, a3, 0
	extui	a2, a2, 31, 1
	s8i	a2, a4, 1
	.loc 1 245 0 discriminator 4
	memw
	l32i.n	a2, a3, 0
	bbci	a2, 11, .L93
	.loc 1 246 0
	movi.n	a2, 0
	s32i.n	a2, a4, 4
.L93:
	.loc 1 248 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL218:
	.loc 1 249 0
	movi.n	a2, 0
	.loc 1 250 0
	retw.n
.LFE33:
	.size	timer_get_config, .-timer_get_config
	.section	.text.timer_group_intr_enable,"ax",@progbits
	.literal_position
	.literal .LC133, __FUNCTION__$5475
	.literal .LC134, .LC1
	.literal .LC135, .LC3
	.literal .LC136, .LC5
	.literal .LC137, timer_spinlock
	.literal .LC138, TG
	.align	4
	.global	timer_group_intr_enable
	.type	timer_group_intr_enable, @function
timer_group_intr_enable:
.LFB34:
	.loc 1 253 0
.LVL219:
	entry	sp, 48
.LCFI14:
	.loc 1 254 0
	bltui	a2, 2, .L101
	.loc 1 254 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL220:
	l32r	a2, .LC136
.LVL221:
	l32r	a11, .LC134
	s32i.n	a2, sp, 4
	l32r	a15, .LC133
	movi	a2, 0xfe
	l32r	a12, .LC135
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL222:
	movi	a2, 0x102
	retw.n
.LVL223:
.L101:
.LBB9:
.LBB10:
	.loc 1 255 0 is_stmt 1
	l32r	a4, .LC137
	addx8	a4, a2, a4
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL224:
	.loc 1 256 0
	l32r	a8, .LC138
	.loc 1 257 0
	mov.n	a10, a4
	.loc 1 256 0
	addx4	a2, a2, a8
.LVL225:
	l32i.n	a8, a2, 0
	memw
	l32i	a2, a8, 152
	or	a3, a3, a2
.LVL226:
	memw
	s32i	a3, a8, 152
	.loc 1 257 0
	call8	vTaskExitCritical
.LVL227:
	movi.n	a2, 0
.LBE10:
.LBE9:
	.loc 1 259 0
	retw.n
.LFE34:
	.size	timer_group_intr_enable, .-timer_group_intr_enable
	.section	.text.timer_group_intr_disable,"ax",@progbits
	.literal_position
	.literal .LC139, __FUNCTION__$5480
	.literal .LC140, .LC1
	.literal .LC141, .LC3
	.literal .LC142, .LC5
	.literal .LC143, timer_spinlock
	.literal .LC144, TG
	.align	4
	.global	timer_group_intr_disable
	.type	timer_group_intr_disable, @function
timer_group_intr_disable:
.LFB35:
	.loc 1 262 0
.LVL228:
	entry	sp, 48
.LCFI15:
	.loc 1 263 0
	bltui	a2, 2, .L104
	.loc 1 263 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL229:
	l32r	a2, .LC142
.LVL230:
	l32r	a11, .LC140
	s32i.n	a2, sp, 4
	l32r	a15, .LC139
	movi	a2, 0x107
	l32r	a12, .LC141
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL231:
	movi	a2, 0x102
	retw.n
.LVL232:
.L104:
.LBB13:
.LBB14:
	.loc 1 264 0 is_stmt 1
	l32r	a4, .LC143
	addx8	a4, a2, a4
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL233:
	.loc 1 265 0
	l32r	a8, .LC144
	movi.n	a9, -1
	addx4	a2, a2, a8
.LVL234:
	l32i.n	a8, a2, 0
	xor	a3, a9, a3
.LVL235:
	memw
	l32i	a2, a8, 152
	.loc 1 266 0
	mov.n	a10, a4
	.loc 1 265 0
	and	a3, a3, a2
	memw
	s32i	a3, a8, 152
	.loc 1 266 0
	call8	vTaskExitCritical
.LVL236:
	movi.n	a2, 0
.LBE14:
.LBE13:
	.loc 1 268 0
	retw.n
.LFE35:
	.size	timer_group_intr_disable, .-timer_group_intr_disable
	.section	.text.timer_enable_intr,"ax",@progbits
	.literal_position
	.literal .LC145, __FUNCTION__$5485
	.literal .LC146, .LC1
	.literal .LC147, .LC3
	.literal .LC148, .LC5
	.literal .LC149, .LC7
	.align	4
	.global	timer_enable_intr
	.type	timer_enable_intr, @function
timer_enable_intr:
.LFB36:
	.loc 1 271 0
.LVL237:
	entry	sp, 48
.LCFI16:
	.loc 1 271 0
	mov.n	a10, a2
	.loc 1 272 0
	bltui	a2, 2, .L107
	.loc 1 272 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL238:
	l32r	a3, .LC148
.LVL239:
	l32r	a11, .LC146
	s32i.n	a3, sp, 4
	movi	a3, 0x110
	j	.L110
.LVL240:
.L107:
	.loc 1 273 0 is_stmt 1
	bltui	a3, 2, .L109
	.loc 1 273 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL241:
	l32r	a3, .LC149
.LVL242:
	l32r	a11, .LC146
	s32i.n	a3, sp, 4
	movi	a3, 0x111
.L110:
	l32r	a15, .LC145
	l32r	a12, .LC147
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL243:
	movi	a10, 0x102
	j	.L108
.LVL244:
.L109:
	.loc 1 274 0 is_stmt 1
	movi.n	a11, 1
	ssl	a3
	sll	a11, a11
	call8	timer_group_intr_enable
.LVL245:
.L108:
	.loc 1 275 0
	mov.n	a2, a10
.LVL246:
	retw.n
.LFE36:
	.size	timer_enable_intr, .-timer_enable_intr
	.section	.text.timer_disable_intr,"ax",@progbits
	.literal_position
	.literal .LC150, __FUNCTION__$5490
	.literal .LC151, .LC1
	.literal .LC152, .LC3
	.literal .LC153, .LC5
	.literal .LC154, .LC7
	.align	4
	.global	timer_disable_intr
	.type	timer_disable_intr, @function
timer_disable_intr:
.LFB37:
	.loc 1 278 0
.LVL247:
	entry	sp, 48
.LCFI17:
	.loc 1 278 0
	mov.n	a10, a2
	.loc 1 279 0
	bltui	a2, 2, .L112
	.loc 1 279 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL248:
	l32r	a3, .LC153
.LVL249:
	l32r	a11, .LC151
	s32i.n	a3, sp, 4
	movi	a3, 0x117
	j	.L115
.LVL250:
.L112:
	.loc 1 280 0 is_stmt 1
	bltui	a3, 2, .L114
	.loc 1 280 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL251:
	l32r	a3, .LC154
.LVL252:
	l32r	a11, .LC151
	s32i.n	a3, sp, 4
	movi	a3, 0x118
.L115:
	l32r	a15, .LC150
	l32r	a12, .LC152
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL253:
	movi	a10, 0x102
	j	.L113
.LVL254:
.L114:
	.loc 1 281 0 is_stmt 1
	movi.n	a11, 1
	ssl	a3
	sll	a11, a11
	call8	timer_group_intr_disable
.LVL255:
.L113:
	.loc 1 282 0
	mov.n	a2, a10
.LVL256:
	retw.n
.LFE37:
	.size	timer_disable_intr, .-timer_disable_intr
	.section	.rodata.__FUNCTION__$5490,"a",@progbits
	.type	__FUNCTION__$5490, @object
	.size	__FUNCTION__$5490, 19
__FUNCTION__$5490:
	.string	"timer_disable_intr"
	.section	.rodata.__FUNCTION__$5485,"a",@progbits
	.type	__FUNCTION__$5485, @object
	.size	__FUNCTION__$5485, 18
__FUNCTION__$5485:
	.string	"timer_enable_intr"
	.section	.rodata.__FUNCTION__$5480,"a",@progbits
	.type	__FUNCTION__$5480, @object
	.size	__FUNCTION__$5480, 25
__FUNCTION__$5480:
	.string	"timer_group_intr_disable"
	.section	.rodata.__FUNCTION__$5475,"a",@progbits
	.type	__FUNCTION__$5475, @object
	.size	__FUNCTION__$5475, 24
__FUNCTION__$5475:
	.string	"timer_group_intr_enable"
	.section	.rodata.__FUNCTION__$5470,"a",@progbits
	.type	__FUNCTION__$5470, @object
	.size	__FUNCTION__$5470, 17
__FUNCTION__$5470:
	.string	"timer_get_config"
	.section	.rodata.__FUNCTION__$5464,"a",@progbits
	.type	__FUNCTION__$5464, @object
	.size	__FUNCTION__$5464, 11
__FUNCTION__$5464:
	.string	"timer_init"
	.section	.rodata.__FUNCTION__$5451,"a",@progbits
	.type	__FUNCTION__$5451, @object
	.size	__FUNCTION__$5451, 19
__FUNCTION__$5451:
	.string	"timer_isr_register"
	.section	.rodata.__FUNCTION__$5441,"a",@progbits
	.type	__FUNCTION__$5441, @object
	.size	__FUNCTION__$5441, 16
__FUNCTION__$5441:
	.string	"timer_set_alarm"
	.section	.rodata.__FUNCTION__$5435,"a",@progbits
	.type	__FUNCTION__$5435, @object
	.size	__FUNCTION__$5435, 22
__FUNCTION__$5435:
	.string	"timer_get_alarm_value"
	.section	.rodata.__FUNCTION__$5429,"a",@progbits
	.type	__FUNCTION__$5429, @object
	.size	__FUNCTION__$5429, 22
__FUNCTION__$5429:
	.string	"timer_set_alarm_value"
	.section	.rodata.__FUNCTION__$5422,"a",@progbits
	.type	__FUNCTION__$5422, @object
	.size	__FUNCTION__$5422, 18
__FUNCTION__$5422:
	.string	"timer_set_divider"
	.section	.rodata.__FUNCTION__$5416,"a",@progbits
	.type	__FUNCTION__$5416, @object
	.size	__FUNCTION__$5416, 22
__FUNCTION__$5416:
	.string	"timer_set_auto_reload"
	.section	.rodata.__FUNCTION__$5410,"a",@progbits
	.type	__FUNCTION__$5410, @object
	.size	__FUNCTION__$5410, 23
__FUNCTION__$5410:
	.string	"timer_set_counter_mode"
	.section	.rodata.__FUNCTION__$5404,"a",@progbits
	.type	__FUNCTION__$5404, @object
	.size	__FUNCTION__$5404, 12
__FUNCTION__$5404:
	.string	"timer_pause"
	.section	.rodata.__FUNCTION__$5399,"a",@progbits
	.type	__FUNCTION__$5399, @object
	.size	__FUNCTION__$5399, 12
__FUNCTION__$5399:
	.string	"timer_start"
	.section	.rodata.__FUNCTION__$5394,"a",@progbits
	.type	__FUNCTION__$5394, @object
	.size	__FUNCTION__$5394, 24
__FUNCTION__$5394:
	.string	"timer_set_counter_value"
	.section	.rodata.__FUNCTION__$5385,"a",@progbits
	.type	__FUNCTION__$5385, @object
	.size	__FUNCTION__$5385, 27
__FUNCTION__$5385:
	.string	"timer_get_counter_time_sec"
	.section	.rodata.__FUNCTION__$5379,"a",@progbits
	.type	__FUNCTION__$5379, @object
	.size	__FUNCTION__$5379, 24
__FUNCTION__$5379:
	.string	"timer_get_counter_value"
	.section	.data.timer_spinlock,"aw",@progbits
	.align	4
	.type	timer_spinlock, @object
	.size	timer_spinlock, 16
timer_spinlock:
	.word	-1287651329
	.word	0
	.word	-1287651329
	.word	0
	.section	.rodata.TG,"a",@progbits
	.align	4
	.type	TG, @object
	.size	TG, 8
TG:
	.word	TIMERG0
	.word	TIMERG1
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI5-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI8-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI10-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI11-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI12-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI13-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI14-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI15-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI16-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI17-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/timer.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1daa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0xc
	.4byte	.LASF225
	.4byte	.LASF226
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x39
	.4byte	0x77
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x8
	.4byte	0xef
	.uleb128 0x9
	.4byte	0x97
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x1f
	.4byte	0x120
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x18
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x56
	.4byte	0x136
	.uleb128 0xc
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x57
	.4byte	0x146
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x174
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x8a
	.4byte	0xc8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x8f
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.byte	0x94
	.4byte	0x153
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.4byte	0x200
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x19
	.4byte	0xc8
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1a
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x1b
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x1c
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x1d
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x1e
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x7
	.byte	0x1f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x7
	.byte	0x20
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x17
	.4byte	0x219
	.uleb128 0x11
	.4byte	0x17f
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x22
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x24
	.byte	0x7
	.byte	0x16
	.4byte	0x28e
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x7
	.byte	0x23
	.4byte	0x200
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.byte	0x24
	.4byte	0xc8
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.byte	0x25
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x7
	.byte	0x26
	.4byte	0xc8
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.byte	0x27
	.4byte	0xc8
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x7
	.byte	0x28
	.4byte	0xc8
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.byte	0x29
	.4byte	0xc8
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0x2a
	.4byte	0xc8
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0x2b
	.4byte	0xc8
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.4byte	0x33b
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2f
	.4byte	0xc8
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x7
	.byte	0x30
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x7
	.byte	0x31
	.4byte	0xc8
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x7
	.byte	0x32
	.4byte	0xc8
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x33
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x34
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x7
	.byte	0x35
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x7
	.byte	0x36
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x7
	.byte	0x37
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x7
	.byte	0x38
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"en"
	.byte	0x7
	.byte	0x39
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.4byte	0x354
	.uleb128 0x11
	.4byte	0x28e
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x3b
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x3e
	.4byte	0x37b
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3f
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x7
	.byte	0x40
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x3d
	.4byte	0x394
	.uleb128 0x11
	.4byte	0x354
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x42
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x4b
	.4byte	0x3f7
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x4c
	.4byte	0xc8
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x7
	.byte	0x4d
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x7
	.byte	0x4e
	.4byte	0xc8
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"rdy"
	.byte	0x7
	.byte	0x4f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"max"
	.byte	0x7
	.byte	0x50
	.4byte	0xc8
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x7
	.byte	0x51
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x4a
	.4byte	0x410
	.uleb128 0x11
	.4byte	0x394
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x53
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x56
	.4byte	0x437
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x57
	.4byte	0xc8
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x7
	.byte	0x58
	.4byte	0xc8
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x55
	.4byte	0x450
	.uleb128 0x11
	.4byte	0x410
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x5a
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x5d
	.4byte	0x4fd
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x5e
	.4byte	0xc8
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x7
	.byte	0x5f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x7
	.byte	0x60
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x7
	.byte	0x61
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x7
	.byte	0x62
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x63
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x64
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x65
	.4byte	0xc8
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x66
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x7
	.byte	0x67
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"en"
	.byte	0x7
	.byte	0x68
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x5c
	.4byte	0x516
	.uleb128 0x11
	.4byte	0x450
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x6a
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x6d
	.4byte	0x53d
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x6e
	.4byte	0xc8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x7
	.byte	0x6f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x6c
	.4byte	0x556
	.uleb128 0x11
	.4byte	0x516
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x71
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x7c
	.4byte	0x5a8
	.uleb128 0x13
	.string	"t0"
	.byte	0x7
	.byte	0x7d
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"t1"
	.byte	0x7
	.byte	0x7e
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"wdt"
	.byte	0x7
	.byte	0x7f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x7
	.byte	0x80
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x7
	.byte	0x81
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x7b
	.4byte	0x5c1
	.uleb128 0x11
	.4byte	0x556
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x83
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x86
	.4byte	0x613
	.uleb128 0x13
	.string	"t0"
	.byte	0x7
	.byte	0x87
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"t1"
	.byte	0x7
	.byte	0x88
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"wdt"
	.byte	0x7
	.byte	0x89
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x7
	.byte	0x8a
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x7
	.byte	0x8b
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x85
	.4byte	0x62c
	.uleb128 0x11
	.4byte	0x5c1
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x8d
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x90
	.4byte	0x67e
	.uleb128 0x13
	.string	"t0"
	.byte	0x7
	.byte	0x91
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"t1"
	.byte	0x7
	.byte	0x92
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"wdt"
	.byte	0x7
	.byte	0x93
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x7
	.byte	0x94
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x7
	.byte	0x95
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x8f
	.4byte	0x697
	.uleb128 0x11
	.4byte	0x62c
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0x97
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x9a
	.4byte	0x6e9
	.uleb128 0x13
	.string	"t0"
	.byte	0x7
	.byte	0x9b
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"t1"
	.byte	0x7
	.byte	0x9c
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"wdt"
	.byte	0x7
	.byte	0x9d
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x7
	.byte	0x9e
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x7
	.byte	0x9f
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x99
	.4byte	0x702
	.uleb128 0x11
	.4byte	0x697
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0xa1
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0xb8
	.4byte	0x729
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x7
	.byte	0xb9
	.4byte	0xc8
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x7
	.byte	0xba
	.4byte	0xc8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0xb7
	.4byte	0x742
	.uleb128 0x11
	.4byte	0x702
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0xbc
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.4byte	0x768
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0xc0
	.4byte	0xc8
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"en"
	.byte	0x7
	.byte	0xc1
	.4byte	0xc8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0xbe
	.4byte	0x781
	.uleb128 0x11
	.4byte	0x742
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.byte	0xc3
	.4byte	0xc8
	.byte	0
	.uleb128 0x14
	.2byte	0x100
	.byte	0x7
	.byte	0x15
	.4byte	0x9bf
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x7
	.byte	0x2c
	.4byte	0x9bf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x7
	.byte	0x3c
	.4byte	0x33b
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x7
	.byte	0x43
	.4byte	0x37b
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x7
	.byte	0x44
	.4byte	0xc8
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x7
	.byte	0x45
	.4byte	0xc8
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x7
	.byte	0x46
	.4byte	0xc8
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x7
	.byte	0x47
	.4byte	0xc8
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x7
	.byte	0x48
	.4byte	0xc8
	.byte	0x60
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x7
	.byte	0x49
	.4byte	0xc8
	.byte	0x64
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x7
	.byte	0x54
	.4byte	0x3f7
	.byte	0x68
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x7
	.byte	0x5b
	.4byte	0x437
	.byte	0x6c
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x7
	.byte	0x6b
	.4byte	0x4fd
	.byte	0x70
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x7
	.byte	0x72
	.4byte	0x53d
	.byte	0x74
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x7
	.byte	0x73
	.4byte	0xc8
	.byte	0x78
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x7
	.byte	0x74
	.4byte	0xc8
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x7
	.byte	0x75
	.4byte	0xc8
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x7
	.byte	0x76
	.4byte	0xc8
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x7
	.byte	0x77
	.4byte	0xc8
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x7
	.byte	0x78
	.4byte	0xc8
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x7
	.byte	0x79
	.4byte	0xc8
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x7
	.byte	0x7a
	.4byte	0xc8
	.byte	0x94
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x7
	.byte	0x84
	.4byte	0x5a8
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x7
	.byte	0x8e
	.4byte	0x613
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x7
	.byte	0x98
	.4byte	0x67e
	.byte	0xa0
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x7
	.byte	0xa2
	.4byte	0x6e9
	.byte	0xa4
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x7
	.byte	0xa3
	.4byte	0xc8
	.byte	0xa8
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x7
	.byte	0xa4
	.4byte	0xc8
	.byte	0xac
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x7
	.byte	0xa5
	.4byte	0xc8
	.byte	0xb0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x7
	.byte	0xa6
	.4byte	0xc8
	.byte	0xb4
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x7
	.byte	0xa7
	.4byte	0xc8
	.byte	0xb8
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x7
	.byte	0xa8
	.4byte	0xc8
	.byte	0xbc
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x7
	.byte	0xa9
	.4byte	0xc8
	.byte	0xc0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x7
	.byte	0xaa
	.4byte	0xc8
	.byte	0xc4
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x7
	.byte	0xab
	.4byte	0xc8
	.byte	0xc8
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x7
	.byte	0xac
	.4byte	0xc8
	.byte	0xcc
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x7
	.byte	0xad
	.4byte	0xc8
	.byte	0xd0
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x7
	.byte	0xae
	.4byte	0xc8
	.byte	0xd4
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x7
	.byte	0xaf
	.4byte	0xc8
	.byte	0xd8
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x7
	.byte	0xb0
	.4byte	0xc8
	.byte	0xdc
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x7
	.byte	0xb1
	.4byte	0xc8
	.byte	0xe0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x7
	.byte	0xb2
	.4byte	0xc8
	.byte	0xe4
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x7
	.byte	0xb3
	.4byte	0xc8
	.byte	0xe8
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x7
	.byte	0xb4
	.4byte	0xc8
	.byte	0xec
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x7
	.byte	0xb5
	.4byte	0xc8
	.byte	0xf0
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x7
	.byte	0xb6
	.4byte	0xc8
	.byte	0xf4
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x7
	.byte	0xbd
	.4byte	0x729
	.byte	0xf8
	.uleb128 0x15
	.string	"clk"
	.byte	0x7
	.byte	0xc4
	.4byte	0x768
	.byte	0xfc
	.byte	0
	.uleb128 0x16
	.4byte	0x219
	.4byte	0x9cf
	.uleb128 0x17
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x7
	.byte	0xc5
	.4byte	0x9da
	.uleb128 0x18
	.4byte	0x781
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x22
	.4byte	0x9fe
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x9
	.byte	0x26
	.4byte	0x9df
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x2b
	.4byte	0xa28
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x9
	.byte	0x2f
	.4byte	0xa09
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x34
	.4byte	0xa52
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x9
	.byte	0x38
	.4byte	0xa33
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x45
	.4byte	0xa7c
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x9
	.byte	0x49
	.4byte	0xa5d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x4e
	.4byte	0xaa0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x9
	.byte	0x52
	.4byte	0xa87
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x57
	.4byte	0xaca
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x9
	.byte	0x5b
	.4byte	0xaab
	.uleb128 0xd
	.byte	0x14
	.byte	0x9
	.byte	0x60
	.4byte	0xb26
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x9
	.byte	0x61
	.4byte	0x14c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x9
	.byte	0x62
	.4byte	0x14c
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x9
	.byte	0x63
	.4byte	0xaa0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0x9
	.byte	0x64
	.4byte	0xa52
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x9
	.byte	0x65
	.4byte	0x14c
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x9
	.byte	0x66
	.4byte	0xc8
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x9
	.byte	0x67
	.4byte	0xad5
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x9
	.byte	0x6e
	.4byte	0x13b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x16
	.4byte	0xc1b
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x21
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x22
	.byte	0
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x2d
	.4byte	0x120
	.byte	0x1
	.4byte	0xc5a
	.uleb128 0x1a
	.4byte	.LASF180
	.byte	0x1
	.byte	0x2d
	.4byte	0x9fe
	.uleb128 0x1a
	.4byte	.LASF181
	.byte	0x1
	.byte	0x2d
	.4byte	0xa28
	.uleb128 0x1a
	.4byte	.LASF182
	.byte	0x1
	.byte	0x2d
	.4byte	0xc5a
	.uleb128 0x1b
	.4byte	.LASF186
	.4byte	0xc70
	.4byte	.LASF183
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0xc70
	.uleb128 0x17
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0xc60
	.uleb128 0x19
	.4byte	.LASF184
	.byte	0x1
	.byte	0xfc
	.4byte	0x120
	.byte	0x1
	.4byte	0xca9
	.uleb128 0x1a
	.4byte	.LASF180
	.byte	0x1
	.byte	0xfc
	.4byte	0x9fe
	.uleb128 0x1a
	.4byte	.LASF185
	.byte	0x1
	.byte	0xfc
	.4byte	0xc8
	.uleb128 0x1b
	.4byte	.LASF186
	.4byte	0xca9
	.4byte	.LASF184
	.byte	0
	.uleb128 0x7
	.4byte	0xc60
	.uleb128 0x1c
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x105
	.4byte	0x120
	.byte	0x1
	.4byte	0xce5
	.uleb128 0x1d
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x105
	.4byte	0x9fe
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x105
	.4byte	0xc8
	.uleb128 0x1b
	.4byte	.LASF186
	.4byte	0xcf5
	.4byte	.LASF187
	.byte	0
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0xcf5
	.uleb128 0x17
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0xce5
	.uleb128 0x1e
	.4byte	0xc1b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xded
	.uleb128 0x1f
	.4byte	0xc2b
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	0xc36
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	0xc41
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	0xc4c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5379
	.uleb128 0x22
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xdda
	.uleb128 0x1f
	.4byte	0xc41
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	0xc36
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	0xc2b
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x21
	.4byte	0xc4c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5379
	.uleb128 0x24
	.4byte	.LVL7
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL10
	.4byte	0x1d76
	.4byte	0xdb4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5379
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL13
	.4byte	0x1d81
	.4byte	0xdc8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL1
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL4
	.4byte	0x1d6b
	.byte	0
	.uleb128 0x28
	.4byte	.LASF191
	.byte	0x1
	.byte	0x3a
	.4byte	0x120
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeec
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x3a
	.4byte	0x9fe
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x3a
	.4byte	0xa28
	.4byte	.LLST6
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x1
	.byte	0x3a
	.4byte	0xeec
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0xf09
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5385
	.uleb128 0x2c
	.4byte	.LASF182
	.byte	0x1
	.byte	0x40
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.byte	0x41
	.4byte	0x120
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xe76
	.uleb128 0x2e
	.string	"div"
	.byte	0x1
	.byte	0x43
	.4byte	0xb2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL17
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL22
	.4byte	0x1d76
	.4byte	0xec6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5385
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0x1d6b
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0xc1b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef2
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF190
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0xf09
	.uleb128 0x17
	.4byte	0x90
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0xef9
	.uleb128 0x2f
	.4byte	.LASF192
	.byte	0x1
	.byte	0x49
	.4byte	0x120
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdb
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x49
	.4byte	0x9fe
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x49
	.4byte	0xa28
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	.LASF193
	.byte	0x1
	.byte	0x49
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0xfdb
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5394
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL43
	.4byte	0x1d76
	.4byte	0xfb6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5394
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL46
	.4byte	0x1d81
	.4byte	0xfca
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL48
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xc60
	.uleb128 0x2f
	.4byte	.LASF194
	.byte	0x1
	.byte	0x55
	.4byte	0x120
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109b
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x55
	.4byte	0x9fe
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x55
	.4byte	0xa28
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x10ab
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5399
	.uleb128 0x24
	.4byte	.LVL50
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL55
	.4byte	0x1d76
	.4byte	0x1076
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5399
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL58
	.4byte	0x1d81
	.4byte	0x108a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL60
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x10ab
	.uleb128 0x17
	.4byte	0x90
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x109b
	.uleb128 0x2f
	.4byte	.LASF195
	.byte	0x1
	.byte	0x5f
	.4byte	0x120
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x116b
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x5f
	.4byte	0x9fe
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x5f
	.4byte	0xa28
	.4byte	.LLST13
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x116b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5404
	.uleb128 0x24
	.4byte	.LVL62
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL65
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL67
	.4byte	0x1d76
	.4byte	0x1146
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5404
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL70
	.4byte	0x1d81
	.4byte	0x115a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL72
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x109b
	.uleb128 0x2f
	.4byte	.LASF196
	.byte	0x1
	.byte	0x69
	.4byte	0x120
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1243
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x69
	.4byte	0x9fe
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x69
	.4byte	0xa28
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	.LASF141
	.byte	0x1
	.byte	0x69
	.4byte	0xa52
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x1253
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5410
	.uleb128 0x24
	.4byte	.LVL74
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL77
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL79
	.4byte	0x1d76
	.4byte	0x1215
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5410
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL81
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL85
	.4byte	0x1d81
	.4byte	0x1232
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL88
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x1253
	.uleb128 0x17
	.4byte	0x90
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x1243
	.uleb128 0x2f
	.4byte	.LASF197
	.byte	0x1
	.byte	0x74
	.4byte	0x120
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x132b
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x74
	.4byte	0x9fe
	.4byte	.LLST17
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x74
	.4byte	0xa28
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	.LASF48
	.byte	0x1
	.byte	0x74
	.4byte	0xaca
	.4byte	.LLST19
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x133b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5416
	.uleb128 0x24
	.4byte	.LVL90
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL93
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL95
	.4byte	0x1d76
	.4byte	0x12fd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5416
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL97
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL101
	.4byte	0x1d81
	.4byte	0x131a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL104
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x133b
	.uleb128 0x17
	.4byte	0x90
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0x132b
	.uleb128 0x2f
	.4byte	.LASF198
	.byte	0x1
	.byte	0x7f
	.4byte	0x120
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1422
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x7f
	.4byte	0x9fe
	.4byte	.LLST20
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x7f
	.4byte	0xa28
	.4byte	.LLST21
	.uleb128 0x29
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7f
	.4byte	0xc8
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x1432
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5422
	.uleb128 0x30
	.4byte	.LASF199
	.byte	0x1
	.byte	0x85
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LVL106
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL109
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL111
	.4byte	0x1d76
	.4byte	0x13f4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5422
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL113
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL117
	.4byte	0x1d81
	.4byte	0x1411
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x1432
	.uleb128 0x17
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x1422
	.uleb128 0x2f
	.4byte	.LASF200
	.byte	0x1
	.byte	0x8d
	.4byte	0x120
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1504
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x8d
	.4byte	0x9fe
	.4byte	.LLST24
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x8d
	.4byte	0xa28
	.4byte	.LLST25
	.uleb128 0x2a
	.4byte	.LASF201
	.byte	0x1
	.byte	0x8d
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x1504
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5429
	.uleb128 0x24
	.4byte	.LVL124
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL127
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL129
	.4byte	0x1d76
	.4byte	0x14df
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5429
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL132
	.4byte	0x1d81
	.4byte	0x14f3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL134
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x132b
	.uleb128 0x2f
	.4byte	.LASF202
	.byte	0x1
	.byte	0x98
	.4byte	0x120
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15da
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x98
	.4byte	0x9fe
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x98
	.4byte	0xa28
	.4byte	.LLST27
	.uleb128 0x2a
	.4byte	.LASF201
	.byte	0x1
	.byte	0x98
	.4byte	0xc5a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x15da
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5435
	.uleb128 0x24
	.4byte	.LVL136
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL139
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL141
	.4byte	0x1d76
	.4byte	0x15ac
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5435
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL143
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL147
	.4byte	0x1d81
	.4byte	0x15c9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL149
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x132b
	.uleb128 0x2f
	.4byte	.LASF203
	.byte	0x1
	.byte	0xa4
	.4byte	0x120
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b2
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0xa4
	.4byte	0x9fe
	.4byte	.LLST28
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0xa4
	.4byte	0xa28
	.4byte	.LLST29
	.uleb128 0x29
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa4
	.4byte	0xa7c
	.4byte	.LLST30
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x16c2
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5441
	.uleb128 0x24
	.4byte	.LVL151
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL154
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL156
	.4byte	0x1d76
	.4byte	0x1684
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5441
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL158
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL162
	.4byte	0x1d81
	.4byte	0x16a1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL165
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x16c2
	.uleb128 0x17
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x16b2
	.uleb128 0x2f
	.4byte	.LASF204
	.byte	0x1
	.byte	0xaf
	.4byte	0x120
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17d6
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0xaf
	.4byte	0x9fe
	.4byte	.LLST31
	.uleb128 0x2a
	.4byte	.LASF181
	.byte	0x1
	.byte	0xaf
	.4byte	0xa28
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.byte	0xb0
	.4byte	0xde
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.string	"arg"
	.byte	0x1
	.byte	0xb0
	.4byte	0x97
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.4byte	.LASF205
	.byte	0x1
	.byte	0xb0
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2a
	.4byte	.LASF206
	.byte	0x1
	.byte	0xb0
	.4byte	0x17d6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x17ec
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5451
	.uleb128 0x30
	.4byte	.LASF207
	.byte	0x1
	.byte	0xb6
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x30
	.4byte	.LASF208
	.byte	0x1
	.byte	0xb7
	.4byte	0xc8
	.4byte	.LLST33
	.uleb128 0x30
	.4byte	.LASF209
	.byte	0x1
	.byte	0xb8
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x24
	.4byte	.LVL167
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL170
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL172
	.4byte	0x1d76
	.4byte	0x17bb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5451
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL174
	.4byte	0x1d6b
	.uleb128 0x27
	.4byte	.LVL183
	.4byte	0x1d97
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb31
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x17ec
	.uleb128 0x17
	.4byte	0x90
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x17dc
	.uleb128 0x2f
	.4byte	.LASF210
	.byte	0x1
	.byte	0xd1
	.4byte	0x120
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d6
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0xd1
	.4byte	0x9fe
	.4byte	.LLST35
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0xd1
	.4byte	0xa28
	.4byte	.LLST36
	.uleb128 0x29
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd1
	.4byte	0x18d6
	.4byte	.LLST37
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x18f1
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5464
	.uleb128 0x24
	.4byte	.LVL185
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL188
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL190
	.4byte	0x1d76
	.4byte	0x1896
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5464
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL192
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL195
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL198
	.4byte	0x1da2
	.uleb128 0x25
	.4byte	.LVL200
	.4byte	0x1d81
	.4byte	0x18c5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL203
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18dc
	.uleb128 0x7
	.4byte	0xb26
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x18f1
	.uleb128 0x17
	.4byte	0x90
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	0x18e1
	.uleb128 0x2f
	.4byte	.LASF211
	.byte	0x1
	.byte	0xe9
	.4byte	0x120
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19c7
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0xe9
	.4byte	0x9fe
	.4byte	.LLST38
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0xe9
	.4byte	0xa28
	.4byte	.LLST39
	.uleb128 0x2a
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe9
	.4byte	0x19c7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x19dd
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5470
	.uleb128 0x24
	.4byte	.LVL205
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL208
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL210
	.4byte	0x1d76
	.4byte	0x1999
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5470
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL212
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL215
	.4byte	0x1d81
	.4byte	0x19b6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL218
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb26
	.uleb128 0x16
	.4byte	0xa0
	.4byte	0x19dd
	.uleb128 0x17
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x19cd
	.uleb128 0x1e
	.4byte	0xc75
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab9
	.uleb128 0x1f
	.4byte	0xc85
	.4byte	.LLST40
	.uleb128 0x1f
	.4byte	0xc90
	.4byte	.LLST41
	.uleb128 0x21
	.4byte	0xc9b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5475
	.uleb128 0x22
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1a6b
	.uleb128 0x1f
	.4byte	0xc90
	.4byte	.LLST42
	.uleb128 0x1f
	.4byte	0xc85
	.4byte	.LLST43
	.uleb128 0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x21
	.4byte	0xc9b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5475
	.uleb128 0x25
	.4byte	.LVL224
	.4byte	0x1d81
	.4byte	0x1a59
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL227
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL220
	.4byte	0x1d6b
	.uleb128 0x27
	.4byte	.LVL222
	.4byte	0x1d76
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5475
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xcae
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b90
	.uleb128 0x1f
	.4byte	0xcbf
	.4byte	.LLST44
	.uleb128 0x1f
	.4byte	0xccb
	.4byte	.LLST45
	.uleb128 0x21
	.4byte	0xcd7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5480
	.uleb128 0x22
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1b42
	.uleb128 0x1f
	.4byte	0xccb
	.4byte	.LLST46
	.uleb128 0x1f
	.4byte	0xcbf
	.4byte	.LLST47
	.uleb128 0x23
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x21
	.4byte	0xcd7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5480
	.uleb128 0x25
	.4byte	.LVL233
	.4byte	0x1d81
	.4byte	0x1b30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL236
	.4byte	0x1d8c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL229
	.4byte	0x1d6b
	.uleb128 0x27
	.4byte	.LVL231
	.4byte	0x1d76
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5480
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x10e
	.4byte	0x120
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c3c
	.uleb128 0x33
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x10e
	.4byte	0x9fe
	.4byte	.LLST48
	.uleb128 0x33
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x10e
	.4byte	0xa28
	.4byte	.LLST49
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x1c3c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5485
	.uleb128 0x24
	.4byte	.LVL238
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL241
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL243
	.4byte	0x1d76
	.4byte	0x1c29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5485
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL245
	.4byte	0xc75
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x1422
	.uleb128 0x32
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x115
	.4byte	0x120
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ced
	.uleb128 0x33
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x115
	.4byte	0x9fe
	.4byte	.LLST50
	.uleb128 0x33
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x115
	.4byte	0xa28
	.4byte	.LLST51
	.uleb128 0x2b
	.4byte	.LASF186
	.4byte	0x1ced
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5490
	.uleb128 0x24
	.4byte	.LVL248
	.4byte	0x1d6b
	.uleb128 0x24
	.4byte	.LVL251
	.4byte	0x1d6b
	.uleb128 0x25
	.4byte	.LVL253
	.4byte	0x1d76
	.4byte	0x1cda
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5490
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL255
	.4byte	0xcae
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x17dc
	.uleb128 0x2c
	.4byte	.LASF214
	.byte	0x1
	.byte	0x18
	.4byte	0x1d04
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x16
	.4byte	0x1d19
	.4byte	0x1d19
	.uleb128 0x17
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9da
	.uleb128 0x34
	.string	"TG"
	.byte	0x1
	.byte	0x27
	.4byte	0x1d2f
	.uleb128 0x5
	.byte	0x3
	.4byte	TG
	.uleb128 0x7
	.4byte	0x1d09
	.uleb128 0x16
	.4byte	0x174
	.4byte	0x1d44
	.uleb128 0x17
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF215
	.byte	0x1
	.byte	0x28
	.4byte	0x1d34
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_spinlock
	.uleb128 0x35
	.4byte	.LASF216
	.byte	0x7
	.byte	0xc6
	.4byte	0x9cf
	.uleb128 0x35
	.4byte	.LASF217
	.byte	0x7
	.byte	0xc7
	.4byte	0x9cf
	.uleb128 0x36
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x8
	.byte	0x57
	.uleb128 0x36
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x8
	.byte	0x6b
	.uleb128 0x36
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x6
	.byte	0xda
	.uleb128 0x36
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x6
	.byte	0xd9
	.uleb128 0x36
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x5
	.byte	0xbf
	.uleb128 0x36
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xb
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
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
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL73
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL73
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL86
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL89
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
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
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL105
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL105
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL118
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL123
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL135
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL150
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL150
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff5f0a0
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff600a0
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL176
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL184
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL199
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL184
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL202
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL204
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL219
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LVL223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL225
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL219
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL223
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL225
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL230
	.4byte	.LVL232
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL228
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL235
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL232
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL235
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL237
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL246
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL245
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL247
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL256
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL252
	.4byte	.LVL254
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL255
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
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
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"PERIPH_UART2_MODULE"
.LASF30:
	.string	"count"
.LASF213:
	.string	"timer_disable_intr"
.LASF47:
	.string	"load_high"
.LASF91:
	.string	"int_raw"
.LASF124:
	.string	"TIMER_COUNT_DOWN"
.LASF165:
	.string	"PERIPH_VSPI_MODULE"
.LASF81:
	.string	"lactrtc"
.LASF103:
	.string	"reserved_cc"
.LASF158:
	.string	"PERIPH_PWM3_MODULE"
.LASF69:
	.string	"hw_timer"
.LASF87:
	.string	"lactloadlo"
.LASF57:
	.string	"start_cycling"
.LASF104:
	.string	"reserved_d0"
.LASF160:
	.string	"PERIPH_UHCI1_MODULE"
.LASF82:
	.string	"lactlo"
.LASF105:
	.string	"reserved_d4"
.LASF106:
	.string	"reserved_d8"
.LASF195:
	.string	"timer_pause"
.LASF10:
	.string	"long long unsigned int"
.LASF70:
	.string	"wdt_config0"
.LASF71:
	.string	"wdt_config1"
.LASF72:
	.string	"wdt_config2"
.LASF73:
	.string	"wdt_config3"
.LASF74:
	.string	"wdt_config4"
.LASF75:
	.string	"wdt_config5"
.LASF185:
	.string	"en_mask"
.LASF140:
	.string	"intr_type"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF115:
	.string	"timg_dev_t"
.LASF211:
	.string	"timer_get_config"
.LASF107:
	.string	"reserved_dc"
.LASF122:
	.string	"TIMER_MAX"
.LASF150:
	.string	"PERIPH_I2C1_MODULE"
.LASF207:
	.string	"intr_source"
.LASF220:
	.string	"vTaskEnterCritical"
.LASF187:
	.string	"timer_group_intr_disable"
.LASF108:
	.string	"reserved_e0"
.LASF221:
	.string	"vTaskExitCritical"
.LASF11:
	.string	"long int"
.LASF109:
	.string	"reserved_e4"
.LASF110:
	.string	"reserved_e8"
.LASF113:
	.string	"reserved_f4"
.LASF219:
	.string	"esp_log_write"
.LASF183:
	.string	"timer_get_counter_value"
.LASF142:
	.string	"auto_reload"
.LASF39:
	.string	"enable"
.LASF191:
	.string	"timer_get_counter_time_sec"
.LASF172:
	.string	"PERIPH_WIFI_MODULE"
.LASF188:
	.string	"disable_mask"
.LASF94:
	.string	"reserved_a8"
.LASF31:
	.string	"portMUX_TYPE"
.LASF37:
	.string	"autoreload"
.LASF168:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF143:
	.string	"timer_config_t"
.LASF127:
	.string	"timer_count_dir_t"
.LASF133:
	.string	"TIMER_INTR_MAX"
.LASF209:
	.string	"mask"
.LASF111:
	.string	"reserved_ec"
.LASF86:
	.string	"lactalarmhi"
.LASF65:
	.string	"lact"
.LASF60:
	.string	"value"
.LASF88:
	.string	"lactloadhi"
.LASF76:
	.string	"wdt_feed"
.LASF112:
	.string	"reserved_f0"
.LASF198:
	.string	"timer_set_divider"
.LASF0:
	.string	"unsigned int"
.LASF34:
	.string	"level_int_en"
.LASF15:
	.string	"uint16_t"
.LASF171:
	.string	"PERIPH_RNG_MODULE"
.LASF41:
	.string	"cnt_low"
.LASF157:
	.string	"PERIPH_PWM2_MODULE"
.LASF46:
	.string	"load_low"
.LASF13:
	.string	"long unsigned int"
.LASF48:
	.string	"reload"
.LASF215:
	.string	"timer_spinlock"
.LASF159:
	.string	"PERIPH_UHCI0_MODULE"
.LASF186:
	.string	"__FUNCTION__"
.LASF224:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"intr_handle_t"
.LASF226:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/driver"
.LASF116:
	.string	"TIMER_GROUP_0"
.LASF169:
	.string	"PERIPH_CAN_MODULE"
.LASF202:
	.string	"timer_get_alarm_value"
.LASF1:
	.string	"short unsigned int"
.LASF67:
	.string	"date"
.LASF174:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF92:
	.string	"int_st_timers"
.LASF222:
	.string	"esp_intr_alloc_intrstatus"
.LASF126:
	.string	"TIMER_COUNT_MAX"
.LASF147:
	.string	"PERIPH_UART1_MODULE"
.LASF89:
	.string	"lactload"
.LASF182:
	.string	"timer_val"
.LASF210:
	.string	"timer_init"
.LASF38:
	.string	"increase"
.LASF170:
	.string	"PERIPH_EMAC_MODULE"
.LASF161:
	.string	"PERIPH_RMT_MODULE"
.LASF6:
	.string	"__int32_t"
.LASF114:
	.string	"timg_date"
.LASF78:
	.string	"rtc_cali_cfg"
.LASF206:
	.string	"handle"
.LASF129:
	.string	"TIMER_ALARM_EN"
.LASF149:
	.string	"PERIPH_I2C0_MODULE"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF208:
	.string	"status_reg"
.LASF128:
	.string	"TIMER_ALARM_DIS"
.LASF179:
	.string	"PERIPH_RSA_MODULE"
.LASF141:
	.string	"counter_dir"
.LASF205:
	.string	"intr_alloc_flags"
.LASF12:
	.string	"sizetype"
.LASF181:
	.string	"timer_num"
.LASF193:
	.string	"load_val"
.LASF218:
	.string	"esp_log_timestamp"
.LASF90:
	.string	"int_ena"
.LASF44:
	.string	"alarm_low"
.LASF83:
	.string	"lacthi"
.LASF50:
	.string	"sys_reset_length"
.LASF58:
	.string	"clk_sel"
.LASF164:
	.string	"PERIPH_HSPI_MODULE"
.LASF18:
	.string	"uint64_t"
.LASF42:
	.string	"cnt_high"
.LASF79:
	.string	"rtc_cali_cfg1"
.LASF152:
	.string	"PERIPH_I2S1_MODULE"
.LASF189:
	.string	"time"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
.LASF154:
	.string	"PERIPH_TIMG1_MODULE"
.LASF166:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF9:
	.string	"__uint64_t"
.LASF138:
	.string	"timer_autoreload_t"
.LASF132:
	.string	"TIMER_INTR_LEVEL"
.LASF145:
	.string	"PERIPH_LEDC_MODULE"
.LASF134:
	.string	"timer_intr_mode_t"
.LASF123:
	.string	"timer_idx_t"
.LASF33:
	.string	"alarm_en"
.LASF28:
	.string	"_Bool"
.LASF16:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF156:
	.string	"PERIPH_PWM1_MODULE"
.LASF196:
	.string	"timer_set_counter_mode"
.LASF192:
	.string	"timer_set_counter_value"
.LASF68:
	.string	"reserved28"
.LASF204:
	.string	"timer_isr_register"
.LASF62:
	.string	"cpst_en"
.LASF4:
	.string	"short int"
.LASF119:
	.string	"timer_group_t"
.LASF26:
	.string	"intr_handle_data_t"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF131:
	.string	"timer_alarm_t"
.LASF85:
	.string	"lactalarmlo"
.LASF56:
	.string	"clk_prescale"
.LASF96:
	.string	"reserved_b0"
.LASF173:
	.string	"PERIPH_BT_MODULE"
.LASF93:
	.string	"int_clr_timers"
.LASF77:
	.string	"wdt_wprotect"
.LASF146:
	.string	"PERIPH_UART0_MODULE"
.LASF49:
	.string	"flashboot_mod_en"
.LASF176:
	.string	"PERIPH_BT_LC_MODULE"
.LASF167:
	.string	"PERIPH_SDMMC_MODULE"
.LASF17:
	.string	"uint32_t"
.LASF32:
	.string	"reserved0"
.LASF29:
	.string	"owner"
.LASF14:
	.string	"char"
.LASF95:
	.string	"reserved_ac"
.LASF45:
	.string	"alarm_high"
.LASF177:
	.string	"PERIPH_AES_MODULE"
.LASF40:
	.string	"config"
.LASF5:
	.string	"__uint16_t"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF194:
	.string	"timer_start"
.LASF125:
	.string	"TIMER_COUNT_UP"
.LASF55:
	.string	"stg0"
.LASF54:
	.string	"stg1"
.LASF53:
	.string	"stg2"
.LASF52:
	.string	"stg3"
.LASF97:
	.string	"reserved_b4"
.LASF180:
	.string	"group_num"
.LASF35:
	.string	"edge_int_en"
.LASF98:
	.string	"reserved_b8"
.LASF130:
	.string	"TIMER_ALARM_MAX"
.LASF216:
	.string	"TIMERG0"
.LASF217:
	.string	"TIMERG1"
.LASF144:
	.string	"timer_isr_handle_t"
.LASF61:
	.string	"rtc_only"
.LASF7:
	.string	"__uint32_t"
.LASF80:
	.string	"lactconfig"
.LASF178:
	.string	"PERIPH_SHA_MODULE"
.LASF201:
	.string	"alarm_value"
.LASF43:
	.string	"update"
.LASF214:
	.string	"TIMER_TAG"
.LASF200:
	.string	"timer_set_alarm_value"
.LASF212:
	.string	"timer_enable_intr"
.LASF151:
	.string	"PERIPH_I2S0_MODULE"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF51:
	.string	"cpu_reset_length"
.LASF139:
	.string	"counter_en"
.LASF225:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/timer.c"
.LASF25:
	.string	"esp_err_t"
.LASF153:
	.string	"PERIPH_TIMG0_MODULE"
.LASF197:
	.string	"timer_set_auto_reload"
.LASF66:
	.string	"reserved4"
.LASF99:
	.string	"reserved_bc"
.LASF199:
	.string	"timer_en"
.LASF203:
	.string	"timer_set_alarm"
.LASF184:
	.string	"timer_group_intr_enable"
.LASF36:
	.string	"divider"
.LASF84:
	.string	"lactupdate"
.LASF100:
	.string	"reserved_c0"
.LASF163:
	.string	"PERIPH_SPI_MODULE"
.LASF101:
	.string	"reserved_c4"
.LASF63:
	.string	"lac_en"
.LASF64:
	.string	"step_len"
.LASF117:
	.string	"TIMER_GROUP_1"
.LASF102:
	.string	"reserved_c8"
.LASF162:
	.string	"PERIPH_PCNT_MODULE"
.LASF155:
	.string	"PERIPH_PWM0_MODULE"
.LASF136:
	.string	"TIMER_AUTORELOAD_EN"
.LASF59:
	.string	"start"
.LASF118:
	.string	"TIMER_GROUP_MAX"
.LASF137:
	.string	"TIMER_AUTORELOAD_MAX"
.LASF223:
	.string	"periph_module_enable"
.LASF175:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF120:
	.string	"TIMER_0"
.LASF121:
	.string	"TIMER_1"
.LASF190:
	.string	"double"
.LASF135:
	.string	"TIMER_AUTORELOAD_DIS"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
