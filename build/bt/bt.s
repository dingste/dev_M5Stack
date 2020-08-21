	.file	"bt.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.align	4
	.type	cause_sw_intr, @function
cause_sw_intr:
.LFB47:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c"
	.loc 1 714 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB15:
	.loc 1 717 0
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL2:
#APP
# 717 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c" 1
	wsr.intset a2
# 0 "" 2
#NO_APP
	retw.n
.LBE15:
.LFE47:
	.size	cause_sw_intr, .-cause_sw_intr
	.align	4
	.type	srand_wrapper, @function
srand_wrapper:
.LFB51:
	.loc 1 744 0
.LVL3:
	entry	sp, 32
.LCFI1:
	retw.n
.LFE51:
	.size	srand_wrapper, .-srand_wrapper
	.global	__lshrdi3
	.literal_position
	.literal .LC0, btdm_lpcycle_us
	.literal .LC1, btdm_lpcycle_us_frac
	.align	4
	.type	btdm_lpcycles_2_us, @function
btdm_lpcycles_2_us:
.LFB53:
	.loc 1 754 0
.LVL4:
	.loc 1 754 0
	entry	sp, 32
.LCFI2:
	.loc 1 757 0
	l32r	a8, .LC0
	.loc 1 758 0
	movi.n	a11, 1
	.loc 1 757 0
	l32i.n	a9, a8, 0
.LVL5:
	.loc 1 758 0
	l32r	a8, .LC1
	mull	a10, a9, a2
	l8ui	a12, a8, 0
	muluh	a2, a9, a2
.LVL6:
	addi.n	a8, a12, -1
	ssl	a8
	sll	a8, a11
	add.n	a10, a8, a10
	srai	a13, a8, 31
	bltu	a10, a8, .L4
	movi.n	a11, 0
.L4:
	add.n	a2, a13, a2
.LVL7:
	.loc 1 759 0
	add.n	a11, a11, a2
.LVL8:
	call8	__lshrdi3
.LVL9:
	.loc 1 760 0
	mov.n	a2, a10
	retw.n
.LFE53:
	.size	btdm_lpcycles_2_us, .-btdm_lpcycles_2_us
	.global	__ashldi3
	.global	__udivdi3
	.literal_position
	.literal .LC2, btdm_lpcycle_us_frac
	.literal .LC3, btdm_lpcycle_us
	.align	4
	.type	btdm_us_2_lpcycles, @function
btdm_us_2_lpcycles:
.LFB54:
	.loc 1 766 0
.LVL10:
	entry	sp, 32
.LCFI3:
.LVL11:
	.loc 1 772 0
	l32r	a8, .LC2
.LVL12:
	movi.n	a3, 0
	l8ui	a12, a8, 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__ashldi3
.LVL13:
	l32r	a8, .LC3
	mov.n	a13, a3
	l32i.n	a12, a8, 0
	call8	__udivdi3
.LVL14:
	.loc 1 773 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE54:
	.size	btdm_us_2_lpcycles, .-btdm_us_2_lpcycles
	.align	4
	.type	btdm_sleep_check_duration, @function
btdm_sleep_check_duration:
.LFB55:
	.loc 1 776 0
.LVL16:
	entry	sp, 32
.LCFI4:
	.loc 1 777 0
	l32i.n	a8, a2, 0
	movi.n	a10, 0xb
	.loc 1 778 0
	movi.n	a9, 0
	.loc 1 777 0
	bgeu	a10, a8, .L7
	.loc 1 781 0
	addi	a8, a8, -4
	s32i.n	a8, a2, 0
	.loc 1 782 0
	movi.n	a9, 1
.L7:
	.loc 1 783 0
	mov.n	a2, a9
.LVL17:
	retw.n
.LFE55:
	.size	btdm_sleep_check_duration, .-btdm_sleep_check_duration
	.section	.text.mutex_lock_wrapper,"ax",@progbits
	.align	4
	.type	mutex_lock_wrapper, @function
mutex_lock_wrapper:
.LFB36:
	.loc 1 589 0
.LVL18:
	entry	sp, 32
.LCFI5:
	.loc 1 590 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL19:
	.loc 1 591 0
	mov.n	a2, a10
.LVL20:
	retw.n
.LFE36:
	.size	mutex_lock_wrapper, .-mutex_lock_wrapper
	.section	.text.try_heap_caps_add_region,"ax",@progbits
	.align	4
	.type	try_heap_caps_add_region, @function
try_heap_caps_add_region:
.LFB66:
	.loc 1 913 0
.LVL21:
	entry	sp, 32
.LCFI6:
	.loc 1 914 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_add_region
.LVL22:
	.loc 1 919 0
	movi	a8, 0x104
	sub	a8, a10, a8
	movi.n	a2, 0
.LVL23:
	movnez	a2, a10, a8
	.loc 1 923 0
	retw.n
.LFE66:
	.size	try_heap_caps_add_region, .-try_heap_caps_add_region
	.section	.text.btdm_check_and_init_bb,"ax",@progbits
	.literal_position
	.literal .LC4, s_time_phy_rf_just_enabled
	.align	4
	.type	btdm_check_and_init_bb, @function
btdm_check_and_init_bb:
.LFB24:
	.loc 1 363 0
	entry	sp, 32
.LCFI7:
	.loc 1 365 0
	call8	esp_phy_rf_get_on_ts
.LVL24:
	.loc 1 366 0
	l32r	a12, .LC4
	.loc 1 365 0
	mov.n	a3, a11
	.loc 1 366 0
	l32i.n	a13, a12, 4
	l32i.n	a11, a12, 0
	.loc 1 365 0
	mov.n	a4, a10
.LVL25:
	.loc 1 366 0
	xor	a8, a4, a11
	xor	a9, a3, a13
	or	a9, a8, a9
	movi.n	a10, 1
	movi.n	a8, 0
	movnez	a8, a10, a9
	extui	a8, a8, 0, 8
	mov.n	a2, a12
	bnez.n	a8, .L16
	or	a13, a11, a13
	moveqz	a8, a10, a13
	beqz.n	a8, .L13
.L16:
	.loc 1 368 0
	call8	btdm_rf_bb_init_phase2
.LVL26:
	.loc 1 369 0
	s32i.n	a4, a2, 0
	s32i.n	a3, a2, 4
.L13:
	retw.n
.LFE24:
	.size	btdm_check_and_init_bb, .-btdm_check_and_init_bb
	.section	.iram1
	.align	4
	.type	rand_wrapper, @function
rand_wrapper:
.LFB52:
	.loc 1 749 0
	entry	sp, 32
.LCFI8:
	.loc 1 750 0
	call8	esp_random
.LVL27:
	.loc 1 751 0
	mov.n	a2, a10
	retw.n
.LFE52:
	.size	rand_wrapper, .-rand_wrapper
	.align	4
	.type	read_mac_wrapper, @function
read_mac_wrapper:
.LFB50:
	.loc 1 739 0
.LVL28:
	entry	sp, 32
.LCFI9:
	.loc 1 740 0
	movi.n	a11, 2
	mov.n	a10, a2
	call8	esp_read_mac
.LVL29:
	.loc 1 741 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LFE50:
	.size	read_mac_wrapper, .-read_mac_wrapper
	.literal_position
	.literal .LC5, cause_sw_intr
	.align	4
	.type	cause_sw_intr_to_core_wrapper, @function
cause_sw_intr_to_core_wrapper:
.LFB48:
	.loc 1 721 0
.LVL31:
	entry	sp, 32
.LCFI10:
.LVL32:
	.loc 1 721 0
	mov.n	a10, a2
	mov.n	a12, a3
.LBB16:
.LBB17:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL33:
#NO_APP
.LBE17:
.LBE16:
	.loc 1 724 0
	bne	a2, a8, .L23
.LVL34:
.LBB18:
.LBB19:
.LBB20:
	.loc 1 717 0
	movi.n	a8, 1
.LVL35:
	ssl	a3
	sll	a12, a8
.LVL36:
#APP
# 717 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c" 1
	wsr.intset a12
# 0 "" 2
#NO_APP
.LBE20:
.LBE19:
.LBE18:
	.loc 1 722 0
	movi.n	a10, 0
	j	.L24
.LVL37:
.L23:
	.loc 1 727 0
	l32r	a11, .LC5
	call8	esp_ipc_call
.LVL38:
.L24:
	.loc 1 731 0
	mov.n	a2, a10
.LVL39:
	retw.n
.LFE48:
	.size	cause_sw_intr_to_core_wrapper, .-cause_sw_intr_to_core_wrapper
	.align	4
	.type	is_in_isr_wrapper, @function
is_in_isr_wrapper:
.LFB46:
	.loc 1 709 0
	entry	sp, 32
.LCFI11:
	.loc 1 710 0
	call8	xPortInIsrContext
.LVL40:
	.loc 1 710 0
	movi.n	a8, 1
	movi.n	a2, 0
	movnez	a2, a8, a10
	.loc 1 711 0
	retw.n
.LFE46:
	.size	is_in_isr_wrapper, .-is_in_isr_wrapper
	.section	.text.task_delete_wrapper,"ax",@progbits
	.align	4
	.type	task_delete_wrapper, @function
task_delete_wrapper:
.LFB45:
	.loc 1 704 0
.LVL41:
	entry	sp, 32
.LCFI12:
	.loc 1 705 0
	mov.n	a10, a2
	call8	vTaskDelete
.LVL42:
	retw.n
.LFE45:
	.size	task_delete_wrapper, .-task_delete_wrapper
	.section	.text.task_create_wrapper,"ax",@progbits
	.literal_position
	.literal .LC6, 2147483647
	.align	4
	.type	task_create_wrapper, @function
task_create_wrapper:
.LFB44:
	.loc 1 699 0
.LVL43:
	entry	sp, 48
.LCFI13:
	.loc 1 700 0
	l32r	a10, .LC6
	l32i.n	a9, sp, 48
	movi.n	a8, 0
	movnez	a8, a10, a9
	.loc 1 699 0
	mov.n	a15, a7
	.loc 1 700 0
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xTaskCreatePinnedToCore
.LVL44:
	.loc 1 701 0
	mov.n	a2, a10
.LVL45:
	.loc 1 699 0
	.loc 1 701 0
	retw.n
.LFE44:
	.size	task_create_wrapper, .-task_create_wrapper
	.section	.iram1
	.align	4
	.type	queue_recv_from_isr_wrapper, @function
queue_recv_from_isr_wrapper:
.LFB43:
	.loc 1 694 0
.LVL46:
	entry	sp, 32
.LCFI14:
	.loc 1 695 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueReceiveFromISR
.LVL47:
	.loc 1 696 0
	mov.n	a2, a10
.LVL48:
	retw.n
.LFE43:
	.size	queue_recv_from_isr_wrapper, .-queue_recv_from_isr_wrapper
	.align	4
	.type	semphr_take_from_isr_wrapper, @function
semphr_take_from_isr_wrapper:
.LFB30:
	.loc 1 504 0
.LVL49:
	entry	sp, 32
.LCFI15:
	.loc 1 505 0
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a2
	call8	xQueueReceiveFromISR
.LVL50:
	.loc 1 506 0
	mov.n	a2, a10
.LVL51:
	retw.n
.LFE30:
	.size	semphr_take_from_isr_wrapper, .-semphr_take_from_isr_wrapper
	.align	4
	.type	queue_send_from_isr_wrapper, @function
queue_send_from_isr_wrapper:
.LFB41:
	.loc 1 680 0
.LVL52:
	entry	sp, 32
.LCFI16:
	.loc 1 681 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericSendFromISR
.LVL53:
	.loc 1 682 0
	mov.n	a2, a10
.LVL54:
	retw.n
.LFE41:
	.size	queue_send_from_isr_wrapper, .-queue_send_from_isr_wrapper
	.section	.text.mutex_unlock_wrapper,"ax",@progbits
	.align	4
	.type	mutex_unlock_wrapper, @function
mutex_unlock_wrapper:
.LFB37:
	.loc 1 594 0
.LVL55:
	entry	sp, 32
.LCFI17:
	.loc 1 595 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL56:
	.loc 1 596 0
	mov.n	a2, a10
.LVL57:
	retw.n
.LFE37:
	.size	mutex_unlock_wrapper, .-mutex_unlock_wrapper
	.section	.text.semphr_give_wrapper,"ax",@progbits
	.align	4
	.type	semphr_give_wrapper, @function
semphr_give_wrapper:
.LFB97:
	entry	sp, 32
.LCFI18:
	mov.n	a10, a2
	call8	mutex_unlock_wrapper
	mov.n	a2, a10
	retw.n
.LFE97:
	.size	semphr_give_wrapper, .-semphr_give_wrapper
	.section	.text.queue_delete_wrapper,"ax",@progbits
	.align	4
	.type	queue_delete_wrapper, @function
queue_delete_wrapper:
.LFB39:
	.loc 1 650 0
.LVL58:
	.loc 1 650 0
	entry	sp, 32
.LCFI19:
	.loc 1 652 0
	mov.n	a10, a2
	call8	vQueueDelete
.LVL59:
	retw.n
.LFE39:
	.size	queue_delete_wrapper, .-queue_delete_wrapper
	.section	.text.queue_create_wrapper,"ax",@progbits
	.align	4
	.type	queue_create_wrapper, @function
queue_create_wrapper:
.LFB38:
	.loc 1 599 0
.LVL60:
	entry	sp, 32
.LCFI20:
	.loc 1 645 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericCreate
.LVL61:
	.loc 1 647 0
	mov.n	a2, a10
.LVL62:
	retw.n
.LFE38:
	.size	queue_create_wrapper, .-queue_create_wrapper
	.section	.text.mutex_create_wrapper,"ax",@progbits
	.align	4
	.type	mutex_create_wrapper, @function
mutex_create_wrapper:
.LFB34:
	.loc 1 528 0
	entry	sp, 32
.LCFI21:
	.loc 1 564 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL63:
	.loc 1 566 0
	mov.n	a2, a10
	retw.n
.LFE34:
	.size	mutex_create_wrapper, .-mutex_create_wrapper
	.section	.iram1
	.align	4
	.type	semphr_give_from_isr_wrapper, @function
semphr_give_from_isr_wrapper:
.LFB31:
	.loc 1 509 0
.LVL64:
	entry	sp, 32
.LCFI22:
	.loc 1 510 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGiveFromISR
.LVL65:
	.loc 1 511 0
	mov.n	a2, a10
.LVL66:
	retw.n
.LFE31:
	.size	semphr_give_from_isr_wrapper, .-semphr_give_from_isr_wrapper
	.align	4
	.type	task_yield_from_isr, @function
task_yield_from_isr:
.LFB27:
	.loc 1 438 0
	entry	sp, 32
.LCFI23:
	.loc 1 439 0
	call8	_frxt_setup_switch
.LVL67:
	retw.n
.LFE27:
	.size	task_yield_from_isr, .-task_yield_from_isr
	.literal_position
	.literal .LC7, global_int_mux
	.align	4
	.type	interrupt_restore, @function
interrupt_restore:
.LFB26:
	.loc 1 429 0
	entry	sp, 32
.LCFI24:
	.loc 1 430 0
	call8	xPortInIsrContext
.LVL68:
	.loc 1 431 0
	l32r	a10, .LC7
	call8	vTaskExitCritical
.LVL69:
	retw.n
.LFE26:
	.size	interrupt_restore, .-interrupt_restore
	.literal_position
	.literal .LC8, global_int_mux
	.align	4
	.type	interrupt_disable, @function
interrupt_disable:
.LFB25:
	.loc 1 420 0
	entry	sp, 32
.LCFI25:
	.loc 1 421 0
	call8	xPortInIsrContext
.LVL70:
	.loc 1 422 0
	l32r	a10, .LC8
	call8	vTaskEnterCritical
.LVL71:
	retw.n
.LFE25:
	.size	interrupt_disable, .-interrupt_disable
	.section	.text.malloc_internal_wrapper,"ax",@progbits
	.literal_position
	.literal .LC9, 6144
	.align	4
	.type	malloc_internal_wrapper, @function
malloc_internal_wrapper:
.LFB49:
	.loc 1 734 0
.LVL72:
	entry	sp, 32
.LCFI26:
	.loc 1 735 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL73:
	.loc 1 736 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE49:
	.size	malloc_internal_wrapper, .-malloc_internal_wrapper
	.section	.text.semphr_create_wrapper,"ax",@progbits
	.align	4
	.type	semphr_create_wrapper, @function
semphr_create_wrapper:
.LFB28:
	.loc 1 443 0
.LVL75:
	entry	sp, 32
.LCFI27:
	.loc 1 445 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueCreateCountingSemaphore
.LVL76:
	.loc 1 481 0
	mov.n	a2, a10
.LVL77:
	retw.n
.LFE28:
	.size	semphr_create_wrapper, .-semphr_create_wrapper
	.section	.text.semphr_take_wrapper,"ax",@progbits
	.literal_position
	.literal .LC10, -858993459
	.align	4
	.type	semphr_take_wrapper, @function
semphr_take_wrapper:
.LFB32:
	.loc 1 514 0
.LVL78:
	entry	sp, 32
.LCFI28:
	.loc 1 514 0
	mov.n	a10, a2
	mov.n	a12, a3
.LBB23:
.LBB24:
	.loc 1 516 0
	movi.n	a13, 0
.LBE24:
.LBE23:
	.loc 1 515 0
	beqi	a3, -1, .L47
.L45:
	.loc 1 518 0
	l32r	a8, .LC10
	movi.n	a13, 0
	muluh	a12, a3, a8
	srli	a12, a12, 3
.L47:
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL79:
	.loc 1 520 0
	mov.n	a2, a10
.LVL80:
	retw.n
.LFE32:
	.size	semphr_take_wrapper, .-semphr_take_wrapper
	.section	.text.queue_recv_wrapper,"ax",@progbits
	.literal_position
	.literal .LC11, -858993459
	.align	4
	.type	queue_recv_wrapper, @function
queue_recv_wrapper:
.LFB42:
	.loc 1 685 0
.LVL81:
	entry	sp, 32
.LCFI29:
	.loc 1 685 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
.LBB27:
.LBB28:
	.loc 1 687 0
	movi.n	a13, 0
.LBE28:
.LBE27:
	.loc 1 686 0
	beqi	a4, -1, .L51
.L49:
	.loc 1 689 0
	l32r	a8, .LC11
	movi.n	a13, 0
	muluh	a12, a4, a8
	srli	a12, a12, 3
.L51:
	call8	xQueueGenericReceive
.LVL82:
	.loc 1 691 0
	mov.n	a2, a10
.LVL83:
	retw.n
.LFE42:
	.size	queue_recv_wrapper, .-queue_recv_wrapper
	.section	.text.btdm_sleep_exit_phase3_wrapper,"ax",@progbits
	.literal_position
	.literal .LC12, s_btdm_slp_tmr
	.align	4
	.type	btdm_sleep_exit_phase3_wrapper, @function
btdm_sleep_exit_phase3_wrapper:
.LFB59:
	.loc 1 832 0
	entry	sp, 32
.LCFI30:
	.loc 1 833 0
	call8	btdm_controller_get_sleep_mode
.LVL84:
	mov.n	a2, a10
	bnei	a10, 1, .L53
	.loc 1 834 0
	movi.n	a10, 0
	call8	esp_modem_sleep_exit
.LVL85:
	.loc 1 835 0
	mov.n	a10, a2
	call8	esp_modem_sleep_exit
.LVL86:
	.loc 1 836 0
	call8	btdm_check_and_init_bb
.LVL87:
	.loc 1 838 0
	l32r	a2, .LC12
	l32i.n	a10, a2, 0
	call8	esp_timer_stop
.LVL88:
	retw.n
.L53:
	.loc 1 840 0
	call8	btdm_controller_get_sleep_mode
.LVL89:
	bnei	a10, 2, .L52
.LBB31:
.LBB32:
	.loc 1 842 0
	movi.n	a10, 0x1e
	call8	periph_module_enable
.LVL90:
	.loc 1 843 0
	movi.n	a10, 0
	call8	esp_modem_sleep_exit
.LVL91:
.L52:
	retw.n
.LBE32:
.LBE31:
.LFE59:
	.size	btdm_sleep_exit_phase3_wrapper, .-btdm_sleep_exit_phase3_wrapper
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC13:
	.string	"us_to_sleep > BTDM_MIN_TIMER_UNCERTAINTY_US"
.LC16:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c"
.LC19:
	.string	"BTDM_INIT"
.LC21:
	.string	"\033[0;33mW (%d) %s: timer start failed\033[0m\n"
	.section	.text.btdm_sleep_enter_phase1_wrapper,"ax",@progbits
	.literal_position
	.literal .LC14, .LC13
	.literal .LC15, __func__$6264
	.literal .LC17, .LC16
	.literal .LC18, s_btdm_slp_tmr
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.align	4
	.type	btdm_sleep_enter_phase1_wrapper, @function
btdm_sleep_enter_phase1_wrapper:
.LFB56:
	.loc 1 786 0
.LVL92:
	entry	sp, 32
.LCFI31:
	.loc 1 789 0
	mov.n	a10, a2
	call8	btdm_lpcycles_2_us
.LVL93:
	.loc 1 792 0
	movi	a9, 0x708
	bltu	a9, a10, .L56
.LVL94:
.LBB35:
.LBB36:
	l32r	a13, .LC14
	l32r	a12, .LC15
	l32r	a10, .LC17
.LVL95:
	movi	a11, 0x318
	call8	__assert_func
.LVL96:
.L56:
.LBE36:
.LBE35:
	.loc 1 795 0
	srli	a12, a10, 11
.LVL97:
	.loc 1 796 0
	movi	a11, 0x707
	bltu	a11, a12, .L57
	.loc 1 797 0
	mov.n	a12, a9
.LVL98:
.L57:
	.loc 1 800 0
	l32r	a8, .LC18
	sub	a12, a10, a12
.LVL99:
	l32i.n	a10, a8, 0
.LVL100:
	movi.n	a13, 0
	call8	esp_timer_start_once
.LVL101:
	beqz.n	a10, .L55
	.loc 1 801 0 discriminator 4
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC20
	l32r	a12, .LC22
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL103:
.L55:
	retw.n
.LFE56:
	.size	btdm_sleep_enter_phase1_wrapper, .-btdm_sleep_enter_phase1_wrapper
	.section	.iram1
	.literal_position
	.literal .LC23, s_pm_lock_sem
	.literal .LC24, s_pm_lock
	.align	4
	.type	btdm_slp_tmr_callback, @function
btdm_slp_tmr_callback:
.LFB60:
	.loc 1 849 0
.LVL104:
	entry	sp, 32
.LCFI32:
	.loc 1 850 0
	l32r	a8, .LC23
	movi.n	a11, 0
	l32i.n	a10, a8, 0
	call8	semphr_take_wrapper
.LVL105:
	bnei	a10, 1, .L62
.LBB39:
.LBB40:
	.loc 1 826 0
	l32r	a8, .LC24
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_acquire
.LVL106:
.L62:
	retw.n
.LBE40:
.LBE39:
.LFE60:
	.size	btdm_slp_tmr_callback, .-btdm_slp_tmr_callback
	.section	.text.queue_send_wrapper,"ax",@progbits
	.literal_position
	.literal .LC25, -858993459
	.align	4
	.type	queue_send_wrapper, @function
queue_send_wrapper:
.LFB40:
	.loc 1 671 0
.LVL107:
	entry	sp, 32
.LCFI33:
	.loc 1 671 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
.LBB43:
.LBB44:
	.loc 1 673 0
	movi.n	a13, 0
.LBE44:
.LBE43:
	.loc 1 672 0
	beqi	a4, -1, .L67
.L65:
	.loc 1 675 0
	l32r	a8, .LC25
	movi.n	a13, 0
	muluh	a12, a4, a8
	srli	a12, a12, 3
.L67:
	call8	xQueueGenericSend
.LVL108:
	.loc 1 677 0
	mov.n	a2, a10
.LVL109:
	retw.n
.LFE40:
	.size	queue_send_wrapper, .-queue_send_wrapper
	.section	.text.btdm_sleep_enter_phase2_wrapper,"ax",@progbits
	.literal_position
	.literal .LC26, s_pm_lock
	.literal .LC27, s_pm_lock_sem
	.align	4
	.type	btdm_sleep_enter_phase2_wrapper, @function
btdm_sleep_enter_phase2_wrapper:
.LFB57:
	.loc 1 807 0
	entry	sp, 32
.LCFI34:
	.loc 1 808 0
	call8	btdm_controller_get_sleep_mode
.LVL110:
	mov.n	a2, a10
	bnei	a10, 1, .L69
	.loc 1 809 0
	movi.n	a10, 0
	call8	esp_modem_sleep_enter
.LVL111:
	.loc 1 810 0
	mov.n	a10, a2
	call8	esp_modem_sleep_enter
.LVL112:
	.loc 1 812 0
	l32r	a2, .LC26
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_release
.LVL113:
	.loc 1 813 0
	l32r	a2, .LC27
	l32i.n	a10, a2, 0
	call8	mutex_unlock_wrapper
.LVL114:
	retw.n
.L69:
	.loc 1 815 0
	call8	btdm_controller_get_sleep_mode
.LVL115:
	bnei	a10, 2, .L68
.LBB47:
.LBB48:
	.loc 1 816 0
	movi.n	a10, 0
	call8	esp_modem_sleep_enter
.LVL116:
	.loc 1 818 0
	movi.n	a10, 0x1e
	call8	periph_module_disable
.LVL117:
.L68:
	retw.n
.LBE48:
.LBE47:
.LFE57:
	.size	btdm_sleep_enter_phase2_wrapper, .-btdm_sleep_enter_phase2_wrapper
	.section	.text.mutex_delete_wrapper,"ax",@progbits
	.align	4
	.type	mutex_delete_wrapper, @function
mutex_delete_wrapper:
.LFB93:
	entry	sp, 32
.LCFI35:
	mov.n	a10, a2
	call8	vQueueDelete
	retw.n
.LFE93:
	.size	mutex_delete_wrapper, .-mutex_delete_wrapper
	.section	.text.semphr_delete_wrapper,"ax",@progbits
	.align	4
	.type	semphr_delete_wrapper, @function
semphr_delete_wrapper:
.LFB95:
	entry	sp, 32
.LCFI36:
	mov.n	a10, a2
	call8	vQueueDelete
	retw.n
.LFE95:
	.size	semphr_delete_wrapper, .-semphr_delete_wrapper
	.section	.iram1
	.literal_position
	.literal .LC28, s_pm_lock_sem
	.literal .LC29, s_pm_lock
	.align	4
	.type	btdm_sleep_exit_phase1_wrapper, @function
btdm_sleep_exit_phase1_wrapper:
.LFB58:
	.loc 1 823 0
	.loc 1 823 0
	entry	sp, 32
.LCFI37:
	.loc 1 825 0
	l32r	a8, .LC28
	movi.n	a11, 0
	l32i.n	a10, a8, 0
	call8	semphr_take_from_isr_wrapper
.LVL118:
	bnei	a10, 1, .L73
.LBB51:
.LBB52:
	.loc 1 826 0
	l32r	a8, .LC29
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_acquire
.LVL119:
.L73:
	retw.n
.LBE52:
.LBE51:
.LFE58:
	.size	btdm_sleep_exit_phase1_wrapper, .-btdm_sleep_exit_phase1_wrapper
	.section	.text.esp_vhci_host_check_send_available,"ax",@progbits
	.align	4
	.global	esp_vhci_host_check_send_available
	.type	esp_vhci_host_check_send_available, @function
esp_vhci_host_check_send_available:
.LFB61:
	.loc 1 857 0
	entry	sp, 32
.LCFI38:
	.loc 1 858 0
	call8	API_vhci_host_check_send_available
.LVL120:
	.loc 1 859 0
	mov.n	a2, a10
	retw.n
.LFE61:
	.size	esp_vhci_host_check_send_available, .-esp_vhci_host_check_send_available
	.section	.text.esp_vhci_host_send_packet,"ax",@progbits
	.literal_position
	.literal .LC30, s_pm_lock_sem
	.literal .LC31, s_pm_lock
	.literal .LC32, s_btdm_slp_tmr
	.align	4
	.global	esp_vhci_host_send_packet
	.type	esp_vhci_host_send_packet, @function
esp_vhci_host_send_packet:
.LFB62:
	.loc 1 862 0
.LVL121:
	entry	sp, 32
.LCFI39:
	.loc 1 862 0
	extui	a3, a3, 0, 16
	.loc 1 863 0
	call8	btdm_power_state_active
.LVL122:
	bnez.n	a10, .L77
	.loc 1 865 0
	l32r	a8, .LC30
	mov.n	a11, a10
	l32i.n	a10, a8, 0
	call8	semphr_take_wrapper
.LVL123:
	beqz.n	a10, .L78
	.loc 1 866 0
	l32r	a8, .LC31
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_acquire
.LVL124:
.L78:
	.loc 1 868 0
	l32r	a8, .LC32
	l32i.n	a10, a8, 0
	call8	esp_timer_stop
.LVL125:
	.loc 1 870 0
	call8	btdm_wakeup_request
.LVL126:
.L77:
	.loc 1 872 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	API_vhci_host_send_packet
.LVL127:
	retw.n
.LFE62:
	.size	esp_vhci_host_send_packet, .-esp_vhci_host_send_packet
	.section	.text.esp_vhci_host_register_callback,"ax",@progbits
	.align	4
	.global	esp_vhci_host_register_callback
	.type	esp_vhci_host_register_callback, @function
esp_vhci_host_register_callback:
.LFB63:
	.loc 1 876 0
.LVL128:
	entry	sp, 32
.LCFI40:
	.loc 1 877 0
	mov.n	a10, a2
	call8	API_vhci_host_register_callback
.LVL129:
	movi.n	a8, 1
	movi.n	a2, 0
.LVL130:
	movnez	a2, a8, a10
	.loc 1 878 0
	neg	a2, a2
	retw.n
.LFE63:
	.size	esp_vhci_host_register_callback, .-esp_vhci_host_register_callback
	.section	.rodata.str1.1
.LC37:
	.string	"try_heap_caps_add_region(mem_start, mem_end)"
	.section	.text.esp_bt_controller_mem_release,"ax",@progbits
	.literal_position
	.literal .LC35, btdm_controller_status
	.literal .LC36, btdm_dram_available_region
	.literal .LC38, .LC37
	.literal .LC39, __func__$6313
	.literal .LC40, .LC16
	.literal .LC41, _btdm_bss_start
	.literal .LC42, _btdm_bss_end
	.literal .LC43, _btdm_data_start
	.literal .LC44, _btdm_data_end
	.align	4
	.global	esp_bt_controller_mem_release
	.type	esp_bt_controller_mem_release, @function
esp_bt_controller_mem_release:
.LFB67:
	.loc 1 926 0
.LVL131:
	entry	sp, 32
.LCFI41:
.LVL132:
	.loc 1 930 0
	l32r	a3, .LC35
	l32i.n	a7, a3, 0
	.loc 1 931 0
	movi	a3, 0x103
	.loc 1 930 0
	bnez.n	a7, .L84
	.loc 1 935 0
	l32r	a4, .LC36
	l32i.n	a6, a4, 0
	bnone	a2, a6, .L84
	mov.n	a3, a4
.LVL133:
	movi.n	a9, 1
	movi.n	a6, -1
.LVL134:
.L91:
.LBB53:
	.loc 1 941 0
	l32i.n	a8, a3, 0
	beqz.n	a8, .L85
	.loc 1 942 0
	and	a10, a2, a8
	beq	a8, a10, .L86
.L85:
	.loc 1 944 0
	xor	a10, a6, a2
	and	a8, a10, a8
	s32i.n	a8, a3, 0
	.loc 1 945 0
	j	.L87
.L86:
	.loc 1 948 0
	xor	a10, a6, a2
	and	a8, a10, a8
	s32i.n	a8, a3, 0
	.loc 1 951 0
	beqz.n	a9, .L88
	.loc 1 952 0
	l32i.n	a5, a3, 4
.LVL135:
.L88:
	.loc 1 957 0
	beqi	a7, 6, .L89
	.loc 1 959 0
	l32i.n	a8, a3, 12
	.loc 1 958 0
	l32i.n	a11, a3, 8
.LVL136:
	.loc 1 959 0
	beqz.n	a8, .L90
	.loc 1 960 0
	and	a9, a2, a8
	bne	a8, a9, .L90
	.loc 1 961 0
	l32i.n	a8, a3, 16
	beq	a11, a8, .L97
.L90:
.LBB54:
	.loc 1 965 0
	mov.n	a10, a5
	call8	try_heap_caps_add_region
.LVL137:
	beqz.n	a10, .L99
	.loc 1 965 0 is_stmt 0 discriminator 1
	l32r	a14, .LC38
	l32r	a13, .LC39
	movi	a12, 0x3c5
	j	.L117
.LVL138:
.L89:
.LBE54:
.LBB55:
	.loc 1 971 0 is_stmt 1
	l32i	a11, a4, 80
	mov.n	a10, a5
	call8	try_heap_caps_add_region
.LVL139:
	beqz.n	a10, .L99
	.loc 1 971 0 is_stmt 0 discriminator 1
	l32r	a14, .LC38
	l32r	a13, .LC39
	movi	a12, 0x3cb
.LVL140:
.L117:
	l32r	a11, .LC40
	call8	_esp_error_check_failed
.LVL141:
.L97:
.LBE55:
	movi.n	a9, 0
	j	.L87
.LVL142:
.L99:
	.loc 1 972 0 is_stmt 1
	movi.n	a9, 1
.LVL143:
.L87:
	.loc 1 939 0 discriminator 2
	addi.n	a7, a7, 1
.LVL144:
	addi.n	a3, a3, 12
	bnei	a7, 7, .L91
.LBE53:
	.loc 1 976 0
	beqi	a2, 3, .L92
.LVL145:
.L94:
	.loc 1 990 0
	movi.n	a3, 0
	j	.L84
.LVL146:
.L92:
	.loc 1 977 0
	l32r	a10, .LC41
.LVL147:
	.loc 1 978 0
	l32r	a11, .LC42
.LVL148:
	.loc 1 979 0
	beq	a10, a11, .L93
.LBB56:
	.loc 1 981 0
	call8	try_heap_caps_add_region
.LVL149:
	beqz.n	a10, .L93
	.loc 1 981 0 is_stmt 0 discriminator 1
	l32r	a14, .LC38
	l32r	a13, .LC39
	movi	a12, 0x3d5
	j	.L117
.LVL150:
.L93:
.LBE56:
	.loc 1 983 0 is_stmt 1
	l32r	a10, .LC43
.LVL151:
	.loc 1 984 0
	l32r	a11, .LC44
.LVL152:
	.loc 1 985 0
	beq	a10, a11, .L94
.LBB57:
	.loc 1 987 0
	call8	try_heap_caps_add_region
.LVL153:
	beqz.n	a10, .L94
	.loc 1 987 0 is_stmt 0 discriminator 1
	l32r	a14, .LC38
	l32r	a13, .LC39
	movi	a12, 0x3db
	j	.L117
.LVL154:
.L84:
.LBE57:
	.loc 1 991 0 is_stmt 1
	mov.n	a2, a3
.LVL155:
	retw.n
.LFE67:
	.size	esp_bt_controller_mem_release, .-esp_bt_controller_mem_release
	.section	.text.esp_bt_mem_release,"ax",@progbits
	.literal_position
	.literal .LC45, _bt_bss_start
	.literal .LC46, _bt_bss_end
	.literal .LC47, .LC37
	.literal .LC48, __func__$6327
	.literal .LC49, .LC16
	.literal .LC50, _bt_data_start
	.literal .LC51, _bt_data_end
	.align	4
	.global	esp_bt_mem_release
	.type	esp_bt_mem_release, @function
esp_bt_mem_release:
.LFB68:
	.loc 1 994 0
.LVL156:
	entry	sp, 32
.LCFI42:
	.loc 1 998 0
	mov.n	a10, a2
	call8	esp_bt_controller_mem_release
.LVL157:
	.loc 1 999 0
	bnez.n	a10, .L123
	.loc 1 1003 0
	beqi	a2, 3, .L120
.LVL158:
.L122:
	.loc 1 1017 0
	movi.n	a2, 0
.LVL159:
	retw.n
.LVL160:
.L120:
	.loc 1 1004 0
	l32r	a10, .LC45
.LVL161:
	.loc 1 1005 0
	l32r	a11, .LC46
.LVL162:
	.loc 1 1006 0
	beq	a10, a11, .L121
.LBB58:
	.loc 1 1008 0
	call8	try_heap_caps_add_region
.LVL163:
	beqz.n	a10, .L121
	.loc 1 1008 0 is_stmt 0 discriminator 1
	l32r	a14, .LC47
	l32r	a13, .LC48
	movi	a12, 0x3f0
	j	.L130
.LVL164:
.L121:
.LBE58:
	.loc 1 1010 0 is_stmt 1
	l32r	a10, .LC50
.LVL165:
	.loc 1 1011 0
	l32r	a11, .LC51
.LVL166:
	.loc 1 1012 0
	beq	a10, a11, .L122
.LBB59:
	.loc 1 1014 0
	call8	try_heap_caps_add_region
.LVL167:
	beqz.n	a10, .L122
	.loc 1 1014 0 is_stmt 0 discriminator 1
	l32r	a14, .LC47
	l32r	a13, .LC48
	movi	a12, 0x3f6
.LVL168:
.L130:
	l32r	a11, .LC49
	call8	_esp_error_check_failed
.LVL169:
.L123:
.LBE59:
	mov.n	a2, a10
.LVL170:
	.loc 1 1018 0 is_stmt 1
	retw.n
.LFE68:
	.size	esp_bt_mem_release, .-esp_bt_mem_release
	.section	.rodata.str1.1
.LC59:
	.string	"\033[0;32mI (%d) %s: BT controller compile version [%s]\033[0m\n"
.LC62:
	.string	"btLS"
.LC65:
	.string	"bt"
.LC68:
	.string	"btSlp"
.LC78:
	.string	"select_src_ret && set_div_ret"
	.section	.text.esp_bt_controller_init,"ax",@progbits
	.literal_position
	.literal .LC52, osi_funcs_p
	.literal .LC53, osi_funcs_ro
	.literal .LC54, btdm_controller_status
	.literal .LC55, btdm_dram_available_region
	.literal .LC56, 4095
	.literal .LC57, 1515890085
	.literal .LC58, .LC19
	.literal .LC60, .LC59
	.literal .LC61, s_light_sleep_pm_lock
	.literal .LC63, .LC62
	.literal .LC64, s_pm_lock
	.literal .LC66, .LC65
	.literal .LC67, btdm_slp_tmr_callback
	.literal .LC69, .LC68
	.literal .LC70, s_btdm_slp_tmr
	.literal .LC71, s_pm_lock_sem
	.literal .LC72, _data_start_btdm
	.literal .LC73, _data_end_btdm
	.literal .LC74, _data_start_btdm_rom
	.literal .LC75, btdm_lpcycle_us_frac
	.literal .LC76, btdm_lpcycle_us
	.literal .LC77, 16777216
	.literal .LC79, .LC78
	.literal .LC80, __func__$6338
	.literal .LC81, .LC16
	.literal .LC82, 1048576
	.align	4
	.global	esp_bt_controller_init
	.type	esp_bt_controller_init, @function
esp_bt_controller_init:
.LFB69:
	.loc 1 1021 0
.LVL171:
	entry	sp, 64
.LCFI43:
.LVL172:
	.loc 1 1025 0
	movi	a10, 0xa8
	call8	malloc_internal_wrapper
.LVL173:
	l32r	a3, .LC52
	.loc 1 1021 0
	mov.n	a4, a2
	.loc 1 1025 0
	s32i.n	a10, a3, 0
	mov.n	a2, a10
.LVL174:
	.loc 1 1026 0
	beqz.n	a10, .L146
	.loc 1 1030 0
	l32r	a11, .LC53
	movi	a12, 0xa8
	call8	memcpy
.LVL175:
	.loc 1 1031 0
	mov.n	a10, a2
	call8	btdm_osi_funcs_register
.LVL176:
	beqz.n	a10, .L133
.L134:
	.loc 1 1032 0
	movi	a11, 0x102
	j	.L132
.L133:
	.loc 1 1035 0
	l32r	a6, .LC54
	.loc 1 1036 0
	movi	a11, 0x103
	.loc 1 1035 0
	l32i.n	a2, a6, 0
	bnez.n	a2, .L132
	.loc 1 1040 0
	l32r	a3, .LC55
	l32i.n	a5, a3, 0
	beqz.n	a5, .L132
	.loc 1 1044 0
	beqz.n	a4, .L134
	.loc 1 1048 0
	l8ui	a7, a4, 2
	movi.n	a5, 0x17
	bne	a7, a5, .L134
	.loc 1 1049 0
	l16ui	a5, a4, 0
	l32r	a7, .LC56
	bgeu	a7, a5, .L134
	.loc 1 1054 0
	s8i	a2, a4, 23
	.loc 1 1055 0
	l32r	a2, .LC57
	.loc 1 1057 0
	l8ui	a5, a4, 20
	.loc 1 1055 0
	s32i.n	a2, a4, 24
	.loc 1 1057 0
	bbci	a5, 0, .L135
	.loc 1 1057 0 is_stmt 0 discriminator 1
	l8ui	a2, a4, 21
	movi.n	a7, 8
	addi.n	a2, a2, -1
	extui	a2, a2, 0, 8
	bltu	a7, a2, .L134
.L135:
	.loc 1 1058 0 is_stmt 1
	bbci	a5, 1, .L136
	.loc 1 1058 0 is_stmt 0 discriminator 1
	l8ui	a2, a4, 22
	addi.n	a2, a2, -1
	extui	a2, a2, 0, 8
	bgeui	a2, 7, .L134
.L136:
	.loc 1 1063 0 is_stmt 1
	call8	esp_log_timestamp
.LVL177:
	mov.n	a2, a10
	call8	btdm_controller_get_compile_version
.LVL178:
	l32r	a11, .LC58
	l32r	a12, .LC60
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL179:
	.loc 1 1074 0
	l32r	a5, .LC61
	l32r	a12, .LC63
	mov.n	a13, a5
	movi.n	a11, 0
	movi.n	a10, 2
	call8	esp_pm_lock_create
.LVL180:
	mov.n	a6, a10
.LVL181:
	l32r	a2, .LC64
	l32r	a7, .LC70
	bnez.n	a10, .L137
	.loc 1 1077 0
	l32r	a12, .LC66
	mov.n	a11, a10
	mov.n	a13, a2
	movi.n	a10, 1
	call8	esp_pm_lock_create
.LVL182:
	mov.n	a6, a10
.LVL183:
	bnez.n	a10, .L137
	.loc 1 1080 0
	mov.n	a11, a10
	movi.n	a12, 0x10
	mov.n	a10, sp
	call8	memset
.LVL184:
	l32r	a8, .LC67
	.loc 1 1085 0
	mov.n	a11, a7
	.loc 1 1080 0
	s32i.n	a8, sp, 0
	l32r	a8, .LC69
	.loc 1 1085 0
	mov.n	a10, sp
	.loc 1 1080 0
	s32i.n	a8, sp, 12
	.loc 1 1085 0
	call8	esp_timer_create
.LVL185:
	mov.n	a6, a10
.LVL186:
	bnez.n	a10, .L137
.LVL187:
.LBB67:
.LBB68:
	.loc 1 445 0
	mov.n	a11, a10
	movi.n	a10, 1
	call8	xQueueCreateCountingSemaphore
.LVL188:
.LBE68:
.LBE67:
	.loc 1 1089 0
	l32r	a6, .LC71
.LVL189:
	s32i.n	a10, a6, 0
	.loc 1 1090 0
	bnez.n	a10, .L138
.LVL190:
.L142:
	.loc 1 1091 0
	movi	a6, 0x101
	j	.L137
.LVL191:
.L138:
.LBB69:
.LBB70:
	.loc 1 900 0
	l32r	a8, .LC74
	l32r	a10, .LC72
	l32r	a12, .LC73
	l32i.n	a11, a8, 0
	sub	a12, a12, a10
	call8	memcpy
.LVL192:
.LBB71:
	.loc 1 904 0
	movi.n	a6, 1
.LVL193:
.L140:
	.loc 1 905 0
	l32i.n	a9, a3, 12
	beqz.n	a9, .L139
	.loc 1 906 0
	l32i.n	a10, a3, 16
	l32i.n	a12, a3, 20
	movi.n	a11, 0
	sub	a12, a12, a10
	call8	memset
.LVL194:
.L139:
	.loc 1 904 0
	addi.n	a6, a6, 1
.LVL195:
	addi.n	a3, a3, 12
	bnei	a6, 7, .L140
.LBE71:
.LBE70:
.LBE69:
	.loc 1 1098 0
	movi.n	a10, 0x1c
	call8	periph_module_enable
.LVL196:
	.loc 1 1100 0
	l32r	a6, .LC75
.LVL197:
	movi.n	a3, 0x13
	.loc 1 1101 0
	l32r	a8, .LC77
	.loc 1 1100 0
	s8i	a3, a6, 0
	.loc 1 1101 0
	l32r	a6, .LC76
	.loc 1 1106 0
	movi.n	a10, 0
	.loc 1 1101 0
	s32i.n	a8, a6, 0
.LVL198:
	.loc 1 1106 0
	call8	btdm_lpclk_select_src
.LVL199:
	mov.n	a6, a10
.LVL200:
	.loc 1 1107 0
	call8	rtc_clk_xtal_freq_get
.LVL201:
	slli	a10, a10, 1
	addi.n	a10, a10, -1
	call8	btdm_lpclk_set_div
.LVL202:
	.loc 1 1108 0
	movi.n	a8, 1
	xor	a10, a10, a8
.LVL203:
	extui	a10, a10, 0, 8
	bltu	a10, a6, .L141
	.loc 1 1108 0 is_stmt 0 discriminator 1
	l32r	a13, .LC79
	l32r	a12, .LC80
	l32r	a10, .LC81
	movi	a11, 0x454
	call8	__assert_func
.LVL204:
.L141:
	.loc 1 1109 0 is_stmt 1
	l32r	a6, .LC75
.LVL205:
	.loc 1 1119 0
	movi.n	a10, 1
	.loc 1 1109 0
	s8i	a3, a6, 0
	.loc 1 1110 0
	l32r	a3, .LC82
	l32r	a6, .LC76
	s32i.n	a3, a6, 0
	.loc 1 1119 0
	call8	btdm_controller_set_sleep_mode
.LVL206:
	.loc 1 1128 0
	mov.n	a11, a4
	movi.n	a10, 0x18
	call8	btdm_controller_init
.LVL207:
	mov.n	a11, a10
	bnez.n	a10, .L142
	.loc 1 1133 0
	l32r	a3, .LC54
	movi.n	a2, 1
	s32i.n	a2, a3, 0
	.loc 1 1135 0
	j	.L132
.LVL208:
.L137:
	.loc 1 1139 0
	l32i.n	a10, a5, 0
	beqz.n	a10, .L143
	.loc 1 1141 0
	movi.n	a3, 0
	.loc 1 1140 0
	call8	esp_pm_lock_delete
.LVL209:
	.loc 1 1141 0
	s32i.n	a3, a5, 0
.L143:
	.loc 1 1143 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L144
	.loc 1 1145 0
	movi.n	a3, 0
	.loc 1 1144 0
	call8	esp_pm_lock_delete
.LVL210:
	.loc 1 1145 0
	s32i.n	a3, a2, 0
.L144:
	.loc 1 1147 0
	l32i.n	a10, a7, 0
	beqz.n	a10, .L145
	.loc 1 1149 0
	movi.n	a2, 0
	.loc 1 1148 0
	call8	esp_timer_delete
.LVL211:
	.loc 1 1149 0
	s32i.n	a2, a7, 0
.L145:
	.loc 1 1151 0
	l32r	a2, .LC71
	.loc 1 1156 0
	mov.n	a11, a6
	.loc 1 1151 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L132
.LVL212:
.LBB72:
.LBB73:
	.loc 1 486 0
	s32i.n	a6, sp, 16
	call8	vQueueDelete
.LVL213:
.LBE73:
.LBE72:
	.loc 1 1153 0
	l32r	a3, .LC71
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	l32i.n	a11, sp, 16
	j	.L132
.LVL214:
.L146:
	.loc 1 1027 0
	movi	a11, 0x101
.LVL215:
.L132:
	.loc 1 1157 0
	mov.n	a2, a11
	retw.n
.LFE69:
	.size	esp_bt_controller_init, .-esp_bt_controller_init
	.section	.text.esp_bt_controller_deinit,"ax",@progbits
	.literal_position
	.literal .LC83, btdm_controller_status
	.literal .LC84, s_light_sleep_pm_lock
	.literal .LC85, s_pm_lock
	.literal .LC86, s_btdm_slp_tmr
	.literal .LC87, s_pm_lock_sem
	.literal .LC88, osi_funcs_p
	.literal .LC89, btdm_lpcycle_us
	.align	4
	.global	esp_bt_controller_deinit
	.type	esp_bt_controller_deinit, @function
esp_bt_controller_deinit:
.LFB70:
	.loc 1 1160 0
	entry	sp, 32
.LCFI44:
	.loc 1 1161 0
	l32r	a4, .LC83
	.loc 1 1162 0
	movi	a2, 0x103
	.loc 1 1161 0
	l32i.n	a3, a4, 0
	bnei	a3, 1, .L175
	.loc 1 1165 0
	call8	btdm_controller_deinit
.LVL216:
	.loc 1 1167 0
	movi.n	a10, 0x1c
	call8	periph_module_disable
.LVL217:
	.loc 1 1170 0
	l32r	a3, .LC84
	.loc 1 1171 0
	movi.n	a2, 0
	.loc 1 1170 0
	l32i.n	a10, a3, 0
	call8	esp_pm_lock_delete
.LVL218:
	.loc 1 1171 0
	s32i.n	a2, a3, 0
	.loc 1 1172 0
	l32r	a3, .LC85
	l32i.n	a10, a3, 0
	call8	esp_pm_lock_delete
.LVL219:
	.loc 1 1173 0
	s32i.n	a2, a3, 0
	.loc 1 1174 0
	l32r	a3, .LC86
	l32i.n	a10, a3, 0
	call8	esp_timer_stop
.LVL220:
	.loc 1 1175 0
	l32i.n	a10, a3, 0
	call8	esp_timer_delete
.LVL221:
	.loc 1 1176 0
	s32i.n	a2, a3, 0
.LVL222:
	.loc 1 1177 0
	l32r	a3, .LC87
.LBB74:
.LBB75:
	.loc 1 486 0
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL223:
.LBE75:
.LBE74:
	.loc 1 1178 0
	s32i.n	a2, a3, 0
	.loc 1 1187 0
	l32r	a3, .LC88
	l32i.n	a10, a3, 0
	call8	free
.LVL224:
	.loc 1 1188 0
	s32i.n	a2, a3, 0
	.loc 1 1192 0
	l32r	a3, .LC89
	.loc 1 1193 0
	mov.n	a10, a2
	.loc 1 1190 0
	s32i.n	a2, a4, 0
	.loc 1 1192 0
	s32i.n	a2, a3, 0
	.loc 1 1193 0
	call8	btdm_controller_set_sleep_mode
.LVL225:
.L175:
	.loc 1 1196 0
	retw.n
.LFE70:
	.size	esp_bt_controller_deinit, .-esp_bt_controller_deinit
	.section	.text.esp_bt_controller_enable,"ax",@progbits
	.literal_position
	.literal .LC90, btdm_controller_status
	.literal .LC91, s_light_sleep_pm_lock
	.literal .LC92, s_pm_lock
	.align	4
	.global	esp_bt_controller_enable
	.type	esp_bt_controller_enable, @function
esp_bt_controller_enable:
.LFB71:
	.loc 1 1199 0
.LVL226:
	entry	sp, 32
.LCFI45:
	.loc 1 1202 0
	l32r	a3, .LC90
	.loc 1 1203 0
	movi	a10, 0x103
	.loc 1 1202 0
	l32i.n	a5, a3, 0
	bnei	a5, 1, .L178
	.loc 1 1207 0
	call8	btdm_controller_get_mode
.LVL227:
	mov.n	a6, a10
	.loc 1 1208 0
	movi	a10, 0x102
	.loc 1 1207 0
	bne	a6, a2, .L178
	.loc 1 1212 0
	l32r	a4, .LC91
	l32i.n	a10, a4, 0
	call8	esp_pm_lock_acquire
.LVL228:
	.loc 1 1213 0
	l32r	a2, .LC92
.LVL229:
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_acquire
.LVL230:
	.loc 1 1216 0
	movi.n	a10, 0
	call8	esp_phy_load_cal_and_init
.LVL231:
	.loc 1 1218 0
	call8	btdm_controller_get_sleep_mode
.LVL232:
	mov.n	a7, a10
	bnez.n	a10, .L179
	.loc 1 1221 0
	call8	esp_modem_sleep_register
.LVL233:
	.loc 1 1222 0
	mov.n	a10, a5
	call8	esp_modem_sleep_register
.LVL234:
	.loc 1 1223 0
	mov.n	a10, a7
	call8	esp_modem_sleep_exit
.LVL235:
	.loc 1 1224 0
	mov.n	a10, a5
	call8	esp_modem_sleep_exit
.LVL236:
	j	.L180
.L179:
	.loc 1 1225 0
	call8	btdm_controller_get_sleep_mode
.LVL237:
	mov.n	a5, a10
	bnei	a10, 1, .L181
	.loc 1 1226 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL238:
	.loc 1 1227 0
	mov.n	a10, a5
	j	.L192
.L181:
	.loc 1 1228 0
	call8	btdm_controller_get_sleep_mode
.LVL239:
	bnei	a10, 2, .L180
	.loc 1 1229 0
	movi.n	a10, 0
.L192:
	call8	esp_modem_sleep_register
.LVL240:
.L180:
	.loc 1 1232 0
	call8	btdm_controller_get_sleep_mode
.LVL241:
	bnei	a10, 1, .L182
	.loc 1 1233 0
	call8	btdm_controller_enable_sleep
.LVL242:
.L182:
	.loc 1 1237 0
	call8	btdm_check_and_init_bb
.LVL243:
	.loc 1 1239 0
	mov.n	a10, a6
	call8	btdm_controller_enable
.LVL244:
	.loc 1 1240 0
	beqz.n	a10, .L183
	.loc 1 1241 0
	call8	btdm_controller_get_sleep_mode
.LVL245:
	bnez.n	a10, .L184
.L186:
	.loc 1 1243 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL246:
	.loc 1 1244 0
	movi.n	a10, 1
	j	.L193
.L184:
	.loc 1 1242 0
	call8	btdm_controller_get_sleep_mode
.LVL247:
	beqi	a10, 1, .L186
	.loc 1 1245 0
	call8	btdm_controller_get_sleep_mode
.LVL248:
	bnei	a10, 2, .L185
	.loc 1 1246 0
	movi.n	a10, 0
.L193:
	call8	esp_modem_sleep_deregister
.LVL249:
.L185:
	.loc 1 1248 0
	movi.n	a10, 0
	call8	esp_phy_rf_deinit
.LVL250:
	.loc 1 1250 0
	l32i.n	a10, a4, 0
	call8	esp_pm_lock_release
.LVL251:
	.loc 1 1251 0
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_release
.LVL252:
	.loc 1 1253 0
	movi	a10, 0x103
	j	.L178
.LVL253:
.L183:
	.loc 1 1256 0
	movi.n	a2, 2
	s32i.n	a2, a3, 0
.LVL254:
.L178:
	.loc 1 1259 0
	mov.n	a2, a10
	retw.n
.LFE71:
	.size	esp_bt_controller_enable, .-esp_bt_controller_enable
	.section	.text.esp_bt_controller_disable,"ax",@progbits
	.literal_position
	.literal .LC93, btdm_controller_status
	.literal .LC94, s_light_sleep_pm_lock
	.literal .LC95, s_pm_lock
	.align	4
	.global	esp_bt_controller_disable
	.type	esp_bt_controller_disable, @function
esp_bt_controller_disable:
.LFB72:
	.loc 1 1262 0
	entry	sp, 32
.LCFI46:
	.loc 1 1263 0
	l32r	a8, .LC93
	.loc 1 1264 0
	movi	a2, 0x103
	.loc 1 1263 0
	l32i.n	a9, a8, 0
	mov.n	a3, a8
	bnei	a9, 2, .L195
	.loc 1 1268 0
	call8	btdm_controller_get_sleep_mode
.LVL255:
	beqi	a10, 1, .L196
.L201:
	.loc 1 1278 0
	call8	btdm_controller_disable
.LVL256:
	.loc 1 1280 0
	call8	btdm_controller_get_sleep_mode
.LVL257:
	beqz.n	a10, .L197
	j	.L211
.L196:
	.loc 1 1269 0
	movi.n	a10, 0
	call8	btdm_controller_enable_sleep
.LVL258:
	.loc 1 1270 0
	call8	btdm_power_state_active
.LVL259:
	bnez.n	a10, .L200
	.loc 1 1271 0
	call8	btdm_wakeup_request
.LVL260:
	j	.L200
.L212:
	.loc 1 1274 0
	movi	a10, 0x3e8
	call8	ets_delay_us
.LVL261:
.L200:
	.loc 1 1273 0
	call8	btdm_power_state_active
.LVL262:
	beqz.n	a10, .L212
	j	.L201
.L197:
	.loc 1 1282 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL263:
	.loc 1 1283 0
	movi.n	a10, 1
	j	.L213
.L211:
	.loc 1 1281 0
	call8	btdm_controller_get_sleep_mode
.LVL264:
	beqi	a10, 1, .L197
	.loc 1 1284 0
	call8	btdm_controller_get_sleep_mode
.LVL265:
	bnei	a10, 2, .L203
	.loc 1 1285 0
	movi.n	a10, 0
.L213:
	call8	esp_modem_sleep_deregister
.LVL266:
.L203:
	.loc 1 1288 0
	movi.n	a2, 1
	.loc 1 1287 0
	movi.n	a10, 0
	call8	esp_phy_rf_deinit
.LVL267:
	.loc 1 1288 0
	s32i.n	a2, a3, 0
	.loc 1 1291 0
	l32r	a2, .LC94
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_release
.LVL268:
	.loc 1 1292 0
	l32r	a2, .LC95
	l32i.n	a10, a2, 0
	.loc 1 1295 0
	movi.n	a2, 0
	.loc 1 1292 0
	call8	esp_pm_lock_release
.LVL269:
.L195:
	.loc 1 1296 0
	retw.n
.LFE72:
	.size	esp_bt_controller_disable, .-esp_bt_controller_disable
	.section	.text.esp_bt_controller_get_status,"ax",@progbits
	.literal_position
	.literal .LC96, btdm_controller_status
	.align	4
	.global	esp_bt_controller_get_status
	.type	esp_bt_controller_get_status, @function
esp_bt_controller_get_status:
.LFB73:
	.loc 1 1299 0
	entry	sp, 32
.LCFI47:
	.loc 1 1301 0
	l32r	a8, .LC96
	l32i.n	a2, a8, 0
	retw.n
.LFE73:
	.size	esp_bt_controller_get_status, .-esp_bt_controller_get_status
	.section	.text.esp_ble_tx_power_set,"ax",@progbits
	.align	4
	.global	esp_ble_tx_power_set
	.type	esp_ble_tx_power_set, @function
esp_ble_tx_power_set:
.LFB74:
	.loc 1 1306 0
.LVL270:
	entry	sp, 32
.LCFI48:
	.loc 1 1307 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ble_txpwr_set
.LVL271:
	.loc 1 1308 0
	movi	a8, 0x102
	movnez	a10, a8, a10
	.loc 1 1312 0
	mov.n	a2, a10
.LVL272:
	retw.n
.LFE74:
	.size	esp_ble_tx_power_set, .-esp_ble_tx_power_set
	.section	.text.esp_ble_tx_power_get,"ax",@progbits
	.align	4
	.global	esp_ble_tx_power_get
	.type	esp_ble_tx_power_get, @function
esp_ble_tx_power_get:
.LFB75:
	.loc 1 1315 0
.LVL273:
	entry	sp, 32
.LCFI49:
	.loc 1 1316 0
	mov.n	a10, a2
	call8	ble_txpwr_get
.LVL274:
	.loc 1 1317 0
	mov.n	a2, a10
.LVL275:
	retw.n
.LFE75:
	.size	esp_ble_tx_power_get, .-esp_ble_tx_power_get
	.section	.text.esp_bredr_tx_power_set,"ax",@progbits
	.align	4
	.global	esp_bredr_tx_power_set
	.type	esp_bredr_tx_power_set, @function
esp_bredr_tx_power_set:
.LFB76:
	.loc 1 1320 0
.LVL276:
	entry	sp, 32
.LCFI50:
	.loc 1 1324 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	bredr_txpwr_set
.LVL277:
	.loc 1 1327 0
	movi.n	a2, 0
.LVL278:
	.loc 1 1326 0
	beq	a10, a2, .L220
	.loc 1 1331 0
	addi.n	a10, a10, 1
.LVL279:
	movi	a2, 0x103
	movi	a8, 0x102
	moveqz	a2, a8, a10
.LVL280:
.L220:
	.loc 1 1335 0
	retw.n
.LFE76:
	.size	esp_bredr_tx_power_set, .-esp_bredr_tx_power_set
	.section	.text.esp_bredr_tx_power_get,"ax",@progbits
	.align	4
	.global	esp_bredr_tx_power_get
	.type	esp_bredr_tx_power_get, @function
esp_bredr_tx_power_get:
.LFB77:
	.loc 1 1338 0
.LVL281:
	entry	sp, 32
.LCFI51:
	.loc 1 1339 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bredr_txpwr_get
.LVL282:
	.loc 1 1340 0
	movi	a8, 0x102
	movnez	a10, a8, a10
	.loc 1 1344 0
	mov.n	a2, a10
.LVL283:
	retw.n
.LFE77:
	.size	esp_bredr_tx_power_get, .-esp_bredr_tx_power_get
	.section	.text.esp_bt_sleep_enable,"ax",@progbits
	.literal_position
	.literal .LC97, btdm_controller_status
	.align	4
	.global	esp_bt_sleep_enable
	.type	esp_bt_sleep_enable, @function
esp_bt_sleep_enable:
.LFB78:
	.loc 1 1347 0
	entry	sp, 32
.LCFI52:
	.loc 1 1349 0
	l32r	a2, .LC97
	l32i.n	a8, a2, 0
	.loc 1 1350 0
	movi	a2, 0x103
	.loc 1 1349 0
	bnei	a8, 2, .L228
	.loc 1 1352 0
	call8	btdm_controller_get_sleep_mode
.LVL284:
	mov.n	a2, a10
	bnei	a10, 1, .L229
	.loc 1 1353 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL285:
	.loc 1 1354 0
	mov.n	a10, a2
	call8	esp_modem_sleep_register
.LVL286:
	.loc 1 1355 0
	mov.n	a10, a2
	j	.L232
.L229:
	.loc 1 1357 0
	call8	btdm_controller_get_sleep_mode
.LVL287:
	.loc 1 1362 0
	movi	a2, 0x106
	.loc 1 1357 0
	bnei	a10, 2, .L228
	.loc 1 1358 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL288:
	.loc 1 1359 0
	movi.n	a10, 1
.L232:
	call8	btdm_controller_enable_sleep
.LVL289:
	.loc 1 1360 0
	movi.n	a2, 0
.LVL290:
.L228:
	.loc 1 1366 0
	retw.n
.LFE78:
	.size	esp_bt_sleep_enable, .-esp_bt_sleep_enable
	.section	.text.esp_bt_sleep_disable,"ax",@progbits
	.literal_position
	.literal .LC98, btdm_controller_status
	.align	4
	.global	esp_bt_sleep_disable
	.type	esp_bt_sleep_disable, @function
esp_bt_sleep_disable:
.LFB79:
	.loc 1 1369 0
	entry	sp, 32
.LCFI53:
	.loc 1 1371 0
	l32r	a2, .LC98
	l32i.n	a8, a2, 0
	.loc 1 1372 0
	movi	a2, 0x103
	.loc 1 1371 0
	bnei	a8, 2, .L234
	.loc 1 1374 0
	call8	btdm_controller_get_sleep_mode
.LVL291:
	mov.n	a2, a10
	bnei	a10, 1, .L235
	.loc 1 1375 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL292:
	.loc 1 1376 0
	mov.n	a10, a2
	j	.L238
.L235:
	.loc 1 1379 0
	call8	btdm_controller_get_sleep_mode
.LVL293:
	.loc 1 1384 0
	movi	a2, 0x106
	.loc 1 1379 0
	bnei	a10, 2, .L234
	.loc 1 1380 0
	movi.n	a10, 0
.L238:
	call8	esp_modem_sleep_deregister
.LVL294:
	.loc 1 1381 0
	movi.n	a10, 0
	call8	btdm_controller_enable_sleep
.LVL295:
	.loc 1 1382 0
	movi.n	a2, 0
.LVL296:
.L234:
	.loc 1 1388 0
	retw.n
.LFE79:
	.size	esp_bt_sleep_disable, .-esp_bt_sleep_disable
	.section	.text.esp_bt_controller_is_sleeping,"ax",@progbits
	.literal_position
	.literal .LC99, btdm_controller_status
	.align	4
	.global	esp_bt_controller_is_sleeping
	.type	esp_bt_controller_is_sleeping, @function
esp_bt_controller_is_sleeping:
.LFB80:
	.loc 1 1391 0
	entry	sp, 32
.LCFI54:
	.loc 1 1392 0
	l32r	a2, .LC99
	l32i.n	a2, a2, 0
	beqi	a2, 2, .L240
.L242:
	.loc 1 1394 0
	movi.n	a2, 0
	retw.n
.L240:
	.loc 1 1393 0 discriminator 1
	call8	btdm_controller_get_sleep_mode
.LVL297:
	mov.n	a2, a10
	.loc 1 1392 0 discriminator 1
	bnei	a10, 1, .L242
	.loc 1 1397 0
	call8	btdm_power_state_active
.LVL298:
	xor	a10, a10, a2
	extui	a2, a10, 0, 8
	.loc 1 1398 0
	retw.n
.LFE80:
	.size	esp_bt_controller_is_sleeping, .-esp_bt_controller_is_sleeping
	.section	.text.esp_bt_controller_wakeup_request,"ax",@progbits
	.literal_position
	.literal .LC100, btdm_controller_status
	.align	4
	.global	esp_bt_controller_wakeup_request
	.type	esp_bt_controller_wakeup_request, @function
esp_bt_controller_wakeup_request:
.LFB81:
	.loc 1 1401 0
	entry	sp, 32
.LCFI55:
	.loc 1 1402 0
	l32r	a8, .LC100
	l32i.n	a8, a8, 0
	bnei	a8, 2, .L243
	.loc 1 1403 0 discriminator 1
	call8	btdm_controller_get_sleep_mode
.LVL299:
	.loc 1 1402 0 discriminator 1
	bnei	a10, 1, .L243
	.loc 1 1407 0
	call8	btdm_wakeup_request
.LVL300:
.L243:
	retw.n
.LFE81:
	.size	esp_bt_controller_wakeup_request, .-esp_bt_controller_wakeup_request
	.section	.text.esp_bredr_sco_datapath_set,"ax",@progbits
	.literal_position
	.literal .LC101, btdm_controller_status
	.align	4
	.global	esp_bredr_sco_datapath_set
	.type	esp_bredr_sco_datapath_set, @function
esp_bredr_sco_datapath_set:
.LFB82:
	.loc 1 1411 0
.LVL301:
	entry	sp, 32
.LCFI56:
	.loc 1 1412 0
	l32r	a8, .LC101
	l32i.n	a9, a8, 0
	.loc 1 1413 0
	movi	a8, 0x103
	.loc 1 1412 0
	bnei	a9, 2, .L248
	.loc 1 1415 0
	extui	a10, a2, 0, 8
	call8	bredr_sco_datapath_set
.LVL302:
	.loc 1 1416 0
	movi.n	a8, 0
.L248:
	.loc 1 1417 0
	mov.n	a2, a8
.LVL303:
	retw.n
.LFE82:
	.size	esp_bredr_sco_datapath_set, .-esp_bredr_sco_datapath_set
	.section	.text.esp_ble_scan_dupilcate_list_flush,"ax",@progbits
	.literal_position
	.literal .LC102, btdm_controller_status
	.align	4
	.global	esp_ble_scan_dupilcate_list_flush
	.type	esp_ble_scan_dupilcate_list_flush, @function
esp_ble_scan_dupilcate_list_flush:
.LFB83:
	.loc 1 1420 0
	entry	sp, 32
.LCFI57:
	.loc 1 1421 0
	l32r	a2, .LC102
	l32i.n	a8, a2, 0
	.loc 1 1422 0
	movi	a2, 0x103
	.loc 1 1421 0
	bnei	a8, 2, .L251
	.loc 1 1424 0
	call8	btdm_controller_scan_duplicate_list_clear
.LVL304:
	.loc 1 1425 0
	movi.n	a2, 0
.L251:
	.loc 1 1426 0
	retw.n
.LFE83:
	.size	esp_ble_scan_dupilcate_list_flush, .-esp_ble_scan_dupilcate_list_flush
	.section	.rodata.__func__$6264,"a",@progbits
	.type	__func__$6264, @object
	.size	__func__$6264, 32
__func__$6264:
	.string	"btdm_sleep_enter_phase1_wrapper"
	.section	.rodata.__func__$6338,"a",@progbits
	.type	__func__$6338, @object
	.size	__func__$6338, 23
__func__$6338:
	.string	"esp_bt_controller_init"
	.section	.rodata.__func__$6327,"a",@progbits
	.type	__func__$6327, @object
	.size	__func__$6327, 19
__func__$6327:
	.string	"esp_bt_mem_release"
	.section	.rodata.__func__$6313,"a",@progbits
	.type	__func__$6313, @object
	.size	__func__$6313, 30
__func__$6313:
	.string	"esp_bt_controller_mem_release"
	.section	.dram1,"aw",@progbits
	.align	4
	.type	s_pm_lock_sem, @object
	.size	s_pm_lock_sem, 4
s_pm_lock_sem:
	.zero	4
	.align	4
	.type	s_light_sleep_pm_lock, @object
	.size	s_light_sleep_pm_lock, 4
s_light_sleep_pm_lock:
	.zero	4
	.align	4
	.type	s_pm_lock, @object
	.size	s_pm_lock, 4
s_pm_lock:
	.zero	4
	.align	4
	.type	s_btdm_slp_tmr, @object
	.size	s_btdm_slp_tmr, 4
s_btdm_slp_tmr:
	.zero	4
	.type	btdm_lpcycle_us_frac, @object
	.size	btdm_lpcycle_us_frac, 1
btdm_lpcycle_us_frac:
	.zero	1
	.align	4
	.type	btdm_lpcycle_us, @object
	.size	btdm_lpcycle_us, 4
btdm_lpcycle_us:
	.zero	4
	.align	4
	.type	global_int_mux, @object
	.size	global_int_mux, 8
global_int_mux:
	.word	-1287651329
	.word	0
	.align	4
	.type	btdm_controller_status, @object
	.size	btdm_controller_status, 4
btdm_controller_status:
	.zero	4
	.align	8
	.type	s_time_phy_rf_just_enabled, @object
	.size	s_time_phy_rf_just_enabled, 8
s_time_phy_rf_just_enabled:
	.zero	8
	.align	4
	.type	osi_funcs_p, @object
	.size	osi_funcs_p, 4
osi_funcs_p:
	.zero	4
	.section	.reserved_memory_address,"aw",@progbits
	.align	4
	.type	reserved_region_rom_bt_data, @object
	.size	reserved_region_rom_bt_data, 8
reserved_region_rom_bt_data:
	.word	1073407712
	.word	1073413904
	.align	4
	.type	reserved_region_rom_bt_misc, @object
	.size	reserved_region_rom_bt_misc, 8
reserved_region_rom_bt_misc:
	.word	1073470248
	.word	1073470300
	.align	4
	.type	reserved_region_rom_bt_bss, @object
	.size	reserved_region_rom_bt_bss, 8
reserved_region_rom_bt_bss:
	.word	1073446912
	.word	1073453600
	.align	4
	.type	reserved_region_rom_bt_em, @object
	.size	reserved_region_rom_bt_em, 8
reserved_region_rom_bt_em:
	.word	1073414144
	.word	1073439624
	.section	.data.btdm_dram_available_region,"aw",@progbits
	.align	4
	.type	btdm_dram_available_region, @object
	.size	btdm_dram_available_region, 84
btdm_dram_available_region:
	.word	3
	.word	1073407712
	.word	1073413904
	.word	3
	.word	1073414144
	.word	1073416616
	.word	1
	.word	1073416616
	.word	1073421788
	.word	3
	.word	1073421788
	.word	1073424176
	.word	2
	.word	1073424176
	.word	1073439624
	.word	3
	.word	1073446912
	.word	1073453600
	.word	3
	.word	1073470248
	.word	1073470300
	.section	.rodata.osi_funcs_ro,"a",@progbits
	.align	4
	.type	osi_funcs_ro, @object
	.size	osi_funcs_ro, 168
osi_funcs_ro:
	.word	65537
	.word	xt_set_interrupt_handler
	.word	xt_ints_on
	.word	interrupt_disable
	.word	interrupt_restore
	.word	vPortYield
	.word	task_yield_from_isr
	.word	semphr_create_wrapper
	.word	semphr_delete_wrapper
	.word	semphr_take_from_isr_wrapper
	.word	semphr_give_from_isr_wrapper
	.word	semphr_take_wrapper
	.word	semphr_give_wrapper
	.word	mutex_create_wrapper
	.word	mutex_delete_wrapper
	.word	mutex_lock_wrapper
	.word	mutex_unlock_wrapper
	.word	queue_create_wrapper
	.word	queue_delete_wrapper
	.word	queue_send_wrapper
	.word	queue_send_from_isr_wrapper
	.word	queue_recv_wrapper
	.word	queue_recv_from_isr_wrapper
	.word	task_create_wrapper
	.word	task_delete_wrapper
	.word	is_in_isr_wrapper
	.word	cause_sw_intr_to_core_wrapper
	.word	malloc
	.word	malloc_internal_wrapper
	.word	free
	.word	read_mac_wrapper
	.word	srand_wrapper
	.word	rand_wrapper
	.word	btdm_lpcycles_2_us
	.word	btdm_us_2_lpcycles
	.word	btdm_sleep_check_duration
	.word	btdm_sleep_enter_phase1_wrapper
	.word	btdm_sleep_enter_phase2_wrapper
	.word	btdm_sleep_exit_phase1_wrapper
	.word	0
	.word	btdm_sleep_exit_phase3_wrapper
	.word	-86065491
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
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI0-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI1-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI2-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI3-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI4-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI6-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI7-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI8-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI9-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI10-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI11-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI12-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI13-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI14-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI15-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI16-.LFB41
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x4
	.4byte	.LCFI18-.LFB97
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI19-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI20-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI21-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI22-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI23-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI24-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI25-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI26-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI27-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI28-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI29-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI30-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI31-.LFB56
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
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI33-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI34-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI35-.LFB93
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI36-.LFB95
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI37-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI38-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI39-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI40-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI41-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI42-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI43-.LFB69
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI44-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI45-.LFB71
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI46-.LFB72
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI47-.LFB73
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI48-.LFB74
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI49-.LFB75
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI50-.LFB76
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI51-.LFB77
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI52-.LFB78
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI53-.LFB79
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI54-.LFB80
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI55-.LFB81
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI56-.LFB82
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI57-.LFB83
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE114:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_timer.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_api.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_system.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_phy_init.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/include/esp_bt.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_pm.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps_init.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_ipc.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.file 23 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 24 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 25 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 26 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2876
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF415
	.byte	0xc
	.4byte	.LASF416
	.4byte	.LASF417
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x16
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x1d
	.4byte	0x98
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x31
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd2
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x8
	.4byte	0xd3
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x21
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x38
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x39
	.4byte	0x9f
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0xa9
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x18
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.byte	0x56
	.4byte	0x165
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x58
	.4byte	0x127
	.byte	0
	.uleb128 0xb
	.string	"end"
	.byte	0x7
	.byte	0x59
	.4byte	0x127
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x5a
	.4byte	0x144
	.uleb128 0x6
	.byte	0x4
	.4byte	0x176
	.uleb128 0xc
	.4byte	0x181
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x8
	.byte	0x35
	.4byte	0x18c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x192
	.uleb128 0xe
	.4byte	.LASF134
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3b
	.4byte	0x170
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x41
	.4byte	0x1b5
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x8
	.byte	0x4a
	.4byte	0x1a2
	.uleb128 0x9
	.byte	0x10
	.byte	0x8
	.byte	0x4f
	.4byte	0x1f9
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0x50
	.4byte	0x197
	.byte	0
	.uleb128 0xb
	.string	"arg"
	.byte	0x8
	.byte	0x51
	.4byte	0xc3
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0x52
	.4byte	0x1b5
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0x53
	.4byte	0xda
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x8
	.byte	0x54
	.4byte	0x1c0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x9
	.byte	0x76
	.4byte	0x106
	.uleb128 0x9
	.byte	0x8
	.byte	0x9
	.byte	0x82
	.4byte	0x23b
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x9
	.byte	0x8a
	.4byte	0x106
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x9
	.byte	0x8f
	.4byte	0x106
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x9
	.byte	0x94
	.4byte	0x21a
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xa
	.byte	0x25
	.4byte	0x170
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1b
	.4byte	0x276
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xc
	.byte	0x58
	.4byte	0xc3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x37
	.4byte	0x2be
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x53
	.4byte	0x2e3
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x21
	.4byte	0x308
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xe
	.byte	0x26
	.4byte	0x2e3
	.uleb128 0x9
	.byte	0x1c
	.byte	0xe
	.byte	0x82
	.4byte	0x3d0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xe
	.byte	0x86
	.4byte	0xf0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xe
	.byte	0x87
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xe
	.byte	0x88
	.4byte	0xe5
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xe
	.byte	0x89
	.4byte	0x106
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xe
	.byte	0x8a
	.4byte	0xe5
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xe
	.byte	0x8b
	.4byte	0xe5
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xe
	.byte	0x8c
	.4byte	0xf0
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xe
	.byte	0x8d
	.4byte	0xf0
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xe
	.byte	0x8e
	.4byte	0xf0
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xe
	.byte	0x8f
	.4byte	0x106
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xe
	.byte	0x90
	.4byte	0xe5
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xe
	.byte	0x91
	.4byte	0xe5
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xe
	.byte	0x92
	.4byte	0xe5
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xe
	.byte	0x98
	.4byte	0xe5
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xe
	.byte	0x99
	.4byte	0x106
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xe
	.byte	0x9a
	.4byte	0x313
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x9f
	.4byte	0x400
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xe
	.byte	0xa4
	.4byte	0x3db
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xb0
	.4byte	0x466
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0xe
	.byte	0xbe
	.4byte	0x40b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xc3
	.4byte	0x4de
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xe
	.byte	0xd4
	.4byte	0x471
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xd9
	.4byte	0x502
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0xe
	.byte	0xdc
	.4byte	0x4e9
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0x8
	.byte	0xe
	.2byte	0x13c
	.4byte	0x535
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0xe
	.2byte	0x13d
	.4byte	0xcc
	.byte	0
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xe
	.2byte	0x13e
	.4byte	0x54f
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	0x33
	.4byte	0x549
	.uleb128 0xd
	.4byte	0x549
	.uleb128 0xd
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x535
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0xe
	.2byte	0x13f
	.4byte	0x50d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x1f
	.4byte	0x592
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x1e
	.4byte	0x5b1
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x10
	.byte	0x3f
	.4byte	0x5bc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c2
	.uleb128 0xe
	.4byte	.LASF135
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x16
	.4byte	0x6a6
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0x11
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0x12
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x13
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x15
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0x16
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x17
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x19
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x1b
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x1f
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0x21
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0x22
	.byte	0
	.uleb128 0x15
	.4byte	.LASF172
	.byte	0x8
	.byte	0x1
	.byte	0x68
	.4byte	0x6cb
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x1
	.byte	0x69
	.4byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0x1
	.byte	0x6a
	.4byte	0x54f
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x1
	.byte	0x6b
	.4byte	0x6a6
	.uleb128 0x9
	.byte	0xc
	.byte	0x1
	.byte	0x6e
	.4byte	0x703
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x6f
	.4byte	0x308
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x70
	.4byte	0x127
	.byte	0x4
	.uleb128 0xb
	.string	"end"
	.byte	0x1
	.byte	0x71
	.4byte	0x127
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0x1
	.byte	0x72
	.4byte	0x6d6
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0xa8
	.byte	0x1
	.byte	0x7e
	.4byte	0x913
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0x1
	.byte	0x7f
	.4byte	0x106
	.byte	0
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0x1
	.byte	0x80
	.4byte	0x92c
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0x1
	.byte	0x81
	.4byte	0x93d
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x1
	.byte	0x82
	.4byte	0xcc
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0x1
	.byte	0x83
	.4byte	0xcc
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0x1
	.byte	0x84
	.4byte	0xcc
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0x1
	.byte	0x85
	.4byte	0xcc
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0x1
	.byte	0x86
	.4byte	0x957
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0x1
	.byte	0x87
	.4byte	0x170
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0x1
	.byte	0x88
	.4byte	0x971
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0x1
	.byte	0x89
	.4byte	0x971
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0x1
	.byte	0x8a
	.4byte	0x98b
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0x1
	.byte	0x8b
	.4byte	0x9a0
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0x1
	.byte	0x8c
	.4byte	0x9ab
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0x1
	.byte	0x8d
	.4byte	0x170
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0x1
	.byte	0x8e
	.4byte	0x9a0
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x1
	.byte	0x8f
	.4byte	0x9a0
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0x1
	.byte	0x90
	.4byte	0x957
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0x1
	.byte	0x91
	.4byte	0x170
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0x1
	.byte	0x92
	.4byte	0x9ca
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0x1
	.byte	0x93
	.4byte	0x9e9
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0x1
	.byte	0x94
	.4byte	0x9ca
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0x1
	.byte	0x95
	.4byte	0x9e9
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF199
	.byte	0x1
	.byte	0x96
	.4byte	0xa1c
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF200
	.byte	0x1
	.byte	0x97
	.4byte	0x170
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF201
	.byte	0x1
	.byte	0x98
	.4byte	0xa27
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0x1
	.byte	0x99
	.4byte	0xa41
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0x1
	.byte	0x9a
	.4byte	0xa56
	.byte	0x6c
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0x1
	.byte	0x9b
	.4byte	0xa56
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0x1
	.byte	0x9c
	.4byte	0x170
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0x1
	.byte	0x9d
	.4byte	0xa6b
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0x1
	.byte	0x9e
	.4byte	0x93d
	.byte	0x7c
	.uleb128 0xa
	.4byte	.LASF208
	.byte	0x1
	.byte	0x9f
	.4byte	0xa76
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0x1
	.byte	0xa0
	.4byte	0xa8b
	.byte	0x84
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0x1
	.byte	0xa1
	.4byte	0xa8b
	.byte	0x88
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0x1
	.byte	0xa2
	.4byte	0xaa6
	.byte	0x8c
	.uleb128 0xa
	.4byte	.LASF212
	.byte	0x1
	.byte	0xa3
	.4byte	0xab7
	.byte	0x90
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0x1
	.byte	0xa4
	.4byte	0xcc
	.byte	0x94
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0x1
	.byte	0xa5
	.4byte	0xcc
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0x1
	.byte	0xa6
	.4byte	0xcc
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0x1
	.byte	0xa7
	.4byte	0xcc
	.byte	0xa0
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0x1
	.byte	0xa8
	.4byte	0x106
	.byte	0xa4
	.byte	0
	.uleb128 0x13
	.4byte	0x246
	.4byte	0x92c
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x246
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x913
	.uleb128 0xc
	.4byte	0x93d
	.uleb128 0xd
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x932
	.uleb128 0x13
	.4byte	0xc3
	.4byte	0x957
	.uleb128 0xd
	.4byte	0x106
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x943
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x971
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x95d
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x98b
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x977
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x9a0
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x991
	.uleb128 0x16
	.4byte	0xc3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a6
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x9ca
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b1
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x9e9
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d0
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0xa1c
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xda
	.uleb128 0xd
	.4byte	0x106
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0x106
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ef
	.uleb128 0x16
	.4byte	0x13d
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa22
	.uleb128 0x13
	.4byte	0x33
	.4byte	0xa41
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2d
	.uleb128 0x13
	.4byte	0xc3
	.4byte	0xa56
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa47
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0xa6b
	.uleb128 0xd
	.4byte	0x549
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa5c
	.uleb128 0x16
	.4byte	0x33
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa71
	.uleb128 0x13
	.4byte	0x106
	.4byte	0xa8b
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa7c
	.uleb128 0x13
	.4byte	0x13d
	.4byte	0xaa0
	.uleb128 0xd
	.4byte	0xaa0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x106
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa91
	.uleb128 0xc
	.4byte	0xab7
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaac
	.uleb128 0x17
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x201
	.4byte	0xfb
	.byte	0x1
	.4byte	0xae7
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x201
	.4byte	0xc3
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x201
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x350
	.byte	0x1
	.4byte	0xb01
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.2byte	0x350
	.4byte	0xc3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x2ac
	.4byte	0xfb
	.byte	0x1
	.4byte	0xb37
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x2ac
	.4byte	0xc3
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x2ac
	.4byte	0xc3
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x2ac
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x33f
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x311
	.byte	0x1
	.4byte	0xb7f
	.uleb128 0x18
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x311
	.4byte	0x106
	.uleb128 0x1c
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x315
	.4byte	0x106
	.uleb128 0x1d
	.4byte	.LASF228
	.4byte	0xb8f
	.4byte	.LASF225
	.uleb128 0x1c
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x31b
	.4byte	0x106
	.byte	0
	.uleb128 0x1e
	.4byte	0xd3
	.4byte	0xb8f
	.uleb128 0x1f
	.4byte	0xbc
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xb7f
	.uleb128 0x20
	.4byte	.LASF230
	.byte	0x2
	.byte	0xce
	.4byte	0x106
	.byte	0x3
	.4byte	0xbaf
	.uleb128 0x21
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x33
	.byte	0
	.uleb128 0x19
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x2c9
	.byte	0x1
	.4byte	0xbe3
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.2byte	0x2c9
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x106
	.uleb128 0x22
	.uleb128 0x1c
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x2cd
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x336
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x29e
	.4byte	0xfb
	.byte	0x1
	.4byte	0xc22
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x29e
	.4byte	0xc3
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x29e
	.4byte	0xc3
	.uleb128 0x18
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x29e
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x326
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xc3
	.byte	0x1
	.4byte	0xc55
	.uleb128 0x1a
	.string	"max"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x106
	.uleb128 0x18
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x106
	.byte	0
	.uleb128 0x17
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x370
	.4byte	0x106
	.byte	0x1
	.4byte	0xc73
	.uleb128 0x1c
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x372
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x1e3
	.byte	0x1
	.4byte	0xc8d
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1e3
	.4byte	0xc3
	.byte	0
	.uleb128 0x23
	.4byte	0xbaf
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc6
	.uleb128 0x24
	.4byte	0xbbc
	.4byte	.LLST0
	.uleb128 0x25
	.4byte	0xbc8
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x25
	.4byte	0xbd5
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x2e7
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xceb
	.uleb128 0x28
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x2e7
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x29
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x2f1
	.4byte	0x106
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd25
	.uleb128 0x2a
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x2f1
	.4byte	0x106
	.4byte	.LLST3
	.uleb128 0x2b
	.string	"us"
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x11c
	.4byte	.LLST4
	.byte	0
	.uleb128 0x29
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x106
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5f
	.uleb128 0x2c
	.string	"us"
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x106
	.4byte	.LLST5
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x302
	.4byte	0x11c
	.4byte	.LLST6
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x307
	.4byte	0x13d
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8a
	.uleb128 0x2a
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x307
	.4byte	0xaa0
	.4byte	.LLST7
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x24c
	.4byte	0xfb
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd5
	.uleb128 0x2a
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x24c
	.4byte	0xc3
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	.LVL19
	.4byte	0x256d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x390
	.4byte	0x132
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe32
	.uleb128 0x2a
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x390
	.4byte	0x127
	.4byte	.LLST9
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.2byte	0x390
	.4byte	0x127
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.2byte	0x392
	.4byte	0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2f
	.4byte	.LVL22
	.4byte	0x2579
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x16a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6e
	.uleb128 0x33
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x16d
	.4byte	0x111
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x34
	.4byte	.LVL24
	.4byte	0x2584
	.uleb128 0x34
	.4byte	.LVL26
	.4byte	0x258f
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x33
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe92
	.uleb128 0x34
	.4byte	.LVL27
	.4byte	0x259a
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x2e2
	.4byte	0xfb
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed2
	.uleb128 0x2c
	.string	"mac"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x549
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	.LVL29
	.4byte	0x25a5
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x33
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9a
	.uleb128 0x2a
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x33
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x132
	.4byte	.LLST12
	.uleb128 0x35
	.4byte	0xb94
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xf42
	.uleb128 0x26
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x25
	.4byte	0xba4
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0xbaf
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x2d5
	.4byte	0xf86
	.uleb128 0x24
	.4byte	0xbbc
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x25
	.4byte	0xbc8
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x25
	.4byte	0xbd5
	.4byte	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL38
	.4byte	0x25b1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	cause_sw_intr
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x13d
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfbe
	.uleb128 0x34
	.4byte	.LVL40
	.4byte	0x25bc
	.byte	0
	.uleb128 0x27
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x2bf
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff3
	.uleb128 0x28
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LVL42
	.4byte	0x25c7
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xfb
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b6
	.uleb128 0x2a
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xc3
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x106
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x106
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x28
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.4byte	.LVL44
	.4byte	0x25d3
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x10
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x30
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2b5
	.4byte	0xfb
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1119
	.uleb128 0x2a
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x2b5
	.4byte	0xc3
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x2b5
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x2b5
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LVL47
	.4byte	0x25df
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1f7
	.4byte	0xfb
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x116d
	.uleb128 0x2a
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1f7
	.4byte	0xc3
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1f7
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LVL50
	.4byte	0x25df
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xfb
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d5
	.uleb128 0x2a
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xc3
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LVL53
	.4byte	0x25eb
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x251
	.4byte	0xfb
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121f
	.uleb128 0x2a
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x251
	.4byte	0xc3
	.4byte	.LLST21
	.uleb128 0x2f
	.4byte	.LVL56
	.4byte	0x25f7
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x289
	.byte	0x1
	.4byte	0x1239
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x289
	.4byte	0xc3
	.byte	0
	.uleb128 0x23
	.4byte	0x121f
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1264
	.uleb128 0x36
	.4byte	0x122c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LVL59
	.4byte	0x2603
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x256
	.4byte	0xc3
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b8
	.uleb128 0x2a
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x256
	.4byte	0x106
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x256
	.4byte	0x106
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LVL61
	.4byte	0x260f
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x20f
	.4byte	0xc3
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e2
	.uleb128 0x2f
	.4byte	.LVL63
	.4byte	0x261b
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x1fc
	.4byte	0xfb
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1331
	.uleb128 0x2a
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1fc
	.4byte	0xc3
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1fc
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LVL65
	.4byte	0x2627
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x1b5
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1351
	.uleb128 0x34
	.4byte	.LVL67
	.4byte	0x2633
	.byte	0
	.uleb128 0x27
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x1ac
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1384
	.uleb128 0x34
	.4byte	.LVL68
	.4byte	0x25bc
	.uleb128 0x2f
	.4byte	.LVL69
	.4byte	0x263f
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1a3
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b7
	.uleb128 0x34
	.4byte	.LVL70
	.4byte	0x25bc
	.uleb128 0x2f
	.4byte	.LVL71
	.4byte	0x264a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x2dd
	.4byte	0xc3
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f9
	.uleb128 0x2a
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x3a
	.4byte	.LLST24
	.uleb128 0x2f
	.4byte	.LVL73
	.4byte	0x2655
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xc2b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1433
	.uleb128 0x24
	.4byte	0xc3c
	.4byte	.LLST25
	.uleb128 0x36
	.4byte	0xc48
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LVL76
	.4byte	0x2660
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xabd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1483
	.uleb128 0x24
	.4byte	0xace
	.4byte	.LLST26
	.uleb128 0x36
	.4byte	0xada
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x146e
	.uleb128 0x38
	.4byte	0xada
	.uleb128 0x38
	.4byte	0xace
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL79
	.4byte	0x256d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xb01
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d4
	.uleb128 0x24
	.4byte	0xb12
	.4byte	.LLST27
	.uleb128 0x36
	.4byte	0xb1e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	0xb2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x37
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x14ca
	.uleb128 0x38
	.4byte	0xb2a
	.uleb128 0x38
	.4byte	0xb1e
	.uleb128 0x38
	.4byte	0xb12
	.byte	0
	.uleb128 0x34
	.4byte	.LVL82
	.4byte	0x256d
	.byte	0
	.uleb128 0x23
	.4byte	0xb37
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1555
	.uleb128 0x34
	.4byte	.LVL84
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL85
	.4byte	0x2677
	.4byte	0x1503
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL86
	.4byte	0x2677
	.4byte	0x1517
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL87
	.4byte	0xe32
	.uleb128 0x34
	.4byte	.LVL88
	.4byte	0x2682
	.uleb128 0x34
	.4byte	.LVL89
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL90
	.4byte	0x268d
	.4byte	0x1545
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL91
	.4byte	0x2677
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xb40
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x163f
	.uleb128 0x36
	.4byte	0xb4d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	0xb59
	.4byte	.LLST28
	.uleb128 0x3a
	.4byte	0xb65
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6264
	.uleb128 0x25
	.4byte	0xb72
	.4byte	.LLST29
	.uleb128 0x37
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x15ee
	.uleb128 0x24
	.4byte	0xb4d
	.4byte	.LLST30
	.uleb128 0x26
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x3b
	.4byte	0xb59
	.uleb128 0x3b
	.4byte	0xb72
	.uleb128 0x3a
	.4byte	0xb65
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6264
	.uleb128 0x2f
	.4byte	.LVL96
	.4byte	0x2698
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x318
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6264
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL93
	.4byte	0xceb
	.4byte	0x1602
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL101
	.4byte	0x26a3
	.uleb128 0x34
	.4byte	.LVL102
	.4byte	0x26ae
	.uleb128 0x2f
	.4byte	.LVL103
	.4byte	0x26b9
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xae7
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1676
	.uleb128 0x36
	.4byte	0xaf4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.4byte	.LVL105
	.4byte	0xabd
	.4byte	0x166c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL106
	.4byte	0x26c4
	.byte	0
	.uleb128 0x23
	.4byte	0xbec
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c7
	.uleb128 0x24
	.4byte	0xbfd
	.4byte	.LLST31
	.uleb128 0x36
	.4byte	0xc09
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	0xc15
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x37
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x16bd
	.uleb128 0x38
	.4byte	0xc15
	.uleb128 0x38
	.4byte	0xc09
	.uleb128 0x38
	.4byte	0xbfd
	.byte	0
	.uleb128 0x34
	.4byte	.LVL108
	.4byte	0x25f7
	.byte	0
	.uleb128 0x23
	.4byte	0xc22
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1748
	.uleb128 0x34
	.4byte	.LVL110
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL111
	.4byte	0x26cf
	.4byte	0x16f6
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL112
	.4byte	0x26cf
	.4byte	0x170a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL113
	.4byte	0x26da
	.uleb128 0x34
	.4byte	.LVL114
	.4byte	0x11d5
	.uleb128 0x34
	.4byte	.LVL115
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL116
	.4byte	0x26cf
	.4byte	0x1738
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL117
	.4byte	0x26e5
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xbe3
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1778
	.uleb128 0x39
	.4byte	.LVL118
	.4byte	0x1119
	.4byte	0x176e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL119
	.4byte	0x26c4
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x358
	.4byte	0x13d
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179c
	.uleb128 0x34
	.4byte	.LVL120
	.4byte	0x26f0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x35d
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1812
	.uleb128 0x28
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x35d
	.4byte	0x549
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.2byte	0x35d
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LVL122
	.4byte	0x26fb
	.uleb128 0x34
	.4byte	.LVL123
	.4byte	0xabd
	.uleb128 0x34
	.4byte	.LVL124
	.4byte	0x26c4
	.uleb128 0x34
	.4byte	.LVL125
	.4byte	0x2682
	.uleb128 0x34
	.4byte	.LVL126
	.4byte	0x2706
	.uleb128 0x2f
	.4byte	.LVL127
	.4byte	0x2711
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x36b
	.4byte	0x132
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x184d
	.uleb128 0x2a
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x36b
	.4byte	0x184d
	.4byte	.LLST32
	.uleb128 0x2f
	.4byte	.LVL129
	.4byte	0x271c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1853
	.uleb128 0x8
	.4byte	0x555
	.uleb128 0x3c
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x39d
	.4byte	0x132
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1997
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x39d
	.4byte	0x308
	.4byte	.LLST33
	.uleb128 0x2d
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x39f
	.4byte	0x13d
	.4byte	.LLST34
	.uleb128 0x2d
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x127
	.4byte	.LLST35
	.uleb128 0x2d
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x127
	.4byte	.LLST36
	.uleb128 0x3e
	.4byte	.LASF228
	.4byte	0x19a7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6313
	.uleb128 0x37
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x194c
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x3ab
	.4byte	0x33
	.4byte	.LLST37
	.uleb128 0x37
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.4byte	0x190a
	.uleb128 0x2d
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x3c5
	.4byte	0x132
	.4byte	.LLST38
	.uleb128 0x2f
	.4byte	.LVL137
	.4byte	0xdd5
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x2d
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x132
	.4byte	.LLST39
	.uleb128 0x39
	.4byte	.LVL139
	.4byte	0xdd5
	.4byte	0x1937
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL141
	.4byte	0x2727
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.4byte	0x1973
	.uleb128 0x2d
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x132
	.4byte	.LLST40
	.uleb128 0x34
	.4byte	.LVL149
	.4byte	0xdd5
	.byte	0
	.uleb128 0x26
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x2d
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x3db
	.4byte	0x132
	.4byte	.LLST41
	.uleb128 0x34
	.4byte	.LVL153
	.4byte	0xdd5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xd3
	.4byte	0x19a7
	.uleb128 0x1f
	.4byte	0xbc
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x1997
	.uleb128 0x3c
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x3e1
	.4byte	0x132
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a87
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x3e1
	.4byte	0x308
	.4byte	.LLST42
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x3e3
	.4byte	0x33
	.4byte	.LLST43
	.uleb128 0x2d
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x127
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x127
	.4byte	.LLST45
	.uleb128 0x3e
	.4byte	.LASF228
	.4byte	0x1a97
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6327
	.uleb128 0x37
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.4byte	0x1a3c
	.uleb128 0x2d
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x3f0
	.4byte	0x132
	.4byte	.LLST46
	.uleb128 0x34
	.4byte	.LVL163
	.4byte	0xdd5
	.byte	0
	.uleb128 0x37
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0x1a76
	.uleb128 0x2d
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x3f6
	.4byte	0x132
	.4byte	.LLST47
	.uleb128 0x34
	.4byte	.LVL167
	.4byte	0xdd5
	.uleb128 0x2f
	.4byte	.LVL169
	.4byte	0x2727
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL157
	.4byte	0x1858
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xd3
	.4byte	0x1a97
	.uleb128 0x1f
	.4byte	0xbc
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x1a87
	.uleb128 0x19
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x381
	.byte	0x1
	.4byte	0x1ab6
	.uleb128 0x22
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.2byte	0x388
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x132
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dba
	.uleb128 0x2c
	.string	"cfg"
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x1dba
	.4byte	.LLST48
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x132
	.4byte	.LLST49
	.uleb128 0x2d
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x106
	.4byte	.LLST50
	.uleb128 0x40
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x471
	.4byte	.L137
	.uleb128 0x33
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x438
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x44f
	.4byte	0x13d
	.4byte	.LLST51
	.uleb128 0x2d
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x450
	.4byte	0x13d
	.4byte	.LLST52
	.uleb128 0x3e
	.4byte	.LASF228
	.4byte	0x1dd0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6338
	.uleb128 0x35
	.4byte	0xc2b
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.2byte	0x441
	.4byte	0x1b86
	.uleb128 0x24
	.4byte	0xc48
	.4byte	.LLST53
	.uleb128 0x24
	.4byte	0xc3c
	.4byte	.LLST54
	.uleb128 0x2f
	.4byte	.LVL188
	.4byte	0x2660
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x1a9c
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.2byte	0x448
	.4byte	0x1bca
	.uleb128 0x37
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.4byte	0x1bc0
	.uleb128 0x25
	.4byte	0x1aaa
	.4byte	.LLST55
	.uleb128 0x2f
	.4byte	.LVL194
	.4byte	0x2732
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL192
	.4byte	0x273b
	.byte	0
	.uleb128 0x35
	.4byte	0xc73
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.2byte	0x480
	.4byte	0x1bf1
	.uleb128 0x24
	.4byte	0xc80
	.4byte	.LLST56
	.uleb128 0x34
	.4byte	.LVL213
	.4byte	0x2603
	.byte	0
	.uleb128 0x39
	.4byte	.LVL173
	.4byte	0x13b7
	.4byte	0x1c05
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa8
	.byte	0
	.uleb128 0x39
	.4byte	.LVL175
	.4byte	0x273b
	.4byte	0x1c28
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs_ro
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa8
	.byte	0
	.uleb128 0x39
	.4byte	.LVL176
	.4byte	0x2744
	.4byte	0x1c3c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL177
	.4byte	0x26ae
	.uleb128 0x34
	.4byte	.LVL178
	.4byte	0x274f
	.uleb128 0x39
	.4byte	.LVL179
	.4byte	0x26b9
	.4byte	0x1c82
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x39
	.4byte	.LVL180
	.4byte	0x275a
	.4byte	0x1ca9
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL182
	.4byte	0x275a
	.4byte	0x1cd1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL184
	.4byte	0x2732
	.4byte	0x1cf0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x39
	.4byte	.LVL185
	.4byte	0x2765
	.4byte	0x1d0a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL196
	.4byte	0x268d
	.4byte	0x1d1d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x39
	.4byte	.LVL199
	.4byte	0x2770
	.4byte	0x1d30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL201
	.4byte	0x277b
	.uleb128 0x34
	.4byte	.LVL202
	.4byte	0x2786
	.uleb128 0x39
	.4byte	.LVL204
	.4byte	0x2698
	.4byte	0x1d72
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x454
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6338
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.byte	0
	.uleb128 0x39
	.4byte	.LVL206
	.4byte	0x2791
	.4byte	0x1d85
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.4byte	.LVL207
	.4byte	0x279c
	.4byte	0x1d9e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL209
	.4byte	0x27a7
	.uleb128 0x34
	.4byte	.LVL210
	.4byte	0x27a7
	.uleb128 0x34
	.4byte	.LVL211
	.4byte	0x27b2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d0
	.uleb128 0x1e
	.4byte	0xd3
	.4byte	0x1dd0
	.uleb128 0x1f
	.4byte	0xbc
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.4byte	0x1dc0
	.uleb128 0x3c
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x487
	.4byte	0x132
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e70
	.uleb128 0x35
	.4byte	0xc73
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.2byte	0x499
	.4byte	0x1e16
	.uleb128 0x24
	.4byte	0xc80
	.4byte	.LLST57
	.uleb128 0x34
	.4byte	.LVL223
	.4byte	0x2603
	.byte	0
	.uleb128 0x34
	.4byte	.LVL216
	.4byte	0x27bd
	.uleb128 0x39
	.4byte	.LVL217
	.4byte	0x26e5
	.4byte	0x1e32
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x34
	.4byte	.LVL218
	.4byte	0x27a7
	.uleb128 0x34
	.4byte	.LVL219
	.4byte	0x27a7
	.uleb128 0x34
	.4byte	.LVL220
	.4byte	0x2682
	.uleb128 0x34
	.4byte	.LVL221
	.4byte	0x27b2
	.uleb128 0x34
	.4byte	.LVL224
	.4byte	0x27c8
	.uleb128 0x2f
	.4byte	.LVL225
	.4byte	0x2791
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x4ae
	.4byte	0x132
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1feb
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x4ae
	.4byte	0x308
	.4byte	.LLST58
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x4b0
	.4byte	0x33
	.4byte	.LLST59
	.uleb128 0x34
	.4byte	.LVL227
	.4byte	0x27d3
	.uleb128 0x34
	.4byte	.LVL228
	.4byte	0x26c4
	.uleb128 0x34
	.4byte	.LVL230
	.4byte	0x26c4
	.uleb128 0x39
	.4byte	.LVL231
	.4byte	0x27de
	.4byte	0x1ed8
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL232
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL233
	.4byte	0x27e9
	.4byte	0x1ef5
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL234
	.4byte	0x27e9
	.4byte	0x1f09
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL235
	.4byte	0x2677
	.4byte	0x1f1d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL236
	.4byte	0x2677
	.4byte	0x1f31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL237
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL238
	.4byte	0x27e9
	.4byte	0x1f4d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL239
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL240
	.4byte	0x27e9
	.uleb128 0x34
	.4byte	.LVL241
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL242
	.4byte	0x27f4
	.uleb128 0x34
	.4byte	.LVL243
	.4byte	0xe32
	.uleb128 0x39
	.4byte	.LVL244
	.4byte	0x27ff
	.4byte	0x1f8e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL245
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL246
	.4byte	0x280a
	.4byte	0x1faa
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL247
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL248
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL249
	.4byte	0x280a
	.uleb128 0x39
	.4byte	.LVL250
	.4byte	0x2815
	.4byte	0x1fd8
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL251
	.4byte	0x26da
	.uleb128 0x34
	.4byte	.LVL252
	.4byte	0x26da
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x132
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b7
	.uleb128 0x34
	.4byte	.LVL255
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL256
	.4byte	0x2820
	.uleb128 0x34
	.4byte	.LVL257
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL258
	.4byte	0x27f4
	.4byte	0x2033
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL259
	.4byte	0x26fb
	.uleb128 0x34
	.4byte	.LVL260
	.4byte	0x2706
	.uleb128 0x39
	.4byte	.LVL261
	.4byte	0x282b
	.4byte	0x205a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x34
	.4byte	.LVL262
	.4byte	0x26fb
	.uleb128 0x39
	.4byte	.LVL263
	.4byte	0x280a
	.4byte	0x2076
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL264
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL265
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL266
	.4byte	0x280a
	.uleb128 0x39
	.4byte	.LVL267
	.4byte	0x2815
	.4byte	0x20a4
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL268
	.4byte	0x26da
	.uleb128 0x34
	.4byte	.LVL269
	.4byte	0x26da
	.byte	0
	.uleb128 0x41
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x512
	.4byte	0x400
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x519
	.4byte	0x132
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x211c
	.uleb128 0x2a
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x519
	.4byte	0x466
	.4byte	.LLST60
	.uleb128 0x28
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x519
	.4byte	0x4de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LVL271
	.4byte	0x2837
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x522
	.4byte	0x4de
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2157
	.uleb128 0x2a
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x522
	.4byte	0x466
	.4byte	.LLST61
	.uleb128 0x2f
	.4byte	.LVL274
	.4byte	0x2842
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x527
	.4byte	0x132
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c4
	.uleb128 0x2a
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x527
	.4byte	0x4de
	.4byte	.LLST62
	.uleb128 0x28
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x527
	.4byte	0x4de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.2byte	0x529
	.4byte	0x132
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x52a
	.4byte	0x33
	.4byte	.LLST63
	.uleb128 0x2f
	.4byte	.LVL277
	.4byte	0x284d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x539
	.4byte	0x132
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2213
	.uleb128 0x2a
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x539
	.4byte	0x2213
	.4byte	.LLST64
	.uleb128 0x28
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x539
	.4byte	0x2213
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LVL282
	.4byte	0x2858
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4de
	.uleb128 0x3c
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x542
	.4byte	0x132
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2299
	.uleb128 0x2d
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x544
	.4byte	0x132
	.4byte	.LLST65
	.uleb128 0x34
	.4byte	.LVL284
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL285
	.4byte	0x27e9
	.4byte	0x225f
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL286
	.4byte	0x27e9
	.4byte	0x2273
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL287
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL288
	.4byte	0x27e9
	.4byte	0x228f
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL289
	.4byte	0x27f4
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x558
	.4byte	0x132
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2301
	.uleb128 0x2d
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x55a
	.4byte	0x132
	.4byte	.LLST66
	.uleb128 0x34
	.4byte	.LVL291
	.4byte	0x266c
	.uleb128 0x39
	.4byte	.LVL292
	.4byte	0x280a
	.4byte	0x22df
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL293
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL294
	.4byte	0x280a
	.uleb128 0x2f
	.4byte	.LVL295
	.4byte	0x27f4
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x56e
	.4byte	0x13d
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x232e
	.uleb128 0x34
	.4byte	.LVL297
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL298
	.4byte	0x26fb
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x578
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2357
	.uleb128 0x34
	.4byte	.LVL299
	.4byte	0x266c
	.uleb128 0x34
	.4byte	.LVL300
	.4byte	0x2706
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x582
	.4byte	0x132
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2395
	.uleb128 0x2a
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x582
	.4byte	0x502
	.4byte	.LLST67
	.uleb128 0x2f
	.4byte	.LVL302
	.4byte	0x2863
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x58b
	.4byte	0x132
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23b9
	.uleb128 0x34
	.4byte	.LVL304
	.4byte	0x286e
	.byte	0
	.uleb128 0x33
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x10f
	.4byte	0x23cb
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs_ro
	.uleb128 0x8
	.4byte	0x70e
	.uleb128 0x1e
	.4byte	0x703
	.4byte	0x23e0
	.uleb128 0x1f
	.4byte	0xbc
	.byte	0x6
	.byte	0
	.uleb128 0x33
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x13d
	.4byte	0x23d0
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_dram_available_region
	.uleb128 0x33
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x14c
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_em
	.uleb128 0x33
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x14d
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_bss
	.uleb128 0x33
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x14e
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_misc
	.uleb128 0x33
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x14f
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_data
	.uleb128 0x33
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x151
	.4byte	0x244c
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs_p
	.uleb128 0x6
	.byte	0x4
	.4byte	0x70e
	.uleb128 0x33
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x15a
	.4byte	0x111
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_phy_rf_just_enabled
	.uleb128 0x33
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x15b
	.4byte	0x400
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_controller_status
	.uleb128 0x33
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x15d
	.4byte	0x23b
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.uleb128 0x33
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x160
	.4byte	0x106
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_lpcycle_us
	.uleb128 0x33
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x161
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_lpcycle_us_frac
	.uleb128 0x33
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x164
	.4byte	0x181
	.uleb128 0x5
	.byte	0x3
	.4byte	s_btdm_slp_tmr
	.uleb128 0x33
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x165
	.4byte	0x5b1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_pm_lock
	.uleb128 0x33
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x166
	.4byte	0x5b1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_light_sleep_pm_lock
	.uleb128 0x33
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x167
	.4byte	0x276
	.uleb128 0x5
	.byte	0x3
	.4byte	s_pm_lock_sem
	.uleb128 0x42
	.4byte	.LASF334
	.byte	0x1
	.byte	0xd2
	.4byte	0xd3
	.uleb128 0x42
	.4byte	.LASF335
	.byte	0x1
	.byte	0xd3
	.4byte	0xd3
	.uleb128 0x42
	.4byte	.LASF336
	.byte	0x1
	.byte	0xd4
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF337
	.byte	0x1
	.byte	0xd7
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF338
	.byte	0x1
	.byte	0xd8
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF339
	.byte	0x1
	.byte	0xd9
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF340
	.byte	0x1
	.byte	0xda
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF341
	.byte	0x1
	.byte	0xdb
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF342
	.byte	0x1
	.byte	0xdc
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF343
	.byte	0x1
	.byte	0xdd
	.4byte	0x106
	.uleb128 0x42
	.4byte	.LASF344
	.byte	0x1
	.byte	0xde
	.4byte	0x106
	.uleb128 0x43
	.4byte	.LASF345
	.4byte	.LASF345
	.byte	0xc
	.2byte	0x38a
	.uleb128 0x44
	.4byte	.LASF346
	.4byte	.LASF346
	.byte	0x12
	.byte	0x43
	.uleb128 0x44
	.4byte	.LASF347
	.4byte	.LASF347
	.byte	0xd
	.byte	0xde
	.uleb128 0x44
	.4byte	.LASF348
	.4byte	.LASF348
	.byte	0x1
	.byte	0xba
	.uleb128 0x44
	.4byte	.LASF349
	.4byte	.LASF349
	.byte	0xb
	.byte	0xa7
	.uleb128 0x43
	.4byte	.LASF350
	.4byte	.LASF350
	.byte	0xb
	.2byte	0x10a
	.uleb128 0x44
	.4byte	.LASF351
	.4byte	.LASF351
	.byte	0x13
	.byte	0x3b
	.uleb128 0x44
	.4byte	.LASF352
	.4byte	.LASF352
	.byte	0x2
	.byte	0xb8
	.uleb128 0x43
	.4byte	.LASF353
	.4byte	.LASF353
	.byte	0x14
	.2byte	0x2fb
	.uleb128 0x43
	.4byte	.LASF354
	.4byte	.LASF354
	.byte	0x14
	.2byte	0x151
	.uleb128 0x43
	.4byte	.LASF355
	.4byte	.LASF355
	.byte	0xc
	.2byte	0x543
	.uleb128 0x43
	.4byte	.LASF356
	.4byte	.LASF356
	.byte	0xc
	.2byte	0x4f3
	.uleb128 0x43
	.4byte	.LASF357
	.4byte	.LASF357
	.byte	0xc
	.2byte	0x265
	.uleb128 0x43
	.4byte	.LASF358
	.4byte	.LASF358
	.byte	0xc
	.2byte	0x3ac
	.uleb128 0x43
	.4byte	.LASF359
	.4byte	.LASF359
	.byte	0xc
	.2byte	0x5d0
	.uleb128 0x43
	.4byte	.LASF360
	.4byte	.LASF360
	.byte	0xc
	.2byte	0x578
	.uleb128 0x43
	.4byte	.LASF361
	.4byte	.LASF361
	.byte	0xc
	.2byte	0x4f4
	.uleb128 0x43
	.4byte	.LASF362
	.4byte	.LASF362
	.byte	0x9
	.2byte	0x13d
	.uleb128 0x44
	.4byte	.LASF363
	.4byte	.LASF363
	.byte	0x9
	.byte	0xd9
	.uleb128 0x44
	.4byte	.LASF364
	.4byte	.LASF364
	.byte	0x9
	.byte	0xda
	.uleb128 0x44
	.4byte	.LASF365
	.4byte	.LASF365
	.byte	0x15
	.byte	0x37
	.uleb128 0x43
	.4byte	.LASF366
	.4byte	.LASF366
	.byte	0xc
	.2byte	0x57a
	.uleb128 0x44
	.4byte	.LASF367
	.4byte	.LASF367
	.byte	0x1
	.byte	0xbe
	.uleb128 0x44
	.4byte	.LASF368
	.4byte	.LASF368
	.byte	0xd
	.byte	0xc9
	.uleb128 0x44
	.4byte	.LASF369
	.4byte	.LASF369
	.byte	0x8
	.byte	0xaa
	.uleb128 0x44
	.4byte	.LASF370
	.4byte	.LASF370
	.byte	0x16
	.byte	0x25
	.uleb128 0x44
	.4byte	.LASF371
	.4byte	.LASF371
	.byte	0x17
	.byte	0x29
	.uleb128 0x44
	.4byte	.LASF372
	.4byte	.LASF372
	.byte	0x8
	.byte	0x8e
	.uleb128 0x44
	.4byte	.LASF373
	.4byte	.LASF373
	.byte	0xf
	.byte	0x57
	.uleb128 0x44
	.4byte	.LASF374
	.4byte	.LASF374
	.byte	0xf
	.byte	0x6b
	.uleb128 0x44
	.4byte	.LASF375
	.4byte	.LASF375
	.byte	0x10
	.byte	0x72
	.uleb128 0x44
	.4byte	.LASF376
	.4byte	.LASF376
	.byte	0xd
	.byte	0xc4
	.uleb128 0x44
	.4byte	.LASF377
	.4byte	.LASF377
	.byte	0x10
	.byte	0x8a
	.uleb128 0x44
	.4byte	.LASF378
	.4byte	.LASF378
	.byte	0x16
	.byte	0x31
	.uleb128 0x44
	.4byte	.LASF379
	.4byte	.LASF379
	.byte	0x1
	.byte	0xc5
	.uleb128 0x44
	.4byte	.LASF380
	.4byte	.LASF380
	.byte	0x1
	.byte	0xbf
	.uleb128 0x44
	.4byte	.LASF381
	.4byte	.LASF381
	.byte	0x1
	.byte	0xc0
	.uleb128 0x44
	.4byte	.LASF382
	.4byte	.LASF382
	.byte	0x1
	.byte	0xc6
	.uleb128 0x44
	.4byte	.LASF383
	.4byte	.LASF383
	.byte	0x1
	.byte	0xc7
	.uleb128 0x44
	.4byte	.LASF384
	.4byte	.LASF384
	.byte	0x6
	.byte	0x4f
	.uleb128 0x45
	.4byte	.LASF385
	.4byte	.LASF385
	.uleb128 0x45
	.4byte	.LASF386
	.4byte	.LASF386
	.uleb128 0x44
	.4byte	.LASF387
	.4byte	.LASF387
	.byte	0x1
	.byte	0xb2
	.uleb128 0x44
	.4byte	.LASF388
	.4byte	.LASF388
	.byte	0x1
	.byte	0xb9
	.uleb128 0x44
	.4byte	.LASF389
	.4byte	.LASF389
	.byte	0x10
	.byte	0x59
	.uleb128 0x44
	.4byte	.LASF390
	.4byte	.LASF390
	.byte	0x8
	.byte	0x7f
	.uleb128 0x44
	.4byte	.LASF391
	.4byte	.LASF391
	.byte	0x1
	.byte	0xc2
	.uleb128 0x44
	.4byte	.LASF392
	.4byte	.LASF392
	.byte	0x18
	.byte	0xb2
	.uleb128 0x44
	.4byte	.LASF393
	.4byte	.LASF393
	.byte	0x1
	.byte	0xc3
	.uleb128 0x44
	.4byte	.LASF394
	.4byte	.LASF394
	.byte	0x1
	.byte	0xbd
	.uleb128 0x44
	.4byte	.LASF395
	.4byte	.LASF395
	.byte	0x1
	.byte	0xb4
	.uleb128 0x44
	.4byte	.LASF396
	.4byte	.LASF396
	.byte	0x10
	.byte	0x9a
	.uleb128 0x44
	.4byte	.LASF397
	.4byte	.LASF397
	.byte	0x8
	.byte	0xb7
	.uleb128 0x44
	.4byte	.LASF398
	.4byte	.LASF398
	.byte	0x1
	.byte	0xb5
	.uleb128 0x44
	.4byte	.LASF399
	.4byte	.LASF399
	.byte	0x19
	.byte	0x5a
	.uleb128 0x44
	.4byte	.LASF400
	.4byte	.LASF400
	.byte	0x1
	.byte	0xb8
	.uleb128 0x44
	.4byte	.LASF401
	.4byte	.LASF401
	.byte	0xd
	.byte	0xbf
	.uleb128 0x44
	.4byte	.LASF402
	.4byte	.LASF402
	.byte	0xd
	.byte	0xd2
	.uleb128 0x44
	.4byte	.LASF403
	.4byte	.LASF403
	.byte	0x1
	.byte	0xbc
	.uleb128 0x44
	.4byte	.LASF404
	.4byte	.LASF404
	.byte	0x1
	.byte	0xb6
	.uleb128 0x44
	.4byte	.LASF405
	.4byte	.LASF405
	.byte	0xd
	.byte	0xd7
	.uleb128 0x44
	.4byte	.LASF406
	.4byte	.LASF406
	.byte	0xd
	.byte	0xba
	.uleb128 0x44
	.4byte	.LASF407
	.4byte	.LASF407
	.byte	0x1
	.byte	0xb7
	.uleb128 0x43
	.4byte	.LASF408
	.4byte	.LASF408
	.byte	0x1a
	.2byte	0x17f
	.uleb128 0x44
	.4byte	.LASF409
	.4byte	.LASF409
	.byte	0x1
	.byte	0xc9
	.uleb128 0x44
	.4byte	.LASF410
	.4byte	.LASF410
	.byte	0x1
	.byte	0xca
	.uleb128 0x44
	.4byte	.LASF411
	.4byte	.LASF411
	.byte	0x1
	.byte	0xcb
	.uleb128 0x44
	.4byte	.LASF412
	.4byte	.LASF412
	.byte	0x1
	.byte	0xcc
	.uleb128 0x44
	.4byte	.LASF413
	.4byte	.LASF413
	.byte	0x1
	.byte	0xcd
	.uleb128 0x44
	.4byte	.LASF414
	.4byte	.LASF414
	.byte	0x1
	.byte	0xce
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x18
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3e
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
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x5
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0xf
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x3
	.4byte	btdm_lpcycle_us_frac
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x24
	.byte	0xf7
	.uleb128 0x25
	.byte	0x3
	.4byte	btdm_lpcycle_us
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x3
	.4byte	btdm_lpcycle_us_frac
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x24
	.byte	0xf7
	.uleb128 0x25
	.byte	0x3
	.4byte	btdm_lpcycle_us
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x5
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL131
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL135
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL146
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL134
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL147
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL136
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x5
	.byte	0x3
	.4byte	btdm_dram_available_region+80
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL148
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL152
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL156
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
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL169
	.4byte	.LFE68
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL161
	.4byte	.LVL163-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LVL167-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL162
	.4byte	.LVL163-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL166
	.4byte	.LVL167-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL181
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL208
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL172
	.4byte	.LVL190
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL206
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL198
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL187
	.4byte	.LVL208
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL187
	.4byte	.LVL208
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL212
	.4byte	.LVL213-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL222
	.4byte	.LVL223-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_pm_lock_sem
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL226
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL244
	.4byte	.LVL245-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL272
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL273
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL275
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL276
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL278
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL277
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL281
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL283
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL301
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL303
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1cc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF255:
	.string	"rand_wrapper"
.LASF256:
	.string	"read_mac_wrapper"
.LASF346:
	.string	"heap_caps_add_region"
.LASF74:
	.string	"send_adv_reserved_size"
.LASF36:
	.string	"esp_timer_create_args_t"
.LASF4:
	.string	"size_t"
.LASF144:
	.string	"PERIPH_TIMG0_MODULE"
.LASF16:
	.string	"sizetype"
.LASF28:
	.string	"start"
.LASF147:
	.string	"PERIPH_PWM1_MODULE"
.LASF39:
	.string	"owner"
.LASF339:
	.string	"_btdm_bss_start"
.LASF199:
	.string	"_task_create"
.LASF269:
	.string	"semphr_take_from_isr_wrapper"
.LASF363:
	.string	"vTaskExitCritical"
.LASF150:
	.string	"PERIPH_UHCI0_MODULE"
.LASF268:
	.string	"hptw"
.LASF21:
	.string	"int32_t"
.LASF227:
	.string	"us_to_sleep"
.LASF46:
	.string	"ESP_MAC_BT"
.LASF165:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF131:
	.string	"ESP_PM_APB_FREQ_MAX"
.LASF244:
	.string	"cycles"
.LASF292:
	.string	"btdm_controller_mem_init"
.LASF228:
	.string	"__func__"
.LASF37:
	.string	"BaseType_t"
.LASF398:
	.string	"btdm_controller_deinit"
.LASF153:
	.string	"PERIPH_PCNT_MODULE"
.LASF193:
	.string	"_queue_create"
.LASF402:
	.string	"esp_modem_sleep_register"
.LASF96:
	.string	"ESP_BLE_PWR_TYPE_ADV"
.LASF348:
	.string	"btdm_rf_bb_init_phase2"
.LASF146:
	.string	"PERIPH_PWM0_MODULE"
.LASF226:
	.string	"lpcycles"
.LASF163:
	.string	"PERIPH_WIFI_MODULE"
.LASF107:
	.string	"ESP_PWR_LVL_P6"
.LASF220:
	.string	"semphr_take_wrapper"
.LASF405:
	.string	"esp_modem_sleep_deregister"
.LASF122:
	.string	"notify_host_recv"
.LASF280:
	.string	"interrupt_disable"
.LASF49:
	.string	"MODEM_BLE_MODULE"
.LASF330:
	.string	"s_btdm_slp_tmr"
.LASF201:
	.string	"_is_in_isr"
.LASF260:
	.string	"task_delete_wrapper"
.LASF33:
	.string	"callback"
.LASF413:
	.string	"bredr_sco_datapath_set"
.LASF266:
	.string	"prio"
.LASF71:
	.string	"scan_duplicate_type"
.LASF233:
	.string	"__interrupt"
.LASF190:
	.string	"_mutex_delete"
.LASF78:
	.string	"bt_max_acl_conn"
.LASF5:
	.string	"__uint8_t"
.LASF316:
	.string	"data_path"
.LASF61:
	.string	"ESP_BT_MODE_IDLE"
.LASF65:
	.string	"esp_bt_mode_t"
.LASF284:
	.string	"esp_vhci_host_check_send_available"
.LASF195:
	.string	"_queue_send"
.LASF321:
	.string	"reserved_region_rom_bt_bss"
.LASF15:
	.string	"long int"
.LASF326:
	.string	"btdm_controller_status"
.LASF56:
	.string	"MODEM_MODULE_COUNT"
.LASF252:
	.string	"srand_wrapper"
.LASF414:
	.string	"btdm_controller_scan_duplicate_list_clear"
.LASF155:
	.string	"PERIPH_HSPI_MODULE"
.LASF117:
	.string	"esp_power_level_t"
.LASF408:
	.string	"ets_delay_us"
.LASF70:
	.string	"scan_duplicate_mode"
.LASF390:
	.string	"esp_timer_create"
.LASF318:
	.string	"osi_funcs_ro"
.LASF83:
	.string	"ESP_BT_CONTROLLER_STATUS_INITED"
.LASF32:
	.string	"esp_timer_dispatch_t"
.LASF418:
	.string	"error"
.LASF160:
	.string	"PERIPH_CAN_MODULE"
.LASF308:
	.string	"esp_bredr_tx_power_get"
.LASF123:
	.string	"esp_vhci_host_callback_t"
.LASF243:
	.string	"seed"
.LASF356:
	.string	"xQueueGenericSendFromISR"
.LASF247:
	.string	"btdm_sleep_check_duration"
.LASF53:
	.string	"MODEM_WIFI_SNIFFER_MODULE"
.LASF344:
	.string	"_btdm_data_end"
.LASF66:
	.string	"controller_task_stack_size"
.LASF340:
	.string	"_btdm_bss_end"
.LASF48:
	.string	"QueueHandle_t"
.LASF3:
	.string	"signed char"
.LASF19:
	.string	"uint8_t"
.LASF254:
	.string	"latest_ts"
.LASF177:
	.string	"_set_isr"
.LASF261:
	.string	"task_handle"
.LASF376:
	.string	"esp_modem_sleep_enter"
.LASF234:
	.string	"btdm_sleep_exit_phase3_wrapper"
.LASF327:
	.string	"global_int_mux"
.LASF170:
	.string	"PERIPH_RSA_MODULE"
.LASF166:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF6:
	.string	"unsigned char"
.LASF105:
	.string	"ESP_PWR_LVL_N0"
.LASF217:
	.string	"_magic"
.LASF113:
	.string	"ESP_PWR_LVL_N2"
.LASF104:
	.string	"ESP_PWR_LVL_N3"
.LASF112:
	.string	"ESP_PWR_LVL_N5"
.LASF103:
	.string	"ESP_PWR_LVL_N6"
.LASF111:
	.string	"ESP_PWR_LVL_N8"
.LASF102:
	.string	"ESP_PWR_LVL_N9"
.LASF42:
	.string	"xt_handler"
.LASF99:
	.string	"ESP_BLE_PWR_TYPE_NUM"
.LASF400:
	.string	"btdm_controller_get_mode"
.LASF287:
	.string	"update"
.LASF359:
	.string	"xQueueGenericCreate"
.LASF138:
	.string	"PERIPH_UART1_MODULE"
.LASF75:
	.string	"controller_debug_flag"
.LASF62:
	.string	"ESP_BT_MODE_BLE"
.LASF27:
	.string	"_Bool"
.LASF267:
	.string	"queue_recv_from_isr_wrapper"
.LASF360:
	.string	"xQueueCreateMutex"
.LASF18:
	.string	"char"
.LASF206:
	.string	"_read_efuse_mac"
.LASF358:
	.string	"vQueueDelete"
.LASF192:
	.string	"_mutex_unlock"
.LASF354:
	.string	"xTaskCreatePinnedToCore"
.LASF315:
	.string	"esp_bredr_sco_datapath_set"
.LASF85:
	.string	"ESP_BT_CONTROLLER_STATUS_NUM"
.LASF335:
	.string	"_data_end_btdm"
.LASF171:
	.string	"esp_vhci_host_callback"
.LASF197:
	.string	"_queue_recv"
.LASF8:
	.string	"__uint16_t"
.LASF196:
	.string	"_queue_send_from_isr"
.LASF362:
	.string	"_frxt_setup_switch"
.LASF409:
	.string	"ble_txpwr_set"
.LASF415:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF149:
	.string	"PERIPH_PWM3_MODULE"
.LASF114:
	.string	"ESP_PWR_LVL_P1"
.LASF106:
	.string	"ESP_PWR_LVL_P3"
.LASF115:
	.string	"ESP_PWR_LVL_P4"
.LASF59:
	.string	"PHY_MODEM_MODULE"
.LASF116:
	.string	"ESP_PWR_LVL_P7"
.LASF108:
	.string	"ESP_PWR_LVL_P9"
.LASF353:
	.string	"vTaskDelete"
.LASF140:
	.string	"PERIPH_I2C0_MODULE"
.LASF258:
	.string	"core_id"
.LASF173:
	.string	"vhci_host_callback_t"
.LASF125:
	.string	"ESP_LOG_ERROR"
.LASF242:
	.string	"semphr_delete_wrapper"
.LASF328:
	.string	"btdm_lpcycle_us"
.LASF132:
	.string	"ESP_PM_NO_LIGHT_SLEEP"
.LASF55:
	.string	"MODEM_USER_MODULE"
.LASF412:
	.string	"bredr_txpwr_get"
.LASF52:
	.string	"MODEM_WIFI_SOFTAP_MODULE"
.LASF312:
	.string	"esp_bt_controller_is_sleeping"
.LASF81:
	.string	"esp_bt_controller_config_t"
.LASF194:
	.string	"_queue_delete"
.LASF211:
	.string	"_btdm_sleep_check_duration"
.LASF296:
	.string	"select_src_ret"
.LASF47:
	.string	"ESP_MAC_ETH"
.LASF286:
	.string	"esp_bt_controller_mem_release"
.LASF82:
	.string	"ESP_BT_CONTROLLER_STATUS_IDLE"
.LASF295:
	.string	"create_args"
.LASF119:
	.string	"ESP_SCO_DATA_PATH_PCM"
.LASF214:
	.string	"_btdm_sleep_exit_phase1"
.LASF215:
	.string	"_btdm_sleep_exit_phase2"
.LASF216:
	.string	"_btdm_sleep_exit_phase3"
.LASF110:
	.string	"ESP_PWR_LVL_N11"
.LASF101:
	.string	"ESP_PWR_LVL_N12"
.LASF109:
	.string	"ESP_PWR_LVL_N14"
.LASF279:
	.string	"interrupt_restore"
.LASF371:
	.string	"__assert_func"
.LASF395:
	.string	"btdm_controller_init"
.LASF314:
	.string	"esp_bt_controller_wakeup_request"
.LASF357:
	.string	"xQueueGenericSend"
.LASF262:
	.string	"task_create_wrapper"
.LASF377:
	.string	"esp_pm_lock_release"
.LASF231:
	.string	"cause_sw_intr"
.LASF381:
	.string	"btdm_wakeup_request"
.LASF43:
	.string	"ESP_TIMER_TASK"
.LASF293:
	.string	"esp_bt_controller_init"
.LASF307:
	.string	"max_power_level"
.LASF297:
	.string	"set_div_ret"
.LASF403:
	.string	"btdm_controller_enable_sleep"
.LASF13:
	.string	"__uint64_t"
.LASF17:
	.string	"long unsigned int"
.LASF240:
	.string	"btdm_config_mask_load"
.LASF419:
	.string	"esp_bt_controller_get_status"
.LASF313:
	.string	"esp_vhci_host_send_packet"
.LASF232:
	.string	"intr_no"
.LASF290:
	.string	"__err_rc"
.LASF158:
	.string	"PERIPH_SDMMC_MODULE"
.LASF396:
	.string	"esp_pm_lock_delete"
.LASF310:
	.string	"status"
.LASF181:
	.string	"_task_yield"
.LASF265:
	.string	"param"
.LASF97:
	.string	"ESP_BLE_PWR_TYPE_SCAN"
.LASF374:
	.string	"esp_log_write"
.LASF121:
	.string	"notify_host_send_available"
.LASF276:
	.string	"mutex_create_wrapper"
.LASF172:
	.string	"vhci_host_callback"
.LASF86:
	.string	"esp_bt_controller_status_t"
.LASF333:
	.string	"s_pm_lock_sem"
.LASF389:
	.string	"esp_pm_lock_create"
.LASF44:
	.string	"ESP_MAC_WIFI_STA"
.LASF302:
	.string	"power_type"
.LASF200:
	.string	"_task_delete"
.LASF136:
	.string	"PERIPH_LEDC_MODULE"
.LASF202:
	.string	"_cause_sw_intr_to_core"
.LASF271:
	.string	"mutex_unlock_wrapper"
.LASF219:
	.string	"block_time_ms"
.LASF394:
	.string	"btdm_controller_set_sleep_mode"
.LASF304:
	.string	"esp_ble_tx_power_get"
.LASF285:
	.string	"esp_vhci_host_register_callback"
.LASF309:
	.string	"esp_bt_sleep_enable"
.LASF383:
	.string	"API_vhci_host_register_callback"
.LASF14:
	.string	"__intptr_t"
.LASF31:
	.string	"esp_timer_cb_t"
.LASF143:
	.string	"PERIPH_I2S1_MODULE"
.LASF10:
	.string	"__uint32_t"
.LASF50:
	.string	"MODEM_CLASSIC_BT_MODULE"
.LASF416:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c"
.LASF12:
	.string	"long long int"
.LASF352:
	.string	"xPortInIsrContext"
.LASF334:
	.string	"_data_start_btdm"
.LASF135:
	.string	"esp_pm_lock"
.LASF246:
	.string	"btdm_us_2_lpcycles"
.LASF323:
	.string	"reserved_region_rom_bt_data"
.LASF159:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF26:
	.string	"esp_err_t"
.LASF187:
	.string	"_semphr_take"
.LASF355:
	.string	"xQueueReceiveFromISR"
.LASF387:
	.string	"btdm_osi_funcs_register"
.LASF241:
	.string	"mask"
.LASF263:
	.string	"task_func"
.LASF259:
	.string	"is_in_isr_wrapper"
.LASF337:
	.string	"_bt_bss_start"
.LASF365:
	.string	"heap_caps_malloc"
.LASF250:
	.string	"mutex"
.LASF54:
	.string	"MODEM_WIFI_NULL_MODULE"
.LASF29:
	.string	"soc_reserved_region_t"
.LASF87:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL0"
.LASF88:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL1"
.LASF89:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL2"
.LASF45:
	.string	"ESP_MAC_WIFI_SOFTAP"
.LASF91:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL4"
.LASF92:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL5"
.LASF93:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL6"
.LASF94:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL7"
.LASF95:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL8"
.LASF40:
	.string	"count"
.LASF167:
	.string	"PERIPH_BT_LC_MODULE"
.LASF68:
	.string	"hci_uart_no"
.LASF57:
	.string	"PHY_BT_MODULE"
.LASF1:
	.string	"unsigned int"
.LASF64:
	.string	"ESP_BT_MODE_BTDM"
.LASF417:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF25:
	.string	"intptr_t"
.LASF351:
	.string	"esp_ipc_call"
.LASF188:
	.string	"_semphr_give"
.LASF338:
	.string	"_bt_bss_end"
.LASF218:
	.string	"semphr"
.LASF384:
	.string	"_esp_error_check_failed"
.LASF331:
	.string	"s_pm_lock"
.LASF311:
	.string	"esp_bt_sleep_disable"
.LASF126:
	.string	"ESP_LOG_WARN"
.LASF180:
	.string	"_interrupt_restore"
.LASF120:
	.string	"esp_sco_data_path_t"
.LASF298:
	.string	"esp_bt_controller_deinit"
.LASF341:
	.string	"_bt_data_start"
.LASF322:
	.string	"reserved_region_rom_bt_misc"
.LASF169:
	.string	"PERIPH_SHA_MODULE"
.LASF305:
	.string	"esp_bredr_tx_power_set"
.LASF164:
	.string	"PERIPH_BT_MODULE"
.LASF175:
	.string	"osi_funcs_t"
.LASF137:
	.string	"PERIPH_UART0_MODULE"
.LASF72:
	.string	"normal_adv_size"
.LASF168:
	.string	"PERIPH_AES_MODULE"
.LASF288:
	.string	"mem_start"
.LASF329:
	.string	"btdm_lpcycle_us_frac"
.LASF152:
	.string	"PERIPH_RMT_MODULE"
.LASF281:
	.string	"malloc_internal_wrapper"
.LASF129:
	.string	"ESP_LOG_VERBOSE"
.LASF174:
	.string	"btdm_dram_available_region_t"
.LASF397:
	.string	"esp_timer_delete"
.LASF176:
	.string	"_version"
.LASF208:
	.string	"_rand"
.LASF332:
	.string	"s_light_sleep_pm_lock"
.LASF249:
	.string	"mutex_lock_wrapper"
.LASF343:
	.string	"_btdm_data_start"
.LASF145:
	.string	"PERIPH_TIMG1_MODULE"
.LASF148:
	.string	"PERIPH_PWM2_MODULE"
.LASF379:
	.string	"API_vhci_host_check_send_available"
.LASF221:
	.string	"queue_recv_wrapper"
.LASF238:
	.string	"semphr_create_wrapper"
.LASF406:
	.string	"esp_phy_rf_deinit"
.LASF151:
	.string	"PERIPH_UHCI1_MODULE"
.LASF51:
	.string	"MODEM_WIFI_STATION_MODULE"
.LASF342:
	.string	"_bt_data_end"
.LASF186:
	.string	"_semphr_give_from_isr"
.LASF320:
	.string	"reserved_region_rom_bt_em"
.LASF325:
	.string	"s_time_phy_rf_just_enabled"
.LASF373:
	.string	"esp_log_timestamp"
.LASF378:
	.string	"periph_module_disable"
.LASF382:
	.string	"API_vhci_host_send_packet"
.LASF282:
	.string	"size"
.LASF393:
	.string	"btdm_lpclk_set_div"
.LASF0:
	.string	"long long unsigned int"
.LASF100:
	.string	"esp_ble_power_type_t"
.LASF191:
	.string	"_mutex_lock"
.LASF20:
	.string	"uint16_t"
.LASF253:
	.string	"btdm_check_and_init_bb"
.LASF205:
	.string	"_free"
.LASF369:
	.string	"esp_timer_stop"
.LASF380:
	.string	"btdm_power_state_active"
.LASF273:
	.string	"queue_create_wrapper"
.LASF274:
	.string	"queue_len"
.LASF222:
	.string	"queue"
.LASF225:
	.string	"btdm_sleep_enter_phase1_wrapper"
.LASF124:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"TickType_t"
.LASF347:
	.string	"esp_phy_rf_get_on_ts"
.LASF41:
	.string	"portMUX_TYPE"
.LASF385:
	.string	"memset"
.LASF127:
	.string	"ESP_LOG_INFO"
.LASF401:
	.string	"esp_phy_load_cal_and_init"
.LASF157:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF411:
	.string	"bredr_txpwr_set"
.LASF230:
	.string	"xPortGetCoreID"
.LASF182:
	.string	"_task_yield_from_isr"
.LASF118:
	.string	"ESP_SCO_DATA_PATH_HCI"
.LASF198:
	.string	"_queue_recv_from_isr"
.LASF299:
	.string	"esp_bt_controller_enable"
.LASF60:
	.string	"PHY_MODULE_COUNT"
.LASF184:
	.string	"_semphr_delete"
.LASF239:
	.string	"init"
.LASF350:
	.string	"esp_read_mac"
.LASF156:
	.string	"PERIPH_VSPI_MODULE"
.LASF235:
	.string	"btdm_sleep_exit_phase1_wrapper"
.LASF303:
	.string	"power_level"
.LASF317:
	.string	"esp_ble_scan_dupilcate_list_flush"
.LASF368:
	.string	"esp_modem_sleep_exit"
.LASF133:
	.string	"esp_pm_lock_handle_t"
.LASF306:
	.string	"min_power_level"
.LASF289:
	.string	"mem_end"
.LASF154:
	.string	"PERIPH_SPI_MODULE"
.LASF73:
	.string	"mesh_adv_size"
.LASF183:
	.string	"_semphr_create"
.LASF209:
	.string	"_btdm_lpcycles_2_us"
.LASF35:
	.string	"name"
.LASF364:
	.string	"vTaskEnterCritical"
.LASF236:
	.string	"queue_send_wrapper"
.LASF30:
	.string	"esp_timer_handle_t"
.LASF224:
	.string	"btdm_slp_tmr_callback"
.LASF7:
	.string	"short int"
.LASF24:
	.string	"uint64_t"
.LASF76:
	.string	"mode"
.LASF189:
	.string	"_mutex_create"
.LASF63:
	.string	"ESP_BT_MODE_CLASSIC_BT"
.LASF84:
	.string	"ESP_BT_CONTROLLER_STATUS_ENABLED"
.LASF270:
	.string	"queue_send_from_isr_wrapper"
.LASF272:
	.string	"queue_delete_wrapper"
.LASF134:
	.string	"esp_timer"
.LASF130:
	.string	"ESP_PM_CPU_FREQ_MAX"
.LASF161:
	.string	"PERIPH_EMAC_MODULE"
.LASF223:
	.string	"item"
.LASF142:
	.string	"PERIPH_I2S0_MODULE"
.LASF264:
	.string	"stack_depth"
.LASF294:
	.string	"btdm_cfg_mask"
.LASF185:
	.string	"_semphr_take_from_isr"
.LASF392:
	.string	"rtc_clk_xtal_freq_get"
.LASF367:
	.string	"btdm_controller_get_sleep_mode"
.LASF212:
	.string	"_btdm_sleep_enter_phase1"
.LASF213:
	.string	"_btdm_sleep_enter_phase2"
.LASF178:
	.string	"_ints_on"
.LASF69:
	.string	"hci_uart_baudrate"
.LASF324:
	.string	"osi_funcs_p"
.LASF207:
	.string	"_srand"
.LASF372:
	.string	"esp_timer_start_once"
.LASF128:
	.string	"ESP_LOG_DEBUG"
.LASF410:
	.string	"ble_txpwr_get"
.LASF11:
	.string	"__int64_t"
.LASF257:
	.string	"cause_sw_intr_to_core_wrapper"
.LASF90:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL3"
.LASF361:
	.string	"xQueueGiveFromISR"
.LASF386:
	.string	"memcpy"
.LASF375:
	.string	"esp_pm_lock_acquire"
.LASF139:
	.string	"PERIPH_UART2_MODULE"
.LASF229:
	.string	"uncertainty"
.LASF204:
	.string	"_malloc_internal"
.LASF319:
	.string	"btdm_dram_available_region"
.LASF301:
	.string	"esp_ble_tx_power_set"
.LASF336:
	.string	"_data_start_btdm_rom"
.LASF22:
	.string	"uint32_t"
.LASF275:
	.string	"item_size"
.LASF98:
	.string	"ESP_BLE_PWR_TYPE_DEFAULT"
.LASF404:
	.string	"btdm_controller_enable"
.LASF203:
	.string	"_malloc"
.LASF399:
	.string	"free"
.LASF2:
	.string	"short unsigned int"
.LASF80:
	.string	"magic"
.LASF162:
	.string	"PERIPH_RNG_MODULE"
.LASF251:
	.string	"try_heap_caps_add_region"
.LASF278:
	.string	"task_yield_from_isr"
.LASF179:
	.string	"_interrupt_disable"
.LASF141:
	.string	"PERIPH_I2C1_MODULE"
.LASF345:
	.string	"xQueueGenericReceive"
.LASF291:
	.string	"esp_bt_mem_release"
.LASF237:
	.string	"btdm_sleep_enter_phase2_wrapper"
.LASF210:
	.string	"_btdm_us_2_lpcycles"
.LASF300:
	.string	"esp_bt_controller_disable"
.LASF9:
	.string	"__int32_t"
.LASF23:
	.string	"int64_t"
.LASF391:
	.string	"btdm_lpclk_select_src"
.LASF77:
	.string	"ble_max_conn"
.LASF67:
	.string	"controller_task_prio"
.LASF388:
	.string	"btdm_controller_get_compile_version"
.LASF349:
	.string	"esp_random"
.LASF277:
	.string	"semphr_give_from_isr_wrapper"
.LASF366:
	.string	"xQueueCreateCountingSemaphore"
.LASF407:
	.string	"btdm_controller_disable"
.LASF245:
	.string	"btdm_lpcycles_2_us"
.LASF34:
	.string	"dispatch_method"
.LASF283:
	.string	"data"
.LASF370:
	.string	"periph_module_enable"
.LASF58:
	.string	"PHY_WIFI_MODULE"
.LASF79:
	.string	"bt_max_sync_conn"
.LASF248:
	.string	"slot_cnt"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
