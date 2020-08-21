	.file	"port.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"FreeRTOS"
.LC2:
	.string	"\033[0;31mE (%d) %s: FreeRTOS Task \"%s\" should not return, Aborting now!\033[0m\n"
	.section	.text.vPortTaskWrapper,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.align	4
	.type	vPortTaskWrapper, @function
vPortTaskWrapper:
.LFB24:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/port.c"
	.loc 1 142 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 143 0
	mov.n	a10, a3
	callx8	a2
.LVL1:
	.loc 1 145 0
	movi.n	a10, 0
	call8	pcTaskGetTaskName
.LVL2:
	mov.n	a2, a10
.LVL3:
	.loc 1 146 0
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC1
	l32r	a12, .LC3
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL5:
	.loc 1 147 0
	call8	abort
.LVL6:
.LFE24:
	.size	vPortTaskWrapper, .-vPortTaskWrapper
	.section	.text.pxPortInitialiseStack,"ax",@progbits
	.literal_position
	.literal .LC6, _thread_local_end
	.literal .LC7, _thread_local_start
	.literal .LC8, vPortTaskWrapper
	.literal .LC9, _xt_user_exit
	.literal .LC10, 327728
	.literal .LC11, _rodata_start
	.align	4
	.global	pxPortInitialiseStack
	.type	pxPortInitialiseStack, @function
pxPortInitialiseStack:
.LFB25:
	.loc 1 159 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 171 0
	l32r	a11, .LC7
	l32r	a12, .LC6
	movi.n	a7, -0x10
	sub	a12, a12, a11
.LVL9:
	addi.n	a12, a12, 15
.LVL10:
	and	a12, a12, a7
.LVL11:
	.loc 1 182 0
	movi	a6, -0x120
	sub	a6, a6, a12
	addi.n	a5, a2, 1
.LVL12:
	add.n	a5, a5, a6
	and	a5, a5, a7
.LVL13:
	mov.n	a6, a5
	mov.n	a7, a11
	.loc 1 186 0
	movi.n	a8, 0
	.loc 1 185 0
	j	.L3
.LVL14:
.L4:
	.loc 1 186 0 discriminator 3
	s8i	a8, a6, 0
	.loc 1 185 0 discriminator 3
	addi.n	a6, a6, 1
.LVL15:
.L3:
	.loc 1 185 0 is_stmt 0 discriminator 1
	bgeu	a2, a6, .L4
.LVL16:
	.loc 1 197 0 is_stmt 1
	movi	a8, 0xc0
	add.n	a8, a5, a8
	s32i.n	a8, a5, 16
	.loc 1 198 0
	l32r	a8, .LC9
	.loc 1 213 0
	s32i.n	a3, a5, 36
	.loc 1 218 0
	l32r	a3, .LC10
.LVL17:
	.loc 1 192 0
	l32r	a6, .LC8
.LVL18:
	.loc 1 198 0
	s32i.n	a8, a5, 0
	.loc 1 227 0
	sub	a8, a2, a12
	.loc 1 218 0
	s32i.n	a3, a5, 8
	.loc 1 227 0
	addi	a8, a8, -96
	movi.n	a3, -0x10
	and	a8, a8, a3
.LVL19:
	.loc 1 192 0
	s32i.n	a6, a5, 4
	.loc 1 196 0
	movi.n	a6, 0
	.loc 1 228 0
	mov.n	a11, a7
	.loc 1 196 0
	s32i.n	a6, a5, 12
	.loc 1 214 0
	s32i.n	a4, a5, 40
	.loc 1 228 0
	mov.n	a10, a8
	call8	memcpy
.LVL20:
	.loc 1 232 0
	l32r	a11, .LC11
	.loc 1 239 0
	addi	a2, a2, -96
.LVL21:
	.loc 1 232 0
	add.n	a11, a11, a3
	sub	a11, a11, a7
	.loc 1 239 0
	and	a2, a2, a3
.LVL22:
	.loc 1 232 0
	add.n	a8, a11, a10
	s32i	a8, a5, 112
	.loc 1 242 0
	addi.n	a3, a2, 12
.LVL23:
	.loc 1 240 0
	s32i.n	a6, a2, 0
	.loc 1 241 0
	s32i.n	a6, a2, 4
	.loc 1 242 0
	s32i.n	a3, a2, 8
	.loc 1 246 0
	mov.n	a2, a5
.LVL24:
	retw.n
.LFE25:
	.size	pxPortInitialiseStack, .-pxPortInitialiseStack
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	4
	.global	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB26:
	.loc 1 251 0
	entry	sp, 32
.LCFI2:
	retw.n
.LFE26:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.section	.text.xPortStartScheduler,"ax",@progbits
	.literal_position
	.literal .LC12, port_xSchedulerRunning
	.align	4
	.global	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB27:
	.loc 1 259 0
	.loc 1 259 0
	entry	sp, 32
.LCFI3:
	.loc 1 264 0
	call8	_xt_coproc_init
.LVL25:
	.loc 1 268 0
	call8	_xt_tick_divisor_init
.LVL26:
	.loc 1 271 0
	call8	_frxt_tick_timer_init
.LVL27:
.LBB34:
.LBB35:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE35:
.LBE34:
	.loc 1 273 0
	l32r	a2, .LC12
	addx4	a8, a8, a2
	movi.n	a2, 1
	s32i.n	a2, a8, 0
	.loc 1 276 0
#APP
# 276 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/port.c" 1
	call0    _frxt_dispatch

# 0 "" 2
	.loc 1 280 0
#NO_APP
	retw.n
.LFE27:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.xPortSysTickHandler,"ax",@progbits
	.align	4
	.global	xPortSysTickHandler
	.type	xPortSysTickHandler, @function
xPortSysTickHandler:
.LFB28:
	.loc 1 284 0
	entry	sp, 32
.LCFI4:
	.loc 1 289 0
	call8	xTaskIncrementTick
.LVL28:
	mov.n	a2, a10
.LVL29:
	.loc 1 290 0
	beqz.n	a10, .L8
	.loc 1 292 0
	call8	_frxt_setup_switch
.LVL30:
.L8:
	.loc 1 297 0
	retw.n
.LFE28:
	.size	xPortSysTickHandler, .-xPortSysTickHandler
	.section	.text.vPortYieldOtherCore,"ax",@progbits
	.align	4
	.global	vPortYieldOtherCore
	.type	vPortYieldOtherCore, @function
vPortYieldOtherCore:
.LFB29:
	.loc 1 300 0
.LVL31:
	entry	sp, 32
.LCFI5:
	.loc 1 301 0
	mov.n	a10, a2
	call8	esp_crosscore_int_send_yield
.LVL32:
	retw.n
.LFE29:
	.size	vPortYieldOtherCore, .-vPortYieldOtherCore
	.section	.text.vPortStoreTaskMPUSettings,"ax",@progbits
	.align	4
	.global	vPortStoreTaskMPUSettings
	.type	vPortStoreTaskMPUSettings, @function
vPortStoreTaskMPUSettings:
.LFB30:
	.loc 1 311 0
.LVL33:
	entry	sp, 32
.LCFI6:
	.loc 1 313 0
	add.n	a4, a4, a5
.LVL34:
	addi	a4, a4, -97
	movi.n	a8, -0x10
	and	a4, a4, a8
	s32i.n	a4, a2, 0
	retw.n
.LFE30:
	.size	vPortStoreTaskMPUSettings, .-vPortStoreTaskMPUSettings
	.section	.text.vPortReleaseTaskMPUSettings,"ax",@progbits
	.align	4
	.global	vPortReleaseTaskMPUSettings
	.type	vPortReleaseTaskMPUSettings, @function
vPortReleaseTaskMPUSettings:
.LFB31:
	.loc 1 323 0
.LVL35:
	entry	sp, 32
.LCFI7:
	.loc 1 325 0
	l32i.n	a10, a2, 0
	call8	_xt_coproc_release
.LVL36:
	retw.n
.LFE31:
	.size	vPortReleaseTaskMPUSettings, .-vPortReleaseTaskMPUSettings
	.section	.text.xPortInIsrContext,"ax",@progbits
	.literal_position
	.literal .LC13, port_interruptNesting
	.align	4
	.global	xPortInIsrContext
	.type	xPortInIsrContext, @function
xPortInIsrContext:
.LFB32:
	.loc 1 335 0
	entry	sp, 32
.LCFI8:
.LBB36:
.LBB37:
.LBB38:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL37:
#NO_APP
.LBE38:
.LBE37:
.LBE36:
.LBB39:
.LBB40:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE40:
.LBE39:
	.loc 1 339 0
	l32r	a2, .LC13
	movi.n	a9, 1
	addx4	a8, a8, a2
	l32i.n	a8, a8, 0
	movi.n	a2, 0
	movnez	a2, a9, a8
.LVL38:
	.loc 1 340 0
	call8	_xtos_set_intlevel
.LVL39:
	.loc 1 342 0
	retw.n
.LFE32:
	.size	xPortInIsrContext, .-xPortInIsrContext
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC14, port_interruptNesting
	.align	4
	.global	xPortInterruptedFromISRContext
	.type	xPortInterruptedFromISRContext, @function
xPortInterruptedFromISRContext:
.LFB33:
	.loc 1 349 0
	entry	sp, 32
.LCFI9:
.LBB41:
.LBB42:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE42:
.LBE41:
	.loc 1 350 0
	l32r	a2, .LC14
	movi.n	a9, 1
	addx4	a8, a8, a2
	l32i.n	a8, a8, 0
	movi.n	a2, 0
	movnez	a2, a9, a8
	.loc 1 351 0
	retw.n
.LFE33:
	.size	xPortInterruptedFromISRContext, .-xPortInterruptedFromISRContext
	.section	.rodata.str1.1
.LC16:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/port.c"
.LC18:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.vPortAssertIfInISR,"ax",@progbits
	.literal_position
	.literal .LC15, __FUNCTION__$5359
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.global	vPortAssertIfInISR
	.type	vPortAssertIfInISR, @function
vPortAssertIfInISR:
.LFB34:
	.loc 1 354 0
	entry	sp, 32
.LCFI10:
	.loc 1 355 0
	call8	xPortInIsrContext
.LVL40:
	bnez.n	a10, .L17
	.loc 1 355 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a11, .LC17
	l32r	a10, .LC19
	movi	a12, 0x163
	call8	ets_printf
.LVL41:
	call8	abort
.LVL42:
.L17:
	retw.n
.LFE34:
	.size	vPortAssertIfInISR, .-vPortAssertIfInISR
	.section	.text.vPortCPUInitializeMutex,"ax",@progbits
	.literal_position
	.literal .LC20, -1287651329
	.align	4
	.global	vPortCPUInitializeMutex
	.type	vPortCPUInitializeMutex, @function
vPortCPUInitializeMutex:
.LFB35:
	.loc 1 361 0 is_stmt 1
.LVL43:
	entry	sp, 32
.LCFI11:
	.loc 1 368 0
	l32r	a8, .LC20
	s32i.n	a8, a2, 0
	.loc 1 369 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE35:
	.size	vPortCPUInitializeMutex, .-vPortCPUInitializeMutex
	.section	.text.vPortCPUAcquireMutexTimeout,"ax",@progbits
	.align	4
	.global	vPortCPUAcquireMutexTimeout
	.type	vPortCPUAcquireMutexTimeout, @function
vPortCPUAcquireMutexTimeout:
.LFB41:
	.loc 1 398 0
.LVL44:
	entry	sp, 32
.LCFI12:
.LBB43:
.LBB44:
.LBB45:
	.loc 3 249 0
#APP
# 249 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL45:
#NO_APP
.LBE45:
.LBE44:
.LBE43:
	.loc 1 401 0
	call8	_xtos_set_intlevel
.LVL46:
	.loc 1 403 0
	movi.n	a2, 1
.LVL47:
	retw.n
.LFE41:
	.size	vPortCPUAcquireMutexTimeout, .-vPortCPUAcquireMutexTimeout
	.section	.text.vPortCPUReleaseMutex,"ax",@progbits
	.align	4
	.global	vPortCPUReleaseMutex
	.type	vPortCPUReleaseMutex, @function
vPortCPUReleaseMutex:
.LFB42:
	.loc 1 419 0
.LVL48:
	entry	sp, 32
.LCFI13:
.LBB46:
.LBB47:
.LBB48:
	.loc 3 249 0
#APP
# 249 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL49:
#NO_APP
.LBE48:
.LBE47:
.LBE46:
	.loc 1 422 0
	call8	_xtos_set_intlevel
.LVL50:
	retw.n
.LFE42:
	.size	vPortCPUReleaseMutex, .-vPortCPUReleaseMutex
	.section	.text.vPortCPUAcquireMutex,"ax",@progbits
	.align	4
	.global	vPortCPUAcquireMutex
	.type	vPortCPUAcquireMutex, @function
vPortCPUAcquireMutex:
.LFB48:
	entry	sp, 32
.LCFI14:
	mov.n	a10, a2
	call8	vPortCPUReleaseMutex
	retw.n
.LFE48:
	.size	vPortCPUAcquireMutex, .-vPortCPUAcquireMutex
	.section	.text.vPortSetStackWatchpoint,"ax",@progbits
	.literal_position
	.literal .LC21, -2147483648
	.align	4
	.global	vPortSetStackWatchpoint
	.type	vPortSetStackWatchpoint, @function
vPortSetStackWatchpoint:
.LFB43:
	.loc 1 426 0
.LVL51:
	.loc 1 426 0
	entry	sp, 32
.LCFI15:
.LVL52:
	.loc 1 434 0
	addi	a11, a2, 31
.LVL53:
	.loc 1 435 0
	movi.n	a8, -0x20
	l32r	a13, .LC21
	movi.n	a12, 0x20
	and	a11, a11, a8
.LVL54:
	movi.n	a10, 1
	call8	esp_set_watchpoint
.LVL55:
	retw.n
.LFE43:
	.size	vPortSetStackWatchpoint, .-vPortSetStackWatchpoint
	.section	.text.xPortGetTickRateHz,"ax",@progbits
	.align	4
	.global	xPortGetTickRateHz
	.type	xPortGetTickRateHz, @function
xPortGetTickRateHz:
.LFB44:
	.loc 1 466 0
	entry	sp, 32
.LCFI16:
	.loc 1 468 0
	movi	a2, 0x64
	retw.n
.LFE44:
	.size	xPortGetTickRateHz, .-xPortGetTickRateHz
	.section	.rodata.__FUNCTION__$5359,"a",@progbits
	.type	__FUNCTION__$5359, @object
	.size	__FUNCTION__$5359, 19
__FUNCTION__$5359:
	.string	"vPortAssertIfInISR"
	.global	port_interruptNesting
	.section	.bss.port_interruptNesting,"aw",@nobits
	.align	4
	.type	port_interruptNesting, @object
	.size	port_interruptNesting, 4
port_interruptNesting:
	.zero	4
	.global	port_xSchedulerRunning
	.section	.bss.port_xSchedulerRunning,"aw",@nobits
	.align	4
	.type	port_xSchedulerRunning, @object
	.size	port_xSchedulerRunning, 4
port_xSchedulerRunning:
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI2-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI3-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI4-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI5-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI6-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI7-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI8-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI9-.LFB33
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI12-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI13-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI14-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI15-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI16-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_context.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/portmux_impl.inc.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/portmux_impl.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_timer.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_panic.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xacd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x90
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x70
	.byte	0x5
	.byte	0x67
	.4byte	0x1e4
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x5
	.byte	0x68
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.string	"pc"
	.byte	0x5
	.byte	0x69
	.4byte	0x73
	.byte	0x4
	.uleb128 0x9
	.string	"ps"
	.byte	0x5
	.byte	0x6a
	.4byte	0x73
	.byte	0x8
	.uleb128 0x9
	.string	"a0"
	.byte	0x5
	.byte	0x6b
	.4byte	0x73
	.byte	0xc
	.uleb128 0x9
	.string	"a1"
	.byte	0x5
	.byte	0x6c
	.4byte	0x73
	.byte	0x10
	.uleb128 0x9
	.string	"a2"
	.byte	0x5
	.byte	0x6d
	.4byte	0x73
	.byte	0x14
	.uleb128 0x9
	.string	"a3"
	.byte	0x5
	.byte	0x6e
	.4byte	0x73
	.byte	0x18
	.uleb128 0x9
	.string	"a4"
	.byte	0x5
	.byte	0x6f
	.4byte	0x73
	.byte	0x1c
	.uleb128 0x9
	.string	"a5"
	.byte	0x5
	.byte	0x70
	.4byte	0x73
	.byte	0x20
	.uleb128 0x9
	.string	"a6"
	.byte	0x5
	.byte	0x71
	.4byte	0x73
	.byte	0x24
	.uleb128 0x9
	.string	"a7"
	.byte	0x5
	.byte	0x72
	.4byte	0x73
	.byte	0x28
	.uleb128 0x9
	.string	"a8"
	.byte	0x5
	.byte	0x73
	.4byte	0x73
	.byte	0x2c
	.uleb128 0x9
	.string	"a9"
	.byte	0x5
	.byte	0x74
	.4byte	0x73
	.byte	0x30
	.uleb128 0x9
	.string	"a10"
	.byte	0x5
	.byte	0x75
	.4byte	0x73
	.byte	0x34
	.uleb128 0x9
	.string	"a11"
	.byte	0x5
	.byte	0x76
	.4byte	0x73
	.byte	0x38
	.uleb128 0x9
	.string	"a12"
	.byte	0x5
	.byte	0x77
	.4byte	0x73
	.byte	0x3c
	.uleb128 0x9
	.string	"a13"
	.byte	0x5
	.byte	0x78
	.4byte	0x73
	.byte	0x40
	.uleb128 0x9
	.string	"a14"
	.byte	0x5
	.byte	0x79
	.4byte	0x73
	.byte	0x44
	.uleb128 0x9
	.string	"a15"
	.byte	0x5
	.byte	0x7a
	.4byte	0x73
	.byte	0x48
	.uleb128 0x9
	.string	"sar"
	.byte	0x5
	.byte	0x7b
	.4byte	0x73
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x7c
	.4byte	0x73
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x7d
	.4byte	0x73
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7f
	.4byte	0x73
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x80
	.4byte	0x73
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x81
	.4byte	0x73
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x85
	.4byte	0x73
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x86
	.4byte	0x73
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x87
	.4byte	0x73
	.byte	0x6c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x91
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x20b
	.uleb128 0xa
	.4byte	0x216
	.uleb128 0xb
	.4byte	0x81
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x4d
	.4byte	0x205
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6e
	.4byte	0x1ef
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x3
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x3
	.byte	0x70
	.4byte	0x25
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0x26a
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x3
	.byte	0x8a
	.4byte	0x1fa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x3
	.byte	0x8f
	.4byte	0x1fa
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x3
	.byte	0x94
	.4byte	0x249
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.2byte	0x156
	.4byte	0x28c
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x158
	.4byte	0x28c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x292
	.uleb128 0xe
	.4byte	0x228
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x167
	.4byte	0x275
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e4
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0xc
	.byte	0x8
	.byte	0x97
	.4byte	0x2da
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.byte	0x99
	.4byte	0x81
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x8
	.byte	0x9a
	.4byte	0x1fa
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x8
	.byte	0x9b
	.4byte	0x1fa
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x228
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x1f
	.4byte	0x311
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x9
	.byte	0x81
	.byte	0x3
	.4byte	0x329
	.uleb128 0x14
	.string	"mux"
	.byte	0x9
	.byte	0x81
	.4byte	0x329
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26a
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2b
	.4byte	0x221
	.byte	0x3
	.4byte	0x356
	.uleb128 0x14
	.string	"mux"
	.byte	0x9
	.byte	0x2b
	.4byte	0x329
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x9
	.byte	0x2b
	.4byte	0x33
	.byte	0
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0xa
	.byte	0x66
	.byte	0x3
	.4byte	0x36e
	.uleb128 0x14
	.string	"mux"
	.byte	0xa
	.byte	0x66
	.4byte	0x329
	.byte	0
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x2
	.byte	0xce
	.4byte	0x1fa
	.byte	0x3
	.4byte	0x389
	.uleb128 0x18
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x33
	.byte	0
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x3
	.byte	0xf8
	.4byte	0x25
	.byte	0x3
	.4byte	0x3b2
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.uleb128 0x1a
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0xa
	.byte	0x5c
	.4byte	0x221
	.byte	0x3
	.4byte	0x3d9
	.uleb128 0x14
	.string	"mux"
	.byte	0xa
	.byte	0x5c
	.4byte	0x329
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0xa
	.byte	0x5c
	.4byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x1
	.byte	0x8d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x484
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x8d
	.4byte	0x216
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0x8d
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0x91
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL1
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x42a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL2
	.4byte	0xa29
	.4byte	0x43d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0xa35
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0xa40
	.4byte	0x47a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL6
	.4byte	0xa4b
	.byte	0
	.uleb128 0x23
	.4byte	.LASF65
	.byte	0x1
	.byte	0x9b
	.4byte	0x2da
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56b
	.uleb128 0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0x9b
	.4byte	0x2da
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9b
	.4byte	0x216
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9b
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF56
	.byte	0x1
	.byte	0x9b
	.4byte	0x233
	.4byte	.LLST3
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2da
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.string	"tp"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2da
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa1
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.byte	0xa3
	.4byte	0x56b
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa5
	.4byte	0x56b
	.uleb128 0x4
	.byte	0x75
	.sleb128 112
	.byte	0x9f
	.uleb128 0x26
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa6
	.4byte	0x81
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x27
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x27
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa9
	.4byte	0x1fa
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0xa56
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fa
	.uleb128 0x29
	.4byte	.LASF108
	.byte	0x1
	.byte	0xfa
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x102
	.4byte	0x233
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dc
	.uleb128 0x2b
	.4byte	0x36e
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x111
	.4byte	0x5c0
	.uleb128 0x2c
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x2d
	.4byte	0x37e
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL25
	.4byte	0xa5f
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0xa6a
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0xa75
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x11b
	.4byte	0x233
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x617
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x233
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LVL28
	.4byte	0xa80
	.uleb128 0x22
	.4byte	.LVL30
	.4byte	0xa8c
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x12c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64c
	.uleb128 0x30
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x12c
	.4byte	0x233
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LVL32
	.4byte	0xa98
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x136
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69d
	.uleb128 0x30
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x136
	.4byte	0x69d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x136
	.4byte	0x6ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x136
	.4byte	0x2da
	.4byte	.LLST8
	.uleb128 0x30
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x136
	.4byte	0x1fa
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x297
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a9
	.uleb128 0x32
	.4byte	0x2a9
	.uleb128 0x32
	.4byte	0x6a3
	.uleb128 0x2f
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x142
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e1
	.uleb128 0x30
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x142
	.4byte	0x69d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LVL36
	.4byte	0xaa3
	.byte	0
	.uleb128 0x33
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x14e
	.4byte	0x233
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77e
	.uleb128 0x34
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x150
	.4byte	0x25
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x151
	.4byte	0x233
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	0x389
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x152
	.4byte	0x750
	.uleb128 0x2c
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x35
	.4byte	0x399
	.4byte	.LLST9
	.uleb128 0x2c
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x35
	.4byte	0x3a5
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x36e
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.2byte	0x153
	.4byte	0x774
	.uleb128 0x2c
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x2d
	.4byte	0x37e
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0xaaf
	.byte	0
	.uleb128 0x33
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x15c
	.4byte	0x233
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b9
	.uleb128 0x36
	.4byte	0x36e
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.2byte	0x15e
	.uleb128 0x2c
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x2d
	.4byte	0x37e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x161
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x821
	.uleb128 0x38
	.4byte	.LASF79
	.4byte	0x831
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5359
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0x6e1
	.uleb128 0x21
	.4byte	.LVL41
	.4byte	0xaba
	.4byte	0x817
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x163
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5359
	.byte	0
	.uleb128 0x22
	.4byte	.LVL42
	.4byte	0xa4b
	.byte	0
	.uleb128 0x39
	.4byte	0x90
	.4byte	0x831
	.uleb128 0x3a
	.4byte	0x7a
	.byte	0x12
	.byte	0
	.uleb128 0x32
	.4byte	0x821
	.uleb128 0x2f
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x169
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85b
	.uleb128 0x3b
	.string	"mux"
	.byte	0x1
	.2byte	0x169
	.4byte	0x329
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x18e
	.4byte	0x221
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f0
	.uleb128 0x3c
	.string	"mux"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x329
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x18e
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x18f
	.4byte	0x25
	.uleb128 0x34
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x190
	.4byte	0x221
	.uleb128 0x2b
	.4byte	0x389
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x18f
	.4byte	0x8e6
	.uleb128 0x2c
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x35
	.4byte	0x399
	.4byte	.LLST12
	.uleb128 0x2c
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x35
	.4byte	0x3a5
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL46
	.4byte	0xaaf
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1a3
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x965
	.uleb128 0x3b
	.string	"mux"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x329
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x25
	.uleb128 0x2b
	.4byte	0x389
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x95b
	.uleb128 0x2c
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.uleb128 0x35
	.4byte	0x399
	.4byte	.LLST14
	.uleb128 0x2c
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x35
	.4byte	0x3a5
	.4byte	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL50
	.4byte	0xaaf
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1aa
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c0
	.uleb128 0x30
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3d
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x33
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LVL55
	.4byte	0xac5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x1fa
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.4byte	0x25
	.4byte	0x9e6
	.uleb128 0x3a
	.4byte	0x7a
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF87
	.byte	0x1
	.byte	0x83
	.4byte	0x9d6
	.uleb128 0x5
	.byte	0x3
	.4byte	port_xSchedulerRunning
	.uleb128 0x3f
	.4byte	.LASF88
	.byte	0x1
	.byte	0x84
	.4byte	0x9d6
	.uleb128 0x5
	.byte	0x3
	.4byte	port_interruptNesting
	.uleb128 0x27
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x27
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x27
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x40
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x530
	.uleb128 0x41
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xb
	.byte	0x57
	.uleb128 0x41
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xb
	.byte	0x6b
	.uleb128 0x41
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xc
	.byte	0x47
	.uleb128 0x42
	.4byte	.LASF111
	.4byte	.LASF111
	.uleb128 0x41
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x1
	.byte	0x75
	.uleb128 0x41
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xd
	.byte	0x9b
	.uleb128 0x41
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x1
	.byte	0x72
	.uleb128 0x40
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x83a
	.uleb128 0x40
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x13d
	.uleb128 0x41
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xe
	.byte	0x28
	.uleb128 0x40
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x3
	.2byte	0x17a
	.uleb128 0x41
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xf
	.byte	0x99
	.uleb128 0x41
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x10
	.byte	0xde
	.uleb128 0x41
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x11
	.byte	0x35
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x30
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x2
	.byte	0x75
	.sleb128 36
	.4byte	.LVL20-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE25
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7c
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55-1
	.4byte	.LFE43
	.2byte	0x6
	.byte	0x72
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"count"
.LASF51:
	.string	"vPortCPUAcquireMutexIntsDisabledInternal"
.LASF5:
	.string	"__uint8_t"
.LASF35:
	.string	"pvBaseAddress"
.LASF39:
	.string	"ESP_LOG_ERROR"
.LASF104:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/port.c"
.LASF62:
	.string	"_thread_local_end"
.LASF8:
	.string	"long long unsigned int"
.LASF18:
	.string	"lcount"
.LASF48:
	.string	"portENTER_CRITICAL_NESTED"
.LASF67:
	.string	"xPortSysTickHandler"
.LASF58:
	.string	"frame"
.LASF54:
	.string	"pvParameters"
.LASF78:
	.string	"xPortInterruptedFromISRContext"
.LASF105:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freertos"
.LASF19:
	.string	"tmp0"
.LASF20:
	.string	"tmp1"
.LASF21:
	.string	"tmp2"
.LASF42:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF71:
	.string	"xMPUSettings"
.LASF52:
	.string	"vPortCPUAcquireMutexIntsDisabled"
.LASF87:
	.string	"port_xSchedulerRunning"
.LASF99:
	.string	"_xt_coproc_release"
.LASF101:
	.string	"ets_printf"
.LASF14:
	.string	"exccause"
.LASF49:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF91:
	.string	"esp_log_write"
.LASF111:
	.string	"memcpy"
.LASF96:
	.string	"xTaskIncrementTick"
.LASF100:
	.string	"_xtos_set_intlevel"
.LASF28:
	.string	"BaseType_t"
.LASF56:
	.string	"xRunPrivileged"
.LASF32:
	.string	"portMUX_TYPE"
.LASF15:
	.string	"excvaddr"
.LASF74:
	.string	"usStackDepth"
.LASF6:
	.string	"__uint32_t"
.LASF69:
	.string	"vPortYieldOtherCore"
.LASF50:
	.string	"__tmp"
.LASF88:
	.string	"port_interruptNesting"
.LASF0:
	.string	"unsigned int"
.LASF81:
	.string	"vPortCPUAcquireMutexTimeout"
.LASF76:
	.string	"xPortInIsrContext"
.LASF11:
	.string	"long unsigned int"
.LASF16:
	.string	"lbeg"
.LASF55:
	.string	"pxTopOfStack"
.LASF79:
	.string	"__FUNCTION__"
.LASF103:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF109:
	.string	"vPortAssertIfInISR"
.LASF33:
	.string	"coproc_area"
.LASF1:
	.string	"short unsigned int"
.LASF110:
	.string	"xPortGetTickRateHz"
.LASF60:
	.string	"task_thread_local_start"
.LASF64:
	.string	"thread_local_sz"
.LASF41:
	.string	"ESP_LOG_INFO"
.LASF45:
	.string	"vPortCPUReleaseMutexIntsDisabledInternal"
.LASF63:
	.string	"_rodata_start"
.LASF77:
	.string	"irqStatus"
.LASF47:
	.string	"xPortGetCoreID"
.LASF83:
	.string	"vPortCPUReleaseMutex"
.LASF94:
	.string	"_xt_tick_divisor_init"
.LASF10:
	.string	"sizetype"
.LASF68:
	.string	"coreid"
.LASF72:
	.string	"xRegions"
.LASF102:
	.string	"esp_set_watchpoint"
.LASF66:
	.string	"xPortStartScheduler"
.LASF108:
	.string	"vPortEndScheduler"
.LASF36:
	.string	"ulLengthInBytes"
.LASF34:
	.string	"xMPU_SETTINGS"
.LASF22:
	.string	"XtExcFrame"
.LASF106:
	.string	"xMEMORY_REGION"
.LASF86:
	.string	"addr"
.LASF26:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF59:
	.string	"threadptr"
.LASF53:
	.string	"pxCode"
.LASF4:
	.string	"short int"
.LASF90:
	.string	"esp_log_timestamp"
.LASF98:
	.string	"esp_crosscore_int_send_yield"
.LASF25:
	.string	"TaskFunction_t"
.LASF44:
	.string	"timeout_cycles"
.LASF70:
	.string	"vPortStoreTaskMPUSettings"
.LASF107:
	.string	"vPortTaskWrapper"
.LASF75:
	.string	"vPortReleaseTaskMPUSettings"
.LASF24:
	.string	"uint32_t"
.LASF37:
	.string	"ulParameters"
.LASF30:
	.string	"owner"
.LASF97:
	.string	"_frxt_setup_switch"
.LASF38:
	.string	"ESP_LOG_NONE"
.LASF12:
	.string	"char"
.LASF43:
	.string	"ESP_LOG_VERBOSE"
.LASF61:
	.string	"_thread_local_start"
.LASF73:
	.string	"pxBottomOfStack"
.LASF89:
	.string	"pcTaskGetTaskName"
.LASF92:
	.string	"abort"
.LASF93:
	.string	"_xt_coproc_init"
.LASF27:
	.string	"StackType_t"
.LASF85:
	.string	"pxStackStart"
.LASF84:
	.string	"vPortSetStackWatchpoint"
.LASF80:
	.string	"vPortCPUInitializeMutex"
.LASF40:
	.string	"ESP_LOG_WARN"
.LASF13:
	.string	"exit"
.LASF65:
	.string	"pxPortInitialiseStack"
.LASF57:
	.string	"pcTaskName"
.LASF23:
	.string	"uint8_t"
.LASF46:
	.string	"vPortCPUReleaseMutexIntsDisabled"
.LASF29:
	.string	"UBaseType_t"
.LASF82:
	.string	"result"
.LASF95:
	.string	"_frxt_tick_timer_init"
.LASF17:
	.string	"lend"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
