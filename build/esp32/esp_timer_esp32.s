	.file	"esp_timer_esp32.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, s_overflow_happened
	.literal .LC1, 1072984104
	.literal .LC2, 1072984112
	.literal .LC3, -268435457
	.literal .LC4, 1072984100
	.literal .LC5, s_mask_overflow
	.align	4
	.type	timer_overflow_happened, @function
timer_overflow_happened:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_timer_esp32.c"
	.loc 1 154 0
	entry	sp, 32
.LCFI0:
	.loc 1 155 0
	l32r	a2, .LC0
	l8ui	a2, a2, 0
	bnez.n	a2, .L2
.LBB4:
	.loc 1 159 0
	l32r	a8, .LC1
	memw
	l32i.n	a8, a8, 0
	bbci	a8, 8, .L3
	.loc 1 160 0
	l32r	a8, .LC2
	.loc 1 159 0
	l32r	a2, .LC3
	.loc 1 160 0
	memw
	l32i.n	a9, a8, 0
	.loc 1 159 0
	bne	a9, a2, .L4
	.loc 1 160 0
	l32r	a2, .LC4
	memw
	l32i.n	a10, a2, 0
	bgeu	a9, a10, .L4
	memw
	l32i.n	a2, a2, 0
	l32r	a2, .LC5
	l8ui	a9, a2, 0
	.loc 1 159 0
	movi.n	a2, 1
	.loc 1 160 0
	beqz.n	a9, .L3
.L4:
	.loc 1 161 0
	memw
	l32i.n	a2, a8, 0
	.loc 1 160 0
	l32r	a9, .LC3
	bgeu	a9, a2, .L5
	.loc 1 161 0
	memw
	l32i.n	a2, a8, 0
	.loc 1 159 0
	movi.n	a2, 0
	j	.L3
.L5:
	.loc 1 161 0
	l32r	a8, .LC4
	.loc 1 159 0
	movi.n	a2, 0
	.loc 1 161 0
	memw
	l32i.n	a10, a8, 0
	bgeu	a9, a10, .L3
	memw
	l32i.n	a2, a8, 0
	.loc 1 159 0
	movi.n	a2, 1
.L3:
	extui	a2, a2, 0, 1
.L2:
.LBE4:
	.loc 1 162 0
	retw.n
.LFE18:
	.size	timer_overflow_happened, .-timer_overflow_happened
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"TIMER_IS_AFTER_OVERFLOW(REG_READ(FRC_TIMER_COUNT_REG(1)))"
.LC17:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_timer_esp32.c"
	.section	.iram1
	.literal_position
	.literal .LC6, s_time_update_lock
	.literal .LC7, 1072984100
	.literal .LC8, -268435457
	.literal .LC9, 268435457
	.literal .LC10, 1072984096
	.literal .LC11, s_time_base_us
	.literal .LC12, s_timer_us_per_overflow
	.literal .LC13, s_overflow_happened
	.literal .LC15, .LC14
	.literal .LC16, __func__$5409
	.literal .LC18, .LC17
	.literal .LC19, s_mask_overflow
	.literal .LC20, 1072984108
	.literal .LC21, 1072984112
	.literal .LC22, s_alarm_handler
	.align	4
	.type	timer_alarm_isr, @function
timer_alarm_isr:
.LFB24:
	.loc 1 258 0
.LVL0:
	entry	sp, 32
.LCFI1:
	.loc 1 259 0
	l32r	a3, .LC6
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL1:
	.loc 1 261 0
	call8	timer_overflow_happened
.LVL2:
	beqz.n	a10, .L12
.LBB7:
.LBB8:
	.loc 1 167 0
	l32r	a8, .LC7
	l32r	a10, .LC8
	memw
	l32i.n	a9, a8, 0
	bgeu	a10, a9, .L13
	memw
	l32i.n	a9, a8, 0
	.loc 1 176 0
	memw
	l32i.n	a9, a8, 0
	l32r	a8, .LC9
.LBE8:
.LBE7:
	.loc 1 263 0
	movi.n	a12, 1
.LBB11:
.LBB9:
	.loc 1 176 0
	add.n	a8, a9, a8
	l32r	a9, .LC10
	memw
	s32i.n	a8, a9, 0
.LBE9:
.LBE11:
	.loc 1 263 0
	l32r	a8, .LC11
	l32r	a9, .LC12
	l32i.n	a13, a8, 0
	l32i.n	a9, a9, 0
	l32i.n	a11, a8, 4
	add.n	a9, a13, a9
	bltu	a9, a13, .L14
	movi.n	a12, 0
.L14:
	add.n	a11, a12, a11
	s32i.n	a9, a8, 0
	s32i.n	a11, a8, 4
	.loc 1 264 0
	l32r	a8, .LC13
	movi.n	a9, 0
	s8i	a9, a8, 0
	j	.L12
.L13:
.LBB12:
.LBB10:
	.loc 1 167 0
	l32r	a13, .LC15
	l32r	a12, .LC16
	l32r	a10, .LC18
	movi	a11, 0xa7
	call8	__assert_func
.LVL3:
.L12:
.LBE10:
.LBE12:
	.loc 1 266 0
	l32r	a8, .LC19
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 268 0
	l32r	a8, .LC20
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
	.loc 1 271 0
	l32r	a9, .LC8
	l32r	a8, .LC21
	.loc 1 272 0
	mov.n	a10, a3
	.loc 1 271 0
	memw
	s32i.n	a9, a8, 0
	.loc 1 272 0
	call8	vTaskExitCritical
.LVL4:
	.loc 1 274 0
	l32r	a3, .LC22
	mov.n	a10, a2
	l32i.n	a3, a3, 0
	callx8	a3
.LVL5:
	retw.n
.LFE24:
	.size	timer_alarm_isr, .-timer_alarm_isr
	.section	.text.esp_timer_impl_lock,"ax",@progbits
	.literal_position
	.literal .LC23, s_time_update_lock
	.align	4
	.global	esp_timer_impl_lock
	.type	esp_timer_impl_lock, @function
esp_timer_impl_lock:
.LFB20:
	.loc 1 180 0
	entry	sp, 32
.LCFI2:
	.loc 1 181 0
	l32r	a10, .LC23
	call8	vTaskEnterCritical
.LVL6:
	retw.n
.LFE20:
	.size	esp_timer_impl_lock, .-esp_timer_impl_lock
	.section	.text.esp_timer_impl_unlock,"ax",@progbits
	.literal_position
	.literal .LC24, s_time_update_lock
	.align	4
	.global	esp_timer_impl_unlock
	.type	esp_timer_impl_unlock, @function
esp_timer_impl_unlock:
.LFB21:
	.loc 1 185 0
	entry	sp, 32
.LCFI3:
	.loc 1 186 0
	l32r	a10, .LC24
	call8	vTaskExitCritical
.LVL7:
	retw.n
.LFE21:
	.size	esp_timer_impl_unlock, .-esp_timer_impl_unlock
	.section	.iram1
	.literal_position
	.literal .LC25, 1072984100
	.literal .LC26, s_time_base_us
	.literal .LC27, s_timer_ticks_per_us
	.align	4
	.global	esp_timer_impl_get_time
	.type	esp_timer_impl_get_time, @function
esp_timer_impl_get_time:
.LFB22:
	.loc 1 190 0
	entry	sp, 32
.LCFI4:
	.loc 1 198 0
	l32r	a6, .LC25
.L21:
	.loc 1 199 0
	l32r	a5, .LC26
	.loc 1 198 0
	memw
	l32i.n	a4, a6, 0
.LVL8:
	.loc 1 199 0
	l32i.n	a2, a5, 0
	l32i.n	a3, a5, 4
.LVL9:
	.loc 1 200 0
	call8	timer_overflow_happened
.LVL10:
	.loc 1 207 0
	memw
	l32i.n	a8, a6, 0
	.loc 1 200 0
	mov.n	a7, a10
.LVL11:
	.loc 1 207 0
	bgeu	a4, a8, .L21
	.loc 1 208 0 discriminator 1
	memw
	l32i.n	a8, a5, 0
	memw
	l32i.n	a9, a5, 4
	.loc 1 207 0 discriminator 1
	bne	a2, a8, .L21
	bne	a3, a9, .L21
	.loc 1 209 0
	l32r	a5, .LC27
	l32i.n	a5, a5, 0
.LVL12:
	.loc 1 210 0
	call8	timer_overflow_happened
.LVL13:
	.loc 1 209 0
	bne	a7, a10, .L21
.LVL14:
	.loc 1 219 0
	quou	a4, a4, a5
.LVL15:
	add.n	a2, a4, a2
.LVL16:
	movi.n	a5, 1
.LVL17:
	bltu	a2, a4, .L23
	movi.n	a5, 0
.L23:
	.loc 1 220 0
	add.n	a3, a5, a3
	retw.n
.LFE22:
	.size	esp_timer_impl_get_time, .-esp_timer_impl_get_time
	.section	.rodata.str1.1
.LC33:
	.string	"time_after_timebase_us > s_timer_us_per_overflow"
	.section	.iram1
	.literal_position
	.literal .LC28, -268435457
	.literal .LC29, s_time_update_lock
	.literal .LC30, s_time_base_us
	.literal .LC31, 1072984100
	.literal .LC32, s_timer_us_per_overflow
	.literal .LC34, .LC33
	.literal .LC35, __func__$5429
	.literal .LC36, .LC17
	.literal .LC37, s_overflow_happened
	.literal .LC38, s_timer_ticks_per_us
	.literal .LC39, -268435458
	.literal .LC40, -268435457, 0
	.literal .LC41, 1072984112
	.align	4
	.global	esp_timer_impl_set_alarm
	.type	esp_timer_impl_set_alarm, @function
esp_timer_impl_set_alarm:
.LFB23:
	.loc 1 223 0
.LVL18:
	entry	sp, 32
.LCFI5:
	.loc 1 224 0
	l32r	a5, .LC29
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL19:
	.loc 1 226 0
	l32r	a4, .LC30
	l32i.n	a6, a4, 0
	l32i.n	a8, a4, 4
	sub	a6, a2, a6
	movi.n	a4, 1
	bltu	a2, a6, .L25
	movi.n	a4, 0
.L25:
	sub	a3, a3, a8
	.loc 1 228 0
	call8	timer_overflow_happened
.LVL20:
	.loc 1 229 0
	l32r	a8, .LC31
	.loc 1 226 0
	sub	a3, a3, a4
	.loc 1 229 0
	memw
	l32i.n	a13, a8, 0
	.loc 1 226 0
	mov.n	a4, a6
	mov.n	a2, a3
.LVL21:
	.loc 1 231 0
	beqz.n	a10, .L26
	.loc 1 232 0
	l32r	a2, .LC32
.LVL22:
	l32i.n	a4, a2, 0
.LVL23:
	bnez.n	a3, .L27
	bltu	a4, a6, .L27
	.loc 1 232 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
.LVL24:
	l32r	a12, .LC35
	l32r	a10, .LC36
.LVL25:
	movi	a11, 0xe8
	call8	__assert_func
.LVL26:
.L27:
	.loc 1 233 0 is_stmt 1
	sub	a4, a6, a4
	movi.n	a2, 1
	bltu	a6, a4, .L29
	movi.n	a2, 0
.L29:
	sub	a2, a3, a2
.LVL27:
	.loc 1 234 0
	l32r	a3, .LC37
	movi.n	a6, 1
	s8i	a6, a3, 0
.LVL28:
.L26:
	.loc 1 237 0
	l32r	a3, .LC38
	l32i.n	a12, a3, 0
	muluh	a9, a12, a4
	mull	a11, a2, a12
	mull	a8, a12, a4
	add.n	a11, a11, a9
	mov.n	a9, a11
.LVL29:
	.loc 1 244 0
	bnez.n	a11, .L37
	l32r	a2, .LC39
.LVL30:
	bltu	a2, a8, .L37
	.loc 1 245 0
	slli	a12, a12, 1
.LVL31:
	add.n	a2, a12, a13
	movi.n	a3, 1
	bltu	a2, a12, .L32
	mov.n	a3, a11
.L32:
	addx2	a11, a11, a3
	bltu	a9, a11, .L40
	bne	a11, a9, .L30
	bgeu	a8, a2, .L30
.L40:
.LVL32:
	mov.n	a8, a2
	bnez.n	a11, .L36
	l32r	a2, .LC28
.LVL33:
	bgeu	a2, a8, .L30
.L36:
	l32r	a8, .LC40
.LVL34:
	j	.L30
.LVL35:
.L37:
	.loc 1 238 0
	l32r	a8, .LC28
.LVL36:
.L30:
	.loc 1 253 0
	l32r	a2, .LC41
	.loc 1 254 0
	mov.n	a10, a5
.LVL37:
	.loc 1 253 0
	memw
	s32i.n	a8, a2, 0
.LVL38:
	.loc 1 254 0
	call8	vTaskExitCritical
.LVL39:
	retw.n
.LFE23:
	.size	esp_timer_impl_set_alarm, .-esp_timer_impl_set_alarm
	.global	__udivdi3
	.literal_position
	.literal .LC43, -268435457
	.literal .LC44, s_time_update_lock
	.literal .LC45, s_timer_interrupt_handle
	.literal .LC46, 1072984112
	.literal .LC47, 1072984100
	.literal .LC48, s_timer_ticks_per_us
	.literal .LC49, s_mask_overflow
	.literal .LC50, 1072984096
	.literal .LC51, s_time_base_us
	.literal .LC52, s_timer_us_per_overflow
	.align	4
	.global	esp_timer_impl_update_apb_freq
	.type	esp_timer_impl_update_apb_freq, @function
esp_timer_impl_update_apb_freq:
.LFB25:
	.loc 1 278 0
.LVL40:
	entry	sp, 32
.LCFI6:
	.loc 1 279 0
	l32r	a3, .LC44
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL41:
	.loc 1 281 0
	l32r	a4, .LC45
	mov.n	a6, a3
	l32i.n	a4, a4, 0
	.loc 1 282 0
	mov.n	a10, a3
	.loc 1 281 0
	beqz.n	a4, .L58
.L45:
.LVL42:
	.loc 1 287 0
	l32r	a7, .LC46
	.loc 1 288 0
	l32r	a4, .LC47
	.loc 1 287 0
	memw
	l32i.n	a3, a7, 0
.LVL43:
	.loc 1 288 0
	memw
	l32i.n	a4, a4, 0
.LVL44:
	.loc 1 290 0
	l32r	a5, .LC48
	.loc 1 289 0
	sub	a10, a3, a4
.LVL45:
	.loc 1 290 0
	muluh	a11, a10, a2
	l32i.n	a12, a5, 0
	mull	a10, a10, a2
.LVL46:
	movi.n	a13, 0
	call8	__udivdi3
.LVL47:
	l32r	a8, .LC43
	.loc 1 292 0
	bgeu	a4, a3, .L47
	bnez.n	a11, .L47
	bgeu	a8, a10, .L51
.L47:
.LVL48:
	.loc 1 295 0
	mov.n	a10, a3
.LVL49:
	.loc 1 296 0
	beq	a3, a8, .L51
	.loc 1 297 0
	l32r	a3, .LC49
.LVL50:
	movi.n	a9, 1
	s8i	a9, a3, 0
	.loc 1 295 0
	mov.n	a10, a8
.LVL51:
.L51:
	.loc 1 301 0
	l32r	a3, .LC50
	.loc 1 300 0
	memw
	s32i.n	a10, a7, 0
	.loc 1 301 0
	movi.n	a10, 0
.LVL52:
	memw
	s32i.n	a10, a3, 0
.LVL53:
	.loc 1 303 0
	l32r	a3, .LC51
	l32i.n	a7, a5, 0
	l32i.n	a8, a3, 0
	quou	a4, a4, a7
.LVL54:
	add.n	a8, a4, a8
	l32i.n	a7, a3, 4
	movi.n	a9, 1
	bltu	a8, a4, .L52
	mov.n	a9, a10
.L52:
	add.n	a4, a9, a7
	s32i.n	a8, a3, 0
	s32i.n	a4, a3, 4
	.loc 1 322 0
	l32r	a3, .LC43
	.loc 1 321 0
	s32i.n	a2, a5, 0
	.loc 1 322 0
	quou	a2, a3, a2
.LVL55:
	l32r	a3, .LC52
	.loc 1 324 0
	mov.n	a10, a6
	.loc 1 322 0
	s32i.n	a2, a3, 0
.LVL56:
.L58:
	.loc 1 324 0
	call8	vTaskExitCritical
.LVL57:
	retw.n
.LFE25:
	.size	esp_timer_impl_update_apb_freq, .-esp_timer_impl_update_apb_freq
	.section	.rodata.str1.1
.LC53:
	.string	"time_us > 0 && \"negative adjustments not supported yet\""
	.section	.text.esp_timer_impl_advance,"ax",@progbits
	.literal_position
	.literal .LC54, .LC53
	.literal .LC55, __func__$5448
	.literal .LC56, .LC17
	.literal .LC57, s_time_update_lock
	.literal .LC58, 1072984100
	.literal .LC59, 1072984112
	.literal .LC60, 1072984096
	.literal .LC61, s_time_base_us
	.literal .LC62, s_timer_ticks_per_us
	.literal .LC63, s_overflow_happened
	.align	4
	.global	esp_timer_impl_advance
	.type	esp_timer_impl_advance, @function
esp_timer_impl_advance:
.LFB26:
	.loc 1 328 0
.LVL58:
	entry	sp, 32
.LCFI7:
	.loc 1 329 0
	bgei	a3, 1, .L60
	bnez.n	a3, .L64
	bnez.n	a2, .L60
.L64:
	.loc 1 329 0 is_stmt 0 discriminator 1
	l32r	a13, .LC54
	l32r	a12, .LC55
	l32r	a10, .LC56
	movi	a11, 0x149
	call8	__assert_func
.LVL59:
.L60:
	.loc 1 331 0 is_stmt 1
	l32r	a4, .LC57
	.loc 1 336 0
	movi.n	a6, 0
	.loc 1 331 0
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL60:
	.loc 1 332 0
	l32r	a5, .LC58
	.loc 1 338 0
	l32r	a8, .LC62
	.loc 1 332 0
	memw
	l32i.n	a10, a5, 0
.LVL61:
	.loc 1 336 0
	l32r	a5, .LC59
	.loc 1 338 0
	mov.n	a13, a6
	.loc 1 336 0
	memw
	s32i.n	a6, a5, 0
	.loc 1 337 0
	l32r	a5, .LC60
	.loc 1 338 0
	mov.n	a11, a6
	.loc 1 337 0
	memw
	s32i.n	a6, a5, 0
	.loc 1 338 0
	l32i.n	a12, a8, 0
	l32r	a5, .LC61
	call8	__udivdi3
.LVL62:
	l32i.n	a9, a5, 0
	mov.n	a13, a10
	add.n	a9, a10, a9
	l32i.n	a8, a5, 4
	movi.n	a12, 1
	mov.n	a10, a4
	bltu	a9, a13, .L62
	mov.n	a12, a6
.L62:
	add.n	a11, a11, a8
	add.n	a2, a9, a2
.LVL63:
	add.n	a11, a12, a11
	movi.n	a6, 1
	bltu	a2, a9, .L63
	movi.n	a6, 0
.L63:
	add.n	a3, a11, a3
	add.n	a3, a6, a3
	s32i.n	a2, a5, 0
	.loc 1 339 0
	l32r	a2, .LC63
	.loc 1 338 0
	s32i.n	a3, a5, 4
	.loc 1 339 0
	movi.n	a3, 0
	s8i	a3, a2, 0
	.loc 1 340 0
	call8	vTaskExitCritical
.LVL64:
	retw.n
.LFE26:
	.size	esp_timer_impl_advance, .-esp_timer_impl_advance
	.section	.rodata.str1.1
.LC68:
	.string	"esp_timer_impl"
.LC70:
	.string	"\033[0;31mE (%d) %s: esp_intr_alloc failed (0x%0x)\033[0m\n"
.LC74:
	.string	"s_timer_ticks_per_us > 0 && apb_freq % TIMER_DIV == 0 && \"APB frequency does not result in a valid ticks_per_us value\""
.LC86:
	.string	"esp_intr_enable(s_timer_interrupt_handle)"
	.section	.text.esp_timer_impl_init,"ax",@progbits
	.literal_position
	.literal .LC64, s_alarm_handler
	.literal .LC65, s_timer_interrupt_handle
	.literal .LC66, timer_alarm_isr
	.literal .LC67, 3072
	.literal .LC69, .LC68
	.literal .LC71, .LC70
	.literal .LC72, 1125899907
	.literal .LC73, s_timer_ticks_per_us
	.literal .LC75, .LC74
	.literal .LC76, __func__$5455
	.literal .LC77, .LC17
	.literal .LC78, s_timer_us_per_overflow
	.literal .LC79, -268435457
	.literal .LC80, s_time_base_us
	.literal .LC81, 0, 0
	.literal .LC82, 1072984112
	.literal .LC83, 1072984096
	.literal .LC84, 1072984104
	.literal .LC85, 1072984108
	.literal .LC87, .LC86
	.align	4
	.global	esp_timer_impl_init
	.type	esp_timer_impl_init, @function
esp_timer_impl_init:
.LFB27:
	.loc 1 344 0
.LVL65:
	entry	sp, 32
.LCFI8:
	.loc 1 345 0
	l32r	a3, .LC64
	.loc 1 347 0
	l32r	a12, .LC66
	.loc 1 345 0
	s32i.n	a2, a3, 0
	.loc 1 347 0
	l32r	a3, .LC65
	l32r	a11, .LC67
	mov.n	a14, a3
	movi.n	a13, 0
	movi.n	a10, 0x39
	call8	esp_intr_alloc
.LVL66:
	mov.n	a2, a10
.LVL67:
	.loc 1 351 0
	beqz.n	a10, .L66
	.loc 1 352 0 discriminator 1
	call8	esp_log_timestamp
.LVL68:
	mov.n	a11, a10
	l32r	a12, .LC69
	l32r	a10, .LC71
	mov.n	a13, a2
	call8	ets_printf
.LVL69:
	.loc 1 353 0 discriminator 1
	retw.n
.L66:
	.loc 1 356 0
	call8	rtc_clk_apb_freq_get
.LVL70:
	.loc 1 357 0
	l32r	a8, .LC72
	muluh	a10, a10, a8
.LVL71:
	l32r	a8, .LC73
	extui	a10, a10, 18, 14
	s32i.n	a10, a8, 0
	.loc 1 358 0
	bnez.n	a10, .L68
	.loc 1 358 0 is_stmt 0 discriminator 1
	l32r	a13, .LC75
	l32r	a12, .LC76
	l32r	a10, .LC77
	movi	a11, 0x168
	call8	__assert_func
.LVL72:
.L68:
	.loc 1 361 0 is_stmt 1
	l32r	a8, .LC79
	l32r	a9, .LC78
	quou	a10, a8, a10
	s32i.n	a10, a9, 0
	.loc 1 362 0
	l32r	a11, .LC81+4
	l32r	a9, .LC80
	l32r	a10, .LC81
	s32i.n	a11, a9, 4
	s32i.n	a10, a9, 0
	.loc 1 364 0
	l32r	a9, .LC82
.LBB13:
	.loc 1 369 0
	l32i.n	a10, a3, 0
.LBE13:
	.loc 1 364 0
	memw
	s32i.n	a8, a9, 0
	.loc 1 365 0
	l32r	a8, .LC83
	.loc 1 366 0
	movi	a9, 0x81
	.loc 1 365 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 366 0
	l32r	a8, .LC84
	memw
	s32i.n	a9, a8, 0
	.loc 1 368 0
	l32r	a8, .LC85
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
.LBB14:
	.loc 1 369 0
	call8	esp_intr_enable
.LVL73:
	beqz.n	a10, .L67
	.loc 1 369 0 is_stmt 0 discriminator 1
	l32r	a14, .LC87
	l32r	a13, .LC76
	l32r	a11, .LC77
	movi	a12, 0x171
	call8	_esp_error_check_failed
.LVL74:
.L67:
.LBE14:
	.loc 1 372 0 is_stmt 1
	retw.n
.LFE27:
	.size	esp_timer_impl_init, .-esp_timer_impl_init
	.section	.text.esp_timer_impl_deinit,"ax",@progbits
	.literal_position
	.literal .LC88, s_timer_interrupt_handle
	.literal .LC89, 1072984104
	.literal .LC90, 1072984112
	.literal .LC91, 1072984096
	.align	4
	.global	esp_timer_impl_deinit
	.type	esp_timer_impl_deinit, @function
esp_timer_impl_deinit:
.LFB28:
	.loc 1 375 0
	entry	sp, 32
.LCFI9:
	.loc 1 376 0
	l32r	a3, .LC88
	.loc 1 378 0
	movi.n	a2, 0
	.loc 1 376 0
	l32i.n	a10, a3, 0
	call8	esp_intr_disable
.LVL75:
	.loc 1 378 0
	l32r	a8, .LC89
	.loc 1 382 0
	l32i.n	a10, a3, 0
	.loc 1 378 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 379 0
	l32r	a8, .LC90
	memw
	s32i.n	a2, a8, 0
	.loc 1 380 0
	l32r	a8, .LC91
	memw
	s32i.n	a2, a8, 0
	.loc 1 382 0
	call8	esp_intr_free
.LVL76:
	.loc 1 383 0
	s32i.n	a2, a3, 0
	retw.n
.LFE28:
	.size	esp_timer_impl_deinit, .-esp_timer_impl_deinit
	.section	.iram1
	.literal_position
	.literal .LC92, 50, 0
	.align	4
	.global	esp_timer_impl_get_min_period_us
	.type	esp_timer_impl_get_min_period_us, @function
esp_timer_impl_get_min_period_us:
.LFB29:
	.loc 1 390 0
	entry	sp, 32
.LCFI10:
	.loc 1 392 0
	l32r	a2, .LC92
	l32r	a3, .LC92+4
	retw.n
.LFE29:
	.size	esp_timer_impl_get_min_period_us, .-esp_timer_impl_get_min_period_us
	.section	.rodata.__func__$5409,"a",@progbits
	.type	__func__$5409, @object
	.size	__func__$5409, 19
__func__$5409:
	.string	"timer_count_reload"
	.section	.rodata.__func__$5455,"a",@progbits
	.type	__func__$5455, @object
	.size	__func__$5455, 20
__func__$5455:
	.string	"esp_timer_impl_init"
	.section	.rodata.__func__$5448,"a",@progbits
	.type	__func__$5448, @object
	.size	__func__$5448, 23
__func__$5448:
	.string	"esp_timer_impl_advance"
	.section	.rodata.__func__$5429,"a",@progbits
	.type	__func__$5429, @object
	.size	__func__$5429, 25
__func__$5429:
	.string	"esp_timer_impl_set_alarm"
	.global	s_time_update_lock
	.section	.data.s_time_update_lock,"aw",@progbits
	.align	4
	.type	s_time_update_lock, @object
	.size	s_time_update_lock, 8
s_time_update_lock:
	.word	-1287651329
	.word	0
	.section	.bss.s_overflow_happened,"aw",@nobits
	.type	s_overflow_happened, @object
	.size	s_overflow_happened, 1
s_overflow_happened:
	.zero	1
	.section	.bss.s_mask_overflow,"aw",@nobits
	.type	s_mask_overflow, @object
	.size	s_mask_overflow, 1
s_mask_overflow:
	.zero	1
	.section	.bss.s_timer_us_per_overflow,"aw",@nobits
	.align	4
	.type	s_timer_us_per_overflow, @object
	.size	s_timer_us_per_overflow, 4
s_timer_us_per_overflow:
	.zero	4
	.section	.bss.s_timer_ticks_per_us,"aw",@nobits
	.align	4
	.type	s_timer_ticks_per_us, @object
	.size	s_timer_ticks_per_us, 4
s_timer_ticks_per_us:
	.zero	4
	.section	.bss.s_time_base_us,"aw",@nobits
	.align	8
	.type	s_time_base_us, @object
	.size	s_time_base_us, 8
s_time_base_us:
	.zero	8
	.section	.bss.s_alarm_handler,"aw",@nobits
	.align	4
	.type	s_alarm_handler, @object
	.size	s_alarm_handler, 4
s_alarm_handler:
	.zero	4
	.section	.bss.s_timer_interrupt_handle,"aw",@nobits
	.align	4
	.type	s_timer_interrupt_handle, @object
	.size	s_timer_interrupt_handle, 4
s_timer_interrupt_handle:
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI9-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI10-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x83e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0x38
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x39
	.4byte	0x7e
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
	.byte	0x4
	.byte	0x18
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0xb5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x53
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x56
	.4byte	0x117
	.uleb128 0xa
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x57
	.4byte	0x127
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x1f
	.4byte	0x15e
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x17f
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x8a
	.4byte	0x94
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x8f
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x94
	.4byte	0x15e
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x1
	.byte	0x99
	.4byte	0xfa
	.byte	0x3
	.uleb128 0x10
	.4byte	0x18f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa4
	.byte	0x3
	.4byte	0x1c4
	.uleb128 0x12
	.4byte	.LASF39
	.4byte	0x1d4
	.4byte	.LASF84
	.byte	0
	.uleb128 0x13
	.4byte	0xcc
	.4byte	0x1d4
	.uleb128 0x14
	.4byte	0xbe
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x1c4
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x101
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28f
	.uleb128 0x16
	.string	"arg"
	.byte	0x1
	.2byte	0x101
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	0x1aa
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x106
	.4byte	0x24e
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x19
	.4byte	0x1b6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5409
	.uleb128 0x1a
	.4byte	.LVL3
	.4byte	0x7c6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5409
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL1
	.4byte	0x7d1
	.4byte	0x262
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL2
	.4byte	0x18f
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x7dc
	.4byte	0x27f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL5
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b8
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x7d1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb8
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e1
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0x7dc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF41
	.byte	0x1
	.byte	0xbd
	.4byte	0xaa
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x352
	.uleb128 0x21
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbf
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF36
	.byte	0x1
	.byte	0xc0
	.4byte	0xaa
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc1
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc2
	.4byte	0xfa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd9
	.4byte	0xaa
	.uleb128 0x1d
	.4byte	.LVL10
	.4byte	0x18f
	.uleb128 0x1d
	.4byte	.LVL13
	.4byte	0x18f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF42
	.byte	0x1
	.byte	0xde
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43c
	.uleb128 0x25
	.4byte	.LASF43
	.byte	0x1
	.byte	0xde
	.4byte	0xaa
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe2
	.4byte	0xaa
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe4
	.4byte	0xfa
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe5
	.4byte	0xaa
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LASF39
	.4byte	0x44c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5429
	.uleb128 0x21
	.4byte	.LASF46
	.byte	0x1
	.byte	0xed
	.4byte	0xaa
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.byte	0xee
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf3
	.4byte	0x451
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x7d1
	.4byte	0x3f3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL20
	.4byte	0x18f
	.uleb128 0x1c
	.4byte	.LVL26
	.4byte	0x7c6
	.4byte	0x42b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5429
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x7dc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xcc
	.4byte	0x44c
	.uleb128 0x14
	.4byte	0xbe
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x43c
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x27
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f6
	.uleb128 0x28
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x115
	.4byte	0x94
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x11e
	.4byte	0x94
	.4byte	.LLST11
	.uleb128 0x29
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11f
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x120
	.4byte	0x94
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x121
	.4byte	0xaa
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x122
	.4byte	0xaa
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x123
	.4byte	0x94
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LVL41
	.4byte	0x7d1
	.4byte	0x4ec
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0x7dc
	.byte	0
	.uleb128 0x27
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x147
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x589
	.uleb128 0x28
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x147
	.4byte	0x9f
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LASF39
	.4byte	0x599
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5448
	.uleb128 0x29
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x14c
	.4byte	0xaa
	.4byte	.LLST17
	.uleb128 0x1c
	.4byte	.LVL59
	.4byte	0x7c6
	.4byte	0x56b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x149
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5448
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL60
	.4byte	0x7d1
	.4byte	0x57f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL64
	.4byte	0x7dc
	.byte	0
	.uleb128 0x13
	.4byte	0xcc
	.4byte	0x599
	.uleb128 0x14
	.4byte	0xbe
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x589
	.uleb128 0x2b
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x157
	.4byte	0xde
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d8
	.uleb128 0x28
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x157
	.4byte	0x101
	.4byte	.LLST18
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.2byte	0x15b
	.4byte	0xde
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x164
	.4byte	0x94
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF39
	.4byte	0x6e8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5455
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x644
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x171
	.4byte	0xde
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0x7e7
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0x7f3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x171
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5455
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC86
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL66
	.4byte	0x7fe
	.4byte	0x673
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_alarm_isr
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL68
	.4byte	0x809
	.uleb128 0x1c
	.4byte	.LVL69
	.4byte	0x814
	.4byte	0x6a2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0x81f
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x7c6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5455
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xcc
	.4byte	0x6e8
	.uleb128 0x14
	.4byte	0xbe
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x6d8
	.uleb128 0x2e
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x176
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x716
	.uleb128 0x1d
	.4byte	.LVL75
	.4byte	0x82b
	.uleb128 0x1d
	.4byte	.LVL76
	.4byte	0x836
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x185
	.4byte	0xaa
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.string	"TAG"
	.byte	0x1
	.byte	0x62
	.4byte	0x18a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC68
	.byte	0x9f
	.uleb128 0x22
	.4byte	.LASF62
	.byte	0x1
	.byte	0x65
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_interrupt_handle
	.uleb128 0x22
	.4byte	.LASF63
	.byte	0x1
	.byte	0x69
	.4byte	0x101
	.uleb128 0x5
	.byte	0x3
	.4byte	s_alarm_handler
	.uleb128 0x22
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6e
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_base_us
	.uleb128 0x22
	.4byte	.LASF65
	.byte	0x1
	.byte	0x71
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.uleb128 0x22
	.4byte	.LASF66
	.byte	0x1
	.byte	0x75
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_us_per_overflow
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.byte	0x80
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mask_overflow
	.uleb128 0x22
	.4byte	.LASF68
	.byte	0x1
	.byte	0x87
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_overflow_happened
	.uleb128 0x31
	.4byte	.LASF88
	.byte	0x1
	.byte	0x93
	.4byte	0x17f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.uleb128 0x32
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x7
	.byte	0x29
	.uleb128 0x32
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0xda
	.uleb128 0x32
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x6
	.byte	0xd9
	.uleb128 0x33
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x106
	.uleb128 0x32
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.byte	0x4f
	.uleb128 0x32
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.byte	0x99
	.uleb128 0x32
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0x57
	.uleb128 0x32
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x9
	.byte	0xde
	.uleb128 0x33
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.2byte	0x1d3
	.uleb128 0x32
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0xf9
	.uleb128 0x32
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.byte	0xd4
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL16
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
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	.LFE23
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL39-1
	.2byte	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0xefffffff
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xefffffff
	.4byte	.LVL36
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x9
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	.LVL56
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL43
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL44
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xefffffff
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	.LFE26
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"intr_handler_t"
.LASF79:
	.string	"esp_intr_free"
.LASF68:
	.string	"s_overflow_happened"
.LASF40:
	.string	"result"
.LASF60:
	.string	"__err_rc"
.LASF43:
	.string	"timestamp"
.LASF85:
	.string	"timer_alarm_isr"
.LASF29:
	.string	"ESP_LOG_VERBOSE"
.LASF55:
	.string	"new_alarm_val"
.LASF74:
	.string	"esp_intr_alloc"
.LASF64:
	.string	"s_time_base_us"
.LASF70:
	.string	"vTaskEnterCritical"
.LASF16:
	.string	"sizetype"
.LASF46:
	.string	"compare_val"
.LASF61:
	.string	"esp_timer_impl_deinit"
.LASF65:
	.string	"s_timer_ticks_per_us"
.LASF7:
	.string	"__uint32_t"
.LASF51:
	.string	"new_ticks_per_us"
.LASF87:
	.string	"esp_timer_impl_get_min_period_us"
.LASF27:
	.string	"ESP_LOG_INFO"
.LASF34:
	.string	"esp_timer_impl_unlock"
.LASF13:
	.string	"int64_t"
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_timer_esp32.c"
.LASF23:
	.string	"intr_handle_t"
.LASF32:
	.string	"portMUX_TYPE"
.LASF72:
	.string	"esp_intr_enable"
.LASF12:
	.string	"uint32_t"
.LASF22:
	.string	"intr_handle_data_t"
.LASF4:
	.string	"short int"
.LASF9:
	.string	"long long int"
.LASF66:
	.string	"s_timer_us_per_overflow"
.LASF50:
	.string	"apb_ticks_per_us"
.LASF58:
	.string	"alarm_handler"
.LASF15:
	.string	"long int"
.LASF8:
	.string	"__int64_t"
.LASF48:
	.string	"offset"
.LASF42:
	.string	"esp_timer_impl_set_alarm"
.LASF36:
	.string	"time_base"
.LASF67:
	.string	"s_mask_overflow"
.LASF71:
	.string	"vTaskExitCritical"
.LASF53:
	.string	"ticks_to_alarm"
.LASF44:
	.string	"time_after_timebase_us"
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"__func__"
.LASF30:
	.string	"owner"
.LASF84:
	.string	"timer_count_reload"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"uint64_t"
.LASF0:
	.string	"long long unsigned int"
.LASF73:
	.string	"_esp_error_check_failed"
.LASF1:
	.string	"unsigned int"
.LASF52:
	.string	"alarm"
.LASF49:
	.string	"esp_timer_impl_update_apb_freq"
.LASF59:
	.string	"apb_freq"
.LASF35:
	.string	"timer_val"
.LASF76:
	.string	"ets_printf"
.LASF5:
	.string	"short unsigned int"
.LASF18:
	.string	"char"
.LASF54:
	.string	"new_ticks"
.LASF28:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"int32_t"
.LASF24:
	.string	"ESP_LOG_NONE"
.LASF37:
	.string	"ticks_per_us"
.LASF38:
	.string	"overflow"
.LASF62:
	.string	"s_timer_interrupt_handle"
.LASF20:
	.string	"_Bool"
.LASF86:
	.string	"esp_timer_impl_init"
.LASF10:
	.string	"__uint64_t"
.LASF41:
	.string	"esp_timer_impl_get_time"
.LASF26:
	.string	"ESP_LOG_WARN"
.LASF33:
	.string	"esp_timer_impl_lock"
.LASF77:
	.string	"rtc_clk_apb_freq_get"
.LASF17:
	.string	"long unsigned int"
.LASF78:
	.string	"esp_intr_disable"
.LASF47:
	.string	"alarm_reg_val"
.LASF56:
	.string	"esp_timer_impl_advance"
.LASF31:
	.string	"count"
.LASF57:
	.string	"time_us"
.LASF6:
	.string	"__int32_t"
.LASF45:
	.string	"cur_count"
.LASF75:
	.string	"esp_log_timestamp"
.LASF88:
	.string	"s_time_update_lock"
.LASF69:
	.string	"__assert_func"
.LASF80:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF83:
	.string	"timer_overflow_happened"
.LASF82:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF25:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"esp_err_t"
.LASF63:
	.string	"s_alarm_handler"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
