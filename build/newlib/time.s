	.file	"time.c"
	.text
.Ltext0:
	.section	.text.set_boot_time,"ax",@progbits
	.literal_position
	.literal .LC0, s_boot_time_lock
	.literal .LC1, 1072988244
	.literal .LC2, 1072988248
	.align	4
	.type	set_boot_time, @function
set_boot_time:
.LFB19:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/time.c"
	.loc 1 98 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 99 0
	l32r	a4, .LC0
	mov.n	a10, a4
	call8	_lock_acquire
.LVL1:
	.loc 1 101 0
	l32r	a8, .LC1
	.loc 1 106 0
	mov.n	a10, a4
	.loc 1 101 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 102 0
	l32r	a8, .LC2
	memw
	s32i.n	a3, a8, 0
	.loc 1 106 0
	call8	_lock_release
.LVL2:
	retw.n
.LFE19:
	.size	set_boot_time, .-set_boot_time
	.section	.text.get_rtc_time_us,"ax",@progbits
	.literal_position
	.literal .LC3, 1072988240
	.align	4
	.type	get_rtc_time_us, @function
get_rtc_time_us:
.LFB18:
	.loc 1 51 0
	entry	sp, 32
.LCFI1:
	.loc 1 52 0
	call8	rtc_time_get
.LVL3:
.LBB22:
.LBB23:
	.loc 1 244 0
	l32r	a2, .LC3
	memw
	l32i.n	a8, a2, 0
.LVL4:
.LBE23:
.LBE22:
	.loc 1 67 0
	mull	a9, a10, a8
	muluh	a10, a10, a8
.LVL5:
	extui	a9, a9, 19, 13
	slli	a2, a10, 13
	or	a9, a2, a9
	mull	a2, a11, a8
	muluh	a11, a11, a8
	extui	a3, a2, 19, 13
	slli	a2, a2, 13
	slli	a8, a11, 13
	add.n	a2, a9, a2
	or	a8, a3, a8
	extui	a10, a10, 19, 13
	movi.n	a3, 1
	bltu	a2, a9, .L3
	movi.n	a3, 0
.L3:
	add.n	a8, a10, a8
	.loc 1 69 0
	add.n	a3, a3, a8
	retw.n
.LFE18:
	.size	get_rtc_time_us, .-get_rtc_time_us
	.section	.text.adjust_boot_time,"ax",@progbits
	.literal_position
	.literal .LC4, s_boot_time_lock
	.literal .LC5, 1072988244
	.literal .LC6, 1072988248
	.literal .LC7, adjtime_start
	.literal .LC8, 0, 0
	.literal .LC9, adjtime_total_correction
	.align	4
	.type	adjust_boot_time, @function
adjust_boot_time:
.LFB21:
	.loc 1 124 0
	entry	sp, 32
.LCFI2:
.LBB31:
.LBB32:
	.loc 1 112 0
	l32r	a4, .LC4
	mov.n	a10, a4
	call8	_lock_acquire
.LVL6:
	.loc 1 114 0
	l32r	a2, .LC5
	.loc 1 118 0
	mov.n	a10, a4
	.loc 1 114 0
	memw
	l32i.n	a5, a2, 0
	l32r	a2, .LC6
	memw
	l32i.n	a6, a2, 0
	.loc 1 118 0
	call8	_lock_release
.LVL7:
.LBE32:
.LBE31:
	.loc 1 126 0
	or	a8, a5, a6
.LBB34:
.LBB33:
	.loc 1 114 0
	mov.n	a2, a5
	mov.n	a3, a6
.LVL8:
	l32r	a4, .LC7
.LBE33:
.LBE34:
	.loc 1 126 0
	bnez.n	a8, .L6
.L8:
	.loc 1 127 0
	l32r	a8, .LC8
	l32r	a9, .LC8+4
	s32i.n	a8, a4, 0
	s32i.n	a9, a4, 4
	j	.L7
.L6:
.LVL9:
.LBB35:
.LBB36:
	.loc 1 287 0
	call8	get_rtc_time_us
.LVL10:
.LBE36:
.LBE35:
	.loc 1 126 0
	l32i.n	a8, a4, 4
	bltu	a11, a8, .L8
	bne	a8, a11, .L7
	l32i.n	a8, a4, 0
	bltu	a10, a8, .L8
.LVL11:
.L7:
	.loc 1 129 0
	l32i.n	a8, a4, 0
	l32i.n	a9, a4, 4
	or	a8, a8, a9
	beqz.n	a8, .L10
.LVL12:
.LBB37:
.LBB38:
.LBB39:
	.loc 1 287 0
	call8	get_rtc_time_us
.LVL13:
.LBE39:
.LBE38:
	.loc 1 135 0
	l32i.n	a8, a4, 0
	l32i.n	a9, a4, 4
	sub	a8, a10, a8
	movi.n	a12, 1
	bltu	a10, a8, .L12
	movi.n	a12, 0
.L12:
	sub	a9, a11, a9
	sub	a9, a9, a12
	slli	a12, a9, 26
	srli	a8, a8, 6
	or	a8, a12, a8
	srli	a9, a9, 6
.LVL14:
	.loc 1 136 0
	or	a12, a8, a9
	beqz.n	a12, .L10
	.loc 1 137 0
	s32i.n	a10, a4, 0
	.loc 1 138 0
	l32r	a10, .LC9
.LVL15:
	.loc 1 137 0
	s32i.n	a11, a4, 4
	.loc 1 138 0
	l32i.n	a11, a10, 4
.LVL16:
	l32i.n	a2, a10, 0
.LVL17:
	bgez	a11, .L14
	.loc 1 139 0
	add.n	a12, a8, a2
	movi.n	a13, 1
	bltu	a12, a8, .L16
	movi.n	a13, 0
.L16:
	add.n	a3, a9, a11
.LVL18:
	add.n	a3, a13, a3
	bltz	a3, .L17
	.loc 1 140 0
	add.n	a2, a5, a2
	movi.n	a10, 1
	bltu	a2, a5, .L19
	movi.n	a10, 0
.L19:
	add.n	a3, a6, a11
	add.n	a3, a10, a3
.LVL19:
	j	.L34
.LVL20:
.L17:
	.loc 1 143 0
	s32i.n	a12, a10, 0
	s32i.n	a3, a10, 4
	.loc 1 144 0
	sub	a2, a5, a8
	movi.n	a4, 1
.LVL21:
	bltu	a5, a2, .L21
	movi.n	a4, 0
.L21:
	sub	a3, a6, a9
	sub	a3, a3, a4
.LVL22:
	j	.L20
.LVL23:
.L14:
	.loc 1 147 0
	sub	a12, a2, a8
	movi.n	a13, 1
	bltu	a2, a12, .L22
	movi.n	a13, 0
.L22:
	sub	a3, a11, a9
.LVL24:
	sub	a3, a3, a13
	bgei	a3, 1, .L23
	bnez.n	a3, .L27
	bnez.n	a12, .L23
.L27:
	.loc 1 148 0
	add.n	a2, a5, a2
	movi.n	a3, 1
	bltu	a2, a5, .L25
	movi.n	a3, 0
.L25:
	add.n	a11, a6, a11
	add.n	a3, a3, a11
.L34:
	.loc 1 149 0
	l32r	a8, .LC8
.LVL25:
	l32r	a9, .LC8+4
	s32i.n	a8, a4, 0
.LVL26:
	s32i.n	a9, a4, 4
	j	.L20
.LVL27:
.L23:
	.loc 1 151 0
	s32i.n	a3, a10, 4
	s32i.n	a12, a10, 0
	.loc 1 152 0
	add.n	a2, a5, a8
	movi.n	a3, 1
	bltu	a2, a5, .L26
	movi.n	a3, 0
.L26:
	add.n	a9, a6, a9
.LVL28:
	add.n	a3, a3, a9
.LVL29:
.L20:
	.loc 1 155 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	set_boot_time
.LVL30:
.L10:
.LBE37:
	.loc 1 159 0
	retw.n
.LFE21:
	.size	adjust_boot_time, .-adjust_boot_time
	.global	__divdi3
	.global	__moddi3
	.section	.text.adjtime,"ax",@progbits
	.literal_position
	.literal .LC10, 2146
	.literal .LC11, s_adjust_time_lock
	.literal .LC12, adjtime_start
	.literal .LC13, adjtime_total_correction
	.literal .LC14, 1000000
	.literal .LC15, 1000000, 0
	.align	4
	.global	adjtime
	.type	adjtime, @function
adjtime:
.LFB24:
	.loc 1 183 0
.LVL31:
	entry	sp, 32
.LCFI3:
	.loc 1 185 0
	beqz.n	a2, .L36
.LBB40:
	.loc 1 186 0
	l32i.n	a6, a2, 0
.LVL32:
	.loc 1 187 0
	l32i.n	a4, a2, 4
	.loc 1 188 0
	srai	a8, a6, 31
	xor	a10, a8, a6
	sub	a5, a10, a8
	.loc 1 187 0
	srai	a2, a4, 31
.LVL33:
	.loc 1 188 0
	movi.n	a9, 1
	bltu	a10, a5, .L38
	movi.n	a9, 0
.L38:
	neg	a8, a8
	sub	a8, a8, a9
	bgei	a8, 1, .L44
	bnez.n	a8, .L46
	l32r	a8, .LC10
	bltu	a8, a5, .L44
.L46:
	.loc 1 196 0
	l32r	a5, .LC11
	mov.n	a10, a5
	call8	_lock_acquire
.LVL34:
	.loc 1 198 0
	call8	adjust_boot_time
.LVL35:
.LBB41:
.LBB42:
	.loc 1 287 0
	call8	get_rtc_time_us
.LVL36:
.LBE42:
.LBE41:
	.loc 1 199 0
	l32r	a8, .LC12
	.loc 1 200 0
	l32r	a9, .LC13
	.loc 1 199 0
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
	.loc 1 200 0
	l32r	a8, .LC14
	mov.n	a10, a5
.LVL37:
	mull	a11, a6, a8
	mulsh	a8, a6, a8
	add.n	a4, a11, a4
.LVL38:
	movi.n	a6, 1
.LVL39:
	bltu	a4, a11, .L40
	movi.n	a6, 0
.L40:
	add.n	a2, a8, a2
	add.n	a2, a6, a2
	s32i.n	a4, a9, 0
	s32i.n	a2, a9, 4
	.loc 1 201 0
	call8	_lock_release
.LVL40:
.L36:
.LBE40:
	.loc 1 215 0
	movi.n	a2, 0
	.loc 1 203 0
	beq	a3, a2, .L37
	.loc 1 204 0
	l32r	a2, .LC11
	mov.n	a10, a2
	call8	_lock_acquire
.LVL41:
	.loc 1 205 0
	call8	adjust_boot_time
.LVL42:
	.loc 1 206 0
	l32r	a4, .LC12
	l32i.n	a8, a4, 0
	l32i.n	a4, a4, 4
	or	a8, a8, a4
	beqz.n	a8, .L41
	.loc 1 207 0
	l32r	a4, .LC13
	l32r	a12, .LC15
	l32i.n	a5, a4, 4
	l32i.n	a4, a4, 0
	l32r	a13, .LC15+4
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__divdi3
.LVL43:
	.loc 1 208 0
	l32r	a12, .LC15
	l32r	a13, .LC15+4
	.loc 1 207 0
	s32i.n	a10, a3, 0
	.loc 1 208 0
	mov.n	a11, a5
	mov.n	a10, a4
	call8	__moddi3
.LVL44:
	s32i.n	a10, a3, 4
	j	.L43
.L41:
	.loc 1 210 0
	s32i.n	a8, a3, 0
	.loc 1 211 0
	s32i.n	a8, a3, 4
.L43:
	.loc 1 213 0
	mov.n	a10, a2
	call8	_lock_release
.LVL45:
	.loc 1 215 0
	movi.n	a2, 0
	retw.n
.LVL46:
.L44:
.LBB43:
	.loc 1 189 0
	movi.n	a2, -1
.LVL47:
.L37:
.LBE43:
	.loc 1 220 0
	retw.n
.LFE24:
	.size	adjtime, .-adjtime
	.section	.text.esp_clk_slowclk_cal_set,"ax",@progbits
	.literal_position
	.literal .LC16, 1072988240
	.literal .LC17, s_boot_time_lock
	.literal .LC18, 1072988244
	.literal .LC19, 1072988248
	.literal .LC21, 524287
	.align	4
	.global	esp_clk_slowclk_cal_set
	.type	esp_clk_slowclk_cal_set, @function
esp_clk_slowclk_cal_set:
.LFB25:
	.loc 1 223 0
.LVL48:
	entry	sp, 48
.LCFI4:
	.loc 1 232 0
	call8	rtc_time_get
.LVL49:
.LBB46:
.LBB47:
	.loc 1 112 0
	l32r	a7, .LC17
.LBE47:
.LBE46:
	.loc 1 233 0
	l32r	a4, .LC16
	.loc 1 232 0
	mov.n	a3, a10
.LVL50:
.LBB50:
.LBB48:
	.loc 1 112 0
	mov.n	a10, a7
.LBE48:
.LBE50:
	.loc 1 233 0
	memw
	l32i.n	a4, a4, 0
.LVL51:
.LBB51:
.LBB49:
	.loc 1 112 0
	s32i.n	a11, sp, 0
	call8	_lock_acquire
.LVL52:
	.loc 1 114 0
	l32r	a5, .LC18
	l32r	a6, .LC19
	.loc 1 118 0
	mov.n	a10, a7
	.loc 1 114 0
	memw
	l32i.n	a5, a5, 0
	memw
	l32i.n	a6, a6, 0
.LVL53:
	.loc 1 118 0
	call8	_lock_release
.LVL54:
.LBE49:
.LBE51:
	.loc 1 237 0
	sub	a8, a4, a2
.LVL55:
	l32i.n	a11, sp, 0
	srai	a4, a8, 31
.LVL56:
	mull	a4, a4, a3
	mull	a11, a11, a8
	mull	a9, a8, a3
	muluh	a8, a8, a3
.LVL57:
	add.n	a11, a4, a11
	add.n	a8, a11, a8
	l32r	a3, .LC21
	srai	a4, a8, 31
	and	a4, a4, a3
	add.n	a3, a4, a9
	movi.n	a11, 1
	bltu	a3, a4, .L54
	movi.n	a11, 0
.L54:
	add.n	a8, a11, a8
	slli	a4, a8, 13
	extui	a3, a3, 19, 13
	or	a3, a4, a3
	add.n	a10, a3, a5
	srai	a8, a8, 19
	movi.n	a11, 1
	bltu	a10, a3, .L55
	movi.n	a11, 0
.L55:
	add.n	a8, a8, a6
	add.n	a11, a11, a8
	call8	set_boot_time
.LVL58:
	.loc 1 239 0
	l32r	a3, .LC16
	memw
	s32i.n	a2, a3, 0
	retw.n
.LFE25:
	.size	esp_clk_slowclk_cal_set, .-esp_clk_slowclk_cal_set
	.section	.text.esp_clk_slowclk_cal_get,"ax",@progbits
	.literal_position
	.literal .LC22, 1072988240
	.align	4
	.global	esp_clk_slowclk_cal_get
	.type	esp_clk_slowclk_cal_get, @function
esp_clk_slowclk_cal_get:
.LFB26:
	.loc 1 243 0
	entry	sp, 32
.LCFI5:
	.loc 1 244 0
	l32r	a2, .LC22
	memw
	l32i.n	a2, a2, 0
	.loc 1 245 0
	retw.n
.LFE26:
	.size	esp_clk_slowclk_cal_get, .-esp_clk_slowclk_cal_get
	.section	.text.esp_set_time_from_rtc,"ax",@progbits
	.align	4
	.global	esp_set_time_from_rtc
	.type	esp_set_time_from_rtc, @function
esp_set_time_from_rtc:
.LFB44:
	entry	sp, 32
.LCFI6:
	retw.n
.LFE44:
	.size	esp_set_time_from_rtc, .-esp_set_time_from_rtc
	.section	.text.esp_clk_rtc_time,"ax",@progbits
	.align	4
	.global	esp_clk_rtc_time
	.type	esp_clk_rtc_time, @function
esp_clk_rtc_time:
.LFB46:
	entry	sp, 32
.LCFI7:
	call8	get_rtc_time_us
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE46:
	.size	esp_clk_rtc_time, .-esp_clk_rtc_time
	.global	__udivdi3
	.global	__umoddi3
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC23, s_adjust_time_lock
	.literal .LC24, 1000000, 0
	.align	4
	.global	_gettimeofday_r
	.type	_gettimeofday_r, @function
_gettimeofday_r:
.LFB31:
	.loc 1 294 0
.LVL59:
	.loc 1 294 0
	entry	sp, 32
.LCFI8:
	.loc 1 297 0
	beqz.n	a3, .L60
.LBB57:
.LBB58:
.LBB59:
	.loc 1 164 0
	l32r	a2, .LC23
.LVL60:
	mov.n	a10, a2
	call8	_lock_acquire
.LVL61:
	.loc 1 165 0
	call8	adjust_boot_time
.LVL62:
	mov.n	a5, a10
	.loc 1 166 0
	mov.n	a10, a2
	.loc 1 165 0
	mov.n	a4, a11
.LVL63:
	.loc 1 166 0
	call8	_lock_release
.LVL64:
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	.loc 1 287 0
	call8	get_rtc_time_us
.LVL65:
.LBE61:
.LBE60:
	.loc 1 298 0
	add.n	a5, a10, a5
.LVL66:
	movi.n	a8, 1
	bltu	a5, a10, .L61
	movi.n	a8, 0
.L61:
	add.n	a4, a11, a4
	add.n	a2, a8, a4
.LVL67:
	.loc 1 299 0
	l32r	a12, .LC24
	l32r	a13, .LC24+4
	mov.n	a10, a5
.LVL68:
	mov.n	a11, a2
	call8	__udivdi3
.LVL69:
	.loc 1 300 0
	l32r	a12, .LC24
	l32r	a13, .LC24+4
	.loc 1 299 0
	s32i.n	a10, a3, 0
	.loc 1 300 0
	mov.n	a11, a2
	mov.n	a10, a5
	call8	__umoddi3
.LVL70:
	s32i.n	a10, a3, 4
.LVL71:
.L60:
.LBE57:
	.loc 1 307 0
	movi.n	a2, 0
	retw.n
.LFE31:
	.size	_gettimeofday_r, .-_gettimeofday_r
	.align	4
	.global	_times_r
	.type	_times_r, @function
_times_r:
.LFB29:
	.loc 1 265 0
.LVL72:
	entry	sp, 48
.LCFI9:
	.loc 1 266 0
	call8	xTaskGetTickCount
.LVL73:
	.loc 1 269 0
	addx4	a10, a10, a10
.LVL74:
	.loc 1 267 0
	movi.n	a12, 0
	.loc 1 269 0
	slli	a10, a10, 1
	s32i.n	a10, a3, 4
	.loc 1 267 0
	s32i.n	a12, a3, 12
	.loc 1 268 0
	s32i.n	a12, a3, 8
	.loc 1 270 0
	s32i.n	a12, a3, 0
	.loc 1 272 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 271 0
	s32i.n	a12, sp, 0
	s32i.n	a12, sp, 4
	.loc 1 272 0
	call8	_gettimeofday_r
.LVL75:
	.loc 1 274 0
	l32i.n	a2, sp, 0
.LVL76:
	retw.n
.LFE29:
	.size	_times_r, .-_times_r
	.section	.text.settimeofday,"ax",@progbits
	.literal_position
	.literal .LC25, s_adjust_time_lock
	.literal .LC26, adjtime_start
	.literal .LC27, 0, 0
	.literal .LC28, 1000000
	.align	4
	.global	settimeofday
	.type	settimeofday, @function
settimeofday:
.LFB32:
	.loc 1 310 0
.LVL77:
	entry	sp, 32
.LCFI10:
	.loc 1 313 0
	beqz.n	a2, .L67
.LBB67:
.LBB68:
.LBB69:
	.loc 1 173 0
	l32r	a3, .LC25
.LVL78:
	mov.n	a10, a3
	call8	_lock_acquire
.LVL79:
	.loc 1 174 0
	l32r	a4, .LC26
	l32i.n	a8, a4, 0
	l32i.n	a9, a4, 4
	or	a8, a8, a9
	beqz.n	a8, .L68
	.loc 1 175 0
	call8	adjust_boot_time
.LVL80:
	.loc 1 176 0
	l32r	a8, .LC27
	l32r	a9, .LC27+4
	s32i.n	a8, a4, 0
	s32i.n	a9, a4, 4
.L68:
	.loc 1 178 0
	mov.n	a10, a3
	call8	_lock_release
.LVL81:
.LBE69:
.LBE68:
	.loc 1 315 0
	l32i.n	a9, a2, 0
	l32r	a3, .LC28
	movi.n	a11, 1
	mull	a4, a9, a3
	mulsh	a9, a9, a3
	l32i.n	a3, a2, 4
	srai	a8, a3, 31
	add.n	a3, a4, a3
	bltu	a3, a4, .L70
	movi.n	a11, 0
.L70:
	add.n	a2, a9, a8
.LVL82:
	add.n	a2, a11, a2
.LVL83:
.LBB70:
.LBB71:
	.loc 1 287 0
	call8	get_rtc_time_us
.LVL84:
.LBE71:
.LBE70:
	.loc 1 317 0
	sub	a10, a3, a10
.LVL85:
	movi.n	a4, 1
	bltu	a3, a10, .L71
	movi.n	a4, 0
.L71:
	sub	a11, a2, a11
	sub	a11, a11, a4
	call8	set_boot_time
.LVL86:
.L67:
.LBE67:
	.loc 1 324 0
	movi.n	a2, 0
	retw.n
.LFE32:
	.size	settimeofday, .-settimeofday
	.section	.text.usleep,"ax",@progbits
	.literal_position
	.literal .LC29, 9999
	.literal .LC30, -776530087
	.align	4
	.global	usleep
	.type	usleep, @function
usleep:
.LFB33:
	.loc 1 327 0
.LVL87:
	entry	sp, 32
.LCFI11:
.LVL88:
	.loc 1 329 0
	l32r	a8, .LC29
	.loc 1 327 0
	mov.n	a10, a2
	.loc 1 329 0
	bltu	a8, a2, .L79
	.loc 1 330 0
	call8	ets_delay_us
.LVL89:
	j	.L80
.L79:
.LVL90:
.LBB74:
.LBB75:
	.loc 1 335 0
	l32r	a10, .LC30
	add.n	a8, a2, a8
	muluh	a10, a8, a10
	srli	a10, a10, 13
	call8	vTaskDelay
.LVL91:
.L80:
.LBE75:
.LBE74:
	.loc 1 338 0
	movi.n	a2, 0
.LVL92:
	retw.n
.LFE33:
	.size	usleep, .-usleep
	.section	.text.sleep,"ax",@progbits
	.literal_position
	.literal .LC31, 1000000
	.align	4
	.global	sleep
	.type	sleep, @function
sleep:
.LFB34:
	.loc 1 341 0
.LVL93:
	entry	sp, 32
.LCFI12:
	.loc 1 342 0
	l32r	a10, .LC31
	mull	a10, a2, a10
	.loc 1 344 0
	movi.n	a2, 0
.LVL94:
	.loc 1 342 0
	call8	usleep
.LVL95:
	.loc 1 344 0
	retw.n
.LFE34:
	.size	sleep, .-sleep
	.section	.text.system_get_time,"ax",@progbits
	.align	4
	.global	system_get_time
	.type	system_get_time, @function
system_get_time:
.LFB35:
	.loc 1 347 0
	entry	sp, 32
.LCFI13:
.LVL96:
.LBB76:
.LBB77:
	.loc 1 287 0
	call8	get_rtc_time_us
.LVL97:
.LBE77:
.LBE76:
	.loc 1 353 0
	mov.n	a2, a10
	retw.n
.LFE35:
	.size	system_get_time, .-system_get_time
	.global	system_get_current_time
	.set	system_get_current_time,system_get_time
	.section	.text.system_relative_time,"ax",@progbits
	.align	4
	.global	system_relative_time
	.type	system_relative_time, @function
system_relative_time:
.LFB36:
	.loc 1 358 0
.LVL98:
	entry	sp, 32
.LCFI14:
.LVL99:
.LBB78:
.LBB79:
	.loc 1 287 0
	call8	get_rtc_time_us
.LVL100:
.LBE79:
.LBE78:
	.loc 1 364 0
	sub	a2, a10, a2
.LVL101:
	retw.n
.LFE36:
	.size	system_relative_time, .-system_relative_time
	.section	.text.system_get_rtc_time,"ax",@progbits
	.align	4
	.global	system_get_rtc_time
	.type	system_get_rtc_time, @function
system_get_rtc_time:
.LFB37:
	.loc 1 367 0
	entry	sp, 32
.LCFI15:
	.loc 1 369 0
	call8	get_rtc_time_us
.LVL102:
	.loc 1 373 0
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE37:
	.size	system_get_rtc_time, .-system_get_rtc_time
	.section	.text.esp_sync_counters_rtc_and_frc,"ax",@progbits
	.align	4
	.global	esp_sync_counters_rtc_and_frc
	.type	esp_sync_counters_rtc_and_frc, @function
esp_sync_counters_rtc_and_frc:
.LFB38:
	.loc 1 376 0
	entry	sp, 32
.LCFI16:
	retw.n
.LFE38:
	.size	esp_sync_counters_rtc_and_frc, .-esp_sync_counters_rtc_and_frc
	.section	.text.clock_settime,"ax",@progbits
	.literal_position
	.literal .LC32, 274877907
	.align	4
	.global	clock_settime
	.type	clock_settime, @function
clock_settime:
.LFB39:
	.loc 1 386 0
.LVL103:
	.loc 1 386 0
	entry	sp, 48
.LCFI17:
	.loc 1 388 0
	bnez.n	a3, .L87
	j	.L91
.L87:
	.loc 1 393 0
	bnei	a2, 1, .L91
	.loc 1 396 0
	l32i.n	a8, a3, 4
	l32r	a9, .LC32
	.loc 1 395 0
	l32i.n	a2, a3, 0
.LVL104:
	.loc 1 396 0
	mulsh	a9, a8, a9
	srai	a8, a8, 31
	srai	a9, a9, 6
	sub	a8, a9, a8
	.loc 1 397 0
	movi.n	a11, 0
	mov.n	a10, sp
	.loc 1 395 0
	s32i.n	a2, sp, 0
	.loc 1 396 0
	s32i.n	a8, sp, 4
	.loc 1 397 0
	call8	settimeofday
.LVL105:
	.loc 1 403 0
	movi.n	a2, 0
	retw.n
.LVL106:
.L91:
	.loc 1 400 0
	call8	__errno
.LVL107:
	movi.n	a2, 0x16
.LVL108:
	s32i.n	a2, a10, 0
	.loc 1 401 0
	movi.n	a2, -1
	.loc 1 408 0
	retw.n
.LFE39:
	.size	clock_settime, .-clock_settime
	.section	.text.clock_gettime,"ax",@progbits
	.literal_position
	.literal .LC33, 1000000, 0
	.align	4
	.global	clock_gettime
	.type	clock_gettime, @function
clock_gettime:
.LFB40:
	.loc 1 411 0
.LVL109:
	entry	sp, 48
.LCFI18:
	.loc 1 413 0
	bnez.n	a3, .L93
	j	.L98
.L93:
	.loc 1 418 0
	movi.n	a12, 0
	mov.n	a11, sp
	mov.n	a10, a12
	call8	_gettimeofday_r
.LVL110:
	.loc 1 420 0
	beqi	a2, 1, .L96
	beqi	a2, 4, .L97
	j	.L98
.L96:
	.loc 1 422 0
	l32i.n	a2, sp, 0
.LVL111:
	s32i.n	a2, a3, 0
	.loc 1 423 0
	l32i.n	a2, sp, 4
	slli	a8, a2, 5
	sub	a8, a8, a2
	addx4	a8, a8, a2
	slli	a8, a8, 3
	s32i.n	a8, a3, 4
	j	.L99
.LVL112:
.L97:
	.loc 1 429 0
	call8	get_rtc_time_us
.LVL113:
	.loc 1 431 0
	l32r	a12, .LC33
	l32r	a13, .LC33+4
	.loc 1 429 0
	mov.n	a4, a10
	mov.n	a5, a11
.LVL114:
	.loc 1 431 0
	call8	__udivdi3
.LVL115:
	.loc 1 432 0
	l32r	a12, .LC33
	l32r	a13, .LC33+4
	.loc 1 431 0
	s32i.n	a10, a3, 0
	.loc 1 432 0
	mov.n	a11, a5
	mov.n	a10, a4
	call8	__umoddi3
.LVL116:
	slli	a8, a10, 5
	sub	a8, a8, a10
	addx4	a10, a8, a10
	slli	a10, a10, 3
	s32i.n	a10, a3, 4
.LVL117:
.L99:
	.loc 1 438 0
	movi.n	a2, 0
	.loc 1 433 0
	retw.n
.LVL118:
.L98:
	.loc 1 435 0
	call8	__errno
.LVL119:
	movi.n	a2, 0x16
.LVL120:
	s32i.n	a2, a10, 0
	.loc 1 436 0
	movi.n	a2, -1
	.loc 1 443 0
	retw.n
.LFE40:
	.size	clock_gettime, .-clock_gettime
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC34:
	.string	"rtc_freq != 0"
.LC37:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/time.c"
	.section	.text.clock_getres,"ax",@progbits
	.literal_position
	.literal .LC35, .LC34
	.literal .LC36, __func__$5845
	.literal .LC38, .LC37
	.literal .LC39, 1000000000
	.align	4
	.global	clock_getres
	.type	clock_getres, @function
clock_getres:
.LFB41:
	.loc 1 446 0
.LVL121:
	entry	sp, 32
.LCFI19:
	.loc 1 448 0
	bnez.n	a3, .L101
	.loc 1 449 0
	call8	__errno
.LVL122:
	movi.n	a2, 0x16
.LVL123:
	s32i.n	a2, a10, 0
	.loc 1 450 0
	movi.n	a2, -1
	retw.n
.LVL124:
.L101:
	.loc 1 456 0
	movi.n	a2, 0
.LVL125:
	s32i.n	a2, a3, 0
	.loc 1 457 0
	call8	rtc_clk_slow_freq_get_hz
.LVL126:
	.loc 1 458 0
	bne	a10, a2, .L103
	.loc 1 458 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC36
	l32r	a10, .LC38
.LVL127:
	movi	a11, 0x1ca
	call8	__assert_func
.LVL128:
.L103:
	.loc 1 459 0 is_stmt 1
	l32r	a8, .LC39
	quou	a10, a8, a10
.LVL129:
	s32i.n	a10, a3, 4
	.loc 1 466 0
	retw.n
.LFE41:
	.size	clock_getres, .-clock_getres
	.section	.rodata.__func__$5845,"a",@progbits
	.type	__func__$5845, @object
	.size	__func__$5845, 13
__func__$5845:
	.string	"clock_getres"
	.section	.bss.adjtime_total_correction,"aw",@nobits
	.align	8
	.type	adjtime_total_correction, @object
	.size	adjtime_total_correction, 8
adjtime_total_correction:
	.zero	8
	.section	.bss.adjtime_start,"aw",@nobits
	.align	8
	.type	adjtime_start, @object
	.size	adjtime_start, 8
adjtime_start:
	.zero	8
	.section	.bss.s_adjust_time_lock,"aw",@nobits
	.align	4
	.type	s_adjust_time_lock, @object
	.size	s_adjust_time_lock, 4
s_adjust_time_lock:
	.zero	4
	.section	.bss.s_boot_time_lock,"aw",@nobits
	.align	4
	.type	s_boot_time_lock, @object
	.size	s_boot_time_lock, 4
s_boot_time_lock:
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI6-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI7-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI8-.LFB31
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI10-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI11-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI12-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI13-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI14-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI15-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI16-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI17-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI18-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI19-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/reent.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/times.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/rtc.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1417
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0xc
	.4byte	.LASF216
	.4byte	.LASF217
	.4byte	.Ldebug_ranges0+0x50
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0xb
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xc
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x10
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4c
	.4byte	0xbc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4d
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xf7
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0x47
	.4byte	0x11f
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x49
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4e
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4f
	.4byte	0xfe
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x53
	.4byte	0x94
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.4byte	0x142
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x19c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.4byte	0x19c
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x31
	.4byte	0x1a2
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x149
	.uleb128 0x8
	.4byte	0x137
	.4byte	0x1b2
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x22b
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x37
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x38
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x39
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3a
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3b
	.4byte	0x33
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3c
	.4byte	0x33
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3d
	.4byte	0x33
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3e
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3f
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x26b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x49
	.4byte	0x26b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4a
	.4byte	0x26b
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4c
	.4byte	0x137
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4f
	.4byte	0x137
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x135
	.4byte	0x27b
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x53
	.4byte	0x2b8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x54
	.4byte	0x2b8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x55
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x56
	.4byte	0x2be
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x57
	.4byte	0x2d5
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x27b
	.uleb128 0x8
	.4byte	0x2ce
	.4byte	0x2ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22b
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x300
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x74
	.4byte	0x300
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x75
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x48
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0xf0
	.byte	0x6
	.2byte	0x172
	.4byte	0x44c
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x176
	.4byte	0x33
	.byte	0
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.4byte	0x33
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17f
	.4byte	0x59a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x181
	.4byte	0x33
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x183
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x184
	.4byte	0x5cb
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x6
	.2byte	0x186
	.4byte	0x7ce
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x188
	.4byte	0x7df
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x18a
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18d
	.4byte	0x33
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18e
	.4byte	0x59a
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x190
	.4byte	0x7e5
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x191
	.4byte	0x7eb
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.4byte	0x59a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x195
	.4byte	0x7fc
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x199
	.4byte	0x2b8
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x19a
	.4byte	0x27b
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x19d
	.4byte	0x646
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19e
	.4byte	0x681
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19f
	.4byte	0x808
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a0
	.4byte	0x59a
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x306
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x57c
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb4
	.4byte	0x300
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb5
	.4byte	0x33
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb6
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x6
	.byte	0xb7
	.4byte	0x4f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x6
	.byte	0xb8
	.4byte	0x4f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2db
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xba
	.4byte	0x33
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0xbd
	.4byte	0x44c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc1
	.4byte	0x135
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.4byte	0x5a7
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.4byte	0x5d6
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc8
	.4byte	0x5fa
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc9
	.4byte	0x614
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2db
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcd
	.4byte	0x300
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xce
	.4byte	0x33
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd1
	.4byte	0x61a
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd2
	.4byte	0x62a
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2db
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd8
	.4byte	0x33
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xd9
	.4byte	0x9f
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe0
	.4byte	0x12a
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.4byte	0x11f
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe3
	.4byte	0x33
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0x18
	.4byte	0x5a0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x16
	.4byte	0xb1
	.4byte	0x5fa
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0xb1
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x614
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x600
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x62a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x63a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11d
	.4byte	0x452
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x67b
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x123
	.4byte	0x67b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x124
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x125
	.4byte	0x681
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x646
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63a
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13d
	.4byte	0x6c9
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x13e
	.4byte	0x6c9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x13f
	.4byte	0x6c9
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x140
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x143
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x6d9
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x156
	.4byte	0x71b
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x159
	.4byte	0x19c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15a
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15b
	.4byte	0x19c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15c
	.4byte	0x71b
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19c
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x160
	.4byte	0x7be
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x163
	.4byte	0x59a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x164
	.4byte	0x11f
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x165
	.4byte	0x11f
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x166
	.4byte	0x11f
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x167
	.4byte	0x7be
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x168
	.4byte	0x33
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x169
	.4byte	0x11f
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16a
	.4byte	0x11f
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16b
	.4byte	0x11f
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16c
	.4byte	0x11f
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16d
	.4byte	0x11f
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0x7ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d9
	.uleb128 0x19
	.4byte	0x7df
	.uleb128 0x17
	.4byte	0x44c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x687
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x19
	.4byte	0x7fc
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x802
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7f1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x721
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x7
	.byte	0x75
	.4byte	0x142
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x7a
	.4byte	0xaa
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x8
	.byte	0x7
	.byte	0x82
	.4byte	0x849
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x7
	.byte	0x83
	.4byte	0x819
	.byte	0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x7
	.byte	0x84
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x113
	.4byte	0x142
	.uleb128 0x5
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x11c
	.4byte	0x142
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x11d
	.4byte	0xaa
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x892
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x8
	.byte	0x12
	.4byte	0x819
	.byte	0
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x8
	.byte	0x13
	.4byte	0x861
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x8
	.byte	0x8
	.byte	0x37
	.4byte	0x8b7
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x8
	.byte	0x38
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x8
	.byte	0x39
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.string	"tms"
	.byte	0x10
	.byte	0x9
	.byte	0x10
	.4byte	0x8f4
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x11
	.4byte	0x80e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x12
	.4byte	0x80e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x13
	.4byte	0x80e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x9
	.byte	0x14
	.4byte	0x80e
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0xa
	.byte	0x2c
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0xa
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0xa
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0xa
	.byte	0x39
	.4byte	0x7e
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x65
	.4byte	0x978
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x10
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x20
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x40
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF150
	.2byte	0x100
	.uleb128 0x1d
	.4byte	.LASF151
	.2byte	0x200
	.uleb128 0x1d
	.4byte	.LASF152
	.2byte	0x400
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x83
	.4byte	0x9a9
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF159
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0xc
	.byte	0x76
	.4byte	0x8ff
	.uleb128 0x1e
	.4byte	.LASF218
	.byte	0x1
	.byte	0xf2
	.4byte	0x8ff
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x115
	.4byte	0x915
	.byte	0x1
	.4byte	0x9e5
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x117
	.4byte	0x915
	.byte	0
	.uleb128 0x21
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x146
	.4byte	0x33
	.byte	0x1
	.4byte	0xa0e
	.uleb128 0x22
	.string	"us"
	.byte	0x1
	.2byte	0x146
	.4byte	0x855
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x148
	.4byte	0xa0e
	.byte	0
	.uleb128 0x18
	.4byte	0x33
	.uleb128 0x23
	.4byte	.LASF163
	.byte	0x1
	.byte	0x61
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5f
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x1
	.byte	0x61
	.4byte	0x915
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x25
	.4byte	.LVL1
	.4byte	0x13b2
	.4byte	0xa4e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL2
	.4byte	0x13bd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF164
	.byte	0x1
	.byte	0x32
	.4byte	0x915
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac1
	.uleb128 0x29
	.4byte	.LASF171
	.byte	0x1
	.byte	0x34
	.4byte	0xac1
	.4byte	.LLST0
	.uleb128 0x2a
	.string	"cal"
	.byte	0x1
	.byte	0x35
	.4byte	0xac6
	.uleb128 0x2b
	.4byte	.LASF165
	.byte	0x1
	.byte	0x41
	.4byte	0xac1
	.uleb128 0x2b
	.4byte	.LASF166
	.byte	0x1
	.byte	0x42
	.4byte	0xac1
	.uleb128 0x2c
	.4byte	0x9bb
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x35
	.uleb128 0x2d
	.4byte	.LVL3
	.4byte	0x13c8
	.byte	0
	.uleb128 0x18
	.4byte	0x915
	.uleb128 0x18
	.4byte	0x8ff
	.uleb128 0x2e
	.4byte	.LASF168
	.byte	0x1
	.byte	0x6d
	.4byte	0x915
	.byte	0x1
	.4byte	0xae7
	.uleb128 0x2b
	.4byte	.LASF169
	.byte	0x1
	.byte	0x6f
	.4byte	0x915
	.byte	0
	.uleb128 0x28
	.4byte	.LASF170
	.byte	0x1
	.byte	0x7b
	.4byte	0x915
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbeb
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.byte	0x7d
	.4byte	0x915
	.4byte	.LLST1
	.uleb128 0x2f
	.4byte	0xacb
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7d
	.4byte	0xb56
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x31
	.4byte	0xadb
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LVL6
	.4byte	0x13b2
	.4byte	0xb44
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL7
	.4byte	0x13bd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x9c7
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0x7e
	.4byte	0xb86
	.uleb128 0x33
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x31
	.4byte	0x9d8
	.4byte	.LLST3
	.uleb128 0x2d
	.4byte	.LVL10
	.4byte	0xa5f
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x34
	.4byte	.LASF173
	.byte	0x1
	.byte	0x82
	.4byte	0x915
	.uleb128 0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.byte	0x87
	.4byte	0x90a
	.4byte	.LLST4
	.uleb128 0x32
	.4byte	0x9c7
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0x82
	.4byte	0xbe0
	.uleb128 0x33
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x31
	.4byte	0x9d8
	.4byte	.LLST5
	.uleb128 0x2d
	.4byte	.LVL13
	.4byte	0xa5f
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL30
	.4byte	0xa13
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF185
	.byte	0x1
	.byte	0xb6
	.4byte	0x33
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccc
	.uleb128 0x36
	.4byte	.LASF176
	.byte	0x1
	.byte	0xb6
	.4byte	0xccc
	.4byte	.LLST6
	.uleb128 0x24
	.4byte	.LASF177
	.byte	0x1
	.byte	0xb6
	.4byte	0xcd7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xc9e
	.uleb128 0x38
	.string	"sec"
	.byte	0x1
	.byte	0xba
	.4byte	0x90a
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LASF178
	.byte	0x1
	.byte	0xbb
	.4byte	0x90a
	.4byte	.LLST8
	.uleb128 0x32
	.4byte	0x9c7
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0xc7
	.4byte	0xc77
	.uleb128 0x33
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x31
	.4byte	0x9d8
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.LVL36
	.4byte	0xa5f
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL34
	.4byte	0x13b2
	.4byte	0xc8b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL35
	.4byte	0xae7
	.uleb128 0x2d
	.4byte	.LVL40
	.4byte	0x13bd
	.byte	0
	.uleb128 0x25
	.4byte	.LVL41
	.4byte	0x13b2
	.4byte	0xcb2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL42
	.4byte	0xae7
	.uleb128 0x27
	.4byte	.LVL45
	.4byte	0x13bd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcd2
	.uleb128 0x18
	.4byte	0x86d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x86d
	.uleb128 0x39
	.4byte	.LASF220
	.byte	0x1
	.byte	0xde
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9f
	.uleb128 0x24
	.4byte	.LASF179
	.byte	0x1
	.byte	0xde
	.4byte	0x8ff
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LASF171
	.byte	0x1
	.byte	0xe8
	.4byte	0xd9f
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0xe9
	.4byte	0xac6
	.4byte	.LLST11
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0xea
	.4byte	0x8f4
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	.LASF182
	.byte	0x1
	.byte	0xeb
	.4byte	0x90a
	.uleb128 0x2b
	.4byte	.LASF183
	.byte	0x1
	.byte	0xec
	.4byte	0x915
	.uleb128 0x2f
	.4byte	0xacb
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xec
	.4byte	0xd8c
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x3a
	.4byte	0xadb
	.uleb128 0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x25
	.4byte	.LVL52
	.4byte	0x13b2
	.4byte	0xd7a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL54
	.4byte	0x13bd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL49
	.4byte	0x13c8
	.uleb128 0x2d
	.4byte	.LVL58
	.4byte	0xa13
	.byte	0
	.uleb128 0x18
	.4byte	0x90a
	.uleb128 0x3b
	.4byte	0x9bb
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.4byte	.LASF221
	.byte	0x1
	.byte	0xa2
	.4byte	0x915
	.byte	0x1
	.4byte	0xdcf
	.uleb128 0x2b
	.4byte	.LASF184
	.byte	0x1
	.byte	0xa5
	.4byte	0x915
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x125
	.4byte	0x33
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb0
	.uleb128 0x3e
	.string	"r"
	.byte	0x1
	.2byte	0x125
	.4byte	0x44c
	.4byte	.LLST13
	.uleb128 0x3f
	.string	"tv"
	.byte	0x1
	.2byte	0x125
	.4byte	0xcd7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3e
	.string	"tz"
	.byte	0x1
	.2byte	0x125
	.4byte	0x135
	.4byte	.LLST14
	.uleb128 0x33
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x40
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x12a
	.4byte	0x915
	.4byte	.LLST15
	.uleb128 0x41
	.4byte	0xdb3
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.2byte	0x12a
	.4byte	0xe81
	.uleb128 0x33
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x31
	.4byte	0xdc3
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LVL61
	.4byte	0x13b2
	.4byte	0xe66
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL62
	.4byte	0xae7
	.uleb128 0x27
	.4byte	.LVL64
	.4byte	0x13bd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x9c7
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.2byte	0x12a
	.uleb128 0x33
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.uleb128 0x31
	.4byte	0x9d8
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	.LVL65
	.4byte	0xa5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x108
	.4byte	0x80e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf27
	.uleb128 0x3e
	.string	"r"
	.byte	0x1
	.2byte	0x108
	.4byte	0x44c
	.4byte	.LLST18
	.uleb128 0x44
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x108
	.4byte	0xf27
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x45
	.string	"t"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x80e
	.4byte	.LLST19
	.uleb128 0x46
	.string	"tv"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LVL73
	.4byte	0x13d4
	.uleb128 0x27
	.4byte	.LVL75
	.4byte	0xdcf
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8b7
	.uleb128 0x47
	.4byte	.LASF222
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x135
	.4byte	0x33
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1010
	.uleb128 0x3e
	.string	"tv"
	.byte	0x1
	.2byte	0x135
	.4byte	0xccc
	.4byte	.LLST20
	.uleb128 0x3e
	.string	"tz"
	.byte	0x1
	.2byte	0x135
	.4byte	0x1010
	.4byte	.LLST21
	.uleb128 0x33
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x45
	.string	"now"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x915
	.4byte	.LLST22
	.uleb128 0x20
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x13c
	.4byte	0x915
	.uleb128 0x41
	.4byte	0xf2d
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x13a
	.4byte	0xfd4
	.uleb128 0x25
	.4byte	.LVL79
	.4byte	0x13b2
	.4byte	0xfba
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL80
	.4byte	0xae7
	.uleb128 0x27
	.4byte	.LVL81
	.4byte	0x13bd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x9c7
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x13c
	.4byte	0x1005
	.uleb128 0x33
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x31
	.4byte	0x9d8
	.4byte	.LLST23
	.uleb128 0x2d
	.4byte	.LVL84
	.4byte	0xa5f
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL86
	.4byte	0xa13
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1016
	.uleb128 0x18
	.4byte	0x892
	.uleb128 0x48
	.4byte	0x9e5
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a0
	.uleb128 0x49
	.4byte	0x9f6
	.4byte	.LLST24
	.uleb128 0x4a
	.4byte	0xa01
	.2byte	0x2710
	.uleb128 0x4b
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.4byte	0x108f
	.uleb128 0x49
	.4byte	0x9f6
	.4byte	.LLST25
	.uleb128 0x33
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x4c
	.4byte	0xa01
	.uleb128 0x27
	.4byte	.LVL91
	.4byte	0x13e0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1d
	.byte	0x72
	.sleb128 9999
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xd1b71759
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x3d
	.byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL89
	.4byte	0x13ec
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x154
	.4byte	0x2c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e2
	.uleb128 0x4d
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x154
	.4byte	0x2c
	.4byte	.LLST26
	.uleb128 0x27
	.4byte	.LVL95
	.4byte	0x9e5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x15a
	.4byte	0x8ff
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112a
	.uleb128 0x42
	.4byte	0x9c7
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.2byte	0x15d
	.uleb128 0x33
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.uleb128 0x31
	.4byte	0x9d8
	.4byte	.LLST27
	.uleb128 0x2d
	.4byte	.LVL97
	.4byte	0xa5f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x165
	.4byte	0x8ff
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1182
	.uleb128 0x4d
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x165
	.4byte	0x8ff
	.4byte	.LLST28
	.uleb128 0x42
	.4byte	0x9c7
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.2byte	0x168
	.uleb128 0x33
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.uleb128 0x31
	.4byte	0x9d8
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LVL100
	.4byte	0xa5f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x16e
	.4byte	0x915
	.byte	0x1
	.uleb128 0x48
	.4byte	0x1182
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ac
	.uleb128 0x2d
	.4byte	.LVL102
	.4byte	0xa5f
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x177
	.byte	0x1
	.uleb128 0x3b
	.4byte	0x11ac
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x43
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x181
	.4byte	0x33
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122c
	.uleb128 0x4d
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x181
	.4byte	0x849
	.4byte	.LLST30
	.uleb128 0x3f
	.string	"tp"
	.byte	0x1
	.2byte	0x181
	.4byte	0x122c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x46
	.string	"tv"
	.byte	0x1
	.2byte	0x188
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LVL105
	.4byte	0xf35
	.4byte	0x1222
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL107
	.4byte	0x13f8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1232
	.uleb128 0x18
	.4byte	0x824
	.uleb128 0x3d
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x19a
	.4byte	0x33
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12bd
	.uleb128 0x4d
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x19a
	.4byte	0x849
	.4byte	.LLST31
	.uleb128 0x3f
	.string	"tp"
	.byte	0x1
	.2byte	0x19a
	.4byte	0x12bd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x46
	.string	"tv"
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x915
	.4byte	.LLST32
	.uleb128 0x25
	.4byte	.LVL110
	.4byte	0xdcf
	.4byte	0x12aa
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL113
	.4byte	0xa5f
	.uleb128 0x2d
	.4byte	.LVL119
	.4byte	0x13f8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x824
	.uleb128 0x43
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x33
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1359
	.uleb128 0x4d
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x849
	.4byte	.LLST33
	.uleb128 0x3f
	.string	"res"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x12bd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x8ff
	.4byte	.LLST34
	.uleb128 0x50
	.4byte	.LASF201
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5845
	.uleb128 0x2d
	.4byte	.LVL122
	.4byte	0x13f8
	.uleb128 0x2d
	.4byte	.LVL126
	.4byte	0x1403
	.uleb128 0x27
	.4byte	.LVL128
	.4byte	0x140f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ca
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5845
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0x1369
	.uleb128 0x9
	.4byte	0xf7
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	0x1359
	.uleb128 0x34
	.4byte	.LASF202
	.byte	0x1
	.byte	0x51
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_boot_time_lock
	.uleb128 0x34
	.4byte	.LASF203
	.byte	0x1
	.byte	0x52
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.uleb128 0x34
	.4byte	.LASF204
	.byte	0x1
	.byte	0x54
	.4byte	0x915
	.uleb128 0x5
	.byte	0x3
	.4byte	adjtime_start
	.uleb128 0x34
	.4byte	.LASF205
	.byte	0x1
	.byte	0x56
	.4byte	0x90a
	.uleb128 0x5
	.byte	0x3
	.4byte	adjtime_total_correction
	.uleb128 0x51
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x3
	.byte	0x20
	.uleb128 0x51
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x3
	.byte	0x24
	.uleb128 0x52
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0xd
	.2byte	0x20c
	.uleb128 0x52
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0xe
	.2byte	0x50a
	.uleb128 0x52
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0xe
	.2byte	0x32b
	.uleb128 0x52
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xf
	.2byte	0x17f
	.uleb128 0x51
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x10
	.byte	0xf
	.uleb128 0x52
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xd
	.2byte	0x124
	.uleb128 0x51
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x11
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3f
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	.LFE21
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL24
	.4byte	.LFE21
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0xe
	.byte	0x3
	.4byte	adjtime_start
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	adjtime_start+4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL84
	.4byte	.LVL85
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
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
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
.LLST27:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL97
	.4byte	.LFE35
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL100
	.4byte	.LFE36
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
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
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB29
	.4byte	.LFE29
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
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF193:
	.string	"system_relative_time"
.LASF42:
	.string	"_fnargs"
.LASF98:
	.string	"_rand48"
.LASF199:
	.string	"clock_getres"
.LASF59:
	.string	"_emergency"
.LASF173:
	.string	"since_boot"
.LASF91:
	.string	"_mbstate"
.LASF189:
	.string	"settimeofday"
.LASF147:
	.string	"MAC_TRIG"
.LASF71:
	.string	"_atexit0"
.LASF164:
	.string	"get_rtc_time_us"
.LASF196:
	.string	"clock_id"
.LASF118:
	.string	"_wcrtomb_state"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF0:
	.string	"long long unsigned int"
.LASF217:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/newlib"
.LASF79:
	.string	"_lbfsize"
.LASF135:
	.string	"tms_cutime"
.LASF167:
	.string	"get_time_since_boot"
.LASF181:
	.string	"cal_diff"
.LASF155:
	.string	"REJECT_INT"
.LASF116:
	.string	"_mbrtowc_state"
.LASF208:
	.string	"rtc_time_get"
.LASF148:
	.string	"UART0_TRIG"
.LASF111:
	.string	"_wctomb_state"
.LASF32:
	.string	"__tm_sec"
.LASF13:
	.string	"_off_t"
.LASF85:
	.string	"_close"
.LASF3:
	.string	"signed char"
.LASF158:
	.string	"RTC_TIME_VALID_INT"
.LASF163:
	.string	"set_boot_time"
.LASF200:
	.string	"rtc_freq"
.LASF210:
	.string	"vTaskDelay"
.LASF157:
	.string	"RTC_WDT_INT"
.LASF51:
	.string	"_base"
.LASF34:
	.string	"__tm_hour"
.LASF73:
	.string	"__sf"
.LASF41:
	.string	"_on_exit_args"
.LASF139:
	.string	"int64_t"
.LASF219:
	.string	"usleep"
.LASF72:
	.string	"__sglue"
.LASF212:
	.string	"__errno"
.LASF8:
	.string	"__int64_t"
.LASF14:
	.string	"long int"
.LASF134:
	.string	"tms_stime"
.LASF77:
	.string	"_flags"
.LASF45:
	.string	"_is_cxa"
.LASF55:
	.string	"_stdin"
.LASF86:
	.string	"_ubuf"
.LASF214:
	.string	"__assert_func"
.LASF105:
	.string	"_result_k"
.LASF11:
	.string	"_lock_t"
.LASF9:
	.string	"long long int"
.LASF127:
	.string	"suseconds_t"
.LASF179:
	.string	"new_cal"
.LASF66:
	.string	"_cvtbuf"
.LASF89:
	.string	"_offset"
.LASF149:
	.string	"UART1_TRIG"
.LASF175:
	.string	"time_us"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF109:
	.string	"_strtok_last"
.LASF115:
	.string	"_mbrlen_state"
.LASF2:
	.string	"short unsigned int"
.LASF184:
	.string	"adjust_time"
.LASF143:
	.string	"EXT_EVENT1_TRIG"
.LASF141:
	.string	"NO_SLEEP"
.LASF186:
	.string	"_gettimeofday_r"
.LASF48:
	.string	"_fns"
.LASF153:
	.string	"NO_INT"
.LASF7:
	.string	"__uint32_t"
.LASF120:
	.string	"clock_t"
.LASF28:
	.string	"_sign"
.LASF128:
	.string	"timeval"
.LASF221:
	.string	"get_adjusted_boot_time"
.LASF130:
	.string	"timezone"
.LASF23:
	.string	"_flock_t"
.LASF57:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF195:
	.string	"clock_settime"
.LASF194:
	.string	"current_time"
.LASF180:
	.string	"cur_cal"
.LASF82:
	.string	"_read"
.LASF202:
	.string	"s_boot_time_lock"
.LASF31:
	.string	"__tm"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF156:
	.string	"SDIO_IDLE_INT"
.LASF18:
	.string	"__wchb"
.LASF56:
	.string	"_stdout"
.LASF65:
	.string	"_cvtlen"
.LASF122:
	.string	"timespec"
.LASF25:
	.string	"long unsigned int"
.LASF78:
	.string	"_file"
.LASF215:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF80:
	.string	"_data"
.LASF96:
	.string	"_niobs"
.LASF166:
	.string	"ticks_high"
.LASF224:
	.string	"esp_sync_counters_rtc_and_frc"
.LASF190:
	.string	"sleep"
.LASF75:
	.string	"_signal_buf"
.LASF69:
	.string	"_asctime_buf"
.LASF104:
	.string	"_result"
.LASF17:
	.string	"__wch"
.LASF16:
	.string	"wint_t"
.LASF131:
	.string	"tz_minuteswest"
.LASF90:
	.string	"_lock"
.LASF209:
	.string	"xTaskGetTickCount"
.LASF177:
	.string	"outdelta"
.LASF100:
	.string	"_mult"
.LASF126:
	.string	"useconds_t"
.LASF168:
	.string	"get_boot_time"
.LASF83:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF20:
	.string	"__count"
.LASF203:
	.string	"s_adjust_time_lock"
.LASF142:
	.string	"EXT_EVENT0_TRIG"
.LASF74:
	.string	"_misc"
.LASF124:
	.string	"tv_nsec"
.LASF19:
	.string	"sizetype"
.LASF171:
	.string	"ticks"
.LASF123:
	.string	"tv_sec"
.LASF191:
	.string	"seconds"
.LASF160:
	.string	"TickType_t"
.LASF185:
	.string	"adjtime"
.LASF174:
	.string	"correction"
.LASF140:
	.string	"uint64_t"
.LASF178:
	.string	"usec"
.LASF145:
	.string	"TIMER_EXPIRE"
.LASF205:
	.string	"adjtime_total_correction"
.LASF206:
	.string	"_lock_acquire"
.LASF36:
	.string	"__tm_mon"
.LASF46:
	.string	"_atexit"
.LASF152:
	.string	"BT_TRIG"
.LASF60:
	.string	"__sdidinit"
.LASF64:
	.string	"_gamma_signgam"
.LASF151:
	.string	"SAR_TRIG"
.LASF121:
	.string	"time_t"
.LASF10:
	.string	"__uint64_t"
.LASF170:
	.string	"adjust_boot_time"
.LASF216:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/time.c"
.LASF150:
	.string	"TOUCH_TRIG"
.LASF107:
	.string	"_freelist"
.LASF165:
	.string	"ticks_low"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF35:
	.string	"__tm_mday"
.LASF159:
	.string	"_Bool"
.LASF137:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF97:
	.string	"_iobs"
.LASF183:
	.string	"boot_time_adj"
.LASF144:
	.string	"GPIO_TRIG"
.LASF39:
	.string	"__tm_yday"
.LASF50:
	.string	"__sbuf"
.LASF92:
	.string	"_flags2"
.LASF133:
	.string	"tms_utime"
.LASF94:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF76:
	.string	"__sFILE"
.LASF162:
	.string	"us_per_tick"
.LASF102:
	.string	"_rand_next"
.LASF201:
	.string	"__func__"
.LASF110:
	.string	"_mblen_state"
.LASF58:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF62:
	.string	"_current_locale"
.LASF43:
	.string	"_dso_handle"
.LASF63:
	.string	"__cleanup"
.LASF27:
	.string	"_maxwds"
.LASF53:
	.string	"_reent"
.LASF99:
	.string	"_seed"
.LASF129:
	.string	"tv_usec"
.LASF154:
	.string	"WAKEUP_INT"
.LASF21:
	.string	"__value"
.LASF84:
	.string	"_seek"
.LASF188:
	.string	"ptms"
.LASF38:
	.string	"__tm_wday"
.LASF15:
	.string	"_fpos_t"
.LASF54:
	.string	"_errno"
.LASF93:
	.string	"char"
.LASF88:
	.string	"_blksize"
.LASF52:
	.string	"_size"
.LASF1:
	.string	"unsigned int"
.LASF187:
	.string	"_times_r"
.LASF182:
	.string	"boot_time_diff"
.LASF146:
	.string	"SDIO_TRIG"
.LASF220:
	.string	"esp_clk_slowclk_cal_set"
.LASF6:
	.string	"__int32_t"
.LASF103:
	.string	"_mprec"
.LASF26:
	.string	"_next"
.LASF44:
	.string	"_fntypes"
.LASF108:
	.string	"_misc_reent"
.LASF213:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF101:
	.string	"_add"
.LASF204:
	.string	"adjtime_start"
.LASF24:
	.string	"__ULong"
.LASF114:
	.string	"_getdate_err"
.LASF207:
	.string	"_lock_release"
.LASF136:
	.string	"tms_cstime"
.LASF222:
	.string	"adjtime_corr_stop"
.LASF197:
	.string	"clock_gettime"
.LASF61:
	.string	"_current_category"
.LASF138:
	.string	"uint32_t"
.LASF176:
	.string	"delta"
.LASF81:
	.string	"_cookie"
.LASF29:
	.string	"_wds"
.LASF95:
	.string	"_glue"
.LASF218:
	.string	"esp_clk_slowclk_cal_get"
.LASF132:
	.string	"tz_dsttime"
.LASF113:
	.string	"_l64a_buf"
.LASF5:
	.string	"short int"
.LASF70:
	.string	"_sig_func"
.LASF87:
	.string	"_nbuf"
.LASF192:
	.string	"system_get_time"
.LASF198:
	.string	"monotonic_time_us"
.LASF40:
	.string	"__tm_isdst"
.LASF68:
	.string	"_localtime_buf"
.LASF33:
	.string	"__tm_min"
.LASF67:
	.string	"_r48"
.LASF172:
	.string	"boot_time"
.LASF112:
	.string	"_mbtowc_state"
.LASF161:
	.string	"microseconds"
.LASF106:
	.string	"_p5s"
.LASF125:
	.string	"clockid_t"
.LASF211:
	.string	"ets_delay_us"
.LASF223:
	.string	"system_get_rtc_time"
.LASF169:
	.string	"result"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
