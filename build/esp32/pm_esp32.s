	.file	"pm_esp32.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1000000
	.literal .LC1, 1374389535
	.literal .LC2, _xt_tick_divisor
	.literal .LC3, s_rtos_lock_handle
	.literal .LC4, s_ccount_div
	.literal .LC5, s_ccount_mul
	.literal .LC6, 2147483646
	.align	4
	.type	on_freq_update, @function
on_freq_update:
.LFB25:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_esp32.c"
	.loc 1 307 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 309 0
	movi.n	a8, 0x50
	minu	a10, a3, a8
.LVL2:
	.loc 1 311 0
	minu	a8, a2, a8
.LVL3:
	beq	a8, a10, .L2
	.loc 1 312 0
	call8	esp_timer_impl_update_apb_freq
.LVL4:
.L2:
	.loc 1 316 0
	l32r	a9, .LC0
	l32r	a8, .LC1
	mull	a9, a3, a9
	muluh	a9, a9, a8
	l32r	a8, .LC2
	srli	a9, a9, 5
	s32i.n	a9, a8, 0
.LBB25:
.LBB26:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE26:
.LBE25:
	.loc 1 319 0
	l32r	a8, .LC3
	addx4	a10, a10, a8
	l32i.n	a8, a10, 0
	beqz.n	a8, .L1
	.loc 1 324 0
	l32r	a14, .LC4
	.loc 1 325 0
	l32r	a12, .LC5
	.loc 1 324 0
	s32i.n	a2, a14, 0
	.loc 1 325 0
	s32i.n	a3, a12, 0
.LBB27:
.LBB28:
.LBB29:
	.loc 1 422 0
#APP
# 422 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_esp32.c" 1
	rsr.ccount a13
# 0 "" 2
.LVL5:
#NO_APP
.LBE29:
.LBB30:
	.loc 1 423 0
#APP
# 423 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_esp32.c" 1
	rsr.ccompare0 a10
# 0 "" 2
.LVL6:
#NO_APP
.LBE30:
	.loc 1 424 0
	movi	a11, -0x3e8
	sub	a8, a10, a13
	mov.n	a10, a14
.LVL7:
	l32r	a14, .LC6
	add.n	a11, a8, a11
	bltu	a14, a11, .L4
.LVL8:
.LBB31:
	.loc 1 426 0
	mull	a3, a3, a8
.LVL9:
	addi.n	a8, a2, -1
.LVL10:
	add.n	a3, a3, a8
	quou	a2, a3, a2
.LVL11:
	.loc 1 427 0
	bgeu	a2, a9, .L4
.LVL12:
.LBB32:
.LBB33:
	.loc 1 429 0
	add.n	a2, a13, a2
.LVL13:
#APP
# 429 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_esp32.c" 1
	wsr.ccompare0 a2 ; esync
# 0 "" 2
.LVL14:
#NO_APP
.L4:
.LBE33:
.LBE32:
.LBE31:
.LBE28:
.LBE27:
	.loc 1 345 0
	movi.n	a2, 0
	s32i.n	a2, a12, 0
.LVL15:
	.loc 1 346 0
	s32i.n	a2, a10, 0
.LVL16:
.L1:
	retw.n
.LFE25:
	.size	on_freq_update, .-on_freq_update
	.section	.text.esp_pm_impl_get_mode,"ax",@progbits
	.align	4
	.global	esp_pm_impl_get_mode
	.type	esp_pm_impl_get_mode, @function
esp_pm_impl_get_mode:
.LFB21:
	.loc 1 154 0
.LVL17:
	entry	sp, 32
.LCFI1:
	.loc 1 157 0
	movi.n	a8, 3
	.loc 1 156 0
	beqz.n	a2, .L9
	.loc 1 158 0
	beqi	a2, 1, .L11
	.loc 1 161 0
	movi.n	a8, 1
	.loc 1 160 0
	beqi	a2, 2, .L9
	.loc 1 164 0
	call8	abort
.LVL18:
.L11:
	.loc 1 159 0
	movi.n	a8, 2
.L9:
	.loc 1 166 0
	mov.n	a2, a8
.LVL19:
	retw.n
.LFE21:
	.size	esp_pm_impl_get_mode, .-esp_pm_impl_get_mode
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"ENABLED"
.LC9:
	.string	"DISABLED"
.LC12:
	.string	"pm_esp32"
.LC14:
	.string	"\033[0;33mW (%d) %s: invalid min_freq_mhz value (%d)\033[0m\n"
.LC16:
	.string	"\033[0;33mW (%d) %s: min_freq_mhz should be >= %d\033[0m\n"
.LC18:
	.string	"\033[0;33mW (%d) %s: invalid max_freq_mhz value (%d)\033[0m\n"
.LC20:
	.string	"\033[0;32mI (%d) %s: Frequency switching config: CPU_MAX: %d, APB_MAX: %d, APB_MIN: %d, Light sleep: %s\033[0m\n"
	.section	.text.esp_pm_configure,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC11, 1125899907
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC22, s_switch_lock
	.literal .LC23, s_cpu_freq_by_mode+48
	.literal .LC24, s_cpu_freq_by_mode+32
	.literal .LC25, s_cpu_freq_by_mode+16
	.literal .LC26, s_cpu_freq_by_mode
	.literal .LC27, s_light_sleep_en
	.literal .LC28, s_config_changed
	.align	4
	.global	esp_pm_configure
	.type	esp_pm_configure, @function
esp_pm_configure:
.LFB22:
	.loc 1 169 0
.LVL20:
	entry	sp, 64
.LCFI2:
.LVL21:
	.loc 1 176 0
	l8ui	a3, a2, 16
	.loc 1 177 0
	movi	a6, 0x106
	.loc 1 176 0
	bnez.n	a3, .L16
	.loc 1 181 0
	l32i.n	a4, a2, 12
.LVL22:
	.loc 1 182 0
	l32i.n	a3, a2, 4
.LVL23:
	.loc 1 184 0
	or	a5, a4, a3
	bnez.n	a5, .L17
	.loc 1 188 0
	l32i.n	a10, a2, 8
	call8	rtc_clk_cpu_freq_value
.LVL24:
	l32r	a3, .LC11
.LVL25:
	muluh	a4, a10, a3
.LVL26:
	.loc 1 189 0
	l32i.n	a10, a2, 0
	.loc 1 188 0
	extui	a4, a4, 18, 14
.LVL27:
	.loc 1 189 0
	call8	rtc_clk_cpu_freq_value
.LVL28:
	muluh	a3, a10, a3
	extui	a3, a3, 18, 14
.LVL29:
.L17:
	.loc 1 194 0
	movi	a6, 0x102
	.loc 1 193 0
	blt	a3, a4, .L16
	.loc 1 198 0
	addi	a11, sp, 16
	mov.n	a10, a4
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL30:
	l32r	a5, .LC13
	bnez.n	a10, .L18
	.loc 1 199 0 discriminator 4
	call8	esp_log_timestamp
.LVL31:
	mov.n	a15, a4
	mov.n	a14, a5
	mov.n	a13, a10
	l32r	a12, .LC15
	j	.L39
.L18:
	.loc 1 203 0
	call8	rtc_clk_xtal_freq_get
.LVL32:
	.loc 1 204 0
	bge	a4, a10, .L19
	movi.n	a8, 9
	blt	a8, a4, .L19
	.loc 1 205 0 discriminator 4
	call8	esp_log_timestamp
.LVL33:
	l32r	a12, .LC17
	movi.n	a15, 0xa
	mov.n	a14, a5
	mov.n	a13, a10
.L39:
	mov.n	a11, a5
	movi.n	a10, 2
	call8	esp_log_write
.LVL34:
	.loc 1 206 0 discriminator 4
	j	.L16
.LVL35:
.L19:
	.loc 1 209 0
	addi	a11, sp, 16
	mov.n	a10, a3
.LVL36:
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL37:
	bnez.n	a10, .L22
	.loc 1 210 0 discriminator 4
	call8	esp_log_timestamp
.LVL38:
	l32r	a12, .LC19
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a5
	mov.n	a11, a5
	movi.n	a10, 2
	call8	esp_log_write
.LVL39:
	.loc 1 211 0 discriminator 4
	movi	a6, 0x102
	j	.L16
.L22:
.LVL40:
	.loc 1 215 0
	movi	a8, 0xf0
	.loc 1 219 0
	mov.n	a6, a3
	.loc 1 215 0
	beq	a3, a8, .L23
	.loc 1 220 0
	movi	a8, -0xa0
	add.n	a9, a3, a8
	movi.n	a10, 1
	movi.n	a8, 0
	moveqz	a8, a10, a9
	extui	a8, a8, 0, 8
	bnez.n	a8, .L31
	addi	a6, a3, -80
	moveqz	a8, a10, a6
	mov.n	a6, a3
	beqz.n	a8, .L23
.L31:
	.loc 1 224 0
	movi.n	a6, 0x50
.L23:
.LVL41:
	.loc 1 229 0
	call8	esp_log_timestamp
.LVL42:
	l8ui	a9, a2, 16
	l32r	a11, .LC10
	l32r	a8, .LC8
	l32r	a12, .LC21
	moveqz	a8, a11, a9
	.loc 1 227 0
	max	a6, a4, a6
.LVL43:
	.loc 1 229 0
	mov.n	a15, a3
	mov.n	a14, a5
	mov.n	a13, a10
	s32i.n	a8, sp, 8
	mov.n	a11, a5
	s32i.n	a4, sp, 4
	s32i.n	a6, sp, 0
	movi.n	a10, 3
	call8	esp_log_write
.LVL44:
	.loc 1 236 0
	l32r	a5, .LC22
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL45:
	.loc 1 237 0
	l32r	a11, .LC23
	mov.n	a10, a3
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL46:
	.loc 1 238 0
	l32r	a11, .LC24
	mov.n	a10, a6
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL47:
	.loc 1 239 0
	l32r	a3, .LC25
.LVL48:
	mov.n	a10, a4
	mov.n	a11, a3
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL49:
	.loc 1 240 0
	l32r	a4, .LC26
.LVL50:
	l32i.n	a6, a3, 0
.LVL51:
	l32i.n	a8, a3, 4
	s32i.n	a6, a4, 0
	l32i.n	a6, a3, 8
	l32i.n	a3, a3, 12
	.loc 1 243 0
	mov.n	a10, a5
	.loc 1 240 0
	s32i.n	a3, a4, 12
	.loc 1 241 0
	l8ui	a3, a2, 16
	l32r	a2, .LC27
.LVL52:
	.loc 1 240 0
	s32i.n	a6, a4, 8
	.loc 1 241 0
	s8i	a3, a2, 0
	.loc 1 242 0
	l32r	a2, .LC28
	movi.n	a3, 1
	.loc 1 240 0
	s32i.n	a8, a4, 4
	.loc 1 242 0
	s8i	a3, a2, 0
	.loc 1 245 0
	movi.n	a6, 0
	.loc 1 243 0
	call8	vTaskExitCritical
.LVL53:
.L16:
	.loc 1 246 0
	mov.n	a2, a6
	retw.n
.LFE22:
	.size	esp_pm_configure, .-esp_pm_configure
	.section	.iram1
	.literal_position
	.literal .LC29, s_switch_lock
	.literal .LC30, s_mode_lock_counts
	.literal .LC31, s_mode_mask
	.literal .LC32, s_mode
	.literal .LC33, s_light_sleep_en
	.literal .LC34, s_is_switching
	.literal .LC35, s_new_mode
	.literal .LC36, s_need_update_ccompare
	.literal .LC37, s_config_changed
	.literal .LC38, s_cpu_freq_by_mode
	.align	4
	.global	esp_pm_impl_switch_mode
	.type	esp_pm_impl_switch_mode, @function
esp_pm_impl_switch_mode:
.LFB24:
	.loc 1 264 0
.LVL54:
	entry	sp, 64
.LCFI3:
.LVL55:
	.loc 1 267 0
	l32r	a4, .LC29
.LVL56:
	.loc 1 266 0
	movi.n	a6, 1
	.loc 1 267 0
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL57:
	l32r	a5, .LC30
	.loc 1 266 0
	ssl	a2
	sll	a6, a6
.LVL58:
	slli	a2, a2, 2
.LVL59:
	.loc 1 270 0
	add.n	a2, a5, a2
	l32i.n	a5, a2, 0
	.loc 1 269 0
	bnez.n	a3, .L41
	.loc 1 270 0
	addi.n	a5, a5, 1
	s32i.n	a5, a2, 0
.LVL60:
	.loc 1 274 0
	beqi	a5, 1, .L42
.LVL61:
.L45:
	.loc 1 265 0
	movi.n	a5, 0
.LVL62:
	j	.L43
.LVL63:
.L41:
	.loc 1 272 0
	addi.n	a3, a5, -1
.LVL64:
	s32i.n	a3, a2, 0
.LVL65:
	.loc 1 274 0
	bnei	a5, 1, .L45
	j	.L44
.LVL66:
.L42:
	.loc 1 276 0
	l32r	a3, .LC31
.LVL67:
	l32i.n	a2, a3, 0
	or	a6, a2, a6
.LVL68:
	j	.L70
.LVL69:
.L44:
	.loc 1 278 0
	l32r	a3, .LC31
	movi.n	a2, -1
	xor	a6, a2, a6
.LVL70:
	l32i.n	a2, a3, 0
	and	a6, a6, a2
.L70:
	s32i.n	a6, a3, 0
.LVL71:
.L43:
	.loc 1 283 0
	l32r	a3, .LC32
	l32i.n	a2, a3, 0
.LVL72:
	.loc 1 284 0
	beqz.n	a5, .L46
.LVL73:
.LBB41:
.LBB42:
	.loc 1 251 0
	l32r	a2, .LC31
.LVL74:
	l32i.n	a6, a2, 0
	.loc 1 252 0
	movi.n	a2, 3
	.loc 1 251 0
	bgeui	a6, 8, .L46
	.loc 1 254 0
	movi.n	a2, 2
	.loc 1 253 0
	bgeui	a6, 4, .L46
	.loc 1 256 0
	movi.n	a2, 1
.LVL75:
	.loc 1 255 0
	bgeui	a6, 2, .L46
.LBE42:
.LBE41:
	.loc 1 283 0
	l32r	a6, .LC33
	l8ui	a6, a6, 0
.LVL76:
	xor	a2, a2, a6
.LVL77:
.L46:
	.loc 1 294 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL78:
	.loc 1 295 0
	beqz.n	a5, .L40
	.loc 1 295 0 is_stmt 0 discriminator 1
	l32i.n	a5, a3, 0
	beq	a2, a5, .L40
.LVL79:
.LBB43:
.LBB44:
.LBB45:
.LBB46:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a5
 extui a5,a5,13,1
# 0 "" 2
#NO_APP
.LBE46:
.LBE45:
	.loc 1 370 0
	l32r	a6, .LC36
	l32r	a7, .LC35
	add.n	a5, a6, a5
.L51:
	.loc 1 362 0
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL80:
	.loc 1 363 0
	l32r	a6, .LC34
	l8ui	a8, a6, 0
	extui	a8, a8, 0, 8
	beqz.n	a8, .L48
	.loc 1 366 0
	l32i.n	a6, a7, 0
	bltu	a2, a6, .L49
	j	.L71
.L49:
	.loc 1 370 0
	l8ui	a6, a5, 0
	extui	a6, a6, 0, 8
	beqz.n	a6, .L50
	.loc 1 371 0
	movi.n	a6, 0
	memw
	s8i	a6, a5, 0
.L50:
	.loc 1 373 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL81:
	j	.L51
.L48:
	.loc 1 375 0
	s32i.n	a2, a7, 0
	.loc 1 377 0
	l32r	a7, .LC37
	.loc 1 376 0
	movi.n	a5, 1
	.loc 1 379 0
	mov.n	a10, a4
	.loc 1 376 0
	memw
	s8i	a5, a6, 0
	.loc 1 377 0
	l8ui	a5, a7, 0
.LVL82:
	.loc 1 378 0
	s8i	a8, a7, 0
.LVL83:
	.loc 1 379 0
	call8	vTaskExitCritical
.LVL84:
	.loc 1 381 0
	l32r	a8, .LC38
	slli	a7, a2, 4
	add.n	a7, a8, a7
	l32i.n	a10, a7, 0
	l32i.n	a9, a7, 4
	s32i.n	a10, sp, 16
	l32i.n	a10, a7, 8
	l32i.n	a7, a7, 12
	s32i.n	a9, sp, 20
	s32i.n	a10, sp, 24
	s32i.n	a7, sp, 28
	.loc 1 384 0
	bnez.n	a5, .L52
	.loc 1 385 0
	l32i.n	a5, a3, 0
.LVL85:
	slli	a5, a5, 4
	add.n	a5, a8, a5
	l32i.n	a7, a5, 0
	l32i.n	a8, a5, 4
	s32i.n	a7, sp, 0
	l32i.n	a7, a5, 8
	l32i.n	a5, a5, 12
	s32i.n	a8, sp, 4
	s32i.n	a7, sp, 8
	s32i.n	a5, sp, 12
	j	.L53
.LVL86:
.L52:
	.loc 1 387 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_get_config
.LVL87:
.L53:
	.loc 1 390 0
	l32i.n	a7, sp, 28
	l32i.n	a5, sp, 12
	beq	a7, a5, .L55
.LVL88:
.LBB47:
	.loc 1 397 0
	bgeu	a7, a5, .L56
	.loc 1 398 0
	mov.n	a11, a7
	mov.n	a10, a5
	call8	on_freq_update
.LVL89:
.L56:
	.loc 1 400 0
	addi	a10, sp, 16
	call8	rtc_clk_cpu_freq_set_config_fast
.LVL90:
	.loc 1 401 0
	bltu	a7, a5, .L55
	.loc 1 402 0
	mov.n	a11, a7
	mov.n	a10, a5
	call8	on_freq_update
.LVL91:
.L55:
.LBE47:
	.loc 1 407 0
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL92:
	.loc 1 408 0
	s32i.n	a2, a3, 0
	.loc 1 409 0
	movi.n	a2, 0
	memw
	s8i	a2, a6, 0
.L71:
	.loc 1 410 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL93:
.L40:
	retw.n
.LBE44:
.LBE43:
.LFE24:
	.size	esp_pm_impl_switch_mode, .-esp_pm_impl_switch_mode
	.section	.text.esp_pm_impl_idle_hook,"ax",@progbits
	.literal_position
	.literal .LC39, s_core_idle
	.literal .LC40, s_rtos_lock_handle
	.align	4
	.global	esp_pm_impl_idle_hook
	.type	esp_pm_impl_idle_hook, @function
esp_pm_impl_idle_hook:
.LFB29:
	.loc 1 445 0
	entry	sp, 32
.LCFI4:
.LBB48:
.LBB49:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL94:
#NO_APP
.LBE49:
.LBE48:
.LBB50:
.LBB51:
.LBB52:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a3, 3

# 0 "" 2
.LVL95:
#NO_APP
.LBE52:
.LBE51:
.LBE50:
	.loc 1 448 0
	l32r	a2, .LC39
	add.n	a2, a2, a8
	l8ui	a9, a2, 0
	bnez.n	a9, .L73
	.loc 1 449 0
	l32r	a9, .LC40
	addx4	a8, a8, a9
.LVL96:
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_release
.LVL97:
	.loc 1 450 0
	movi.n	a8, 1
	s8i	a8, a2, 0
.L73:
	.loc 1 452 0
	mov.n	a10, a3
	call8	_xtos_set_intlevel
.LVL98:
	retw.n
.LFE29:
	.size	esp_pm_impl_idle_hook, .-esp_pm_impl_idle_hook
	.section	.iram1
	.literal_position
	.literal .LC41, s_core_idle
	.literal .LC42, s_rtos_lock_handle
	.align	4
	.global	esp_pm_impl_isr_hook
	.type	esp_pm_impl_isr_hook, @function
esp_pm_impl_isr_hook:
.LFB30:
	.loc 1 457 0
	entry	sp, 32
.LCFI5:
.LBB59:
.LBB60:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL99:
#NO_APP
.LBE60:
.LBE59:
.LBB61:
.LBB62:
.LBB63:
.LBB64:
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL100:
#NO_APP
.LBE64:
.LBE63:
	.loc 1 437 0
	l32r	a2, .LC41
	add.n	a2, a2, a8
	l8ui	a9, a2, 0
	beqz.n	a9, .L74
	.loc 1 439 0
	l32r	a9, .LC42
	addx4	a8, a8, a9
.LVL101:
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_acquire
.LVL102:
	.loc 1 440 0
	movi.n	a8, 0
	s8i	a8, a2, 0
.L74:
	retw.n
.LBE62:
.LBE61:
.LFE30:
	.size	esp_pm_impl_isr_hook, .-esp_pm_impl_isr_hook
	.section	.text.esp_pm_impl_waiti,"ax",@progbits
	.align	4
	.global	esp_pm_impl_waiti
	.type	esp_pm_impl_waiti, @function
esp_pm_impl_waiti:
.LFB31:
	.loc 1 474 0
	entry	sp, 32
.LCFI6:
	.loc 1 487 0
#APP
# 487 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_esp32.c" 1
	waiti 0
# 0 "" 2
#NO_APP
	retw.n
.LFE31:
	.size	esp_pm_impl_waiti, .-esp_pm_impl_waiti
	.section	.rodata.str1.1
.LC46:
	.string	"rtos0"
.LC48:
	.string	"esp_pm_lock_create(ESP_PM_CPU_FREQ_MAX, 0, \"rtos0\", &s_rtos_lock_handle[0])"
.LC51:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_esp32.c"
.LC53:
	.string	"esp_pm_lock_acquire(s_rtos_lock_handle[0])"
.LC55:
	.string	"false && \"unsupported frequency\""
	.section	.text.esp_pm_impl_init,"ax",@progbits
	.literal_position
	.literal .LC45, s_rtos_lock_handle
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC50, __func__$5621
	.literal .LC52, .LC51
	.literal .LC54, .LC53
	.literal .LC56, .LC55
	.literal .LC57, s_cpu_freq_by_mode
	.align	4
	.global	esp_pm_impl_init
	.type	esp_pm_impl_init, @function
esp_pm_impl_init:
.LFB32:
	.loc 1 593 0
	entry	sp, 48
.LCFI7:
.LBB65:
	.loc 1 597 0
	l32r	a2, .LC45
	movi.n	a11, 0
	l32r	a12, .LC47
	mov.n	a13, a2
	mov.n	a10, a11
	call8	esp_pm_lock_create
.LVL103:
	beqz.n	a10, .L81
	.loc 1 597 0 is_stmt 0 discriminator 1
	l32r	a14, .LC49
	l32r	a13, .LC50
	movi	a12, 0x256
	l32r	a11, .LC52
	j	.L87
.L81:
.LBE65:
.LBB66:
	.loc 1 599 0 is_stmt 1
	l32i.n	a10, a2, 0
.LVL104:
	call8	esp_pm_lock_acquire
.LVL105:
	mov.n	a2, a10
.LVL106:
	beqz.n	a10, .L82
	.loc 1 599 0 is_stmt 0 discriminator 1
	l32r	a14, .LC54
	l32r	a13, .LC50
	l32r	a11, .LC52
	movi	a12, 0x257
.LVL107:
.L87:
	call8	_esp_error_check_failed
.LVL108:
.L82:
.LBE66:
	.loc 1 610 0 is_stmt 1
	mov.n	a11, sp
	movi	a10, 0xa0
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL109:
.LBB67:
	.loc 1 614 0
	l32r	a11, .LC57
	movi.n	a9, 4
.LBE67:
	.loc 1 610 0
	bnez.n	a10, .L85
	.loc 1 611 0
	l32r	a13, .LC56
	l32r	a12, .LC50
	l32r	a10, .LC52
	movi	a11, 0x263
	call8	__assert_func
.LVL110:
.L85:
.LBB68:
	.loc 1 614 0 discriminator 3
	l32i.n	a10, sp, 0
	add.n	a8, a2, a11
	s32i.n	a10, a8, 0
	l32i.n	a10, sp, 4
	addi	a2, a2, 16
	s32i.n	a10, a8, 4
	l32i.n	a10, sp, 8
	s32i.n	a10, a8, 8
	l32i.n	a10, sp, 12
	s32i.n	a10, a8, 12
.LVL111:
	addi.n	a9, a9, -1
	bnez.n	a9, .L85
.LBE68:
	.loc 1 616 0
	retw.n
.LFE32:
	.size	esp_pm_impl_init, .-esp_pm_impl_init
	.section	.rodata.__func__$5621,"a",@progbits
	.type	__func__$5621, @object
	.size	__func__$5621, 17
__func__$5621:
	.string	"esp_pm_impl_init"
	.section	.bss.s_config_changed,"aw",@nobits
	.type	s_config_changed, @object
	.size	s_config_changed, 1
s_config_changed:
	.zero	1
	.section	.bss.s_light_sleep_en,"aw",@nobits
	.type	s_light_sleep_en, @object
	.size	s_light_sleep_en, 1
s_light_sleep_en:
	.zero	1
	.comm	s_cpu_freq_by_mode,64,4
	.section	.bss.s_rtos_lock_handle,"aw",@nobits
	.align	4
	.type	s_rtos_lock_handle, @object
	.size	s_rtos_lock_handle, 4
s_rtos_lock_handle:
	.zero	4
	.section	.bss.s_core_idle,"aw",@nobits
	.type	s_core_idle, @object
	.size	s_core_idle, 1
s_core_idle:
	.zero	1
	.section	.bss.s_need_update_ccompare,"aw",@nobits
	.type	s_need_update_ccompare, @object
	.size	s_need_update_ccompare, 1
s_need_update_ccompare:
	.zero	1
	.section	.bss.s_ccount_mul,"aw",@nobits
	.align	4
	.type	s_ccount_mul, @object
	.size	s_ccount_mul, 4
s_ccount_mul:
	.zero	4
	.section	.bss.s_ccount_div,"aw",@nobits
	.align	4
	.type	s_ccount_div, @object
	.size	s_ccount_div, 4
s_ccount_div:
	.zero	4
	.section	.bss.s_mode_mask,"aw",@nobits
	.align	4
	.type	s_mode_mask, @object
	.size	s_mode_mask, 4
s_mode_mask:
	.zero	4
	.section	.bss.s_mode_lock_counts,"aw",@nobits
	.align	4
	.type	s_mode_lock_counts, @object
	.size	s_mode_lock_counts, 16
s_mode_lock_counts:
	.zero	16
	.section	.data.s_new_mode,"aw",@progbits
	.align	4
	.type	s_new_mode, @object
	.size	s_new_mode, 4
s_new_mode:
	.word	3
	.section	.bss.s_is_switching,"aw",@nobits
	.type	s_is_switching, @object
	.size	s_is_switching, 1
s_is_switching:
	.zero	1
	.section	.data.s_mode,"aw",@progbits
	.align	4
	.type	s_mode, @object
	.size	s_mode, 4
s_mode:
	.word	3
	.section	.data.s_switch_lock,"aw",@progbits
	.align	4
	.type	s_switch_lock, @object
	.size	s_switch_lock, 8
s_switch_lock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x40
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
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI6-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI7-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp32/pm.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_pm.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_impl.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_timer.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_timer_impl.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe52
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0xc
	.4byte	.LASF141
	.4byte	.LASF142
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0xd8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.byte	0x19
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x1d
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2c
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2d
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x38
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x18
	.4byte	0xb7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x46
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x4c
	.4byte	0xe3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x51
	.4byte	0x13e
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x56
	.4byte	0x119
	.uleb128 0xa
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.4byte	0x182
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x5c
	.4byte	0x13e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x5d
	.4byte	0xc2
	.byte	0x4
	.uleb128 0xc
	.string	"div"
	.byte	0x8
	.byte	0x5e
	.4byte	0xc2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5f
	.4byte	0xc2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x60
	.4byte	0x149
	.uleb128 0xa
	.byte	0x14
	.byte	0x9
	.byte	0x21
	.4byte	0x1d2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x22
	.4byte	0x10e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x9
	.byte	0x23
	.4byte	0x45
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x24
	.4byte	0x10e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x25
	.4byte	0x45
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x26
	.4byte	0x1d2
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF39
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x27
	.4byte	0x18d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x1e
	.4byte	0x203
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0x2e
	.4byte	0x1e4
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xa
	.byte	0x3f
	.4byte	0x219
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21f
	.uleb128 0xd
	.4byte	.LASF143
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x1f
	.4byte	0x255
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0x276
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0x8a
	.4byte	0xc2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x3
	.byte	0x8f
	.4byte	0xc2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x3
	.byte	0x94
	.4byte	0x255
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x21
	.4byte	0x2b1
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xc
	.byte	0x27
	.4byte	0x286
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xc
	.byte	0x35
	.4byte	0xcd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x3a
	.4byte	0x2e0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xc
	.byte	0x3d
	.4byte	0x2c7
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x2
	.byte	0xce
	.4byte	0xc2
	.byte	0x3
	.4byte	0x306
	.uleb128 0xf
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x45
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x3
	.byte	0xf8
	.4byte	0x25
	.byte	0x3
	.4byte	0x32f
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.uleb128 0x11
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1a4
	.byte	0x1
	.4byte	0x3af
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xc2
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1a7
	.4byte	0xc2
	.uleb128 0x14
	.4byte	0x366
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x45
	.byte	0
	.uleb128 0x14
	.4byte	0x378
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x45
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xc2
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xc2
	.uleb128 0x11
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xc2
	.uleb128 0x11
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x45
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x132
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fa
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x132
	.4byte	0xc2
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x132
	.4byte	0xc2
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x134
	.4byte	0xc2
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x135
	.4byte	0xc2
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x13e
	.4byte	0x45
	.uleb128 0x18
	.4byte	0x2eb
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.2byte	0x13e
	.4byte	0x435
	.uleb128 0x19
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x1a
	.4byte	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x32f
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.2byte	0x148
	.4byte	0x4d6
	.uleb128 0x19
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x1b
	.4byte	0x33c
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	0x348
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x47b
	.uleb128 0x1b
	.4byte	0x359
	.4byte	.LLST4
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x492
	.uleb128 0x1b
	.4byte	0x36b
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x1b
	.4byte	0x379
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x385
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x1b
	.4byte	0x392
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x1b
	.4byte	0x39f
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL4
	.4byte	0xd96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x15
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x1
	.byte	0x99
	.4byte	0x2b1
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x539
	.uleb128 0x20
	.4byte	.LASF81
	.byte	0x1
	.byte	0x99
	.4byte	0x203
	.4byte	.LLST12
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0x99
	.4byte	0x45
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0xda1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa8
	.4byte	0xd8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x729
	.uleb128 0x20
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa8
	.4byte	0xb0
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.byte	0xae
	.4byte	0x729
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb5
	.4byte	0x45
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb6
	.4byte	0x45
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x1
	.byte	0xc5
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LASF87
	.byte	0x1
	.byte	0xcb
	.4byte	0x45
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	.LASF88
	.byte	0x1
	.byte	0xd6
	.4byte	0x45
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LVL24
	.4byte	0xdac
	.uleb128 0x22
	.4byte	.LVL28
	.4byte	0xdac
	.uleb128 0x25
	.4byte	.LVL30
	.4byte	0xdb8
	.4byte	0x5e6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL31
	.4byte	0xdc4
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0xdcf
	.uleb128 0x22
	.4byte	.LVL33
	.4byte	0xdc4
	.uleb128 0x25
	.4byte	.LVL34
	.4byte	0xdda
	.4byte	0x61a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL37
	.4byte	0xdb8
	.4byte	0x634
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL38
	.4byte	0xdc4
	.uleb128 0x25
	.4byte	.LVL39
	.4byte	0xdda
	.4byte	0x66b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL42
	.4byte	0xdc4
	.uleb128 0x25
	.4byte	.LVL44
	.4byte	0xdda
	.4byte	0x6b0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0xde5
	.4byte	0x6c4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL46
	.4byte	0xdb8
	.4byte	0x6e1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cpu_freq_by_mode+48
	.byte	0
	.uleb128 0x25
	.4byte	.LVL47
	.4byte	0xdb8
	.4byte	0x6fe
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cpu_freq_by_mode+32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL49
	.4byte	0xdb8
	.4byte	0x718
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL53
	.4byte	0xdf0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x72f
	.uleb128 0x6
	.4byte	0x1d9
	.uleb128 0x26
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf8
	.4byte	0x2b1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x165
	.byte	0x1
	.4byte	0x7b0
	.uleb128 0x28
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x165
	.4byte	0x2b1
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x167
	.4byte	0x7b0
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x179
	.4byte	0x1d2
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x17d
	.4byte	0x182
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x17e
	.4byte	0x182
	.uleb128 0x11
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x187
	.4byte	0xc2
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x188
	.4byte	0xc2
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x18a
	.4byte	0x1d2
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x45
	.uleb128 0x29
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x106
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b9
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x106
	.4byte	0x2b1
	.4byte	.LLST19
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x107
	.4byte	0x2e0
	.4byte	.LLST20
	.uleb128 0x2a
	.string	"now"
	.byte	0x1
	.2byte	0x107
	.4byte	0x2bc
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x109
	.4byte	0x1d2
	.4byte	.LLST22
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc2
	.4byte	.LLST23
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x10c
	.4byte	0xc2
	.4byte	.LLST24
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x11b
	.4byte	0x2b1
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	0x734
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.2byte	0x11d
	.uleb128 0x18
	.4byte	0x740
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x128
	.4byte	0x994
	.uleb128 0x2c
	.4byte	0x74d
	.uleb128 0x19
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x1a
	.4byte	0x759
	.uleb128 0x1b
	.4byte	0x765
	.4byte	.LLST26
	.uleb128 0x2d
	.4byte	0x771
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	0x77d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	0x2eb
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.2byte	0x167
	.4byte	0x8b1
	.uleb128 0x19
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x2d
	.4byte	0x2fb
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x91e
	.uleb128 0x1b
	.4byte	0x78a
	.4byte	.LLST27
	.uleb128 0x1b
	.4byte	0x796
	.4byte	.LLST28
	.uleb128 0x1b
	.4byte	0x7a2
	.4byte	.LLST29
	.uleb128 0x25
	.4byte	.LVL89
	.4byte	0x3af
	.4byte	0x8f3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL90
	.4byte	0xdfb
	.4byte	0x907
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL91
	.4byte	0x3af
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL80
	.4byte	0xde5
	.4byte	0x932
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL81
	.4byte	0xdf0
	.4byte	0x946
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL84
	.4byte	0xdf0
	.4byte	0x95a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL87
	.4byte	0xe07
	.4byte	0x96e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.4byte	.LVL92
	.4byte	0xde5
	.4byte	0x982
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL93
	.4byte	0xdf0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL57
	.4byte	0xde5
	.4byte	0x9a8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0xdf0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1bc
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa64
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1be
	.4byte	0x45
	.4byte	.LLST30
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xc2
	.uleb128 0x18
	.4byte	0x2eb
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x1be
	.4byte	0xa13
	.uleb128 0x19
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x1b
	.4byte	0x2fb
	.4byte	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x306
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xa4a
	.uleb128 0x19
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.uleb128 0x2d
	.4byte	0x316
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x2d
	.4byte	0x322
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL97
	.4byte	0xe13
	.uleb128 0x1d
	.4byte	.LVL98
	.4byte	0xe1e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1
	.4byte	0xa7e
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x45
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1c8
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1a
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x45
	.uleb128 0x18
	.4byte	0x2eb
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xac4
	.uleb128 0x19
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.uleb128 0x1a
	.4byte	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0xa64
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.2byte	0x1d4
	.uleb128 0x19
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.uleb128 0x1b
	.4byte	0xa71
	.4byte	.LLST32
	.uleb128 0x18
	.4byte	0x2eb
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xb0e
	.uleb128 0x19
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.uleb128 0x1b
	.4byte	0x2fb
	.4byte	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL102
	.4byte	0xe29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1d9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x250
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2c
	.uleb128 0x31
	.4byte	.LASF105
	.4byte	0xc3c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5621
	.uleb128 0x32
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x261
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.4byte	0xba1
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x255
	.4byte	0xd8
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LVL103
	.4byte	0xe34
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.4byte	0xbd1
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x257
	.4byte	0xd8
	.4byte	.LLST35
	.uleb128 0x22
	.4byte	.LVL105
	.4byte	0xe29
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0xe3f
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0
	.4byte	0xbe5
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0x265
	.4byte	0x33
	.byte	0
	.uleb128 0x25
	.4byte	.LVL109
	.4byte	0xdb8
	.4byte	0xbff
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL110
	.4byte	0xe4a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x263
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5621
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x9e
	.4byte	0xc3c
	.uleb128 0x36
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xc2c
	.uleb128 0x24
	.4byte	.LASF108
	.byte	0x1
	.byte	0x40
	.4byte	0x276
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.uleb128 0x24
	.4byte	.LASF109
	.byte	0x1
	.byte	0x43
	.4byte	0x2b1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mode
	.uleb128 0x24
	.4byte	.LASF110
	.byte	0x1
	.byte	0x45
	.4byte	0xc74
	.uleb128 0x5
	.byte	0x3
	.4byte	s_is_switching
	.uleb128 0x37
	.4byte	0x1d2
	.uleb128 0x24
	.4byte	.LASF111
	.byte	0x1
	.byte	0x47
	.4byte	0x2b1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_new_mode
	.uleb128 0x35
	.4byte	0x33
	.4byte	0xc9a
	.uleb128 0x36
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF112
	.byte	0x1
	.byte	0x49
	.4byte	0xc8a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mode_lock_counts
	.uleb128 0x24
	.4byte	.LASF113
	.byte	0x1
	.byte	0x4b
	.4byte	0xc2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mode_mask
	.uleb128 0x24
	.4byte	.LASF114
	.byte	0x1
	.byte	0x50
	.4byte	0xc2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ccount_div
	.uleb128 0x24
	.4byte	.LASF115
	.byte	0x1
	.byte	0x51
	.4byte	0xc2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ccount_mul
	.uleb128 0x35
	.4byte	0x1d2
	.4byte	0xcee
	.uleb128 0x36
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF116
	.byte	0x1
	.byte	0x67
	.4byte	0xcff
	.uleb128 0x5
	.byte	0x3
	.4byte	s_need_update_ccompare
	.uleb128 0x37
	.4byte	0xcde
	.uleb128 0x24
	.4byte	.LASF117
	.byte	0x1
	.byte	0x6c
	.4byte	0xcde
	.uleb128 0x5
	.byte	0x3
	.4byte	s_core_idle
	.uleb128 0x35
	.4byte	0x20e
	.4byte	0xd25
	.uleb128 0x36
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF118
	.byte	0x1
	.byte	0x71
	.4byte	0xd15
	.uleb128 0x5
	.byte	0x3
	.4byte	s_rtos_lock_handle
	.uleb128 0x24
	.4byte	.LASF119
	.byte	0x1
	.byte	0x79
	.4byte	0x1d2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_light_sleep_en
	.uleb128 0x24
	.4byte	.LASF120
	.byte	0x1
	.byte	0x80
	.4byte	0x1d2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_config_changed
	.uleb128 0x38
	.string	"TAG"
	.byte	0x1
	.byte	0x91
	.4byte	0x281
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC12
	.byte	0x9f
	.uleb128 0x39
	.4byte	.LASF121
	.byte	0xd
	.byte	0x9a
	.4byte	0x25
	.uleb128 0x35
	.4byte	0x182
	.4byte	0xd85
	.uleb128 0x36
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF122
	.byte	0x1
	.byte	0x76
	.4byte	0xd75
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cpu_freq_by_mode
	.uleb128 0x3b
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xe
	.byte	0x3d
	.uleb128 0x3b
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xf
	.byte	0x47
	.uleb128 0x3c
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x170
	.uleb128 0x3c
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x18b
	.uleb128 0x3b
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xb
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x8
	.byte	0xb2
	.uleb128 0x3b
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xb
	.byte	0x6b
	.uleb128 0x3b
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x3
	.byte	0xda
	.uleb128 0x3b
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x3
	.byte	0xd9
	.uleb128 0x3c
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x1af
	.uleb128 0x3c
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x1b5
	.uleb128 0x3b
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xa
	.byte	0x8a
	.uleb128 0x3b
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x10
	.byte	0x99
	.uleb128 0x3b
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xa
	.byte	0x72
	.uleb128 0x3b
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xa
	.byte	0x59
	.uleb128 0x3b
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x7
	.byte	0x4f
	.uleb128 0x3b
	.4byte	.LASF139
	.4byte	.LASF139
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x3
	.4byte	s_ccount_div
	.4byte	.LVL16
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x3
	.4byte	s_ccount_mul
	.4byte	.LVL15
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4-1
	.4byte	.LVL11
	.2byte	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1a
	.byte	0x3
	.4byte	s_ccount_div
	.byte	0x6
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE25
	.2byte	0x17
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL9
	.2byte	0x16
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1a
	.byte	0x3
	.4byte	s_ccount_mul
	.byte	0x6
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE25
	.2byte	0x17
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x4
	.byte	0x7b
	.sleb128 1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x10
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x3
	.4byte	s_ccount_div
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL56
	.4byte	.LFE24
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL58
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x6
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE24
	.2byte	0x6
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x5
	.byte	0x3
	.4byte	s_mode
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	s_light_sleep_en
	.byte	0x94
	.byte	0x1
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x5
	.byte	0x3
	.4byte	s_config_changed
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0xe
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF136:
	.string	"esp_pm_lock_acquire"
.LASF53:
	.string	"count"
.LASF42:
	.string	"ESP_PM_APB_FREQ_MAX"
.LASF72:
	.string	"__ccompare"
.LASF117:
	.string	"s_core_idle"
.LASF6:
	.string	"size_t"
.LASF25:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF59:
	.string	"PM_MODE_COUNT"
.LASF113:
	.string	"s_mode_mask"
.LASF37:
	.string	"min_freq_mhz"
.LASF30:
	.string	"source"
.LASF81:
	.string	"type"
.LASF61:
	.string	"pm_time_t"
.LASF92:
	.string	"old_config"
.LASF103:
	.string	"esp_pm_impl_isr_hook"
.LASF69:
	.string	"ccount"
.LASF1:
	.string	"long long unsigned int"
.LASF96:
	.string	"lock_or_unlock"
.LASF32:
	.string	"freq_mhz"
.LASF73:
	.string	"diff"
.LASF115:
	.string	"s_ccount_mul"
.LASF29:
	.string	"rtc_cpu_freq_src_t"
.LASF102:
	.string	"esp_pm_impl_idle_hook"
.LASF60:
	.string	"pm_mode_t"
.LASF75:
	.string	"new_ccompare"
.LASF88:
	.string	"apb_max_freq"
.LASF9:
	.string	"__int64_t"
.LASF50:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF70:
	.string	"ccompare"
.LASF107:
	.string	"__err_rc"
.LASF114:
	.string	"s_ccount_div"
.LASF44:
	.string	"esp_pm_lock_type_t"
.LASF106:
	.string	"default_config"
.LASF67:
	.string	"state"
.LASF131:
	.string	"vTaskExitCritical"
.LASF11:
	.string	"long int"
.LASF142:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF41:
	.string	"ESP_PM_CPU_FREQ_MAX"
.LASF99:
	.string	"new_mode"
.LASF129:
	.string	"esp_log_write"
.LASF135:
	.string	"_xtos_set_intlevel"
.LASF34:
	.string	"max_cpu_freq"
.LASF143:
	.string	"esp_pm_lock"
.LASF74:
	.string	"diff_scaled"
.LASF144:
	.string	"on_freq_update"
.LASF86:
	.string	"freq_config"
.LASF8:
	.string	"__uint32_t"
.LASF55:
	.string	"PM_MODE_LIGHT_SLEEP"
.LASF68:
	.string	"__tmp"
.LASF122:
	.string	"s_cpu_freq_by_mode"
.LASF130:
	.string	"vTaskEnterCritical"
.LASF58:
	.string	"PM_MODE_CPU_MAX"
.LASF138:
	.string	"_esp_error_check_failed"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"RTC_CPU_FREQ_160M"
.LASF84:
	.string	"vconfig"
.LASF57:
	.string	"PM_MODE_APB_MAX"
.LASF13:
	.string	"long unsigned int"
.LASF83:
	.string	"esp_pm_configure"
.LASF71:
	.string	"__ccount"
.LASF140:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF97:
	.string	"need_switch"
.LASF56:
	.string	"PM_MODE_APB_MIN"
.LASF80:
	.string	"core_id"
.LASF2:
	.string	"short unsigned int"
.LASF20:
	.string	"RTC_CPU_FREQ_80M"
.LASF36:
	.string	"min_cpu_freq"
.LASF54:
	.string	"portMUX_TYPE"
.LASF145:
	.string	"get_lowest_allowed_mode"
.LASF87:
	.string	"xtal_freq_mhz"
.LASF65:
	.string	"xPortGetCoreID"
.LASF24:
	.string	"rtc_cpu_freq_t"
.LASF116:
	.string	"s_need_update_ccompare"
.LASF63:
	.string	"MODE_UNLOCK"
.LASF49:
	.string	"ESP_LOG_INFO"
.LASF110:
	.string	"s_is_switching"
.LASF77:
	.string	"ticks_per_us"
.LASF134:
	.string	"esp_pm_lock_release"
.LASF93:
	.string	"new_ticks_per_us"
.LASF12:
	.string	"sizetype"
.LASF118:
	.string	"s_rtos_lock_handle"
.LASF23:
	.string	"RTC_CPU_FREQ_2M"
.LASF111:
	.string	"s_new_mode"
.LASF133:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF43:
	.string	"ESP_PM_NO_LIGHT_SLEEP"
.LASF101:
	.string	"leave_idle"
.LASF94:
	.string	"switch_down"
.LASF89:
	.string	"do_switch"
.LASF35:
	.string	"max_freq_mhz"
.LASF98:
	.string	"mode_mask"
.LASF27:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF125:
	.string	"rtc_clk_cpu_freq_value"
.LASF38:
	.string	"light_sleep_enable"
.LASF39:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF19:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF5:
	.string	"short int"
.LASF127:
	.string	"esp_log_timestamp"
.LASF47:
	.string	"ESP_LOG_ERROR"
.LASF141:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_esp32.c"
.LASF105:
	.string	"__func__"
.LASF64:
	.string	"pm_mode_switch_t"
.LASF82:
	.string	"esp_pm_impl_get_mode"
.LASF28:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF16:
	.string	"uint32_t"
.LASF52:
	.string	"owner"
.LASF31:
	.string	"source_freq_mhz"
.LASF14:
	.string	"char"
.LASF51:
	.string	"ESP_LOG_VERBOSE"
.LASF100:
	.string	"update_ccompare"
.LASF121:
	.string	"_xt_tick_divisor"
.LASF85:
	.string	"config"
.LASF119:
	.string	"s_light_sleep_en"
.LASF120:
	.string	"s_config_changed"
.LASF46:
	.string	"ESP_LOG_NONE"
.LASF124:
	.string	"abort"
.LASF128:
	.string	"rtc_clk_xtal_freq_get"
.LASF76:
	.string	"old_ticks_per_us"
.LASF7:
	.string	"__int32_t"
.LASF78:
	.string	"old_apb_ticks_per_us"
.LASF62:
	.string	"MODE_LOCK"
.LASF108:
	.string	"s_switch_lock"
.LASF22:
	.string	"RTC_CPU_FREQ_240M"
.LASF104:
	.string	"esp_pm_impl_init"
.LASF4:
	.string	"unsigned char"
.LASF33:
	.string	"rtc_cpu_freq_config_t"
.LASF40:
	.string	"esp_pm_config_esp32_t"
.LASF126:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF112:
	.string	"s_mode_lock_counts"
.LASF137:
	.string	"esp_pm_lock_create"
.LASF48:
	.string	"ESP_LOG_WARN"
.LASF95:
	.string	"mode"
.LASF18:
	.string	"esp_err_t"
.LASF146:
	.string	"esp_pm_impl_switch_mode"
.LASF45:
	.string	"esp_pm_lock_handle_t"
.LASF90:
	.string	"config_changed"
.LASF139:
	.string	"__assert_func"
.LASF26:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF147:
	.string	"esp_pm_impl_waiti"
.LASF17:
	.string	"int64_t"
.LASF132:
	.string	"rtc_clk_cpu_freq_set_config_fast"
.LASF79:
	.string	"apb_ticks_per_us"
.LASF66:
	.string	"portENTER_CRITICAL_NESTED"
.LASF123:
	.string	"esp_timer_impl_update_apb_freq"
.LASF91:
	.string	"new_config"
.LASF109:
	.string	"s_mode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
