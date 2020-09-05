	.file	"bt.c"
	.text
.Ltext0:
	.section	.iram1.51,"ax",@progbits
	.align	4
	.type	is_in_isr_wrapper, @function
is_in_isr_wrapper:
.LFB55:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c"
	.loc 1 737 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB20:
.LBB21:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 226 0
#APP
# 226 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr a2, PS
# 0 "" 2
.LVL1:
#NO_APP
.LBE21:
.LBE20:
	.loc 1 738 0
	movi.n	a9, 1
	extui	a8, a2, 0, 4
	movi.n	a2, 0
.LVL2:
	movnez	a2, a9, a8
	.loc 1 739 0
	retw.n
.LFE55:
	.size	is_in_isr_wrapper, .-is_in_isr_wrapper
	.section	.iram1.53,"ax",@progbits
	.align	4
	.type	cause_sw_intr_to_core_wrapper, @function
cause_sw_intr_to_core_wrapper:
.LFB57:
	.loc 1 749 0
.LVL3:
	entry	sp, 32
.LCFI1:
.LVL4:
.LBB22:
.LBB23:
.LBB24:
	.loc 1 745 0
	movi.n	a8, 1
	ssl	a3
	sll	a3, a8
.LVL5:
#APP
# 745 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c" 1
	wsr.intset a3
# 0 "" 2
#NO_APP
.LBE24:
.LBE23:
.LBE22:
	.loc 1 762 0
	movi.n	a2, 0
.LVL6:
	retw.n
.LFE57:
	.size	cause_sw_intr_to_core_wrapper, .-cause_sw_intr_to_core_wrapper
	.section	.iram1.55,"ax",@progbits
	.align	4
	.type	srand_wrapper, @function
srand_wrapper:
.LFB60:
	.loc 1 775 0
.LVL7:
	entry	sp, 32
.LCFI2:
	retw.n
.LFE60:
	.size	srand_wrapper, .-srand_wrapper
	.global	__lshrdi3
	.section	.iram1.57,"ax",@progbits
	.literal_position
	.literal .LC0, btdm_lpcycle_us
	.literal .LC1, btdm_lpcycle_us_frac
	.align	4
	.type	btdm_lpcycles_2_us, @function
btdm_lpcycles_2_us:
.LFB62:
	.loc 1 785 0
.LVL8:
	.loc 1 785 0
	entry	sp, 32
.LCFI3:
	.loc 1 788 0
	l32r	a8, .LC0
	.loc 1 789 0
	movi.n	a11, 1
	.loc 1 788 0
	l32i.n	a9, a8, 0
.LVL9:
	.loc 1 789 0
	l32r	a8, .LC1
	mull	a10, a9, a2
	l8ui	a12, a8, 0
	muluh	a2, a9, a2
.LVL10:
	addi.n	a8, a12, -1
	ssl	a8
	sll	a8, a11
	add.n	a10, a8, a10
	srai	a13, a8, 31
	bltu	a10, a8, .L5
	movi.n	a11, 0
.L5:
	add.n	a2, a13, a2
.LVL11:
	.loc 1 790 0
	add.n	a11, a11, a2
.LVL12:
	call8	__lshrdi3
.LVL13:
	.loc 1 791 0
	mov.n	a2, a10
	retw.n
.LFE62:
	.size	btdm_lpcycles_2_us, .-btdm_lpcycles_2_us
	.global	__ashldi3
	.global	__udivdi3
	.section	.iram1.58,"ax",@progbits
	.literal_position
	.literal .LC2, btdm_lpcycle_us_frac
	.literal .LC3, btdm_lpcycle_us
	.align	4
	.type	btdm_us_2_lpcycles, @function
btdm_us_2_lpcycles:
.LFB63:
	.loc 1 797 0
.LVL14:
	entry	sp, 32
.LCFI4:
.LVL15:
	.loc 1 803 0
	l32r	a8, .LC2
.LVL16:
	movi.n	a3, 0
	l8ui	a12, a8, 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__ashldi3
.LVL17:
	l32r	a8, .LC3
	mov.n	a13, a3
	l32i.n	a12, a8, 0
	call8	__udivdi3
.LVL18:
	.loc 1 804 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE63:
	.size	btdm_us_2_lpcycles, .-btdm_us_2_lpcycles
	.section	.iram1.59,"ax",@progbits
	.align	4
	.type	btdm_sleep_check_duration, @function
btdm_sleep_check_duration:
.LFB64:
	.loc 1 807 0
.LVL20:
	entry	sp, 32
.LCFI5:
	.loc 1 808 0
	l32i.n	a8, a2, 0
	movi.n	a10, 0xb
	.loc 1 809 0
	movi.n	a9, 0
	.loc 1 808 0
	bgeu	a10, a8, .L8
	.loc 1 812 0
	addi	a8, a8, -4
	s32i.n	a8, a2, 0
	.loc 1 813 0
	movi.n	a9, 1
.L8:
	.loc 1 814 0
	mov.n	a2, a9
.LVL21:
	retw.n
.LFE64:
	.size	btdm_sleep_check_duration, .-btdm_sleep_check_duration
	.section	.text.mutex_lock_wrapper,"ax",@progbits
	.align	4
	.type	mutex_lock_wrapper, @function
mutex_lock_wrapper:
.LFB45:
	.loc 1 617 0
.LVL22:
	entry	sp, 32
.LCFI6:
	.loc 1 618 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL23:
	.loc 1 619 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE45:
	.size	mutex_lock_wrapper, .-mutex_lock_wrapper
	.section	.text.try_heap_caps_add_region,"ax",@progbits
	.align	4
	.type	try_heap_caps_add_region, @function
try_heap_caps_add_region:
.LFB79:
	.loc 1 1010 0
.LVL25:
	entry	sp, 32
.LCFI7:
	.loc 1 1011 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_add_region
.LVL26:
	.loc 1 1016 0
	movi	a8, 0x104
	sub	a8, a10, a8
	movi.n	a2, 0
.LVL27:
	movnez	a2, a10, a8
	.loc 1 1020 0
	retw.n
.LFE79:
	.size	try_heap_caps_add_region, .-try_heap_caps_add_region
	.section	.text.btdm_check_and_init_bb,"ax",@progbits
	.literal_position
	.literal .LC4, s_time_phy_rf_just_enabled
	.align	4
	.type	btdm_check_and_init_bb, @function
btdm_check_and_init_bb:
.LFB33:
	.loc 1 391 0
	entry	sp, 32
.LCFI8:
	.loc 1 393 0
	call8	esp_phy_rf_get_on_ts
.LVL28:
	.loc 1 394 0
	l32r	a12, .LC4
	.loc 1 393 0
	mov.n	a3, a11
	.loc 1 394 0
	l32i.n	a13, a12, 4
	l32i.n	a11, a12, 0
	.loc 1 393 0
	mov.n	a4, a10
.LVL29:
	.loc 1 394 0
	xor	a8, a4, a11
	xor	a9, a3, a13
	or	a9, a8, a9
	movi.n	a10, 1
	movi.n	a8, 0
	movnez	a8, a10, a9
	extui	a8, a8, 0, 8
	mov.n	a2, a12
	bnez.n	a8, .L17
	or	a13, a11, a13
	moveqz	a8, a10, a13
	beqz.n	a8, .L14
.L17:
	.loc 1 396 0
	call8	btdm_rf_bb_init_phase2
.LVL30:
	.loc 1 397 0
	s32i.n	a4, a2, 0
	s32i.n	a3, a2, 4
.L14:
	retw.n
.LFE33:
	.size	btdm_check_and_init_bb, .-btdm_check_and_init_bb
	.section	.iram1.56,"ax",@progbits
	.align	4
	.type	rand_wrapper, @function
rand_wrapper:
.LFB61:
	.loc 1 780 0
	entry	sp, 32
.LCFI9:
	.loc 1 781 0
	call8	esp_random
.LVL31:
	.loc 1 782 0
	mov.n	a2, a10
	retw.n
.LFE61:
	.size	rand_wrapper, .-rand_wrapper
	.section	.iram1.54,"ax",@progbits
	.align	4
	.type	read_mac_wrapper, @function
read_mac_wrapper:
.LFB59:
	.loc 1 770 0
.LVL32:
	entry	sp, 32
.LCFI10:
	.loc 1 771 0
	movi.n	a11, 2
	mov.n	a10, a2
	call8	esp_read_mac
.LVL33:
	.loc 1 772 0
	mov.n	a2, a10
.LVL34:
	retw.n
.LFE59:
	.size	read_mac_wrapper, .-read_mac_wrapper
	.section	.text.task_delete_wrapper,"ax",@progbits
	.align	4
	.type	task_delete_wrapper, @function
task_delete_wrapper:
.LFB54:
	.loc 1 732 0
.LVL35:
	entry	sp, 32
.LCFI11:
	.loc 1 733 0
	mov.n	a10, a2
	call8	vTaskDelete
.LVL36:
	retw.n
.LFE54:
	.size	task_delete_wrapper, .-task_delete_wrapper
	.section	.text.task_create_wrapper,"ax",@progbits
	.literal_position
	.literal .LC5, 2147483647
	.align	4
	.type	task_create_wrapper, @function
task_create_wrapper:
.LFB53:
	.loc 1 727 0
.LVL37:
	entry	sp, 48
.LCFI12:
	.loc 1 728 0
	l32r	a10, .LC5
	l32i.n	a9, sp, 48
	movi.n	a8, 0
	movnez	a8, a10, a9
	.loc 1 727 0
	mov.n	a15, a7
	.loc 1 728 0
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xTaskCreatePinnedToCore
.LVL38:
	.loc 1 729 0
	mov.n	a2, a10
.LVL39:
	.loc 1 727 0
	.loc 1 729 0
	retw.n
.LFE53:
	.size	task_create_wrapper, .-task_create_wrapper
	.section	.iram1.50,"ax",@progbits
	.align	4
	.type	queue_recv_from_isr_wrapper, @function
queue_recv_from_isr_wrapper:
.LFB52:
	.loc 1 722 0
.LVL40:
	entry	sp, 32
.LCFI13:
	.loc 1 723 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueReceiveFromISR
.LVL41:
	.loc 1 724 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE52:
	.size	queue_recv_from_isr_wrapper, .-queue_recv_from_isr_wrapper
	.section	.iram1.47,"ax",@progbits
	.align	4
	.type	semphr_take_from_isr_wrapper, @function
semphr_take_from_isr_wrapper:
.LFB39:
	.loc 1 532 0
.LVL43:
	entry	sp, 32
.LCFI14:
	.loc 1 533 0
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a2
	call8	xQueueReceiveFromISR
.LVL44:
	.loc 1 534 0
	mov.n	a2, a10
.LVL45:
	retw.n
.LFE39:
	.size	semphr_take_from_isr_wrapper, .-semphr_take_from_isr_wrapper
	.section	.iram1.49,"ax",@progbits
	.align	4
	.type	queue_send_from_isr_wrapper, @function
queue_send_from_isr_wrapper:
.LFB50:
	.loc 1 708 0
.LVL46:
	entry	sp, 32
.LCFI15:
	.loc 1 709 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericSendFromISR
.LVL47:
	.loc 1 710 0
	mov.n	a2, a10
.LVL48:
	retw.n
.LFE50:
	.size	queue_send_from_isr_wrapper, .-queue_send_from_isr_wrapper
	.section	.text.mutex_unlock_wrapper,"ax",@progbits
	.align	4
	.type	mutex_unlock_wrapper, @function
mutex_unlock_wrapper:
.LFB46:
	.loc 1 622 0
.LVL49:
	entry	sp, 32
.LCFI16:
	.loc 1 623 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL50:
	.loc 1 624 0
	mov.n	a2, a10
.LVL51:
	retw.n
.LFE46:
	.size	mutex_unlock_wrapper, .-mutex_unlock_wrapper
	.section	.text.semphr_give_wrapper,"ax",@progbits
	.align	4
	.type	semphr_give_wrapper, @function
semphr_give_wrapper:
.LFB111:
	entry	sp, 32
.LCFI17:
	mov.n	a10, a2
	call8	mutex_unlock_wrapper
	mov.n	a2, a10
	retw.n
.LFE111:
	.size	semphr_give_wrapper, .-semphr_give_wrapper
	.section	.text.queue_delete_wrapper,"ax",@progbits
	.align	4
	.type	queue_delete_wrapper, @function
queue_delete_wrapper:
.LFB48:
	.loc 1 678 0
.LVL52:
	.loc 1 678 0
	entry	sp, 32
.LCFI18:
	.loc 1 680 0
	mov.n	a10, a2
	call8	vQueueDelete
.LVL53:
	retw.n
.LFE48:
	.size	queue_delete_wrapper, .-queue_delete_wrapper
	.section	.text.queue_create_wrapper,"ax",@progbits
	.align	4
	.type	queue_create_wrapper, @function
queue_create_wrapper:
.LFB47:
	.loc 1 627 0
.LVL54:
	entry	sp, 32
.LCFI19:
	.loc 1 673 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericCreate
.LVL55:
	.loc 1 675 0
	mov.n	a2, a10
.LVL56:
	retw.n
.LFE47:
	.size	queue_create_wrapper, .-queue_create_wrapper
	.section	.text.mutex_create_wrapper,"ax",@progbits
	.align	4
	.type	mutex_create_wrapper, @function
mutex_create_wrapper:
.LFB43:
	.loc 1 556 0
	entry	sp, 32
.LCFI20:
	.loc 1 592 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL57:
	.loc 1 594 0
	mov.n	a2, a10
	retw.n
.LFE43:
	.size	mutex_create_wrapper, .-mutex_create_wrapper
	.section	.iram1.48,"ax",@progbits
	.align	4
	.type	semphr_give_from_isr_wrapper, @function
semphr_give_from_isr_wrapper:
.LFB40:
	.loc 1 537 0
.LVL58:
	entry	sp, 32
.LCFI21:
	.loc 1 538 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGiveFromISR
.LVL59:
	.loc 1 539 0
	mov.n	a2, a10
.LVL60:
	retw.n
.LFE40:
	.size	semphr_give_from_isr_wrapper, .-semphr_give_from_isr_wrapper
	.section	.iram1.46,"ax",@progbits
	.align	4
	.type	task_yield_from_isr, @function
task_yield_from_isr:
.LFB36:
	.loc 1 466 0
	entry	sp, 32
.LCFI22:
	.loc 1 467 0
	call8	_frxt_setup_switch
.LVL61:
	retw.n
.LFE36:
	.size	task_yield_from_isr, .-task_yield_from_isr
	.section	.iram1.45,"ax",@progbits
	.literal_position
	.literal .LC6, global_int_mux
	.align	4
	.type	interrupt_restore, @function
interrupt_restore:
.LFB35:
	.loc 1 457 0
	entry	sp, 32
.LCFI23:
	.loc 1 458 0
	call8	xPortInIsrContext
.LVL62:
	.loc 1 459 0
	l32r	a10, .LC6
	call8	vTaskExitCritical
.LVL63:
	retw.n
.LFE35:
	.size	interrupt_restore, .-interrupt_restore
	.section	.iram1.44,"ax",@progbits
	.literal_position
	.literal .LC7, global_int_mux
	.align	4
	.type	interrupt_disable, @function
interrupt_disable:
.LFB34:
	.loc 1 448 0
	entry	sp, 32
.LCFI24:
	.loc 1 449 0
	call8	xPortInIsrContext
.LVL64:
	.loc 1 450 0
	l32r	a10, .LC7
	call8	vTaskEnterCritical
.LVL65:
	retw.n
.LFE34:
	.size	interrupt_disable, .-interrupt_disable
	.section	.text.malloc_internal_wrapper,"ax",@progbits
	.literal_position
	.literal .LC8, 2060
	.align	4
	.type	malloc_internal_wrapper, @function
malloc_internal_wrapper:
.LFB58:
	.loc 1 765 0
.LVL66:
	entry	sp, 32
.LCFI25:
	.loc 1 766 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL67:
	.loc 1 767 0
	mov.n	a2, a10
.LVL68:
	retw.n
.LFE58:
	.size	malloc_internal_wrapper, .-malloc_internal_wrapper
	.section	.text.semphr_create_wrapper,"ax",@progbits
	.align	4
	.type	semphr_create_wrapper, @function
semphr_create_wrapper:
.LFB37:
	.loc 1 471 0
.LVL69:
	entry	sp, 32
.LCFI26:
	.loc 1 473 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueCreateCountingSemaphore
.LVL70:
	.loc 1 509 0
	mov.n	a2, a10
.LVL71:
	retw.n
.LFE37:
	.size	semphr_create_wrapper, .-semphr_create_wrapper
	.section	.text.semphr_take_wrapper,"ax",@progbits
	.literal_position
	.literal .LC9, -858993459
	.align	4
	.type	semphr_take_wrapper, @function
semphr_take_wrapper:
.LFB41:
	.loc 1 542 0
.LVL72:
	entry	sp, 32
.LCFI27:
	.loc 1 542 0
	mov.n	a10, a2
	mov.n	a12, a3
.LBB27:
.LBB28:
	.loc 1 544 0
	movi.n	a13, 0
.LBE28:
.LBE27:
	.loc 1 543 0
	beqi	a3, -1, .L44
.L42:
	.loc 1 546 0
	l32r	a8, .LC9
	movi.n	a13, 0
	muluh	a12, a3, a8
	srli	a12, a12, 3
.L44:
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL73:
	.loc 1 548 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE41:
	.size	semphr_take_wrapper, .-semphr_take_wrapper
	.section	.text.async_wakeup_request,"ax",@progbits
	.literal_position
	.literal .LC10, s_pm_lock_sem
	.literal .LC11, s_pm_lock
	.literal .LC12, s_btdm_slp_tmr
	.align	4
	.type	async_wakeup_request, @function
async_wakeup_request:
.LFB70:
	.loc 1 892 0
.LVL75:
	entry	sp, 32
.LCFI28:
.LVL76:
	.loc 1 894 0
	beqz.n	a2, .L51
	bnei	a2, 1, .L56
	.loc 1 899 0
	movi.n	a3, 0
	j	.L47
.L51:
	.loc 1 896 0
	movi.n	a3, 1
.L47:
.LVL77:
	.loc 1 907 0
	call8	btdm_power_state_active
.LVL78:
	.loc 1 905 0
	movi.n	a2, 0
.LVL79:
	.loc 1 907 0
	bne	a10, a2, .L46
	.loc 1 909 0
	l32r	a2, .LC10
	mov.n	a11, a10
	l32i.n	a10, a2, 0
	call8	semphr_take_wrapper
.LVL80:
	beqz.n	a10, .L49
	.loc 1 910 0
	l32r	a2, .LC11
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_acquire
.LVL81:
.L49:
	.loc 1 912 0
	l32r	a2, .LC12
	l32i.n	a10, a2, 0
	.loc 1 914 0
	movi.n	a2, 1
	.loc 1 912 0
	call8	esp_timer_stop
.LVL82:
	.loc 1 915 0
	mov.n	a10, a3
	call8	btdm_wakeup_request
.LVL83:
	retw.n
.LVL84:
.L56:
	.loc 1 902 0
	movi.n	a2, 0
.LVL85:
.L46:
	.loc 1 919 0
	retw.n
.LFE70:
	.size	async_wakeup_request, .-async_wakeup_request
	.section	.text.coex_bt_wakeup_request,"ax",@progbits
	.align	4
	.type	coex_bt_wakeup_request, @function
coex_bt_wakeup_request:
.LFB72:
	.loc 1 943 0
	entry	sp, 32
.LCFI29:
	.loc 1 944 0
	movi.n	a10, 1
	call8	async_wakeup_request
.LVL86:
	.loc 1 945 0
	mov.n	a2, a10
	retw.n
.LFE72:
	.size	coex_bt_wakeup_request, .-coex_bt_wakeup_request
	.section	.iram1.61,"ax",@progbits
	.literal_position
	.literal .LC13, s_pm_lock_sem
	.literal .LC14, s_pm_lock
	.align	4
	.type	btdm_slp_tmr_callback, @function
btdm_slp_tmr_callback:
.LFB69:
	.loc 1 880 0
.LVL87:
	entry	sp, 32
.LCFI30:
	.loc 1 881 0
	l32r	a8, .LC13
	movi.n	a11, 0
	l32i.n	a10, a8, 0
	call8	semphr_take_wrapper
.LVL88:
	bnei	a10, 1, .L58
.LVL89:
.LBB31:
.LBB32:
	.loc 1 882 0
	l32r	a8, .LC14
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_acquire
.LVL90:
.L58:
	retw.n
.LBE32:
.LBE31:
.LFE69:
	.size	btdm_slp_tmr_callback, .-btdm_slp_tmr_callback
	.section	.text.queue_recv_wrapper,"ax",@progbits
	.literal_position
	.literal .LC15, -858993459
	.align	4
	.type	queue_recv_wrapper, @function
queue_recv_wrapper:
.LFB51:
	.loc 1 713 0
.LVL91:
	entry	sp, 32
.LCFI31:
	.loc 1 713 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
.LBB35:
.LBB36:
	.loc 1 715 0
	movi.n	a13, 0
.LBE36:
.LBE35:
	.loc 1 714 0
	beqi	a4, -1, .L63
.L61:
	.loc 1 717 0
	l32r	a8, .LC15
	movi.n	a13, 0
	muluh	a12, a4, a8
	srli	a12, a12, 3
.L63:
	call8	xQueueGenericReceive
.LVL92:
	.loc 1 719 0
	mov.n	a2, a10
.LVL93:
	retw.n
.LFE51:
	.size	queue_recv_wrapper, .-queue_recv_wrapper
	.section	.text.btdm_sleep_exit_phase3_wrapper,"ax",@progbits
	.literal_position
	.literal .LC16, s_btdm_slp_tmr
	.align	4
	.type	btdm_sleep_exit_phase3_wrapper, @function
btdm_sleep_exit_phase3_wrapper:
.LFB68:
	.loc 1 863 0
	entry	sp, 32
.LCFI32:
	.loc 1 864 0
	call8	btdm_controller_get_sleep_mode
.LVL94:
	mov.n	a2, a10
	bnei	a10, 1, .L65
	.loc 1 865 0
	movi.n	a10, 0
	call8	esp_modem_sleep_exit
.LVL95:
	.loc 1 866 0
	mov.n	a10, a2
	call8	esp_modem_sleep_exit
.LVL96:
	.loc 1 867 0
	call8	btdm_check_and_init_bb
.LVL97:
	.loc 1 869 0
	l32r	a2, .LC16
	l32i.n	a10, a2, 0
	call8	esp_timer_stop
.LVL98:
	retw.n
.L65:
	.loc 1 871 0
	call8	btdm_controller_get_sleep_mode
.LVL99:
	bnei	a10, 2, .L64
.LBB39:
.LBB40:
	.loc 1 873 0
	movi.n	a10, 0x1e
	call8	periph_module_enable
.LVL100:
	.loc 1 874 0
	movi.n	a10, 0
	call8	esp_modem_sleep_exit
.LVL101:
.L64:
	retw.n
.LBE40:
.LBE39:
.LFE68:
	.size	btdm_sleep_exit_phase3_wrapper, .-btdm_sleep_exit_phase3_wrapper
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"us_to_sleep > BTDM_MIN_TIMER_UNCERTAINTY_US"
.LC20:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c"
.LC23:
	.string	"BTDM_INIT"
.LC25:
	.string	"\033[0;33mW (%d) %s: timer start failed\033[0m\n"
	.section	.text.btdm_sleep_enter_phase1_wrapper,"ax",@progbits
	.literal_position
	.literal .LC18, .LC17
	.literal .LC19, __func__$6448
	.literal .LC21, .LC20
	.literal .LC22, s_btdm_slp_tmr
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.align	4
	.type	btdm_sleep_enter_phase1_wrapper, @function
btdm_sleep_enter_phase1_wrapper:
.LFB65:
	.loc 1 817 0
.LVL102:
	entry	sp, 32
.LCFI33:
	.loc 1 820 0
	mov.n	a10, a2
	call8	btdm_lpcycles_2_us
.LVL103:
	.loc 1 823 0
	movi	a9, 0x708
	bltu	a9, a10, .L68
.LVL104:
.LBB43:
.LBB44:
	l32r	a13, .LC18
	l32r	a12, .LC19
	l32r	a10, .LC21
.LVL105:
	movi	a11, 0x337
	call8	__assert_func
.LVL106:
.L68:
.LBE44:
.LBE43:
	.loc 1 826 0
	srli	a12, a10, 11
.LVL107:
	.loc 1 827 0
	movi	a11, 0x707
	bltu	a11, a12, .L69
	.loc 1 828 0
	mov.n	a12, a9
.LVL108:
.L69:
	.loc 1 831 0
	l32r	a8, .LC22
	sub	a12, a10, a12
.LVL109:
	l32i.n	a10, a8, 0
.LVL110:
	movi.n	a13, 0
	call8	esp_timer_start_once
.LVL111:
	beqz.n	a10, .L67
	.loc 1 832 0 discriminator 4
	call8	esp_log_timestamp
.LVL112:
	l32r	a11, .LC24
	l32r	a12, .LC26
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL113:
.L67:
	retw.n
.LFE65:
	.size	btdm_sleep_enter_phase1_wrapper, .-btdm_sleep_enter_phase1_wrapper
	.section	.iram1.60,"ax",@progbits
	.literal_position
	.literal .LC27, s_pm_lock_sem
	.literal .LC28, s_pm_lock
	.align	4
	.type	btdm_sleep_exit_phase1_wrapper, @function
btdm_sleep_exit_phase1_wrapper:
.LFB67:
	.loc 1 854 0
	entry	sp, 32
.LCFI34:
	.loc 1 856 0
	l32r	a8, .LC27
	movi.n	a11, 0
	l32i.n	a10, a8, 0
	call8	semphr_take_from_isr_wrapper
.LVL114:
	bnei	a10, 1, .L74
.LBB47:
.LBB48:
	.loc 1 857 0
	l32r	a8, .LC28
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_acquire
.LVL115:
.L74:
	retw.n
.LBE48:
.LBE47:
.LFE67:
	.size	btdm_sleep_exit_phase1_wrapper, .-btdm_sleep_exit_phase1_wrapper
	.section	.text.queue_send_wrapper,"ax",@progbits
	.literal_position
	.literal .LC29, -858993459
	.align	4
	.type	queue_send_wrapper, @function
queue_send_wrapper:
.LFB49:
	.loc 1 699 0
.LVL116:
	entry	sp, 32
.LCFI35:
	.loc 1 699 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
.LBB51:
.LBB52:
	.loc 1 701 0
	movi.n	a13, 0
.LBE52:
.LBE51:
	.loc 1 700 0
	beqi	a4, -1, .L79
.L77:
	.loc 1 703 0
	l32r	a8, .LC29
	movi.n	a13, 0
	muluh	a12, a4, a8
	srli	a12, a12, 3
.L79:
	call8	xQueueGenericSend
.LVL117:
	.loc 1 705 0
	mov.n	a2, a10
.LVL118:
	retw.n
.LFE49:
	.size	queue_send_wrapper, .-queue_send_wrapper
	.section	.text.btdm_sleep_enter_phase2_wrapper,"ax",@progbits
	.literal_position
	.literal .LC30, s_pm_lock
	.literal .LC31, s_pm_lock_sem
	.align	4
	.type	btdm_sleep_enter_phase2_wrapper, @function
btdm_sleep_enter_phase2_wrapper:
.LFB66:
	.loc 1 838 0
	entry	sp, 32
.LCFI36:
	.loc 1 839 0
	call8	btdm_controller_get_sleep_mode
.LVL119:
	mov.n	a2, a10
	bnei	a10, 1, .L81
	.loc 1 840 0
	movi.n	a10, 0
	call8	esp_modem_sleep_enter
.LVL120:
	.loc 1 841 0
	mov.n	a10, a2
	call8	esp_modem_sleep_enter
.LVL121:
	.loc 1 843 0
	l32r	a2, .LC30
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_release
.LVL122:
	.loc 1 844 0
	l32r	a2, .LC31
	l32i.n	a10, a2, 0
	call8	mutex_unlock_wrapper
.LVL123:
	retw.n
.L81:
	.loc 1 846 0
	call8	btdm_controller_get_sleep_mode
.LVL124:
	bnei	a10, 2, .L80
.LBB55:
.LBB56:
	.loc 1 847 0
	movi.n	a10, 0
	call8	esp_modem_sleep_enter
.LVL125:
	.loc 1 849 0
	movi.n	a10, 0x1e
	call8	periph_module_disable
.LVL126:
.L80:
	retw.n
.LBE56:
.LBE55:
.LFE66:
	.size	btdm_sleep_enter_phase2_wrapper, .-btdm_sleep_enter_phase2_wrapper
	.section	.text.mutex_delete_wrapper,"ax",@progbits
	.align	4
	.type	mutex_delete_wrapper, @function
mutex_delete_wrapper:
.LFB107:
	entry	sp, 32
.LCFI37:
	mov.n	a10, a2
	call8	vQueueDelete
	retw.n
.LFE107:
	.size	mutex_delete_wrapper, .-mutex_delete_wrapper
	.section	.text.semphr_delete_wrapper,"ax",@progbits
	.align	4
	.type	semphr_delete_wrapper, @function
semphr_delete_wrapper:
.LFB109:
	entry	sp, 32
.LCFI38:
	mov.n	a10, a2
	call8	vQueueDelete
	retw.n
.LFE109:
	.size	semphr_delete_wrapper, .-semphr_delete_wrapper
	.section	.text.coex_bt_wakeup_request_end,"ax",@progbits
	.align	4
	.type	coex_bt_wakeup_request_end, @function
coex_bt_wakeup_request_end:
.LFB73:
	.loc 1 948 0
	.loc 1 948 0
	entry	sp, 32
.LCFI39:
.LVL127:
	retw.n
.LFE73:
	.size	coex_bt_wakeup_request_end, .-coex_bt_wakeup_request_end
	.section	.text.esp_vhci_host_check_send_available,"ax",@progbits
	.align	4
	.global	esp_vhci_host_check_send_available
	.type	esp_vhci_host_check_send_available, @function
esp_vhci_host_check_send_available:
.LFB74:
	.loc 1 954 0
	.loc 1 954 0
	entry	sp, 32
.LCFI40:
	.loc 1 955 0
	call8	API_vhci_host_check_send_available
.LVL128:
	.loc 1 956 0
	mov.n	a2, a10
	retw.n
.LFE74:
	.size	esp_vhci_host_check_send_available, .-esp_vhci_host_check_send_available
	.section	.text.esp_vhci_host_send_packet,"ax",@progbits
	.align	4
	.global	esp_vhci_host_send_packet
	.type	esp_vhci_host_send_packet, @function
esp_vhci_host_send_packet:
.LFB75:
	.loc 1 959 0
.LVL129:
	entry	sp, 32
.LCFI41:
	.loc 1 960 0
	movi.n	a10, 0
	call8	async_wakeup_request
.LVL130:
	.loc 1 959 0
	extui	a3, a3, 0, 16
	.loc 1 960 0
	mov.n	a4, a10
.LVL131:
	.loc 1 962 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	API_vhci_host_send_packet
.LVL132:
	.loc 1 964 0
	beqz.n	a4, .L87
.LVL133:
.LBB61:
.LBB62:
	.loc 1 936 0
	call8	btdm_wakeup_request_end
.LVL134:
.L87:
	retw.n
.LBE62:
.LBE61:
.LFE75:
	.size	esp_vhci_host_send_packet, .-esp_vhci_host_send_packet
	.section	.text.esp_vhci_host_register_callback,"ax",@progbits
	.align	4
	.global	esp_vhci_host_register_callback
	.type	esp_vhci_host_register_callback, @function
esp_vhci_host_register_callback:
.LFB76:
	.loc 1 970 0
.LVL135:
	entry	sp, 32
.LCFI42:
	.loc 1 971 0
	mov.n	a10, a2
	call8	API_vhci_host_register_callback
.LVL136:
	movi.n	a8, 1
	movi.n	a2, 0
.LVL137:
	movnez	a2, a8, a10
	.loc 1 972 0
	neg	a2, a2
	retw.n
.LFE76:
	.size	esp_vhci_host_register_callback, .-esp_vhci_host_register_callback
	.section	.rodata.str1.1
.LC36:
	.string	"try_heap_caps_add_region(mem_start, mem_end)"
	.section	.text.esp_bt_controller_mem_release,"ax",@progbits
	.literal_position
	.literal .LC34, btdm_controller_status
	.literal .LC35, btdm_dram_available_region
	.literal .LC37, .LC36
	.literal .LC38, __func__$6521
	.literal .LC39, .LC20
	.literal .LC40, _btdm_bss_start
	.literal .LC41, _btdm_bss_end
	.literal .LC42, _btdm_data_start
	.literal .LC43, _btdm_data_end
	.align	4
	.global	esp_bt_controller_mem_release
	.type	esp_bt_controller_mem_release, @function
esp_bt_controller_mem_release:
.LFB80:
	.loc 1 1023 0
.LVL138:
	entry	sp, 32
.LCFI43:
.LVL139:
	.loc 1 1027 0
	l32r	a3, .LC34
	l32i.n	a6, a3, 0
	.loc 1 1028 0
	movi	a3, 0x103
	.loc 1 1027 0
	bnez.n	a6, .L94
	.loc 1 1032 0
	l32r	a4, .LC35
	l32i.n	a5, a4, 0
	bnone	a2, a5, .L94
	mov.n	a3, a4
.LVL140:
	movi.n	a9, 1
	mov.n	a7, a6
	movi.n	a5, -1
.LVL141:
.L101:
.LBB71:
.LBB72:
.LBB73:
	.loc 1 1038 0
	l32i.n	a8, a3, 0
	beqz.n	a8, .L95
	.loc 1 1039 0
	and	a10, a2, a8
	beq	a8, a10, .L96
.L95:
	.loc 1 1041 0
	xor	a10, a5, a2
	and	a8, a10, a8
	s32i.n	a8, a3, 0
	j	.L97
.L96:
	.loc 1 1045 0
	xor	a10, a5, a2
	and	a8, a10, a8
	s32i.n	a8, a3, 0
	.loc 1 1048 0
	beqz.n	a9, .L98
	.loc 1 1049 0
	l32i.n	a6, a3, 4
.LVL142:
.L98:
	.loc 1 1054 0
	beqi	a7, 6, .L99
	.loc 1 1056 0
	l32i.n	a8, a3, 12
	.loc 1 1055 0
	l32i.n	a11, a3, 8
.LVL143:
	.loc 1 1056 0
	beqz.n	a8, .L100
	.loc 1 1057 0
	and	a9, a2, a8
	bne	a8, a9, .L100
	.loc 1 1058 0
	l32i.n	a8, a3, 16
	beq	a11, a8, .L107
.L100:
.LBB74:
	.loc 1 1062 0
	mov.n	a10, a6
	call8	try_heap_caps_add_region
.LVL144:
	beqz.n	a10, .L109
	l32r	a14, .LC37
	l32r	a13, .LC38
	movi	a12, 0x426
	j	.L127
.LVL145:
.L99:
.LBE74:
.LBB75:
	.loc 1 1068 0
	l32i	a11, a4, 80
	mov.n	a10, a6
	call8	try_heap_caps_add_region
.LVL146:
	beqz.n	a10, .L109
	l32r	a14, .LC37
	l32r	a13, .LC38
	movi	a12, 0x42c
.LVL147:
.L127:
	l32r	a11, .LC39
	call8	_esp_error_check_failed
.LVL148:
.L107:
.LBE75:
	.loc 1 1058 0
	movi.n	a9, 0
	j	.L97
.LVL149:
.L109:
	.loc 1 1069 0
	movi.n	a9, 1
.LVL150:
.L97:
	.loc 1 1036 0
	addi.n	a7, a7, 1
.LVL151:
	addi.n	a3, a3, 12
	bnei	a7, 7, .L101
.LBE73:
	.loc 1 1073 0
	beqi	a2, 3, .L102
.LVL152:
.L104:
.LBE72:
.LBE71:
	.loc 1 1028 0
	movi.n	a3, 0
	j	.L94
.LVL153:
.L102:
.LBB79:
.LBB78:
	.loc 1 1074 0
	l32r	a10, .LC40
.LVL154:
	.loc 1 1075 0
	l32r	a11, .LC41
.LVL155:
	.loc 1 1076 0
	beq	a10, a11, .L103
.LBB76:
	.loc 1 1078 0
	call8	try_heap_caps_add_region
.LVL156:
	beqz.n	a10, .L103
	l32r	a14, .LC37
	l32r	a13, .LC38
	movi	a12, 0x436
	j	.L127
.LVL157:
.L103:
.LBE76:
	.loc 1 1080 0
	l32r	a10, .LC42
.LVL158:
	.loc 1 1081 0
	l32r	a11, .LC43
.LVL159:
	.loc 1 1082 0
	beq	a10, a11, .L104
.LBB77:
	.loc 1 1084 0
	call8	try_heap_caps_add_region
.LVL160:
	beqz.n	a10, .L104
	l32r	a14, .LC37
	l32r	a13, .LC38
	movi	a12, 0x43c
	j	.L127
.LVL161:
.L94:
.LBE77:
.LBE78:
.LBE79:
	.loc 1 1088 0
	mov.n	a2, a3
.LVL162:
	retw.n
.LFE80:
	.size	esp_bt_controller_mem_release, .-esp_bt_controller_mem_release
	.section	.text.esp_bt_mem_release,"ax",@progbits
	.literal_position
	.literal .LC44, _bt_bss_start
	.literal .LC45, _bt_bss_end
	.literal .LC46, .LC36
	.literal .LC47, __func__$6535
	.literal .LC48, .LC20
	.literal .LC49, _bt_data_start
	.literal .LC50, _bt_data_end
	.align	4
	.global	esp_bt_mem_release
	.type	esp_bt_mem_release, @function
esp_bt_mem_release:
.LFB81:
	.loc 1 1091 0
.LVL163:
	entry	sp, 32
.LCFI44:
	.loc 1 1095 0
	mov.n	a10, a2
	call8	esp_bt_controller_mem_release
.LVL164:
	.loc 1 1096 0
	bnez.n	a10, .L133
	.loc 1 1100 0
	beqi	a2, 3, .L130
.LVL165:
.L132:
	.loc 1 1114 0
	movi.n	a2, 0
.LVL166:
	retw.n
.LVL167:
.L130:
	.loc 1 1101 0
	l32r	a10, .LC44
.LVL168:
	.loc 1 1102 0
	l32r	a11, .LC45
.LVL169:
	.loc 1 1103 0
	beq	a10, a11, .L131
.LBB80:
	.loc 1 1105 0
	call8	try_heap_caps_add_region
.LVL170:
	beqz.n	a10, .L131
	.loc 1 1105 0 is_stmt 0 discriminator 1
	l32r	a14, .LC46
	l32r	a13, .LC47
	movi	a12, 0x451
	j	.L140
.LVL171:
.L131:
.LBE80:
	.loc 1 1107 0 is_stmt 1
	l32r	a10, .LC49
.LVL172:
	.loc 1 1108 0
	l32r	a11, .LC50
.LVL173:
	.loc 1 1109 0
	beq	a10, a11, .L132
.LBB81:
	.loc 1 1111 0
	call8	try_heap_caps_add_region
.LVL174:
	beqz.n	a10, .L132
	.loc 1 1111 0 is_stmt 0 discriminator 1
	l32r	a14, .LC46
	l32r	a13, .LC47
	movi	a12, 0x457
.LVL175:
.L140:
	l32r	a11, .LC48
	call8	_esp_error_check_failed
.LVL176:
.L133:
.LBE81:
	mov.n	a2, a10
.LVL177:
	.loc 1 1115 0 is_stmt 1
	retw.n
.LFE81:
	.size	esp_bt_mem_release, .-esp_bt_mem_release
	.section	.rodata.str1.1
.LC58:
	.string	"\033[0;32mI (%d) %s: BT controller compile version [%s]\033[0m\n"
.LC61:
	.string	"btLS"
.LC64:
	.string	"bt"
.LC67:
	.string	"btSlp"
.LC77:
	.string	"select_src_ret && set_div_ret"
	.section	.text.esp_bt_controller_init,"ax",@progbits
	.literal_position
	.literal .LC51, osi_funcs_p
	.literal .LC52, osi_funcs_ro
	.literal .LC53, btdm_controller_status
	.literal .LC54, btdm_dram_available_region
	.literal .LC55, 4095
	.literal .LC56, 538968326
	.literal .LC57, .LC23
	.literal .LC59, .LC58
	.literal .LC60, s_light_sleep_pm_lock
	.literal .LC62, .LC61
	.literal .LC63, s_pm_lock
	.literal .LC65, .LC64
	.literal .LC66, btdm_slp_tmr_callback
	.literal .LC68, .LC67
	.literal .LC69, s_btdm_slp_tmr
	.literal .LC70, s_pm_lock_sem
	.literal .LC71, _data_start_btdm
	.literal .LC72, _data_end_btdm
	.literal .LC73, _data_start_btdm_rom
	.literal .LC74, btdm_lpcycle_us_frac
	.literal .LC75, btdm_lpcycle_us
	.literal .LC76, 16777216
	.literal .LC78, .LC77
	.literal .LC79, __func__$6546
	.literal .LC80, .LC20
	.literal .LC81, 1048576
	.align	4
	.global	esp_bt_controller_init
	.type	esp_bt_controller_init, @function
esp_bt_controller_init:
.LFB82:
	.loc 1 1118 0
.LVL178:
	entry	sp, 48
.LCFI45:
.LVL179:
	.loc 1 1122 0
	movi	a10, 0xc4
	call8	malloc_internal_wrapper
.LVL180:
	l32r	a3, .LC51
	.loc 1 1118 0
	mov.n	a4, a2
	.loc 1 1122 0
	s32i.n	a10, a3, 0
	mov.n	a2, a10
.LVL181:
	.loc 1 1123 0
	beqz.n	a10, .L156
	.loc 1 1127 0
	l32r	a11, .LC52
	movi	a12, 0xc4
	call8	memcpy
.LVL182:
	.loc 1 1128 0
	mov.n	a10, a2
	call8	btdm_osi_funcs_register
.LVL183:
	beqz.n	a10, .L143
.L144:
	.loc 1 1129 0
	movi	a6, 0x102
	j	.L142
.L143:
	.loc 1 1132 0
	l32r	a6, .LC53
	l32i.n	a2, a6, 0
	.loc 1 1133 0
	movi	a6, 0x103
	.loc 1 1132 0
	bnez.n	a2, .L142
	.loc 1 1137 0
	l32r	a3, .LC54
	l32i.n	a5, a3, 0
	beqz.n	a5, .L142
	.loc 1 1141 0
	beqz.n	a4, .L144
	.loc 1 1145 0
	l8ui	a7, a4, 2
	movi.n	a5, 0x17
	bne	a7, a5, .L144
	.loc 1 1146 0
	l16ui	a5, a4, 0
	l32r	a7, .LC55
	bgeu	a7, a5, .L144
	.loc 1 1151 0
	s8i	a2, a4, 25
	.loc 1 1152 0
	l32r	a2, .LC56
	.loc 1 1154 0
	l8ui	a5, a4, 20
	.loc 1 1152 0
	s32i.n	a2, a4, 28
	.loc 1 1154 0
	bbci	a5, 0, .L145
	.loc 1 1154 0 is_stmt 0 discriminator 1
	l8ui	a2, a4, 21
	movi.n	a7, 8
	addi.n	a2, a2, -1
	extui	a2, a2, 0, 8
	bltu	a7, a2, .L144
.L145:
	.loc 1 1155 0 is_stmt 1
	bbci	a5, 1, .L146
	.loc 1 1155 0 is_stmt 0 discriminator 1
	l8ui	a2, a4, 22
	addi.n	a2, a2, -1
	extui	a2, a2, 0, 8
	bgeui	a2, 7, .L144
.L146:
	.loc 1 1160 0 is_stmt 1
	call8	esp_log_timestamp
.LVL184:
	mov.n	a2, a10
	call8	btdm_controller_get_compile_version
.LVL185:
	l32r	a11, .LC57
	l32r	a12, .LC59
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL186:
	.loc 1 1171 0
	l32r	a5, .LC60
	l32r	a12, .LC62
	mov.n	a13, a5
	movi.n	a11, 0
	movi.n	a10, 2
	call8	esp_pm_lock_create
.LVL187:
	mov.n	a6, a10
.LVL188:
	l32r	a2, .LC63
	l32r	a7, .LC69
	bnez.n	a10, .L147
	.loc 1 1174 0
	l32r	a12, .LC65
	mov.n	a11, a10
	mov.n	a13, a2
	movi.n	a10, 1
	call8	esp_pm_lock_create
.LVL189:
	mov.n	a6, a10
.LVL190:
	bnez.n	a10, .L147
	.loc 1 1177 0
	mov.n	a11, a10
	movi.n	a12, 0x10
	mov.n	a10, sp
	call8	memset
.LVL191:
	l32r	a8, .LC66
	.loc 1 1182 0
	mov.n	a11, a7
	.loc 1 1177 0
	s32i.n	a8, sp, 0
	l32r	a8, .LC68
	.loc 1 1182 0
	mov.n	a10, sp
	.loc 1 1177 0
	s32i.n	a8, sp, 12
	.loc 1 1182 0
	call8	esp_timer_create
.LVL192:
	mov.n	a6, a10
.LVL193:
	bnez.n	a10, .L147
.LVL194:
.LBB89:
.LBB90:
	.loc 1 473 0
	mov.n	a11, a10
	movi.n	a10, 1
	call8	xQueueCreateCountingSemaphore
.LVL195:
.LBE90:
.LBE89:
	.loc 1 1186 0
	l32r	a6, .LC70
.LVL196:
	s32i.n	a10, a6, 0
	.loc 1 1187 0
	bnez.n	a10, .L148
.LVL197:
.L152:
	.loc 1 1188 0
	movi	a6, 0x101
	j	.L147
.LVL198:
.L148:
.LBB91:
.LBB92:
	.loc 1 997 0
	l32r	a8, .LC73
	l32r	a10, .LC71
	l32r	a12, .LC72
	l32i.n	a11, a8, 0
	sub	a12, a12, a10
	call8	memcpy
.LVL199:
.LBB93:
	.loc 1 1001 0
	movi.n	a6, 1
.LVL200:
.L150:
	.loc 1 1002 0
	l32i.n	a9, a3, 12
	beqz.n	a9, .L149
	.loc 1 1003 0
	l32i.n	a10, a3, 16
	l32i.n	a12, a3, 20
	movi.n	a11, 0
	sub	a12, a12, a10
	call8	memset
.LVL201:
.L149:
	.loc 1 1001 0
	addi.n	a6, a6, 1
.LVL202:
	addi.n	a3, a3, 12
	bnei	a6, 7, .L150
.LBE93:
.LBE92:
.LBE91:
	.loc 1 1195 0
	movi.n	a10, 0x1c
	call8	periph_module_enable
.LVL203:
	.loc 1 1197 0
	l32r	a6, .LC74
.LVL204:
	movi.n	a3, 0x13
	.loc 1 1198 0
	l32r	a8, .LC76
	.loc 1 1197 0
	s8i	a3, a6, 0
	.loc 1 1198 0
	l32r	a6, .LC75
	.loc 1 1203 0
	movi.n	a10, 0
	.loc 1 1198 0
	s32i.n	a8, a6, 0
.LVL205:
	.loc 1 1203 0
	call8	btdm_lpclk_select_src
.LVL206:
	mov.n	a6, a10
.LVL207:
	.loc 1 1204 0
	call8	rtc_clk_xtal_freq_get
.LVL208:
	slli	a10, a10, 1
	addi.n	a10, a10, -1
	call8	btdm_lpclk_set_div
.LVL209:
	.loc 1 1205 0
	movi.n	a8, 1
	xor	a10, a10, a8
.LVL210:
	extui	a10, a10, 0, 8
	bltu	a10, a6, .L151
	.loc 1 1205 0 is_stmt 0 discriminator 1
	l32r	a13, .LC78
	l32r	a12, .LC79
	l32r	a10, .LC80
	movi	a11, 0x4b5
	call8	__assert_func
.LVL211:
.L151:
	.loc 1 1206 0 is_stmt 1
	l32r	a6, .LC74
.LVL212:
	.loc 1 1216 0
	movi.n	a10, 1
	.loc 1 1206 0
	s8i	a3, a6, 0
	.loc 1 1207 0
	l32r	a6, .LC75
	l32r	a3, .LC81
	s32i.n	a3, a6, 0
	.loc 1 1216 0
	call8	btdm_controller_set_sleep_mode
.LVL213:
	.loc 1 1225 0
	mov.n	a11, a4
	movi.n	a10, 0x38
	call8	btdm_controller_init
.LVL214:
	mov.n	a6, a10
	bnez.n	a10, .L152
	.loc 1 1233 0
	call8	coex_ble_adv_priority_high_set
.LVL215:
	.loc 1 1236 0
	movi.n	a2, 1
	l32r	a3, .LC53
	j	.L184
.LVL216:
.L147:
	.loc 1 1242 0
	l32i.n	a10, a5, 0
	beqz.n	a10, .L153
	.loc 1 1244 0
	movi.n	a3, 0
	.loc 1 1243 0
	call8	esp_pm_lock_delete
.LVL217:
	.loc 1 1244 0
	s32i.n	a3, a5, 0
.L153:
	.loc 1 1246 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L154
	.loc 1 1248 0
	movi.n	a3, 0
	.loc 1 1247 0
	call8	esp_pm_lock_delete
.LVL218:
	.loc 1 1248 0
	s32i.n	a3, a2, 0
.L154:
	.loc 1 1250 0
	l32i.n	a10, a7, 0
	beqz.n	a10, .L155
	.loc 1 1252 0
	movi.n	a2, 0
	.loc 1 1251 0
	call8	esp_timer_delete
.LVL219:
	.loc 1 1252 0
	s32i.n	a2, a7, 0
.L155:
	.loc 1 1254 0
	l32r	a2, .LC70
	l32i.n	a10, a2, 0
	beqz.n	a10, .L142
.LVL220:
.LBB94:
.LBB95:
	.loc 1 514 0
	call8	vQueueDelete
.LVL221:
.LBE95:
.LBE94:
	.loc 1 1256 0
	l32r	a3, .LC70
	movi.n	a2, 0
.LVL222:
.L184:
	s32i.n	a2, a3, 0
	j	.L142
.LVL223:
.L156:
	.loc 1 1124 0
	movi	a6, 0x101
.LVL224:
.L142:
	.loc 1 1260 0
	mov.n	a2, a6
	retw.n
.LFE82:
	.size	esp_bt_controller_init, .-esp_bt_controller_init
	.section	.text.esp_bt_controller_deinit,"ax",@progbits
	.literal_position
	.literal .LC82, btdm_controller_status
	.literal .LC83, s_light_sleep_pm_lock
	.literal .LC84, s_pm_lock
	.literal .LC85, s_btdm_slp_tmr
	.literal .LC86, s_pm_lock_sem
	.literal .LC87, osi_funcs_p
	.literal .LC88, btdm_lpcycle_us
	.align	4
	.global	esp_bt_controller_deinit
	.type	esp_bt_controller_deinit, @function
esp_bt_controller_deinit:
.LFB83:
	.loc 1 1263 0
	entry	sp, 32
.LCFI46:
	.loc 1 1264 0
	l32r	a4, .LC82
	.loc 1 1265 0
	movi	a2, 0x103
	.loc 1 1264 0
	l32i.n	a3, a4, 0
	bnei	a3, 1, .L186
	.loc 1 1268 0
	call8	btdm_controller_deinit
.LVL225:
	.loc 1 1270 0
	movi.n	a10, 0x1c
	call8	periph_module_disable
.LVL226:
	.loc 1 1273 0
	l32r	a3, .LC83
	.loc 1 1274 0
	movi.n	a2, 0
	.loc 1 1273 0
	l32i.n	a10, a3, 0
	call8	esp_pm_lock_delete
.LVL227:
	.loc 1 1274 0
	s32i.n	a2, a3, 0
	.loc 1 1275 0
	l32r	a3, .LC84
	l32i.n	a10, a3, 0
	call8	esp_pm_lock_delete
.LVL228:
	.loc 1 1276 0
	s32i.n	a2, a3, 0
	.loc 1 1277 0
	l32r	a3, .LC85
	l32i.n	a10, a3, 0
	call8	esp_timer_stop
.LVL229:
	.loc 1 1278 0
	l32i.n	a10, a3, 0
	call8	esp_timer_delete
.LVL230:
	.loc 1 1279 0
	s32i.n	a2, a3, 0
.LVL231:
	.loc 1 1280 0
	l32r	a3, .LC86
.LBB96:
.LBB97:
	.loc 1 514 0
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL232:
.LBE97:
.LBE96:
	.loc 1 1281 0
	s32i.n	a2, a3, 0
	.loc 1 1290 0
	l32r	a3, .LC87
	l32i.n	a10, a3, 0
	call8	free
.LVL233:
	.loc 1 1291 0
	s32i.n	a2, a3, 0
	.loc 1 1295 0
	l32r	a3, .LC88
	.loc 1 1296 0
	mov.n	a10, a2
	.loc 1 1293 0
	s32i.n	a2, a4, 0
	.loc 1 1295 0
	s32i.n	a2, a3, 0
	.loc 1 1296 0
	call8	btdm_controller_set_sleep_mode
.LVL234:
.L186:
	.loc 1 1299 0
	retw.n
.LFE83:
	.size	esp_bt_controller_deinit, .-esp_bt_controller_deinit
	.section	.text.esp_bt_controller_enable,"ax",@progbits
	.literal_position
	.literal .LC89, btdm_controller_status
	.literal .LC90, s_light_sleep_pm_lock
	.literal .LC91, s_pm_lock
	.align	4
	.global	esp_bt_controller_enable
	.type	esp_bt_controller_enable, @function
esp_bt_controller_enable:
.LFB84:
	.loc 1 1302 0
.LVL235:
	entry	sp, 32
.LCFI47:
	.loc 1 1305 0
	l32r	a3, .LC89
	.loc 1 1306 0
	movi	a10, 0x103
	.loc 1 1305 0
	l32i.n	a5, a3, 0
	bnei	a5, 1, .L189
	.loc 1 1310 0
	call8	btdm_controller_get_mode
.LVL236:
	mov.n	a6, a10
	.loc 1 1311 0
	movi	a10, 0x102
	.loc 1 1310 0
	bne	a6, a2, .L189
	.loc 1 1315 0
	l32r	a4, .LC90
	l32i.n	a10, a4, 0
	call8	esp_pm_lock_acquire
.LVL237:
	.loc 1 1316 0
	l32r	a2, .LC91
.LVL238:
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_acquire
.LVL239:
	.loc 1 1319 0
	movi.n	a10, 0
	call8	esp_phy_load_cal_and_init
.LVL240:
	.loc 1 1321 0
	call8	btdm_controller_get_sleep_mode
.LVL241:
	mov.n	a7, a10
	bnez.n	a10, .L190
	.loc 1 1324 0
	call8	esp_modem_sleep_register
.LVL242:
	.loc 1 1325 0
	mov.n	a10, a5
	call8	esp_modem_sleep_register
.LVL243:
	.loc 1 1326 0
	mov.n	a10, a7
	call8	esp_modem_sleep_exit
.LVL244:
	.loc 1 1327 0
	mov.n	a10, a5
	call8	esp_modem_sleep_exit
.LVL245:
	j	.L191
.L190:
	.loc 1 1328 0
	call8	btdm_controller_get_sleep_mode
.LVL246:
	mov.n	a5, a10
	bnei	a10, 1, .L192
	.loc 1 1329 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL247:
	.loc 1 1330 0
	mov.n	a10, a5
	j	.L203
.L192:
	.loc 1 1331 0
	call8	btdm_controller_get_sleep_mode
.LVL248:
	bnei	a10, 2, .L191
	.loc 1 1332 0
	movi.n	a10, 0
.L203:
	call8	esp_modem_sleep_register
.LVL249:
.L191:
	.loc 1 1335 0
	call8	btdm_controller_get_sleep_mode
.LVL250:
	bnei	a10, 1, .L193
	.loc 1 1336 0
	call8	btdm_controller_enable_sleep
.LVL251:
.L193:
	.loc 1 1340 0
	call8	btdm_check_and_init_bb
.LVL252:
	.loc 1 1342 0
	mov.n	a10, a6
	call8	btdm_controller_enable
.LVL253:
	.loc 1 1343 0
	beqz.n	a10, .L194
	.loc 1 1344 0
	call8	btdm_controller_get_sleep_mode
.LVL254:
	bnez.n	a10, .L195
.L197:
	.loc 1 1346 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL255:
	.loc 1 1347 0
	movi.n	a10, 1
	j	.L204
.L195:
	.loc 1 1345 0
	call8	btdm_controller_get_sleep_mode
.LVL256:
	beqi	a10, 1, .L197
	.loc 1 1348 0
	call8	btdm_controller_get_sleep_mode
.LVL257:
	bnei	a10, 2, .L196
	.loc 1 1349 0
	movi.n	a10, 0
.L204:
	call8	esp_modem_sleep_deregister
.LVL258:
.L196:
	.loc 1 1351 0
	movi.n	a10, 0
	call8	esp_phy_rf_deinit
.LVL259:
	.loc 1 1353 0
	l32i.n	a10, a4, 0
	call8	esp_pm_lock_release
.LVL260:
	.loc 1 1354 0
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_release
.LVL261:
	.loc 1 1356 0
	movi	a10, 0x103
	j	.L189
.LVL262:
.L194:
	.loc 1 1359 0
	movi.n	a2, 2
	s32i.n	a2, a3, 0
.LVL263:
.L189:
	.loc 1 1362 0
	mov.n	a2, a10
	retw.n
.LFE84:
	.size	esp_bt_controller_enable, .-esp_bt_controller_enable
	.section	.text.esp_bt_controller_disable,"ax",@progbits
	.literal_position
	.literal .LC92, btdm_controller_status
	.literal .LC93, s_light_sleep_pm_lock
	.literal .LC94, s_pm_lock
	.align	4
	.global	esp_bt_controller_disable
	.type	esp_bt_controller_disable, @function
esp_bt_controller_disable:
.LFB85:
	.loc 1 1365 0
	entry	sp, 32
.LCFI48:
	.loc 1 1366 0
	l32r	a8, .LC92
	.loc 1 1367 0
	movi	a2, 0x103
	.loc 1 1366 0
	l32i.n	a9, a8, 0
	mov.n	a3, a8
	bnei	a9, 2, .L206
	.loc 1 1371 0
	call8	btdm_controller_get_sleep_mode
.LVL264:
	beqi	a10, 1, .L207
.L212:
	.loc 1 1381 0
	call8	btdm_controller_disable
.LVL265:
	.loc 1 1383 0
	call8	btdm_controller_get_sleep_mode
.LVL266:
	beqz.n	a10, .L208
	j	.L222
.L207:
	.loc 1 1372 0
	movi.n	a10, 0
	call8	btdm_controller_enable_sleep
.LVL267:
	.loc 1 1373 0
	call8	btdm_power_state_active
.LVL268:
	bnez.n	a10, .L211
	.loc 1 1374 0
	call8	btdm_wakeup_request
.LVL269:
	j	.L211
.L223:
	.loc 1 1377 0
	movi	a10, 0x3e8
	call8	ets_delay_us
.LVL270:
.L211:
	.loc 1 1376 0
	call8	btdm_power_state_active
.LVL271:
	beqz.n	a10, .L223
	j	.L212
.L208:
	.loc 1 1385 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL272:
	.loc 1 1386 0
	movi.n	a10, 1
	j	.L224
.L222:
	.loc 1 1384 0
	call8	btdm_controller_get_sleep_mode
.LVL273:
	beqi	a10, 1, .L208
	.loc 1 1387 0
	call8	btdm_controller_get_sleep_mode
.LVL274:
	bnei	a10, 2, .L214
	.loc 1 1388 0
	movi.n	a10, 0
.L224:
	call8	esp_modem_sleep_deregister
.LVL275:
.L214:
	.loc 1 1391 0
	movi.n	a2, 1
	.loc 1 1390 0
	movi.n	a10, 0
	call8	esp_phy_rf_deinit
.LVL276:
	.loc 1 1391 0
	s32i.n	a2, a3, 0
	.loc 1 1394 0
	l32r	a2, .LC93
	l32i.n	a10, a2, 0
	call8	esp_pm_lock_release
.LVL277:
	.loc 1 1395 0
	l32r	a2, .LC94
	l32i.n	a10, a2, 0
	.loc 1 1398 0
	movi.n	a2, 0
	.loc 1 1395 0
	call8	esp_pm_lock_release
.LVL278:
.L206:
	.loc 1 1399 0
	retw.n
.LFE85:
	.size	esp_bt_controller_disable, .-esp_bt_controller_disable
	.section	.text.esp_bt_controller_get_status,"ax",@progbits
	.literal_position
	.literal .LC95, btdm_controller_status
	.align	4
	.global	esp_bt_controller_get_status
	.type	esp_bt_controller_get_status, @function
esp_bt_controller_get_status:
.LFB86:
	.loc 1 1402 0
	entry	sp, 32
.LCFI49:
	.loc 1 1404 0
	l32r	a8, .LC95
	l32i.n	a2, a8, 0
	retw.n
.LFE86:
	.size	esp_bt_controller_get_status, .-esp_bt_controller_get_status
	.section	.text.esp_ble_tx_power_set,"ax",@progbits
	.align	4
	.global	esp_ble_tx_power_set
	.type	esp_ble_tx_power_set, @function
esp_ble_tx_power_set:
.LFB87:
	.loc 1 1409 0
.LVL279:
	entry	sp, 32
.LCFI50:
	.loc 1 1410 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ble_txpwr_set
.LVL280:
	.loc 1 1411 0
	movi	a8, 0x102
	movnez	a10, a8, a10
	.loc 1 1415 0
	mov.n	a2, a10
.LVL281:
	retw.n
.LFE87:
	.size	esp_ble_tx_power_set, .-esp_ble_tx_power_set
	.section	.text.esp_ble_tx_power_get,"ax",@progbits
	.align	4
	.global	esp_ble_tx_power_get
	.type	esp_ble_tx_power_get, @function
esp_ble_tx_power_get:
.LFB88:
	.loc 1 1418 0
.LVL282:
	entry	sp, 32
.LCFI51:
	.loc 1 1419 0
	mov.n	a10, a2
	call8	ble_txpwr_get
.LVL283:
	.loc 1 1420 0
	mov.n	a2, a10
.LVL284:
	retw.n
.LFE88:
	.size	esp_ble_tx_power_get, .-esp_ble_tx_power_get
	.section	.text.esp_bredr_tx_power_set,"ax",@progbits
	.align	4
	.global	esp_bredr_tx_power_set
	.type	esp_bredr_tx_power_set, @function
esp_bredr_tx_power_set:
.LFB89:
	.loc 1 1423 0
.LVL285:
	entry	sp, 32
.LCFI52:
	.loc 1 1427 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	bredr_txpwr_set
.LVL286:
	.loc 1 1430 0
	movi.n	a2, 0
.LVL287:
	.loc 1 1429 0
	beq	a10, a2, .L231
	.loc 1 1434 0
	addi.n	a10, a10, 1
.LVL288:
	movi	a2, 0x103
	movi	a8, 0x102
	moveqz	a2, a8, a10
.LVL289:
.L231:
	.loc 1 1438 0
	retw.n
.LFE89:
	.size	esp_bredr_tx_power_set, .-esp_bredr_tx_power_set
	.section	.text.esp_bredr_tx_power_get,"ax",@progbits
	.align	4
	.global	esp_bredr_tx_power_get
	.type	esp_bredr_tx_power_get, @function
esp_bredr_tx_power_get:
.LFB90:
	.loc 1 1441 0
.LVL290:
	entry	sp, 32
.LCFI53:
	.loc 1 1442 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bredr_txpwr_get
.LVL291:
	.loc 1 1443 0
	movi	a8, 0x102
	movnez	a10, a8, a10
	.loc 1 1447 0
	mov.n	a2, a10
.LVL292:
	retw.n
.LFE90:
	.size	esp_bredr_tx_power_get, .-esp_bredr_tx_power_get
	.section	.text.esp_bt_sleep_enable,"ax",@progbits
	.literal_position
	.literal .LC96, btdm_controller_status
	.align	4
	.global	esp_bt_sleep_enable
	.type	esp_bt_sleep_enable, @function
esp_bt_sleep_enable:
.LFB91:
	.loc 1 1450 0
	entry	sp, 32
.LCFI54:
	.loc 1 1452 0
	l32r	a2, .LC96
	l32i.n	a8, a2, 0
	.loc 1 1453 0
	movi	a2, 0x103
	.loc 1 1452 0
	bnei	a8, 2, .L239
	.loc 1 1455 0
	call8	btdm_controller_get_sleep_mode
.LVL293:
	mov.n	a2, a10
	bnei	a10, 1, .L240
	.loc 1 1456 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL294:
	.loc 1 1457 0
	mov.n	a10, a2
	call8	esp_modem_sleep_register
.LVL295:
	.loc 1 1458 0
	mov.n	a10, a2
	j	.L243
.L240:
	.loc 1 1460 0
	call8	btdm_controller_get_sleep_mode
.LVL296:
	.loc 1 1465 0
	movi	a2, 0x106
	.loc 1 1460 0
	bnei	a10, 2, .L239
	.loc 1 1461 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL297:
	.loc 1 1462 0
	movi.n	a10, 1
.L243:
	call8	btdm_controller_enable_sleep
.LVL298:
	.loc 1 1463 0
	movi.n	a2, 0
.LVL299:
.L239:
	.loc 1 1469 0
	retw.n
.LFE91:
	.size	esp_bt_sleep_enable, .-esp_bt_sleep_enable
	.section	.text.esp_bt_sleep_disable,"ax",@progbits
	.literal_position
	.literal .LC97, btdm_controller_status
	.align	4
	.global	esp_bt_sleep_disable
	.type	esp_bt_sleep_disable, @function
esp_bt_sleep_disable:
.LFB92:
	.loc 1 1472 0
	entry	sp, 32
.LCFI55:
	.loc 1 1474 0
	l32r	a2, .LC97
	l32i.n	a8, a2, 0
	.loc 1 1475 0
	movi	a2, 0x103
	.loc 1 1474 0
	bnei	a8, 2, .L245
	.loc 1 1477 0
	call8	btdm_controller_get_sleep_mode
.LVL300:
	mov.n	a2, a10
	bnei	a10, 1, .L246
	.loc 1 1478 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL301:
	.loc 1 1479 0
	mov.n	a10, a2
	j	.L249
.L246:
	.loc 1 1482 0
	call8	btdm_controller_get_sleep_mode
.LVL302:
	.loc 1 1487 0
	movi	a2, 0x106
	.loc 1 1482 0
	bnei	a10, 2, .L245
	.loc 1 1483 0
	movi.n	a10, 0
.L249:
	call8	esp_modem_sleep_deregister
.LVL303:
	.loc 1 1484 0
	movi.n	a10, 0
	call8	btdm_controller_enable_sleep
.LVL304:
	.loc 1 1485 0
	movi.n	a2, 0
.LVL305:
.L245:
	.loc 1 1491 0
	retw.n
.LFE92:
	.size	esp_bt_sleep_disable, .-esp_bt_sleep_disable
	.section	.text.esp_bt_controller_is_sleeping,"ax",@progbits
	.literal_position
	.literal .LC98, btdm_controller_status
	.align	4
	.global	esp_bt_controller_is_sleeping
	.type	esp_bt_controller_is_sleeping, @function
esp_bt_controller_is_sleeping:
.LFB93:
	.loc 1 1494 0
	entry	sp, 32
.LCFI56:
	.loc 1 1495 0
	l32r	a2, .LC98
	l32i.n	a2, a2, 0
	beqi	a2, 2, .L251
.L253:
	.loc 1 1497 0
	movi.n	a2, 0
	retw.n
.L251:
	.loc 1 1496 0 discriminator 1
	call8	btdm_controller_get_sleep_mode
.LVL306:
	mov.n	a2, a10
	.loc 1 1495 0 discriminator 1
	bnei	a10, 1, .L253
	.loc 1 1500 0
	call8	btdm_power_state_active
.LVL307:
	xor	a10, a10, a2
	extui	a2, a10, 0, 8
	.loc 1 1501 0
	retw.n
.LFE93:
	.size	esp_bt_controller_is_sleeping, .-esp_bt_controller_is_sleeping
	.section	.text.esp_bt_controller_wakeup_request,"ax",@progbits
	.literal_position
	.literal .LC99, btdm_controller_status
	.align	4
	.global	esp_bt_controller_wakeup_request
	.type	esp_bt_controller_wakeup_request, @function
esp_bt_controller_wakeup_request:
.LFB94:
	.loc 1 1504 0
	entry	sp, 32
.LCFI57:
	.loc 1 1505 0
	l32r	a8, .LC99
	l32i.n	a8, a8, 0
	bnei	a8, 2, .L254
	.loc 1 1506 0 discriminator 1
	call8	btdm_controller_get_sleep_mode
.LVL308:
	.loc 1 1505 0 discriminator 1
	bnei	a10, 1, .L254
	.loc 1 1510 0
	movi.n	a10, 0
	call8	btdm_wakeup_request
.LVL309:
.L254:
	retw.n
.LFE94:
	.size	esp_bt_controller_wakeup_request, .-esp_bt_controller_wakeup_request
	.section	.text.esp_bredr_sco_datapath_set,"ax",@progbits
	.literal_position
	.literal .LC100, btdm_controller_status
	.align	4
	.global	esp_bredr_sco_datapath_set
	.type	esp_bredr_sco_datapath_set, @function
esp_bredr_sco_datapath_set:
.LFB95:
	.loc 1 1514 0
.LVL310:
	entry	sp, 32
.LCFI58:
	.loc 1 1515 0
	l32r	a8, .LC100
	l32i.n	a9, a8, 0
	.loc 1 1516 0
	movi	a8, 0x103
	.loc 1 1515 0
	bnei	a9, 2, .L259
	.loc 1 1518 0
	extui	a10, a2, 0, 8
	call8	bredr_sco_datapath_set
.LVL311:
	.loc 1 1519 0
	movi.n	a8, 0
.L259:
	.loc 1 1520 0
	mov.n	a2, a8
.LVL312:
	retw.n
.LFE95:
	.size	esp_bredr_sco_datapath_set, .-esp_bredr_sco_datapath_set
	.section	.text.esp_ble_scan_dupilcate_list_flush,"ax",@progbits
	.literal_position
	.literal .LC101, btdm_controller_status
	.align	4
	.global	esp_ble_scan_dupilcate_list_flush
	.type	esp_ble_scan_dupilcate_list_flush, @function
esp_ble_scan_dupilcate_list_flush:
.LFB96:
	.loc 1 1523 0
	entry	sp, 32
.LCFI59:
	.loc 1 1524 0
	l32r	a2, .LC101
	l32i.n	a8, a2, 0
	.loc 1 1525 0
	movi	a2, 0x103
	.loc 1 1524 0
	bnei	a8, 2, .L262
	.loc 1 1527 0
	call8	btdm_controller_scan_duplicate_list_clear
.LVL313:
	.loc 1 1528 0
	movi.n	a2, 0
.L262:
	.loc 1 1529 0
	retw.n
.LFE96:
	.size	esp_ble_scan_dupilcate_list_flush, .-esp_ble_scan_dupilcate_list_flush
	.section	.rodata.__func__$6448,"a",@progbits
	.type	__func__$6448, @object
	.size	__func__$6448, 32
__func__$6448:
	.string	"btdm_sleep_enter_phase1_wrapper"
	.section	.rodata.__func__$6546,"a",@progbits
	.type	__func__$6546, @object
	.size	__func__$6546, 23
__func__$6546:
	.string	"esp_bt_controller_init"
	.section	.rodata.__func__$6535,"a",@progbits
	.type	__func__$6535, @object
	.size	__func__$6535, 19
__func__$6535:
	.string	"esp_bt_mem_release"
	.section	.rodata.__func__$6521,"a",@progbits
	.type	__func__$6521, @object
	.size	__func__$6521, 30
__func__$6521:
	.string	"esp_bt_controller_mem_release"
	.section	.dram1.43,"aw",@progbits
	.align	4
	.type	s_pm_lock_sem, @object
	.size	s_pm_lock_sem, 4
s_pm_lock_sem:
	.zero	4
	.section	.dram1.42,"aw",@progbits
	.align	4
	.type	s_light_sleep_pm_lock, @object
	.size	s_light_sleep_pm_lock, 4
s_light_sleep_pm_lock:
	.zero	4
	.section	.dram1.41,"aw",@progbits
	.align	4
	.type	s_pm_lock, @object
	.size	s_pm_lock, 4
s_pm_lock:
	.zero	4
	.section	.dram1.40,"aw",@progbits
	.align	4
	.type	s_btdm_slp_tmr, @object
	.size	s_btdm_slp_tmr, 4
s_btdm_slp_tmr:
	.zero	4
	.section	.dram1.39,"aw",@progbits
	.type	btdm_lpcycle_us_frac, @object
	.size	btdm_lpcycle_us_frac, 1
btdm_lpcycle_us_frac:
	.zero	1
	.section	.dram1.38,"aw",@progbits
	.align	4
	.type	btdm_lpcycle_us, @object
	.size	btdm_lpcycle_us, 4
btdm_lpcycle_us:
	.zero	4
	.section	.dram1.37,"aw",@progbits
	.align	4
	.type	global_int_mux, @object
	.size	global_int_mux, 8
global_int_mux:
	.word	-1287651329
	.word	0
	.section	.dram1.36,"aw",@progbits
	.align	4
	.type	btdm_controller_status, @object
	.size	btdm_controller_status, 4
btdm_controller_status:
	.zero	4
	.section	.dram1.35,"aw",@progbits
	.align	8
	.type	s_time_phy_rf_just_enabled, @object
	.size	s_time_phy_rf_just_enabled, 8
s_time_phy_rf_just_enabled:
	.zero	8
	.section	.dram1.34,"aw",@progbits
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
	.size	osi_funcs_ro, 196
osi_funcs_ro:
	.word	65538
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
	.word	coex_bt_wakeup_request
	.word	coex_bt_wakeup_request_end
	.word	coex_bt_request_wrapper
	.word	coex_bt_release_wrapper
	.word	coex_register_bt_cb_wrapper
	.word	coex_bb_reset_lock_wrapper
	.word	coex_bb_reset_unlock_wrapper
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
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI0-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI1-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI2-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI3-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI4-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI5-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI6-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI7-.LFB79
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI8-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI9-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI10-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI11-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI12-.LFB53
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI13-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI14-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI15-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI16-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI17-.LFB111
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI18-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI19-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI20-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI21-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI22-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI23-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI24-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI25-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI26-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI27-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI28-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI29-.LFB72
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI30-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI31-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI32-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI33-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI34-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI35-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI36-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI37-.LFB107
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI38-.LFB109
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI39-.LFB73
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI40-.LFB74
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI41-.LFB75
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI42-.LFB76
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI43-.LFB80
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI44-.LFB81
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI45-.LFB82
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI46-.LFB83
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI47-.LFB84
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x4
	.4byte	.LCFI48-.LFB85
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x4
	.4byte	.LCFI49-.LFB86
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI50-.LFB87
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x4
	.4byte	.LCFI51-.LFB88
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x4
	.4byte	.LCFI52-.LFB89
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI53-.LFB90
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x4
	.4byte	.LCFI54-.LFB91
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x4
	.4byte	.LCFI55-.LFB92
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI56-.LFB93
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.byte	0x4
	.4byte	.LCFI57-.LFB94
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI58-.LFB95
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x4
	.4byte	.LCFI59-.LFB96
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE118:
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
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_coexist_internal.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps_init.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.file 23 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 24 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 25 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 26 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ac7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF433
	.byte	0xc
	.4byte	.LASF434
	.4byte	.LASF435
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
	.4byte	.LASF136
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
	.byte	0x1c
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
	.byte	0x20
	.byte	0xe
	.byte	0x8d
	.4byte	0x3e8
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xe
	.byte	0x91
	.4byte	0xf0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xe
	.byte	0x92
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xe
	.byte	0x93
	.4byte	0xe5
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xe
	.byte	0x94
	.4byte	0x106
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xe
	.byte	0x95
	.4byte	0xe5
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xe
	.byte	0x96
	.4byte	0xe5
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xe
	.byte	0x97
	.4byte	0xf0
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xe
	.byte	0x98
	.4byte	0xf0
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xe
	.byte	0x99
	.4byte	0xf0
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xe
	.byte	0x9a
	.4byte	0x106
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xe
	.byte	0x9b
	.4byte	0xe5
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xe
	.byte	0x9c
	.4byte	0xe5
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xe
	.byte	0x9d
	.4byte	0xe5
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xe
	.byte	0x9e
	.4byte	0xe5
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xe
	.byte	0x9f
	.4byte	0x13d
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xe
	.byte	0xa5
	.4byte	0xe5
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xe
	.byte	0xa6
	.4byte	0x106
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xe
	.byte	0xa7
	.4byte	0x313
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xac
	.4byte	0x418
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0xe
	.byte	0xb1
	.4byte	0x3f3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xbd
	.4byte	0x47e
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0xe
	.byte	0xcb
	.4byte	0x423
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xd0
	.4byte	0x4f6
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0xe
	.byte	0xe1
	.4byte	0x489
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xe6
	.4byte	0x51a
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0xe
	.byte	0xe9
	.4byte	0x501
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x8
	.byte	0xe
	.2byte	0x149
	.4byte	0x54d
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xe
	.2byte	0x14a
	.4byte	0xcc
	.byte	0
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xe
	.2byte	0x14b
	.4byte	0x567
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	0x33
	.4byte	0x561
	.uleb128 0xd
	.4byte	0x561
	.uleb128 0xd
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54d
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x14c
	.4byte	0x525
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x1f
	.4byte	0x5aa
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x1e
	.4byte	0x5c9
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x10
	.byte	0x3f
	.4byte	0x5d4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5da
	.uleb128 0xe
	.4byte	.LASF137
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x16
	.4byte	0x6be
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x11
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x12
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x13
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x15
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x16
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x17
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x19
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x1b
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0x1f
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0x21
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0x22
	.byte	0
	.uleb128 0x15
	.4byte	0xc3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6be
	.uleb128 0x13
	.4byte	0xc3
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x106
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c9
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x6f7
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e3
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x711
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6fd
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0x726
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x717
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x12
	.byte	0x20
	.4byte	0x737
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73d
	.uleb128 0xc
	.4byte	0x74d
	.uleb128 0xd
	.4byte	0x106
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0x8
	.byte	0x1
	.byte	0x6b
	.4byte	0x772
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0x1
	.byte	0x6c
	.4byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0x1
	.byte	0x6d
	.4byte	0x567
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0x1
	.byte	0x6e
	.4byte	0x74d
	.uleb128 0x9
	.byte	0xc
	.byte	0x1
	.byte	0x71
	.4byte	0x7aa
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x72
	.4byte	0x308
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x73
	.4byte	0x127
	.byte	0x4
	.uleb128 0xb
	.string	"end"
	.byte	0x1
	.byte	0x74
	.4byte	0x127
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0x1
	.byte	0x75
	.4byte	0x77d
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0xc4
	.byte	0x1
	.byte	0x81
	.4byte	0xa0e
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x1
	.byte	0x82
	.4byte	0x106
	.byte	0
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0x1
	.byte	0x83
	.4byte	0xa27
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0x1
	.byte	0x84
	.4byte	0xa38
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0x1
	.byte	0x85
	.4byte	0xcc
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0x1
	.byte	0x86
	.4byte	0xcc
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0x1
	.byte	0x87
	.4byte	0xcc
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0x1
	.byte	0x88
	.4byte	0xcc
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0x1
	.byte	0x89
	.4byte	0x6dd
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0x1
	.byte	0x8a
	.4byte	0x170
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0x1
	.byte	0x8b
	.4byte	0x6f7
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0x1
	.byte	0x8c
	.4byte	0x6f7
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0x1
	.byte	0x8d
	.4byte	0x711
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0x1
	.byte	0x8e
	.4byte	0x726
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x1
	.byte	0x8f
	.4byte	0x6c3
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0x1
	.byte	0x90
	.4byte	0x170
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0x1
	.byte	0x91
	.4byte	0x726
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0x1
	.byte	0x92
	.4byte	0x726
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0x1
	.byte	0x93
	.4byte	0x6dd
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0x1
	.byte	0x94
	.4byte	0x170
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0x1
	.byte	0x95
	.4byte	0xa57
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF199
	.byte	0x1
	.byte	0x96
	.4byte	0xa76
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF200
	.byte	0x1
	.byte	0x97
	.4byte	0xa57
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF201
	.byte	0x1
	.byte	0x98
	.4byte	0xa76
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0x1
	.byte	0x99
	.4byte	0xaa9
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0x1
	.byte	0x9a
	.4byte	0x170
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0x1
	.byte	0x9b
	.4byte	0xab4
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0x1
	.byte	0x9c
	.4byte	0xace
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0x1
	.byte	0x9d
	.4byte	0xae3
	.byte	0x6c
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0x1
	.byte	0x9e
	.4byte	0xae3
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF208
	.byte	0x1
	.byte	0x9f
	.4byte	0x170
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0x1
	.byte	0xa0
	.4byte	0xaf8
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0x1
	.byte	0xa1
	.4byte	0xa38
	.byte	0x7c
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0x1
	.byte	0xa2
	.4byte	0xb03
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF212
	.byte	0x1
	.byte	0xa3
	.4byte	0xb18
	.byte	0x84
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0x1
	.byte	0xa4
	.4byte	0xb18
	.byte	0x88
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0x1
	.byte	0xa5
	.4byte	0xb33
	.byte	0x8c
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0x1
	.byte	0xa6
	.4byte	0xb44
	.byte	0x90
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0x1
	.byte	0xa7
	.4byte	0xcc
	.byte	0x94
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0x1
	.byte	0xa8
	.4byte	0xcc
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0x1
	.byte	0xa9
	.4byte	0xcc
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0x1
	.byte	0xaa
	.4byte	0xcc
	.byte	0xa0
	.uleb128 0xa
	.4byte	.LASF220
	.byte	0x1
	.byte	0xab
	.4byte	0xab4
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0x1
	.byte	0xac
	.4byte	0xcc
	.byte	0xa8
	.uleb128 0xa
	.4byte	.LASF222
	.byte	0x1
	.byte	0xad
	.4byte	0xb63
	.byte	0xac
	.uleb128 0xa
	.4byte	.LASF223
	.byte	0x1
	.byte	0xae
	.4byte	0xb78
	.byte	0xb0
	.uleb128 0xa
	.4byte	.LASF224
	.byte	0x1
	.byte	0xaf
	.4byte	0xb8d
	.byte	0xb4
	.uleb128 0xa
	.4byte	.LASF225
	.byte	0x1
	.byte	0xb0
	.4byte	0xb98
	.byte	0xb8
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0x1
	.byte	0xb1
	.4byte	0xb44
	.byte	0xbc
	.uleb128 0xa
	.4byte	.LASF227
	.byte	0x1
	.byte	0xb2
	.4byte	0x106
	.byte	0xc0
	.byte	0
	.uleb128 0x13
	.4byte	0x246
	.4byte	0xa27
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x246
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0e
	.uleb128 0xc
	.4byte	0xa38
	.uleb128 0xd
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2d
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0xa57
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3e
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0xa76
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa5d
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0xaa9
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
	.4byte	0xa7c
	.uleb128 0x15
	.4byte	0x13d
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaaf
	.uleb128 0x13
	.4byte	0x33
	.4byte	0xace
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaba
	.uleb128 0x13
	.4byte	0xc3
	.4byte	0xae3
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad4
	.uleb128 0x13
	.4byte	0xfb
	.4byte	0xaf8
	.uleb128 0xd
	.4byte	0x561
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae9
	.uleb128 0x15
	.4byte	0x33
	.uleb128 0x6
	.byte	0x4
	.4byte	0xafe
	.uleb128 0x13
	.4byte	0x106
	.4byte	0xb18
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb09
	.uleb128 0x13
	.4byte	0x13d
	.4byte	0xb2d
	.uleb128 0xd
	.4byte	0xb2d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x106
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1e
	.uleb128 0xc
	.4byte	0xb44
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb39
	.uleb128 0x13
	.4byte	0x33
	.4byte	0xb63
	.uleb128 0xd
	.4byte	0x106
	.uleb128 0xd
	.4byte	0x106
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4a
	.uleb128 0x13
	.4byte	0x33
	.4byte	0xb78
	.uleb128 0xd
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb69
	.uleb128 0x13
	.4byte	0x33
	.4byte	0xb8d
	.uleb128 0xd
	.4byte	0x72c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7e
	.uleb128 0x15
	.4byte	0x106
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb93
	.uleb128 0x17
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x2e5
	.byte	0x1
	.4byte	0xbd2
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.2byte	0x2e5
	.4byte	0xc3
	.uleb128 0x19
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x2e8
	.4byte	0x106
	.uleb128 0x1a
	.uleb128 0x19
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x21d
	.4byte	0xfb
	.byte	0x1
	.4byte	0xbfc
	.uleb128 0x1c
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x21d
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x21d
	.4byte	0x106
	.byte	0
	.uleb128 0x17
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x36f
	.byte	0x1
	.4byte	0xc16
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.2byte	0x36f
	.4byte	0xc3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x2c8
	.4byte	0xfb
	.byte	0x1
	.4byte	0xc4c
	.uleb128 0x1c
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x2c8
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x2c8
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x106
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x35e
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x330
	.byte	0x1
	.4byte	0xc94
	.uleb128 0x1c
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x330
	.4byte	0x106
	.uleb128 0x19
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x334
	.4byte	0x106
	.uleb128 0x1e
	.4byte	.LASF241
	.4byte	0xca4
	.4byte	.LASF238
	.uleb128 0x19
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x33a
	.4byte	0x106
	.byte	0
	.uleb128 0x1f
	.4byte	0xd3
	.4byte	0xca4
	.uleb128 0x20
	.4byte	0xbc
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xc94
	.uleb128 0x1d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x355
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xfb
	.byte	0x1
	.4byte	0xce8
	.uleb128 0x1c
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x106
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x345
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x132
	.byte	0x1
	.4byte	0xd90
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x308
	.uleb128 0x19
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x400
	.4byte	0x13d
	.uleb128 0x19
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x401
	.4byte	0x127
	.uleb128 0x19
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x401
	.4byte	0x127
	.uleb128 0x1e
	.4byte	.LASF241
	.4byte	0xda0
	.4byte	.LASF250
	.uleb128 0x22
	.4byte	0xd6f
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.2byte	0x40c
	.4byte	0x33
	.uleb128 0x22
	.4byte	0xd60
	.uleb128 0x19
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x426
	.4byte	0x132
	.byte	0
	.uleb128 0x1a
	.uleb128 0x19
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x42c
	.4byte	0x132
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0xd81
	.uleb128 0x19
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x436
	.4byte	0x132
	.byte	0
	.uleb128 0x1a
	.uleb128 0x19
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x43c
	.4byte	0x132
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xd3
	.4byte	0xda0
	.uleb128 0x20
	.4byte	0xbc
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0xd90
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xc3
	.byte	0x1
	.4byte	0xdcf
	.uleb128 0x18
	.string	"max"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x106
	.uleb128 0x1c
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x106
	.byte	0x1
	.4byte	0xded
	.uleb128 0x19
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x3d0
	.4byte	0x106
	.byte	0
	.uleb128 0x17
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x1ff
	.byte	0x1
	.4byte	0xe07
	.uleb128 0x1c
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1ff
	.4byte	0xc3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF257
	.byte	0x2
	.byte	0xdd
	.4byte	0x13d
	.byte	0x3
	.4byte	0xe23
	.uleb128 0x25
	.4byte	.LASF258
	.byte	0x2
	.byte	0xdf
	.4byte	0x106
	.byte	0
	.uleb128 0x26
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x13d
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe62
	.uleb128 0x27
	.4byte	0xe07
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x2e2
	.uleb128 0x28
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x29
	.4byte	0xe17
	.4byte	.LLST0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x33
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeea
	.uleb128 0x2a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0x2a
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x2ee
	.4byte	0x132
	.byte	0
	.uleb128 0x27
	.4byte	0xb9e
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x2f1
	.uleb128 0x2c
	.4byte	0xbab
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x29
	.4byte	0xbb7
	.4byte	.LLST4
	.uleb128 0x28
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x29
	.4byte	0xbc4
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x306
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0f
	.uleb128 0x2e
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x306
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x310
	.4byte	0x106
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf49
	.uleb128 0x2a
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x310
	.4byte	0x106
	.4byte	.LLST6
	.uleb128 0x30
	.string	"us"
	.byte	0x1
	.2byte	0x314
	.4byte	0x11c
	.4byte	.LLST7
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x31c
	.4byte	0x106
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf83
	.uleb128 0x31
	.string	"us"
	.byte	0x1
	.2byte	0x31c
	.4byte	0x106
	.4byte	.LLST8
	.uleb128 0x32
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x321
	.4byte	0x11c
	.4byte	.LLST9
	.byte	0
	.uleb128 0x26
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x326
	.4byte	0x13d
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfae
	.uleb128 0x2a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x326
	.4byte	0xb2d
	.4byte	.LLST10
	.byte	0
	.uleb128 0x26
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x268
	.4byte	0xfb
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff9
	.uleb128 0x2a
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x268
	.4byte	0xc3
	.4byte	.LLST11
	.uleb128 0x33
	.4byte	.LVL23
	.4byte	0x27b3
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x3f1
	.4byte	0x132
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1056
	.uleb128 0x2a
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x3f1
	.4byte	0x127
	.4byte	.LLST12
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.2byte	0x3f1
	.4byte	0x127
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.string	"ret"
	.byte	0x1
	.2byte	0x3f3
	.4byte	0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x33
	.4byte	.LVL26
	.4byte	0x27bf
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x186
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1092
	.uleb128 0x37
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x189
	.4byte	0x111
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x38
	.4byte	.LVL28
	.4byte	0x27ca
	.uleb128 0x38
	.4byte	.LVL30
	.4byte	0x27d5
	.byte	0
	.uleb128 0x26
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x30b
	.4byte	0x33
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b6
	.uleb128 0x38
	.4byte	.LVL31
	.4byte	0x27e0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x301
	.4byte	0xfb
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10f6
	.uleb128 0x31
	.string	"mac"
	.byte	0x1
	.2byte	0x301
	.4byte	0x561
	.4byte	.LLST13
	.uleb128 0x33
	.4byte	.LVL33
	.4byte	0x27eb
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x2db
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112b
	.uleb128 0x2e
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x2db
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.4byte	.LVL36
	.4byte	0x27f7
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x2d6
	.4byte	0xfb
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ee
	.uleb128 0x2a
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x2d6
	.4byte	0xc3
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x2d6
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x106
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x2d6
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x106
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2e
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x2d6
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.4byte	.LVL38
	.4byte	0x2803
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x34
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
	.uleb128 0x26
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xfb
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1251
	.uleb128 0x2a
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xc3
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LVL41
	.4byte	0x280f
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x213
	.4byte	0xfb
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a5
	.uleb128 0x2a
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x213
	.4byte	0xc3
	.4byte	.LLST16
	.uleb128 0x2e
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x213
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LVL44
	.4byte	0x280f
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x2c3
	.4byte	0xfb
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x130d
	.uleb128 0x2a
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x2c3
	.4byte	0xc3
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x2c3
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x2c3
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LVL47
	.4byte	0x281b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x26d
	.4byte	0xfb
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1357
	.uleb128 0x2a
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x26d
	.4byte	0xc3
	.4byte	.LLST18
	.uleb128 0x33
	.4byte	.LVL50
	.4byte	0x2827
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x2a5
	.byte	0x1
	.4byte	0x1371
	.uleb128 0x1c
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x2a5
	.4byte	0xc3
	.byte	0
	.uleb128 0x39
	.4byte	0x1357
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139c
	.uleb128 0x3a
	.4byte	0x1364
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.4byte	.LVL53
	.4byte	0x2833
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x272
	.4byte	0xc3
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f0
	.uleb128 0x2a
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x272
	.4byte	0x106
	.4byte	.LLST19
	.uleb128 0x2e
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x272
	.4byte	0x106
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LVL55
	.4byte	0x283f
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x22b
	.4byte	0xc3
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x141a
	.uleb128 0x33
	.4byte	.LVL57
	.4byte	0x284b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x218
	.4byte	0xfb
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1469
	.uleb128 0x2a
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x218
	.4byte	0xc3
	.4byte	.LLST20
	.uleb128 0x2e
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x218
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LVL59
	.4byte	0x2857
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x1d1
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1489
	.uleb128 0x38
	.4byte	.LVL61
	.4byte	0x2863
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x1c8
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14bc
	.uleb128 0x38
	.4byte	.LVL62
	.4byte	0x286f
	.uleb128 0x33
	.4byte	.LVL63
	.4byte	0x287a
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x1bf
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ef
	.uleb128 0x38
	.4byte	.LVL64
	.4byte	0x286f
	.uleb128 0x33
	.4byte	.LVL65
	.4byte	0x2885
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x2fc
	.4byte	0xc3
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1531
	.uleb128 0x2a
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x2fc
	.4byte	0x3a
	.4byte	.LLST21
	.uleb128 0x33
	.4byte	.LVL67
	.4byte	0x2890
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x80c
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xda5
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x156b
	.uleb128 0x2c
	.4byte	0xdb6
	.4byte	.LLST22
	.uleb128 0x3a
	.4byte	0xdc2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LVL70
	.4byte	0x289b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xbd2
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15bb
	.uleb128 0x2c
	.4byte	0xbe3
	.4byte	.LLST23
	.uleb128 0x3a
	.4byte	0xbef
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3b
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x15a6
	.uleb128 0x3c
	.4byte	0xbef
	.uleb128 0x3c
	.4byte	0xbe3
	.byte	0
	.uleb128 0x33
	.4byte	.LVL73
	.4byte	0x27b3
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x37b
	.4byte	0x13d
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x163a
	.uleb128 0x2a
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x37b
	.4byte	0x33
	.4byte	.LLST24
	.uleb128 0x32
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x37d
	.4byte	0x13d
	.4byte	.LLST25
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x389
	.4byte	0x13d
	.4byte	.LLST26
	.uleb128 0x38
	.4byte	.LVL78
	.4byte	0x28a7
	.uleb128 0x38
	.4byte	.LVL80
	.4byte	0xbd2
	.uleb128 0x38
	.4byte	.LVL81
	.4byte	0x28b2
	.uleb128 0x38
	.4byte	.LVL82
	.4byte	0x28bd
	.uleb128 0x33
	.4byte	.LVL83
	.4byte	0x28c8
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x3ae
	.4byte	0x13d
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1664
	.uleb128 0x33
	.4byte	.LVL86
	.4byte	0x15bb
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xbfc
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ae
	.uleb128 0x3a
	.4byte	0xc09
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3b
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x169e
	.uleb128 0x2c
	.4byte	0xc09
	.4byte	.LLST27
	.uleb128 0x38
	.4byte	.LVL90
	.4byte	0x28b2
	.byte	0
	.uleb128 0x33
	.4byte	.LVL88
	.4byte	0xbd2
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xc16
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ff
	.uleb128 0x2c
	.4byte	0xc27
	.4byte	.LLST28
	.uleb128 0x3a
	.4byte	0xc33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.4byte	0xc3f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3b
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x16f5
	.uleb128 0x3c
	.4byte	0xc3f
	.uleb128 0x3c
	.4byte	0xc33
	.uleb128 0x3c
	.4byte	0xc27
	.byte	0
	.uleb128 0x38
	.4byte	.LVL92
	.4byte	0x27b3
	.byte	0
	.uleb128 0x39
	.4byte	0xc4c
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1780
	.uleb128 0x38
	.4byte	.LVL94
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL95
	.4byte	0x28de
	.4byte	0x172e
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL96
	.4byte	0x28de
	.4byte	0x1742
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL97
	.4byte	0x1056
	.uleb128 0x38
	.4byte	.LVL98
	.4byte	0x28bd
	.uleb128 0x38
	.4byte	.LVL99
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL100
	.4byte	0x28e9
	.4byte	0x1770
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x33
	.4byte	.LVL101
	.4byte	0x28de
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xc55
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186a
	.uleb128 0x3a
	.4byte	0xc62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0xc6e
	.4byte	.LLST29
	.uleb128 0x3e
	.4byte	0xc7a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6448
	.uleb128 0x29
	.4byte	0xc87
	.4byte	.LLST30
	.uleb128 0x3b
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x1819
	.uleb128 0x2c
	.4byte	0xc62
	.4byte	.LLST31
	.uleb128 0x28
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x3f
	.4byte	0xc6e
	.uleb128 0x3f
	.4byte	0xc87
	.uleb128 0x3e
	.4byte	0xc7a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6448
	.uleb128 0x33
	.4byte	.LVL106
	.4byte	0x28f4
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x337
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6448
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL103
	.4byte	0xf0f
	.4byte	0x182d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL111
	.4byte	0x28ff
	.uleb128 0x38
	.4byte	.LVL112
	.4byte	0x290a
	.uleb128 0x33
	.4byte	.LVL113
	.4byte	0x2915
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xca9
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189a
	.uleb128 0x3d
	.4byte	.LVL114
	.4byte	0x1251
	.4byte	0x1890
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL115
	.4byte	0x28b2
	.byte	0
	.uleb128 0x39
	.4byte	0xcb2
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18eb
	.uleb128 0x2c
	.4byte	0xcc3
	.4byte	.LLST32
	.uleb128 0x3a
	.4byte	0xccf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.4byte	0xcdb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3b
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x18e1
	.uleb128 0x3c
	.4byte	0xcdb
	.uleb128 0x3c
	.4byte	0xccf
	.uleb128 0x3c
	.4byte	0xcc3
	.byte	0
	.uleb128 0x38
	.4byte	.LVL117
	.4byte	0x2827
	.byte	0
	.uleb128 0x39
	.4byte	0xce8
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x196c
	.uleb128 0x38
	.4byte	.LVL119
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL120
	.4byte	0x2920
	.4byte	0x191a
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL121
	.4byte	0x2920
	.4byte	0x192e
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL122
	.4byte	0x292b
	.uleb128 0x38
	.4byte	.LVL123
	.4byte	0x130d
	.uleb128 0x38
	.4byte	.LVL124
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL125
	.4byte	0x2920
	.4byte	0x195c
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL126
	.4byte	0x2936
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x399
	.byte	0x1
	.4byte	0x1992
	.uleb128 0x1c
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x399
	.4byte	0x33
	.uleb128 0x19
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x39b
	.4byte	0x13d
	.byte	0
	.uleb128 0x40
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x3b3
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x41
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x3b9
	.4byte	0x13d
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19c8
	.uleb128 0x38
	.4byte	.LVL128
	.4byte	0x2941
	.byte	0
	.uleb128 0x42
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x3be
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a6c
	.uleb128 0x2e
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x3be
	.4byte	0x561
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.2byte	0x3be
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x3c0
	.4byte	0x13d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x43
	.4byte	0x196c
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.2byte	0x3c5
	.4byte	0x1a42
	.uleb128 0x2c
	.4byte	0x1979
	.4byte	.LLST33
	.uleb128 0x28
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.uleb128 0x29
	.4byte	0x1985
	.4byte	.LLST34
	.uleb128 0x38
	.4byte	.LVL134
	.4byte	0x294c
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL130
	.4byte	0x15bb
	.4byte	0x1a55
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL132
	.4byte	0x2957
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x3c9
	.4byte	0x132
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa7
	.uleb128 0x2a
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x3c9
	.4byte	0x1aa7
	.4byte	.LLST35
	.uleb128 0x33
	.4byte	.LVL136
	.4byte	0x2962
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1aad
	.uleb128 0x8
	.4byte	0x56d
	.uleb128 0x39
	.4byte	0xcf1
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd7
	.uleb128 0x2c
	.4byte	0xd02
	.4byte	.LLST36
	.uleb128 0x44
	.4byte	0xd0e
	.byte	0x1
	.uleb128 0x44
	.4byte	0xd1a
	.byte	0
	.uleb128 0x44
	.4byte	0xd26
	.byte	0
	.uleb128 0x3e
	.4byte	0xd32
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3c
	.4byte	0xd02
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.4byte	0xd0e
	.4byte	.LLST37
	.uleb128 0x29
	.4byte	0xd1a
	.4byte	.LLST38
	.uleb128 0x29
	.4byte	0xd26
	.4byte	.LLST39
	.uleb128 0x3e
	.4byte	0xd32
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x3b
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.4byte	0x1b98
	.uleb128 0x29
	.4byte	0xd44
	.4byte	.LLST40
	.uleb128 0x3b
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.4byte	0x1b5d
	.uleb128 0x29
	.4byte	0xd53
	.4byte	.LLST41
	.uleb128 0x33
	.4byte	.LVL144
	.4byte	0xff9
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x29
	.4byte	0xd61
	.4byte	.LLST42
	.uleb128 0x3d
	.4byte	.LVL146
	.4byte	0xff9
	.4byte	0x1b83
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL148
	.4byte	0x296d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.4byte	0x1bb8
	.uleb128 0x29
	.4byte	0xd74
	.4byte	.LLST43
	.uleb128 0x38
	.4byte	.LVL156
	.4byte	0xff9
	.byte	0
	.uleb128 0x28
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.uleb128 0x29
	.4byte	0xd82
	.4byte	.LLST44
	.uleb128 0x38
	.4byte	.LVL160
	.4byte	0xff9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x442
	.4byte	0x132
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cb2
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x442
	.4byte	0x308
	.4byte	.LLST45
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x444
	.4byte	0x33
	.4byte	.LLST46
	.uleb128 0x32
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x445
	.4byte	0x127
	.4byte	.LLST47
	.uleb128 0x32
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x445
	.4byte	0x127
	.4byte	.LLST48
	.uleb128 0x46
	.4byte	.LASF241
	.4byte	0x1cc2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6535
	.uleb128 0x3b
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.4byte	0x1c67
	.uleb128 0x32
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x451
	.4byte	0x132
	.4byte	.LLST49
	.uleb128 0x38
	.4byte	.LVL170
	.4byte	0xff9
	.byte	0
	.uleb128 0x3b
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0x1ca1
	.uleb128 0x32
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x457
	.4byte	0x132
	.4byte	.LLST50
	.uleb128 0x38
	.4byte	.LVL174
	.4byte	0xff9
	.uleb128 0x33
	.4byte	.LVL176
	.4byte	0x296d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL164
	.4byte	0xcf1
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xd3
	.4byte	0x1cc2
	.uleb128 0x20
	.4byte	0xbc
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x1cb2
	.uleb128 0x17
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x3e2
	.byte	0x1
	.4byte	0x1ce1
	.uleb128 0x1a
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.2byte	0x3e9
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x45d
	.4byte	0x132
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ffa
	.uleb128 0x31
	.string	"cfg"
	.byte	0x1
	.2byte	0x45d
	.4byte	0x1ffa
	.4byte	.LLST51
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x45f
	.4byte	0x132
	.4byte	.LLST52
	.uleb128 0x32
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x460
	.4byte	0x106
	.4byte	.LLST53
	.uleb128 0x47
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x4d8
	.4byte	.L147
	.uleb128 0x37
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x499
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x4b0
	.4byte	0x13d
	.4byte	.LLST54
	.uleb128 0x32
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x4b1
	.4byte	0x13d
	.4byte	.LLST55
	.uleb128 0x46
	.4byte	.LASF241
	.4byte	0x2010
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6546
	.uleb128 0x43
	.4byte	0xda5
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.byte	0x1
	.2byte	0x4a2
	.4byte	0x1db1
	.uleb128 0x2c
	.4byte	0xdc2
	.4byte	.LLST56
	.uleb128 0x2c
	.4byte	0xdb6
	.4byte	.LLST57
	.uleb128 0x33
	.4byte	.LVL195
	.4byte	0x289b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	0x1cc7
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x1df5
	.uleb128 0x3b
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.4byte	0x1deb
	.uleb128 0x29
	.4byte	0x1cd5
	.4byte	.LLST58
	.uleb128 0x33
	.4byte	.LVL201
	.4byte	0x2978
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL199
	.4byte	0x2981
	.byte	0
	.uleb128 0x43
	.4byte	0xded
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x1e1c
	.uleb128 0x2c
	.4byte	0xdfa
	.4byte	.LLST59
	.uleb128 0x38
	.4byte	.LVL221
	.4byte	0x2833
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL180
	.4byte	0x14ef
	.4byte	0x1e30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xc4
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL182
	.4byte	0x2981
	.4byte	0x1e53
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs_ro
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xc4
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL183
	.4byte	0x298a
	.4byte	0x1e67
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL184
	.4byte	0x290a
	.uleb128 0x38
	.4byte	.LVL185
	.4byte	0x2995
	.uleb128 0x3d
	.4byte	.LVL186
	.4byte	0x2915
	.4byte	0x1ead
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL187
	.4byte	0x29a0
	.4byte	0x1ed4
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL189
	.4byte	0x29a0
	.4byte	0x1efc
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL191
	.4byte	0x2978
	.4byte	0x1f1b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL192
	.4byte	0x29ab
	.4byte	0x1f35
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL203
	.4byte	0x28e9
	.4byte	0x1f48
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL206
	.4byte	0x29b6
	.4byte	0x1f5b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL208
	.4byte	0x29c1
	.uleb128 0x38
	.4byte	.LVL209
	.4byte	0x29cc
	.uleb128 0x3d
	.4byte	.LVL211
	.4byte	0x28f4
	.4byte	0x1f9d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b5
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6546
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL213
	.4byte	0x29d7
	.4byte	0x1fb0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL214
	.4byte	0x29e2
	.4byte	0x1fca
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL215
	.4byte	0x29ed
	.4byte	0x1fde
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL217
	.4byte	0x29f8
	.uleb128 0x38
	.4byte	.LVL218
	.4byte	0x29f8
	.uleb128 0x38
	.4byte	.LVL219
	.4byte	0x2a03
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e8
	.uleb128 0x1f
	.4byte	0xd3
	.4byte	0x2010
	.uleb128 0x20
	.4byte	0xbc
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.4byte	0x2000
	.uleb128 0x41
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x132
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b0
	.uleb128 0x43
	.4byte	0xded
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.2byte	0x500
	.4byte	0x2056
	.uleb128 0x2c
	.4byte	0xdfa
	.4byte	.LLST60
	.uleb128 0x38
	.4byte	.LVL232
	.4byte	0x2833
	.byte	0
	.uleb128 0x38
	.4byte	.LVL225
	.4byte	0x2a0e
	.uleb128 0x3d
	.4byte	.LVL226
	.4byte	0x2936
	.4byte	0x2072
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x38
	.4byte	.LVL227
	.4byte	0x29f8
	.uleb128 0x38
	.4byte	.LVL228
	.4byte	0x29f8
	.uleb128 0x38
	.4byte	.LVL229
	.4byte	0x28bd
	.uleb128 0x38
	.4byte	.LVL230
	.4byte	0x2a03
	.uleb128 0x38
	.4byte	.LVL233
	.4byte	0x2a19
	.uleb128 0x33
	.4byte	.LVL234
	.4byte	0x29d7
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x515
	.4byte	0x132
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222b
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x515
	.4byte	0x308
	.4byte	.LLST61
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x517
	.4byte	0x33
	.4byte	.LLST62
	.uleb128 0x38
	.4byte	.LVL236
	.4byte	0x2a24
	.uleb128 0x38
	.4byte	.LVL237
	.4byte	0x28b2
	.uleb128 0x38
	.4byte	.LVL239
	.4byte	0x28b2
	.uleb128 0x3d
	.4byte	.LVL240
	.4byte	0x2a2f
	.4byte	0x2118
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL241
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL242
	.4byte	0x2a3a
	.4byte	0x2135
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL243
	.4byte	0x2a3a
	.4byte	0x2149
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL244
	.4byte	0x28de
	.4byte	0x215d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL245
	.4byte	0x28de
	.4byte	0x2171
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL246
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL247
	.4byte	0x2a3a
	.4byte	0x218d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL248
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL249
	.4byte	0x2a3a
	.uleb128 0x38
	.4byte	.LVL250
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL251
	.4byte	0x2a45
	.uleb128 0x38
	.4byte	.LVL252
	.4byte	0x1056
	.uleb128 0x3d
	.4byte	.LVL253
	.4byte	0x2a50
	.4byte	0x21ce
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL254
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL255
	.4byte	0x2a5b
	.4byte	0x21ea
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL256
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL257
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL258
	.4byte	0x2a5b
	.uleb128 0x3d
	.4byte	.LVL259
	.4byte	0x2a66
	.4byte	0x2218
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL260
	.4byte	0x292b
	.uleb128 0x38
	.4byte	.LVL261
	.4byte	0x292b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x554
	.4byte	0x132
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22f7
	.uleb128 0x38
	.4byte	.LVL264
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL265
	.4byte	0x2a71
	.uleb128 0x38
	.4byte	.LVL266
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL267
	.4byte	0x2a45
	.4byte	0x2273
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL268
	.4byte	0x28a7
	.uleb128 0x38
	.4byte	.LVL269
	.4byte	0x28c8
	.uleb128 0x3d
	.4byte	.LVL270
	.4byte	0x2a7c
	.4byte	0x229a
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x38
	.4byte	.LVL271
	.4byte	0x28a7
	.uleb128 0x3d
	.4byte	.LVL272
	.4byte	0x2a5b
	.4byte	0x22b6
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL273
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL274
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL275
	.4byte	0x2a5b
	.uleb128 0x3d
	.4byte	.LVL276
	.4byte	0x2a66
	.4byte	0x22e4
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL277
	.4byte	0x292b
	.uleb128 0x38
	.4byte	.LVL278
	.4byte	0x292b
	.byte	0
	.uleb128 0x48
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x579
	.4byte	0x418
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x41
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x580
	.4byte	0x132
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x235c
	.uleb128 0x2a
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x580
	.4byte	0x47e
	.4byte	.LLST63
	.uleb128 0x2e
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x580
	.4byte	0x4f6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LVL280
	.4byte	0x2a88
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x589
	.4byte	0x4f6
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2397
	.uleb128 0x2a
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x589
	.4byte	0x47e
	.4byte	.LLST64
	.uleb128 0x33
	.4byte	.LVL283
	.4byte	0x2a93
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x58e
	.4byte	0x132
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2404
	.uleb128 0x2a
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x58e
	.4byte	0x4f6
	.4byte	.LLST65
	.uleb128 0x2e
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x58e
	.4byte	0x4f6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.string	"err"
	.byte	0x1
	.2byte	0x590
	.4byte	0x132
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x591
	.4byte	0x33
	.4byte	.LLST66
	.uleb128 0x33
	.4byte	.LVL286
	.4byte	0x2a9e
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x5a0
	.4byte	0x132
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2453
	.uleb128 0x2a
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x5a0
	.4byte	0x2453
	.4byte	.LLST67
	.uleb128 0x2e
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x5a0
	.4byte	0x2453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LVL291
	.4byte	0x2aa9
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f6
	.uleb128 0x41
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x5a9
	.4byte	0x132
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24d9
	.uleb128 0x32
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x132
	.4byte	.LLST68
	.uleb128 0x38
	.4byte	.LVL293
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL294
	.4byte	0x2a3a
	.4byte	0x249f
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL295
	.4byte	0x2a3a
	.4byte	0x24b3
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL296
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL297
	.4byte	0x2a3a
	.4byte	0x24cf
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL298
	.4byte	0x2a45
	.byte	0
	.uleb128 0x41
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x5bf
	.4byte	0x132
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2541
	.uleb128 0x32
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x5c1
	.4byte	0x132
	.4byte	.LLST69
	.uleb128 0x38
	.4byte	.LVL300
	.4byte	0x28d3
	.uleb128 0x3d
	.4byte	.LVL301
	.4byte	0x2a5b
	.4byte	0x251f
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL302
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL303
	.4byte	0x2a5b
	.uleb128 0x33
	.4byte	.LVL304
	.4byte	0x2a45
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x5d5
	.4byte	0x13d
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x256e
	.uleb128 0x38
	.4byte	.LVL306
	.4byte	0x28d3
	.uleb128 0x38
	.4byte	.LVL307
	.4byte	0x28a7
	.byte	0
	.uleb128 0x42
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x5df
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x259d
	.uleb128 0x38
	.4byte	.LVL308
	.4byte	0x28d3
	.uleb128 0x33
	.4byte	.LVL309
	.4byte	0x28c8
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x5e9
	.4byte	0x132
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25db
	.uleb128 0x2a
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x5e9
	.4byte	0x51a
	.4byte	.LLST70
	.uleb128 0x33
	.4byte	.LVL311
	.4byte	0x2ab4
	.uleb128 0x34
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
	.uleb128 0x41
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x132
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25ff
	.uleb128 0x38
	.4byte	.LVL313
	.4byte	0x2abf
	.byte	0
	.uleb128 0x37
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x123
	.4byte	0x2611
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs_ro
	.uleb128 0x8
	.4byte	0x7b5
	.uleb128 0x1f
	.4byte	0x7aa
	.4byte	0x2626
	.uleb128 0x20
	.4byte	0xbc
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x158
	.4byte	0x2616
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_dram_available_region
	.uleb128 0x37
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x167
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_em
	.uleb128 0x37
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x168
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_bss
	.uleb128 0x37
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x169
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_misc
	.uleb128 0x37
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x16a
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_bt_data
	.uleb128 0x37
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x16c
	.4byte	0x2692
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs_p
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7b5
	.uleb128 0x37
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x175
	.4byte	0x111
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_phy_rf_just_enabled
	.uleb128 0x37
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x176
	.4byte	0x418
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_controller_status
	.uleb128 0x37
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x178
	.4byte	0x23b
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.uleb128 0x37
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x17b
	.4byte	0x106
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_lpcycle_us
	.uleb128 0x37
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x17c
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_lpcycle_us_frac
	.uleb128 0x37
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x17f
	.4byte	0x181
	.uleb128 0x5
	.byte	0x3
	.4byte	s_btdm_slp_tmr
	.uleb128 0x37
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x180
	.4byte	0x5c9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_pm_lock
	.uleb128 0x37
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x181
	.4byte	0x5c9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_light_sleep_pm_lock
	.uleb128 0x37
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x182
	.4byte	0x276
	.uleb128 0x5
	.byte	0x3
	.4byte	s_pm_lock_sem
	.uleb128 0x49
	.4byte	.LASF351
	.byte	0x1
	.byte	0xe4
	.4byte	0xd3
	.uleb128 0x49
	.4byte	.LASF352
	.byte	0x1
	.byte	0xe5
	.4byte	0xd3
	.uleb128 0x49
	.4byte	.LASF353
	.byte	0x1
	.byte	0xe6
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF354
	.byte	0x1
	.byte	0xe9
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF355
	.byte	0x1
	.byte	0xea
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF356
	.byte	0x1
	.byte	0xeb
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF357
	.byte	0x1
	.byte	0xec
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF358
	.byte	0x1
	.byte	0xed
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF359
	.byte	0x1
	.byte	0xee
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF360
	.byte	0x1
	.byte	0xef
	.4byte	0x106
	.uleb128 0x49
	.4byte	.LASF361
	.byte	0x1
	.byte	0xf0
	.4byte	0x106
	.uleb128 0x4a
	.4byte	.LASF362
	.4byte	.LASF362
	.byte	0xc
	.2byte	0x38a
	.uleb128 0x4b
	.4byte	.LASF363
	.4byte	.LASF363
	.byte	0x13
	.byte	0x43
	.uleb128 0x4b
	.4byte	.LASF364
	.4byte	.LASF364
	.byte	0xd
	.byte	0xf6
	.uleb128 0x4b
	.4byte	.LASF365
	.4byte	.LASF365
	.byte	0x1
	.byte	0xc4
	.uleb128 0x4b
	.4byte	.LASF366
	.4byte	.LASF366
	.byte	0xb
	.byte	0xa8
	.uleb128 0x4a
	.4byte	.LASF367
	.4byte	.LASF367
	.byte	0xb
	.2byte	0x10b
	.uleb128 0x4a
	.4byte	.LASF368
	.4byte	.LASF368
	.byte	0x14
	.2byte	0x2fb
	.uleb128 0x4a
	.4byte	.LASF369
	.4byte	.LASF369
	.byte	0x14
	.2byte	0x151
	.uleb128 0x4a
	.4byte	.LASF370
	.4byte	.LASF370
	.byte	0xc
	.2byte	0x543
	.uleb128 0x4a
	.4byte	.LASF371
	.4byte	.LASF371
	.byte	0xc
	.2byte	0x4f3
	.uleb128 0x4a
	.4byte	.LASF372
	.4byte	.LASF372
	.byte	0xc
	.2byte	0x265
	.uleb128 0x4a
	.4byte	.LASF373
	.4byte	.LASF373
	.byte	0xc
	.2byte	0x3ac
	.uleb128 0x4a
	.4byte	.LASF374
	.4byte	.LASF374
	.byte	0xc
	.2byte	0x5d0
	.uleb128 0x4a
	.4byte	.LASF375
	.4byte	.LASF375
	.byte	0xc
	.2byte	0x578
	.uleb128 0x4a
	.4byte	.LASF376
	.4byte	.LASF376
	.byte	0xc
	.2byte	0x4f4
	.uleb128 0x4a
	.4byte	.LASF377
	.4byte	.LASF377
	.byte	0x9
	.2byte	0x181
	.uleb128 0x4b
	.4byte	.LASF378
	.4byte	.LASF378
	.byte	0x2
	.byte	0xba
	.uleb128 0x4b
	.4byte	.LASF379
	.4byte	.LASF379
	.byte	0x9
	.byte	0xf3
	.uleb128 0x4b
	.4byte	.LASF380
	.4byte	.LASF380
	.byte	0x9
	.byte	0xf4
	.uleb128 0x4b
	.4byte	.LASF381
	.4byte	.LASF381
	.byte	0x15
	.byte	0x37
	.uleb128 0x4a
	.4byte	.LASF382
	.4byte	.LASF382
	.byte	0xc
	.2byte	0x57a
	.uleb128 0x4b
	.4byte	.LASF383
	.4byte	.LASF383
	.byte	0x1
	.byte	0xc9
	.uleb128 0x4b
	.4byte	.LASF384
	.4byte	.LASF384
	.byte	0x10
	.byte	0x72
	.uleb128 0x4b
	.4byte	.LASF385
	.4byte	.LASF385
	.byte	0x8
	.byte	0xaa
	.uleb128 0x4b
	.4byte	.LASF386
	.4byte	.LASF386
	.byte	0x1
	.byte	0xca
	.uleb128 0x4b
	.4byte	.LASF387
	.4byte	.LASF387
	.byte	0x1
	.byte	0xc8
	.uleb128 0x4b
	.4byte	.LASF388
	.4byte	.LASF388
	.byte	0xd
	.byte	0xe1
	.uleb128 0x4b
	.4byte	.LASF389
	.4byte	.LASF389
	.byte	0x16
	.byte	0x25
	.uleb128 0x4b
	.4byte	.LASF390
	.4byte	.LASF390
	.byte	0x17
	.byte	0x29
	.uleb128 0x4b
	.4byte	.LASF391
	.4byte	.LASF391
	.byte	0x8
	.byte	0x8e
	.uleb128 0x4b
	.4byte	.LASF392
	.4byte	.LASF392
	.byte	0xf
	.byte	0x57
	.uleb128 0x4b
	.4byte	.LASF393
	.4byte	.LASF393
	.byte	0xf
	.byte	0x6b
	.uleb128 0x4b
	.4byte	.LASF394
	.4byte	.LASF394
	.byte	0xd
	.byte	0xdc
	.uleb128 0x4b
	.4byte	.LASF395
	.4byte	.LASF395
	.byte	0x10
	.byte	0x8a
	.uleb128 0x4b
	.4byte	.LASF396
	.4byte	.LASF396
	.byte	0x16
	.byte	0x31
	.uleb128 0x4b
	.4byte	.LASF397
	.4byte	.LASF397
	.byte	0x1
	.byte	0xd0
	.uleb128 0x4b
	.4byte	.LASF398
	.4byte	.LASF398
	.byte	0x1
	.byte	0xcb
	.uleb128 0x4b
	.4byte	.LASF399
	.4byte	.LASF399
	.byte	0x1
	.byte	0xd1
	.uleb128 0x4b
	.4byte	.LASF400
	.4byte	.LASF400
	.byte	0x1
	.byte	0xd2
	.uleb128 0x4b
	.4byte	.LASF401
	.4byte	.LASF401
	.byte	0x6
	.byte	0x4f
	.uleb128 0x4c
	.4byte	.LASF402
	.4byte	.LASF402
	.uleb128 0x4c
	.4byte	.LASF403
	.4byte	.LASF403
	.uleb128 0x4b
	.4byte	.LASF404
	.4byte	.LASF404
	.byte	0x1
	.byte	0xbc
	.uleb128 0x4b
	.4byte	.LASF405
	.4byte	.LASF405
	.byte	0x1
	.byte	0xc3
	.uleb128 0x4b
	.4byte	.LASF406
	.4byte	.LASF406
	.byte	0x10
	.byte	0x59
	.uleb128 0x4b
	.4byte	.LASF407
	.4byte	.LASF407
	.byte	0x8
	.byte	0x7f
	.uleb128 0x4b
	.4byte	.LASF408
	.4byte	.LASF408
	.byte	0x1
	.byte	0xcd
	.uleb128 0x4b
	.4byte	.LASF409
	.4byte	.LASF409
	.byte	0x18
	.byte	0xb2
	.uleb128 0x4b
	.4byte	.LASF410
	.4byte	.LASF410
	.byte	0x1
	.byte	0xce
	.uleb128 0x4b
	.4byte	.LASF411
	.4byte	.LASF411
	.byte	0x1
	.byte	0xc7
	.uleb128 0x4b
	.4byte	.LASF412
	.4byte	.LASF412
	.byte	0x1
	.byte	0xbe
	.uleb128 0x4b
	.4byte	.LASF413
	.4byte	.LASF413
	.byte	0x1
	.byte	0xe0
	.uleb128 0x4b
	.4byte	.LASF414
	.4byte	.LASF414
	.byte	0x10
	.byte	0x9a
	.uleb128 0x4b
	.4byte	.LASF415
	.4byte	.LASF415
	.byte	0x8
	.byte	0xb7
	.uleb128 0x4b
	.4byte	.LASF416
	.4byte	.LASF416
	.byte	0x1
	.byte	0xbf
	.uleb128 0x4b
	.4byte	.LASF417
	.4byte	.LASF417
	.byte	0x19
	.byte	0x5a
	.uleb128 0x4b
	.4byte	.LASF418
	.4byte	.LASF418
	.byte	0x1
	.byte	0xc2
	.uleb128 0x4b
	.4byte	.LASF419
	.4byte	.LASF419
	.byte	0xd
	.byte	0xcb
	.uleb128 0x4b
	.4byte	.LASF420
	.4byte	.LASF420
	.byte	0xd
	.byte	0xea
	.uleb128 0x4b
	.4byte	.LASF421
	.4byte	.LASF421
	.byte	0x1
	.byte	0xc6
	.uleb128 0x4b
	.4byte	.LASF422
	.4byte	.LASF422
	.byte	0x1
	.byte	0xc0
	.uleb128 0x4b
	.4byte	.LASF423
	.4byte	.LASF423
	.byte	0xd
	.byte	0xef
	.uleb128 0x4b
	.4byte	.LASF424
	.4byte	.LASF424
	.byte	0xd
	.byte	0xc6
	.uleb128 0x4b
	.4byte	.LASF425
	.4byte	.LASF425
	.byte	0x1
	.byte	0xc1
	.uleb128 0x4a
	.4byte	.LASF426
	.4byte	.LASF426
	.byte	0x1a
	.2byte	0x17f
	.uleb128 0x4b
	.4byte	.LASF427
	.4byte	.LASF427
	.byte	0x1
	.byte	0xd4
	.uleb128 0x4b
	.4byte	.LASF428
	.4byte	.LASF428
	.byte	0x1
	.byte	0xd5
	.uleb128 0x4b
	.4byte	.LASF429
	.4byte	.LASF429
	.byte	0x1
	.byte	0xd6
	.uleb128 0x4b
	.4byte	.LASF430
	.4byte	.LASF430
	.byte	0x1
	.byte	0xd7
	.uleb128 0x4b
	.4byte	.LASF431
	.4byte	.LASF431
	.byte	0x1
	.byte	0xd8
	.uleb128 0x4b
	.4byte	.LASF432
	.4byte	.LASF432
	.byte	0x1
	.byte	0xd9
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
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
	.4byte	.LVL10
	.4byte	.LVL11
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
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
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
	.4byte	.LVL16
	.4byte	.LVL17-1
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
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL138
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL142
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL153
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL154
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158
	.4byte	.LVL160-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL145
	.4byte	.LVL146-1
	.2byte	0x5
	.byte	0x3
	.4byte	btdm_dram_available_region+80
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL159
	.4byte	.LVL160-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176
	.4byte	.LFE81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL168
	.4byte	.LVL170-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL172
	.4byte	.LVL174-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL169
	.4byte	.LVL170-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL173
	.4byte	.LVL174-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LFE82
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL188
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL216
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL179
	.4byte	.LVL197
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL205
	.4byte	.LVL209
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL194
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL194
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL220
	.4byte	.LVL221-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL231
	.4byte	.LVL232-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_pm_lock_sem
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL235
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238
	.4byte	.LFE84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL253
	.4byte	.LVL254-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL262
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL282
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL284
	.4byte	.LFE88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL290
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL292
	.4byte	.LFE90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL310
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL312
	.4byte	.LFE95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1dc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	0
	.4byte	0
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF274:
	.string	"rand_wrapper"
.LASF221:
	.string	"_coex_bt_wakeup_request_end"
.LASF363:
	.string	"heap_caps_add_region"
.LASF74:
	.string	"send_adv_reserved_size"
.LASF223:
	.string	"_coex_bt_release"
.LASF36:
	.string	"esp_timer_create_args_t"
.LASF4:
	.string	"size_t"
.LASF146:
	.string	"PERIPH_TIMG0_MODULE"
.LASF16:
	.string	"sizetype"
.LASF28:
	.string	"start"
.LASF173:
	.string	"coex_func_cb_t"
.LASF149:
	.string	"PERIPH_PWM1_MODULE"
.LASF39:
	.string	"owner"
.LASF356:
	.string	"_btdm_bss_start"
.LASF202:
	.string	"_task_create"
.LASF285:
	.string	"semphr_take_from_isr_wrapper"
.LASF379:
	.string	"vTaskExitCritical"
.LASF152:
	.string	"PERIPH_UHCI0_MODULE"
.LASF284:
	.string	"hptw"
.LASF21:
	.string	"int32_t"
.LASF240:
	.string	"us_to_sleep"
.LASF46:
	.string	"ESP_MAC_BT"
.LASF167:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF133:
	.string	"ESP_PM_APB_FREQ_MAX"
.LASF264:
	.string	"cycles"
.LASF309:
	.string	"btdm_controller_mem_init"
.LASF241:
	.string	"__func__"
.LASF37:
	.string	"BaseType_t"
.LASF416:
	.string	"btdm_controller_deinit"
.LASF155:
	.string	"PERIPH_PCNT_MODULE"
.LASF196:
	.string	"_queue_create"
.LASF420:
	.string	"esp_modem_sleep_register"
.LASF98:
	.string	"ESP_BLE_PWR_TYPE_ADV"
.LASF365:
	.string	"btdm_rf_bb_init_phase2"
.LASF148:
	.string	"PERIPH_PWM0_MODULE"
.LASF239:
	.string	"lpcycles"
.LASF165:
	.string	"PERIPH_WIFI_MODULE"
.LASF109:
	.string	"ESP_PWR_LVL_P6"
.LASF234:
	.string	"semphr_take_wrapper"
.LASF423:
	.string	"esp_modem_sleep_deregister"
.LASF124:
	.string	"notify_host_recv"
.LASF296:
	.string	"interrupt_disable"
.LASF49:
	.string	"MODEM_BLE_MODULE"
.LASF347:
	.string	"s_btdm_slp_tmr"
.LASF204:
	.string	"_is_in_isr"
.LASF276:
	.string	"task_delete_wrapper"
.LASF33:
	.string	"callback"
.LASF431:
	.string	"bredr_sco_datapath_set"
.LASF282:
	.string	"prio"
.LASF71:
	.string	"scan_duplicate_type"
.LASF229:
	.string	"__interrupt"
.LASF193:
	.string	"_mutex_delete"
.LASF78:
	.string	"bt_max_acl_conn"
.LASF5:
	.string	"__uint8_t"
.LASF222:
	.string	"_coex_bt_request"
.LASF333:
	.string	"data_path"
.LASF61:
	.string	"ESP_BT_MODE_IDLE"
.LASF65:
	.string	"esp_bt_mode_t"
.LASF306:
	.string	"esp_vhci_host_check_send_available"
.LASF198:
	.string	"_queue_send"
.LASF338:
	.string	"reserved_region_rom_bt_bss"
.LASF15:
	.string	"long int"
.LASF343:
	.string	"btdm_controller_status"
.LASF56:
	.string	"MODEM_MODULE_COUNT"
.LASF271:
	.string	"srand_wrapper"
.LASF432:
	.string	"btdm_controller_scan_duplicate_list_clear"
.LASF157:
	.string	"PERIPH_HSPI_MODULE"
.LASF119:
	.string	"esp_power_level_t"
.LASF426:
	.string	"ets_delay_us"
.LASF70:
	.string	"scan_duplicate_mode"
.LASF407:
	.string	"esp_timer_create"
.LASF335:
	.string	"osi_funcs_ro"
.LASF85:
	.string	"ESP_BT_CONTROLLER_STATUS_INITED"
.LASF32:
	.string	"esp_timer_dispatch_t"
.LASF437:
	.string	"error"
.LASF162:
	.string	"PERIPH_CAN_MODULE"
.LASF325:
	.string	"esp_bredr_tx_power_get"
.LASF125:
	.string	"esp_vhci_host_callback_t"
.LASF262:
	.string	"seed"
.LASF371:
	.string	"xQueueGenericSendFromISR"
.LASF266:
	.string	"btdm_sleep_check_duration"
.LASF53:
	.string	"MODEM_WIFI_SNIFFER_MODULE"
.LASF361:
	.string	"_btdm_data_end"
.LASF66:
	.string	"controller_task_stack_size"
.LASF357:
	.string	"_btdm_bss_end"
.LASF48:
	.string	"QueueHandle_t"
.LASF3:
	.string	"signed char"
.LASF19:
	.string	"uint8_t"
.LASF273:
	.string	"latest_ts"
.LASF180:
	.string	"_set_isr"
.LASF277:
	.string	"task_handle"
.LASF394:
	.string	"esp_modem_sleep_enter"
.LASF243:
	.string	"btdm_sleep_exit_phase3_wrapper"
.LASF344:
	.string	"global_int_mux"
.LASF172:
	.string	"PERIPH_RSA_MODULE"
.LASF168:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF226:
	.string	"_coex_bb_reset_unlock"
.LASF6:
	.string	"unsigned char"
.LASF107:
	.string	"ESP_PWR_LVL_N0"
.LASF227:
	.string	"_magic"
.LASF115:
	.string	"ESP_PWR_LVL_N2"
.LASF106:
	.string	"ESP_PWR_LVL_N3"
.LASF114:
	.string	"ESP_PWR_LVL_N5"
.LASF105:
	.string	"ESP_PWR_LVL_N6"
.LASF113:
	.string	"ESP_PWR_LVL_N8"
.LASF104:
	.string	"ESP_PWR_LVL_N9"
.LASF42:
	.string	"xt_handler"
.LASF101:
	.string	"ESP_BLE_PWR_TYPE_NUM"
.LASF418:
	.string	"btdm_controller_get_mode"
.LASF247:
	.string	"update"
.LASF374:
	.string	"xQueueGenericCreate"
.LASF140:
	.string	"PERIPH_UART1_MODULE"
.LASF75:
	.string	"controller_debug_flag"
.LASF62:
	.string	"ESP_BT_MODE_BLE"
.LASF27:
	.string	"_Bool"
.LASF283:
	.string	"queue_recv_from_isr_wrapper"
.LASF375:
	.string	"xQueueCreateMutex"
.LASF18:
	.string	"char"
.LASF209:
	.string	"_read_efuse_mac"
.LASF373:
	.string	"vQueueDelete"
.LASF195:
	.string	"_mutex_unlock"
.LASF369:
	.string	"xTaskCreatePinnedToCore"
.LASF332:
	.string	"esp_bredr_sco_datapath_set"
.LASF87:
	.string	"ESP_BT_CONTROLLER_STATUS_NUM"
.LASF352:
	.string	"_data_end_btdm"
.LASF174:
	.string	"esp_vhci_host_callback"
.LASF200:
	.string	"_queue_recv"
.LASF8:
	.string	"__uint16_t"
.LASF199:
	.string	"_queue_send_from_isr"
.LASF377:
	.string	"_frxt_setup_switch"
.LASF427:
	.string	"ble_txpwr_set"
.LASF433:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF151:
	.string	"PERIPH_PWM3_MODULE"
.LASF116:
	.string	"ESP_PWR_LVL_P1"
.LASF108:
	.string	"ESP_PWR_LVL_P3"
.LASF117:
	.string	"ESP_PWR_LVL_P4"
.LASF59:
	.string	"PHY_MODEM_MODULE"
.LASF118:
	.string	"ESP_PWR_LVL_P7"
.LASF110:
	.string	"ESP_PWR_LVL_P9"
.LASF368:
	.string	"vTaskDelete"
.LASF142:
	.string	"PERIPH_I2C0_MODULE"
.LASF261:
	.string	"core_id"
.LASF176:
	.string	"vhci_host_callback_t"
.LASF127:
	.string	"ESP_LOG_ERROR"
.LASF256:
	.string	"semphr_delete_wrapper"
.LASF345:
	.string	"btdm_lpcycle_us"
.LASF134:
	.string	"ESP_PM_NO_LIGHT_SLEEP"
.LASF55:
	.string	"MODEM_USER_MODULE"
.LASF430:
	.string	"bredr_txpwr_get"
.LASF52:
	.string	"MODEM_WIFI_SOFTAP_MODULE"
.LASF329:
	.string	"esp_bt_controller_is_sleeping"
.LASF83:
	.string	"esp_bt_controller_config_t"
.LASF197:
	.string	"_queue_delete"
.LASF214:
	.string	"_btdm_sleep_check_duration"
.LASF313:
	.string	"select_src_ret"
.LASF47:
	.string	"ESP_MAC_ETH"
.LASF250:
	.string	"esp_bt_controller_mem_release"
.LASF257:
	.string	"xPortCanYield"
.LASF84:
	.string	"ESP_BT_CONTROLLER_STATUS_IDLE"
.LASF312:
	.string	"create_args"
.LASF121:
	.string	"ESP_SCO_DATA_PATH_PCM"
.LASF217:
	.string	"_btdm_sleep_exit_phase1"
.LASF218:
	.string	"_btdm_sleep_exit_phase2"
.LASF219:
	.string	"_btdm_sleep_exit_phase3"
.LASF112:
	.string	"ESP_PWR_LVL_N11"
.LASF103:
	.string	"ESP_PWR_LVL_N12"
.LASF111:
	.string	"ESP_PWR_LVL_N14"
.LASF295:
	.string	"interrupt_restore"
.LASF390:
	.string	"__assert_func"
.LASF412:
	.string	"btdm_controller_init"
.LASF331:
	.string	"esp_bt_controller_wakeup_request"
.LASF372:
	.string	"xQueueGenericSend"
.LASF278:
	.string	"task_create_wrapper"
.LASF395:
	.string	"esp_pm_lock_release"
.LASF232:
	.string	"cause_sw_intr"
.LASF386:
	.string	"btdm_wakeup_request"
.LASF43:
	.string	"ESP_TIMER_TASK"
.LASF310:
	.string	"esp_bt_controller_init"
.LASF324:
	.string	"max_power_level"
.LASF314:
	.string	"set_div_ret"
.LASF421:
	.string	"btdm_controller_enable_sleep"
.LASF13:
	.string	"__uint64_t"
.LASF17:
	.string	"long unsigned int"
.LASF254:
	.string	"btdm_config_mask_load"
.LASF438:
	.string	"esp_bt_controller_get_status"
.LASF330:
	.string	"esp_vhci_host_send_packet"
.LASF228:
	.string	"intr_no"
.LASF251:
	.string	"__err_rc"
.LASF160:
	.string	"PERIPH_SDMMC_MODULE"
.LASF414:
	.string	"esp_pm_lock_delete"
.LASF327:
	.string	"status"
.LASF184:
	.string	"_task_yield"
.LASF281:
	.string	"param"
.LASF99:
	.string	"ESP_BLE_PWR_TYPE_SCAN"
.LASF393:
	.string	"esp_log_write"
.LASF123:
	.string	"notify_host_send_available"
.LASF292:
	.string	"mutex_create_wrapper"
.LASF175:
	.string	"vhci_host_callback"
.LASF88:
	.string	"esp_bt_controller_status_t"
.LASF350:
	.string	"s_pm_lock_sem"
.LASF302:
	.string	"do_wakeup_request"
.LASF303:
	.string	"coex_bt_wakeup_request"
.LASF406:
	.string	"esp_pm_lock_create"
.LASF44:
	.string	"ESP_MAC_WIFI_STA"
.LASF319:
	.string	"power_type"
.LASF203:
	.string	"_task_delete"
.LASF224:
	.string	"_coex_register_bt_cb"
.LASF138:
	.string	"PERIPH_LEDC_MODULE"
.LASF258:
	.string	"ps_reg"
.LASF205:
	.string	"_cause_sw_intr_to_core"
.LASF287:
	.string	"mutex_unlock_wrapper"
.LASF231:
	.string	"block_time_ms"
.LASF411:
	.string	"btdm_controller_set_sleep_mode"
.LASF321:
	.string	"esp_ble_tx_power_get"
.LASF307:
	.string	"esp_vhci_host_register_callback"
.LASF326:
	.string	"esp_bt_sleep_enable"
.LASF400:
	.string	"API_vhci_host_register_callback"
.LASF14:
	.string	"__intptr_t"
.LASF31:
	.string	"esp_timer_cb_t"
.LASF145:
	.string	"PERIPH_I2S1_MODULE"
.LASF304:
	.string	"async_wakeup_request_end"
.LASF10:
	.string	"__uint32_t"
.LASF50:
	.string	"MODEM_CLASSIC_BT_MODULE"
.LASF434:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bt.c"
.LASF12:
	.string	"long long int"
.LASF378:
	.string	"xPortInIsrContext"
.LASF351:
	.string	"_data_start_btdm"
.LASF137:
	.string	"esp_pm_lock"
.LASF265:
	.string	"btdm_us_2_lpcycles"
.LASF340:
	.string	"reserved_region_rom_bt_data"
.LASF161:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF299:
	.string	"async_wakeup_request"
.LASF26:
	.string	"esp_err_t"
.LASF190:
	.string	"_semphr_take"
.LASF370:
	.string	"xQueueReceiveFromISR"
.LASF404:
	.string	"btdm_osi_funcs_register"
.LASF255:
	.string	"mask"
.LASF279:
	.string	"task_func"
.LASF259:
	.string	"is_in_isr_wrapper"
.LASF354:
	.string	"_bt_bss_start"
.LASF381:
	.string	"heap_caps_malloc"
.LASF269:
	.string	"mutex"
.LASF54:
	.string	"MODEM_WIFI_NULL_MODULE"
.LASF29:
	.string	"soc_reserved_region_t"
.LASF89:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL0"
.LASF90:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL1"
.LASF91:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL2"
.LASF45:
	.string	"ESP_MAC_WIFI_SOFTAP"
.LASF93:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL4"
.LASF94:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL5"
.LASF95:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL6"
.LASF96:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL7"
.LASF97:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL8"
.LASF40:
	.string	"count"
.LASF300:
	.string	"event"
.LASF169:
	.string	"PERIPH_BT_LC_MODULE"
.LASF68:
	.string	"hci_uart_no"
.LASF57:
	.string	"PHY_BT_MODULE"
.LASF1:
	.string	"unsigned int"
.LASF64:
	.string	"ESP_BT_MODE_BTDM"
.LASF435:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF25:
	.string	"intptr_t"
.LASF191:
	.string	"_semphr_give"
.LASF355:
	.string	"_bt_bss_end"
.LASF230:
	.string	"semphr"
.LASF401:
	.string	"_esp_error_check_failed"
.LASF348:
	.string	"s_pm_lock"
.LASF328:
	.string	"esp_bt_sleep_disable"
.LASF80:
	.string	"auto_latency"
.LASF128:
	.string	"ESP_LOG_WARN"
.LASF183:
	.string	"_interrupt_restore"
.LASF122:
	.string	"esp_sco_data_path_t"
.LASF315:
	.string	"esp_bt_controller_deinit"
.LASF413:
	.string	"coex_ble_adv_priority_high_set"
.LASF358:
	.string	"_bt_data_start"
.LASF339:
	.string	"reserved_region_rom_bt_misc"
.LASF171:
	.string	"PERIPH_SHA_MODULE"
.LASF322:
	.string	"esp_bredr_tx_power_set"
.LASF166:
	.string	"PERIPH_BT_MODULE"
.LASF178:
	.string	"osi_funcs_t"
.LASF139:
	.string	"PERIPH_UART0_MODULE"
.LASF72:
	.string	"normal_adv_size"
.LASF170:
	.string	"PERIPH_AES_MODULE"
.LASF248:
	.string	"mem_start"
.LASF275:
	.string	"read_mac_wrapper"
.LASF346:
	.string	"btdm_lpcycle_us_frac"
.LASF154:
	.string	"PERIPH_RMT_MODULE"
.LASF79:
	.string	"bt_sco_datapath"
.LASF297:
	.string	"malloc_internal_wrapper"
.LASF131:
	.string	"ESP_LOG_VERBOSE"
.LASF177:
	.string	"btdm_dram_available_region_t"
.LASF415:
	.string	"esp_timer_delete"
.LASF179:
	.string	"_version"
.LASF211:
	.string	"_rand"
.LASF349:
	.string	"s_light_sleep_pm_lock"
.LASF268:
	.string	"mutex_lock_wrapper"
.LASF360:
	.string	"_btdm_data_start"
.LASF147:
	.string	"PERIPH_TIMG1_MODULE"
.LASF301:
	.string	"request_lock"
.LASF150:
	.string	"PERIPH_PWM2_MODULE"
.LASF397:
	.string	"API_vhci_host_check_send_available"
.LASF235:
	.string	"queue_recv_wrapper"
.LASF252:
	.string	"semphr_create_wrapper"
.LASF424:
	.string	"esp_phy_rf_deinit"
.LASF153:
	.string	"PERIPH_UHCI1_MODULE"
.LASF51:
	.string	"MODEM_WIFI_STATION_MODULE"
.LASF359:
	.string	"_bt_data_end"
.LASF189:
	.string	"_semphr_give_from_isr"
.LASF337:
	.string	"reserved_region_rom_bt_em"
.LASF342:
	.string	"s_time_phy_rf_just_enabled"
.LASF392:
	.string	"esp_log_timestamp"
.LASF396:
	.string	"periph_module_disable"
.LASF398:
	.string	"btdm_wakeup_request_end"
.LASF399:
	.string	"API_vhci_host_send_packet"
.LASF298:
	.string	"size"
.LASF410:
	.string	"btdm_lpclk_set_div"
.LASF0:
	.string	"long long unsigned int"
.LASF102:
	.string	"esp_ble_power_type_t"
.LASF194:
	.string	"_mutex_lock"
.LASF20:
	.string	"uint16_t"
.LASF272:
	.string	"btdm_check_and_init_bb"
.LASF208:
	.string	"_free"
.LASF385:
	.string	"esp_timer_stop"
.LASF383:
	.string	"btdm_power_state_active"
.LASF289:
	.string	"queue_create_wrapper"
.LASF436:
	.string	"coex_bt_wakeup_request_end"
.LASF290:
	.string	"queue_len"
.LASF236:
	.string	"queue"
.LASF238:
	.string	"btdm_sleep_enter_phase1_wrapper"
.LASF126:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"TickType_t"
.LASF364:
	.string	"esp_phy_rf_get_on_ts"
.LASF41:
	.string	"portMUX_TYPE"
.LASF402:
	.string	"memset"
.LASF129:
	.string	"ESP_LOG_INFO"
.LASF419:
	.string	"esp_phy_load_cal_and_init"
.LASF159:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF429:
	.string	"bredr_txpwr_set"
.LASF185:
	.string	"_task_yield_from_isr"
.LASF120:
	.string	"ESP_SCO_DATA_PATH_HCI"
.LASF201:
	.string	"_queue_recv_from_isr"
.LASF316:
	.string	"esp_bt_controller_enable"
.LASF60:
	.string	"PHY_MODULE_COUNT"
.LASF187:
	.string	"_semphr_delete"
.LASF253:
	.string	"init"
.LASF367:
	.string	"esp_read_mac"
.LASF158:
	.string	"PERIPH_VSPI_MODULE"
.LASF244:
	.string	"btdm_sleep_exit_phase1_wrapper"
.LASF320:
	.string	"power_level"
.LASF334:
	.string	"esp_ble_scan_dupilcate_list_flush"
.LASF388:
	.string	"esp_modem_sleep_exit"
.LASF135:
	.string	"esp_pm_lock_handle_t"
.LASF323:
	.string	"min_power_level"
.LASF249:
	.string	"mem_end"
.LASF156:
	.string	"PERIPH_SPI_MODULE"
.LASF73:
	.string	"mesh_adv_size"
.LASF186:
	.string	"_semphr_create"
.LASF212:
	.string	"_btdm_lpcycles_2_us"
.LASF35:
	.string	"name"
.LASF380:
	.string	"vTaskEnterCritical"
.LASF245:
	.string	"queue_send_wrapper"
.LASF30:
	.string	"esp_timer_handle_t"
.LASF233:
	.string	"btdm_slp_tmr_callback"
.LASF7:
	.string	"short int"
.LASF24:
	.string	"uint64_t"
.LASF76:
	.string	"mode"
.LASF192:
	.string	"_mutex_create"
.LASF63:
	.string	"ESP_BT_MODE_CLASSIC_BT"
.LASF86:
	.string	"ESP_BT_CONTROLLER_STATUS_ENABLED"
.LASF286:
	.string	"queue_send_from_isr_wrapper"
.LASF288:
	.string	"queue_delete_wrapper"
.LASF136:
	.string	"esp_timer"
.LASF132:
	.string	"ESP_PM_CPU_FREQ_MAX"
.LASF163:
	.string	"PERIPH_EMAC_MODULE"
.LASF237:
	.string	"item"
.LASF144:
	.string	"PERIPH_I2S0_MODULE"
.LASF280:
	.string	"stack_depth"
.LASF311:
	.string	"btdm_cfg_mask"
.LASF188:
	.string	"_semphr_take_from_isr"
.LASF409:
	.string	"rtc_clk_xtal_freq_get"
.LASF387:
	.string	"btdm_controller_get_sleep_mode"
.LASF215:
	.string	"_btdm_sleep_enter_phase1"
.LASF216:
	.string	"_btdm_sleep_enter_phase2"
.LASF181:
	.string	"_ints_on"
.LASF69:
	.string	"hci_uart_baudrate"
.LASF341:
	.string	"osi_funcs_p"
.LASF210:
	.string	"_srand"
.LASF391:
	.string	"esp_timer_start_once"
.LASF130:
	.string	"ESP_LOG_DEBUG"
.LASF428:
	.string	"ble_txpwr_get"
.LASF11:
	.string	"__int64_t"
.LASF260:
	.string	"cause_sw_intr_to_core_wrapper"
.LASF92:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL3"
.LASF376:
	.string	"xQueueGiveFromISR"
.LASF403:
	.string	"memcpy"
.LASF384:
	.string	"esp_pm_lock_acquire"
.LASF141:
	.string	"PERIPH_UART2_MODULE"
.LASF242:
	.string	"uncertainty"
.LASF207:
	.string	"_malloc_internal"
.LASF336:
	.string	"btdm_dram_available_region"
.LASF318:
	.string	"esp_ble_tx_power_set"
.LASF353:
	.string	"_data_start_btdm_rom"
.LASF22:
	.string	"uint32_t"
.LASF291:
	.string	"item_size"
.LASF100:
	.string	"ESP_BLE_PWR_TYPE_DEFAULT"
.LASF422:
	.string	"btdm_controller_enable"
.LASF206:
	.string	"_malloc"
.LASF225:
	.string	"_coex_bb_reset_lock"
.LASF417:
	.string	"free"
.LASF2:
	.string	"short unsigned int"
.LASF82:
	.string	"magic"
.LASF164:
	.string	"PERIPH_RNG_MODULE"
.LASF270:
	.string	"try_heap_caps_add_region"
.LASF294:
	.string	"task_yield_from_isr"
.LASF182:
	.string	"_interrupt_disable"
.LASF143:
	.string	"PERIPH_I2C1_MODULE"
.LASF362:
	.string	"xQueueGenericReceive"
.LASF308:
	.string	"esp_bt_mem_release"
.LASF246:
	.string	"btdm_sleep_enter_phase2_wrapper"
.LASF213:
	.string	"_btdm_us_2_lpcycles"
.LASF317:
	.string	"esp_bt_controller_disable"
.LASF9:
	.string	"__int32_t"
.LASF23:
	.string	"int64_t"
.LASF220:
	.string	"_coex_bt_wakeup_request"
.LASF408:
	.string	"btdm_lpclk_select_src"
.LASF77:
	.string	"ble_max_conn"
.LASF67:
	.string	"controller_task_prio"
.LASF405:
	.string	"btdm_controller_get_compile_version"
.LASF366:
	.string	"esp_random"
.LASF293:
	.string	"semphr_give_from_isr_wrapper"
.LASF382:
	.string	"xQueueCreateCountingSemaphore"
.LASF425:
	.string	"btdm_controller_disable"
.LASF263:
	.string	"btdm_lpcycles_2_us"
.LASF34:
	.string	"dispatch_method"
.LASF305:
	.string	"data"
.LASF389:
	.string	"periph_module_enable"
.LASF58:
	.string	"PHY_WIFI_MODULE"
.LASF81:
	.string	"bt_max_sync_conn"
.LASF267:
	.string	"slot_cnt"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
