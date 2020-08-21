	.file	"task_wdt.c"
	.text
.Ltext0:
	.section	.text.find_task_in_twdt_list,"ax",@progbits
	.literal_position
	.literal .LC0, twdt_config
	.align	4
	.type	find_task_in_twdt_list, @function
find_task_in_twdt_list:
.LFB22:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/task_wdt.c"
	.loc 1 90 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 92 0
	movi.n	a8, 1
	s8i	a8, a3, 0
.LBB2:
	.loc 1 93 0
	l32r	a8, .LC0
.LBE2:
	.loc 1 91 0
	movi.n	a9, 0
.LBB3:
	.loc 1 93 0
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
.LVL2:
	j	.L2
.LVL3:
.L4:
	.loc 1 94 0
	l32i.n	a10, a8, 0
	beq	a10, a2, .L5
	.loc 1 97 0
	l8ui	a10, a8, 4
	bnez.n	a10, .L3
	.loc 1 98 0
	s8i	a10, a3, 0
	j	.L3
.L5:
	mov.n	a9, a8
.L3:
	.loc 1 93 0 discriminator 2
	l32i.n	a8, a8, 8
.LVL4:
.L2:
	.loc 1 93 0 discriminator 1
	bnez.n	a8, .L4
.LBE3:
	.loc 1 103 0
	mov.n	a2, a9
.LVL5:
	retw.n
.LFE22:
	.size	find_task_in_twdt_list, .-find_task_in_twdt_list
	.section	.text.reset_hw_timer,"ax",@progbits
	.literal_position
	.literal .LC1, TIMERG0
	.literal .LC2, 1356348065
	.literal .LC3, twdt_config
	.align	4
	.type	reset_hw_timer, @function
reset_hw_timer:
.LFB23:
	.loc 1 110 0
	entry	sp, 32
.LCFI1:
	.loc 1 112 0
	l32r	a8, .LC1
	l32r	a9, .LC2
	memw
	s32i	a9, a8, 100
	.loc 1 113 0
	movi.n	a9, 1
	memw
	s32i	a9, a8, 96
	.loc 1 114 0
	movi.n	a9, 0
	memw
	s32i	a9, a8, 100
.LBB4:
	.loc 1 116 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
.LVL6:
	j	.L7
.L8:
	.loc 1 117 0 discriminator 3
	s8i	a9, a8, 4
	.loc 1 116 0 discriminator 3
	l32i.n	a8, a8, 8
.LVL7:
.L7:
	.loc 1 116 0 discriminator 1
	bnez.n	a8, .L8
.LBE4:
	.loc 1 119 0
	retw.n
.LFE23:
	.size	reset_hw_timer, .-reset_hw_timer
	.section	.text.esp_task_wdt_isr_user_handler,"ax",@progbits
	.align	4
	.weak	esp_task_wdt_isr_user_handler
	.type	esp_task_wdt_isr_user_handler, @function
esp_task_wdt_isr_user_handler:
.LFB24:
	.loc 1 128 0
	entry	sp, 32
.LCFI2:
	retw.n
.LFE24:
	.size	esp_task_wdt_isr_user_handler, .-esp_task_wdt_isr_user_handler
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC11:
	.string	"task_wdt"
.LC13:
	.string	"\033[0;31mE (%d) %s: Task watchdog got triggered. The following tasks did not reset the watchdog in time:\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s:  - %s (%s)\033[0m\n"
.LC19:
	.string	"\033[0;31mE (%d) %s: %s\033[0m\n"
.LC21:
	.string	"\033[0;31mE (%d) %s: CPU %d: %s\033[0m\n"
.LC23:
	.string	"\033[0;31mE (%d) %s: Aborting.\033[0m\n"
	.section	.text.task_wdt_isr,"ax",@progbits
	.literal_position
	.literal .LC4, __c$5819
	.literal .LC5, __c$5821
	.literal .LC6, __c$5823
	.literal .LC7, twdt_spinlock
	.literal .LC8, TIMERG0
	.literal .LC9, 1356348065
	.literal .LC10, twdt_config
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC15, 2147483647
	.literal .LC17, .LC16
	.literal .LC18, __c$5828
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.align	4
	.type	task_wdt_isr, @function
task_wdt_isr:
.LFB25:
	.loc 1 137 0
.LVL8:
	.loc 1 137 0
	entry	sp, 32
.LCFI3:
	.loc 1 138 0
	l32r	a4, .LC7
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL9:
	.loc 1 142 0
	l32r	a2, .LC8
.LVL10:
	l32r	a3, .LC9
	memw
	s32i	a3, a2, 100
	.loc 1 143 0
	movi.n	a3, 1
	memw
	s32i	a3, a2, 96
	.loc 1 144 0
	movi.n	a3, 0
	memw
	s32i	a3, a2, 100
	.loc 1 146 0
	memw
	l32i	a5, a2, 164
	movi.n	a3, 4
	or	a3, a5, a3
	.loc 1 153 0
	l32r	a5, .LC10
	.loc 1 146 0
	memw
	s32i	a3, a2, 164
	.loc 1 153 0
	l32i.n	a2, a5, 0
	l32i.n	a2, a2, 0
	bnez.n	a2, .L11
.L17:
	.loc 1 153 0 discriminator 1
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL11:
	retw.n
.L11:
	.loc 1 156 0 discriminator 1
	call8	esp_log_timestamp
.LVL12:
	l32r	a3, .LC12
	mov.n	a11, a10
	l32r	a10, .LC14
	mov.n	a12, a3
	call8	ets_printf
.LVL13:
	.loc 1 157 0 discriminator 1
	l32i.n	a2, a5, 0
	l32i.n	a2, a2, 0
.LVL14:
	j	.L12
.L16:
	.loc 1 158 0
	l8ui	a6, a2, 4
	bnez.n	a6, .L13
	.loc 1 159 0
	l32i.n	a10, a2, 0
	call8	xTaskGetAffinity
.LVL15:
	l32r	a8, .LC5
	l32r	a6, .LC4
	movnez	a6, a8, a10
.LVL16:
	.loc 1 160 0
	l32i.n	a10, a2, 0
	call8	xTaskGetAffinity
.LVL17:
	l32r	a8, .LC15
	l32r	a7, .LC6
	sub	a10, a10, a8
	moveqz	a6, a7, a10
.LVL18:
	.loc 1 161 0
	call8	esp_log_timestamp
.LVL19:
	mov.n	a7, a10
	l32i.n	a10, a2, 0
	call8	pcTaskGetTaskName
.LVL20:
	mov.n	a13, a10
	l32r	a10, .LC17
	mov.n	a14, a6
	mov.n	a12, a3
	mov.n	a11, a7
	call8	ets_printf
.LVL21:
.L13:
	.loc 1 157 0 discriminator 2
	l32i.n	a2, a2, 8
.LVL22:
.L12:
	.loc 1 157 0 discriminator 1
	bnez.n	a2, .L16
	.loc 1 164 0 discriminator 1
	call8	esp_log_timestamp
.LVL23:
	mov.n	a11, a10
	l32r	a13, .LC18
	l32r	a10, .LC20
	mov.n	a12, a3
	call8	ets_printf
.LVL24:
.LBB5:
	.loc 1 166 0 discriminator 1
	call8	esp_log_timestamp
.LVL25:
	mov.n	a6, a10
	mov.n	a10, a2
	call8	xTaskGetCurrentTaskHandleForCPU
.LVL26:
	call8	pcTaskGetTaskName
.LVL27:
	mov.n	a14, a10
	l32r	a10, .LC22
	mov.n	a13, a2
	mov.n	a12, a3
	mov.n	a11, a6
	call8	ets_printf
.LVL28:
.LBE5:
	.loc 1 169 0 discriminator 1
	call8	esp_task_wdt_isr_user_handler
.LVL29:
	.loc 1 170 0 discriminator 1
	l32i.n	a2, a5, 0
.LVL30:
	l8ui	a2, a2, 8
	beqz.n	a2, .L17
	.loc 1 171 0 discriminator 1
	call8	esp_log_timestamp
.LVL31:
	mov.n	a11, a10
	l32r	a10, .LC24
	mov.n	a12, a3
	call8	ets_printf
.LVL32:
	.loc 1 172 0 discriminator 1
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL33:
	.loc 1 173 0 discriminator 1
	movi.n	a10, 6
	call8	esp_reset_reason_set_hint
.LVL34:
	.loc 1 174 0 discriminator 1
	call8	abort
.LVL35:
.LFE25:
	.size	task_wdt_isr, .-task_wdt_isr
	.section	.rodata.str1.1
.LC28:
	.string	"esp_intr_alloc(ETS_TG0_WDT_LEVEL_INTR_SOURCE, 0, task_wdt_isr, NULL, &twdt_config->intr_handle)"
.LC31:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/task_wdt.c"
	.section	.text.esp_task_wdt_init,"ax",@progbits
	.literal_position
	.literal .LC25, twdt_spinlock
	.literal .LC26, twdt_config
	.literal .LC27, task_wdt_isr
	.literal .LC29, .LC28
	.literal .LC30, __func__$5839
	.literal .LC32, .LC31
	.literal .LC33, TIMERG0
	.literal .LC34, 1356348065
	.literal .LC35, 229376
	.literal .LC36, 1835008
	.literal .LC37, 2097152
	.literal .LC38, -1610612737
	.literal .LC39, 536870912
	.literal .LC40, 402653184
	.literal .LC41, -1673527296
	.literal .LC42, -2147483648
	.literal .LC43, 2147483647
	.align	4
	.global	esp_task_wdt_init
	.type	esp_task_wdt_init, @function
esp_task_wdt_init:
.LFB26:
	.loc 1 187 0
.LVL36:
	entry	sp, 32
.LCFI4:
	.loc 1 188 0
	l32r	a7, .LC25
	.loc 1 187 0
	extui	a3, a3, 0, 8
	.loc 1 188 0
	mov.n	a10, a7
	call8	vTaskEnterCritical
.LVL37:
	.loc 1 189 0
	l32r	a6, .LC26
	mov.n	a4, a7
	l32i.n	a5, a6, 0
	bnez.n	a5, .L24
	.loc 1 191 0
	movi.n	a11, 0x10
	movi.n	a10, 1
	call8	calloc
.LVL38:
	s32i.n	a10, a6, 0
	.loc 1 192 0
	bnez.n	a10, .L25
	.loc 1 192 0 discriminator 1
	mov.n	a10, a7
	call8	vTaskExitCritical
.LVL39:
	movi	a2, 0x101
.LVL40:
	retw.n
.LVL41:
.L25:
.LBB6:
	.loc 1 199 0
	l32r	a12, .LC27
.LBE6:
	.loc 1 196 0
	s8i	a3, a10, 8
	.loc 1 194 0
	s32i.n	a5, a10, 0
	.loc 1 195 0
	s32i.n	a2, a10, 4
.LBB7:
	.loc 1 199 0
	addi.n	a14, a10, 12
	mov.n	a13, a5
	mov.n	a11, a5
	movi.n	a10, 0x10
	call8	esp_intr_alloc
.LVL42:
	mov.n	a3, a10
.LVL43:
	.loc 1 199 0
	beqz.n	a10, .L27
	.loc 1 199 0 is_stmt 0 discriminator 1
	l32r	a14, .LC29
	l32r	a13, .LC30
	l32r	a11, .LC32
	movi	a12, 0xc7
	call8	_esp_error_check_failed
.LVL44:
.L27:
.LBE7:
	.loc 1 202 0 is_stmt 1
	movi.n	a10, 8
	call8	periph_module_enable
.LVL45:
	.loc 1 203 0
	l32r	a8, .LC33
	l32r	a2, .LC34
.LVL46:
	memw
	s32i	a2, a8, 100
	.loc 1 204 0
	memw
	l32i	a5, a8, 72
	l32r	a2, .LC35
	or	a2, a5, a2
	memw
	s32i	a2, a8, 72
	.loc 1 205 0
	memw
	l32i	a5, a8, 72
	l32r	a2, .LC36
	or	a2, a5, a2
	memw
	s32i	a2, a8, 72
	.loc 1 206 0
	memw
	l32i	a5, a8, 72
	l32r	a2, .LC37
	or	a2, a5, a2
	memw
	s32i	a2, a8, 72
	.loc 1 207 0
	memw
	l32i	a5, a8, 72
	l32r	a2, .LC38
	and	a5, a5, a2
	l32r	a2, .LC39
	or	a2, a5, a2
	memw
	s32i	a2, a8, 72
	.loc 1 208 0
	memw
	l32i	a5, a8, 72
	l32r	a2, .LC40
	or	a2, a5, a2
	memw
	s32i	a2, a8, 72
	.loc 1 209 0
	memw
	l32i	a2, a8, 76
	extui	a5, a2, 0, 16
	l32r	a2, .LC41
	or	a2, a5, a2
	memw
	s32i	a2, a8, 76
	.loc 1 210 0
	l32i.n	a2, a6, 0
	l32i.n	a5, a2, 4
	slli	a2, a5, 5
	sub	a2, a2, a5
	addx4	a2, a2, a5
	slli	a5, a2, 4
	memw
	s32i	a5, a8, 80
	.loc 1 211 0
	slli	a2, a2, 5
	memw
	s32i	a2, a8, 84
	.loc 1 212 0
	memw
	l32i	a5, a8, 72
	l32r	a2, .LC42
	or	a2, a5, a2
	memw
	s32i	a2, a8, 72
	.loc 1 213 0
	movi.n	a2, 1
	memw
	s32i	a2, a8, 96
	.loc 1 214 0
	memw
	s32i	a3, a8, 100
	j	.L28
.LVL47:
.L24:
	.loc 1 218 0
	s8i	a3, a5, 8
	.loc 1 222 0
	l32r	a8, .LC33
	l32r	a3, .LC34
	.loc 1 219 0
	s32i.n	a2, a5, 4
	.loc 1 222 0
	memw
	s32i	a3, a8, 100
	.loc 1 223 0
	memw
	l32i	a5, a8, 72
	.loc 1 224 0
	slli	a9, a2, 5
	.loc 1 223 0
	l32r	a3, .LC43
	.loc 1 224 0
	sub	a9, a9, a2
	.loc 1 223 0
	and	a3, a5, a3
	.loc 1 224 0
	addx4	a2, a9, a2
.LVL48:
	.loc 1 223 0
	memw
	s32i	a3, a8, 72
.LVL49:
	.loc 1 224 0
	slli	a3, a2, 4
	memw
	s32i	a3, a8, 80
	.loc 1 225 0
	slli	a2, a2, 5
	memw
	s32i	a2, a8, 84
	.loc 1 226 0
	memw
	l32i	a3, a8, 72
	l32r	a2, .LC42
	or	a2, a3, a2
	memw
	s32i	a2, a8, 72
	.loc 1 227 0
	movi.n	a2, 1
	memw
	s32i	a2, a8, 96
	.loc 1 228 0
	movi.n	a2, 0
	memw
	s32i	a2, a8, 100
.L28:
	.loc 1 230 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL50:
	.loc 1 231 0
	movi.n	a2, 0
	.loc 1 232 0
	retw.n
.LFE26:
	.size	esp_task_wdt_init, .-esp_task_wdt_init
	.section	.rodata.str1.1
.LC49:
	.string	"esp_intr_free(twdt_config->intr_handle)"
	.section	.text.esp_task_wdt_deinit,"ax",@progbits
	.literal_position
	.literal .LC44, twdt_spinlock
	.literal .LC45, twdt_config
	.literal .LC46, TIMERG0
	.literal .LC47, 1356348065
	.literal .LC48, 2147483647
	.literal .LC50, .LC49
	.literal .LC51, __func__$5843
	.literal .LC52, .LC31
	.align	4
	.global	esp_task_wdt_deinit
	.type	esp_task_wdt_deinit, @function
esp_task_wdt_deinit:
.LFB27:
	.loc 1 235 0
	entry	sp, 32
.LCFI5:
	.loc 1 236 0
	l32r	a3, .LC44
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL51:
	.loc 1 238 0
	l32r	a4, .LC45
	l32i.n	a8, a4, 0
	bnez.n	a8, .L30
	.loc 1 238 0 discriminator 1
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL52:
	movi	a2, 0x105
	retw.n
.L30:
	.loc 1 240 0
	l32i.n	a10, a8, 0
	beqz.n	a10, .L32
	.loc 1 240 0 discriminator 1
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL53:
	movi	a2, 0x103
	retw.n
.L32:
	.loc 1 243 0
	l32r	a2, .LC46
	l32r	a9, .LC47
	memw
	s32i	a9, a2, 100
	.loc 1 244 0
	memw
	l32i	a11, a2, 72
	l32r	a9, .LC48
	and	a9, a11, a9
	memw
	s32i	a9, a2, 72
	.loc 1 245 0
	memw
	s32i	a10, a2, 100
.LBB8:
	.loc 1 247 0
	l32i.n	a10, a8, 12
	call8	esp_intr_free
.LVL54:
	mov.n	a2, a10
.LVL55:
	beqz.n	a10, .L33
	.loc 1 247 0 is_stmt 0 discriminator 1
	l32r	a14, .LC50
	l32r	a13, .LC51
	l32r	a11, .LC52
	movi	a12, 0xf7
	call8	_esp_error_check_failed
.LVL56:
.L33:
.LBE8:
	.loc 1 248 0 is_stmt 1
	l32i.n	a10, a4, 0
	call8	free
.LVL57:
	.loc 1 250 0
	mov.n	a10, a3
	.loc 1 249 0
	s32i.n	a2, a4, 0
	.loc 1 250 0
	call8	vTaskExitCritical
.LVL58:
	.loc 1 252 0
	retw.n
.LFE27:
	.size	esp_task_wdt_deinit, .-esp_task_wdt_deinit
	.section	.rodata.str1.1
.LC56:
	.string	"esp_register_freertos_idle_hook_for_cpu(idle_hook_cb, i)"
	.section	.text.esp_task_wdt_add,"ax",@progbits
	.literal_position
	.literal .LC53, twdt_spinlock
	.literal .LC54, twdt_config
	.literal .LC55, idle_hook_cb
	.literal .LC57, .LC56
	.literal .LC58, __func__$5855
	.literal .LC59, .LC31
	.align	4
	.global	esp_task_wdt_add
	.type	esp_task_wdt_add, @function
esp_task_wdt_add:
.LFB28:
	.loc 1 255 0
.LVL59:
	entry	sp, 48
.LCFI6:
	.loc 1 256 0
	l32r	a4, .LC53
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL60:
	.loc 1 258 0
	l32r	a8, .LC54
	mov.n	a3, a4
	l32i.n	a9, a8, 0
	mov.n	a5, a8
	bnez.n	a9, .L35
	.loc 1 258 0 discriminator 1
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL61:
	movi	a2, 0x103
.LVL62:
	retw.n
.LVL63:
.L35:
	.loc 1 262 0
	bnez.n	a2, .L37
	.loc 1 263 0
	call8	xTaskGetCurrentTaskHandle
.LVL64:
	mov.n	a2, a10
.LVL65:
.L37:
	.loc 1 266 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	find_task_in_twdt_list
.LVL66:
	mov.n	a4, a10
.LVL67:
	.loc 1 268 0
	beqz.n	a10, .L38
	.loc 1 268 0 discriminator 1
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL68:
	movi	a2, 0x102
.LVL69:
	retw.n
.LVL70:
.L38:
	.loc 1 271 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL71:
	.loc 1 272 0
	bnez.n	a10, .L39
	.loc 1 272 0 discriminator 1
	mov.n	a10, a3
.LVL72:
	call8	vTaskExitCritical
.LVL73:
	movi	a2, 0x101
.LVL74:
	retw.n
.LVL75:
.L39:
	.loc 1 275 0
	s32i.n	a4, a10, 8
	.loc 1 276 0
	l32i.n	a4, a5, 0
	.loc 1 274 0
	movi.n	a8, 1
	s8i	a8, a10, 4
	.loc 1 276 0
	l32i.n	a8, a4, 0
	.loc 1 273 0
	s32i.n	a2, a10, 0
	.loc 1 276 0
	bnez.n	a8, .L51
	.loc 1 277 0
	s32i.n	a10, a4, 0
.L44:
.LVL76:
.LBB9:
	.loc 1 288 0 discriminator 1
	movi.n	a10, 0
.LVL77:
	call8	xTaskGetIdleTaskHandleForCPU
.LVL78:
	bne	a2, a10, .L42
	j	.L41
.LVL79:
.L46:
.LBE9:
.LBB11:
	mov.n	a8, a4
.LVL80:
.L51:
	.loc 1 280 0 discriminator 1
	l32i.n	a4, a8, 8
	bnez.n	a4, .L46
	.loc 1 283 0
	s32i.n	a10, a8, 8
	j	.L44
.LVL81:
.L41:
.LBE11:
.LBB12:
.LBB10:
	.loc 1 289 0
	l32r	a10, .LC55
	movi.n	a11, 0
	call8	esp_register_freertos_idle_hook_for_cpu
.LVL82:
	beqz.n	a10, .L42
	.loc 1 289 0 is_stmt 0 discriminator 1
	l32r	a14, .LC57
	l32r	a13, .LC58
	l32r	a11, .LC59
	movi	a12, 0x121
	call8	_esp_error_check_failed
.LVL83:
.L42:
.LBE10:
.LBE12:
	.loc 1 294 0 is_stmt 1
	l8ui	a2, sp, 0
.LVL84:
	beqz.n	a2, .L45
	.loc 1 295 0
	call8	reset_hw_timer
.LVL85:
.L45:
	.loc 1 298 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL86:
	.loc 1 299 0
	movi.n	a2, 0
	.loc 1 300 0
	retw.n
.LFE28:
	.size	esp_task_wdt_add, .-esp_task_wdt_add
	.section	.text.esp_task_wdt_reset,"ax",@progbits
	.literal_position
	.literal .LC60, twdt_spinlock
	.literal .LC61, twdt_config
	.align	4
	.global	esp_task_wdt_reset
	.type	esp_task_wdt_reset, @function
esp_task_wdt_reset:
.LFB29:
	.loc 1 303 0
	entry	sp, 48
.LCFI7:
	.loc 1 304 0
	l32r	a2, .LC60
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL87:
	.loc 1 306 0
	l32r	a3, .LC61
	l32i.n	a8, a3, 0
	mov.n	a3, a2
	bnez.n	a8, .L55
	.loc 1 306 0 discriminator 1
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL88:
	movi	a2, 0x103
	retw.n
.L55:
	.loc 1 308 0
	call8	xTaskGetCurrentTaskHandle
.LVL89:
	.loc 1 313 0
	mov.n	a11, sp
	call8	find_task_in_twdt_list
.LVL90:
	.loc 1 315 0
	bnez.n	a10, .L57
	.loc 1 315 0 discriminator 1
	mov.n	a10, a2
.LVL91:
	call8	vTaskExitCritical
.LVL92:
	movi	a2, 0x105
	retw.n
.LVL93:
.L57:
	.loc 1 317 0
	movi.n	a2, 1
	s8i	a2, a10, 4
	.loc 1 318 0
	l8ui	a2, sp, 0
	beqz.n	a2, .L58
	.loc 1 319 0
	call8	reset_hw_timer
.LVL94:
.L58:
	.loc 1 322 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL95:
	.loc 1 323 0
	movi.n	a2, 0
	.loc 1 324 0
	retw.n
.LFE29:
	.size	esp_task_wdt_reset, .-esp_task_wdt_reset
	.section	.text.idle_hook_cb,"ax",@progbits
	.align	4
	.type	idle_hook_cb, @function
idle_hook_cb:
.LFB21:
	.loc 1 79 0
	entry	sp, 32
.LCFI8:
	.loc 1 80 0
	call8	esp_task_wdt_reset
.LVL96:
	.loc 1 82 0
	movi.n	a2, 1
	retw.n
.LFE21:
	.size	idle_hook_cb, .-idle_hook_cb
	.section	.text.esp_task_wdt_delete,"ax",@progbits
	.literal_position
	.literal .LC62, twdt_spinlock
	.literal .LC63, twdt_config
	.literal .LC64, idle_hook_cb
	.align	4
	.global	esp_task_wdt_delete
	.type	esp_task_wdt_delete, @function
esp_task_wdt_delete:
.LFB30:
	.loc 1 327 0
.LVL97:
	entry	sp, 48
.LCFI9:
	.loc 1 328 0
	bnez.n	a2, .L64
	.loc 1 329 0
	call8	xTaskGetCurrentTaskHandle
.LVL98:
	mov.n	a2, a10
.LVL99:
.L64:
	.loc 1 331 0
	l32r	a3, .LC62
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL100:
	.loc 1 333 0
	l32r	a4, .LC63
	mov.n	a5, a3
	l32i.n	a4, a4, 0
	bnez.n	a4, .L65
	.loc 1 333 0 discriminator 1
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL101:
	movi	a2, 0x105
.LVL102:
	retw.n
.LVL103:
.L65:
	.loc 1 337 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	find_task_in_twdt_list
.LVL104:
	.loc 1 339 0
	bnez.n	a10, .L67
	.loc 1 339 0 discriminator 1
	mov.n	a10, a3
.LVL105:
	call8	vTaskExitCritical
.LVL106:
	movi	a2, 0x102
.LVL107:
	retw.n
.LVL108:
.L67:
	.loc 1 341 0
	l32i.n	a8, a4, 0
	bne	a10, a8, .L77
	.loc 1 342 0
	l32i.n	a3, a10, 8
	s32i.n	a3, a4, 0
.L79:
	.loc 1 343 0
	call8	free
.LVL109:
.LBB13:
	.loc 1 355 0
	movi.n	a10, 0
	call8	xTaskGetIdleTaskHandleForCPU
.LVL110:
	bne	a2, a10, .L70
	j	.L69
.LVL111:
.L74:
.LBE13:
.LBB14:
	mov.n	a8, a3
.LVL112:
.L77:
	.loc 1 346 0 discriminator 1
	l32i.n	a3, a8, 8
	bne	a10, a3, .L74
	.loc 1 349 0
	l32i.n	a3, a10, 8
	s32i.n	a3, a8, 8
	j	.L79
.LVL113:
.L69:
.LBE14:
.LBB15:
	.loc 1 356 0
	l32r	a10, .LC64
	movi.n	a11, 0
	call8	esp_deregister_freertos_idle_hook_for_cpu
.LVL114:
.L70:
.LBE15:
	.loc 1 361 0
	l8ui	a2, sp, 0
.LVL115:
	beqz.n	a2, .L73
	.loc 1 362 0
	call8	reset_hw_timer
.LVL116:
.L73:
	.loc 1 365 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL117:
	.loc 1 366 0
	movi.n	a2, 0
	.loc 1 367 0
	retw.n
.LFE30:
	.size	esp_task_wdt_delete, .-esp_task_wdt_delete
	.section	.text.esp_task_wdt_status,"ax",@progbits
	.literal_position
	.literal .LC65, twdt_spinlock
	.literal .LC66, twdt_config
	.align	4
	.global	esp_task_wdt_status
	.type	esp_task_wdt_status, @function
esp_task_wdt_status:
.LFB31:
	.loc 1 370 0
.LVL118:
	entry	sp, 32
.LCFI10:
	.loc 1 371 0
	bnez.n	a2, .L81
	.loc 1 372 0
	call8	xTaskGetCurrentTaskHandle
.LVL119:
	mov.n	a2, a10
.LVL120:
.L81:
	.loc 1 375 0
	l32r	a3, .LC65
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL121:
	.loc 1 377 0
	l32r	a8, .LC66
	mov.n	a10, a3
	l32i.n	a8, a8, 0
	bnez.n	a8, .L82
	.loc 1 377 0 discriminator 1
	call8	vTaskExitCritical
.LVL122:
	movi	a2, 0x103
.LVL123:
	retw.n
.LVL124:
.L82:
	.loc 1 380 0
	l32i.n	a8, a8, 0
.LVL125:
	j	.L84
.L86:
	.loc 1 382 0
	l32i.n	a3, a8, 0
	bne	a2, a3, .L85
	.loc 1 382 0 is_stmt 0 discriminator 1
	call8	vTaskExitCritical
.LVL126:
	movi.n	a2, 0
.LVL127:
	retw.n
.LVL128:
.L85:
	.loc 1 380 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 8
.LVL129:
.L84:
	.loc 1 380 0 discriminator 1
	bnez.n	a8, .L86
	.loc 1 386 0
	call8	vTaskExitCritical
.LVL130:
	.loc 1 387 0
	movi	a2, 0x105
.LVL131:
	.loc 1 388 0
	retw.n
.LFE31:
	.size	esp_task_wdt_status, .-esp_task_wdt_status
	.section	.text.esp_task_wdt_feed,"ax",@progbits
	.literal_position
	.literal .LC67, twdt_spinlock
	.literal .LC68, twdt_config
	.align	4
	.global	esp_task_wdt_feed
	.type	esp_task_wdt_feed, @function
esp_task_wdt_feed:
.LFB32:
	.loc 1 391 0
	entry	sp, 48
.LCFI11:
	.loc 1 392 0
	l32r	a2, .LC67
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL132:
	.loc 1 394 0
	l32r	a4, .LC68
	l32i.n	a3, a4, 0
	bnez.n	a3, .L88
	j	.L93
.L88:
	.loc 1 397 0
	call8	xTaskGetCurrentTaskHandle
.LVL133:
	.loc 1 399 0
	mov.n	a11, sp
	.loc 1 397 0
	mov.n	a5, a10
.LVL134:
	.loc 1 399 0
	call8	find_task_in_twdt_list
.LVL135:
	mov.n	a3, a10
.LVL136:
	.loc 1 402 0
	beqz.n	a10, .L90
	.loc 1 403 0
	movi.n	a4, 1
	.loc 1 404 0
	l8ui	a3, sp, 0
.LVL137:
	.loc 1 403 0
	s8i	a4, a10, 4
	.loc 1 404 0
	beqz.n	a3, .L93
	.loc 1 405 0
	call8	reset_hw_timer
.LVL138:
	j	.L93
.LVL139:
.L90:
	.loc 1 412 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL140:
	.loc 1 413 0
	beqz.n	a10, .L93
	.loc 1 416 0
	s32i.n	a3, a10, 8
	.loc 1 418 0
	l32i.n	a3, a4, 0
	.loc 1 414 0
	s32i.n	a5, a10, 0
	.loc 1 418 0
	l32i.n	a8, a3, 0
	.loc 1 415 0
	movi.n	a5, 1
.LVL141:
	s8i	a5, a10, 4
	.loc 1 418 0
	bnez.n	a8, .L100
	.loc 1 419 0
	s32i.n	a10, a3, 0
	j	.L93
.LVL142:
.L95:
.LBB16:
	mov.n	a8, a3
.LVL143:
.L100:
	.loc 1 422 0 discriminator 1
	l32i.n	a3, a8, 8
	bnez.n	a3, .L95
	.loc 1 425 0
	s32i.n	a10, a8, 8
.LVL144:
.L93:
.LBE16:
	.loc 1 428 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL145:
	retw.n
.LFE32:
	.size	esp_task_wdt_feed, .-esp_task_wdt_feed
	.section	.rodata.__func__$5855,"a",@progbits
	.type	__func__$5855, @object
	.size	__func__$5855, 17
__func__$5855:
	.string	"esp_task_wdt_add"
	.section	.rodata.__func__$5843,"a",@progbits
	.type	__func__$5843, @object
	.size	__func__$5843, 20
__func__$5843:
	.string	"esp_task_wdt_deinit"
	.section	.rodata.__func__$5839,"a",@progbits
	.type	__func__$5839, @object
	.size	__func__$5839, 18
__func__$5839:
	.string	"esp_task_wdt_init"
	.section	.dram1,"a",@progbits
	.type	__c$5828, @object
	.size	__c$5828, 25
__c$5828:
	.string	"Tasks currently running:"
	.type	__c$5823, @object
	.size	__c$5823, 8
__c$5823:
	.string	"CPU 0/1"
	.type	__c$5821, @object
	.size	__c$5821, 6
__c$5821:
	.string	"CPU 1"
	.type	__c$5819, @object
	.size	__c$5819, 6
__c$5819:
	.string	"CPU 0"
	.section	.data.twdt_spinlock,"aw",@progbits
	.align	4
	.type	twdt_spinlock, @object
	.size	twdt_spinlock, 8
twdt_spinlock:
	.word	-1287651329
	.word	0
	.section	.bss.twdt_config,"aw",@nobits
	.align	4
	.type	twdt_config, @object
	.size	twdt_config, 4
twdt_config:
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI1-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI2-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI3-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI8-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI10-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI11-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_system.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_system_internal.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_freertos_hooks.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1619
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0xc
	.4byte	.LASF207
	.4byte	.LASF208
	.4byte	.Ldebug_ranges0+0x60
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0xe5
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x8a
	.4byte	0x7e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x8f
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x94
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x56
	.4byte	0xfb
	.uleb128 0xa
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x57
	.4byte	0x10b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x2b
	.4byte	0x160
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x6e
	.4byte	0x89
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.4byte	0x1f1
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x19
	.4byte	0x7e
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1c
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x1d
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x1e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x20
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.4byte	0x20a
	.uleb128 0xf
	.4byte	0x170
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x22
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x24
	.byte	0x8
	.byte	0x16
	.4byte	0x27f
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x23
	.4byte	0x1f1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x24
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x25
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x26
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x27
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0x28
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x29
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2a
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0x2b
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.4byte	0x32c
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2f
	.4byte	0x7e
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x30
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x31
	.4byte	0x7e
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x32
	.4byte	0x7e
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x8
	.byte	0x33
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x34
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0x35
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x36
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x37
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x8
	.byte	0x38
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"en"
	.byte	0x8
	.byte	0x39
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.4byte	0x345
	.uleb128 0xf
	.4byte	0x27f
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x3b
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x3e
	.4byte	0x36c
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3f
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x8
	.byte	0x40
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x3d
	.4byte	0x385
	.uleb128 0xf
	.4byte	0x345
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x42
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x4b
	.4byte	0x3e8
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x4c
	.4byte	0x7e
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x8
	.byte	0x4d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0x4e
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"rdy"
	.byte	0x8
	.byte	0x4f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"max"
	.byte	0x8
	.byte	0x50
	.4byte	0x7e
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.byte	0x51
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0x401
	.uleb128 0xf
	.4byte	0x385
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x53
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x56
	.4byte	0x428
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x57
	.4byte	0x7e
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x8
	.byte	0x58
	.4byte	0x7e
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x55
	.4byte	0x441
	.uleb128 0xf
	.4byte	0x401
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x5a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x5d
	.4byte	0x4ee
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x5e
	.4byte	0x7e
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.byte	0x5f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x8
	.byte	0x60
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x8
	.byte	0x61
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x8
	.byte	0x62
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x8
	.byte	0x63
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x64
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x65
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x66
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x67
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"en"
	.byte	0x8
	.byte	0x68
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x5c
	.4byte	0x507
	.uleb128 0xf
	.4byte	0x441
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x6a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x6d
	.4byte	0x52e
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x6e
	.4byte	0x7e
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x8
	.byte	0x6f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x6c
	.4byte	0x547
	.uleb128 0xf
	.4byte	0x507
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x71
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x7c
	.4byte	0x599
	.uleb128 0x11
	.string	"t0"
	.byte	0x8
	.byte	0x7d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"t1"
	.byte	0x8
	.byte	0x7e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"wdt"
	.byte	0x8
	.byte	0x7f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x80
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x81
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x7b
	.4byte	0x5b2
	.uleb128 0xf
	.4byte	0x547
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x83
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x86
	.4byte	0x604
	.uleb128 0x11
	.string	"t0"
	.byte	0x8
	.byte	0x87
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"t1"
	.byte	0x8
	.byte	0x88
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"wdt"
	.byte	0x8
	.byte	0x89
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x8a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x8b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x85
	.4byte	0x61d
	.uleb128 0xf
	.4byte	0x5b2
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x8d
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x90
	.4byte	0x66f
	.uleb128 0x11
	.string	"t0"
	.byte	0x8
	.byte	0x91
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"t1"
	.byte	0x8
	.byte	0x92
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"wdt"
	.byte	0x8
	.byte	0x93
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x94
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x95
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x8f
	.4byte	0x688
	.uleb128 0xf
	.4byte	0x61d
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0x97
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x9a
	.4byte	0x6da
	.uleb128 0x11
	.string	"t0"
	.byte	0x8
	.byte	0x9b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"t1"
	.byte	0x8
	.byte	0x9c
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.string	"wdt"
	.byte	0x8
	.byte	0x9d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x9e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x9f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x99
	.4byte	0x6f3
	.uleb128 0xf
	.4byte	0x688
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0xa1
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0xb8
	.4byte	0x71a
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x8
	.byte	0xb9
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x8
	.byte	0xba
	.4byte	0x7e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0xb7
	.4byte	0x733
	.uleb128 0xf
	.4byte	0x6f3
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0xbc
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x759
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0xc0
	.4byte	0x7e
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.string	"en"
	.byte	0x8
	.byte	0xc1
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0xbe
	.4byte	0x772
	.uleb128 0xf
	.4byte	0x733
	.uleb128 0x10
	.string	"val"
	.byte	0x8
	.byte	0xc3
	.4byte	0x7e
	.byte	0
	.uleb128 0x12
	.2byte	0x100
	.byte	0x8
	.byte	0x15
	.4byte	0x9b0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x8
	.byte	0x2c
	.4byte	0x9b0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0x3c
	.4byte	0x32c
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x8
	.byte	0x43
	.4byte	0x36c
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x8
	.byte	0x44
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x8
	.byte	0x45
	.4byte	0x7e
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x8
	.byte	0x46
	.4byte	0x7e
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x8
	.byte	0x47
	.4byte	0x7e
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x8
	.byte	0x48
	.4byte	0x7e
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x49
	.4byte	0x7e
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x8
	.byte	0x54
	.4byte	0x3e8
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.byte	0x5b
	.4byte	0x428
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.byte	0x6b
	.4byte	0x4ee
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.byte	0x72
	.4byte	0x52e
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0x73
	.4byte	0x7e
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x8
	.byte	0x74
	.4byte	0x7e
	.byte	0x7c
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x8
	.byte	0x75
	.4byte	0x7e
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x8
	.byte	0x76
	.4byte	0x7e
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x8
	.byte	0x77
	.4byte	0x7e
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x8
	.byte	0x78
	.4byte	0x7e
	.byte	0x8c
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x8
	.byte	0x79
	.4byte	0x7e
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x8
	.byte	0x7a
	.4byte	0x7e
	.byte	0x94
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x8
	.byte	0x84
	.4byte	0x599
	.byte	0x98
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0x8e
	.4byte	0x604
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x8
	.byte	0x98
	.4byte	0x66f
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x8
	.byte	0xa2
	.4byte	0x6da
	.byte	0xa4
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x8
	.byte	0xa3
	.4byte	0x7e
	.byte	0xa8
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x8
	.byte	0xa4
	.4byte	0x7e
	.byte	0xac
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.byte	0xa5
	.4byte	0x7e
	.byte	0xb0
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x8
	.byte	0xa6
	.4byte	0x7e
	.byte	0xb4
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x8
	.byte	0xa7
	.4byte	0x7e
	.byte	0xb8
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x8
	.byte	0xa8
	.4byte	0x7e
	.byte	0xbc
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x8
	.byte	0xa9
	.4byte	0x7e
	.byte	0xc0
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x8
	.byte	0xaa
	.4byte	0x7e
	.byte	0xc4
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x8
	.byte	0xab
	.4byte	0x7e
	.byte	0xc8
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x8
	.byte	0xac
	.4byte	0x7e
	.byte	0xcc
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x8
	.byte	0xad
	.4byte	0x7e
	.byte	0xd0
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x8
	.byte	0xae
	.4byte	0x7e
	.byte	0xd4
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x8
	.byte	0xaf
	.4byte	0x7e
	.byte	0xd8
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x8
	.byte	0xb0
	.4byte	0x7e
	.byte	0xdc
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x8
	.byte	0xb1
	.4byte	0x7e
	.byte	0xe0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x8
	.byte	0xb2
	.4byte	0x7e
	.byte	0xe4
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x8
	.byte	0xb3
	.4byte	0x7e
	.byte	0xe8
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x8
	.byte	0xb4
	.4byte	0x7e
	.byte	0xec
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x8
	.byte	0xb5
	.4byte	0x7e
	.byte	0xf0
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x8
	.byte	0xb6
	.4byte	0x7e
	.byte	0xf4
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x8
	.byte	0xbd
	.4byte	0x71a
	.byte	0xf8
	.uleb128 0x13
	.string	"clk"
	.byte	0x8
	.byte	0xc4
	.4byte	0x759
	.byte	0xfc
	.byte	0
	.uleb128 0x14
	.4byte	0x20a
	.4byte	0x9c0
	.uleb128 0x15
	.4byte	0x92
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x8
	.byte	0xc5
	.4byte	0x9cb
	.uleb128 0x16
	.4byte	0x772
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0xa
	.byte	0x1f
	.4byte	0xa01
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0xb
	.byte	0x16
	.4byte	0xae0
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x1b
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x1d
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x1e
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x1f
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0x22
	.byte	0
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x1
	.byte	0x36
	.4byte	0xaeb
	.uleb128 0x17
	.4byte	.LASF159
	.byte	0xc
	.byte	0x1
	.byte	0x37
	.4byte	0xb1c
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0x1
	.byte	0x38
	.4byte	0x160
	.byte	0
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x1
	.byte	0x39
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3a
	.4byte	0xb1c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae0
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0x1
	.byte	0x3e
	.4byte	0xb2d
	.uleb128 0x17
	.4byte	.LASF163
	.byte	0x10
	.byte	0x1
	.byte	0x3f
	.4byte	0xb6a
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0x1
	.byte	0x40
	.4byte	0xb1c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0x1
	.byte	0x41
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0x1
	.byte	0x42
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x1
	.byte	0x43
	.4byte	0x100
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF180
	.byte	0x1
	.byte	0x59
	.4byte	0xb1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc2
	.uleb128 0x19
	.4byte	.LASF168
	.byte	0x1
	.byte	0x59
	.4byte	0x160
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF169
	.byte	0x1
	.byte	0x59
	.4byte	0xbc2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x1
	.byte	0x5b
	.4byte	0xb1c
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1d
	.4byte	.LASF171
	.byte	0x1
	.byte	0x5d
	.4byte	0xb1c
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF209
	.byte	0x1
	.byte	0x6d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf5
	.uleb128 0x1f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1d
	.4byte	.LASF171
	.byte	0x1
	.byte	0x74
	.4byte	0xb1c
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF210
	.byte	0x1
	.byte	0x7f
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF211
	.byte	0x1
	.byte	0x88
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd8
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0x88
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x1
	.byte	0x8b
	.4byte	0xb1c
	.4byte	.LLST3
	.uleb128 0x23
	.string	"cpu"
	.byte	0x1
	.byte	0x8c
	.4byte	0xa7
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xcae
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0xa5
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0x1546
	.uleb128 0x26
	.4byte	.LVL26
	.4byte	0x1551
	.4byte	0xc7f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL27
	.4byte	0x155d
	.uleb128 0x28
	.4byte	.LVL28
	.4byte	0x1569
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x1574
	.4byte	0xcc2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL11
	.4byte	0x157f
	.4byte	0xcd6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL12
	.4byte	0x1546
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0x1569
	.4byte	0xcfc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL15
	.4byte	0x158a
	.uleb128 0x25
	.4byte	.LVL17
	.4byte	0x158a
	.uleb128 0x25
	.4byte	.LVL19
	.4byte	0x1546
	.uleb128 0x25
	.4byte	.LVL20
	.4byte	0x155d
	.uleb128 0x26
	.4byte	.LVL21
	.4byte	0x1569
	.4byte	0xd49
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL23
	.4byte	0x1546
	.uleb128 0x26
	.4byte	.LVL24
	.4byte	0x1569
	.4byte	0xd78
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__c$5828
	.byte	0
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0xbf5
	.uleb128 0x25
	.4byte	.LVL31
	.4byte	0x1546
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0x1569
	.4byte	0xda7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL33
	.4byte	0x157f
	.4byte	0xdbb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0x1596
	.4byte	0xdce
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x25
	.4byte	.LVL35
	.4byte	0x15a1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x1
	.byte	0xba
	.4byte	0xb2
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef4
	.uleb128 0x19
	.4byte	.LASF165
	.byte	0x1
	.byte	0xba
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF166
	.byte	0x1
	.byte	0xba
	.4byte	0xbd
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	.LASF174
	.4byte	0xf04
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5839
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe90
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x1
	.byte	0xc7
	.4byte	0xb2
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LVL42
	.4byte	0x15ac
	.4byte	0xe5e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	task_wdt_isr
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0x15b7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xc7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5839
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL37
	.4byte	0x1574
	.4byte	0xea4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL38
	.4byte	0x15c2
	.4byte	0xebc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL39
	.4byte	0x157f
	.4byte	0xed0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL45
	.4byte	0x15cd
	.4byte	0xee3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x28
	.4byte	.LVL50
	.4byte	0x157f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xa0
	.4byte	0xf04
	.uleb128 0x15
	.4byte	0x92
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0xef4
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.byte	0xea
	.4byte	0xb2
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdc
	.uleb128 0x2a
	.4byte	.LASF174
	.4byte	0xfec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5843
	.uleb128 0x24
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xf86
	.uleb128 0x1d
	.4byte	.LASF173
	.byte	0x1
	.byte	0xf7
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL54
	.4byte	0x15d8
	.uleb128 0x28
	.4byte	.LVL56
	.4byte	0x15b7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xf7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5843
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL51
	.4byte	0x1574
	.4byte	0xf9a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL52
	.4byte	0x157f
	.4byte	0xfae
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL53
	.4byte	0x157f
	.4byte	0xfc2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL57
	.4byte	0x15e3
	.uleb128 0x28
	.4byte	.LVL58
	.4byte	0x157f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xa0
	.4byte	0xfec
	.uleb128 0x15
	.4byte	0x92
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xfdc
	.uleb128 0x29
	.4byte	.LASF176
	.byte	0x1
	.byte	0xfe
	.4byte	0xb2
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1197
	.uleb128 0x19
	.4byte	.LASF168
	.byte	0x1
	.byte	0xfe
	.4byte	0x160
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x104
	.4byte	0xb1c
	.4byte	.LLST10
	.uleb128 0x2e
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x105
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	.LASF174
	.4byte	0x11a7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5855
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x10d4
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x4c
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x10c4
	.uleb128 0x2d
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x121
	.4byte	0xb2
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	.LVL82
	.4byte	0x15ee
	.4byte	0x1097
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_hook_cb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL83
	.4byte	0x15b7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x121
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5855
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL78
	.4byte	0x15f9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x10f2
	.uleb128 0x2d
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x117
	.4byte	0xb1c
	.4byte	.LLST13
	.byte	0
	.uleb128 0x26
	.4byte	.LVL60
	.4byte	0x1574
	.4byte	0x1106
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL61
	.4byte	0x157f
	.4byte	0x111a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL64
	.4byte	0x1605
	.uleb128 0x26
	.4byte	.LVL66
	.4byte	0xb6a
	.4byte	0x113d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL68
	.4byte	0x157f
	.4byte	0x1151
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL71
	.4byte	0x15c2
	.4byte	0x1169
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x26
	.4byte	.LVL73
	.4byte	0x157f
	.4byte	0x117d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL85
	.4byte	0xbc8
	.uleb128 0x28
	.4byte	.LVL86
	.4byte	0x157f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xa0
	.4byte	0x11a7
	.uleb128 0x15
	.4byte	0x92
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x1197
	.uleb128 0x30
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x12e
	.4byte	0xb2
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1268
	.uleb128 0x2d
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x134
	.4byte	0x160
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x135
	.4byte	0xb1c
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x136
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LVL87
	.4byte	0x1574
	.4byte	0x1209
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL88
	.4byte	0x157f
	.4byte	0x121d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL89
	.4byte	0x1605
	.uleb128 0x26
	.4byte	.LVL90
	.4byte	0xb6a
	.4byte	0x123a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL92
	.4byte	0x157f
	.4byte	0x124e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL94
	.4byte	0xbc8
	.uleb128 0x28
	.4byte	.LVL95
	.4byte	0x157f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF181
	.byte	0x1
	.byte	0x4e
	.4byte	0xbd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128b
	.uleb128 0x25
	.4byte	.LVL96
	.4byte	0x11ac
	.byte	0
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x146
	.4byte	0xb2
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b7
	.uleb128 0x32
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x146
	.4byte	0x160
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x14f
	.4byte	0xb1c
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x150
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x1317
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x162
	.4byte	0x4c
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0x15f9
	.4byte	0x12fe
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL114
	.4byte	0x1611
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_hook_cb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x1335
	.uleb128 0x2d
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x159
	.4byte	0xb1c
	.4byte	.LLST19
	.byte	0
	.uleb128 0x25
	.4byte	.LVL98
	.4byte	0x1605
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0x1574
	.4byte	0x1352
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL101
	.4byte	0x157f
	.4byte	0x1366
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0xb6a
	.4byte	0x1380
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0x157f
	.4byte	0x1394
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL109
	.4byte	0x15e3
	.uleb128 0x25
	.4byte	.LVL116
	.4byte	0xbc8
	.uleb128 0x28
	.4byte	.LVL117
	.4byte	0x157f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x171
	.4byte	0xb2
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1435
	.uleb128 0x32
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x171
	.4byte	0x160
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x17b
	.4byte	0xb1c
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	.LVL119
	.4byte	0x1605
	.uleb128 0x26
	.4byte	.LVL121
	.4byte	0x1574
	.4byte	0x140e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL122
	.4byte	0x157f
	.4byte	0x1422
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL126
	.4byte	0x157f
	.uleb128 0x25
	.4byte	.LVL130
	.4byte	0x157f
	.byte	0
	.uleb128 0x33
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x186
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1501
	.uleb128 0x2d
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x18d
	.4byte	0x160
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x18e
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x18f
	.4byte	0xb1c
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x1498
	.uleb128 0x2d
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xb1c
	.4byte	.LLST24
	.byte	0
	.uleb128 0x26
	.4byte	.LVL132
	.4byte	0x1574
	.4byte	0x14ac
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL133
	.4byte	0x1605
	.uleb128 0x26
	.4byte	.LVL135
	.4byte	0xb6a
	.4byte	0x14cf
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.4byte	.LVL138
	.4byte	0xbc8
	.uleb128 0x26
	.4byte	.LVL140
	.4byte	0x15c2
	.4byte	0x14f0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL145
	.4byte	0x157f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.string	"TAG"
	.byte	0x1
	.byte	0x28
	.4byte	0x16b
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC11
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF185
	.byte	0x1
	.byte	0x46
	.4byte	0x1524
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_config
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb22
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0x1
	.byte	0x47
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.uleb128 0x35
	.4byte	.LASF213
	.byte	0x8
	.byte	0xc6
	.4byte	0x9c0
	.uleb128 0x36
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xa
	.byte	0x57
	.uleb128 0x37
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x7
	.2byte	0x8a3
	.uleb128 0x37
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x7
	.2byte	0x530
	.uleb128 0x36
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xc
	.byte	0xde
	.uleb128 0x36
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x5
	.byte	0xda
	.uleb128 0x36
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x5
	.byte	0xd9
	.uleb128 0x37
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x7
	.2byte	0x8d2
	.uleb128 0x36
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xd
	.byte	0x2c
	.uleb128 0x36
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xe
	.byte	0x47
	.uleb128 0x36
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x6
	.byte	0x99
	.uleb128 0x36
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x4
	.byte	0x4f
	.uleb128 0x36
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xe
	.byte	0x57
	.uleb128 0x36
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xf
	.byte	0x25
	.uleb128 0x36
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x6
	.byte	0xd4
	.uleb128 0x36
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xe
	.byte	0x5a
	.uleb128 0x36
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x10
	.byte	0x31
	.uleb128 0x37
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x7
	.2byte	0x5d6
	.uleb128 0x37
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x7
	.2byte	0x899
	.uleb128 0x36
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x10
	.byte	0x62
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
	.uleb128 0x9
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x37
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x8
	.byte	0x3
	.4byte	twdt_config
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL49
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
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
	.4byte	.LFB21
	.4byte	.LFE21
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
.LASF127:
	.string	"PERIPH_UART2_MODULE"
.LASF18:
	.string	"count"
.LASF49:
	.string	"load_high"
.LASF93:
	.string	"int_raw"
.LASF144:
	.string	"PERIPH_VSPI_MODULE"
.LASF22:
	.string	"ESP_RST_UNKNOWN"
.LASF185:
	.string	"twdt_config"
.LASF105:
	.string	"reserved_cc"
.LASF130:
	.string	"PERIPH_I2S0_MODULE"
.LASF162:
	.string	"next"
.LASF193:
	.string	"xTaskGetAffinity"
.LASF137:
	.string	"PERIPH_PWM3_MODULE"
.LASF89:
	.string	"lactloadlo"
.LASF26:
	.string	"ESP_RST_PANIC"
.LASF59:
	.string	"start_cycling"
.LASF106:
	.string	"reserved_d0"
.LASF159:
	.string	"twdt_task_t"
.LASF84:
	.string	"lactlo"
.LASF160:
	.string	"task_handle"
.LASF108:
	.string	"reserved_d8"
.LASF172:
	.string	"twdttask"
.LASF176:
	.string	"esp_task_wdt_add"
.LASF8:
	.string	"long long unsigned int"
.LASF72:
	.string	"wdt_config0"
.LASF73:
	.string	"wdt_config1"
.LASF74:
	.string	"wdt_config2"
.LASF75:
	.string	"wdt_config3"
.LASF76:
	.string	"wdt_config4"
.LASF77:
	.string	"wdt_config5"
.LASF116:
	.string	"timg_date"
.LASF122:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF117:
	.string	"timg_dev_t"
.LASF109:
	.string	"reserved_dc"
.LASF173:
	.string	"__err_rc"
.LASF48:
	.string	"load_low"
.LASF196:
	.string	"esp_intr_alloc"
.LASF191:
	.string	"vTaskEnterCritical"
.LASF110:
	.string	"reserved_e0"
.LASF212:
	.string	"esp_task_wdt_feed"
.LASF192:
	.string	"vTaskExitCritical"
.LASF11:
	.string	"long int"
.LASF111:
	.string	"reserved_e4"
.LASF86:
	.string	"lactupdate"
.LASF112:
	.string	"reserved_e8"
.LASF33:
	.string	"TaskHandle_t"
.LASF41:
	.string	"enable"
.LASF201:
	.string	"free"
.LASF151:
	.string	"PERIPH_WIFI_MODULE"
.LASF47:
	.string	"alarm_high"
.LASF107:
	.string	"reserved_d4"
.LASF25:
	.string	"ESP_RST_SW"
.LASF209:
	.string	"reset_hw_timer"
.LASF96:
	.string	"reserved_a8"
.LASF169:
	.string	"all_reset"
.LASF19:
	.string	"portMUX_TYPE"
.LASF39:
	.string	"autoreload"
.LASF147:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF163:
	.string	"twdt_config_t"
.LASF5:
	.string	"__uint32_t"
.LASF156:
	.string	"PERIPH_AES_MODULE"
.LASF66:
	.string	"step_len"
.LASF113:
	.string	"reserved_ec"
.LASF166:
	.string	"panic"
.LASF167:
	.string	"intr_handle"
.LASF88:
	.string	"lactalarmhi"
.LASF67:
	.string	"lact"
.LASF62:
	.string	"value"
.LASF78:
	.string	"wdt_feed"
.LASF114:
	.string	"reserved_f0"
.LASF194:
	.string	"esp_reset_reason_set_hint"
.LASF6:
	.string	"unsigned int"
.LASF36:
	.string	"level_int_en"
.LASF150:
	.string	"PERIPH_RNG_MODULE"
.LASF43:
	.string	"cnt_low"
.LASF136:
	.string	"PERIPH_PWM2_MODULE"
.LASF13:
	.string	"long unsigned int"
.LASF50:
	.string	"reload"
.LASF165:
	.string	"timeout"
.LASF138:
	.string	"PERIPH_UHCI0_MODULE"
.LASF204:
	.string	"xTaskGetCurrentTaskHandle"
.LASF206:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"intr_handle_t"
.LASF148:
	.string	"PERIPH_CAN_MODULE"
.LASF207:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/task_wdt.c"
.LASF3:
	.string	"short unsigned int"
.LASF69:
	.string	"date"
.LASF153:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF186:
	.string	"twdt_spinlock"
.LASF94:
	.string	"int_st_timers"
.LASF71:
	.string	"hw_timer"
.LASF126:
	.string	"PERIPH_UART1_MODULE"
.LASF180:
	.string	"find_task_in_twdt_list"
.LASF91:
	.string	"lactload"
.LASF170:
	.string	"target"
.LASF40:
	.string	"increase"
.LASF149:
	.string	"PERIPH_EMAC_MODULE"
.LASF177:
	.string	"target_task"
.LASF140:
	.string	"PERIPH_RMT_MODULE"
.LASF4:
	.string	"__int32_t"
.LASF202:
	.string	"esp_register_freertos_idle_hook_for_cpu"
.LASF80:
	.string	"rtc_cali_cfg"
.LASF168:
	.string	"handle"
.LASF128:
	.string	"PERIPH_I2C0_MODULE"
.LASF121:
	.string	"ESP_LOG_INFO"
.LASF208:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF158:
	.string	"PERIPH_RSA_MODULE"
.LASF12:
	.string	"sizetype"
.LASF139:
	.string	"PERIPH_UHCI1_MODULE"
.LASF90:
	.string	"lactloadhi"
.LASF23:
	.string	"ESP_RST_POWERON"
.LASF187:
	.string	"esp_log_timestamp"
.LASF92:
	.string	"int_ena"
.LASF46:
	.string	"alarm_low"
.LASF85:
	.string	"lacthi"
.LASF52:
	.string	"sys_reset_length"
.LASF190:
	.string	"ets_printf"
.LASF60:
	.string	"clk_sel"
.LASF143:
	.string	"PERIPH_HSPI_MODULE"
.LASF44:
	.string	"cnt_high"
.LASF30:
	.string	"ESP_RST_DEEPSLEEP"
.LASF81:
	.string	"rtc_cali_cfg1"
.LASF131:
	.string	"PERIPH_I2S1_MODULE"
.LASF182:
	.string	"esp_task_wdt_delete"
.LASF123:
	.string	"ESP_LOG_VERBOSE"
.LASF133:
	.string	"PERIPH_TIMG1_MODULE"
.LASF145:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF179:
	.string	"esp_task_wdt_reset"
.LASF31:
	.string	"ESP_RST_BROWNOUT"
.LASF188:
	.string	"xTaskGetCurrentTaskHandleForCPU"
.LASF124:
	.string	"PERIPH_LEDC_MODULE"
.LASF45:
	.string	"update"
.LASF35:
	.string	"alarm_en"
.LASF16:
	.string	"_Bool"
.LASF9:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF135:
	.string	"PERIPH_PWM1_MODULE"
.LASF70:
	.string	"reserved28"
.LASF64:
	.string	"cpst_en"
.LASF2:
	.string	"short int"
.LASF142:
	.string	"PERIPH_SPI_MODULE"
.LASF20:
	.string	"intr_handle_data_t"
.LASF119:
	.string	"ESP_LOG_ERROR"
.LASF203:
	.string	"xTaskGetIdleTaskHandleForCPU"
.LASF58:
	.string	"clk_prescale"
.LASF174:
	.string	"__func__"
.LASF98:
	.string	"reserved_b0"
.LASF27:
	.string	"ESP_RST_INT_WDT"
.LASF95:
	.string	"int_clr_timers"
.LASF79:
	.string	"wdt_wprotect"
.LASF125:
	.string	"PERIPH_UART0_MODULE"
.LASF51:
	.string	"flashboot_mod_en"
.LASF155:
	.string	"PERIPH_BT_LC_MODULE"
.LASF146:
	.string	"PERIPH_SDMMC_MODULE"
.LASF10:
	.string	"uint32_t"
.LASF34:
	.string	"reserved0"
.LASF17:
	.string	"owner"
.LASF118:
	.string	"ESP_LOG_NONE"
.LASF14:
	.string	"char"
.LASF97:
	.string	"reserved_ac"
.LASF87:
	.string	"lactalarmlo"
.LASF115:
	.string	"reserved_f4"
.LASF42:
	.string	"config"
.LASF28:
	.string	"ESP_RST_TASK_WDT"
.LASF189:
	.string	"pcTaskGetTaskName"
.LASF195:
	.string	"abort"
.LASF175:
	.string	"esp_task_wdt_init"
.LASF57:
	.string	"stg0"
.LASF56:
	.string	"stg1"
.LASF55:
	.string	"stg2"
.LASF54:
	.string	"stg3"
.LASF99:
	.string	"reserved_b4"
.LASF37:
	.string	"edge_int_en"
.LASF100:
	.string	"reserved_b8"
.LASF171:
	.string	"task"
.LASF213:
	.string	"TIMERG0"
.LASF63:
	.string	"rtc_only"
.LASF129:
	.string	"PERIPH_I2C1_MODULE"
.LASF82:
	.string	"lactconfig"
.LASF200:
	.string	"esp_intr_free"
.LASF157:
	.string	"PERIPH_SHA_MODULE"
.LASF178:
	.string	"esp_task_wdt_deinit"
.LASF197:
	.string	"_esp_error_check_failed"
.LASF120:
	.string	"ESP_LOG_WARN"
.LASF24:
	.string	"ESP_RST_EXT"
.LASF53:
	.string	"cpu_reset_length"
.LASF15:
	.string	"esp_err_t"
.LASF132:
	.string	"PERIPH_TIMG0_MODULE"
.LASF198:
	.string	"calloc"
.LASF68:
	.string	"reserved4"
.LASF101:
	.string	"reserved_bc"
.LASF205:
	.string	"esp_deregister_freertos_idle_hook_for_cpu"
.LASF38:
	.string	"divider"
.LASF32:
	.string	"ESP_RST_SDIO"
.LASF102:
	.string	"reserved_c0"
.LASF161:
	.string	"has_reset"
.LASF103:
	.string	"reserved_c4"
.LASF65:
	.string	"lac_en"
.LASF210:
	.string	"esp_task_wdt_isr_user_handler"
.LASF211:
	.string	"task_wdt_isr"
.LASF104:
	.string	"reserved_c8"
.LASF141:
	.string	"PERIPH_PCNT_MODULE"
.LASF183:
	.string	"prev"
.LASF134:
	.string	"PERIPH_PWM0_MODULE"
.LASF152:
	.string	"PERIPH_BT_MODULE"
.LASF61:
	.string	"start"
.LASF164:
	.string	"list"
.LASF199:
	.string	"periph_module_enable"
.LASF154:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF83:
	.string	"lactrtc"
.LASF181:
	.string	"idle_hook_cb"
.LASF29:
	.string	"ESP_RST_WDT"
.LASF184:
	.string	"esp_task_wdt_status"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
