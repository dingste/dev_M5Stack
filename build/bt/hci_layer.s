	.file	"hci_layer.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"BT_HCI"
.LC6:
	.string	"\033[0;31mE (%d) %s: %s invalid event type, could not translate 0x%x\n\033[0m\n"
	.section	.text.transmit_fragment,"ax",@progbits
	.literal_position
	.literal .LC0, 8448
	.literal .LC1, 8704
	.literal .LC2, 8192
	.literal .LC3, __func__$6599
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, hal
	.align	4
	.type	transmit_fragment, @function
transmit_fragment:
.LFB41:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/hci_layer.c"
	.loc 1 352 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 353 0
	l16ui	a5, a2, 0
	movi	a4, -0x100
.LBB4:
.LBB5:
	.loc 1 520 0
	l32r	a8, .LC0
.LBE5:
.LBE4:
	.loc 1 353 0
	and	a4, a5, a4
.LVL1:
	.loc 1 352 0
	extui	a3, a3, 0, 8
.LBB7:
.LBB6:
	.loc 1 521 0
	movi.n	a5, 2
	.loc 1 520 0
	beq	a4, a8, .L2
	.loc 1 522 0
	l32r	a8, .LC1
	.loc 1 523 0
	movi.n	a5, 3
	.loc 1 522 0
	beq	a4, a8, .L2
	.loc 1 524 0
	l32r	a8, .LC2
	.loc 1 525 0
	movi.n	a5, 1
	.loc 1 524 0
	beq	a4, a8, .L2
	.loc 1 527 0
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC5
	l32r	a15, .LC3
	l32r	a12, .LC7
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	mov.n	a10, a5
	mov.n	a14, a11
	call8	esp_log_write
.LVL3:
	.loc 1 530 0
	movi.n	a5, 0
.L2:
.LBE6:
.LBE7:
	.loc 1 356 0
	l32r	a8, .LC8
	l16ui	a9, a2, 4
	l32i.n	a8, a8, 0
	addi.n	a11, a2, 8
	l32i.n	a8, a8, 8
	l16ui	a12, a2, 2
	add.n	a11, a11, a9
	mov.n	a10, a5
	.loc 1 358 0
	addmi	a4, a4, -0x2000
.LVL4:
	.loc 1 356 0
	callx8	a8
.LVL5:
	.loc 1 358 0
	beqz.n	a4, .L1
	beqz.n	a3, .L1
	.loc 1 359 0
	mov.n	a10, a2
	call8	free
.LVL6:
.L1:
	retw.n
.LFE41:
	.size	transmit_fragment, .-transmit_fragment
	.section	.text.get_waiting_command,"ax",@progbits
	.literal_position
	.literal .LC9, hci_host_env+24
	.literal .LC10, hci_host_env
	.align	4
	.type	get_waiting_command, @function
get_waiting_command:
.LFB49:
	.loc 1 534 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 536 0
	l32r	a4, .LC9
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL9:
.LBB8:
	.loc 1 538 0
	l32r	a5, .LC10
	l32i.n	a10, a5, 20
	call8	list_begin
.LVL10:
	j	.L22
.LVL11:
.L18:
.LBB9:
	.loc 1 541 0
	mov.n	a10, a6
	call8	list_node
.LVL12:
	mov.n	a3, a10
.LVL13:
	.loc 1 542 0
	beqz.n	a10, .L15
	.loc 1 542 0 is_stmt 0 discriminator 1
	l16ui	a8, a10, 0
	beq	a8, a2, .L16
.L15:
.LBE9:
	.loc 1 540 0 is_stmt 1
	mov.n	a10, a6
	call8	list_next
.LVL14:
.L22:
	mov.n	a6, a10
.LVL15:
	j	.L14
.LVL16:
.L16:
.LBB10:
	.loc 1 546 0
	mov.n	a11, a10
	l32i.n	a10, a5, 20
	.loc 1 541 0
	mov.n	a2, a3
.LVL17:
	.loc 1 546 0
	call8	list_remove
.LVL18:
	.loc 1 548 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL19:
	.loc 1 549 0
	retw.n
.LVL20:
.L14:
.LBE10:
	.loc 1 539 0 discriminator 1
	l32i.n	a10, a5, 20
	call8	list_end
.LVL21:
	.loc 1 538 0 discriminator 1
	bne	a6, a10, .L18
.LBE8:
	.loc 1 552 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL22:
	.loc 1 553 0
	movi.n	a2, 0
.LVL23:
	.loc 1 554 0
	retw.n
.LFE49:
	.size	get_waiting_command, .-get_waiting_command
	.section	.text.dispatch_reassembled,"ax",@progbits
	.align	4
	.type	dispatch_reassembled, @function
dispatch_reassembled:
.LFB47:
	.loc 1 507 0
.LVL24:
	entry	sp, 32
.LCFI2:
	.loc 1 510 0
	movi.n	a12, -1
	mov.n	a11, a2
	movi.n	a10, 1
	call8	btu_task_post
.LVL25:
	beqz.n	a10, .L23
	.loc 1 511 0
	mov.n	a10, a2
	call8	free
.LVL26:
.L23:
	retw.n
.LFE47:
	.size	dispatch_reassembled, .-dispatch_reassembled
	.section	.text.fragmenter_transmit_finished,"ax",@progbits
	.align	4
	.type	fragmenter_transmit_finished, @function
fragmenter_transmit_finished:
.LFB42:
	.loc 1 364 0
.LVL27:
	entry	sp, 32
.LCFI3:
	.loc 1 364 0
	extui	a3, a3, 0, 8
	mov.n	a10, a2
	.loc 1 365 0
	beqz.n	a3, .L29
	.loc 1 366 0
	call8	free
.LVL28:
	retw.n
.L29:
	.loc 1 380 0
	call8	dispatch_reassembled
.LVL29:
	retw.n
.LFE42:
	.size	fragmenter_transmit_finished, .-fragmenter_transmit_finished
	.section	.text.hci_host_thread_handler,"ax",@progbits
	.literal_position
	.literal .LC11, xHciHostQueue
	.literal .LC12, packet_fragmenter
	.literal .LC13, hci_host_env
	.align	4
	.type	hci_host_thread_handler, @function
hci_host_thread_handler:
.LFB35:
	.loc 1 212 0
.LVL30:
	entry	sp, 48
.LCFI4:
.LVL31:
.L32:
	.loc 1 225 0
	l32r	a2, .LC11
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	movi.n	a12, -1
	mov.n	a11, sp
	call8	xQueueGenericReceive
.LVL32:
	bnei	a10, 1, .L32
	.loc 1 227 0
	l32i.n	a2, sp, 0
	bnez.n	a2, .L32
	.loc 1 228 0
	call8	esp_vhci_host_check_send_available
.LVL33:
	beqz.n	a10, .L32
.LBB11:
	.loc 1 230 0
	l32r	a2, .LC12
	l32i.n	a8, a2, 0
	l32i.n	a10, a8, 8
	callx8	a10
.LVL34:
	.loc 1 231 0
	beqz.n	a10, .L34
	.loc 1 232 0
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 12
	callx8	a2
.LVL35:
	j	.L32
.LVL36:
.L34:
	.loc 1 234 0
	l32r	a2, .LC13
	l32i.n	a10, a2, 4
.LVL37:
	call8	fixed_queue_is_empty
.LVL38:
	bnez.n	a10, .L36
	.loc 1 234 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	blti	a8, 1, .L36
	.loc 1 236 0 is_stmt 1
	l32i.n	a10, a2, 4
	j	.L40
.L36:
	.loc 1 237 0
	l32i.n	a10, a2, 8
	call8	fixed_queue_is_empty
.LVL39:
	bnez.n	a10, .L32
	.loc 1 238 0
	l32i.n	a10, a2, 8
.L40:
	call8	fixed_queue_process
.LVL40:
	j	.L32
.LBE11:
.LFE35:
	.size	hci_host_thread_handler, .-hci_host_thread_handler
	.section	.text.event_packet_ready,"ax",@progbits
	.literal_position
	.literal .LC14, packet_fragmenter
	.align	4
	.type	event_packet_ready, @function
event_packet_ready:
.LFB40:
	.loc 1 343 0
.LVL41:
	entry	sp, 32
.LCFI5:
	.loc 1 344 0
	mov.n	a10, a2
	call8	fixed_queue_dequeue
.LVL42:
	.loc 1 347 0
	l32r	a8, .LC14
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	callx8	a8
.LVL43:
	retw.n
.LFE40:
	.size	event_packet_ready, .-event_packet_ready
	.section	.rodata.str1.1
.LC17:
	.string	"\033[0;31mE (%d) %s: %s with no commands pending response\033[0m\n"
.LC19:
	.string	"\033[0;31mE (%d) %s: %s hci layer timeout waiting for response to a command. opcode: 0x%x\033[0m\n"
	.section	.text.command_timed_out,"ax",@progbits
	.literal_position
	.literal .LC15, __func__$6579
	.literal .LC16, .LC4
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.align	4
	.type	command_timed_out, @function
command_timed_out:
.LFB44:
	.loc 1 400 0
.LVL44:
	entry	sp, 48
.LCFI6:
.LVL45:
	.loc 1 404 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL46:
	.loc 1 405 0
	l32i.n	a10, a2, 8
	.loc 1 406 0
	movi.n	a3, 0
	.loc 1 405 0
	call8	list_is_empty
.LVL47:
	.loc 1 406 0
	bne	a10, a3, .L43
	.loc 1 406 0 is_stmt 0 discriminator 2
	l32i.n	a10, a2, 8
	call8	list_front
.LVL48:
	mov.n	a3, a10
.L43:
.LVL49:
	.loc 1 407 0 is_stmt 1
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL50:
	l32r	a4, .LC15
	l32r	a2, .LC16
.LVL51:
	.loc 1 409 0
	bnez.n	a3, .L44
.LVL52:
.LBB14:
.LBB15:
	.loc 1 410 0
	call8	esp_log_timestamp
.LVL53:
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL54:
	retw.n
.LVL55:
.L44:
.LBE15:
.LBE14:
	.loc 1 415 0 discriminator 1
	call8	esp_log_timestamp
.LVL56:
	l16ui	a3, a3, 0
.LVL57:
	l32r	a12, .LC20
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a15, a4
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL58:
	retw.n
.LFE44:
	.size	command_timed_out, .-command_timed_out
	.section	.text.restart_command_waiting_response_timer$constprop$5,"ax",@progbits
	.literal_position
	.literal .LC21, hci_host_env+24
	.literal .LC22, hci_host_env
	.literal .LC23, 8000, 0
	.align	4
	.type	restart_command_waiting_response_timer$constprop$5, @function
restart_command_waiting_response_timer$constprop$5:
.LFB57:
	.loc 1 385 0
	entry	sp, 32
.LCFI7:
.LVL59:
	.loc 1 387 0
	l32r	a3, .LC21
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL60:
	.loc 1 388 0
	l32r	a2, .LC22
	l8ui	a8, a2, 12
	beqz.n	a8, .L48
	.loc 1 389 0
	l32i.n	a10, a2, 16
	call8	osi_alarm_cancel
.LVL61:
	.loc 1 390 0
	movi.n	a8, 0
	s8i	a8, a2, 12
.L48:
	.loc 1 392 0
	l32i.n	a10, a2, 20
	call8	list_is_empty
.LVL62:
	bnez.n	a10, .L49
	.loc 1 393 0
	l32r	a12, .LC23
	l32r	a13, .LC23+4
	l32i.n	a10, a2, 16
	call8	osi_alarm_set
.LVL63:
	.loc 1 394 0
	movi.n	a8, 1
	s8i	a8, a2, 12
.L49:
	.loc 1 396 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL64:
	retw.n
.LFE57:
	.size	restart_command_waiting_response_timer$constprop$5, .-restart_command_waiting_response_timer$constprop$5
	.section	.text.event_command_ready,"ax",@progbits
	.literal_position
	.literal .LC24, -3125
	.literal .LC25, -64778
	.literal .LC26, packet_fragmenter
	.literal .LC27, hci_host_env
	.literal .LC28, hci_host_env+24
	.align	4
	.type	event_command_ready, @function
event_command_ready:
.LFB39:
	.loc 1 314 0
.LVL65:
	entry	sp, 32
.LCFI8:
.LVL66:
	.loc 1 318 0
	mov.n	a10, a2
	call8	fixed_queue_dequeue
.LVL67:
	.loc 1 320 0
	l32r	a8, .LC24
	l16ui	a5, a10, 0
	movi.n	a4, 1
	add.n	a9, a5, a8
	movi.n	a8, 0
	moveqz	a8, a4, a9
	extui	a8, a8, 0, 8
	.loc 1 318 0
	mov.n	a2, a10
.LVL68:
	l32r	a3, .LC26
	.loc 1 320 0
	bnez.n	a8, .L57
	l32r	a9, .LC25
	add.n	a9, a5, a9
	moveqz	a8, a4, a9
	beqz.n	a8, .L54
.L57:
	.loc 1 325 0
	l32i.n	a3, a3, 0
	l32i.n	a10, a2, 20
	l32i.n	a3, a3, 12
	callx8	a3
.LVL69:
	.loc 1 326 0
	l32i.n	a10, a2, 20
	call8	free
.LVL70:
	.loc 1 327 0
	mov.n	a10, a2
	call8	free
.LVL71:
	.loc 1 328 0
	retw.n
.L54:
	.loc 1 330 0
	l32r	a4, .LC27
	.loc 1 332 0
	l32r	a5, .LC28
	.loc 1 330 0
	l32i.n	a8, a4, 0
	.loc 1 332 0
	movi.n	a11, -1
	.loc 1 330 0
	addi.n	a8, a8, -1
	.loc 1 332 0
	mov.n	a10, a5
	.loc 1 330 0
	s32i.n	a8, a4, 0
	.loc 1 332 0
	call8	osi_mutex_lock
.LVL72:
	.loc 1 333 0
	l32i.n	a10, a4, 20
	mov.n	a11, a2
	call8	list_append
.LVL73:
	.loc 1 334 0
	mov.n	a10, a5
	call8	osi_mutex_unlock
.LVL74:
	.loc 1 337 0
	l32i.n	a3, a3, 0
	l32i.n	a10, a2, 20
	l32i.n	a3, a3, 12
	callx8	a3
.LVL75:
	.loc 1 339 0
	call8	restart_command_waiting_response_timer$constprop$5
.LVL76:
	retw.n
.LFE39:
	.size	event_command_ready, .-event_command_ready
	.section	.text.hci_shut_down,"ax",@progbits
	.literal_position
	.literal .LC29, hci_host_startup_flag
	.literal .LC30, hci_host_env
	.literal .LC31, osi_free_func
	.literal .LC32, hci_host_env+24
	.literal .LC33, packet_fragmenter
	.literal .LC34, hal
	.literal .LC35, xHciHostTaskHandle
	.literal .LC36, xHciHostQueue
	.align	4
	.global	hci_shut_down
	.type	hci_shut_down, @function
hci_shut_down:
.LFB31:
	.loc 1 119 0
	entry	sp, 32
.LCFI9:
	.loc 1 120 0
	l32r	a2, .LC29
	movi.n	a8, 0
	s8i	a8, a2, 0
.LBB18:
.LBB19:
	.loc 1 197 0
	l32r	a2, .LC30
	l32i.n	a10, a2, 4
	beqz.n	a10, .L59
	.loc 1 198 0
	l32r	a11, .LC31
	call8	fixed_queue_free
.LVL77:
.L59:
	.loc 1 200 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L60
	.loc 1 201 0
	l32r	a11, .LC31
	call8	fixed_queue_free
.LVL78:
.L60:
	.loc 1 205 0
	l32i.n	a10, a2, 20
	call8	list_free
.LVL79:
	.loc 1 206 0
	l32r	a10, .LC32
	call8	osi_mutex_free
.LVL80:
	.loc 1 207 0
	l32i.n	a10, a2, 16
	call8	osi_alarm_free
.LVL81:
	.loc 1 208 0
	movi.n	a8, 0
	s32i.n	a8, a2, 16
.LBE19:
.LBE18:
	.loc 1 123 0
	l32r	a2, .LC33
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 4
	callx8	a2
.LVL82:
	.loc 1 126 0
	l32r	a2, .LC34
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 4
	callx8	a2
.LVL83:
	.loc 1 127 0
	l32r	a2, .LC35
	l32i.n	a10, a2, 0
	call8	vTaskDelete
.LVL84:
	.loc 1 128 0
	l32r	a2, .LC36
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL85:
	retw.n
.LFE31:
	.size	hci_shut_down, .-hci_shut_down
	.section	.rodata.str1.1
.LC41:
	.string	"\033[0;31mE (%d) %s: %s unable to create pending command queue.\033[0m\n"
.LC44:
	.string	"\033[0;31mE (%d) %s: %s unable to create pending packet queue.\033[0m\n"
.LC46:
	.string	"\033[0;31mE (%d) %s: %s unable to create list for commands pending response.\033[0m\n"
.LC52:
	.string	"cmd_rsp_to"
.LC54:
	.string	"\033[0;31mE (%d) %s: %s unable to create command response timer.\033[0m\n"
.LC59:
	.string	"hciHostT"
	.section	.text.hci_start_up,"ax",@progbits
	.literal_position
	.literal .LC37, hci_host_env
	.literal .LC38, event_command_ready
	.literal .LC39, __func__$6520
	.literal .LC40, .LC4
	.literal .LC42, .LC41
	.literal .LC43, event_packet_ready
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC48, hci_host_env+24
	.literal .LC49, 8000, 0
	.literal .LC50, hci_host_env+12
	.literal .LC51, command_timed_out
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC56, xHciHostQueue
	.literal .LC57, xHciHostTaskHandle
	.literal .LC58, 2560
	.literal .LC60, .LC59
	.literal .LC61, hci_host_thread_handler
	.literal .LC62, packet_fragmenter
	.literal .LC63, packet_fragmenter_callbacks
	.literal .LC64, hal
	.literal .LC65, hal_callbacks
	.literal .LC66, hci_host_startup_flag
	.align	4
	.global	hci_start_up
	.type	hci_start_up, @function
hci_start_up:
.LFB30:
	.loc 1 100 0
	entry	sp, 48
.LCFI10:
.LBB22:
.LBB23:
	.loc 1 158 0
	l32r	a2, .LC37
	movi.n	a3, 1
	.loc 1 159 0
	movi	a10, 0xfe
	.loc 1 158 0
	s32i.n	a3, a2, 0
	.loc 1 159 0
	call8	fixed_queue_new
.LVL86:
	s32i.n	a10, a2, 4
	.loc 1 160 0
	beqz.n	a10, .L68
	.loc 1 161 0
	l32r	a11, .LC38
	call8	fixed_queue_register_dequeue
.LVL87:
	.loc 1 167 0
	movi	a10, 0xfe
	call8	fixed_queue_new
.LVL88:
	s32i.n	a10, a2, 8
	.loc 1 168 0
	bnez.n	a10, .L69
	j	.L76
.L68:
	.loc 1 163 0
	call8	esp_log_timestamp
.LVL89:
	l32r	a11, .LC40
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC42
	j	.L79
.L69:
	.loc 1 169 0
	l32r	a11, .LC43
	call8	fixed_queue_register_dequeue
.LVL90:
	.loc 1 177 0
	movi.n	a8, 0
	s8i	a8, a2, 12
	.loc 1 178 0
	movi.n	a10, 0
	call8	list_new
.LVL91:
	s32i.n	a10, a2, 20
	.loc 1 179 0
	bnez.n	a10, .L77
	j	.L72
.LVL92:
.L76:
	.loc 1 171 0
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC40
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC45
	j	.L79
.LVL94:
.L72:
	.loc 1 180 0
	call8	esp_log_timestamp
.LVL95:
	l32r	a11, .LC40
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	j	.L79
.L77:
	.loc 1 183 0
	l32r	a10, .LC48
	call8	osi_mutex_new
.LVL96:
	.loc 1 184 0
	l32r	a14, .LC49
	l32r	a15, .LC49+4
	l32r	a12, .LC50
.LVL97:
	l32r	a11, .LC51
	l32r	a10, .LC53
	call8	osi_alarm_new
.LVL98:
	s32i.n	a10, a2, 16
	.loc 1 185 0
	bnez.n	a10, .L74
	.loc 1 186 0
	call8	esp_log_timestamp
.LVL99:
	l32r	a11, .LC40
	l32r	a15, .LC39
	l32r	a12, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
.LVL100:
.L79:
	mov.n	a10, a3
	call8	esp_log_write
.LVL101:
	j	.L71
.LVL102:
.L74:
.LBE23:
.LBE22:
	.loc 1 105 0
	movi.n	a12, 0
	movi.n	a11, 0x10
	movi.n	a10, 0x28
	call8	xQueueGenericCreate
.LVL103:
	l32r	a2, .LC56
	.loc 1 106 0
	l32r	a15, .LC57
	.loc 1 105 0
	s32i.n	a10, a2, 0
	.loc 1 106 0
	l32r	a12, .LC58
	l32r	a11, .LC60
	movi.n	a2, 0
	l32r	a10, .LC61
	movi.n	a14, 0x16
	mov.n	a13, a2
	s32i.n	a2, sp, 0
	call8	xTaskCreatePinnedToCore
.LVL104:
	.loc 1 108 0
	l32r	a8, .LC62
	l32r	a10, .LC63
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	callx8	a8
.LVL105:
	.loc 1 109 0
	l32r	a8, .LC64
	l32r	a10, .LC65
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	callx8	a8
.LVL106:
	.loc 1 111 0
	l32r	a8, .LC66
	s8i	a3, a8, 0
	.loc 1 112 0
	retw.n
.LVL107:
.L71:
.LDL1:
	.loc 1 114 0
	call8	hci_shut_down
.LVL108:
	.loc 1 115 0
	movi.n	a2, -1
	.loc 1 116 0
	retw.n
.LFE30:
	.size	hci_start_up, .-hci_start_up
	.section	.rodata.str1.1
.LC70:
	.string	"\033[0;31mE (%d) %s: xHciHostQueue failed\n\033[0m\n"
	.section	.text.hci_host_task_post,"ax",@progbits
	.literal_position
	.literal .LC67, hci_host_startup_flag
	.literal .LC68, xHciHostQueue
	.literal .LC69, .LC4
	.literal .LC71, .LC70
	.align	4
	.global	hci_host_task_post
	.type	hci_host_task_post, @function
hci_host_task_post:
.LFB32:
	.loc 1 133 0
.LVL109:
	entry	sp, 48
.LCFI11:
	.loc 1 136 0
	l32r	a3, .LC67
	.loc 1 133 0
	mov.n	a12, a2
	.loc 1 136 0
	l8ui	a8, a3, 0
	.loc 1 137 0
	movi.n	a2, 1
.LVL110:
	.loc 1 136 0
	beqz.n	a8, .L81
	.loc 1 143 0
	l32r	a8, .LC68
	.loc 1 140 0
	movi.n	a3, 0
	.loc 1 143 0
	l32i.n	a10, a8, 0
	mov.n	a13, a3
	mov.n	a11, sp
	.loc 1 140 0
	s32i.n	a3, sp, 0
	.loc 1 141 0
	s32i.n	a3, sp, 4
	.loc 1 143 0
	call8	xQueueGenericSend
.LVL111:
	.loc 1 148 0
	mov.n	a2, a3
	.loc 1 143 0
	beqi	a10, 1, .L81
.LVL112:
.LBB26:
.LBB27:
	.loc 1 144 0
	call8	esp_log_timestamp
.LVL113:
	l32r	a11, .LC69
	l32r	a12, .LC71
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL114:
	movi.n	a2, 1
.LVL115:
.L81:
.LBE27:
.LBE26:
	.loc 1 149 0
	retw.n
.LFE32:
	.size	hci_host_task_post, .-hci_host_task_post
	.section	.rodata.str1.1
.LC77:
	.string	"\033[0;33mW (%d) %s: %s command complete event with no matching command. opcode: 0x%x.\033[0m\n"
.LC79:
	.string	"\033[0;33mW (%d) %s: %s command status event with no matching command. opcode: 0x%x\033[0m\n"
	.section	.text.hal_says_packet_ready,"ax",@progbits
	.literal_position
	.literal .LC72, 4096
	.literal .LC73, packet_fragmenter
	.literal .LC74, hci_host_env
	.literal .LC75, __func__$6590
	.literal .LC76, .LC4
	.literal .LC78, .LC77
	.literal .LC80, .LC79
	.align	4
	.type	hal_says_packet_ready, @function
hal_says_packet_ready:
.LFB45:
	.loc 1 421 0
.LVL116:
	entry	sp, 48
.LCFI12:
	.loc 1 422 0
	l16ui	a4, a2, 0
	l32r	a3, .LC72
	beq	a4, a3, .L87
	.loc 1 423 0
	l32r	a3, .LC73
	mov.n	a10, a2
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 16
	callx8	a3
.LVL117:
	retw.n
.L87:
.LVL118:
.LBB33:
.LBB34:
.LBB35:
.LBB36:
	.loc 1 435 0
	l16ui	a8, a2, 4
	addi.n	a3, a2, 8
	add.n	a3, a3, a8
.LVL119:
	.loc 1 439 0
	l8ui	a5, a3, 0
.LVL120:
	.loc 1 444 0
	movi.n	a4, 0xe
	bne	a5, a4, .L89
	.loc 1 445 0
	l8ui	a6, a3, 2
	l32r	a4, .LC74
	s32i.n	a6, a4, 0
.LVL121:
	.loc 1 447 0
	l8ui	a4, a3, 4
	l8ui	a3, a3, 3
.LVL122:
	slli	a4, a4, 8
	add.n	a4, a3, a4
	extui	a4, a4, 0, 16
	mov.n	a10, a4
	call8	get_waiting_command
.LVL123:
	mov.n	a3, a10
.LVL124:
	.loc 1 448 0
	bnez.n	a10, .L90
	.loc 1 449 0
	call8	esp_log_timestamp
.LVL125:
	l32r	a11, .LC76
	s32i.n	a4, sp, 0
	l32r	a15, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC78
	j	.L110
.L90:
	.loc 1 450 0
	l32i.n	a4, a10, 8
	beqz.n	a4, .L92
	.loc 1 451 0
	l32i.n	a11, a10, 16
	mov.n	a10, a2
	callx8	a4
.LVL126:
	j	.L91
.L92:
	.loc 1 452 0
	l32i.n	a10, a10, 4
	beqz.n	a10, .L91
	.loc 1 453 0
	mov.n	a11, a2
	call8	future_ready
.LVL127:
	j	.L91
.LVL128:
.L89:
	.loc 1 457 0
	movi.n	a4, 0xf
	bne	a5, a4, .L93
.LBB37:
	.loc 1 460 0
	l8ui	a8, a3, 3
	l32r	a4, .LC74
	.loc 1 459 0
	l8ui	a6, a3, 2
.LVL129:
	.loc 1 460 0
	s32i.n	a8, a4, 0
.LVL130:
	.loc 1 465 0
	l8ui	a4, a3, 5
	l8ui	a3, a3, 4
.LVL131:
	slli	a4, a4, 8
	add.n	a4, a3, a4
	extui	a4, a4, 0, 16
	mov.n	a10, a4
	call8	get_waiting_command
.LVL132:
	mov.n	a3, a10
.LVL133:
	.loc 1 466 0
	bnez.n	a10, .L94
	.loc 1 467 0
	call8	esp_log_timestamp
.LVL134:
	l32r	a11, .LC76
	l32r	a15, .LC75
	l32r	a12, .LC80
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.LVL135:
.L110:
	movi.n	a10, 2
	call8	esp_log_write
.LVL136:
	j	.L91
.LVL137:
.L94:
	.loc 1 468 0
	l32i.n	a4, a10, 12
	beqz.n	a4, .L91
	.loc 1 469 0
	l32i.n	a12, a10, 16
	l32i.n	a11, a10, 20
	mov.n	a10, a6
	callx8	a4
.LVL138:
.L91:
.LBE37:
	.loc 1 477 0
	call8	restart_command_waiting_response_timer$constprop$5
.LVL139:
	.loc 1 480 0
	l32r	a4, .LC74
	l32i.n	a8, a4, 0
	beqz.n	a8, .L96
	.loc 1 481 0
	l32i.n	a10, a4, 4
	call8	fixed_queue_is_empty
.LVL140:
	.loc 1 480 0
	bnez.n	a10, .L96
	.loc 1 482 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL141:
.L96:
	.loc 1 499 0
	mov.n	a10, a2
	.loc 1 485 0
	beqz.n	a3, .L111
	.loc 1 487 0
	movi.n	a4, 0xf
	beq	a5, a4, .L99
	l32i.n	a4, a3, 8
	bnez.n	a4, .L100
	.loc 1 488 0
	l32i.n	a4, a3, 4
	bnez.n	a4, .L100
.L99:
	.loc 1 489 0
	mov.n	a10, a2
	call8	free
.LVL142:
.L100:
	.loc 1 493 0
	movi.n	a2, 0xe
.LVL143:
	beq	a5, a2, .L101
	l32i.n	a2, a3, 12
	bnez.n	a2, .L102
.L101:
	.loc 1 494 0
	l32i.n	a10, a3, 20
	call8	free
.LVL144:
.L102:
	.loc 1 497 0
	mov.n	a10, a3
	j	.L111
.L111:
	.loc 1 499 0
	call8	free
.LVL145:
	retw.n
.LVL146:
.L93:
.LBE36:
.LBE35:
	.loc 1 425 0
	mov.n	a10, a2
	call8	dispatch_reassembled
.LVL147:
	retw.n
.LBE34:
.LBE33:
.LFE45:
	.size	hal_says_packet_ready, .-hal_says_packet_ready
	.section	.rodata.str1.1
.LC81:
	.string	"wait_entry != NULL"
.LC84:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/hci_layer.c"
	.section	.text.transmit_command_futured,"ax",@progbits
	.literal_position
	.literal .LC82, .LC81
	.literal .LC83, __func__$6544
	.literal .LC85, .LC84
	.literal .LC86, 8192
	.literal .LC87, hci_host_env
	.align	4
	.type	transmit_command_futured, @function
transmit_command_futured:
.LFB37:
	.loc 1 279 0
.LVL148:
	entry	sp, 32
.LCFI13:
	.loc 1 280 0
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL149:
	mov.n	a3, a10
.LVL150:
	.loc 1 281 0
	bnez.n	a10, .L113
.LVL151:
.LBB40:
.LBB41:
	l32r	a13, .LC82
	l32r	a12, .LC83
	l32r	a10, .LC85
	movi	a11, 0x119
	call8	__assert_func
.LVL152:
.L113:
.LBE41:
.LBE40:
	.loc 1 283 0
	call8	future_new
.LVL153:
	.loc 1 285 0
	l16ui	a8, a2, 4
	addi.n	a9, a2, 8
	.loc 1 292 0
	l32r	a5, .LC86
	.loc 1 285 0
	add.n	a9, a9, a8
	.loc 1 286 0
	l8ui	a8, a9, 1
	.loc 1 288 0
	s32i.n	a2, a3, 20
	.loc 1 286 0
	l8ui	a9, a9, 0
	.loc 1 292 0
	s16i	a5, a2, 0
	.loc 1 294 0
	l32r	a2, .LC87
.LVL154:
	.loc 1 286 0
	slli	a8, a8, 8
	add.n	a8, a9, a8
	.loc 1 283 0
	mov.n	a4, a10
.LVL155:
	.loc 1 287 0
	s32i.n	a10, a3, 4
	.loc 1 294 0
	l32i.n	a10, a2, 4
	.loc 1 286 0
	s16i	a8, a3, 0
.LVL156:
	.loc 1 294 0
	mov.n	a11, a3
	call8	fixed_queue_enqueue
.LVL157:
	.loc 1 295 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL158:
	.loc 1 297 0
	mov.n	a2, a4
	retw.n
.LFE37:
	.size	transmit_command_futured, .-transmit_command_futured
	.section	.rodata.str1.1
.LC90:
	.string	"\033[0;31mE (%d) %s: %s couldn't allocate space for wait entry.\033[0m\n"
	.section	.text.transmit_command,"ax",@progbits
	.literal_position
	.literal .LC88, __func__$6539
	.literal .LC89, .LC4
	.literal .LC91, .LC90
	.literal .LC92, 8192
	.literal .LC93, hci_host_env
	.align	4
	.type	transmit_command, @function
transmit_command:
.LFB36:
	.loc 1 252 0
.LVL159:
	entry	sp, 32
.LCFI14:
	.loc 1 254 0
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL160:
	.loc 1 255 0
	bnez.n	a10, .L115
.LVL161:
.LBB44:
.LBB45:
	.loc 1 256 0
	call8	esp_log_timestamp
.LVL162:
	l32r	a11, .LC89
	l32r	a15, .LC88
	l32r	a12, .LC91
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL163:
	retw.n
.LVL164:
.L115:
.LBE45:
.LBE44:
	.loc 1 260 0
	l16ui	a8, a2, 4
	addi.n	a9, a2, 8
	add.n	a9, a9, a8
.LVL165:
	.loc 1 261 0
	l8ui	a8, a9, 1
	.loc 1 262 0
	s32i.n	a3, a10, 8
	.loc 1 269 0
	l32r	a3, .LC92
.LVL166:
	.loc 1 261 0
	l8ui	a9, a9, 0
.LVL167:
	.loc 1 264 0
	s32i.n	a2, a10, 20
	.loc 1 269 0
	s16i	a3, a2, 0
	.loc 1 261 0
	slli	a8, a8, 8
	.loc 1 273 0
	l32r	a2, .LC93
.LVL168:
	.loc 1 261 0
	add.n	a8, a9, a8
	s16i	a8, a10, 0
.LVL169:
	.loc 1 263 0
	s32i.n	a4, a10, 12
	.loc 1 265 0
	s32i.n	a5, a10, 16
	.loc 1 273 0
	mov.n	a11, a10
	l32i.n	a10, a2, 4
.LVL170:
	call8	fixed_queue_enqueue
.LVL171:
	.loc 1 274 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL172:
	retw.n
.LFE36:
	.size	transmit_command, .-transmit_command
	.section	.rodata.str1.1
.LC97:
	.string	"\033[0;33mW (%d) %s: %s legacy transmit of command. Use transmit_command instead.\n\033[0m\n"
	.section	.text.transmit_downward,"ax",@progbits
	.literal_position
	.literal .LC94, 8192
	.literal .LC95, __func__$6551
	.literal .LC96, .LC4
	.literal .LC98, .LC97
	.literal .LC99, hci_host_env
	.align	4
	.type	transmit_downward, @function
transmit_downward:
.LFB38:
	.loc 1 300 0
.LVL173:
	entry	sp, 32
.LCFI15:
	.loc 1 301 0
	l32r	a8, .LC94
	.loc 1 300 0
	extui	a2, a2, 0, 16
	mov.n	a10, a3
	.loc 1 301 0
	bne	a2, a8, .L118
	.loc 1 302 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	transmit_command
.LVL174:
	.loc 1 303 0
	call8	esp_log_timestamp
.LVL175:
	l32r	a11, .LC96
	l32r	a15, .LC95
	l32r	a12, .LC98
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL176:
	j	.L119
.L118:
	.loc 1 305 0
	l32r	a8, .LC99
	mov.n	a11, a3
	l32i.n	a10, a8, 8
	call8	fixed_queue_enqueue
.LVL177:
.L119:
	.loc 1 308 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL178:
	retw.n
.LFE38:
	.size	transmit_downward, .-transmit_downward
	.section	.text.hci_layer_get_interface,"ax",@progbits
	.literal_position
	.literal .LC100, hal
	.literal .LC101, packet_fragmenter
	.literal .LC102, interface_created
	.literal .LC103, interface
	.literal .LC104, transmit_command
	.literal .LC105, transmit_command_futured
	.literal .LC106, transmit_downward
	.align	4
	.global	hci_layer_get_interface
	.type	hci_layer_get_interface, @function
hci_layer_get_interface:
.LFB51:
	.loc 1 577 0
	entry	sp, 32
.LCFI16:
	.loc 1 578 0
	call8	hci_hal_h4_get_interface
.LVL179:
	l32r	a2, .LC100
	s32i.n	a10, a2, 0
	.loc 1 579 0
	call8	packet_fragmenter_get_interface
.LVL180:
.LBB48:
.LBB49:
	.loc 1 558 0
	l32r	a8, .LC102
.LBE49:
.LBE48:
	.loc 1 579 0
	l32r	a2, .LC101
.LBB52:
.LBB50:
	.loc 1 558 0
	l8ui	a9, a8, 0
.LBE50:
.LBE52:
	.loc 1 579 0
	s32i.n	a10, a2, 0
	l32r	a2, .LC103
.LBB53:
.LBB51:
	.loc 1 558 0
	bnez.n	a9, .L121
	.loc 1 559 0
	l32r	a9, .LC104
	s32i.n	a9, a2, 4
	.loc 1 560 0
	l32r	a9, .LC105
	s32i.n	a9, a2, 8
	.loc 1 561 0
	l32r	a9, .LC106
	s32i.n	a9, a2, 12
	.loc 1 562 0
	movi.n	a9, 1
	s8i	a9, a8, 0
.L121:
.LBE51:
.LBE53:
	.loc 1 583 0
	retw.n
.LFE51:
	.size	hci_layer_get_interface, .-hci_layer_get_interface
	.section	.rodata.__func__$6539,"a",@progbits
	.type	__func__$6539, @object
	.size	__func__$6539, 17
__func__$6539:
	.string	"transmit_command"
	.section	.rodata.__func__$6544,"a",@progbits
	.type	__func__$6544, @object
	.size	__func__$6544, 25
__func__$6544:
	.string	"transmit_command_futured"
	.section	.rodata.__func__$6551,"a",@progbits
	.type	__func__$6551, @object
	.size	__func__$6551, 18
__func__$6551:
	.string	"transmit_downward"
	.section	.rodata.__func__$6579,"a",@progbits
	.type	__func__$6579, @object
	.size	__func__$6579, 18
__func__$6579:
	.string	"command_timed_out"
	.section	.rodata.__func__$6520,"a",@progbits
	.type	__func__$6520, @object
	.size	__func__$6520, 19
__func__$6520:
	.string	"hci_layer_init_env"
	.section	.rodata.__func__$6599,"a",@progbits
	.type	__func__$6599, @object
	.size	__func__$6599, 19
__func__$6599:
	.string	"event_to_data_type"
	.section	.rodata.__func__$6590,"a",@progbits
	.type	__func__$6590, @object
	.size	__func__$6590, 22
__func__$6590:
	.string	"filter_incoming_event"
	.section	.rodata.packet_fragmenter_callbacks,"a",@progbits
	.align	4
	.type	packet_fragmenter_callbacks, @object
	.size	packet_fragmenter_callbacks, 12
packet_fragmenter_callbacks:
	.word	transmit_fragment
	.word	dispatch_reassembled
	.word	fragmenter_transmit_finished
	.section	.bss.packet_fragmenter,"aw",@nobits
	.align	4
	.type	packet_fragmenter, @object
	.size	packet_fragmenter, 4
packet_fragmenter:
	.zero	4
	.section	.rodata.hal_callbacks,"a",@progbits
	.align	4
	.type	hal_callbacks, @object
	.size	hal_callbacks, 4
hal_callbacks:
	.word	hal_says_packet_ready
	.section	.bss.hal,"aw",@nobits
	.align	4
	.type	hal, @object
	.size	hal, 4
hal:
	.zero	4
	.section	.bss.hci_host_startup_flag,"aw",@nobits
	.type	hci_host_startup_flag, @object
	.size	hci_host_startup_flag, 1
hci_host_startup_flag:
	.zero	1
	.section	.bss.xHciHostQueue,"aw",@nobits
	.align	4
	.type	xHciHostQueue, @object
	.size	xHciHostQueue, 4
xHciHostQueue:
	.zero	4
	.section	.bss.xHciHostTaskHandle,"aw",@nobits
	.align	4
	.type	xHciHostTaskHandle, @object
	.size	xHciHostTaskHandle, 4
xHciHostTaskHandle:
	.zero	4
	.section	.bss.hci_host_env,"aw",@nobits
	.align	4
	.type	hci_host_env, @object
	.size	hci_host_env, 28
hci_host_env:
	.zero	28
	.section	.bss.interface,"aw",@nobits
	.align	4
	.type	interface, @object
	.size	interface, 16
interface:
	.zero	16
	.section	.bss.interface_created,"aw",@nobits
	.type	interface_created, @object
	.size	interface_created, 1
interface_created:
	.zero	1
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
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI1-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI2-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI3-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI4-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI5-.LFB40
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
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI7-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI8-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI9-.LFB31
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI11-.LFB32
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI13-.LFB37
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI15-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI16-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/hci_hal.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/future.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/packet_fragmenter.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/hci_layer.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/list.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/alarm.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/include/esp_bt.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x199e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0xc
	.4byte	.LASF198
	.4byte	.LASF199
	.4byte	.Ldebug_ranges0+0x50
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0xa3
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xae
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x12c
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0xc7
	.4byte	0xae
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0xae
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0xc9
	.4byte	0xae
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0xca
	.4byte	0xae
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0xcb
	.4byte	0x12c
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xa3
	.4byte	0x13b
	.uleb128 0xc
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0xcc
	.4byte	0xe7
	.uleb128 0xb
	.4byte	0xca
	.4byte	0x156
	.uleb128 0xd
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x1f
	.4byte	0x187
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1b
	.4byte	0x1ac
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x6
	.byte	0x20
	.4byte	0x187
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x6
	.byte	0x22
	.4byte	0x1c2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x10
	.4byte	0x1d3
	.uleb128 0x11
	.4byte	0x1d3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13b
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0x24
	.4byte	0x1ee
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x28
	.4byte	0x1b7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.byte	0x2f
	.4byte	0x1d9
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0xc
	.byte	0x6
	.byte	0x31
	.4byte	0x22a
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0x36
	.4byte	0x244
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x39
	.4byte	0x95
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.4byte	0x263
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	0xe0
	.4byte	0x239
	.uleb128 0x11
	.4byte	0x239
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23f
	.uleb128 0x14
	.4byte	0x1ee
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22a
	.uleb128 0x13
	.4byte	0xae
	.4byte	0x263
	.uleb128 0x11
	.4byte	0x1ac
	.uleb128 0x11
	.4byte	0xc4
	.uleb128 0x11
	.4byte	0xae
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x7
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0x76
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x8
	.byte	0x6e
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x9
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xa
	.byte	0x4f
	.4byte	0x28a
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xb
	.byte	0x1d
	.4byte	0x295
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0xc
	.byte	0xc
	.byte	0x18
	.4byte	0x2dc
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xc
	.byte	0x19
	.4byte	0xe0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xc
	.byte	0x1a
	.4byte	0x2a0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0xc
	.byte	0x1b
	.4byte	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0xc
	.byte	0x1d
	.4byte	0x2ab
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x14
	.byte	0xd
	.byte	0x2a
	.4byte	0x330
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xd
	.byte	0x2c
	.4byte	0x4a0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0xd
	.byte	0x2f
	.4byte	0x95
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0xd
	.byte	0x32
	.4byte	0x4ab
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0xd
	.byte	0x35
	.4byte	0x1c2
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xd
	.byte	0x39
	.4byte	0x1c2
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0xe
	.byte	0x3a
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0xe
	.byte	0x45
	.4byte	0x346
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34c
	.uleb128 0x10
	.4byte	0x35c
	.uleb128 0x11
	.4byte	0x1d3
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xe
	.byte	0x46
	.4byte	0x367
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36d
	.uleb128 0x10
	.4byte	0x382
	.uleb128 0x11
	.4byte	0xa3
	.uleb128 0x11
	.4byte	0x1d3
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x10
	.byte	0xe
	.byte	0x48
	.4byte	0x3bf
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xe
	.byte	0x4d
	.4byte	0x95
	.byte	0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xe
	.byte	0x50
	.4byte	0x3d9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xe
	.byte	0x57
	.4byte	0x3f4
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xe
	.byte	0x5a
	.4byte	0x40a
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.4byte	0x3d9
	.uleb128 0x11
	.4byte	0x1d3
	.uleb128 0x11
	.4byte	0x33b
	.uleb128 0x11
	.4byte	0x35c
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3bf
	.uleb128 0x13
	.4byte	0x3ee
	.4byte	0x3ee
	.uleb128 0x11
	.4byte	0x1d3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2dc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3df
	.uleb128 0x10
	.4byte	0x40a
	.uleb128 0x11
	.4byte	0xae
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fa
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0xe
	.byte	0x5b
	.4byte	0x382
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0xd
	.byte	0x1a
	.4byte	0x426
	.uleb128 0x6
	.byte	0x4
	.4byte	0x42c
	.uleb128 0x10
	.4byte	0x43c
	.uleb128 0x11
	.4byte	0x1d3
	.uleb128 0x11
	.4byte	0xe0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xd
	.byte	0x1b
	.4byte	0x1c2
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xd
	.byte	0x1c
	.4byte	0x426
	.uleb128 0x8
	.byte	0xc
	.byte	0xd
	.byte	0x1e
	.4byte	0x47f
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xd
	.byte	0x20
	.4byte	0x447
	.byte	0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xd
	.byte	0x23
	.4byte	0x43c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xd
	.byte	0x27
	.4byte	0x41b
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xd
	.byte	0x28
	.4byte	0x452
	.uleb128 0x10
	.4byte	0x495
	.uleb128 0x11
	.4byte	0x495
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49b
	.uleb128 0x14
	.4byte	0x47f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48a
	.uleb128 0x15
	.4byte	0x1d3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a6
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xf
	.byte	0x7
	.4byte	0x4bc
	.uleb128 0x16
	.4byte	.LASF75
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0xf
	.byte	0xa
	.4byte	0x4cc
	.uleb128 0x16
	.4byte	.LASF76
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x10
	.byte	0x19
	.4byte	0x4dc
	.uleb128 0x16
	.4byte	.LASF78
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x10
	.byte	0x11
	.byte	0x1c
	.4byte	0x51d
	.uleb128 0xa
	.string	"sig"
	.byte	0x11
	.byte	0x1d
	.4byte	0xb9
	.byte	0
	.uleb128 0xa
	.string	"par"
	.byte	0x11
	.byte	0x1e
	.4byte	0x8c
	.byte	0x4
	.uleb128 0xa
	.string	"cb"
	.byte	0x11
	.byte	0x1f
	.4byte	0x8c
	.byte	0x8
	.uleb128 0xa
	.string	"arg"
	.byte	0x11
	.byte	0x20
	.4byte	0x8c
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x11
	.byte	0x22
	.4byte	0x4e1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x2c
	.4byte	0x541
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x31
	.4byte	0x57e
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x11
	.byte	0x68
	.4byte	0xb9
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x6a
	.4byte	0x5a2
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x11
	.byte	0x6d
	.4byte	0x589
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x12
	.byte	0x21
	.4byte	0x295
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x13
	.byte	0x1f
	.4byte	0x5c3
	.uleb128 0x16
	.4byte	.LASF96
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b8
	.uleb128 0x8
	.byte	0x18
	.byte	0x1
	.byte	0x24
	.4byte	0x61f
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x1
	.byte	0x25
	.4byte	0xae
	.byte	0
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x1
	.byte	0x26
	.4byte	0x3ee
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x1
	.byte	0x27
	.4byte	0x33b
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x1
	.byte	0x28
	.4byte	0x35c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x1
	.byte	0x29
	.4byte	0x8c
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x1
	.byte	0x2a
	.4byte	0x1d3
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2b
	.4byte	0x5ce
	.uleb128 0x8
	.byte	0x10
	.byte	0x1
	.byte	0x2d
	.4byte	0x663
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x1
	.byte	0x2e
	.4byte	0xe0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2f
	.4byte	0x663
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x1
	.byte	0x30
	.4byte	0x669
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x1
	.byte	0x31
	.4byte	0x5ad
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c1
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x1
	.byte	0x32
	.4byte	0x62a
	.uleb128 0x8
	.byte	0x1c
	.byte	0x1
	.byte	0x34
	.4byte	0x6b3
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x1
	.byte	0x36
	.4byte	0x5c8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x1
	.byte	0x37
	.4byte	0x5c8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1
	.byte	0x39
	.4byte	0x66f
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x1
	.byte	0x40
	.4byte	0x67a
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x18f
	.byte	0x1
	.4byte	0x6fd
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x18f
	.4byte	0x8c
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x191
	.4byte	0x6fd
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x192
	.4byte	0x703
	.uleb128 0x1a
	.4byte	.LASF116
	.4byte	0x719
	.4byte	.LASF118
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61f
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0x719
	.uleb128 0xd
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.4byte	0x709
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x1
	.byte	0x84
	.4byte	0x5a2
	.byte	0x1
	.4byte	0x745
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x1
	.byte	0x84
	.4byte	0x57e
	.uleb128 0x1d
	.string	"evt"
	.byte	0x1
	.byte	0x86
	.4byte	0x51d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1a4
	.byte	0x1
	.4byte	0x75f
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x1d3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x116
	.4byte	0x3ee
	.byte	0x1
	.4byte	0x7ae
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x116
	.4byte	0x1d3
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x118
	.4byte	0x703
	.uleb128 0x1a
	.4byte	.LASF116
	.4byte	0x7be
	.4byte	.LASF66
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11b
	.4byte	0x3ee
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x11d
	.4byte	0xc4
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0x7be
	.uleb128 0xd
	.4byte	0x85
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.4byte	0x7ae
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	0x81f
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x1
	.byte	0xf8
	.4byte	0x1d3
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0xf9
	.4byte	0x33b
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.byte	0xfa
	.4byte	0x35c
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x1
	.byte	0xfb
	.4byte	0x8c
	.uleb128 0x20
	.4byte	.LASF121
	.byte	0x1
	.byte	0xfd
	.4byte	0xc4
	.uleb128 0x20
	.4byte	.LASF115
	.byte	0x1
	.byte	0xfe
	.4byte	0x703
	.uleb128 0x1a
	.4byte	.LASF116
	.4byte	0x82f
	.4byte	.LASF65
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0x82f
	.uleb128 0xd
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.4byte	0x81f
	.uleb128 0x17
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	0x84e
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x181
	.4byte	0x6fd
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x206
	.4byte	0x1ac
	.byte	0x1
	.4byte	0x879
	.uleb128 0x18
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x206
	.4byte	0xae
	.uleb128 0x1a
	.4byte	.LASF116
	.4byte	0x889
	.4byte	.LASF123
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0x889
	.uleb128 0xd
	.4byte	0x85
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.4byte	0x879
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x15f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x970
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x15f
	.4byte	0x1d3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x15f
	.4byte	0xe0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x161
	.4byte	0xae
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x162
	.4byte	0x1ac
	.uleb128 0x24
	.4byte	0x84e
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x162
	.4byte	0x94f
	.uleb128 0x25
	.4byte	0x85f
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x27
	.4byte	0x86b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6599
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0x17cc
	.uleb128 0x29
	.4byte	.LVL3
	.4byte	0x17d7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6599
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0x95f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0x17e2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x215
	.4byte	0x703
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6e
	.uleb128 0x2d
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x215
	.4byte	0x330
	.4byte	.LLST2
	.uleb128 0x2e
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x217
	.4byte	0x6fd
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x2f
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xa43
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x21a
	.4byte	0xa6e
	.4byte	.LLST3
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xa1c
	.uleb128 0x23
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x21d
	.4byte	0x703
	.4byte	.LLST4
	.uleb128 0x31
	.4byte	.LVL12
	.4byte	0x17ed
	.4byte	0x9f7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL18
	.4byte	0x17f8
	.4byte	0xa0b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0x1803
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0x180e
	.uleb128 0x31
	.4byte	.LVL14
	.4byte	0x1819
	.4byte	0xa39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL21
	.4byte	0x1824
	.byte	0
	.uleb128 0x31
	.4byte	.LVL9
	.4byte	0x182f
	.4byte	0xa5d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x29
	.4byte	.LVL22
	.4byte	0x1803
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa74
	.uleb128 0x14
	.4byte	0x4b1
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1fa
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacd
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x1d3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LVL25
	.4byte	0x183a
	.4byte	0xabc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x29
	.4byte	.LVL26
	.4byte	0x17e2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x16b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1d
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x16b
	.4byte	0x1d3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x16b
	.4byte	0xe0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LVL28
	.4byte	0x17e2
	.4byte	0xb13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL29
	.4byte	0xa79
	.byte	0
	.uleb128 0x32
	.4byte	.LASF132
	.byte	0x1
	.byte	0xd3
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb6
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.byte	0xd3
	.4byte	0x8c
	.4byte	.LLST5
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.byte	0xde
	.4byte	0x51d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xb8d
	.uleb128 0x35
	.string	"pkt"
	.byte	0x1
	.byte	0xe6
	.4byte	0x1d3
	.4byte	.LLST6
	.uleb128 0x36
	.4byte	.LVL35
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.4byte	.LVL38
	.4byte	0x1845
	.uleb128 0x28
	.4byte	.LVL39
	.4byte	0x1845
	.uleb128 0x28
	.4byte	.LVL40
	.4byte	0x1850
	.byte	0
	.uleb128 0x31
	.4byte	.LVL32
	.4byte	0x185b
	.4byte	0xbac
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL33
	.4byte	0x1867
	.byte	0
	.uleb128 0x37
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x156
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfb
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x156
	.4byte	0x5c8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x158
	.4byte	0x1d3
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LVL42
	.4byte	0x1873
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x6be
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd18
	.uleb128 0x25
	.4byte	0x6cb
	.4byte	.LLST8
	.uleb128 0x39
	.4byte	0x6d7
	.4byte	.LLST9
	.uleb128 0x39
	.4byte	0x6e3
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	0x6ef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6579
	.uleb128 0x2f
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xc9d
	.uleb128 0x25
	.4byte	0x6cb
	.4byte	.LLST11
	.uleb128 0x3a
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x3b
	.4byte	0x6d7
	.uleb128 0x3b
	.4byte	0x6e3
	.uleb128 0x27
	.4byte	0x6ef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6579
	.uleb128 0x28
	.4byte	.LVL53
	.4byte	0x17cc
	.uleb128 0x29
	.4byte	.LVL54
	.4byte	0x17d7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL46
	.4byte	0x182f
	.4byte	0xcb7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0x187e
	.uleb128 0x28
	.4byte	.LVL48
	.4byte	0x1889
	.uleb128 0x31
	.4byte	.LVL50
	.4byte	0x1803
	.4byte	0xcdd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL56
	.4byte	0x17cc
	.uleb128 0x29
	.4byte	.LVL58
	.4byte	0x17d7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x834
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7d
	.uleb128 0x3c
	.4byte	0x841
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LVL60
	.4byte	0x182f
	.4byte	0xd51
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x28
	.4byte	.LVL61
	.4byte	0x1894
	.uleb128 0x28
	.4byte	.LVL62
	.4byte	0x187e
	.uleb128 0x28
	.4byte	.LVL63
	.4byte	0x189f
	.uleb128 0x29
	.4byte	.LVL64
	.4byte	0x1803
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe53
	.uleb128 0x2d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x139
	.4byte	0x5c8
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x13b
	.4byte	0x703
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x13c
	.4byte	0x6fd
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LVL67
	.4byte	0x1873
	.4byte	0xdda
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL69
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.4byte	.LVL70
	.4byte	0x17e2
	.uleb128 0x31
	.4byte	.LVL71
	.4byte	0x17e2
	.4byte	0xdff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL72
	.4byte	0x182f
	.4byte	0xe19
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL73
	.4byte	0x18aa
	.4byte	0xe2d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL74
	.4byte	0x1803
	.4byte	0xe41
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL75
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.4byte	.LVL76
	.4byte	0xd18
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.4byte	0xe6b
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x1
	.byte	0xc3
	.4byte	0x6fd
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x76
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf08
	.uleb128 0x3e
	.4byte	0xe53
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x79
	.4byte	0xee5
	.uleb128 0x3a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x27
	.4byte	0xe5f
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x28
	.4byte	.LVL77
	.4byte	0x18b5
	.uleb128 0x28
	.4byte	.LVL78
	.4byte	0x18b5
	.uleb128 0x28
	.4byte	.LVL79
	.4byte	0x18c0
	.uleb128 0x31
	.4byte	.LVL80
	.4byte	0x18cb
	.4byte	0xeda
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.uleb128 0x28
	.4byte	.LVL81
	.4byte	0x18d6
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL82
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x36
	.4byte	.LVL83
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.4byte	.LVL84
	.4byte	0x18e1
	.uleb128 0x28
	.4byte	.LVL85
	.4byte	0x18ed
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF137
	.byte	0x1
	.byte	0x97
	.4byte	0x25
	.byte	0x1
	.4byte	0xf31
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x1
	.byte	0x99
	.4byte	0x6fd
	.uleb128 0x1a
	.4byte	.LASF116
	.4byte	0xf31
	.4byte	.LASF137
	.byte	0
	.uleb128 0x14
	.4byte	0x879
	.uleb128 0x40
	.4byte	.LASF201
	.byte	0x1
	.byte	0x63
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10f9
	.uleb128 0x41
	.4byte	.LASF202
	.byte	0x1
	.byte	0x71
	.4byte	.LDL1
	.uleb128 0x3e
	.4byte	0xf08
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x65
	.4byte	0x1069
	.uleb128 0x3a
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x39
	.4byte	0xf18
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	0xf23
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6520
	.uleb128 0x31
	.4byte	.LVL86
	.4byte	0x18f9
	.4byte	0xf9e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x31
	.4byte	.LVL87
	.4byte	0x1904
	.4byte	0xfb5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_command_ready
	.byte	0
	.uleb128 0x31
	.4byte	.LVL88
	.4byte	0x18f9
	.4byte	0xfc9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x28
	.4byte	.LVL89
	.4byte	0x17cc
	.uleb128 0x31
	.4byte	.LVL90
	.4byte	0x1904
	.4byte	0xfe9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_packet_ready
	.byte	0
	.uleb128 0x31
	.4byte	.LVL91
	.4byte	0x190f
	.4byte	0xffc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL93
	.4byte	0x17cc
	.uleb128 0x28
	.4byte	.LVL95
	.4byte	0x17cc
	.uleb128 0x31
	.4byte	.LVL96
	.4byte	0x191a
	.4byte	0x1025
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.uleb128 0x31
	.4byte	.LVL98
	.4byte	0x1925
	.4byte	0x104e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	command_timed_out
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0
	.uleb128 0x28
	.4byte	.LVL99
	.4byte	0x17cc
	.uleb128 0x29
	.4byte	.LVL101
	.4byte	0x17d7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL103
	.4byte	0x1930
	.4byte	0x1087
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL104
	.4byte	0x193c
	.4byte	0x10c9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_thread_handler
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciHostTaskHandle
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL105
	.4byte	0x10dc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter_callbacks
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL106
	.4byte	0x10ef
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hal_callbacks
	.byte	0
	.uleb128 0x28
	.4byte	.LVL108
	.4byte	0xe6b
	.byte	0
	.uleb128 0x38
	.4byte	0x71e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1194
	.uleb128 0x25
	.4byte	0x72e
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	0x739
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x1176
	.uleb128 0x25
	.4byte	0x72e
	.4byte	.LLST16
	.uleb128 0x3a
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x3b
	.4byte	0x739
	.uleb128 0x28
	.4byte	.LVL113
	.4byte	0x17cc
	.uleb128 0x29
	.4byte	.LVL114
	.4byte	0x17d7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL111
	.4byte	0x1948
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xe0
	.byte	0x1
	.4byte	0x1205
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x1d3
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x703
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xc4
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xa3
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x330
	.uleb128 0x1a
	.4byte	.LASF116
	.4byte	0x1215
	.4byte	.LASF138
	.uleb128 0x42
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1dc
	.uleb128 0x43
	.uleb128 0x19
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0x1215
	.uleb128 0xd
	.4byte	0x85
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.4byte	0x1205
	.uleb128 0x38
	.4byte	0x745
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b3
	.uleb128 0x25
	.4byte	0x752
	.4byte	.LLST17
	.uleb128 0x2f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x13a3
	.uleb128 0x25
	.4byte	0x752
	.4byte	.LLST18
	.uleb128 0x44
	.4byte	0x1194
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x1392
	.uleb128 0x25
	.4byte	0x11a5
	.4byte	.LLST19
	.uleb128 0x3a
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x39
	.4byte	0x11b1
	.4byte	.LLST20
	.uleb128 0x39
	.4byte	0x11bd
	.4byte	.LLST21
	.uleb128 0x39
	.4byte	0x11c9
	.4byte	.LLST22
	.uleb128 0x39
	.4byte	0x11d5
	.4byte	.LLST23
	.uleb128 0x45
	.4byte	0x11ee
	.4byte	.L91
	.uleb128 0x27
	.4byte	0x11e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6590
	.uleb128 0x2f
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0x1300
	.uleb128 0x39
	.4byte	0x11f7
	.4byte	.LLST24
	.uleb128 0x31
	.4byte	.LVL132
	.4byte	0x970
	.4byte	0x12d4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL134
	.4byte	0x17cc
	.uleb128 0x31
	.4byte	.LVL136
	.4byte	0x17d7
	.4byte	0x12f0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x46
	.4byte	.LVL138
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL123
	.4byte	0x970
	.4byte	0x1314
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL125
	.4byte	0x17cc
	.uleb128 0x47
	.4byte	.LVL126
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x1330
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL127
	.4byte	0x1954
	.4byte	0x1344
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL139
	.4byte	0xd18
	.uleb128 0x28
	.4byte	.LVL140
	.4byte	0x1845
	.uleb128 0x31
	.4byte	.LVL141
	.4byte	0x71e
	.4byte	0x136a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL142
	.4byte	0x17e2
	.4byte	0x137e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL144
	.4byte	0x17e2
	.uleb128 0x28
	.4byte	.LVL145
	.4byte	0x17e2
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL147
	.4byte	0xa79
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL117
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x75f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149a
	.uleb128 0x25
	.4byte	0x770
	.4byte	.LLST25
	.uleb128 0x27
	.4byte	0x77c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	0x788
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6544
	.uleb128 0x27
	.4byte	0x795
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3b
	.4byte	0x7a1
	.uleb128 0x2f
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x1454
	.uleb128 0x25
	.4byte	0x770
	.4byte	.LLST26
	.uleb128 0x3a
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x3b
	.4byte	0x77c
	.uleb128 0x3b
	.4byte	0x795
	.uleb128 0x3b
	.4byte	0x7a1
	.uleb128 0x27
	.4byte	0x788
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6544
	.uleb128 0x29
	.4byte	.LVL152
	.4byte	0x195f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x119
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6544
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL149
	.4byte	0x196a
	.4byte	0x146c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x28
	.4byte	.LVL153
	.4byte	0x1975
	.uleb128 0x31
	.4byte	.LVL157
	.4byte	0x1980
	.4byte	0x1489
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL158
	.4byte	0x71e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x7c3
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a9
	.uleb128 0x25
	.4byte	0x7cf
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	0x7da
	.4byte	.LLST28
	.uleb128 0x3c
	.4byte	0x7e5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3c
	.4byte	0x7f0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x39
	.4byte	0x7fb
	.4byte	.LLST29
	.uleb128 0x39
	.4byte	0x806
	.4byte	.LLST30
	.uleb128 0x27
	.4byte	0x811
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6539
	.uleb128 0x2f
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0x1577
	.uleb128 0x25
	.4byte	0x7cf
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	0x7da
	.4byte	.LLST32
	.uleb128 0x25
	.4byte	0x7e5
	.4byte	.LLST33
	.uleb128 0x25
	.4byte	0x7f0
	.4byte	.LLST34
	.uleb128 0x3a
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x3b
	.4byte	0x7fb
	.uleb128 0x3b
	.4byte	0x806
	.uleb128 0x27
	.4byte	0x811
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6539
	.uleb128 0x28
	.4byte	.LVL162
	.4byte	0x17cc
	.uleb128 0x29
	.4byte	.LVL163
	.4byte	0x17d7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6539
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL160
	.4byte	0x196a
	.4byte	0x158f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x28
	.4byte	.LVL171
	.4byte	0x1980
	.uleb128 0x29
	.4byte	.LVL172
	.4byte	0x71e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x12b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1672
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x12b
	.4byte	0xae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x12b
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x48
	.4byte	.LASF116
	.4byte	0x1672
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6551
	.uleb128 0x31
	.4byte	.LVL174
	.4byte	0x7c3
	.4byte	0x160d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL175
	.4byte	0x17cc
	.uleb128 0x31
	.4byte	.LVL176
	.4byte	0x17d7
	.4byte	0x164d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6551
	.byte	0
	.uleb128 0x31
	.4byte	.LVL177
	.4byte	0x1980
	.4byte	0x1661
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL178
	.4byte	0x71e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x709
	.uleb128 0x49
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x22c
	.byte	0x1
	.uleb128 0x4a
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x240
	.4byte	0x16bd
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16bd
	.uleb128 0x4b
	.4byte	0x1677
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x245
	.uleb128 0x28
	.4byte	.LVL179
	.4byte	0x198b
	.uleb128 0x28
	.4byte	.LVL180
	.4byte	0x1996
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16c3
	.uleb128 0x14
	.4byte	0x410
	.uleb128 0x4c
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x16db
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x14
	.4byte	0x146
	.uleb128 0x4c
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x16f3
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x146
	.uleb128 0x4d
	.4byte	.LASF145
	.byte	0x1
	.byte	0x43
	.4byte	0x1705
	.2byte	0x1f40
	.uleb128 0x14
	.4byte	0xb9
	.uleb128 0x4e
	.4byte	.LASF146
	.byte	0x1
	.byte	0x46
	.4byte	0xe0
	.uleb128 0x5
	.byte	0x3
	.4byte	interface_created
	.uleb128 0x4e
	.4byte	.LASF147
	.byte	0x1
	.byte	0x47
	.4byte	0x410
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x4e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x48
	.4byte	0x6b3
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env
	.uleb128 0x4e
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4a
	.4byte	0x27f
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciHostTaskHandle
	.uleb128 0x4e
	.4byte	.LASF150
	.byte	0x1
	.byte	0x4b
	.4byte	0x28a
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciHostQueue
	.uleb128 0x4e
	.4byte	.LASF151
	.byte	0x1
	.byte	0x4d
	.4byte	0xe0
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_startup_flag
	.uleb128 0x34
	.string	"hal"
	.byte	0x1
	.byte	0x50
	.4byte	0x1781
	.uleb128 0x5
	.byte	0x3
	.4byte	hal
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1787
	.uleb128 0x14
	.4byte	0x1f9
	.uleb128 0x2e
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x236
	.4byte	0x23f
	.uleb128 0x5
	.byte	0x3
	.4byte	hal_callbacks
	.uleb128 0x4e
	.4byte	.LASF153
	.byte	0x1
	.byte	0x52
	.4byte	0x17af
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17b5
	.uleb128 0x14
	.4byte	0x2e7
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x23a
	.4byte	0x49b
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter_callbacks
	.uleb128 0x4f
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x5
	.byte	0x57
	.uleb128 0x4f
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x5
	.byte	0x6b
	.uleb128 0x4f
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x14
	.byte	0x5a
	.uleb128 0x4f
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xf
	.byte	0x6c
	.uleb128 0x4f
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xf
	.byte	0x4c
	.uleb128 0x4f
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x12
	.byte	0x27
	.uleb128 0x4f
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xf
	.byte	0x5c
	.uleb128 0x4f
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xf
	.byte	0x68
	.uleb128 0x4f
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xf
	.byte	0x62
	.uleb128 0x4f
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x12
	.byte	0x25
	.uleb128 0x4f
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x11
	.byte	0x6f
	.uleb128 0x4f
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x13
	.byte	0x31
	.uleb128 0x4f
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x13
	.byte	0x83
	.uleb128 0x50
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x38a
	.uleb128 0x50
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x15
	.2byte	0x145
	.uleb128 0x4f
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x13
	.byte	0x43
	.uleb128 0x4f
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xf
	.byte	0x1f
	.uleb128 0x4f
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xf
	.byte	0x2a
	.uleb128 0x4f
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x10
	.byte	0x43
	.uleb128 0x4f
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x10
	.byte	0x3a
	.uleb128 0x4f
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xf
	.byte	0x42
	.uleb128 0x4f
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x13
	.byte	0x2d
	.uleb128 0x4f
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xf
	.byte	0x1b
	.uleb128 0x4f
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x12
	.byte	0x29
	.uleb128 0x4f
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x10
	.byte	0x33
	.uleb128 0x50
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x2fb
	.uleb128 0x50
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x9
	.2byte	0x3ac
	.uleb128 0x4f
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x13
	.byte	0x29
	.uleb128 0x4f
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x13
	.byte	0x7d
	.uleb128 0x4f
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xf
	.byte	0x15
	.uleb128 0x4f
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x12
	.byte	0x23
	.uleb128 0x4f
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x10
	.byte	0x2e
	.uleb128 0x50
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x9
	.2byte	0x5d0
	.uleb128 0x50
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x151
	.uleb128 0x50
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x9
	.2byte	0x265
	.uleb128 0x4f
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xc
	.byte	0x2d
	.uleb128 0x4f
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x16
	.byte	0x29
	.uleb128 0x4f
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x14
	.byte	0x57
	.uleb128 0x4f
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xc
	.byte	0x23
	.uleb128 0x4f
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x13
	.byte	0x3e
	.uleb128 0x4f
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x6
	.byte	0x53
	.uleb128 0x4f
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xd
	.byte	0x3c
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE41
	.2byte	0x5
	.byte	0x74
	.sleb128 8192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL98-1
	.4byte	.LVL100
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL111-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL116
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL118
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL118
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL118
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x73
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xd
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x3
	.byte	0x73
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132-1
	.2byte	0xe
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE45
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL121
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL130
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL147-1
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x12
	.byte	0x73
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xb
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x12
	.byte	0x73
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132-1
	.2byte	0x28
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x73
	.sleb128 2
	.4byte	.LVL130
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL148
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LVL157-1
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	.LVL157-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL159
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x7a
	.sleb128 20
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 20
	.4byte	.LVL171-1
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL159
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x7a
	.sleb128 8
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 8
	.4byte	.LVL171-1
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0xe
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x12
	.byte	0x7a
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7a
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x12
	.byte	0x7a
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7a
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0xa
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x12
	.byte	0x7b
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7b
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0xa
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL160
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL164
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF139:
	.string	"event_code"
.LASF82:
	.string	"SIG_HCI_HOST_NUM"
.LASF175:
	.string	"list_append"
.LASF49:
	.string	"future"
.LASF88:
	.string	"SIG_BTU_ONESHOT_ALARM"
.LASF130:
	.string	"all_fragments_sent"
.LASF71:
	.string	"fragmented"
.LASF40:
	.string	"close"
.LASF5:
	.string	"__uint8_t"
.LASF123:
	.string	"event_to_data_type"
.LASF57:
	.string	"fragment_current_packet"
.LASF26:
	.string	"ESP_LOG_ERROR"
.LASF65:
	.string	"transmit_command"
.LASF125:
	.string	"type"
.LASF55:
	.string	"init"
.LASF121:
	.string	"stream"
.LASF9:
	.string	"long long unsigned int"
.LASF156:
	.string	"esp_log_write"
.LASF146:
	.string	"interface_created"
.LASF23:
	.string	"data"
.LASF141:
	.string	"hci_shut_down"
.LASF131:
	.string	"get_waiting_command"
.LASF76:
	.string	"list_t"
.LASF45:
	.string	"QueueHandle_t"
.LASF58:
	.string	"fragment_and_dispatch"
.LASF157:
	.string	"free"
.LASF62:
	.string	"command_status_cb"
.LASF94:
	.string	"task_post_status_t"
.LASF29:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF35:
	.string	"serial_data_type_t"
.LASF118:
	.string	"command_timed_out"
.LASF184:
	.string	"list_new"
.LASF112:
	.string	"cmd_waiting_q"
.LASF194:
	.string	"fixed_queue_enqueue"
.LASF85:
	.string	"SIG_BTU_BTA_MSG"
.LASF188:
	.string	"xTaskCreatePinnedToCore"
.LASF10:
	.string	"long int"
.LASF183:
	.string	"fixed_queue_register_dequeue"
.LASF106:
	.string	"commands_pending_response"
.LASF44:
	.string	"TaskHandle_t"
.LASF136:
	.string	"hci_layer_deinit_env"
.LASF24:
	.string	"BT_HDR"
.LASF43:
	.string	"TickType_t"
.LASF113:
	.string	"hci_host_env_t"
.LASF132:
	.string	"hci_host_thread_handler"
.LASF15:
	.string	"uint16_t"
.LASF79:
	.string	"bt_task_evt"
.LASF42:
	.string	"BaseType_t"
.LASF176:
	.string	"fixed_queue_free"
.LASF159:
	.string	"list_remove"
.LASF93:
	.string	"TASK_POST_FAIL"
.LASF54:
	.string	"packet_fragmenter_t"
.LASF108:
	.string	"command_waiting_response_t"
.LASF18:
	.string	"UINT16"
.LASF89:
	.string	"SIG_BTU_L2CAP_ALARM"
.LASF166:
	.string	"fixed_queue_is_empty"
.LASF81:
	.string	"SIG_HCI_HOST_SEND_AVAILABLE"
.LASF204:
	.string	"init_layer_interface"
.LASF98:
	.string	"complete_future"
.LASF105:
	.string	"command_response_timer"
.LASF75:
	.string	"list_node_t"
.LASF187:
	.string	"xQueueGenericCreate"
.LASF168:
	.string	"xQueueGenericReceive"
.LASF33:
	.string	"DATA_TYPE_SCO"
.LASF37:
	.string	"packet_ready"
.LASF0:
	.string	"unsigned int"
.LASF67:
	.string	"transmit_downward"
.LASF154:
	.string	"packet_fragmenter_callbacks"
.LASF102:
	.string	"command"
.LASF104:
	.string	"timer_is_set"
.LASF12:
	.string	"long unsigned int"
.LASF117:
	.string	"timeout"
.LASF197:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF134:
	.string	"queue"
.LASF189:
	.string	"xQueueGenericSend"
.LASF20:
	.string	"event"
.LASF101:
	.string	"context"
.LASF1:
	.string	"short unsigned int"
.LASF103:
	.string	"waiting_command_t"
.LASF185:
	.string	"osi_mutex_new"
.LASF148:
	.string	"hci_host_env"
.LASF111:
	.string	"packet_queue"
.LASF107:
	.string	"commands_pending_response_lock"
.LASF61:
	.string	"command_complete_cb"
.LASF69:
	.string	"packet_reassembled_cb"
.LASF167:
	.string	"fixed_queue_process"
.LASF92:
	.string	"TASK_POST_SUCCESS"
.LASF60:
	.string	"command_opcode_t"
.LASF78:
	.string	"alarm_t"
.LASF135:
	.string	"event_command_ready"
.LASF90:
	.string	"SIG_BTU_NUM"
.LASF147:
	.string	"interface"
.LASF128:
	.string	"dispatch_reassembled"
.LASF28:
	.string	"ESP_LOG_INFO"
.LASF74:
	.string	"packet_fragmenter_callbacks_t"
.LASF138:
	.string	"filter_incoming_event"
.LASF179:
	.string	"osi_alarm_free"
.LASF149:
	.string	"xHciHostTaskHandle"
.LASF50:
	.string	"ready_can_be_called"
.LASF190:
	.string	"future_ready"
.LASF72:
	.string	"reassembled"
.LASF11:
	.string	"sizetype"
.LASF39:
	.string	"open"
.LASF181:
	.string	"vQueueDelete"
.LASF133:
	.string	"event_packet_ready"
.LASF193:
	.string	"future_new"
.LASF177:
	.string	"list_free"
.LASF32:
	.string	"DATA_TYPE_ACL"
.LASF150:
	.string	"xHciHostQueue"
.LASF56:
	.string	"cleanup"
.LASF120:
	.string	"packet"
.LASF83:
	.string	"SIG_BTU_START_UP"
.LASF31:
	.string	"DATA_TYPE_COMMAND"
.LASF202:
	.string	"error"
.LASF164:
	.string	"osi_mutex_lock"
.LASF144:
	.string	"bd_addr_null"
.LASF91:
	.string	"task_post_t"
.LASF119:
	.string	"hal_says_packet_ready"
.LASF109:
	.string	"command_credits"
.LASF51:
	.string	"semaphore"
.LASF34:
	.string	"DATA_TYPE_EVENT"
.LASF19:
	.string	"_Bool"
.LASF191:
	.string	"__assert_func"
.LASF3:
	.string	"unsigned char"
.LASF126:
	.string	"node"
.LASF114:
	.string	"cmd_wait_q"
.LASF161:
	.string	"list_begin"
.LASF53:
	.string	"future_t"
.LASF63:
	.string	"hci_t"
.LASF170:
	.string	"fixed_queue_dequeue"
.LASF4:
	.string	"short int"
.LASF201:
	.string	"hci_start_up"
.LASF155:
	.string	"esp_log_timestamp"
.LASF115:
	.string	"wait_entry"
.LASF96:
	.string	"fixed_queue_t"
.LASF171:
	.string	"list_is_empty"
.LASF100:
	.string	"status_callback"
.LASF116:
	.string	"__func__"
.LASF158:
	.string	"list_node"
.LASF182:
	.string	"fixed_queue_new"
.LASF84:
	.string	"SIG_BTU_HCI_MSG"
.LASF16:
	.string	"uint32_t"
.LASF160:
	.string	"osi_mutex_unlock"
.LASF145:
	.string	"COMMAND_PENDING_TIMEOUT"
.LASF169:
	.string	"esp_vhci_host_check_send_available"
.LASF195:
	.string	"hci_hal_h4_get_interface"
.LASF73:
	.string	"transmit_finished"
.LASF162:
	.string	"list_next"
.LASF46:
	.string	"SemaphoreHandle_t"
.LASF13:
	.string	"char"
.LASF30:
	.string	"ESP_LOG_VERBOSE"
.LASF95:
	.string	"osi_mutex_t"
.LASF198:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/hci_layer.c"
.LASF64:
	.string	"do_postload"
.LASF6:
	.string	"__uint16_t"
.LASF180:
	.string	"vTaskDelete"
.LASF87:
	.string	"SIG_BTU_GENERAL_ALARM"
.LASF25:
	.string	"ESP_LOG_NONE"
.LASF143:
	.string	"bd_addr_any"
.LASF59:
	.string	"reassemble_and_dispatch"
.LASF7:
	.string	"__uint32_t"
.LASF48:
	.string	"hci_hal_t"
.LASF38:
	.string	"hci_hal_callbacks_t"
.LASF21:
	.string	"offset"
.LASF142:
	.string	"hci_layer_get_interface"
.LASF36:
	.string	"packet_ready_cb"
.LASF186:
	.string	"osi_alarm_new"
.LASF196:
	.string	"packet_fragmenter_get_interface"
.LASF200:
	.string	"hci_host_task_post"
.LASF22:
	.string	"layer_specific"
.LASF41:
	.string	"transmit_data"
.LASF199:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF173:
	.string	"osi_alarm_cancel"
.LASF99:
	.string	"complete_callback"
.LASF27:
	.string	"ESP_LOG_WARN"
.LASF66:
	.string	"transmit_command_futured"
.LASF140:
	.string	"status"
.LASF129:
	.string	"fragmenter_transmit_finished"
.LASF192:
	.string	"calloc"
.LASF17:
	.string	"UINT8"
.LASF77:
	.string	"osi_alarm_t"
.LASF124:
	.string	"send_transmit_finished"
.LASF14:
	.string	"uint8_t"
.LASF80:
	.string	"BtTaskEvt_t"
.LASF86:
	.string	"SIG_BTU_BTA_ALARM"
.LASF47:
	.string	"osi_sem_t"
.LASF151:
	.string	"hci_host_startup_flag"
.LASF174:
	.string	"osi_alarm_set"
.LASF137:
	.string	"hci_layer_init_env"
.LASF153:
	.string	"packet_fragmenter"
.LASF110:
	.string	"command_queue"
.LASF70:
	.string	"packet_fragmented_cb"
.LASF68:
	.string	"transmit_finished_cb"
.LASF152:
	.string	"hal_callbacks"
.LASF163:
	.string	"list_end"
.LASF127:
	.string	"transmit_fragment"
.LASF122:
	.string	"restart_command_waiting_response_timer"
.LASF172:
	.string	"list_front"
.LASF178:
	.string	"osi_mutex_free"
.LASF52:
	.string	"result"
.LASF203:
	.string	"intercepted"
.LASF97:
	.string	"opcode"
.LASF165:
	.string	"btu_task_post"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
