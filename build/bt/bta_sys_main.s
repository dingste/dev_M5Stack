	.file	"bta_sys_main.c"
	.text
.Ltext0:
	.section	.text.bta_sys_sm_execute,"ax",@progbits
	.literal_position
	.literal .LC0, bta_sys_cb_ptr
	.literal .LC1, bta_sys_st_tbl
	.literal .LC2, bta_sys_action
	.align	4
	.global	bta_sys_sm_execute
	.type	bta_sys_sm_execute, @function
bta_sys_sm_execute:
.LFB41:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/bta_sys_main.c"
	.loc 1 211 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 220 0
	l32r	a3, .LC0
	l32r	a4, .LC1
	l32i.n	a9, a3, 0
	l8ui	a8, a2, 0
	l8ui	a3, a9, 230
	.loc 1 222 0
	addx2	a8, a8, a8
	.loc 1 220 0
	addx4	a3, a3, a4
	l32i.n	a4, a3, 0
.LVL2:
	.loc 1 222 0
	add.n	a8, a4, a8
	l8ui	a3, a8, 2
	s8i	a3, a9, 230
.LVL3:
	.loc 1 225 0
	movi.n	a3, 0
.LVL4:
.L3:
	l8ui	a8, a2, 0
	.loc 1 226 0
	addx2	a8, a8, a8
	add.n	a8, a4, a8
	add.n	a8, a8, a3
	l8ui	a8, a8, 0
.LVL5:
	beqi	a8, 6, .L6
	.loc 1 227 0 discriminator 2
	l32r	a5, .LC2
	mov.n	a10, a2
	addx4	a8, a8, a5
	l32i.n	a8, a8, 0
	.loc 1 225 0 discriminator 2
	addi.n	a3, a3, 1
.LVL6:
	.loc 1 227 0 discriminator 2
	callx8	a8
.LVL7:
	.loc 1 225 0 discriminator 2
	bnei	a3, 2, .L3
.L6:
	.loc 1 234 0
	movi.n	a2, 1
.LVL8:
	retw.n
.LFE41:
	.size	bta_sys_sm_execute, .-bta_sys_sm_execute
	.section	.text.bta_sys_hw_error,"ax",@progbits
	.literal_position
	.literal .LC3, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_hw_error
	.type	bta_sys_hw_error, @function
bta_sys_hw_error:
.LFB45:
	.loc 1 298 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 305 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	l32i	a9, a8, 240
	bbci	a9, 0, .L7
	.loc 1 309 0
	l32i	a8, a8, 232
	beqz.n	a8, .L7
	.loc 1 310 0
	movi.n	a10, 4
	callx8	a8
.LVL11:
.L7:
	retw.n
.LFE45:
	.size	bta_sys_hw_error, .-bta_sys_hw_error
	.section	.text.bta_sys_hw_evt_disabled,"ax",@progbits
	.literal_position
	.literal .LC4, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_hw_evt_disabled
	.type	bta_sys_hw_evt_disabled, @function
bta_sys_hw_evt_disabled:
.LFB49:
	.loc 1 435 0
.LVL12:
	entry	sp, 32
.LCFI2:
.LVL13:
	.loc 1 441 0
	l32r	a8, .LC4
	l32i.n	a2, a8, 0
.LVL14:
	l32i	a9, a2, 232
	mov.n	a2, a8
	beqz.n	a9, .L16
	.loc 1 442 0
	movi.n	a10, 0
	callx8	a9
.LVL15:
.L16:
	.loc 1 441 0
	l32i.n	a2, a2, 0
	l32i	a2, a2, 236
	beqz.n	a2, .L15
	.loc 1 442 0
	movi.n	a10, 0
	callx8	a2
.LVL16:
.L15:
	retw.n
.LFE49:
	.size	bta_sys_hw_evt_disabled, .-bta_sys_hw_evt_disabled
	.section	.text.bta_sys_hw_evt_stack_enabled,"ax",@progbits
	.literal_position
	.literal .LC5, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_hw_evt_stack_enabled
	.type	bta_sys_hw_evt_stack_enabled, @function
bta_sys_hw_evt_stack_enabled:
.LFB50:
	.loc 1 458 0
.LVL17:
	entry	sp, 32
.LCFI3:
.LVL18:
	.loc 1 465 0
	l32r	a8, .LC5
	l32i.n	a2, a8, 0
.LVL19:
	l32i	a9, a2, 232
	mov.n	a2, a8
	beqz.n	a9, .L25
	.loc 1 466 0
	movi.n	a10, 1
	callx8	a9
.LVL20:
.L25:
	.loc 1 465 0
	l32i.n	a2, a2, 0
	l32i	a2, a2, 236
	beqz.n	a2, .L24
	.loc 1 466 0
	movi.n	a10, 1
	callx8	a2
.LVL21:
.L24:
	retw.n
.LFE50:
	.size	bta_sys_hw_evt_stack_enabled, .-bta_sys_hw_evt_stack_enabled
	.section	.text.bta_sys_hw_evt_enabled,"ax",@progbits
	.align	4
	.global	bta_sys_hw_evt_enabled
	.type	bta_sys_hw_evt_enabled, @function
bta_sys_hw_evt_enabled:
.LFB48:
	.loc 1 418 0
.LVL22:
	entry	sp, 32
.LCFI4:
	.loc 1 420 0
	movi.n	a10, 0
	call8	BTM_DeviceReset
.LVL23:
	retw.n
.LFE48:
	.size	bta_sys_hw_evt_enabled, .-bta_sys_hw_evt_enabled
	.section	.text.hash_iter_ro_cb,"ax",@progbits
	.align	4
	.global	hash_iter_ro_cb
	.type	hash_iter_ro_cb, @function
hash_iter_ro_cb:
.LFB58:
	.loc 1 621 0
.LVL24:
	entry	sp, 32
.LCFI5:
.LVL25:
	.loc 1 624 0
	l32i.n	a10, a2, 4
	call8	osi_alarm_get_remaining_ms
.LVL26:
	l32i.n	a9, a3, 0
	l32i.n	a12, a3, 4
	add.n	a10, a9, a10
	movi.n	a8, 1
	bltu	a10, a9, .L35
	movi.n	a8, 0
.L35:
	add.n	a11, a12, a11
	add.n	a11, a8, a11
	s32i.n	a10, a3, 0
	s32i.n	a11, a3, 4
	.loc 1 626 0
	movi.n	a2, 1
.LVL27:
	retw.n
.LFE58:
	.size	hash_iter_ro_cb, .-hash_iter_ro_cb
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"data != NULL"
.LC9:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/bta_sys_main.c"
	.section	.text.bta_alarm_cb,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.literal .LC8, __func__$9124
	.literal .LC10, .LC9
	.align	4
	.global	bta_alarm_cb
	.type	bta_alarm_cb, @function
bta_alarm_cb:
.LFB56:
	.loc 1 590 0
.LVL28:
	entry	sp, 32
.LCFI6:
	.loc 1 590 0
	mov.n	a11, a2
	.loc 1 591 0
	bnez.n	a2, .L37
.LVL29:
.LBB6:
.LBB7:
	l32r	a13, .LC7
	l32r	a12, .LC8
	l32r	a10, .LC10
	movi	a11, 0x24f
	call8	__assert_func
.LVL30:
.L37:
.LBE7:
.LBE6:
	.loc 1 594 0
	movi.n	a12, -1
	movi.n	a10, 3
	call8	btu_task_post
.LVL31:
	retw.n
.LFE56:
	.size	bta_alarm_cb, .-bta_alarm_cb
	.section	.text.bta_sys_init,"ax",@progbits
	.literal_position
	.literal .LC11, bta_sys_cb_ptr
	.literal .LC12, bta_alarm_lock
	.literal .LC13, osi_alarm_free
	.literal .LC14, hash_function_pointer
	.literal .LC15, bta_alarm_hash_map
	.literal .LC16, appl_trace_level
	.literal .LC17, bta_sys_hw_reg
	.literal .LC18, bta_sys_hw_btm_cback
	.align	4
	.global	bta_sys_init
	.type	bta_sys_init, @function
bta_sys_init:
.LFB39:
	.loc 1 169 0
	entry	sp, 32
.LCFI7:
	.loc 1 170 0
	l32r	a2, .LC11
	movi	a12, 0x130
	l32i.n	a10, a2, 0
	movi.n	a11, 0
	call8	memset
.LVL32:
	.loc 1 172 0
	l32r	a10, .LC12
	call8	osi_mutex_new
.LVL33:
	.loc 1 174 0
	movi.n	a14, 0
	l32r	a13, .LC13
	l32r	a11, .LC14
	mov.n	a12, a14
	movi.n	a10, 0x11
	call8	hash_map_new
.LVL34:
	l32r	a8, .LC15
	.loc 1 177 0
	movi.n	a9, 2
	.loc 1 174 0
	s32i.n	a10, a8, 0
	.loc 1 177 0
	l32r	a8, .LC16
	.loc 1 183 0
	l32r	a10, .LC18
	.loc 1 177 0
	s8i	a9, a8, 0
.LVL35:
.LBB8:
.LBB9:
	.loc 1 520 0
	l32i.n	a8, a2, 0
	l32r	a2, .LC17
	s32i.n	a2, a8, 0
	.loc 1 521 0
	movi.n	a2, 1
	s8i	a2, a8, 184
.LBE9:
.LBE8:
	.loc 1 183 0
	call8	BTM_RegisterForDeviceStatusNotif
.LVL36:
	retw.n
.LFE39:
	.size	bta_sys_init, .-bta_sys_init
	.section	.text.bta_sys_free,"ax",@progbits
	.literal_position
	.literal .LC19, bta_alarm_hash_map
	.literal .LC20, bta_alarm_lock
	.literal .LC21, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_free
	.type	bta_sys_free, @function
bta_sys_free:
.LFB40:
	.loc 1 192 0
	entry	sp, 32
.LCFI8:
	.loc 1 193 0
	l32r	a2, .LC19
	l32i.n	a10, a2, 0
	call8	hash_map_free
.LVL37:
	.loc 1 194 0
	l32r	a10, .LC20
	call8	osi_mutex_free
.LVL38:
	.loc 1 196 0
	l32r	a2, .LC21
	l32i.n	a10, a2, 0
	beqz.n	a10, .L39
	.loc 1 196 0 is_stmt 0 discriminator 1
	call8	free
.LVL39:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L39:
	retw.n
.LFE40:
	.size	bta_sys_free, .-bta_sys_free
	.section	.text.bta_sys_hw_register,"ax",@progbits
	.literal_position
	.literal .LC22, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_hw_register
	.type	bta_sys_hw_register, @function
bta_sys_hw_register:
.LFB42:
	.loc 1 238 0 is_stmt 1
.LVL40:
	entry	sp, 32
.LCFI9:
	.loc 1 239 0
	l32r	a8, .LC22
	.loc 1 238 0
	extui	a2, a2, 0, 16
	.loc 1 239 0
	l32i.n	a8, a8, 0
	addx4	a2, a2, a8
.LVL41:
	s32i	a3, a2, 232
	retw.n
.LFE42:
	.size	bta_sys_hw_register, .-bta_sys_hw_register
	.section	.text.bta_sys_hw_unregister,"ax",@progbits
	.literal_position
	.literal .LC23, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_hw_unregister
	.type	bta_sys_hw_unregister, @function
bta_sys_hw_unregister:
.LFB43:
	.loc 1 244 0
.LVL42:
	entry	sp, 32
.LCFI10:
	.loc 1 245 0
	l32r	a8, .LC23
	.loc 1 244 0
	extui	a2, a2, 0, 16
	.loc 1 245 0
	l32i.n	a8, a8, 0
	addi	a2, a2, 56
.LVL43:
	addx4	a2, a2, a8
.LVL44:
	movi.n	a8, 0
	s32i.n	a8, a2, 8
	retw.n
.LFE43:
	.size	bta_sys_hw_unregister, .-bta_sys_hw_unregister
	.section	.rodata.str1.1
.LC26:
	.string	"BT_APPL"
.LC28:
	.string	"\033[0;33mW (%d) %s: BTA got unregistered event id %d\n\033[0m\n"
	.section	.text.bta_sys_event,"ax",@progbits
	.literal_position
	.literal .LC24, bta_sys_cb_ptr
	.literal .LC25, appl_trace_level
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.align	4
	.global	bta_sys_event
	.type	bta_sys_event, @function
bta_sys_event:
.LFB51:
	.loc 1 485 0
.LVL45:
	entry	sp, 32
.LCFI11:
.LVL46:
	.loc 1 492 0
	l16ui	a3, a2, 0
	.loc 1 495 0
	movi.n	a8, 0x2d
	.loc 1 492 0
	srli	a3, a3, 8
.LVL47:
	.loc 1 495 0
	bltu	a8, a3, .L47
	.loc 1 495 0 is_stmt 0 discriminator 1
	l32r	a8, .LC24
	l32i.n	a8, a8, 0
	addx4	a8, a3, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L47
	.loc 1 496 0 is_stmt 1
	l32i.n	a3, a8, 0
.LVL48:
	mov.n	a10, a2
	callx8	a3
.LVL49:
	.loc 1 501 0
	beqz.n	a10, .L46
	j	.L48
.LVL50:
.L47:
	.loc 1 498 0
	l32r	a8, .LC25
	l8ui	a8, a8, 0
	bltui	a8, 2, .L48
	.loc 1 498 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL51:
	l32r	a11, .LC27
	l32r	a12, .LC29
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL52:
.L48:
	.loc 1 502 0 is_stmt 1
	mov.n	a10, a2
	call8	free
.LVL53:
.L46:
	retw.n
.LFE51:
	.size	bta_sys_event, .-bta_sys_event
	.section	.text.bta_sys_register,"ax",@progbits
	.literal_position
	.literal .LC30, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_register
	.type	bta_sys_register, @function
bta_sys_register:
.LFB52:
	.loc 1 519 0
.LVL54:
	entry	sp, 32
.LCFI12:
	.loc 1 520 0
	l32r	a8, .LC30
	.loc 1 519 0
	extui	a2, a2, 0, 8
	.loc 1 520 0
	l32i.n	a8, a8, 0
	addx4	a9, a2, a8
	s32i.n	a3, a9, 0
	.loc 1 521 0
	add.n	a2, a8, a2
.LVL55:
	movi.n	a8, 1
	s8i	a8, a2, 184
	retw.n
.LFE52:
	.size	bta_sys_register, .-bta_sys_register
	.section	.text.bta_sys_deregister,"ax",@progbits
	.literal_position
	.literal .LC31, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_deregister
	.type	bta_sys_deregister, @function
bta_sys_deregister:
.LFB53:
	.loc 1 536 0
.LVL56:
	entry	sp, 32
.LCFI13:
	.loc 1 537 0
	l32r	a8, .LC31
	.loc 1 536 0
	extui	a2, a2, 0, 8
	.loc 1 537 0
	l32i.n	a8, a8, 0
	add.n	a2, a8, a2
.LVL57:
	movi	a8, 0xb8
	add.n	a2, a2, a8
	movi.n	a8, 0
	s8i	a8, a2, 0
	retw.n
.LFE53:
	.size	bta_sys_deregister, .-bta_sys_deregister
	.section	.text.bta_sys_is_register,"ax",@progbits
	.literal_position
	.literal .LC32, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_is_register
	.type	bta_sys_is_register, @function
bta_sys_is_register:
.LFB54:
	.loc 1 552 0
.LVL58:
	entry	sp, 32
.LCFI14:
	.loc 1 553 0
	l32r	a8, .LC32
	.loc 1 552 0
	extui	a2, a2, 0, 8
	.loc 1 553 0
	l32i.n	a8, a8, 0
	add.n	a2, a8, a2
.LVL59:
	.loc 1 554 0
	l8ui	a2, a2, 184
	retw.n
.LFE54:
	.size	bta_sys_is_register, .-bta_sys_is_register
	.section	.text.bta_sys_sendmsg,"ax",@progbits
	.align	4
	.global	bta_sys_sendmsg
	.type	bta_sys_sendmsg, @function
bta_sys_sendmsg:
.LFB55:
	.loc 1 569 0
.LVL60:
	entry	sp, 32
.LCFI15:
	.loc 1 574 0
	movi.n	a12, -1
	mov.n	a11, a2
	movi.n	a10, 2
	call8	btu_task_post
.LVL61:
	beqz.n	a10, .L56
	.loc 1 575 0
	mov.n	a10, a2
	call8	free
.LVL62:
.L56:
	retw.n
.LFE55:
	.size	bta_sys_sendmsg, .-bta_sys_sendmsg
	.section	.text.bta_sys_hw_btm_cback,"ax",@progbits
	.align	4
	.global	bta_sys_hw_btm_cback
	.type	bta_sys_hw_btm_cback, @function
bta_sys_hw_btm_cback:
.LFB44:
	.loc 1 259 0
.LVL63:
	entry	sp, 32
.LCFI16:
	.loc 1 266 0
	movi.n	a10, 0xa
	.loc 1 259 0
	extui	a2, a2, 0, 8
	.loc 1 266 0
	call8	malloc
.LVL64:
	beqz.n	a10, .L61
	.loc 1 267 0
	bnez.n	a2, .L63
	.loc 1 268 0
	movi.n	a2, 2
.LVL65:
	j	.L69
.L63:
	.loc 1 269 0
	bnei	a2, 1, .L65
	.loc 1 270 0
	movi.n	a2, 5
.L69:
	s16i	a2, a10, 0
	j	.L64
.L65:
	.loc 1 273 0
	call8	free
.LVL66:
	.loc 1 283 0
	retw.n
.LVL67:
.L64:
	.loc 1 278 0
	call8	bta_sys_sendmsg
.LVL68:
.L61:
	retw.n
.LFE44:
	.size	bta_sys_hw_btm_cback, .-bta_sys_hw_btm_cback
	.section	.text.bta_sys_hw_api_enable,"ax",@progbits
	.literal_position
	.literal .LC33, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_hw_api_enable
	.type	bta_sys_hw_api_enable, @function
bta_sys_hw_api_enable:
.LFB46:
	.loc 1 335 0
.LVL69:
	entry	sp, 32
.LCFI17:
	.loc 1 336 0
	l32r	a3, .LC33
	l16ui	a2, a2, 8
.LVL70:
	l32i.n	a8, a3, 0
	movi.n	a3, 1
	l32i	a9, a8, 240
	bnez.n	a9, .L71
	.loc 1 336 0 is_stmt 0 discriminator 1
	l8ui	a10, a8, 230
	beqi	a10, 2, .L71
.LBB10:
	.loc 1 338 0 is_stmt 1
	ssl	a2
	sll	a9, a3
	s32i	a9, a8, 240
	.loc 1 341 0
	movi.n	a10, 0xa
	call8	malloc
.LVL71:
	beqz.n	a10, .L70
	.loc 1 342 0
	s16i	a3, a10, 0
	.loc 1 343 0
	s16i	a2, a10, 8
	.loc 1 345 0
	call8	bta_sys_sendmsg
.LVL72:
	retw.n
.L71:
.LBE10:
	.loc 1 349 0
	ssl	a2
	sll	a3, a3
	.loc 1 352 0
	addx4	a2, a2, a8
	.loc 1 349 0
	or	a3, a3, a9
	.loc 1 352 0
	l32i	a2, a2, 232
	.loc 1 349 0
	s32i	a3, a8, 240
	.loc 1 352 0
	beqz.n	a2, .L70
	.loc 1 353 0
	movi.n	a10, 1
	callx8	a2
.LVL73:
.L70:
	retw.n
.LFE46:
	.size	bta_sys_hw_api_enable, .-bta_sys_hw_api_enable
	.section	.rodata.str1.1
.LC34:
	.string	"p_tle != NULL"
.LC41:
	.string	"bta_sys"
.LC46:
	.string	"\033[0;31mE (%d) %s: %s unable to create alarm.\033[0m\n"
	.section	.text.bta_sys_start_timer,"ax",@progbits
	.literal_position
	.literal .LC35, .LC34
	.literal .LC36, __func__$9131
	.literal .LC37, .LC9
	.literal .LC38, bta_alarm_lock
	.literal .LC39, bta_alarm_hash_map
	.literal .LC40, bta_alarm_cb
	.literal .LC42, .LC41
	.literal .LC43, 0, 0
	.literal .LC44, appl_trace_level
	.literal .LC45, .LC26
	.literal .LC47, .LC46
	.align	4
	.global	bta_sys_start_timer
	.type	bta_sys_start_timer, @function
bta_sys_start_timer:
.LFB57:
	.loc 1 598 0
.LVL74:
	entry	sp, 32
.LCFI18:
	.loc 1 598 0
	extui	a3, a3, 0, 16
	.loc 1 599 0
	bnez.n	a2, .L82
	.loc 1 599 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC36
	l32r	a10, .LC37
	movi	a11, 0x257
	call8	__assert_func
.LVL75:
.L82:
	.loc 1 602 0 is_stmt 1
	l32r	a6, .LC38
	movi.n	a11, -1
	mov.n	a10, a6
	call8	osi_mutex_lock
.LVL76:
	.loc 1 603 0
	l32r	a5, .LC39
	mov.n	a11, a2
	l32i.n	a10, a5, 0
	call8	hash_map_has_key
.LVL77:
	bnez.n	a10, .L83
	.loc 1 604 0
	l32r	a11, .LC40
	l32r	a14, .LC43
	l32r	a15, .LC43+4
	l32r	a10, .LC42
	l32i.n	a7, a5, 0
	mov.n	a12, a2
	call8	osi_alarm_new
.LVL78:
	mov.n	a12, a10
	mov.n	a11, a2
	mov.n	a10, a7
	call8	hash_map_set
.LVL79:
.L83:
	.loc 1 606 0
	mov.n	a10, a6
	call8	osi_mutex_unlock
.LVL80:
	.loc 1 608 0
	l32i.n	a10, a5, 0
	mov.n	a11, a2
	call8	hash_map_get
.LVL81:
	.loc 1 609 0
	bnez.n	a10, .L84
	.loc 1 610 0
	l32r	a2, .LC44
.LVL82:
	l8ui	a2, a2, 0
	beqz.n	a2, .L81
	.loc 1 610 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL83:
	l32r	a11, .LC45
	l32r	a15, .LC36
	l32r	a12, .LC47
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	retw.n
.LVL85:
.L84:
	.loc 1 614 0 is_stmt 1
	s16i	a3, a2, 28
	.loc 1 615 0
	s32i.n	a4, a2, 12
	.loc 1 617 0
	mov.n	a12, a4
	srai	a13, a4, 31
	call8	osi_alarm_set
.LVL86:
.L81:
	retw.n
.LFE57:
	.size	bta_sys_start_timer, .-bta_sys_start_timer
	.section	.text.bta_sys_get_remaining_ticks,"ax",@progbits
	.literal_position
	.literal .LC48, 0, 0
	.literal .LC49, bta_alarm_lock
	.literal .LC50, hash_iter_ro_cb
	.literal .LC51, bta_alarm_hash_map
	.align	4
	.global	bta_sys_get_remaining_ticks
	.type	bta_sys_get_remaining_ticks, @function
bta_sys_get_remaining_ticks:
.LFB59:
	.loc 1 629 0
.LVL87:
	entry	sp, 48
.LCFI19:
	.loc 1 631 0
	l32r	a2, .LC49
.LVL88:
	.loc 1 630 0
	l32r	a9, .LC48+4
	l32r	a8, .LC48
	.loc 1 631 0
	movi.n	a11, -1
	mov.n	a10, a2
	.loc 1 630 0
	s32i.n	a9, sp, 4
	s32i.n	a8, sp, 0
	.loc 1 631 0
	call8	osi_mutex_lock
.LVL89:
	.loc 1 633 0
	l32r	a8, .LC51
	l32r	a11, .LC50
	l32i.n	a10, a8, 0
	mov.n	a12, sp
	call8	hash_map_foreach
.LVL90:
	.loc 1 634 0
	mov.n	a10, a2
	call8	osi_mutex_unlock
.LVL91:
	.loc 1 636 0
	l32i.n	a2, sp, 0
	retw.n
.LFE59:
	.size	bta_sys_get_remaining_ticks, .-bta_sys_get_remaining_ticks
	.section	.text.bta_sys_stop_timer,"ax",@progbits
	.literal_position
	.literal .LC52, .LC34
	.literal .LC53, __func__$9146
	.literal .LC54, .LC9
	.literal .LC55, bta_alarm_hash_map
	.align	4
	.global	bta_sys_stop_timer
	.type	bta_sys_stop_timer, @function
bta_sys_stop_timer:
.LFB60:
	.loc 1 649 0
.LVL92:
	entry	sp, 32
.LCFI20:
	.loc 1 649 0
	mov.n	a11, a2
	.loc 1 650 0
	bnez.n	a2, .L91
	.loc 1 650 0 is_stmt 0 discriminator 1
	l32r	a13, .LC52
	l32r	a12, .LC53
	l32r	a10, .LC54
	movi	a11, 0x28a
	call8	__assert_func
.LVL93:
.L91:
	.loc 1 652 0 is_stmt 1
	l32r	a8, .LC55
	l32i.n	a10, a8, 0
	call8	hash_map_get
.LVL94:
	.loc 1 653 0
	beqz.n	a10, .L90
	.loc 1 657 0
	call8	osi_alarm_cancel
.LVL95:
.L90:
	retw.n
.LFE60:
	.size	bta_sys_stop_timer, .-bta_sys_stop_timer
	.section	.text.bta_sys_free_timer,"ax",@progbits
	.literal_position
	.literal .LC56, .LC34
	.literal .LC57, __func__$9151
	.literal .LC58, .LC9
	.literal .LC59, bta_alarm_hash_map
	.align	4
	.global	bta_sys_free_timer
	.type	bta_sys_free_timer, @function
bta_sys_free_timer:
.LFB61:
	.loc 1 670 0
.LVL96:
	entry	sp, 32
.LCFI21:
	.loc 1 671 0
	bnez.n	a2, .L97
	.loc 1 671 0 is_stmt 0 discriminator 1
	l32r	a13, .LC56
	l32r	a12, .LC57
	l32r	a10, .LC58
	movi	a11, 0x29f
	call8	__assert_func
.LVL97:
.L97:
	.loc 1 673 0 is_stmt 1
	l32r	a3, .LC59
	mov.n	a11, a2
	l32i.n	a10, a3, 0
	call8	hash_map_get
.LVL98:
	.loc 1 674 0
	beqz.n	a10, .L96
	.loc 1 678 0
	call8	osi_alarm_cancel
.LVL99:
	.loc 1 679 0
	l32i.n	a10, a3, 0
	mov.n	a11, a2
	call8	hash_map_erase
.LVL100:
.L96:
	retw.n
.LFE61:
	.size	bta_sys_free_timer, .-bta_sys_free_timer
	.section	.rodata.str1.1
.LC62:
	.string	"\033[0;33mW (%d) %s: bta_sys_disable: unkown module\033[0m\n"
	.section	.text.bta_sys_disable,"ax",@progbits
	.literal_position
	.literal .LC60, appl_trace_level
	.literal .LC61, .LC26
	.literal .LC63, .LC62
	.literal .LC64, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_disable
	.type	bta_sys_disable, @function
bta_sys_disable:
.LFB62:
	.loc 1 692 0
.LVL101:
	entry	sp, 32
.LCFI22:
.LVL102:
	.loc 1 692 0
	extui	a2, a2, 0, 16
	.loc 1 698 0
	beqz.n	a2, .L104
	.loc 1 704 0
	l32r	a2, .LC60
.LVL103:
	l8ui	a2, a2, 0
	bltui	a2, 2, .L102
.LVL104:
.LBB13:
.LBB14:
	call8	esp_log_timestamp
.LVL105:
	l32r	a11, .LC61
	l32r	a12, .LC63
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL106:
	retw.n
.LVL107:
.L104:
.LBE14:
.LBE13:
	.loc 1 698 0
	movi.n	a2, 1
.LVL108:
.L108:
	.loc 1 709 0
	l32r	a3, .LC64
	l32i.n	a8, a3, 0
	addx4	a9, a2, a8
	l32i.n	a9, a9, 0
	beqz.n	a9, .L107
	.loc 1 710 0
	add.n	a8, a8, a2
	l8ui	a8, a8, 184
	beqz.n	a8, .L107
	.loc 1 710 0 discriminator 1
	l32i.n	a8, a9, 4
	beqz.n	a8, .L107
	.loc 1 711 0
	callx8	a8
.LVL109:
.L107:
	.loc 1 708 0
	addi.n	a2, a2, 1
.LVL110:
	movi.n	a8, 0x23
	bne	a2, a8, .L108
.LVL111:
.L102:
	retw.n
.LFE62:
	.size	bta_sys_disable, .-bta_sys_disable
	.section	.text.bta_sys_hw_api_disable,"ax",@progbits
	.literal_position
	.literal .LC65, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_hw_api_disable
	.type	bta_sys_hw_api_disable, @function
bta_sys_hw_api_disable:
.LFB47:
	.loc 1 373 0
.LVL112:
	entry	sp, 32
.LCFI23:
	.loc 1 378 0
	l16ui	a10, a2, 8
	call8	bta_sys_disable
.LVL113:
	.loc 1 382 0
	l32r	a8, .LC65
	l16ui	a9, a2, 8
	l32i.n	a8, a8, 0
	movi.n	a10, -2
	ssl	a9
	src	a11, a10, a10
	l32i	a10, a8, 240
	and	a10, a11, a10
	s32i	a10, a8, 240
	.loc 1 386 0
	beqz.n	a10, .L121
	.loc 1 388 0
	addx4	a8, a9, a8
	l32i	a2, a8, 232
.LVL114:
	beqz.n	a2, .L120
	.loc 1 389 0
	movi.n	a10, 0
	callx8	a2
.LVL115:
	retw.n
.LVL116:
.L121:
.LBB15:
	.loc 1 393 0
	movi.n	a9, 3
	s8i	a9, a8, 230
	.loc 1 396 0
	movi.n	a10, 0xa
	call8	malloc
.LVL117:
	beqz.n	a10, .L120
	.loc 1 398 0
	l16ui	a2, a2, 8
.LVL118:
	.loc 1 397 0
	movi.n	a8, 4
	s16i	a8, a10, 0
	.loc 1 398 0
	s16i	a2, a10, 8
	.loc 1 400 0
	call8	bta_sys_sendmsg
.LVL119:
.L120:
	retw.n
.LBE15:
.LFE47:
	.size	bta_sys_hw_api_disable, .-bta_sys_hw_api_disable
	.section	.text.bta_sys_set_trace_level,"ax",@progbits
	.literal_position
	.literal .LC66, appl_trace_level
	.align	4
	.global	bta_sys_set_trace_level
	.type	bta_sys_set_trace_level, @function
bta_sys_set_trace_level:
.LFB63:
	.loc 1 727 0
.LVL120:
	entry	sp, 32
.LCFI24:
	.loc 1 728 0
	l32r	a8, .LC66
	s8i	a2, a8, 0
	retw.n
.LFE63:
	.size	bta_sys_set_trace_level, .-bta_sys_set_trace_level
	.section	.text.bta_sys_get_sys_features,"ax",@progbits
	.literal_position
	.literal .LC67, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_get_sys_features
	.type	bta_sys_get_sys_features, @function
bta_sys_get_sys_features:
.LFB64:
	.loc 1 741 0
	entry	sp, 32
.LCFI25:
	.loc 1 742 0
	l32r	a8, .LC67
	l32i.n	a8, a8, 0
	.loc 1 743 0
	l16ui	a2, a8, 244
	retw.n
.LFE64:
	.size	bta_sys_get_sys_features, .-bta_sys_get_sys_features
	.section	.rodata.__func__$9151,"a",@progbits
	.type	__func__$9151, @object
	.size	__func__$9151, 19
__func__$9151:
	.string	"bta_sys_free_timer"
	.section	.rodata.__func__$9146,"a",@progbits
	.type	__func__$9146, @object
	.size	__func__$9146, 19
__func__$9146:
	.string	"bta_sys_stop_timer"
	.section	.rodata.__func__$9131,"a",@progbits
	.type	__func__$9131, @object
	.size	__func__$9131, 20
__func__$9131:
	.string	"bta_sys_start_timer"
	.section	.rodata.__func__$9124,"a",@progbits
	.type	__func__$9124, @object
	.size	__func__$9124, 13
__func__$9124:
	.string	"bta_alarm_cb"
	.global	bta_sys_st_tbl
	.section	.rodata.bta_sys_st_tbl,"a",@progbits
	.align	4
	.type	bta_sys_st_tbl, @object
	.size	bta_sys_st_tbl, 16
bta_sys_st_tbl:
	.word	bta_sys_hw_off
	.word	bta_sys_hw_starting
	.word	bta_sys_hw_on
	.word	bta_sys_hw_stopping
	.global	bta_sys_hw_stopping
	.section	.rodata.bta_sys_hw_stopping,"a",@progbits
	.type	bta_sys_hw_stopping, @object
	.size	bta_sys_hw_stopping, 18
bta_sys_hw_stopping:
	.byte	6
	.byte	6
	.byte	1
	.byte	1
	.byte	6
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	6
	.byte	6
	.byte	3
	.byte	4
	.byte	6
	.byte	0
	.byte	3
	.byte	6
	.byte	3
	.global	bta_sys_hw_on
	.section	.rodata.bta_sys_hw_on,"a",@progbits
	.type	bta_sys_hw_on, @object
	.size	bta_sys_hw_on, 18
bta_sys_hw_on:
	.byte	0
	.byte	6
	.byte	2
	.byte	6
	.byte	6
	.byte	2
	.byte	6
	.byte	6
	.byte	2
	.byte	3
	.byte	6
	.byte	2
	.byte	5
	.byte	6
	.byte	2
	.byte	5
	.byte	6
	.byte	2
	.global	bta_sys_hw_starting
	.section	.rodata.bta_sys_hw_starting,"a",@progbits
	.type	bta_sys_hw_starting, @object
	.size	bta_sys_hw_starting, 18
bta_sys_hw_starting:
	.byte	6
	.byte	6
	.byte	1
	.byte	1
	.byte	6
	.byte	1
	.byte	2
	.byte	6
	.byte	2
	.byte	6
	.byte	6
	.byte	3
	.byte	4
	.byte	0
	.byte	1
	.byte	5
	.byte	6
	.byte	2
	.global	bta_sys_hw_off
	.section	.rodata.bta_sys_hw_off,"a",@progbits
	.type	bta_sys_hw_off, @object
	.size	bta_sys_hw_off, 18
bta_sys_hw_off:
	.byte	0
	.byte	6
	.byte	1
	.byte	6
	.byte	6
	.byte	1
	.byte	6
	.byte	6
	.byte	2
	.byte	4
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	0
	.global	bta_sys_action
	.section	.rodata.bta_sys_action,"a",@progbits
	.align	4
	.type	bta_sys_action, @object
	.size	bta_sys_action, 24
bta_sys_action:
	.word	bta_sys_hw_api_enable
	.word	bta_sys_hw_evt_enabled
	.word	bta_sys_hw_evt_stack_enabled
	.word	bta_sys_hw_api_disable
	.word	bta_sys_hw_evt_disabled
	.word	bta_sys_hw_error
	.section	.rodata.bta_sys_hw_reg,"a",@progbits
	.align	4
	.type	bta_sys_hw_reg, @object
	.size	bta_sys_hw_reg, 8
bta_sys_hw_reg:
	.word	bta_sys_sm_execute
	.word	0
	.global	btif_trace_level
	.section	.data.btif_trace_level,"aw",@progbits
	.type	btif_trace_level, @object
	.size	btif_trace_level, 1
btif_trace_level:
	.byte	2
	.global	appl_trace_level
	.section	.data.appl_trace_level,"aw",@progbits
	.type	appl_trace_level, @object
	.size	appl_trace_level, 1
appl_trace_level:
	.byte	2
	.section	.bss.bta_alarm_lock,"aw",@nobits
	.align	4
	.type	bta_alarm_lock, @object
	.size	bta_alarm_lock, 4
bta_alarm_lock:
	.zero	4
	.section	.bss.bta_alarm_hash_map,"aw",@nobits
	.align	4
	.type	bta_alarm_hash_map, @object
	.size	bta_alarm_hash_map, 4
bta_alarm_hash_map:
	.zero	4
	.comm	bta_sys_cb_ptr,4,4
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI0-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI1-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI2-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI3-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI4-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI5-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI6-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI7-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI8-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI9-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI10-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI11-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI12-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI13-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI14-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI15-.LFB55
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
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI17-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI18-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI19-.LFB59
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI20-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI21-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI22-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI23-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI24-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI25-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/alarm.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/thread.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/include/bta_sys_int.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/hash_map.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/mutex.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1693
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF275
	.byte	0xc
	.4byte	.LASF276
	.4byte	.LASF277
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1e
	.4byte	0x98
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.4byte	0x8d
	.uleb128 0x7
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x8
	.uleb128 0x7
	.byte	0x4
	.4byte	0x102
	.uleb128 0x9
	.4byte	0x10d
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x19
	.4byte	0x118
	.uleb128 0xb
	.4byte	.LASF172
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1a
	.4byte	0xea
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x76
	.4byte	0xdf
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x58
	.4byte	0xad
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1f
	.4byte	0x176
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x31
	.4byte	0x1b3
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x62
	.4byte	0x1cc
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0x1a
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1b
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1c
	.4byte	0xdf
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xa
	.byte	0x21
	.4byte	0xd4
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xa
	.byte	0x22
	.4byte	0x128
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.byte	0xbf
	.4byte	0x248
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0xa
	.byte	0xc0
	.4byte	0xc9
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0xa
	.byte	0xc1
	.4byte	0xc9
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0xa
	.byte	0xc2
	.4byte	0xc9
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0xa
	.byte	0xc3
	.4byte	0xc9
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0xa
	.byte	0xc4
	.4byte	0x248
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	0xbe
	.4byte	0x257
	.uleb128 0x12
	.4byte	0xa6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xa
	.byte	0xc5
	.4byte	0x203
	.uleb128 0x11
	.4byte	0x1cc
	.4byte	0x272
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0x11
	.4byte	0x1cc
	.4byte	0x288
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xb
	.byte	0x20
	.4byte	0x102
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0x20
	.byte	0xb
	.byte	0x21
	.4byte	0x30c
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0xb
	.byte	0x22
	.4byte	0x30c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0xb
	.byte	0x23
	.4byte	0x30c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0xb
	.byte	0x24
	.4byte	0x312
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0xb
	.byte	0x25
	.4byte	0x1ed
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0xb
	.byte	0x26
	.4byte	0x1ed
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0xb
	.byte	0x27
	.4byte	0x1e2
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0xb
	.byte	0x28
	.4byte	0x1e2
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0xb
	.byte	0x29
	.4byte	0x1d7
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0xb
	.byte	0x2a
	.4byte	0x1cc
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x293
	.uleb128 0x7
	.byte	0x4
	.4byte	0x288
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xb
	.byte	0x2b
	.4byte	0x293
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x82
	.4byte	0x342
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc
	.byte	0x88
	.4byte	0x1cc
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x9d
	.4byte	0x358
	.uleb128 0x9
	.4byte	0x363
	.uleb128 0xa
	.4byte	0x342
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.2byte	0x1c2
	.4byte	0x48b
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x7
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0xb
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0xd
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xf
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x11
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x12
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x13
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x15
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x16
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x17
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x19
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x1a
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x1b
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x1d
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x1e
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x1f
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x22
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x23
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0x25
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0x26
	.uleb128 0xd
	.4byte	.LASF106
	.byte	0x27
	.uleb128 0xd
	.4byte	.LASF107
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0x29
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0x2a
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x2b
	.uleb128 0xd
	.4byte	.LASF111
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0x2d
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0x2e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x257
	.uleb128 0x15
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.2byte	0x6ec
	.4byte	0x4c9
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0
	.uleb128 0xd
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	0x1cc
	.4byte	0x4d9
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xd
	.byte	0x23
	.4byte	0x4e4
	.uleb128 0x16
	.4byte	0x1f8
	.4byte	0x4f8
	.uleb128 0xa
	.4byte	0x1d7
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xd
	.byte	0x26
	.4byte	0x503
	.uleb128 0x16
	.4byte	0x1f8
	.4byte	0x512
	.uleb128 0xa
	.4byte	0x48b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xd
	.byte	0x29
	.4byte	0xb6
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x2d
	.4byte	0x53c
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xd
	.byte	0x34
	.4byte	0x1d7
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xd
	.byte	0x81
	.4byte	0x1cc
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xd
	.byte	0x8b
	.4byte	0x55d
	.uleb128 0x9
	.4byte	0x577
	.uleb128 0xa
	.4byte	0x547
	.uleb128 0xa
	.4byte	0x1cc
	.uleb128 0xa
	.4byte	0x1cc
	.uleb128 0xa
	.4byte	0x272
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xd
	.byte	0x92
	.4byte	0x582
	.uleb128 0x9
	.4byte	0x592
	.uleb128 0xa
	.4byte	0x1d7
	.uleb128 0xa
	.4byte	0x1f8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0xd
	.byte	0x96
	.4byte	0x5b3
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0xd
	.byte	0x97
	.4byte	0x5b3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0xd
	.byte	0x98
	.4byte	0x5b9
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4f8
	.uleb128 0x7
	.byte	0x4
	.4byte	0x512
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xd
	.byte	0x99
	.4byte	0x592
	.uleb128 0xe
	.byte	0xa
	.byte	0xd
	.byte	0x9c
	.4byte	0x5eb
	.uleb128 0x10
	.string	"hdr"
	.byte	0xd
	.byte	0x9d
	.4byte	0x257
	.byte	0
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0xd
	.byte	0x9e
	.4byte	0x53c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xd
	.byte	0x9f
	.4byte	0x5ca
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0xb4
	.4byte	0x62d
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0xc3
	.4byte	0x658
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xd
	.byte	0xcb
	.4byte	0x1cc
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xd
	.byte	0xce
	.4byte	0x66e
	.uleb128 0x9
	.4byte	0x679
	.uleb128 0xa
	.4byte	0x658
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x24
	.4byte	0x69e
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xe
	.byte	0x2a
	.4byte	0x1cc
	.uleb128 0xe
	.byte	0x1c
	.byte	0xe
	.byte	0x2f
	.4byte	0x6c9
	.uleb128 0x10
	.string	"id"
	.byte	0xe
	.byte	0x30
	.4byte	0x4c9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0xe
	.byte	0x31
	.4byte	0x6c9
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	0x6d9
	.4byte	0x6d9
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x552
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xe
	.byte	0x32
	.4byte	0x6a9
	.uleb128 0x17
	.2byte	0x130
	.byte	0xe
	.byte	0x35
	.4byte	0x7a2
	.uleb128 0x10
	.string	"reg"
	.byte	0xe
	.byte	0x36
	.4byte	0x7a2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0xe
	.byte	0x37
	.4byte	0x7b8
	.byte	0xb8
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0xe
	.byte	0x38
	.4byte	0x69e
	.byte	0xe6
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0xe
	.byte	0x39
	.4byte	0x7c8
	.byte	0xe8
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0xe
	.byte	0x3a
	.4byte	0x1e2
	.byte	0xf0
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0xe
	.byte	0x3b
	.4byte	0x1d7
	.byte	0xf4
	.uleb128 0xf
	.4byte	.LASF162
	.byte	0xe
	.byte	0x3d
	.4byte	0x6d9
	.byte	0xf8
	.uleb128 0xf
	.4byte	.LASF163
	.byte	0xe
	.byte	0x3e
	.4byte	0x6d9
	.byte	0xfc
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0xe
	.byte	0x3f
	.4byte	0x6d9
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF165
	.byte	0xe
	.byte	0x40
	.4byte	0x6d9
	.2byte	0x104
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0xe
	.byte	0x41
	.4byte	0x6d9
	.2byte	0x108
	.uleb128 0x18
	.4byte	.LASF167
	.byte	0xe
	.byte	0x42
	.4byte	0x6df
	.2byte	0x10c
	.uleb128 0x18
	.4byte	.LASF168
	.byte	0xe
	.byte	0x44
	.4byte	0x7de
	.2byte	0x128
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0xe
	.byte	0x4a
	.4byte	0x7e4
	.2byte	0x12c
	.byte	0
	.uleb128 0x11
	.4byte	0x7b2
	.4byte	0x7b2
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5bf
	.uleb128 0x11
	.4byte	0x1f8
	.4byte	0x7c8
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2d
	.byte	0
	.uleb128 0x11
	.4byte	0x7d8
	.4byte	0x7d8
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x663
	.uleb128 0x7
	.byte	0x4
	.4byte	0x577
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4d9
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xe
	.byte	0x4c
	.4byte	0x6ea
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xf
	.byte	0x1a
	.4byte	0x800
	.uleb128 0xb
	.4byte	.LASF171
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0xc
	.byte	0xf
	.byte	0x1c
	.4byte	0x836
	.uleb128 0x10
	.string	"key"
	.byte	0xf
	.byte	0x1d
	.4byte	0xf5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0xf
	.byte	0x1e
	.4byte	0xad
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF175
	.byte	0xf
	.byte	0x1f
	.4byte	0x836
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x83c
	.uleb128 0x19
	.4byte	0x7f5
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0xf
	.byte	0x20
	.4byte	0x805
	.uleb128 0x7
	.byte	0x4
	.4byte	0x841
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0xf
	.byte	0x2b
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x10
	.byte	0x4f
	.4byte	0x13a
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x11
	.byte	0x21
	.4byte	0x85d
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x1
	.byte	0x4a
	.4byte	0x87e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x884
	.uleb128 0x9
	.4byte	0x88f
	.uleb128 0xa
	.4byte	0x88f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x1
	.byte	0x58
	.4byte	0x8c6
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0
	.uleb128 0xd
	.4byte	.LASF181
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF183
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF184
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x1
	.byte	0x94
	.4byte	0x8d1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x278
	.uleb128 0x1a
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x24d
	.byte	0x1
	.4byte	0x90a
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x24d
	.4byte	0xad
	.uleb128 0x1c
	.4byte	.LASF187
	.4byte	0x91a
	.4byte	.LASF189
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x250
	.4byte	0x91f
	.byte	0
	.uleb128 0x11
	.4byte	0xb7
	.4byte	0x91a
	.uleb128 0x13
	.4byte	0xa6
	.byte	0xc
	.byte	0
	.uleb128 0x19
	.4byte	0x90a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x318
	.uleb128 0x1a
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x206
	.byte	0x1
	.4byte	0x94a
	.uleb128 0x1e
	.string	"id"
	.byte	0x1
	.2byte	0x206
	.4byte	0x1cc
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x206
	.4byte	0x94a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x950
	.uleb128 0x19
	.4byte	0x5bf
	.uleb128 0x1a
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x2b3
	.byte	0x1
	.4byte	0x987
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x53c
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x25
	.uleb128 0x1d
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x25
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF207
	.byte	0x1
	.byte	0xd2
	.4byte	0x1f8
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f1
	.uleb128 0x20
	.4byte	.LASF199
	.byte	0x1
	.byte	0xd2
	.4byte	0x48b
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF196
	.byte	0x1
	.byte	0xd4
	.4byte	0x1f8
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF197
	.byte	0x1
	.byte	0xd5
	.4byte	0x8c6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF198
	.byte	0x1
	.byte	0xd6
	.4byte	0x1cc
	.4byte	.LLST1
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xd7
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LVL7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x129
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3a
	.uleb128 0x28
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x129
	.4byte	0x88f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x12b
	.4byte	0x1cc
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	.LASF278
	.4byte	0xa4a
	.uleb128 0x25
	.4byte	.LVL11
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb7
	.4byte	0xa4a
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.4byte	0xa3a
	.uleb128 0x27
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1b2
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa3
	.uleb128 0x2b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x88f
	.4byte	.LLST4
	.uleb128 0x29
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x1cc
	.4byte	.LLST5
	.uleb128 0x2c
	.4byte	.LVL15
	.4byte	0xa94
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL16
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1c9
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf7
	.uleb128 0x2b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x88f
	.4byte	.LLST6
	.uleb128 0x29
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x1cc
	.4byte	.LLST7
	.uleb128 0x2c
	.4byte	.LVL20
	.4byte	0xae8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL21
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2b
	.uleb128 0x28
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x88f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LVL23
	.4byte	0x158e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x26c
	.4byte	0x128
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8b
	.uleb128 0x2b
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x26c
	.4byte	0x84c
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x26c
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x26e
	.4byte	0xb8b
	.4byte	.LLST9
	.uleb128 0x30
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x26f
	.4byte	0xb91
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LVL26
	.4byte	0x159a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x10d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x32
	.4byte	0x8d7
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc36
	.uleb128 0x33
	.4byte	0x8e4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	0x8f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9124
	.uleb128 0x34
	.4byte	0x8fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xc20
	.uleb128 0x36
	.4byte	0x8e4
	.4byte	.LLST10
	.uleb128 0x37
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x38
	.4byte	0x8fd
	.uleb128 0x34
	.4byte	0x8f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9124
	.uleb128 0x2e
	.4byte	.LVL30
	.4byte	0x15a5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x24f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9124
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL31
	.4byte	0x15b0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF213
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd3
	.uleb128 0x3a
	.4byte	0x925
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xb4
	.4byte	0xc71
	.uleb128 0x33
	.4byte	0x93d
	.uleb128 0x6
	.byte	0x3
	.4byte	bta_sys_hw_reg
	.byte	0x9f
	.uleb128 0x3b
	.4byte	0x932
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL32
	.4byte	0x15bb
	.4byte	0xc8b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x130
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL33
	.4byte	0x15c4
	.4byte	0xca2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL34
	.4byte	0x15cf
	.4byte	0xcbf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL36
	.4byte	0x15da
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_btm_cback
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF214
	.byte	0x1
	.byte	0xbf
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd12
	.uleb128 0x31
	.4byte	.LVL37
	.4byte	0x15e6
	.uleb128 0x3c
	.4byte	.LVL38
	.4byte	0x15f1
	.4byte	0xd08
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.byte	0
	.uleb128 0x31
	.4byte	.LVL39
	.4byte	0x15fc
	.byte	0
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0x1
	.byte	0xed
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd44
	.uleb128 0x20
	.4byte	.LASF193
	.byte	0x1
	.byte	0xed
	.4byte	0x53c
	.4byte	.LLST11
	.uleb128 0x3d
	.4byte	.LASF216
	.byte	0x1
	.byte	0xed
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x39
	.4byte	.LASF217
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd69
	.uleb128 0x20
	.4byte	.LASF193
	.byte	0x1
	.byte	0xf3
	.4byte	0x53c
	.4byte	.LLST12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1e4
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0d
	.uleb128 0x28
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x48b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3e
	.string	"id"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x1cc
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x1f8
	.4byte	.LLST14
	.uleb128 0x3f
	.4byte	.LVL49
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xdbf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL51
	.4byte	0x1607
	.uleb128 0x3c
	.4byte	.LVL52
	.4byte	0x1612
	.4byte	0xdfc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL53
	.4byte	0x15fc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x925
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe31
	.uleb128 0x36
	.4byte	0x932
	.4byte	.LLST15
	.uleb128 0x33
	.4byte	0x93d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x27
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x217
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe57
	.uleb128 0x40
	.string	"id"
	.byte	0x1
	.2byte	0x217
	.4byte	0x1cc
	.4byte	.LLST16
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x227
	.4byte	0x1f8
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe81
	.uleb128 0x40
	.string	"id"
	.byte	0x1
	.2byte	0x227
	.4byte	0x1cc
	.4byte	.LLST17
	.byte	0
	.uleb128 0x27
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x238
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed5
	.uleb128 0x28
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x238
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3c
	.4byte	.LVL61
	.4byte	0x15b0
	.4byte	0xec4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL62
	.4byte	0x15fc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x102
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf31
	.uleb128 0x2b
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x102
	.4byte	0x342
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x105
	.4byte	0x88f
	.4byte	.LLST19
	.uleb128 0x3c
	.4byte	.LVL64
	.4byte	0x161d
	.4byte	0xf1e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x31
	.4byte	.LVL66
	.4byte	0x15fc
	.uleb128 0x31
	.4byte	.LVL68
	.4byte	0xe81
	.byte	0
	.uleb128 0x27
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x14e
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa0
	.uleb128 0x2b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x14e
	.4byte	0x88f
	.4byte	.LLST20
	.uleb128 0x35
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xf91
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x154
	.4byte	0x88f
	.4byte	.LLST21
	.uleb128 0x3c
	.4byte	.LVL71
	.4byte	0x161d
	.4byte	0xf87
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x31
	.4byte	.LVL72
	.4byte	0xe81
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL73
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x255
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1111
	.uleb128 0x2b
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x255
	.4byte	0x91f
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x255
	.4byte	0x1d7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x255
	.4byte	0x1ed
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	.LASF187
	.4byte	0x1121
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9131
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x260
	.4byte	0xb8b
	.4byte	.LLST23
	.uleb128 0x3c
	.4byte	.LVL75
	.4byte	0x15a5
	.4byte	0x1031
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x257
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9131
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL76
	.4byte	0x1628
	.4byte	0x104b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL77
	.4byte	0x1633
	.4byte	0x105f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL78
	.4byte	0x163e
	.4byte	0x1085
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_cb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL79
	.4byte	0x1649
	.4byte	0x109f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL80
	.4byte	0x1654
	.4byte	0x10b3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL81
	.4byte	0x165f
	.4byte	0x10c7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL83
	.4byte	0x1607
	.uleb128 0x3c
	.4byte	.LVL84
	.4byte	0x1612
	.4byte	0x1107
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
	.4byte	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9131
	.byte	0
	.uleb128 0x31
	.4byte	.LVL86
	.4byte	0x166a
	.byte	0
	.uleb128 0x11
	.4byte	0xb7
	.4byte	0x1121
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0x19
	.4byte	0x1111
	.uleb128 0x2f
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x274
	.4byte	0x1e2
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a7
	.uleb128 0x2b
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x274
	.4byte	0x91f
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x276
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	.LVL89
	.4byte	0x1628
	.4byte	0x1179
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
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL90
	.4byte	0x1675
	.4byte	0x1196
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	hash_iter_ro_cb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL91
	.4byte	0x1654
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x288
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122d
	.uleb128 0x28
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x288
	.4byte	0x91f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.4byte	.LASF187
	.4byte	0x123d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9146
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x28c
	.4byte	0xb8b
	.4byte	.LLST25
	.uleb128 0x3c
	.4byte	.LVL93
	.4byte	0x15a5
	.4byte	0x121a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x28a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9146
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.uleb128 0x31
	.4byte	.LVL94
	.4byte	0x165f
	.uleb128 0x31
	.4byte	.LVL95
	.4byte	0x1680
	.byte	0
	.uleb128 0x11
	.4byte	0xb7
	.4byte	0x123d
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x12
	.byte	0
	.uleb128 0x19
	.4byte	0x122d
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x29d
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e3
	.uleb128 0x28
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x29d
	.4byte	0x91f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.4byte	.LASF187
	.4byte	0x12e3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9151
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x2a1
	.4byte	0xb8b
	.4byte	.LLST26
	.uleb128 0x3c
	.4byte	.LVL97
	.4byte	0x15a5
	.4byte	0x12b5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x29f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9151
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL98
	.4byte	0x165f
	.4byte	0x12c9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL99
	.4byte	0x1680
	.uleb128 0x2e
	.4byte	.LVL100
	.4byte	0x168b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x122d
	.uleb128 0x42
	.4byte	0x955
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136e
	.uleb128 0x36
	.4byte	0x962
	.4byte	.LLST27
	.uleb128 0x43
	.4byte	0x96e
	.4byte	.LLST28
	.uleb128 0x44
	.4byte	0x97a
	.byte	0
	.uleb128 0x37
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x36
	.4byte	0x962
	.4byte	.LLST29
	.uleb128 0x37
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x38
	.4byte	0x96e
	.uleb128 0x38
	.4byte	0x97a
	.uleb128 0x31
	.4byte	.LVL105
	.4byte	0x1607
	.uleb128 0x2e
	.4byte	.LVL106
	.4byte	0x1612
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x174
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e6
	.uleb128 0x2b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x174
	.4byte	0x88f
	.4byte	.LLST30
	.uleb128 0x35
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x13ce
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x18b
	.4byte	0x88f
	.4byte	.LLST31
	.uleb128 0x3c
	.4byte	.LVL117
	.4byte	0x161d
	.4byte	0x13c4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x31
	.4byte	.LVL119
	.4byte	0xe81
	.byte	0
	.uleb128 0x31
	.4byte	.LVL113
	.4byte	0x955
	.uleb128 0x2d
	.4byte	.LVL115
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x2d6
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140b
	.uleb128 0x28
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x1cc
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x45
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x1d7
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x46
	.4byte	.LASF237
	.byte	0xa
	.2byte	0x2b8
	.4byte	0x1434
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x19
	.4byte	0x262
	.uleb128 0x46
	.4byte	.LASF238
	.byte	0xa
	.2byte	0x2b9
	.4byte	0x144c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x262
	.uleb128 0x22
	.4byte	.LASF239
	.byte	0x1
	.byte	0x37
	.4byte	0x1462
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_hash_map
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7f5
	.uleb128 0x21
	.4byte	.LASF240
	.byte	0x1
	.byte	0x38
	.4byte	0x1474
	.byte	0x11
	.uleb128 0x19
	.4byte	0x2c
	.uleb128 0x22
	.4byte	.LASF241
	.byte	0x1
	.byte	0x39
	.4byte	0x868
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.uleb128 0x22
	.4byte	.LASF242
	.byte	0x1
	.byte	0x43
	.4byte	0x950
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_reg
	.uleb128 0x47
	.4byte	.LASF243
	.byte	0x1
	.byte	0x3f
	.4byte	0x1cc
	.uleb128 0x5
	.byte	0x3
	.4byte	btif_trace_level
	.uleb128 0x47
	.4byte	.LASF244
	.byte	0x1
	.byte	0x3e
	.4byte	0x1cc
	.uleb128 0x5
	.byte	0x3
	.4byte	appl_trace_level
	.uleb128 0x47
	.4byte	.LASF245
	.byte	0x1
	.byte	0x34
	.4byte	0x14ce
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_cb_ptr
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0x11
	.4byte	0x873
	.4byte	0x14e4
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x47
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4d
	.4byte	0x14f5
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_action
	.uleb128 0x19
	.4byte	0x14d4
	.uleb128 0x11
	.4byte	0x1cc
	.4byte	0x1510
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x5
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x47
	.4byte	.LASF247
	.byte	0x1
	.byte	0x6c
	.4byte	0x1521
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_off
	.uleb128 0x19
	.4byte	0x14fa
	.uleb128 0x47
	.4byte	.LASF248
	.byte	0x1
	.byte	0x76
	.4byte	0x1537
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_starting
	.uleb128 0x19
	.4byte	0x14fa
	.uleb128 0x47
	.4byte	.LASF249
	.byte	0x1
	.byte	0x80
	.4byte	0x154d
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_on
	.uleb128 0x19
	.4byte	0x14fa
	.uleb128 0x47
	.4byte	.LASF250
	.byte	0x1
	.byte	0x8a
	.4byte	0x1563
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_stopping
	.uleb128 0x19
	.4byte	0x14fa
	.uleb128 0x11
	.4byte	0x8c6
	.4byte	0x1578
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x47
	.4byte	.LASF251
	.byte	0x1
	.byte	0x97
	.4byte	0x1589
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_st_tbl
	.uleb128 0x19
	.4byte	0x1568
	.uleb128 0x48
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0xc
	.2byte	0x77c
	.uleb128 0x49
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x5
	.byte	0x49
	.uleb128 0x49
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0x12
	.byte	0x29
	.uleb128 0x49
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0x9
	.byte	0x67
	.uleb128 0x4a
	.4byte	.LASF280
	.4byte	.LASF280
	.uleb128 0x49
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0x11
	.byte	0x23
	.uleb128 0x49
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xf
	.byte	0x36
	.uleb128 0x48
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0xc
	.2byte	0x7e7
	.uleb128 0x49
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0xf
	.byte	0x3f
	.uleb128 0x49
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x11
	.byte	0x29
	.uleb128 0x49
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x13
	.byte	0x5a
	.uleb128 0x49
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x8
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x8
	.byte	0x6b
	.uleb128 0x49
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x13
	.byte	0x65
	.uleb128 0x49
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x11
	.byte	0x25
	.uleb128 0x49
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0xf
	.byte	0x50
	.uleb128 0x49
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0x5
	.byte	0x2e
	.uleb128 0x49
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0xf
	.byte	0x5b
	.uleb128 0x49
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0x11
	.byte	0x27
	.uleb128 0x49
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0xf
	.byte	0x54
	.uleb128 0x49
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0x5
	.byte	0x3a
	.uleb128 0x49
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0xf
	.byte	0x6c
	.uleb128 0x49
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0x5
	.byte	0x43
	.uleb128 0x49
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0xf
	.byte	0x61
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
	.uleb128 0xe
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x46
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x17
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x19
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x72
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL74
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL81
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL117
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"long int"
.LASF117:
	.string	"BTM_PM_STS_PARK"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF256:
	.string	"osi_mutex_new"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF53:
	.string	"TIMER_CBACK"
.LASF114:
	.string	"BTM_PM_STS_ACTIVE"
.LASF225:
	.string	"bta_sys_hw_api_enable"
.LASF246:
	.string	"bta_sys_action"
.LASF278:
	.string	"__FUNCTION__"
.LASF220:
	.string	"bta_sys_is_register"
.LASF168:
	.string	"eir_cb"
.LASF52:
	.string	"BT_HDR"
.LASF153:
	.string	"BTA_SYS_HW_STOPPING"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF254:
	.string	"__assert_func"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF216:
	.string	"cback"
.LASF44:
	.string	"UINT16"
.LASF0:
	.string	"unsigned int"
.LASF268:
	.string	"hash_map_set"
.LASF124:
	.string	"BTA_SYS_HW_BLUETOOTH"
.LASF250:
	.string	"bta_sys_hw_stopping"
.LASF228:
	.string	"timeout_ms"
.LASF8:
	.string	"__int32_t"
.LASF257:
	.string	"hash_map_new"
.LASF196:
	.string	"freebuf"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF192:
	.string	"bta_sys_disable"
.LASF262:
	.string	"esp_log_timestamp"
.LASF218:
	.string	"bta_sys_event"
.LASF236:
	.string	"level"
.LASF64:
	.string	"BTM_DEV_STATUS_CMD_TOUT"
.LASF243:
	.string	"btif_trace_level"
.LASF47:
	.string	"BOOLEAN"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF174:
	.string	"hash_map_entry_t"
.LASF122:
	.string	"tBTA_SYS_EVT_HDLR"
.LASF219:
	.string	"bta_sys_deregister"
.LASF184:
	.string	"BTA_SYS_HW_EVT_DISABLED"
.LASF40:
	.string	"SIG_BTU_NUM"
.LASF272:
	.string	"hash_map_foreach"
.LASF63:
	.string	"BTM_DEV_STATUS_DOWN"
.LASF221:
	.string	"bta_sys_sendmsg"
.LASF276:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/bta_sys_main.c"
.LASF62:
	.string	"BTM_DEV_STATUS_UP"
.LASF248:
	.string	"bta_sys_hw_starting"
.LASF266:
	.string	"hash_map_has_key"
.LASF239:
	.string	"bta_alarm_hash_map"
.LASF37:
	.string	"SIG_BTU_GENERAL_ALARM"
.LASF45:
	.string	"UINT32"
.LASF20:
	.string	"uint32_t"
.LASF175:
	.string	"hash_map"
.LASF190:
	.string	"bta_sys_register"
.LASF146:
	.string	"BTA_SYS_HW_STOPPING_EVT"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF48:
	.string	"event"
.LASF264:
	.string	"malloc"
.LASF271:
	.string	"osi_alarm_set"
.LASF46:
	.string	"INT32"
.LASF12:
	.string	"long long unsigned int"
.LASF116:
	.string	"BTM_PM_STS_SNIFF"
.LASF195:
	.string	"bta_id_max"
.LASF160:
	.string	"sys_hw_module_active"
.LASF34:
	.string	"SIG_BTU_HCI_MSG"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF267:
	.string	"osi_alarm_new"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF237:
	.string	"bd_addr_any"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF7:
	.string	"__uint16_t"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF214:
	.string	"bta_sys_free"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF185:
	.string	"BTA_SYS_HW_ERROR"
.LASF29:
	.string	"ESP_LOG_WARN"
.LASF222:
	.string	"bta_sys_hw_btm_cback"
.LASF189:
	.string	"bta_alarm_cb"
.LASF235:
	.string	"bta_sys_set_trace_level"
.LASF118:
	.string	"BTM_PM_STS_SSR"
.LASF128:
	.string	"tBTA_SYS_CONN_STATUS"
.LASF33:
	.string	"SIG_BTU_START_UP"
.LASF39:
	.string	"SIG_BTU_L2CAP_ALARM"
.LASF269:
	.string	"osi_mutex_unlock"
.LASF275:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF136:
	.string	"BTA_SYS_API_ENABLE_EVT"
.LASF166:
	.string	"p_role_cb"
.LASF121:
	.string	"tBTA_SYS_VS_EVT_HDLR"
.LASF270:
	.string	"hash_map_get"
.LASF3:
	.string	"size_t"
.LASF255:
	.string	"btu_task_post"
.LASF241:
	.string	"bta_alarm_lock"
.LASF49:
	.string	"offset"
.LASF249:
	.string	"bta_sys_hw_on"
.LASF247:
	.string	"bta_sys_hw_off"
.LASF24:
	.string	"_Bool"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF135:
	.string	"tBTA_SYS_HW_MSG"
.LASF261:
	.string	"free"
.LASF11:
	.string	"__uint64_t"
.LASF129:
	.string	"tBTA_SYS_CONN_CBACK"
.LASF126:
	.string	"BTA_SYS_MAX_HW_MODULES"
.LASF156:
	.string	"tBTA_SYS_COLLISION"
.LASF27:
	.string	"ESP_LOG_NONE"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF233:
	.string	"bta_sys_free_timer"
.LASF145:
	.string	"BTA_SYS_HW_STARTING_EVT"
.LASF169:
	.string	"p_vs_evt_hdlr"
.LASF23:
	.string	"period_ms_t"
.LASF155:
	.string	"p_coll_cback"
.LASF143:
	.string	"BTA_SYS_HW_OFF_EVT"
.LASF41:
	.string	"TASK_POST_SUCCESS"
.LASF57:
	.string	"ticks"
.LASF204:
	.string	"hw_module_index"
.LASF36:
	.string	"SIG_BTU_BTA_ALARM"
.LASF16:
	.string	"char"
.LASF215:
	.string	"bta_sys_hw_register"
.LASF35:
	.string	"SIG_BTU_BTA_MSG"
.LASF42:
	.string	"TASK_POST_FAIL"
.LASF137:
	.string	"BTA_SYS_EVT_ENABLED_EVT"
.LASF209:
	.string	"hash_map_entry"
.LASF150:
	.string	"BTA_SYS_HW_OFF"
.LASF163:
	.string	"ppm_cb"
.LASF30:
	.string	"ESP_LOG_INFO"
.LASF208:
	.string	"hash_iter_ro_cb"
.LASF51:
	.string	"data"
.LASF231:
	.string	"remaining_ms"
.LASF26:
	.string	"QueueHandle_t"
.LASF182:
	.string	"BTA_SYS_HW_EVT_STACK_ENABLED"
.LASF61:
	.string	"TIMER_LIST_ENT"
.LASF148:
	.string	"tBTA_SYS_HW_EVT"
.LASF141:
	.string	"BTA_SYS_ERROR_EVT"
.LASF17:
	.string	"uint8_t"
.LASF223:
	.string	"status"
.LASF242:
	.string	"bta_sys_hw_reg"
.LASF139:
	.string	"BTA_SYS_API_DISABLE_EVT"
.LASF50:
	.string	"layer_specific"
.LASF253:
	.string	"osi_alarm_get_remaining_ms"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF279:
	.string	"bta_sys_get_sys_features"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF172:
	.string	"alarm_t"
.LASF10:
	.string	"long long int"
.LASF22:
	.string	"osi_alarm_t"
.LASF202:
	.string	"bta_sys_hw_error"
.LASF274:
	.string	"hash_map_erase"
.LASF161:
	.string	"sys_features"
.LASF165:
	.string	"p_sco_cb"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF226:
	.string	"bta_sys_start_timer"
.LASF211:
	.string	"alarm"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF56:
	.string	"p_cback"
.LASF167:
	.string	"colli_reg"
.LASF280:
	.string	"memset"
.LASF229:
	.string	"bta_sys_get_remaining_ticks"
.LASF138:
	.string	"BTA_SYS_EVT_STACK_ENABLED_EVT"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF142:
	.string	"BTA_SYS_MAX_EVT"
.LASF59:
	.string	"param"
.LASF277:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF173:
	.string	"_tle"
.LASF212:
	.string	"p_remaining_ms"
.LASF60:
	.string	"in_use"
.LASF263:
	.string	"esp_log_write"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF120:
	.string	"BTM_PM_STS_ERROR"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF210:
	.string	"context"
.LASF199:
	.string	"p_msg"
.LASF25:
	.string	"TickType_t"
.LASF134:
	.string	"hw_module"
.LASF240:
	.string	"BTA_ALARM_HASH_MAP_SIZE"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF147:
	.string	"BTA_SYS_HW_ERROR_EVT"
.LASF181:
	.string	"BTA_SYS_HW_EVT_ENABLED"
.LASF18:
	.string	"uint16_t"
.LASF66:
	.string	"tBTM_DEV_STATUS_CB"
.LASF180:
	.string	"BTA_SYS_HW_API_ENABLE"
.LASF115:
	.string	"BTM_PM_STS_HOLD"
.LASF217:
	.string	"bta_sys_hw_unregister"
.LASF238:
	.string	"bd_addr_null"
.LASF191:
	.string	"p_reg"
.LASF6:
	.string	"short int"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF140:
	.string	"BTA_SYS_EVT_DISABLED_EVT"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF213:
	.string	"bta_sys_init"
.LASF65:
	.string	"tBTM_DEV_STATUS"
.LASF144:
	.string	"BTA_SYS_HW_ON_EVT"
.LASF251:
	.string	"bta_sys_st_tbl"
.LASF54:
	.string	"p_next"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF164:
	.string	"p_policy_cb"
.LASF21:
	.string	"uint64_t"
.LASF198:
	.string	"action"
.LASF157:
	.string	"is_reg"
.LASF162:
	.string	"prm_cb"
.LASF123:
	.string	"tBTA_SYS_DISABLE"
.LASF206:
	.string	"bta_sys_hw_evt_enabled"
.LASF151:
	.string	"BTA_SYS_HW_STARTING"
.LASF38:
	.string	"SIG_BTU_ONESHOT_ALARM"
.LASF197:
	.string	"state_table"
.LASF260:
	.string	"osi_mutex_free"
.LASF193:
	.string	"module"
.LASF133:
	.string	"tBTA_SYS_REG"
.LASF4:
	.string	"__uint8_t"
.LASF232:
	.string	"bta_sys_stop_timer"
.LASF127:
	.string	"tBTA_SYS_HW_MODULE"
.LASF132:
	.string	"disable"
.LASF171:
	.string	"hash_map_t"
.LASF186:
	.string	"tBTA_SYS_ST_TBL"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF201:
	.string	"module_index"
.LASF55:
	.string	"p_prev"
.LASF58:
	.string	"ticks_initial"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF252:
	.string	"BTM_DeviceReset"
.LASF32:
	.string	"ESP_LOG_VERBOSE"
.LASF152:
	.string	"BTA_SYS_HW_ON"
.LASF19:
	.string	"int32_t"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF158:
	.string	"state"
.LASF159:
	.string	"sys_hw_cback"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF273:
	.string	"osi_alarm_cancel"
.LASF227:
	.string	"type"
.LASF178:
	.string	"osi_mutex_t"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF224:
	.string	"sys_event"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF131:
	.string	"evt_hdlr"
.LASF205:
	.string	"bta_sys_hw_evt_stack_enabled"
.LASF154:
	.string	"tBTA_SYS_HW_STATE"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF234:
	.string	"bta_sys_hw_api_disable"
.LASF183:
	.string	"BTA_SYS_HW_API_DISABLE"
.LASF170:
	.string	"tBTA_SYS_CB"
.LASF179:
	.string	"tBTA_SYS_ACTION"
.LASF113:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF31:
	.string	"ESP_LOG_DEBUG"
.LASF265:
	.string	"osi_mutex_lock"
.LASF207:
	.string	"bta_sys_sm_execute"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF130:
	.string	"tBTA_SYS_EIR_CBACK"
.LASF245:
	.string	"bta_sys_cb_ptr"
.LASF244:
	.string	"appl_trace_level"
.LASF2:
	.string	"signed char"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF1:
	.string	"short unsigned int"
.LASF188:
	.string	"p_tle"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF200:
	.string	"p_sys_hw_msg"
.LASF187:
	.string	"__func__"
.LASF258:
	.string	"BTM_RegisterForDeviceStatusNotif"
.LASF259:
	.string	"hash_map_free"
.LASF203:
	.string	"bta_sys_hw_evt_disabled"
.LASF149:
	.string	"tBTA_SYS_HW_CBACK"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF230:
	.string	"p_target_tle"
.LASF43:
	.string	"UINT8"
.LASF176:
	.string	"data_free_fn"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF177:
	.string	"SemaphoreHandle_t"
.LASF119:
	.string	"BTM_PM_STS_PENDING"
.LASF28:
	.string	"ESP_LOG_ERROR"
.LASF194:
	.string	"bta_id"
.LASF125:
	.string	"BTA_SYS_HW_RT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
