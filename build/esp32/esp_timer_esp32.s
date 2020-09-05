	.file	"esp_timer_esp32.c"
	.text
.Ltext0:
	.section	.iram1.14,"ax",@progbits
	.literal_position
	.literal .LC0, 1072984104
	.literal .LC1, 1072984112
	.literal .LC2, -268435457
	.literal .LC3, 1072984100
	.literal .LC4, s_mask_overflow
	.align	4
	.type	timer_overflow_happened, @function
timer_overflow_happened:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_timer_esp32.c"
	.loc 1 148 0
	entry	sp, 32
.LCFI0:
	.loc 1 149 0
	l32r	a2, .LC0
	memw
	l32i.n	a8, a2, 0
	movi.n	a2, 0
	bbci	a8, 8, .L2
	.loc 1 150 0 discriminator 1
	l32r	a8, .LC1
	.loc 1 149 0 discriminator 1
	l32r	a2, .LC2
	.loc 1 150 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
	.loc 1 149 0 discriminator 1
	bne	a9, a2, .L3
	.loc 1 150 0
	l32r	a2, .LC3
	memw
	l32i.n	a10, a2, 0
	bgeu	a9, a10, .L3
	.loc 1 150 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a2, a2, 0
	l32r	a2, .LC4
	l8ui	a9, a2, 0
	.loc 1 149 0 is_stmt 1 discriminator 1
	movi.n	a2, 1
	.loc 1 150 0 discriminator 1
	beqz.n	a9, .L2
.L3:
	.loc 1 151 0 discriminator 5
	memw
	l32i.n	a2, a8, 0
	.loc 1 150 0 discriminator 5
	l32r	a9, .LC2
	bgeu	a9, a2, .L4
	.loc 1 151 0
	memw
	l32i.n	a2, a8, 0
	.loc 1 149 0
	movi.n	a2, 0
	retw.n
.L4:
	.loc 1 151 0 discriminator 1
	l32r	a8, .LC3
	.loc 1 149 0 discriminator 1
	movi.n	a2, 0
	.loc 1 151 0 discriminator 1
	memw
	l32i.n	a10, a8, 0
	bgeu	a9, a10, .L2
	.loc 1 151 0 is_stmt 0 discriminator 2
	memw
	l32i.n	a2, a8, 0
	.loc 1 149 0 is_stmt 1 discriminator 2
	movi.n	a2, 1
.L2:
	.loc 1 152 0 discriminator 4
	retw.n
.LFE27:
	.size	timer_overflow_happened, .-timer_overflow_happened
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"TIMER_IS_AFTER_OVERFLOW(REG_READ(FRC_TIMER_COUNT_REG(1)))"
.LC12:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_timer_esp32.c"
	.section	.iram1.15,"ax",@progbits
	.literal_position
	.literal .LC5, 1072984100
	.literal .LC6, -268435457
	.literal .LC7, 268435457
	.literal .LC8, 1072984096
	.literal .LC10, .LC9
	.literal .LC11, __func__$5454
	.literal .LC13, .LC12
	.align	4
	.type	timer_count_reload, @function
timer_count_reload:
.LFB28:
	.loc 1 155 0
	entry	sp, 32
.LCFI1:
	.loc 1 157 0
	l32r	a8, .LC5
	l32r	a10, .LC6
	memw
	l32i.n	a9, a8, 0
	bgeu	a10, a9, .L11
	.loc 1 157 0 is_stmt 0 discriminator 2
	memw
	l32i.n	a9, a8, 0
	.loc 1 166 0 is_stmt 1 discriminator 2
	memw
	l32i.n	a9, a8, 0
	l32r	a8, .LC7
	add.n	a8, a9, a8
	l32r	a9, .LC8
	memw
	s32i.n	a8, a9, 0
	.loc 1 167 0 discriminator 2
	retw.n
.L11:
.LBB4:
.LBB5:
	.loc 1 157 0
	l32r	a13, .LC10
	l32r	a12, .LC11
	l32r	a10, .LC13
	movi	a11, 0x9d
	call8	__assert_func
.LVL0:
.LBE5:
.LBE4:
.LFE28:
	.size	timer_count_reload, .-timer_count_reload
	.section	.iram1.18,"ax",@progbits
	.literal_position
	.literal .LC14, s_time_update_lock
	.literal .LC15, s_time_base_us
	.literal .LC16, s_timer_us_per_overflow
	.literal .LC17, s_mask_overflow
	.literal .LC18, 1072984108
	.literal .LC19, 1072984112
	.literal .LC20, -268435457
	.literal .LC21, 1072984100
	.literal .LC22, 1072984104
	.literal .LC23, s_alarm_handler
	.align	4
	.type	timer_alarm_isr, @function
timer_alarm_isr:
.LFB33:
	.loc 1 260 0
.LVL1:
	entry	sp, 32
.LCFI2:
	.loc 1 261 0
	l32r	a4, .LC14
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL2:
	.loc 1 263 0
	call8	timer_overflow_happened
.LVL3:
	beqz.n	a10, .L14
	.loc 1 264 0
	call8	timer_count_reload
.LVL4:
	.loc 1 265 0
	l32r	a3, .LC15
	l32r	a5, .LC16
	l32i.n	a10, a3, 0
	l32i.n	a5, a5, 0
	l32i.n	a8, a3, 4
	add.n	a5, a10, a5
	movi.n	a9, 1
	bltu	a5, a10, .L15
	movi.n	a9, 0
.L15:
	add.n	a8, a9, a8
	s32i.n	a5, a3, 0
	s32i.n	a8, a3, 4
.L14:
	.loc 1 267 0
	l32r	a3, .LC17
	movi.n	a5, 0
	s8i	a5, a3, 0
	.loc 1 269 0
	l32r	a5, .LC18
	movi.n	a3, 1
	memw
	s32i.n	a3, a5, 0
	.loc 1 272 0
	l32r	a8, .LC19
	l32r	a5, .LC20
	memw
	s32i.n	a5, a8, 0
	.loc 1 273 0
	l32r	a8, .LC21
	memw
	l32i.n	a8, a8, 0
	bgeu	a5, a8, .L16
	.loc 1 274 0 discriminator 1
	l32r	a5, .LC22
	memw
	l32i.n	a8, a5, 0
	.loc 1 273 0 discriminator 1
	movi	a5, 0x100
	and	a5, a8, a5
	bnez.n	a5, .L16
	.loc 1 281 0
	call8	timer_count_reload
.LVL5:
	.loc 1 282 0
	l32r	a9, .LC15
	l32r	a8, .LC16
	l32i.n	a12, a9, 0
	l32i.n	a10, a8, 0
	l32i.n	a11, a9, 4
	add.n	a10, a12, a10
	mov.n	a8, a3
	bltu	a10, a12, .L17
	mov.n	a8, a5
.L17:
	add.n	a8, a8, a11
	s32i.n	a10, a9, 0
	s32i.n	a8, a9, 4
.L16:
	.loc 1 284 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL6:
	.loc 1 286 0
	l32r	a3, .LC23
	mov.n	a10, a2
	l32i.n	a3, a3, 0
	callx8	a3
.LVL7:
	retw.n
.LFE33:
	.size	timer_alarm_isr, .-timer_alarm_isr
	.section	.text.esp_timer_impl_lock,"ax",@progbits
	.literal_position
	.literal .LC24, s_time_update_lock
	.align	4
	.global	esp_timer_impl_lock
	.type	esp_timer_impl_lock, @function
esp_timer_impl_lock:
.LFB29:
	.loc 1 170 0
	entry	sp, 32
.LCFI3:
	.loc 1 171 0
	l32r	a10, .LC24
	call8	vTaskEnterCritical
.LVL8:
	retw.n
.LFE29:
	.size	esp_timer_impl_lock, .-esp_timer_impl_lock
	.section	.text.esp_timer_impl_unlock,"ax",@progbits
	.literal_position
	.literal .LC25, s_time_update_lock
	.align	4
	.global	esp_timer_impl_unlock
	.type	esp_timer_impl_unlock, @function
esp_timer_impl_unlock:
.LFB30:
	.loc 1 175 0
	entry	sp, 32
.LCFI4:
	.loc 1 176 0
	l32r	a10, .LC25
	call8	vTaskExitCritical
.LVL9:
	retw.n
.LFE30:
	.size	esp_timer_impl_unlock, .-esp_timer_impl_unlock
	.section	.iram1.16,"ax",@progbits
	.literal_position
	.literal .LC26, 1072984100
	.literal .LC27, s_time_base_us
	.literal .LC28, s_timer_ticks_per_us
	.align	4
	.global	esp_timer_impl_get_time
	.type	esp_timer_impl_get_time, @function
esp_timer_impl_get_time:
.LFB31:
	.loc 1 180 0
	entry	sp, 32
.LCFI5:
	.loc 1 188 0
	l32r	a6, .LC26
.L24:
	.loc 1 189 0
	l32r	a5, .LC27
	.loc 1 188 0
	memw
	l32i.n	a4, a6, 0
.LVL10:
	.loc 1 189 0
	l32i.n	a2, a5, 0
	l32i.n	a3, a5, 4
.LVL11:
	.loc 1 190 0
	call8	timer_overflow_happened
.LVL12:
	.loc 1 197 0
	memw
	l32i.n	a8, a6, 0
	.loc 1 190 0
	mov.n	a7, a10
.LVL13:
	.loc 1 197 0
	bgeu	a4, a8, .L24
	.loc 1 198 0 discriminator 1
	memw
	l32i.n	a8, a5, 0
	memw
	l32i.n	a9, a5, 4
	.loc 1 197 0 discriminator 1
	bne	a2, a8, .L24
	bne	a3, a9, .L24
	.loc 1 199 0
	l32r	a5, .LC28
	l32i.n	a5, a5, 0
.LVL14:
	.loc 1 200 0
	call8	timer_overflow_happened
.LVL15:
	.loc 1 199 0
	bne	a7, a10, .L24
.LVL16:
	.loc 1 209 0
	quou	a4, a4, a5
.LVL17:
	add.n	a2, a4, a2
.LVL18:
	movi.n	a5, 1
.LVL19:
	bltu	a2, a4, .L26
	movi.n	a5, 0
.L26:
	.loc 1 210 0
	add.n	a3, a5, a3
	retw.n
.LFE31:
	.size	esp_timer_impl_get_time, .-esp_timer_impl_get_time
	.section	.iram1.17,"ax",@progbits
	.literal_position
	.literal .LC29, -268435457
	.literal .LC30, s_time_update_lock
	.literal .LC31, s_timer_ticks_per_us
	.literal .LC32, 1072984100
	.literal .LC33, 1072984104
	.literal .LC34, s_time_base_us
	.literal .LC35, s_timer_us_per_overflow
	.literal .LC36, s_mask_overflow
	.literal .LC37, -268435458
	.literal .LC38, 1072984112
	.align	4
	.global	esp_timer_impl_set_alarm
	.type	esp_timer_impl_set_alarm, @function
esp_timer_impl_set_alarm:
.LFB32:
	.loc 1 213 0
.LVL20:
	entry	sp, 32
.LCFI6:
	.loc 1 214 0
	l32r	a4, .LC30
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL21:
	.loc 1 219 0
	l32r	a5, .LC31
	l32i.n	a9, a5, 0
	slli	a6, a9, 1
.LVL22:
.L40:
.LBB6:
	.loc 1 222 0
	call8	timer_overflow_happened
.LVL23:
	l32r	a7, .LC34
	bnez.n	a10, .L28
	.loc 1 223 0 discriminator 1
	l32r	a8, .LC32
	.loc 1 222 0 discriminator 1
	l32r	a9, .LC29
	.loc 1 223 0 discriminator 1
	memw
	l32i.n	a8, a8, 0
	.loc 1 222 0 discriminator 1
	bgeu	a9, a8, .L29
	.loc 1 224 0
	l32r	a8, .LC33
	memw
	l32i.n	a8, a8, 0
	.loc 1 223 0
	bbsi	a8, 8, .L29
.L28:
	.loc 1 227 0
	call8	timer_count_reload
.LVL24:
	.loc 1 228 0
	l32r	a8, .LC35
	l32i.n	a11, a7, 0
	l32i.n	a8, a8, 0
	l32i.n	a9, a7, 4
	add.n	a8, a11, a8
	movi.n	a10, 1
	bltu	a8, a11, .L30
	movi.n	a10, 0
.L30:
	add.n	a9, a10, a9
	s32i.n	a8, a7, 0
	s32i.n	a9, a7, 4
.L29:
	.loc 1 230 0
	l32r	a8, .LC36
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 235 0
	l32i.n	a9, a7, 0
	.loc 1 231 0
	l32r	a8, .LC32
	.loc 1 235 0
	sub	a9, a2, a9
	.loc 1 231 0
	memw
	l32i.n	a11, a8, 0
.LVL25:
	.loc 1 235 0
	l32i.n	a10, a7, 4
	movi.n	a7, 1
	bltu	a2, a9, .L31
	movi.n	a7, 0
.L31:
	l32i.n	a8, a5, 0
	sub	a10, a3, a10
	sub	a10, a10, a7
	mull	a10, a10, a8
	mull	a7, a9, a8
	muluh	a9, a9, a8
	.loc 1 237 0
	add.n	a8, a11, a6
	.loc 1 235 0
	add.n	a9, a10, a9
.LVL26:
	.loc 1 237 0
	movi.n	a12, 1
	srai	a10, a6, 31
	bltu	a8, a11, .L32
	movi.n	a12, 0
.L32:
	add.n	a10, a12, a10
	blt	a10, a9, .L34
	bne	a9, a10, .L33
	bgeu	a8, a7, .L33
.L34:
	mov.n	a8, a7
	mov.n	a10, a9
.L33:
.LVL27:
	.loc 1 239 0
	bgei	a10, 1, .L41
	bnez.n	a10, .L35
	l32r	a7, .LC37
	bgeu	a7, a8, .L35
.L41:
	.loc 1 238 0
	l32r	a8, .LC29
.LVL28:
.L35:
	.loc 1 242 0
	l32r	a7, .LC38
	memw
	s32i.n	a8, a7, 0
	.loc 1 243 0
	l32r	a7, .LC32
	memw
	l32i.n	a10, a7, 0
	sub	a9, a8, a10
	bltu	a8, a9, .L43
	.loc 1 244 0
	bnez.n	a9, .L38
.L43:
	.loc 1 251 0
	l32i.n	a7, a5, 0
	abs	a9, a9
	addx2	a6, a7, a6
.LVL29:
	add.n	a6, a6, a9
.LVL30:
.LBE6:
	.loc 1 255 0
	j	.L40
.L38:
	.loc 1 256 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL31:
	retw.n
.LFE32:
	.size	esp_timer_impl_set_alarm, .-esp_timer_impl_set_alarm
	.global	__udivdi3
	.section	.iram1.19,"ax",@progbits
	.literal_position
	.literal .LC39, -268435457
	.literal .LC40, s_time_update_lock
	.literal .LC41, s_timer_interrupt_handle
	.literal .LC42, 1072984112
	.literal .LC43, 1072984100
	.literal .LC44, s_timer_ticks_per_us
	.literal .LC45, s_mask_overflow
	.literal .LC46, 1072984096
	.literal .LC47, s_time_base_us
	.literal .LC48, s_timer_us_per_overflow
	.align	4
	.global	esp_timer_impl_update_apb_freq
	.type	esp_timer_impl_update_apb_freq, @function
esp_timer_impl_update_apb_freq:
.LFB34:
	.loc 1 290 0
.LVL32:
	entry	sp, 32
.LCFI7:
	.loc 1 291 0
	l32r	a3, .LC40
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL33:
	.loc 1 293 0
	l32r	a4, .LC41
	mov.n	a6, a3
	l32i.n	a4, a4, 0
	.loc 1 294 0
	mov.n	a10, a3
	.loc 1 293 0
	beqz.n	a4, .L60
.L47:
.LVL34:
	.loc 1 299 0
	l32r	a7, .LC42
	.loc 1 300 0
	l32r	a4, .LC43
	.loc 1 299 0
	memw
	l32i.n	a3, a7, 0
.LVL35:
	.loc 1 300 0
	memw
	l32i.n	a4, a4, 0
.LVL36:
	.loc 1 302 0
	l32r	a5, .LC44
	.loc 1 301 0
	sub	a10, a3, a4
.LVL37:
	.loc 1 302 0
	muluh	a11, a10, a2
	l32i.n	a12, a5, 0
	mull	a10, a10, a2
.LVL38:
	movi.n	a13, 0
	call8	__udivdi3
.LVL39:
	l32r	a8, .LC39
	.loc 1 304 0
	bgeu	a4, a3, .L49
	bnez.n	a11, .L49
	bgeu	a8, a10, .L53
.L49:
.LVL40:
	.loc 1 307 0
	mov.n	a10, a3
.LVL41:
	.loc 1 308 0
	beq	a3, a8, .L53
	.loc 1 309 0
	l32r	a3, .LC45
.LVL42:
	movi.n	a9, 1
	s8i	a9, a3, 0
	.loc 1 307 0
	mov.n	a10, a8
.LVL43:
.L53:
	.loc 1 313 0
	l32r	a3, .LC46
	.loc 1 312 0
	memw
	s32i.n	a10, a7, 0
	.loc 1 313 0
	movi.n	a10, 0
.LVL44:
	memw
	s32i.n	a10, a3, 0
.LVL45:
	.loc 1 315 0
	l32r	a3, .LC47
	l32i.n	a7, a5, 0
	l32i.n	a8, a3, 0
	quou	a4, a4, a7
.LVL46:
	add.n	a8, a4, a8
	l32i.n	a7, a3, 4
	movi.n	a9, 1
	bltu	a8, a4, .L54
	mov.n	a9, a10
.L54:
	add.n	a4, a9, a7
	s32i.n	a8, a3, 0
	s32i.n	a4, a3, 4
	.loc 1 334 0
	l32r	a3, .LC39
	.loc 1 333 0
	s32i.n	a2, a5, 0
	.loc 1 334 0
	quou	a2, a3, a2
.LVL47:
	l32r	a3, .LC48
	.loc 1 336 0
	mov.n	a10, a6
	.loc 1 334 0
	s32i.n	a2, a3, 0
.LVL48:
.L60:
	.loc 1 336 0
	call8	vTaskExitCritical
.LVL49:
	retw.n
.LFE34:
	.size	esp_timer_impl_update_apb_freq, .-esp_timer_impl_update_apb_freq
	.section	.rodata.str1.1
.LC49:
	.string	"time_us > 0 && \"negative adjustments not supported yet\""
	.section	.text.esp_timer_impl_advance,"ax",@progbits
	.literal_position
	.literal .LC50, .LC49
	.literal .LC51, __func__$5494
	.literal .LC52, .LC12
	.literal .LC53, s_time_update_lock
	.literal .LC54, 1072984100
	.literal .LC55, 1072984112
	.literal .LC56, 1072984096
	.literal .LC57, s_time_base_us
	.literal .LC58, s_timer_ticks_per_us
	.align	4
	.global	esp_timer_impl_advance
	.type	esp_timer_impl_advance, @function
esp_timer_impl_advance:
.LFB35:
	.loc 1 340 0
.LVL50:
	entry	sp, 32
.LCFI8:
	.loc 1 341 0
	bgei	a3, 1, .L62
	bnez.n	a3, .L66
	bnez.n	a2, .L62
.L66:
	.loc 1 341 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC51
	l32r	a10, .LC52
	movi	a11, 0x155
	call8	__assert_func
.LVL51:
.L62:
	.loc 1 343 0 is_stmt 1
	l32r	a4, .LC53
	.loc 1 348 0
	movi.n	a6, 0
	.loc 1 343 0
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL52:
	.loc 1 344 0
	l32r	a5, .LC54
	.loc 1 350 0
	l32r	a8, .LC58
	.loc 1 344 0
	memw
	l32i.n	a10, a5, 0
.LVL53:
	.loc 1 348 0
	l32r	a5, .LC55
	.loc 1 350 0
	mov.n	a13, a6
	.loc 1 348 0
	memw
	s32i.n	a6, a5, 0
	.loc 1 349 0
	l32r	a5, .LC56
	.loc 1 350 0
	mov.n	a11, a6
	.loc 1 349 0
	memw
	s32i.n	a6, a5, 0
	.loc 1 350 0
	l32i.n	a12, a8, 0
	l32r	a5, .LC57
	call8	__udivdi3
.LVL54:
	l32i.n	a9, a5, 0
	mov.n	a13, a10
	add.n	a9, a10, a9
	l32i.n	a8, a5, 4
	movi.n	a12, 1
	mov.n	a10, a4
	bltu	a9, a13, .L64
	mov.n	a12, a6
.L64:
	add.n	a11, a11, a8
	add.n	a2, a9, a2
.LVL55:
	add.n	a11, a12, a11
	movi.n	a6, 1
	bltu	a2, a9, .L65
	movi.n	a6, 0
.L65:
	add.n	a3, a11, a3
	add.n	a3, a6, a3
	s32i.n	a2, a5, 0
	s32i.n	a3, a5, 4
	.loc 1 351 0
	call8	vTaskExitCritical
.LVL56:
	retw.n
.LFE35:
	.size	esp_timer_impl_advance, .-esp_timer_impl_advance
	.section	.rodata.str1.1
.LC63:
	.string	"esp_timer_impl"
.LC65:
	.string	"\033[0;31mE (%d) %s: esp_intr_alloc failed (0x%0x)\033[0m\n"
.LC69:
	.string	"s_timer_ticks_per_us > 0 && apb_freq % TIMER_DIV == 0 && \"APB frequency does not result in a valid ticks_per_us value\""
.LC81:
	.string	"esp_intr_enable(s_timer_interrupt_handle)"
	.section	.text.esp_timer_impl_init,"ax",@progbits
	.literal_position
	.literal .LC59, s_alarm_handler
	.literal .LC60, s_timer_interrupt_handle
	.literal .LC61, timer_alarm_isr
	.literal .LC62, 3072
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.literal .LC67, 1125899907
	.literal .LC68, s_timer_ticks_per_us
	.literal .LC70, .LC69
	.literal .LC71, __func__$5501
	.literal .LC72, .LC12
	.literal .LC73, s_timer_us_per_overflow
	.literal .LC74, -268435457
	.literal .LC75, s_time_base_us
	.literal .LC76, 0, 0
	.literal .LC77, 1072984112
	.literal .LC78, 1072984096
	.literal .LC79, 1072984104
	.literal .LC80, 1072984108
	.literal .LC82, .LC81
	.align	4
	.global	esp_timer_impl_init
	.type	esp_timer_impl_init, @function
esp_timer_impl_init:
.LFB36:
	.loc 1 355 0
.LVL57:
	entry	sp, 32
.LCFI9:
	.loc 1 356 0
	l32r	a3, .LC59
	.loc 1 358 0
	l32r	a12, .LC61
	.loc 1 356 0
	s32i.n	a2, a3, 0
	.loc 1 358 0
	l32r	a3, .LC60
	l32r	a11, .LC62
	mov.n	a14, a3
	movi.n	a13, 0
	movi.n	a10, 0x39
	call8	esp_intr_alloc
.LVL58:
	mov.n	a2, a10
.LVL59:
	.loc 1 362 0
	beqz.n	a10, .L68
	.loc 1 363 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	mov.n	a11, a10
	l32r	a12, .LC64
	l32r	a10, .LC66
	mov.n	a13, a2
	call8	ets_printf
.LVL61:
	.loc 1 364 0 discriminator 1
	retw.n
.L68:
	.loc 1 367 0
	call8	rtc_clk_apb_freq_get
.LVL62:
	.loc 1 368 0
	l32r	a8, .LC67
	muluh	a10, a10, a8
.LVL63:
	l32r	a8, .LC68
	extui	a10, a10, 18, 14
	s32i.n	a10, a8, 0
	.loc 1 369 0
	bnez.n	a10, .L70
	.loc 1 369 0 is_stmt 0 discriminator 1
	l32r	a13, .LC70
	l32r	a12, .LC71
	l32r	a10, .LC72
	movi	a11, 0x173
	call8	__assert_func
.LVL64:
.L70:
	.loc 1 372 0 is_stmt 1
	l32r	a8, .LC74
	l32r	a9, .LC73
	quou	a10, a8, a10
	s32i.n	a10, a9, 0
	.loc 1 373 0
	l32r	a11, .LC76+4
	l32r	a9, .LC75
	l32r	a10, .LC76
	s32i.n	a11, a9, 4
	s32i.n	a10, a9, 0
	.loc 1 375 0
	l32r	a9, .LC77
.LBB7:
	.loc 1 380 0
	l32i.n	a10, a3, 0
.LBE7:
	.loc 1 375 0
	memw
	s32i.n	a8, a9, 0
	.loc 1 376 0
	l32r	a8, .LC78
	.loc 1 377 0
	movi	a9, 0x81
	.loc 1 376 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 377 0
	l32r	a8, .LC79
	memw
	s32i.n	a9, a8, 0
	.loc 1 379 0
	l32r	a8, .LC80
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
.LBB8:
	.loc 1 380 0
	call8	esp_intr_enable
.LVL65:
	beqz.n	a10, .L69
	.loc 1 380 0 is_stmt 0 discriminator 1
	l32r	a14, .LC82
	l32r	a13, .LC71
	l32r	a11, .LC72
	movi	a12, 0x17c
	call8	_esp_error_check_failed
.LVL66:
.L69:
.LBE8:
	.loc 1 383 0 is_stmt 1
	retw.n
.LFE36:
	.size	esp_timer_impl_init, .-esp_timer_impl_init
	.section	.text.esp_timer_impl_deinit,"ax",@progbits
	.literal_position
	.literal .LC83, s_timer_interrupt_handle
	.literal .LC84, 1072984104
	.literal .LC85, 1072984112
	.literal .LC86, 1072984096
	.align	4
	.global	esp_timer_impl_deinit
	.type	esp_timer_impl_deinit, @function
esp_timer_impl_deinit:
.LFB37:
	.loc 1 386 0
	entry	sp, 32
.LCFI10:
	.loc 1 387 0
	l32r	a3, .LC83
	.loc 1 389 0
	movi.n	a2, 0
	.loc 1 387 0
	l32i.n	a10, a3, 0
	call8	esp_intr_disable
.LVL67:
	.loc 1 389 0
	l32r	a8, .LC84
	.loc 1 393 0
	l32i.n	a10, a3, 0
	.loc 1 389 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 390 0
	l32r	a8, .LC85
	memw
	s32i.n	a2, a8, 0
	.loc 1 391 0
	l32r	a8, .LC86
	memw
	s32i.n	a2, a8, 0
	.loc 1 393 0
	call8	esp_intr_free
.LVL68:
	.loc 1 394 0
	s32i.n	a2, a3, 0
	retw.n
.LFE37:
	.size	esp_timer_impl_deinit, .-esp_timer_impl_deinit
	.section	.iram1.20,"ax",@progbits
	.literal_position
	.literal .LC87, 50, 0
	.align	4
	.global	esp_timer_impl_get_min_period_us
	.type	esp_timer_impl_get_min_period_us, @function
esp_timer_impl_get_min_period_us:
.LFB38:
	.loc 1 401 0
	entry	sp, 32
.LCFI11:
	.loc 1 403 0
	l32r	a2, .LC87
	l32r	a3, .LC87+4
	retw.n
.LFE38:
	.size	esp_timer_impl_get_min_period_us, .-esp_timer_impl_get_min_period_us
	.section	.rodata.__func__$5501,"a",@progbits
	.type	__func__$5501, @object
	.size	__func__$5501, 20
__func__$5501:
	.string	"esp_timer_impl_init"
	.section	.rodata.__func__$5494,"a",@progbits
	.type	__func__$5494, @object
	.size	__func__$5494, 23
__func__$5494:
	.string	"esp_timer_impl_advance"
	.section	.rodata.__func__$5454,"a",@progbits
	.type	__func__$5454, @object
	.size	__func__$5454, 19
__func__$5454:
	.string	"timer_count_reload"
	.global	s_time_update_lock
	.section	.data.s_time_update_lock,"aw",@progbits
	.align	4
	.type	s_time_update_lock, @object
	.size	s_time_update_lock, 8
s_time_update_lock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI2-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI7-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI8-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI9-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI11-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
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
	.4byte	0x801
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x9a
	.byte	0x3
	.4byte	0x1a9
	.uleb128 0x10
	.4byte	.LASF39
	.4byte	0x1b9
	.4byte	.LASF83
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x1b9
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x1a9
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0x93
	.4byte	0xfa
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	0x18f
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x232
	.uleb128 0x15
	.4byte	0x19b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5454
	.uleb128 0x16
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x15
	.4byte	0x19b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5454
	.uleb128 0x17
	.4byte	.LVL0
	.4byte	0x789
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5454
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x103
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a9
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.2byte	0x103
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0x794
	.4byte	0x26a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x1be
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x18f
	.uleb128 0x1c
	.4byte	.LVL5
	.4byte	0x18f
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0x79f
	.4byte	0x299
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL7
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa9
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d2
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x794
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF34
	.byte	0x1
	.byte	0xae
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fb
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x79f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb3
	.4byte	0xaa
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36c
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb5
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb6
	.4byte	0xaa
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb7
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF38
	.byte	0x1
	.byte	0xb8
	.4byte	0xfa
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF40
	.byte	0x1
	.byte	0xcf
	.4byte	0xaa
	.uleb128 0x1c
	.4byte	.LVL12
	.4byte	0x1be
	.uleb128 0x1c
	.4byte	.LVL15
	.4byte	0x1be
	.byte	0
	.uleb128 0x23
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd4
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a
	.uleb128 0x24
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd4
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LASF44
	.byte	0x1
	.byte	0xdb
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x405
	.uleb128 0x20
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe7
	.4byte	0x9f
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.byte	0xe9
	.4byte	0x9f
	.uleb128 0x20
	.4byte	.LASF47
	.byte	0x1
	.byte	0xeb
	.4byte	0x9f
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF48
	.byte	0x1
	.byte	0xee
	.4byte	0x94
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF49
	.byte	0x1
	.byte	0xf3
	.4byte	0x9f
	.uleb128 0x1c
	.4byte	.LVL23
	.4byte	0x1be
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0x18f
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x794
	.4byte	0x419
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0x79f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x121
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ca
	.uleb128 0x27
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x121
	.4byte	0x94
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x12a
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x12b
	.4byte	0x94
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x12c
	.4byte	0x94
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x12d
	.4byte	0xaa
	.uleb128 0x28
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12e
	.4byte	0xaa
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x12f
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0x794
	.4byte	0x4c0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL49
	.4byte	0x79f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x153
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55d
	.uleb128 0x27
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x153
	.4byte	0x9f
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF39
	.4byte	0x56d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5494
	.uleb128 0x28
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x158
	.4byte	0xaa
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LVL51
	.4byte	0x789
	.4byte	0x53f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x155
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5494
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL52
	.4byte	0x794
	.4byte	0x553
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL56
	.4byte	0x79f
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x56d
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x55d
	.uleb128 0x2b
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x162
	.4byte	0xde
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ac
	.uleb128 0x27
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x162
	.4byte	0x101
	.4byte	.LLST15
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.2byte	0x166
	.4byte	0xde
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x16f
	.4byte	0x94
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LASF39
	.4byte	0x6bc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5501
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.4byte	0x618
	.uleb128 0x28
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x17c
	.4byte	0xde
	.4byte	.LLST17
	.uleb128 0x1c
	.4byte	.LVL65
	.4byte	0x7aa
	.uleb128 0x17
	.4byte	.LVL66
	.4byte	0x7b6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x17c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5501
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL58
	.4byte	0x7c1
	.4byte	0x647
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_alarm_isr
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL60
	.4byte	0x7cc
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0x7d7
	.4byte	0x676
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL62
	.4byte	0x7e2
	.uleb128 0x17
	.4byte	.LVL64
	.4byte	0x789
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x173
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5501
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x6bc
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x6ac
	.uleb128 0x2e
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x181
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ea
	.uleb128 0x1c
	.4byte	.LVL67
	.4byte	0x7ee
	.uleb128 0x1c
	.4byte	.LVL68
	.4byte	0x7f9
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x190
	.4byte	0xaa
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.string	"TAG"
	.byte	0x1
	.byte	0x63
	.4byte	0x18a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC63
	.byte	0x9f
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.byte	0x66
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_interrupt_handle
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6a
	.4byte	0x101
	.uleb128 0x5
	.byte	0x3
	.4byte	s_alarm_handler
	.uleb128 0x21
	.4byte	.LASF65
	.byte	0x1
	.byte	0x6f
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_base_us
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.byte	0x72
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x76
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_us_per_overflow
	.uleb128 0x21
	.4byte	.LASF68
	.byte	0x1
	.byte	0x81
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mask_overflow
	.uleb128 0x31
	.4byte	.LASF88
	.byte	0x1
	.byte	0x8d
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
	.byte	0xf4
	.uleb128 0x32
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x6
	.byte	0xf3
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL18
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
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
	.4byte	.LVL31-1
	.2byte	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x57
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
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xefffffff
	.4byte	.LVL28
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	.LVL48
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xefffffff
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL55
	.4byte	.LFE35
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL53
	.4byte	.LVL54-1
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
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"intr_handler_t"
.LASF79:
	.string	"esp_intr_free"
.LASF40:
	.string	"result"
.LASF61:
	.string	"__err_rc"
.LASF43:
	.string	"timestamp"
.LASF85:
	.string	"timer_alarm_isr"
.LASF29:
	.string	"ESP_LOG_VERBOSE"
.LASF56:
	.string	"new_alarm_val"
.LASF74:
	.string	"esp_intr_alloc"
.LASF65:
	.string	"s_time_base_us"
.LASF70:
	.string	"vTaskEnterCritical"
.LASF16:
	.string	"sizetype"
.LASF47:
	.string	"compare_val"
.LASF62:
	.string	"esp_timer_impl_deinit"
.LASF49:
	.string	"delta"
.LASF66:
	.string	"s_timer_ticks_per_us"
.LASF7:
	.string	"__uint32_t"
.LASF52:
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
.LASF67:
	.string	"s_timer_us_per_overflow"
.LASF51:
	.string	"apb_ticks_per_us"
.LASF59:
	.string	"alarm_handler"
.LASF15:
	.string	"long int"
.LASF8:
	.string	"__int64_t"
.LASF44:
	.string	"offset"
.LASF42:
	.string	"esp_timer_impl_set_alarm"
.LASF36:
	.string	"time_base"
.LASF68:
	.string	"s_mask_overflow"
.LASF71:
	.string	"vTaskExitCritical"
.LASF54:
	.string	"ticks_to_alarm"
.LASF46:
	.string	"time_after_timebase_us"
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"__func__"
.LASF30:
	.string	"owner"
.LASF83:
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
.LASF53:
	.string	"alarm"
.LASF50:
	.string	"esp_timer_impl_update_apb_freq"
.LASF60:
	.string	"apb_freq"
.LASF35:
	.string	"timer_val"
.LASF76:
	.string	"ets_printf"
.LASF5:
	.string	"short unsigned int"
.LASF18:
	.string	"char"
.LASF55:
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
.LASF63:
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
.LASF48:
	.string	"alarm_reg_val"
.LASF57:
	.string	"esp_timer_impl_advance"
.LASF31:
	.string	"count"
.LASF58:
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
.LASF84:
	.string	"timer_overflow_happened"
.LASF82:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF25:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"esp_err_t"
.LASF64:
	.string	"s_alarm_handler"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
