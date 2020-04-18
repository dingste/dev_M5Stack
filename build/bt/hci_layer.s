	.file	"hci_layer.c"
	.text
.Ltext0:
	.section	.rodata.transmit_fragment.str1.1,"aMS",@progbits,1
.LC4:
	.string	"BT_HCI"
.LC6:
	.string	"\033[0;31mE (%d) %s: %s invalid event type, could not translate 0x%x\n\033[0m\n"
	.section	.text.transmit_fragment,"ax",@progbits
	.literal_position
	.literal .LC0, 8448
	.literal .LC1, 8704
	.literal .LC2, 8192
	.literal .LC3, __func__$7264
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, hal
	.align	4
	.type	transmit_fragment, @function
transmit_fragment:
.LVL0:
.LFB49:
	.file 1 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/hci_layer.c"
	.loc 1 334 1 view -0
	.loc 1 334 1 is_stmt 0 view .LVU1
	entry	sp, 48
.LCFI0:
	.loc 1 335 5 is_stmt 1 view .LVU2
	.loc 1 335 14 is_stmt 0 view .LVU3
	l16ui	a5, a2, 0
.LBB5:
.LBB6:
	.loc 1 502 8 view .LVU4
	l32r	a8, .LC0
.LBE6:
.LBE5:
	.loc 1 335 14 view .LVU5
	movi	a4, -0x100
	and	a4, a5, a4
.LVL1:
	.loc 1 336 5 is_stmt 1 view .LVU6
.LBB10:
.LBI5:
	.loc 1 500 27 view .LVU7
.LBB7:
	.loc 1 502 5 view .LVU8
	.loc 1 502 8 is_stmt 0 view .LVU9
	extui	a8, a8, 0, 16
.LBE7:
.LBE10:
	.loc 1 334 1 view .LVU10
	extui	a3, a3, 0, 8
.LBB11:
.LBB8:
	.loc 1 503 16 view .LVU11
	movi.n	a5, 2
	.loc 1 502 8 view .LVU12
	beq	a4, a8, .L2
	.loc 1 504 12 is_stmt 1 view .LVU13
	.loc 1 504 15 is_stmt 0 view .LVU14
	l32r	a8, .LC1
	.loc 1 505 16 view .LVU15
	movi.n	a5, 3
	.loc 1 504 15 view .LVU16
	extui	a8, a8, 0, 16
	beq	a4, a8, .L2
	.loc 1 506 12 is_stmt 1 view .LVU17
	.loc 1 506 15 is_stmt 0 view .LVU18
	l32r	a8, .LC2
	.loc 1 507 16 view .LVU19
	movi.n	a5, 1
	.loc 1 506 15 view .LVU20
	extui	a8, a8, 0, 16
	beq	a4, a8, .L2
	.loc 1 509 10 is_stmt 1 view .LVU21
	.loc 1 509 57 view .LVU22
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC5
	l32r	a15, .LC3
	l32r	a12, .LC7
	mov.n	a13, a10
.LBE8:
.LBE11:
	.loc 1 336 31 is_stmt 0 view .LVU23
	s32i.n	a4, sp, 0
.LBB12:
.LBB9:
	.loc 1 509 57 view .LVU24
	mov.n	a10, a5
	mov.n	a14, a11
	call8	esp_log_write
.LVL3:
	.loc 1 509 250 is_stmt 1 view .LVU25
	.loc 1 509 252 view .LVU26
	.loc 1 512 5 view .LVU27
	.loc 1 512 12 is_stmt 0 view .LVU28
	movi.n	a5, 0
.L2:
.LVL4:
	.loc 1 512 12 view .LVU29
.LBE9:
.LBE12:
	.loc 1 338 5 is_stmt 1 view .LVU30
	.loc 1 338 8 is_stmt 0 view .LVU31
	l32r	a8, .LC8
	.loc 1 338 51 view .LVU32
	l16ui	a9, a2, 4
	.loc 1 338 8 view .LVU33
	l32i.n	a8, a8, 0
	.loc 1 338 30 view .LVU34
	addi.n	a11, a2, 8
	.loc 1 338 5 view .LVU35
	l32i.n	a8, a8, 8
	l16ui	a12, a2, 2
	add.n	a11, a11, a9
	mov.n	a10, a5
	.loc 1 340 15 view .LVU36
	addmi	a4, a4, -0x2000
.LVL5:
	.loc 1 338 5 view .LVU37
	callx8	a8
.LVL6:
	.loc 1 340 5 is_stmt 1 view .LVU38
	.loc 1 340 8 is_stmt 0 view .LVU39
	beqz.n	a4, .L1
	beqz.n	a3, .L1
	.loc 1 341 9 is_stmt 1 view .LVU40
	mov.n	a10, a2
	call8	free
.LVL7:
.L1:
	.loc 1 343 1 is_stmt 0 view .LVU41
	retw.n
.LFE49:
	.size	transmit_fragment, .-transmit_fragment
	.section	.text.get_waiting_command,"ax",@progbits
	.literal_position
	.literal .LC9, hci_host_env+24
	.literal .LC10, hci_host_env
	.align	4
	.type	get_waiting_command, @function
get_waiting_command:
.LVL8:
.LFB57:
	.loc 1 516 1 is_stmt 1 view -0
	.loc 1 516 1 is_stmt 0 view .LVU43
	entry	sp, 32
.LCFI1:
	.loc 1 517 5 is_stmt 1 view .LVU44
.LVL9:
	.loc 1 518 5 view .LVU45
	l32r	a4, .LC9
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL10:
	.loc 1 520 5 view .LVU46
.LBB13:
	.loc 1 520 10 view .LVU47
	.loc 1 520 57 is_stmt 0 view .LVU48
	l32r	a5, .LC10
.LBE13:
	.loc 1 516 1 view .LVU49
	mov.n	a6, a2
.LBB16:
	.loc 1 520 36 view .LVU50
	l32i.n	a10, a5, 20
	call8	list_begin
.LVL11:
	j	.L22
.LVL12:
.L18:
.LBB14:
	.loc 1 523 9 is_stmt 1 view .LVU51
	.loc 1 523 41 is_stmt 0 view .LVU52
	mov.n	a10, a3
	call8	list_node
.LVL13:
	mov.n	a2, a10
.LVL14:
	.loc 1 524 9 is_stmt 1 view .LVU53
	.loc 1 524 12 is_stmt 0 view .LVU54
	beqz.n	a10, .L15
	.loc 1 524 25 discriminator 1 view .LVU55
	l16ui	a8, a10, 0
	beq	a8, a6, .L16
.L15:
	.loc 1 525 13 is_stmt 1 view .LVU56
.LBE14:
	.loc 1 522 20 is_stmt 0 view .LVU57
	mov.n	a10, a3
	call8	list_next
.LVL15:
.L22:
	.loc 1 522 20 view .LVU58
	mov.n	a3, a10
.LVL16:
	.loc 1 522 20 view .LVU59
	j	.L14
.LVL17:
.L16:
.LBB15:
	.loc 1 528 9 is_stmt 1 view .LVU60
	mov.n	a11, a10
	l32i.n	a10, a5, 20
	call8	list_remove
.LVL18:
	.loc 1 530 9 view .LVU61
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL19:
	.loc 1 531 9 view .LVU62
	.loc 1 531 16 is_stmt 0 view .LVU63
	j	.L13
.LVL20:
.L14:
	.loc 1 531 16 view .LVU64
.LBE15:
	.loc 1 521 21 discriminator 1 view .LVU65
	l32i.n	a10, a5, 20
	call8	list_end
.LVL21:
	.loc 1 520 5 discriminator 1 view .LVU66
	bne	a3, a10, .L18
.LBE16:
	.loc 1 534 5 is_stmt 1 view .LVU67
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL22:
	.loc 1 535 5 view .LVU68
	.loc 1 535 11 is_stmt 0 view .LVU69
	movi.n	a2, 0
.L13:
	.loc 1 536 1 view .LVU70
	retw.n
.LFE57:
	.size	get_waiting_command, .-get_waiting_command
	.section	.text.dispatch_reassembled,"ax",@progbits
	.align	4
	.type	dispatch_reassembled, @function
dispatch_reassembled:
.LVL23:
.LFB55:
	.loc 1 489 1 is_stmt 1 view -0
	.loc 1 489 1 is_stmt 0 view .LVU72
	entry	sp, 32
.LCFI2:
	.loc 1 492 5 is_stmt 1 view .LVU73
	.loc 1 492 9 is_stmt 0 view .LVU74
	movi.n	a12, -1
	mov.n	a11, a2
	movi.n	a10, 1
	call8	btu_task_post
.LVL24:
	.loc 1 492 8 view .LVU75
	bnez.n	a10, .L23
	.loc 1 493 9 is_stmt 1 view .LVU76
	mov.n	a10, a2
	call8	free
.LVL25:
.L23:
	.loc 1 495 1 is_stmt 0 view .LVU77
	retw.n
.LFE55:
	.size	dispatch_reassembled, .-dispatch_reassembled
	.section	.text.fragmenter_transmit_finished,"ax",@progbits
	.align	4
	.type	fragmenter_transmit_finished, @function
fragmenter_transmit_finished:
.LVL26:
.LFB50:
	.loc 1 346 1 is_stmt 1 view -0
	.loc 1 346 1 is_stmt 0 view .LVU79
	entry	sp, 32
.LCFI3:
	.loc 1 347 5 is_stmt 1 view .LVU80
	.loc 1 346 1 is_stmt 0 view .LVU81
	extui	a3, a3, 0, 8
	.loc 1 346 1 view .LVU82
	mov.n	a10, a2
	.loc 1 347 8 view .LVU83
	beqz.n	a3, .L26
	.loc 1 348 9 is_stmt 1 view .LVU84
	call8	free
.LVL27:
	j	.L25
.L26:
	.loc 1 362 9 view .LVU85
	call8	dispatch_reassembled
.LVL28:
.L25:
	.loc 1 365 1 is_stmt 0 view .LVU86
	retw.n
.LFE50:
	.size	fragmenter_transmit_finished, .-fragmenter_transmit_finished
	.section	.text.event_packet_ready,"ax",@progbits
	.literal_position
	.literal .LC11, packet_fragmenter
	.align	4
	.type	event_packet_ready, @function
event_packet_ready:
.LVL29:
.LFB48:
	.loc 1 325 1 is_stmt 1 view -0
	.loc 1 325 1 is_stmt 0 view .LVU88
	entry	sp, 32
.LCFI4:
	.loc 1 326 5 is_stmt 1 view .LVU89
	.loc 1 326 32 is_stmt 0 view .LVU90
	movi.n	a11, -1
	mov.n	a10, a2
	call8	fixed_queue_dequeue
.LVL30:
	.loc 1 329 5 is_stmt 1 view .LVU91
	.loc 1 329 22 is_stmt 0 view .LVU92
	l32r	a8, .LC11
	l32i.n	a8, a8, 0
	.loc 1 329 5 view .LVU93
	l32i.n	a8, a8, 12
	callx8	a8
.LVL31:
	.loc 1 330 1 view .LVU94
	retw.n
.LFE48:
	.size	event_packet_ready, .-event_packet_ready
	.section	.rodata.command_timed_out.str1.1,"aMS",@progbits,1
.LC14:
	.string	"\033[0;31mE (%d) %s: %s with no commands pending response\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: %s hci layer timeout waiting for response to a command. opcode: 0x%x\033[0m\n"
	.section	.text.command_timed_out,"ax",@progbits
	.literal_position
	.literal .LC12, __func__$7244
	.literal .LC13, .LC4
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.align	4
	.type	command_timed_out, @function
command_timed_out:
.LVL32:
.LFB52:
	.loc 1 382 1 is_stmt 1 view -0
	.loc 1 382 1 is_stmt 0 view .LVU96
	entry	sp, 48
.LCFI5:
	.loc 1 383 5 is_stmt 1 view .LVU97
.LVL33:
	.loc 1 384 5 view .LVU98
	.loc 1 386 5 view .LVU99
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL34:
	.loc 1 387 5 view .LVU100
	.loc 1 387 19 is_stmt 0 view .LVU101
	l32i.n	a10, a2, 8
	.loc 1 388 23 view .LVU102
	movi.n	a3, 0
	.loc 1 387 19 view .LVU103
	call8	list_is_empty
.LVL35:
	.loc 1 388 23 view .LVU104
	bne	a10, a3, .L30
	.loc 1 388 25 discriminator 1 view .LVU105
	l32i.n	a10, a2, 8
	call8	list_front
.LVL36:
	mov.n	a3, a10
.L30:
.LVL37:
	.loc 1 389 5 is_stmt 1 view .LVU106
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL38:
	.loc 1 391 5 view .LVU107
	l32r	a4, .LC12
	l32r	a2, .LC13
.LVL39:
	.loc 1 391 8 is_stmt 0 view .LVU108
	bnez.n	a3, .L31
.LVL40:
.LBB19:
.LBB20:
	.loc 1 392 10 is_stmt 1 view .LVU109
	.loc 1 392 57 view .LVU110
	call8	esp_log_timestamp
.LVL41:
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL42:
	.loc 1 392 230 view .LVU111
	.loc 1 392 232 view .LVU112
	.loc 1 397 282 view .LVU113
	.loc 1 397 284 view .LVU114
	j	.L29
.LVL43:
.L31:
	.loc 1 397 284 is_stmt 0 view .LVU115
.LBE20:
.LBE19:
	.loc 1 397 10 is_stmt 1 discriminator 1 view .LVU116
	.loc 1 397 57 discriminator 1 view .LVU117
	call8	esp_log_timestamp
.LVL44:
	l16ui	a3, a3, 0
.LVL45:
	.loc 1 397 57 is_stmt 0 discriminator 1 view .LVU118
	l32r	a12, .LC17
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a15, a4
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL46:
	.loc 1 397 282 is_stmt 1 discriminator 1 view .LVU119
	.loc 1 397 284 discriminator 1 view .LVU120
.L29:
	.loc 1 399 1 is_stmt 0 view .LVU121
	retw.n
.LFE52:
	.size	command_timed_out, .-command_timed_out
	.section	.text.hci_host_thread_handler,"ax",@progbits
	.literal_position
	.literal .LC18, packet_fragmenter
	.literal .LC19, hci_host_env
	.align	4
	.type	hci_host_thread_handler, @function
hci_host_thread_handler:
.LVL47:
.LFB43:
	.loc 1 204 1 is_stmt 1 view -0
	.loc 1 204 1 is_stmt 0 view .LVU123
	entry	sp, 32
.LCFI6:
	.loc 1 213 5 is_stmt 1 view .LVU124
	.loc 1 213 9 is_stmt 0 view .LVU125
	call8	esp_vhci_host_check_send_available
.LVL48:
	.loc 1 213 8 view .LVU126
	beqz.n	a10, .L34
.LBB25:
	.loc 1 215 9 is_stmt 1 view .LVU127
	.loc 1 215 40 is_stmt 0 view .LVU128
	l32r	a2, .LC18
.LVL49:
	.loc 1 215 40 view .LVU129
	l32i.n	a8, a2, 0
	.loc 1 215 23 view .LVU130
	l32i.n	a10, a8, 8
	callx8	a10
.LVL50:
	.loc 1 216 9 is_stmt 1 view .LVU131
	.loc 1 216 12 is_stmt 0 view .LVU132
	beqz.n	a10, .L37
	.loc 1 217 13 is_stmt 1 view .LVU133
	.loc 1 217 30 is_stmt 0 view .LVU134
	l32i.n	a2, a2, 0
	.loc 1 217 13 view .LVU135
	l32i.n	a2, a2, 12
	callx8	a2
.LVL51:
	.loc 1 217 13 view .LVU136
	j	.L34
.LVL52:
.L37:
	.loc 1 219 13 is_stmt 1 view .LVU137
	.loc 1 219 18 is_stmt 0 view .LVU138
	l32r	a2, .LC19
	l32i.n	a10, a2, 4
.LVL53:
	.loc 1 219 18 view .LVU139
	call8	fixed_queue_is_empty
.LVL54:
	.loc 1 219 16 view .LVU140
	bnez.n	a10, .L38
	.loc 1 219 67 discriminator 1 view .LVU141
	l32i.n	a8, a2, 0
	blti	a8, 1, .L38
	.loc 1 221 17 is_stmt 1 view .LVU142
	l32i.n	a10, a2, 4
	j	.L40
.L38:
	.loc 1 222 20 view .LVU143
	.loc 1 222 25 is_stmt 0 view .LVU144
	l32i.n	a10, a2, 8
	call8	fixed_queue_is_empty
.LVL55:
	.loc 1 222 23 view .LVU145
	bnez.n	a10, .L34
.LVL56:
	.loc 1 222 23 view .LVU146
.LBE25:
.LBB26:
.LBB27:
	.loc 1 223 17 is_stmt 1 view .LVU147
	l32i.n	a10, a2, 8
.LVL57:
.L40:
	.loc 1 223 17 is_stmt 0 view .LVU148
	call8	fixed_queue_process
.LVL58:
.L34:
	.loc 1 223 17 view .LVU149
.LBE27:
.LBE26:
	.loc 1 227 1 view .LVU150
	retw.n
.LFE43:
	.size	hci_host_thread_handler, .-hci_host_thread_handler
	.section	.text.restart_command_waiting_response_timer$constprop$5,"ax",@progbits
	.literal_position
	.literal .LC20, hci_host_env+24
	.literal .LC21, hci_host_env
	.literal .LC22, 8000, 0
	.align	4
	.type	restart_command_waiting_response_timer$constprop$5, @function
restart_command_waiting_response_timer$constprop$5:
.LFB65:
	.loc 1 367 13 is_stmt 1 view -0
	entry	sp, 32
.LCFI7:
.LVL59:
	.loc 1 369 5 view .LVU152
	l32r	a3, .LC20
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL60:
	.loc 1 370 5 view .LVU153
	.loc 1 370 19 is_stmt 0 view .LVU154
	l32r	a2, .LC21
	.loc 1 370 8 view .LVU155
	l8ui	a8, a2, 12
	beqz.n	a8, .L42
	.loc 1 371 9 is_stmt 1 view .LVU156
	l32i.n	a10, a2, 16
	call8	osi_alarm_cancel
.LVL61:
	.loc 1 372 9 view .LVU157
	.loc 1 372 34 is_stmt 0 view .LVU158
	movi.n	a8, 0
	s8i	a8, a2, 12
.L42:
	.loc 1 374 5 is_stmt 1 view .LVU159
	.loc 1 374 10 is_stmt 0 view .LVU160
	l32i.n	a10, a2, 20
	call8	list_is_empty
.LVL62:
	.loc 1 374 8 view .LVU161
	bnez.n	a10, .L43
	.loc 1 375 9 is_stmt 1 view .LVU162
	l32r	a12, .LC22
	l32r	a13, .LC22+4
	l32i.n	a10, a2, 16
	call8	osi_alarm_set
.LVL63:
	.loc 1 376 9 view .LVU163
	.loc 1 376 34 is_stmt 0 view .LVU164
	movi.n	a8, 1
	s8i	a8, a2, 12
.L43:
	.loc 1 378 5 is_stmt 1 view .LVU165
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL64:
	.loc 1 379 1 is_stmt 0 view .LVU166
	retw.n
.LFE65:
	.size	restart_command_waiting_response_timer$constprop$5, .-restart_command_waiting_response_timer$constprop$5
	.section	.text.event_command_ready,"ax",@progbits
	.literal_position
	.literal .LC23, -3125
	.literal .LC24, -64778
	.literal .LC25, packet_fragmenter
	.literal .LC26, hci_host_env
	.literal .LC27, hci_host_env+24
	.align	4
	.type	event_command_ready, @function
event_command_ready:
.LVL65:
.LFB47:
	.loc 1 296 1 is_stmt 1 view -0
	.loc 1 296 1 is_stmt 0 view .LVU168
	entry	sp, 32
.LCFI8:
	.loc 1 297 5 is_stmt 1 view .LVU169
.LVL66:
	.loc 1 298 5 view .LVU170
	.loc 1 300 5 view .LVU171
	.loc 1 300 18 is_stmt 0 view .LVU172
	mov.n	a10, a2
	movi.n	a11, -1
	call8	fixed_queue_dequeue
.LVL67:
	.loc 1 302 18 view .LVU173
	l16ui	a9, a10, 0
	.loc 1 304 5 view .LVU174
	l32r	a8, .LC23
	movi.n	a4, 1
	add.n	a8, a9, a8
	movi.n	a3, 0
	moveqz	a3, a4, a8
	.loc 1 302 7 view .LVU175
	extui	a8, a3, 0, 8
	.loc 1 300 18 view .LVU176
	mov.n	a2, a10
.LVL68:
	.loc 1 302 5 is_stmt 1 view .LVU177
	l32r	a3, .LC25
	.loc 1 302 7 is_stmt 0 view .LVU178
	bnez.n	a8, .L51
	.loc 1 304 5 view .LVU179
	l32r	a5, .LC24
	add.n	a9, a9, a5
	.loc 1 302 7 view .LVU180
	moveqz	a8, a4, a9
	beqz.n	a8, .L48
.L51:
	.loc 1 307 9 is_stmt 1 view .LVU181
	.loc 1 307 26 is_stmt 0 view .LVU182
	l32i.n	a3, a3, 0
	.loc 1 307 9 view .LVU183
	l32i.n	a10, a2, 20
	l32i.n	a3, a3, 12
	callx8	a3
.LVL69:
	.loc 1 308 9 is_stmt 1 view .LVU184
	l32i.n	a10, a2, 20
	call8	free
.LVL70:
	.loc 1 309 9 view .LVU185
	mov.n	a10, a2
	call8	free
.LVL71:
	.loc 1 310 9 view .LVU186
	j	.L47
.L48:
	.loc 1 312 5 view .LVU187
	.loc 1 312 33 is_stmt 0 view .LVU188
	l32r	a4, .LC26
	.loc 1 314 5 view .LVU189
	l32r	a5, .LC27
	.loc 1 312 33 view .LVU190
	l32i.n	a8, a4, 0
	.loc 1 314 5 view .LVU191
	movi.n	a11, -1
	.loc 1 312 33 view .LVU192
	addi.n	a8, a8, -1
	.loc 1 314 5 view .LVU193
	mov.n	a10, a5
	.loc 1 312 33 view .LVU194
	s32i.n	a8, a4, 0
	.loc 1 314 5 is_stmt 1 view .LVU195
	call8	osi_mutex_lock
.LVL72:
	.loc 1 315 5 view .LVU196
	l32i.n	a10, a4, 20
	mov.n	a11, a2
	call8	list_append
.LVL73:
	.loc 1 316 5 view .LVU197
	mov.n	a10, a5
	call8	osi_mutex_unlock
.LVL74:
	.loc 1 319 5 view .LVU198
	.loc 1 319 22 is_stmt 0 view .LVU199
	l32i.n	a3, a3, 0
	.loc 1 319 5 view .LVU200
	l32i.n	a10, a2, 20
	l32i.n	a3, a3, 12
	callx8	a3
.LVL75:
	.loc 1 321 5 is_stmt 1 view .LVU201
	call8	restart_command_waiting_response_timer$constprop$5
.LVL76:
.L47:
	.loc 1 322 1 is_stmt 0 view .LVU202
	retw.n
.LFE47:
	.size	event_command_ready, .-event_command_ready
	.section	.text.hci_shut_down,"ax",@progbits
	.literal_position
	.literal .LC28, hci_host_env
	.literal .LC29, osi_free_func
	.literal .LC30, hci_host_env+24
	.literal .LC31, packet_fragmenter
	.literal .LC32, hal
	.literal .LC33, hci_host_thread
	.align	4
	.global	hci_shut_down
	.type	hci_shut_down, @function
hci_shut_down:
.LFB39:
	.loc 1 124 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI9:
	.loc 1 125 5 view .LVU204
	.loc 1 126 5 view .LVU205
.LBB30:
.LBI30:
	.loc 1 185 13 view .LVU206
.LBB31:
	.loc 1 187 5 view .LVU207
	.loc 1 189 5 view .LVU208
	.loc 1 189 21 is_stmt 0 view .LVU209
	l32r	a2, .LC28
	l32i.n	a10, a2, 4
	.loc 1 189 8 view .LVU210
	beqz.n	a10, .L53
	.loc 1 190 9 is_stmt 1 view .LVU211
	l32r	a11, .LC29
	call8	fixed_queue_free
.LVL77:
.L53:
	.loc 1 192 5 view .LVU212
	.loc 1 192 21 is_stmt 0 view .LVU213
	l32i.n	a10, a2, 8
	.loc 1 192 8 view .LVU214
	beqz.n	a10, .L54
	.loc 1 193 9 is_stmt 1 view .LVU215
	l32r	a11, .LC29
	call8	fixed_queue_free
.LVL78:
.L54:
	.loc 1 196 5 view .LVU216
	.loc 1 197 5 view .LVU217
	l32i.n	a10, a2, 20
	.loc 1 200 40 is_stmt 0 view .LVU218
	movi.n	a3, 0
	.loc 1 197 5 view .LVU219
	call8	list_free
.LVL79:
	.loc 1 198 5 is_stmt 1 view .LVU220
	l32r	a10, .LC30
	call8	osi_mutex_free
.LVL80:
	.loc 1 199 5 view .LVU221
	l32i.n	a10, a2, 16
	call8	osi_alarm_free
.LVL81:
	.loc 1 200 5 view .LVU222
	.loc 1 200 40 is_stmt 0 view .LVU223
	s32i.n	a3, a2, 16
.LBE31:
.LBE30:
	.loc 1 128 5 is_stmt 1 view .LVU224
	.loc 1 128 22 is_stmt 0 view .LVU225
	l32r	a2, .LC31
	l32i.n	a2, a2, 0
	.loc 1 128 5 view .LVU226
	l32i.n	a2, a2, 4
	callx8	a2
.LVL82:
	.loc 1 131 5 is_stmt 1 view .LVU227
	.loc 1 131 8 is_stmt 0 view .LVU228
	l32r	a2, .LC32
	l32i.n	a2, a2, 0
	.loc 1 131 5 view .LVU229
	l32i.n	a2, a2, 4
	callx8	a2
.LVL83:
	.loc 1 133 5 is_stmt 1 view .LVU230
	l32r	a2, .LC33
	l32i.n	a10, a2, 0
	call8	osi_thread_free
.LVL84:
	.loc 1 134 5 view .LVU231
	.loc 1 134 21 is_stmt 0 view .LVU232
	s32i.n	a3, a2, 0
	.loc 1 135 1 view .LVU233
	retw.n
.LFE39:
	.size	hci_shut_down, .-hci_shut_down
	.section	.rodata.hci_start_up.str1.1,"aMS",@progbits,1
.LC38:
	.string	"\033[0;31mE (%d) %s: %s unable to create pending command queue.\033[0m\n"
.LC41:
	.string	"\033[0;31mE (%d) %s: %s unable to create pending packet queue.\033[0m\n"
.LC43:
	.string	"\033[0;31mE (%d) %s: %s unable to create list for commands pending response.\033[0m\n"
.LC49:
	.string	"cmd_rsp_to"
.LC51:
	.string	"\033[0;31mE (%d) %s: %s unable to create command response timer.\033[0m\n"
.LC54:
	.string	"hciT"
	.section	.text.hci_start_up,"ax",@progbits
	.literal_position
	.literal .LC34, hci_host_env
	.literal .LC35, event_command_ready
	.literal .LC36, __func__$7187
	.literal .LC37, .LC4
	.literal .LC39, .LC38
	.literal .LC40, event_packet_ready
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC45, hci_host_env+24
	.literal .LC46, 8000, 0
	.literal .LC47, hci_host_env+12
	.literal .LC48, command_timed_out
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.literal .LC53, 2560
	.literal .LC55, .LC54
	.literal .LC56, hci_host_thread
	.literal .LC57, packet_fragmenter_callbacks
	.literal .LC58, packet_fragmenter
	.literal .LC59, hal_callbacks
	.literal .LC60, hal
	.align	4
	.global	hci_start_up
	.type	hci_start_up, @function
hci_start_up:
.LFB38:
	.loc 1 103 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI10:
	.loc 1 104 5 view .LVU235
.LBB34:
.LBI34:
	.loc 1 143 12 view .LVU236
.LBB35:
	.loc 1 145 5 view .LVU237
	.loc 1 150 5 view .LVU238
	.loc 1 150 34 is_stmt 0 view .LVU239
	l32r	a2, .LC34
	movi.n	a3, 1
	.loc 1 151 34 view .LVU240
	movi	a10, 0xfe
	.loc 1 150 34 view .LVU241
	s32i.n	a3, a2, 0
	.loc 1 151 5 is_stmt 1 view .LVU242
	.loc 1 151 34 is_stmt 0 view .LVU243
	call8	fixed_queue_new
.LVL85:
	.loc 1 151 32 view .LVU244
	s32i.n	a10, a2, 4
	.loc 1 152 5 is_stmt 1 view .LVU245
	.loc 1 152 8 is_stmt 0 view .LVU246
	beqz.n	a10, .L62
	.loc 1 153 9 is_stmt 1 view .LVU247
	l32r	a11, .LC35
	call8	fixed_queue_register_dequeue
.LVL86:
	.loc 1 159 5 view .LVU248
	.loc 1 159 33 is_stmt 0 view .LVU249
	movi	a10, 0xfe
	call8	fixed_queue_new
.LVL87:
	.loc 1 159 31 view .LVU250
	s32i.n	a10, a2, 8
	.loc 1 160 5 is_stmt 1 view .LVU251
	.loc 1 160 8 is_stmt 0 view .LVU252
	bnez.n	a10, .L63
	j	.L72
.L62:
	.loc 1 155 10 is_stmt 1 view .LVU253
	.loc 1 155 57 view .LVU254
	call8	esp_log_timestamp
.LVL88:
	l32r	a11, .LC37
	l32r	a15, .LC36
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC39
	j	.L75
.L63:
	.loc 1 161 9 view .LVU255
	l32r	a11, .LC40
	call8	fixed_queue_register_dequeue
.LVL89:
	.loc 1 168 5 view .LVU256
	.loc 1 169 5 view .LVU257
	.loc 1 169 30 is_stmt 0 view .LVU258
	movi.n	a8, 0
	s8i	a8, a2, 12
	.loc 1 170 5 is_stmt 1 view .LVU259
	.loc 1 170 45 is_stmt 0 view .LVU260
	movi.n	a10, 0
	call8	list_new
.LVL90:
	.loc 1 170 43 view .LVU261
	s32i.n	a10, a2, 20
	.loc 1 171 5 is_stmt 1 view .LVU262
	.loc 1 171 8 is_stmt 0 view .LVU263
	bnez.n	a10, .L73
	j	.L66
.LVL91:
.L72:
	.loc 1 163 10 is_stmt 1 view .LVU264
	.loc 1 163 57 view .LVU265
	call8	esp_log_timestamp
.LVL92:
	l32r	a11, .LC37
	l32r	a15, .LC36
	l32r	a12, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
.L75:
	mov.n	a10, a3
	call8	esp_log_write
.LVL93:
	.loc 1 163 235 view .LVU266
	.loc 1 163 237 view .LVU267
	.loc 1 164 9 view .LVU268
	j	.L65
.LVL94:
.L66:
	.loc 1 172 10 view .LVU269
	.loc 1 172 57 view .LVU270
	call8	esp_log_timestamp
.LVL95:
	l32r	a11, .LC37
	l32r	a15, .LC36
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC44
	j	.L75
.L73:
	.loc 1 175 5 view .LVU271
	l32r	a10, .LC45
	call8	osi_mutex_new
.LVL96:
	.loc 1 176 5 view .LVU272
	.loc 1 176 42 is_stmt 0 view .LVU273
	l32r	a14, .LC46
	l32r	a15, .LC46+4
	l32r	a12, .LC47
.LVL97:
	.loc 1 176 42 view .LVU274
	l32r	a11, .LC48
	l32r	a10, .LC50
	call8	osi_alarm_new
.LVL98:
	.loc 1 176 40 view .LVU275
	s32i.n	a10, a2, 16
	.loc 1 177 5 is_stmt 1 view .LVU276
	.loc 1 177 8 is_stmt 0 view .LVU277
	bnez.n	a10, .L68
	.loc 1 178 10 is_stmt 1 view .LVU278
	.loc 1 178 57 view .LVU279
	call8	esp_log_timestamp
.LVL99:
	l32r	a11, .LC37
	l32r	a15, .LC36
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC52
	j	.L75
.L68:
.LBE35:
.LBE34:
	.loc 1 108 5 view .LVU280
	.loc 1 108 23 is_stmt 0 view .LVU281
	l32r	a11, .LC53
	l32r	a10, .LC55
	movi.n	a14, 2
	movi.n	a13, 0
	movi.n	a12, 0x16
	call8	osi_thread_create
.LVL100:
	.loc 1 108 21 view .LVU282
	l32r	a3, .LC56
	.loc 1 110 16 view .LVU283
	movi.n	a2, -2
	.loc 1 108 21 view .LVU284
	s32i.n	a10, a3, 0
	.loc 1 109 5 is_stmt 1 view .LVU285
	.loc 1 109 8 is_stmt 0 view .LVU286
	bnez.n	a10, .L74
	j	.L61
.LVL101:
.L65:
	.loc 1 105 9 is_stmt 1 view .LVU287
.LDL1:
	.loc 1 119 5 view .LVU288
	call8	hci_shut_down
.LVL102:
	.loc 1 120 5 view .LVU289
	.loc 1 120 12 is_stmt 0 view .LVU290
	movi.n	a2, -1
	j	.L61
.LVL103:
.L74:
	.loc 1 113 5 is_stmt 1 view .LVU291
	.loc 1 113 22 is_stmt 0 view .LVU292
	l32r	a2, .LC58
	.loc 1 113 5 view .LVU293
	l32r	a10, .LC57
	.loc 1 113 22 view .LVU294
	l32i.n	a2, a2, 0
	.loc 1 113 5 view .LVU295
	l32i.n	a2, a2, 0
	callx8	a2
.LVL104:
	.loc 1 114 5 is_stmt 1 view .LVU296
	.loc 1 114 8 is_stmt 0 view .LVU297
	l32r	a2, .LC60
	.loc 1 114 5 view .LVU298
	l32i.n	a11, a3, 0
	.loc 1 114 8 view .LVU299
	l32i.n	a2, a2, 0
	.loc 1 114 5 view .LVU300
	l32r	a10, .LC59
	l32i.n	a2, a2, 0
	callx8	a2
.LVL105:
	.loc 1 116 5 is_stmt 1 view .LVU301
	.loc 1 117 5 view .LVU302
	.loc 1 117 12 is_stmt 0 view .LVU303
	movi.n	a2, 0
.LVL106:
.L61:
	.loc 1 121 1 view .LVU304
	retw.n
.LFE38:
	.size	hci_start_up, .-hci_start_up
	.section	.text.hci_host_task_post,"ax",@progbits
	.literal_position
	.literal .LC61, hci_host_thread_handler
	.literal .LC62, hci_host_thread
	.align	4
	.global	hci_host_task_post
	.type	hci_host_task_post, @function
hci_host_task_post:
.LVL107:
.LFB40:
	.loc 1 139 1 is_stmt 1 view -0
	.loc 1 139 1 is_stmt 0 view .LVU306
	entry	sp, 32
.LCFI11:
	.loc 1 140 5 is_stmt 1 view .LVU307
	.loc 1 140 12 is_stmt 0 view .LVU308
	l32r	a8, .LC62
	movi.n	a13, 0
	l32r	a11, .LC61
	l32i.n	a10, a8, 0
	mov.n	a14, a2
	mov.n	a12, a13
	call8	osi_thread_post
.LVL108:
	.loc 1 141 1 view .LVU309
	mov.n	a2, a10
.LVL109:
	.loc 1 141 1 view .LVU310
	retw.n
.LFE40:
	.size	hci_host_task_post, .-hci_host_task_post
	.section	.rodata.hal_says_packet_ready.str1.1,"aMS",@progbits,1
.LC68:
	.string	"\033[0;33mW (%d) %s: %s command complete event with no matching command. opcode: 0x%x.\033[0m\n"
.LC70:
	.string	"\033[0;33mW (%d) %s: %s command status event with no matching command. opcode: 0x%x\033[0m\n"
	.section	.text.hal_says_packet_ready,"ax",@progbits
	.literal_position
	.literal .LC63, 4096
	.literal .LC64, packet_fragmenter
	.literal .LC65, hci_host_env
	.literal .LC66, __func__$7255
	.literal .LC67, .LC4
	.literal .LC69, .LC68
	.literal .LC71, .LC70
	.align	4
	.type	hal_says_packet_ready, @function
hal_says_packet_ready:
.LVL110:
.LFB53:
	.loc 1 403 1 is_stmt 1 view -0
	.loc 1 403 1 is_stmt 0 view .LVU312
	entry	sp, 48
.LCFI12:
	.loc 1 404 5 is_stmt 1 view .LVU313
	.loc 1 404 8 is_stmt 0 view .LVU314
	l32r	a3, .LC63
	l16ui	a4, a2, 0
	extui	a3, a3, 0, 16
	beq	a4, a3, .L78
	.loc 1 405 9 is_stmt 1 view .LVU315
	.loc 1 405 26 is_stmt 0 view .LVU316
	l32r	a3, .LC64
	.loc 1 405 9 view .LVU317
	mov.n	a10, a2
	.loc 1 405 26 view .LVU318
	l32i.n	a3, a3, 0
	.loc 1 405 9 view .LVU319
	l32i.n	a3, a3, 16
	callx8	a3
.LVL111:
	j	.L77
.L78:
.LVL112:
.LBB41:
.LBB42:
	.loc 1 406 12 is_stmt 1 view .LVU320
.LBB43:
.LBI43:
	.loc 1 414 12 view .LVU321
.LBB44:
	.loc 1 416 5 view .LVU322
	.loc 1 417 5 view .LVU323
	.loc 1 417 44 is_stmt 0 view .LVU324
	l16ui	a4, a2, 4
	.loc 1 417 23 view .LVU325
	addi.n	a3, a2, 8
	.loc 1 417 14 view .LVU326
	add.n	a3, a3, a4
.LVL113:
	.loc 1 418 5 is_stmt 1 view .LVU327
	.loc 1 419 5 view .LVU328
	.loc 1 421 6 view .LVU329
	.loc 1 421 17 is_stmt 0 view .LVU330
	l8ui	a5, a3, 0
.LVL114:
	.loc 1 421 39 is_stmt 1 view .LVU331
	.loc 1 421 54 view .LVU332
	.loc 1 422 5 view .LVU333
	.loc 1 422 10 view .LVU334
	.loc 1 424 6 view .LVU335
	.loc 1 424 205 view .LVU336
	.loc 1 424 207 view .LVU337
	.loc 1 426 5 view .LVU338
	.loc 1 426 8 is_stmt 0 view .LVU339
	movi.n	a4, 0xe
	bne	a5, a4, .L80
	.loc 1 427 10 is_stmt 1 view .LVU340
	.loc 1 427 41 is_stmt 0 view .LVU341
	l8ui	a6, a3, 2
	l32r	a4, .LC65
	s32i.n	a6, a4, 0
.LVL115:
	.loc 1 427 61 is_stmt 1 view .LVU342
	.loc 1 427 76 view .LVU343
	.loc 1 428 10 view .LVU344
	.loc 1 428 79 view .LVU345
	.loc 1 428 94 view .LVU346
	.loc 1 429 9 view .LVU347
	.loc 1 428 53 is_stmt 0 view .LVU348
	l8ui	a4, a3, 4
	.loc 1 428 71 view .LVU349
	slli	a8, a4, 8
	.loc 1 428 29 view .LVU350
	l8ui	a4, a3, 3
	.loc 1 428 17 view .LVU351
	add.n	a4, a4, a8
	.loc 1 429 22 view .LVU352
	extui	a4, a4, 0, 16
	mov.n	a10, a4
	call8	get_waiting_command
.LVL116:
	.loc 1 429 22 view .LVU353
	mov.n	a3, a10
.LVL117:
	.loc 1 430 9 is_stmt 1 view .LVU354
	.loc 1 430 12 is_stmt 0 view .LVU355
	bnez.n	a10, .L81
	.loc 1 431 14 is_stmt 1 view .LVU356
	.loc 1 431 61 view .LVU357
	call8	esp_log_timestamp
.LVL118:
	l32r	a11, .LC67
	s32i.n	a4, sp, 0
	l32r	a15, .LC66
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC69
	j	.L100
.L81:
	.loc 1 432 16 view .LVU358
	.loc 1 432 30 is_stmt 0 view .LVU359
	l32i.n	a4, a10, 8
	.loc 1 432 19 view .LVU360
	beqz.n	a4, .L83
	.loc 1 433 13 is_stmt 1 view .LVU361
	l32i.n	a11, a10, 16
	mov.n	a10, a2
	callx8	a4
.LVL119:
	j	.L82
.L83:
	.loc 1 434 16 view .LVU362
	.loc 1 434 30 is_stmt 0 view .LVU363
	l32i.n	a10, a10, 4
	.loc 1 434 19 view .LVU364
	beqz.n	a10, .L82
	.loc 1 435 13 is_stmt 1 view .LVU365
	mov.n	a11, a2
	call8	future_ready
.LVL120:
	j	.L82
.LVL121:
.L80:
	.loc 1 439 12 view .LVU366
	.loc 1 439 15 is_stmt 0 view .LVU367
	movi.n	a4, 0xf
	beq	a5, a4, .L84
.LVL122:
	.loc 1 439 15 view .LVU368
.LBE44:
.LBE43:
	.loc 1 407 9 is_stmt 1 view .LVU369
	mov.n	a10, a2
	call8	dispatch_reassembled
.LVL123:
	j	.L77
.LVL124:
.L84:
.LBB47:
.LBB46:
.LBB45:
	.loc 1 440 9 view .LVU370
	.loc 1 441 10 view .LVU371
	.loc 1 442 41 is_stmt 0 view .LVU372
	l8ui	a8, a3, 3
	l32r	a4, .LC65
	.loc 1 441 17 view .LVU373
	l8ui	a6, a3, 2
.LVL125:
	.loc 1 441 39 is_stmt 1 view .LVU374
	.loc 1 441 54 view .LVU375
	.loc 1 442 10 view .LVU376
	.loc 1 442 41 is_stmt 0 view .LVU377
	s32i.n	a8, a4, 0
.LVL126:
	.loc 1 442 61 is_stmt 1 view .LVU378
	.loc 1 442 76 view .LVU379
	.loc 1 443 10 view .LVU380
	.loc 1 443 79 view .LVU381
	.loc 1 443 94 view .LVU382
	.loc 1 447 9 view .LVU383
	.loc 1 443 53 is_stmt 0 view .LVU384
	l8ui	a4, a3, 5
	.loc 1 443 71 view .LVU385
	slli	a8, a4, 8
	.loc 1 443 29 view .LVU386
	l8ui	a4, a3, 4
	.loc 1 443 17 view .LVU387
	add.n	a4, a4, a8
	.loc 1 447 22 view .LVU388
	extui	a4, a4, 0, 16
	mov.n	a10, a4
	call8	get_waiting_command
.LVL127:
	.loc 1 447 22 view .LVU389
	mov.n	a3, a10
.LVL128:
	.loc 1 448 9 is_stmt 1 view .LVU390
	.loc 1 448 12 is_stmt 0 view .LVU391
	bnez.n	a10, .L85
	.loc 1 449 14 is_stmt 1 view .LVU392
	.loc 1 449 61 view .LVU393
	call8	esp_log_timestamp
.LVL129:
	l32r	a11, .LC67
	l32r	a15, .LC66
	l32r	a12, .LC71
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.LVL130:
.L100:
	.loc 1 449 61 is_stmt 0 view .LVU394
	movi.n	a10, 2
	call8	esp_log_write
.LVL131:
	.loc 1 449 267 is_stmt 1 view .LVU395
	.loc 1 449 269 view .LVU396
	j	.L82
.LVL132:
.L85:
	.loc 1 450 16 view .LVU397
	.loc 1 450 30 is_stmt 0 view .LVU398
	l32i.n	a4, a10, 12
	.loc 1 450 19 view .LVU399
	beqz.n	a4, .L82
	.loc 1 451 13 is_stmt 1 view .LVU400
	l32i.n	a12, a10, 16
	l32i.n	a11, a10, 20
	mov.n	a10, a6
	callx8	a4
.LVL133:
.L82:
	.loc 1 451 13 is_stmt 0 view .LVU401
.LBE45:
	.loc 1 459 5 is_stmt 1 view .LVU402
	call8	restart_command_waiting_response_timer$constprop$5
.LVL134:
	.loc 1 462 5 view .LVU403
	.loc 1 462 21 is_stmt 0 view .LVU404
	l32r	a4, .LC65
	.loc 1 462 8 view .LVU405
	l32i.n	a8, a4, 0
	beqz.n	a8, .L87
	.loc 1 463 14 view .LVU406
	l32i.n	a10, a4, 4
	call8	fixed_queue_is_empty
.LVL135:
	.loc 1 462 38 view .LVU407
	bnez.n	a10, .L87
	.loc 1 464 9 is_stmt 1 view .LVU408
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL136:
.L87:
	.loc 1 467 5 view .LVU409
	.loc 1 481 9 is_stmt 0 view .LVU410
	mov.n	a10, a2
	.loc 1 467 8 view .LVU411
	beqz.n	a3, .L101
	.loc 1 469 9 is_stmt 1 view .LVU412
	.loc 1 469 12 is_stmt 0 view .LVU413
	movi.n	a4, 0xf
	beq	a5, a4, .L90
	.loc 1 469 32 view .LVU414
	l32i.n	a4, a3, 8
	bnez.n	a4, .L91
	.loc 1 470 49 view .LVU415
	l32i.n	a4, a3, 4
	bnez.n	a4, .L91
.L90:
	.loc 1 471 13 is_stmt 1 view .LVU416
	mov.n	a10, a2
	call8	free
.LVL137:
.L91:
	.loc 1 475 9 view .LVU417
	.loc 1 475 12 is_stmt 0 view .LVU418
	movi.n	a2, 0xe
.LVL138:
	.loc 1 475 12 view .LVU419
	beq	a5, a2, .L92
	.loc 1 475 32 view .LVU420
	l32i.n	a2, a3, 12
	bnez.n	a2, .L93
.L92:
	.loc 1 476 13 is_stmt 1 view .LVU421
	l32i.n	a10, a3, 20
	call8	free
.LVL139:
.L93:
	.loc 1 479 9 view .LVU422
	mov.n	a10, a3
	j	.L101
.L101:
	.loc 1 481 9 is_stmt 0 view .LVU423
	call8	free
.LVL140:
.L77:
	.loc 1 481 9 view .LVU424
.LBE46:
.LBE47:
.LBE42:
.LBE41:
	.loc 1 409 1 view .LVU425
	retw.n
.LFE53:
	.size	hal_says_packet_ready, .-hal_says_packet_ready
	.section	.rodata.transmit_command_futured.str1.1,"aMS",@progbits,1
.LC72:
	.string	"wait_entry != NULL"
.LC75:
	.string	"/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/hci_layer.c"
	.section	.text.transmit_command_futured,"ax",@progbits
	.literal_position
	.literal .LC73, .LC72
	.literal .LC74, __func__$7209
	.literal .LC76, .LC75
	.literal .LC77, 8192
	.literal .LC78, hci_host_env
	.align	4
	.type	transmit_command_futured, @function
transmit_command_futured:
.LVL141:
.LFB45:
	.loc 1 261 1 is_stmt 1 view -0
	.loc 1 261 1 is_stmt 0 view .LVU427
	entry	sp, 32
.LCFI13:
	.loc 1 262 5 is_stmt 1 view .LVU428
	.loc 1 262 37 is_stmt 0 view .LVU429
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL142:
	mov.n	a3, a10
.LVL143:
	.loc 1 263 4 is_stmt 1 view .LVU430
	.loc 1 263 27 is_stmt 0 view .LVU431
	bnez.n	a10, .L103
.LVL144:
.LBB50:
.LBB51:
	.loc 1 263 29 view .LVU432
	l32r	a13, .LC73
	l32r	a12, .LC74
	l32r	a10, .LC76
	movi	a11, 0x107
	call8	__assert_func
.LVL145:
.L103:
	.loc 1 263 29 view .LVU433
.LBE51:
.LBE50:
	.loc 1 265 5 is_stmt 1 view .LVU434
	.loc 1 265 24 is_stmt 0 view .LVU435
	call8	future_new
.LVL146:
	.loc 1 267 46 view .LVU436
	l16ui	a9, a2, 4
	.loc 1 267 23 view .LVU437
	addi.n	a8, a2, 8
	.loc 1 274 20 view .LVU438
	l32r	a5, .LC77
	.loc 1 267 14 view .LVU439
	add.n	a8, a8, a9
	.loc 1 268 61 view .LVU440
	l8ui	a9, a8, 1
	.loc 1 270 25 view .LVU441
	s32i.n	a2, a3, 20
	.loc 1 268 37 view .LVU442
	l8ui	a8, a8, 0
	.loc 1 274 20 view .LVU443
	s16i	a5, a2, 0
	.loc 1 276 5 view .LVU444
	l32r	a2, .LC78
.LVL147:
	.loc 1 268 79 view .LVU445
	slli	a9, a9, 8
	.loc 1 268 48 view .LVU446
	add.n	a8, a8, a9
	.loc 1 265 24 view .LVU447
	mov.n	a4, a10
.LVL148:
	.loc 1 267 5 is_stmt 1 view .LVU448
	.loc 1 268 6 view .LVU449
	.loc 1 269 33 is_stmt 0 view .LVU450
	s32i.n	a10, a3, 4
	.loc 1 276 5 view .LVU451
	l32i.n	a10, a2, 4
	.loc 1 268 25 view .LVU452
	s16i	a8, a3, 0
	.loc 1 268 87 is_stmt 1 view .LVU453
.LVL149:
	.loc 1 268 102 view .LVU454
	.loc 1 269 5 view .LVU455
	.loc 1 270 5 view .LVU456
	.loc 1 274 5 view .LVU457
	.loc 1 276 5 view .LVU458
	movi.n	a12, -1
	mov.n	a11, a3
	call8	fixed_queue_enqueue
.LVL150:
	.loc 1 277 5 view .LVU459
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL151:
	.loc 1 278 5 view .LVU460
	.loc 1 279 1 is_stmt 0 view .LVU461
	mov.n	a2, a4
	retw.n
.LFE45:
	.size	transmit_command_futured, .-transmit_command_futured
	.section	.rodata.transmit_command.str1.1,"aMS",@progbits,1
.LC81:
	.string	"\033[0;31mE (%d) %s: %s couldn't allocate space for wait entry.\033[0m\n"
	.section	.text.transmit_command,"ax",@progbits
	.literal_position
	.literal .LC79, __func__$7204
	.literal .LC80, .LC4
	.literal .LC82, .LC81
	.literal .LC83, 8192
	.literal .LC84, hci_host_env
	.align	4
	.type	transmit_command, @function
transmit_command:
.LVL152:
.LFB44:
	.loc 1 234 1 is_stmt 1 view -0
	.loc 1 234 1 is_stmt 0 view .LVU463
	entry	sp, 32
.LCFI14:
	.loc 1 235 5 is_stmt 1 view .LVU464
	.loc 1 236 5 view .LVU465
	.loc 1 236 37 is_stmt 0 view .LVU466
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL153:
	.loc 1 237 5 is_stmt 1 view .LVU467
	.loc 1 237 8 is_stmt 0 view .LVU468
	bnez.n	a10, .L105
.LVL154:
.LBB54:
.LBB55:
	.loc 1 238 10 is_stmt 1 view .LVU469
	.loc 1 238 57 view .LVU470
	call8	esp_log_timestamp
.LVL155:
	.loc 1 238 57 is_stmt 0 view .LVU471
	l32r	a11, .LC80
	l32r	a15, .LC79
	l32r	a12, .LC82
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL156:
	.loc 1 238 236 is_stmt 1 view .LVU472
	.loc 1 238 238 view .LVU473
	.loc 1 239 9 view .LVU474
	j	.L104
.LVL157:
.L105:
	.loc 1 239 9 is_stmt 0 view .LVU475
.LBE55:
.LBE54:
	.loc 1 242 5 is_stmt 1 view .LVU476
	.loc 1 242 37 is_stmt 0 view .LVU477
	l16ui	a9, a2, 4
	.loc 1 242 14 view .LVU478
	addi.n	a8, a2, 8
	.loc 1 242 12 view .LVU479
	add.n	a8, a8, a9
.LVL158:
	.loc 1 243 6 is_stmt 1 view .LVU480
	.loc 1 243 61 is_stmt 0 view .LVU481
	l8ui	a9, a8, 1
	.loc 1 244 35 view .LVU482
	s32i.n	a3, a10, 8
	.loc 1 251 20 view .LVU483
	l32r	a3, .LC83
.LVL159:
	.loc 1 243 37 view .LVU484
	l8ui	a8, a8, 0
.LVL160:
	.loc 1 246 25 view .LVU485
	s32i.n	a2, a10, 20
	.loc 1 243 79 view .LVU486
	slli	a9, a9, 8
	.loc 1 251 20 view .LVU487
	s16i	a3, a2, 0
	.loc 1 255 5 view .LVU488
	l32r	a2, .LC84
.LVL161:
	.loc 1 243 48 view .LVU489
	add.n	a8, a8, a9
	.loc 1 243 25 view .LVU490
	s16i	a8, a10, 0
	.loc 1 243 87 is_stmt 1 view .LVU491
.LVL162:
	.loc 1 243 102 view .LVU492
	.loc 1 244 5 view .LVU493
	.loc 1 245 5 view .LVU494
	.loc 1 245 33 is_stmt 0 view .LVU495
	s32i.n	a4, a10, 12
	.loc 1 246 5 is_stmt 1 view .LVU496
	.loc 1 247 5 view .LVU497
	.loc 1 247 25 is_stmt 0 view .LVU498
	s32i.n	a5, a10, 16
	.loc 1 251 5 is_stmt 1 view .LVU499
	.loc 1 252 6 view .LVU500
	.loc 1 252 214 view .LVU501
	.loc 1 252 216 view .LVU502
	.loc 1 253 5 view .LVU503
	.loc 1 255 5 view .LVU504
	mov.n	a11, a10
	l32i.n	a10, a2, 4
.LVL163:
	.loc 1 255 5 is_stmt 0 view .LVU505
	movi.n	a12, -1
	call8	fixed_queue_enqueue
.LVL164:
	.loc 1 256 5 is_stmt 1 view .LVU506
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL165:
.L104:
	.loc 1 258 1 is_stmt 0 view .LVU507
	retw.n
.LFE44:
	.size	transmit_command, .-transmit_command
	.section	.rodata.transmit_downward.str1.1,"aMS",@progbits,1
.LC88:
	.string	"\033[0;33mW (%d) %s: %s legacy transmit of command. Use transmit_command instead.\n\033[0m\n"
	.section	.text.transmit_downward,"ax",@progbits
	.literal_position
	.literal .LC85, 8192
	.literal .LC86, __func__$7216
	.literal .LC87, .LC4
	.literal .LC89, .LC88
	.literal .LC90, hci_host_env
	.align	4
	.type	transmit_downward, @function
transmit_downward:
.LVL166:
.LFB46:
	.loc 1 282 1 is_stmt 1 view -0
	.loc 1 282 1 is_stmt 0 view .LVU509
	entry	sp, 32
.LCFI15:
	.loc 1 283 5 is_stmt 1 view .LVU510
	.loc 1 283 8 is_stmt 0 view .LVU511
	l32r	a8, .LC85
	.loc 1 282 1 view .LVU512
	extui	a2, a2, 0, 16
	.loc 1 283 8 view .LVU513
	extui	a8, a8, 0, 16
	.loc 1 282 1 view .LVU514
	mov.n	a10, a3
	.loc 1 283 8 view .LVU515
	bne	a2, a8, .L108
	.loc 1 284 9 is_stmt 1 view .LVU516
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	transmit_command
.LVL167:
	.loc 1 285 10 view .LVU517
	.loc 1 285 57 view .LVU518
	call8	esp_log_timestamp
.LVL168:
	l32r	a11, .LC87
	l32r	a15, .LC86
	l32r	a12, .LC89
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL169:
	j	.L109
.L108:
	.loc 1 287 9 view .LVU519
	l32r	a8, .LC90
	movi.n	a12, -1
	l32i.n	a10, a8, 8
	mov.n	a11, a3
	call8	fixed_queue_enqueue
.LVL170:
.L109:
	.loc 1 290 5 view .LVU520
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL171:
	.loc 1 291 1 is_stmt 0 view .LVU521
	retw.n
.LFE46:
	.size	transmit_downward, .-transmit_downward
	.section	.text.hci_layer_get_interface,"ax",@progbits
	.literal_position
	.literal .LC91, hal
	.literal .LC92, packet_fragmenter
	.literal .LC93, interface_created
	.literal .LC94, interface
	.literal .LC95, transmit_command
	.literal .LC96, transmit_command_futured
	.literal .LC97, transmit_downward
	.align	4
	.global	hci_layer_get_interface
	.type	hci_layer_get_interface, @function
hci_layer_get_interface:
.LFB59:
	.loc 1 559 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI16:
	.loc 1 560 5 view .LVU523
	.loc 1 560 11 is_stmt 0 view .LVU524
	call8	hci_hal_h4_get_interface
.LVL172:
	.loc 1 560 9 view .LVU525
	l32r	a2, .LC91
	s32i.n	a10, a2, 0
	.loc 1 561 5 is_stmt 1 view .LVU526
	.loc 1 561 25 is_stmt 0 view .LVU527
	call8	packet_fragmenter_get_interface
.LVL173:
.LBB58:
.LBB59:
	.loc 1 540 9 view .LVU528
	l32r	a8, .LC93
.LBE59:
.LBE58:
	.loc 1 561 23 view .LVU529
	l32r	a2, .LC92
.LBB62:
.LBB60:
	.loc 1 540 8 view .LVU530
	l8ui	a9, a8, 0
.LBE60:
.LBE62:
	.loc 1 561 23 view .LVU531
	s32i.n	a10, a2, 0
	.loc 1 563 5 is_stmt 1 view .LVU532
.LBB63:
.LBI58:
	.loc 1 538 13 view .LVU533
.LBB61:
	.loc 1 540 5 view .LVU534
	l32r	a2, .LC94
	.loc 1 540 8 is_stmt 0 view .LVU535
	bnez.n	a9, .L111
	.loc 1 541 9 is_stmt 1 view .LVU536
	.loc 1 541 36 is_stmt 0 view .LVU537
	l32r	a9, .LC95
	s32i.n	a9, a2, 4
	.loc 1 542 9 is_stmt 1 view .LVU538
	.loc 1 542 44 is_stmt 0 view .LVU539
	l32r	a9, .LC96
	s32i.n	a9, a2, 8
	.loc 1 543 9 is_stmt 1 view .LVU540
	.loc 1 543 37 is_stmt 0 view .LVU541
	l32r	a9, .LC97
	s32i.n	a9, a2, 12
	.loc 1 544 9 is_stmt 1 view .LVU542
	.loc 1 544 27 is_stmt 0 view .LVU543
	movi.n	a9, 1
	s8i	a9, a8, 0
.L111:
.LBE61:
.LBE63:
	.loc 1 564 5 is_stmt 1 view .LVU544
	.loc 1 565 1 is_stmt 0 view .LVU545
	retw.n
.LFE59:
	.size	hci_layer_get_interface, .-hci_layer_get_interface
	.section	.rodata.__func__$7204,"a"
	.type	__func__$7204, @object
	.size	__func__$7204, 17
__func__$7204:
	.string	"transmit_command"
	.section	.rodata.__func__$7209,"a"
	.type	__func__$7209, @object
	.size	__func__$7209, 25
__func__$7209:
	.string	"transmit_command_futured"
	.section	.rodata.__func__$7216,"a"
	.type	__func__$7216, @object
	.size	__func__$7216, 18
__func__$7216:
	.string	"transmit_downward"
	.section	.rodata.__func__$7244,"a"
	.type	__func__$7244, @object
	.size	__func__$7244, 18
__func__$7244:
	.string	"command_timed_out"
	.section	.rodata.__func__$7187,"a"
	.type	__func__$7187, @object
	.size	__func__$7187, 19
__func__$7187:
	.string	"hci_layer_init_env"
	.section	.rodata.__func__$7264,"a"
	.type	__func__$7264, @object
	.size	__func__$7264, 19
__func__$7264:
	.string	"event_to_data_type"
	.section	.rodata.__func__$7255,"a"
	.type	__func__$7255, @object
	.size	__func__$7255, 22
__func__$7255:
	.string	"filter_incoming_event"
	.section	.rodata.packet_fragmenter_callbacks,"a"
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
	.section	.rodata.hal_callbacks,"a"
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
	.section	.bss.hci_host_thread,"aw",@nobits
	.align	4
	.type	hci_host_thread, @object
	.size	hci_host_thread, 4
hci_host_thread:
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
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI0-.LFB49
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI2-.LFB55
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
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI5-.LFB52
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI6-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI7-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI9-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI10-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI11-.LFB40
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
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI13-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI14-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI15-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI16-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 10 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/time.h"
	.file 13 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/unistd.h"
	.file 14 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.file 15 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
	.file 16 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 17 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 18 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/ctype.h"
	.file 19 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 20 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 21 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 22 "/home/dieter/Development/esp-idf/components/lwip/include/apps/sntp/../../../lwip/src/include/lwip/inet.h"
	.file 23 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/stack/include/stack/bt_types.h"
	.file 24 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/common/include/common/bt_trace.h"
	.file 25 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/common/include/common/bt_defs.h"
	.file 26 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.file 27 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/thread.h"
	.file 28 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/stack/include/stack/btu.h"
	.file 29 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.file 30 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/include/hci/hci_hal.h"
	.file 31 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/future.h"
	.file 32 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/include/hci/hci_layer.h"
	.file 33 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/include/hci/packet_fragmenter.h"
	.file 34 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/list.h"
	.file 35 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/alarm.h"
	.file 36 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/mutex.h"
	.file 37 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/fixed_queue.h"
	.file 38 "/home/dieter/Development/esp-idf/components/bt/include/esp_bt.h"
	.file 39 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e22
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF496
	.byte	0xc
	.4byte	.LASF497
	.4byte	.LASF498
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	0x31
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	0x3d
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x5c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x5c
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x3d
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x31
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0xa1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0xb9
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x31
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0x107
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0x107
	.byte	0
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x117
	.uleb128 0xa
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x13b
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xe5
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0x117
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0xad
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0xe
	.byte	0x4
	.4byte	0x162
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	0x162
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x155
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1d4
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1da
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17a
	.uleb128 0x9
	.4byte	0x16e
	.4byte	0x1ea
	.uleb128 0xa
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x26d
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b2
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b2
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x16e
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x16e
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x2c2
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x304
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x304
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x30a
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x321
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c2
	.uleb128 0x9
	.4byte	0x31a
	.4byte	0x31a
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x320
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x26d
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x34f
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x34f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5c
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3c8
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x34f
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x68
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x327
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x52c
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x355
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x52c
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x772
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x772
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x772
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x15c
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8da
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8e0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8f1
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x15c
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8f7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8fd
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x15c
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x90e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x304
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c2
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x733
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x772
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x91a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x15c
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3cd
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x675
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x34f
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x68
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x327
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x52c
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x153
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x693
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6c2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6e6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x700
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x327
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x34f
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x706
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x716
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x327
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xc0
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x147
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x13b
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x693
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.uleb128 0x18
	.4byte	0x15c
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x675
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.uleb128 0x18
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x169
	.uleb128 0x3
	.4byte	0x6b7
	.uleb128 0xe
	.byte	0x4
	.4byte	0x699
	.uleb128 0x17
	.4byte	0xcc
	.4byte	0x6e6
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.uleb128 0x18
	.4byte	0xcc
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c8
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x700
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ec
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x716
	.uleb128 0xa
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x726
	.uleb128 0xa
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x532
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x76c
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x76c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x772
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x733
	.uleb128 0xe
	.byte	0x4
	.4byte	0x726
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7bf
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7bf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7bf
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x3d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x9a
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3d
	.4byte	0x7cf
	.uleb128 0xa
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x816
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d4
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x816
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8c5
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x15c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x13b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x13b
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x13b
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8c5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x13b
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x13b
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x13b
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x13b
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x13b
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x162
	.4byte	0x8d5
	.uleb128 0xa
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF334
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7cf
	.uleb128 0x1a
	.4byte	0x8f1
	.uleb128 0x18
	.4byte	0x52c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x778
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x1a
	.4byte	0x90e
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x914
	.uleb128 0xe
	.byte	0x4
	.4byte	0x903
	.uleb128 0xe
	.byte	0x4
	.4byte	0x81c
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c8
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c8
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c8
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x52c
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x50
	.uleb128 0x5
	.4byte	.LASF125
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x6f
	.uleb128 0x5
	.4byte	.LASF126
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x87
	.uleb128 0x3
	.4byte	0x978
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x15c
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x9
	.byte	0x94
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x9b1
	.uleb128 0xa
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0x9a1
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x9
	.byte	0xb4
	.byte	0xe
	.4byte	0x9a1
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x9
	.byte	0xb6
	.byte	0xe
	.4byte	0x9a1
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x9
	.byte	0xb7
	.byte	0xe
	.4byte	0x9a1
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x9
	.byte	0xbd
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x9
	.byte	0xbe
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	0x38
	.4byte	0xa09
	.uleb128 0xa
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x9f9
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x9
	.byte	0xbf
	.byte	0x1b
	.4byte	0xa09
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x9
	.byte	0xc0
	.byte	0x1b
	.4byte	0xa09
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x9
	.byte	0xc1
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x9
	.byte	0xc2
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x9
	.4byte	0x6bd
	.4byte	0xa4e
	.uleb128 0xa
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0xa3e
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x9
	.byte	0xc4
	.byte	0x1b
	.4byte	0xa4e
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x9
	.byte	0xd1
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x9
	.byte	0xd4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x9
	.byte	0xd6
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x9
	.byte	0xda
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x9
	.byte	0xed
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x9
	.byte	0xee
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x9
	.byte	0xf6
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x9
	.byte	0xf7
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x9
	.byte	0xf9
	.byte	0x1d
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x9
	.byte	0xfa
	.byte	0x1d
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x9
	.byte	0xfd
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x9
	.byte	0xfe
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x100
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x160
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x193
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x194
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x195
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x196
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x9
	.2byte	0x198
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x199
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x9
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x9
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x9
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x9
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x9
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x9
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0x9
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0x9
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x9
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x9
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x9
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0x9
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x9
	.4byte	0x38
	.4byte	0xc9f
	.uleb128 0xa
	.4byte	0x31
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0xc8f
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x9
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0xc9f
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x9
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0xc9f
	.uleb128 0x9
	.4byte	0x63
	.4byte	0xcce
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	0xcbe
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x9
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0xcce
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0x9
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0xcce
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x9
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0xa09
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xd0a
	.uleb128 0xa
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0xcfa
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x9
	.2byte	0x2b7
	.byte	0x12
	.4byte	0xd0a
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x9
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x9
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x9
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x9
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0x9
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0x9
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0x9
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x9
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x9
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x30b
	.byte	0x11
	.4byte	0x31
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x9
	.2byte	0x315
	.byte	0x11
	.4byte	0x31
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x318
	.byte	0x11
	.4byte	0x31
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x325
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x9
	.2byte	0x326
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x9
	.2byte	0x327
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x9
	.2byte	0x328
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x9
	.2byte	0x329
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x9
	.4byte	0x38
	.4byte	0xe11
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0xe06
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x9
	.2byte	0x32d
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0x9
	.2byte	0x32e
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0x9
	.2byte	0x32f
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0x9
	.2byte	0x330
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0x9
	.2byte	0x331
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0x9
	.2byte	0x332
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0x9
	.2byte	0x333
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0x9
	.2byte	0x334
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0x9
	.2byte	0x335
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0x9
	.2byte	0x336
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0x9
	.2byte	0x337
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0x9
	.2byte	0x338
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0x9
	.2byte	0x339
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0x9
	.2byte	0x33a
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0x9
	.2byte	0x33b
	.byte	0x1b
	.4byte	0xe11
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0x9
	.2byte	0x343
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0x9
	.2byte	0x344
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x9
	.2byte	0x346
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0x9
	.2byte	0x347
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0x9
	.2byte	0x349
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0x9
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0x9
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0x9
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0x9
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x9
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x9
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x9
	.2byte	0x390
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x9
	.2byte	0x392
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0x9
	.2byte	0x393
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF238
	.byte	0x9
	.2byte	0x394
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF239
	.byte	0x9
	.2byte	0x395
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF240
	.byte	0x9
	.2byte	0x396
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x9
	.2byte	0x397
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0x9
	.2byte	0x398
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0x9
	.2byte	0x399
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0x9
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0x9
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF246
	.byte	0x9
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0x9
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0x9
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0x9
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0xa
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0xa
	.2byte	0x500
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0xa
	.2byte	0x503
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0xa
	.2byte	0x504
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x507
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0xa
	.2byte	0x508
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0xa
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0xa
	.2byte	0x510
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0xa
	.2byte	0x513
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0xa
	.2byte	0x514
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0xa
	.2byte	0x517
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF263
	.byte	0xa
	.2byte	0x518
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1b
	.4byte	.LASF264
	.byte	0xa
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF265
	.byte	0xa
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x38
	.uleb128 0x1a
	.4byte	0x1106
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0x9
	.4byte	0x6bd
	.4byte	0x1116
	.uleb128 0xa
	.4byte	0x31
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	0x1106
	.uleb128 0x1c
	.4byte	.LASF266
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0x1116
	.uleb128 0xe
	.byte	0x4
	.4byte	0x954
	.uleb128 0x1c
	.4byte	.LASF267
	.byte	0xc
	.byte	0x9a
	.byte	0xd
	.4byte	0xb9
	.uleb128 0x1c
	.4byte	.LASF268
	.byte	0xc
	.byte	0x9b
	.byte	0xc
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x15c
	.4byte	0x1155
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF269
	.byte	0xc
	.byte	0x9e
	.byte	0xe
	.4byte	0x1145
	.uleb128 0x1c
	.4byte	.LASF270
	.byte	0xd
	.byte	0x10
	.byte	0xf
	.4byte	0x116d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x1c
	.4byte	.LASF271
	.byte	0xd
	.byte	0xfc
	.byte	0xe
	.4byte	0x15c
	.uleb128 0x1c
	.4byte	.LASF272
	.byte	0xd
	.byte	0xfd
	.byte	0xc
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF273
	.byte	0xd
	.byte	0xfd
	.byte	0x14
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF274
	.byte	0xd
	.byte	0xfd
	.byte	0x1c
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF275
	.byte	0xd
	.byte	0xff
	.byte	0xc
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x6bd
	.4byte	0x11ba
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0x11af
	.uleb128 0x1c
	.4byte	.LASF276
	.byte	0xe
	.byte	0x14
	.byte	0x1b
	.4byte	0x11ba
	.uleb128 0x1c
	.4byte	.LASF277
	.byte	0xe
	.byte	0x15
	.byte	0xc
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF278
	.byte	0xf
	.byte	0x58
	.byte	0x10
	.4byte	0x153
	.uleb128 0x5
	.4byte	.LASF279
	.byte	0x10
	.byte	0x4f
	.byte	0x17
	.4byte	0x11d7
	.uleb128 0x5
	.4byte	.LASF280
	.byte	0x11
	.byte	0x30
	.byte	0x11
	.4byte	0x954
	.uleb128 0x5
	.4byte	.LASF281
	.byte	0x11
	.byte	0x34
	.byte	0x12
	.4byte	0x978
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x1212
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0x1207
	.uleb128 0x1c
	.4byte	.LASF282
	.byte	0x12
	.byte	0xa5
	.byte	0x13
	.4byte	0x1212
	.uleb128 0xf
	.4byte	.LASF283
	.byte	0x4
	.byte	0x13
	.byte	0x33
	.byte	0x8
	.4byte	0x123e
	.uleb128 0xc
	.4byte	.LASF284
	.byte	0x13
	.byte	0x34
	.byte	0x9
	.4byte	0x11fb
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF285
	.byte	0x13
	.byte	0x39
	.byte	0x19
	.4byte	0x1223
	.uleb128 0xf
	.4byte	.LASF286
	.byte	0x14
	.byte	0x14
	.byte	0x3b
	.byte	0x8
	.4byte	0x1272
	.uleb128 0xc
	.4byte	.LASF284
	.byte	0x14
	.byte	0x3c
	.byte	0x9
	.4byte	0x1272
	.byte	0
	.uleb128 0xc
	.4byte	.LASF287
	.byte	0x14
	.byte	0x3e
	.byte	0x8
	.4byte	0x11ef
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x11fb
	.4byte	0x1282
	.uleb128 0xa
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF288
	.byte	0x14
	.byte	0x43
	.byte	0x19
	.4byte	0x124a
	.uleb128 0x7
	.byte	0x14
	.byte	0x15
	.byte	0x46
	.byte	0x3
	.4byte	0x12b0
	.uleb128 0x1e
	.string	"ip6"
	.byte	0x15
	.byte	0x47
	.byte	0x10
	.4byte	0x1282
	.uleb128 0x1e
	.string	"ip4"
	.byte	0x15
	.byte	0x48
	.byte	0x10
	.4byte	0x123e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF289
	.byte	0x18
	.byte	0x15
	.byte	0x45
	.byte	0x10
	.4byte	0x12d8
	.uleb128 0xc
	.4byte	.LASF290
	.byte	0x15
	.byte	0x49
	.byte	0x5
	.4byte	0x128e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF291
	.byte	0x15
	.byte	0x4b
	.byte	0x8
	.4byte	0x11ef
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF292
	.byte	0x15
	.byte	0x4c
	.byte	0x3
	.4byte	0x12b0
	.uleb128 0x3
	.4byte	0x12d8
	.uleb128 0x1c
	.4byte	.LASF293
	.byte	0x15
	.byte	0x4e
	.byte	0x18
	.4byte	0x12e4
	.uleb128 0x1b
	.4byte	.LASF294
	.byte	0x15
	.2byte	0x176
	.byte	0x18
	.4byte	0x12e4
	.uleb128 0x1b
	.4byte	.LASF295
	.byte	0x15
	.2byte	0x177
	.byte	0x18
	.4byte	0x12e4
	.uleb128 0x1b
	.4byte	.LASF296
	.byte	0x15
	.2byte	0x19a
	.byte	0x18
	.4byte	0x12e4
	.uleb128 0x7
	.byte	0x10
	.byte	0x16
	.byte	0x3f
	.byte	0x3
	.4byte	0x133e
	.uleb128 0x8
	.4byte	.LASF297
	.byte	0x16
	.byte	0x40
	.byte	0xb
	.4byte	0x1272
	.uleb128 0x8
	.4byte	.LASF298
	.byte	0x16
	.byte	0x41
	.byte	0xa
	.4byte	0x133e
	.byte	0
	.uleb128 0x9
	.4byte	0x11ef
	.4byte	0x134e
	.uleb128 0xa
	.4byte	0x31
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF299
	.byte	0x10
	.byte	0x16
	.byte	0x3e
	.byte	0x8
	.4byte	0x1368
	.uleb128 0x10
	.string	"un"
	.byte	0x16
	.byte	0x42
	.byte	0x5
	.4byte	0x131c
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x134e
	.uleb128 0x1c
	.4byte	.LASF300
	.byte	0x16
	.byte	0x56
	.byte	0x1e
	.4byte	0x1368
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.4byte	0x31
	.byte	0x1d
	.byte	0x23
	.byte	0xe
	.4byte	0x13ac
	.uleb128 0x20
	.4byte	.LASF301
	.byte	0
	.uleb128 0x20
	.4byte	.LASF302
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF303
	.byte	0x2
	.uleb128 0x20
	.4byte	.LASF304
	.byte	0x3
	.uleb128 0x20
	.4byte	.LASF305
	.byte	0x4
	.uleb128 0x20
	.4byte	.LASF306
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF307
	.byte	0x17
	.byte	0x1a
	.byte	0x11
	.4byte	0x954
	.uleb128 0x5
	.4byte	.LASF308
	.byte	0x17
	.byte	0x1b
	.byte	0x12
	.4byte	0x960
	.uleb128 0x5
	.4byte	.LASF309
	.byte	0x17
	.byte	0x1c
	.byte	0x12
	.4byte	0x978
	.uleb128 0x5
	.4byte	.LASF310
	.byte	0x17
	.byte	0x21
	.byte	0x11
	.4byte	0x96c
	.uleb128 0x5
	.4byte	.LASF311
	.byte	0x17
	.byte	0x22
	.byte	0xd
	.4byte	0x13e8
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF312
	.uleb128 0xb
	.byte	0x8
	.byte	0x17
	.byte	0xbf
	.byte	0x9
	.4byte	0x143a
	.uleb128 0xc
	.4byte	.LASF313
	.byte	0x17
	.byte	0xc0
	.byte	0xe
	.4byte	0x960
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x17
	.byte	0xc1
	.byte	0xe
	.4byte	0x960
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF314
	.byte	0x17
	.byte	0xc2
	.byte	0xe
	.4byte	0x960
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF315
	.byte	0x17
	.byte	0xc3
	.byte	0xe
	.4byte	0x960
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF316
	.byte	0x17
	.byte	0xc4
	.byte	0xd
	.4byte	0x143a
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x954
	.4byte	0x1449
	.uleb128 0x21
	.4byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LASF317
	.byte	0x17
	.byte	0xc5
	.byte	0x3
	.4byte	0x13ef
	.uleb128 0x9
	.4byte	0x13ac
	.4byte	0x1465
	.uleb128 0xa
	.4byte	0x31
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	0x1455
	.uleb128 0x22
	.4byte	.LASF318
	.byte	0x17
	.2byte	0x2be
	.byte	0x16
	.4byte	0x1465
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x22
	.4byte	.LASF319
	.byte	0x17
	.2byte	0x2bf
	.byte	0x16
	.4byte	0x1465
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF320
	.byte	0x18
	.2byte	0x14f
	.byte	0xe
	.4byte	0x13ac
	.uleb128 0x1b
	.4byte	.LASF321
	.byte	0x18
	.2byte	0x241
	.byte	0xe
	.4byte	0x13ac
	.uleb128 0x5
	.4byte	.LASF322
	.byte	0x19
	.byte	0x21
	.byte	0xf
	.4byte	0x10fb
	.uleb128 0xf
	.4byte	.LASF323
	.byte	0x20
	.byte	0x19
	.byte	0x22
	.byte	0x10
	.4byte	0x153b
	.uleb128 0xc
	.4byte	.LASF324
	.byte	0x19
	.byte	0x23
	.byte	0x12
	.4byte	0x153b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF325
	.byte	0x19
	.byte	0x24
	.byte	0x12
	.4byte	0x153b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF326
	.byte	0x19
	.byte	0x25
	.byte	0x12
	.4byte	0x1541
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF327
	.byte	0x19
	.byte	0x26
	.byte	0xb
	.4byte	0x13d0
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF328
	.byte	0x19
	.byte	0x27
	.byte	0xb
	.4byte	0x13d0
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF329
	.byte	0x19
	.byte	0x28
	.byte	0xc
	.4byte	0x13c4
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF316
	.byte	0x19
	.byte	0x29
	.byte	0xc
	.4byte	0x13c4
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF313
	.byte	0x19
	.byte	0x2a
	.byte	0xc
	.4byte	0x13b8
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF330
	.byte	0x19
	.byte	0x2b
	.byte	0xb
	.4byte	0x13ac
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14b8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14ac
	.uleb128 0x5
	.4byte	.LASF331
	.byte	0x19
	.byte	0x2c
	.byte	0x3
	.4byte	0x14b8
	.uleb128 0x5
	.4byte	.LASF332
	.byte	0x1a
	.byte	0x1d
	.byte	0x1b
	.4byte	0x11e3
	.uleb128 0x5
	.4byte	.LASF333
	.byte	0x1b
	.byte	0x21
	.byte	0x1b
	.4byte	0x156b
	.uleb128 0x19
	.4byte	.LASF335
	.uleb128 0x1a
	.4byte	0x157b
	.uleb128 0x18
	.4byte	0x157b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1449
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1570
	.uleb128 0x5
	.4byte	.LASF336
	.byte	0x1c
	.byte	0x37
	.byte	0x10
	.4byte	0x1593
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1599
	.uleb128 0x1a
	.4byte	0x15a4
	.uleb128 0x18
	.4byte	0x15a4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1547
	.uleb128 0x5
	.4byte	.LASF337
	.byte	0x1c
	.byte	0x38
	.byte	0x10
	.4byte	0x1581
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.4byte	0x31
	.byte	0x1c
	.byte	0xa8
	.byte	0xe
	.4byte	0x15f5
	.uleb128 0x20
	.4byte	.LASF338
	.byte	0
	.uleb128 0x20
	.4byte	.LASF339
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF340
	.byte	0x2
	.uleb128 0x20
	.4byte	.LASF341
	.byte	0x3
	.uleb128 0x20
	.4byte	.LASF342
	.byte	0x4
	.uleb128 0x20
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF344
	.byte	0x6
	.uleb128 0x20
	.4byte	.LASF345
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x1c
	.byte	0xca
	.byte	0x9
	.4byte	0x1619
	.uleb128 0xc
	.4byte	.LASF346
	.byte	0x1c
	.byte	0xcb
	.byte	0x15
	.4byte	0x15a4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF347
	.byte	0x1c
	.byte	0xcc
	.byte	0x19
	.4byte	0x1587
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF348
	.byte	0x1c
	.byte	0xcd
	.byte	0x3
	.4byte	0x15f5
	.uleb128 0xb
	.byte	0x8
	.byte	0x1c
	.byte	0xd0
	.byte	0x9
	.4byte	0x1649
	.uleb128 0xc
	.4byte	.LASF349
	.byte	0x1c
	.byte	0xd1
	.byte	0xc
	.4byte	0x13b8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF350
	.byte	0x1c
	.byte	0xd2
	.byte	0x19
	.4byte	0x15aa
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF351
	.byte	0x1c
	.byte	0xd3
	.byte	0x3
	.4byte	0x1625
	.uleb128 0xb
	.byte	0x44
	.byte	0x1c
	.byte	0xdd
	.byte	0x9
	.4byte	0x1693
	.uleb128 0xc
	.4byte	.LASF352
	.byte	0x1c
	.byte	0xde
	.byte	0x14
	.4byte	0x1693
	.byte	0
	.uleb128 0xc
	.4byte	.LASF353
	.byte	0x1c
	.byte	0xdf
	.byte	0x14
	.4byte	0x16a3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF354
	.byte	0x1c
	.byte	0xe1
	.byte	0xd
	.4byte	0x13dc
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF355
	.byte	0x1c
	.byte	0xe2
	.byte	0xb
	.4byte	0x13ac
	.byte	0x41
	.byte	0
	.uleb128 0x9
	.4byte	0x1619
	.4byte	0x16a3
	.uleb128 0xa
	.4byte	0x31
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x1649
	.4byte	0x16b3
	.uleb128 0xa
	.4byte	0x31
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF356
	.byte	0x1c
	.byte	0xe3
	.byte	0x3
	.4byte	0x1655
	.uleb128 0x1c
	.4byte	.LASF357
	.byte	0x1c
	.byte	0xee
	.byte	0x11
	.4byte	0x16cb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x16b3
	.uleb128 0x1c
	.4byte	.LASF358
	.byte	0x1c
	.byte	0xf2
	.byte	0x16
	.4byte	0x1465
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.4byte	0x31
	.byte	0x1e
	.byte	0x1b
	.byte	0xe
	.4byte	0x1704
	.uleb128 0x20
	.4byte	.LASF359
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF360
	.byte	0x2
	.uleb128 0x20
	.4byte	.LASF361
	.byte	0x3
	.uleb128 0x20
	.4byte	.LASF362
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF363
	.byte	0x1e
	.byte	0x20
	.byte	0x3
	.4byte	0x16dd
	.uleb128 0x5
	.4byte	.LASF364
	.byte	0x1e
	.byte	0x22
	.byte	0x10
	.4byte	0x1581
	.uleb128 0xb
	.byte	0x4
	.byte	0x1e
	.byte	0x24
	.byte	0x9
	.4byte	0x1733
	.uleb128 0xc
	.4byte	.LASF365
	.byte	0x1e
	.byte	0x28
	.byte	0x15
	.4byte	0x1710
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF366
	.byte	0x1e
	.byte	0x2f
	.byte	0x3
	.4byte	0x171c
	.uleb128 0x3
	.4byte	0x1733
	.uleb128 0xf
	.4byte	.LASF367
	.byte	0xc
	.byte	0x1e
	.byte	0x31
	.byte	0x10
	.4byte	0x1779
	.uleb128 0xc
	.4byte	.LASF368
	.byte	0x1e
	.byte	0x36
	.byte	0xb
	.4byte	0x1793
	.byte	0
	.uleb128 0xc
	.4byte	.LASF369
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.4byte	0x31a
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF370
	.byte	0x1e
	.byte	0x4e
	.byte	0x10
	.4byte	0x17b2
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	0x13e8
	.4byte	0x178d
	.uleb128 0x18
	.4byte	0x178d
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x173f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1779
	.uleb128 0x17
	.4byte	0x960
	.4byte	0x17b2
	.uleb128 0x18
	.4byte	0x1704
	.uleb128 0x18
	.4byte	0x1127
	.uleb128 0x18
	.4byte	0x960
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1799
	.uleb128 0x5
	.4byte	.LASF367
	.byte	0x1e
	.byte	0x4f
	.byte	0x3
	.4byte	0x1744
	.uleb128 0x3
	.4byte	0x17b8
	.uleb128 0xf
	.4byte	.LASF371
	.byte	0xc
	.byte	0x1f
	.byte	0x18
	.byte	0x8
	.4byte	0x17fe
	.uleb128 0xc
	.4byte	.LASF372
	.byte	0x1f
	.byte	0x19
	.byte	0x9
	.4byte	0x13e8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF373
	.byte	0x1f
	.byte	0x1a
	.byte	0xf
	.4byte	0x1553
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF374
	.byte	0x1f
	.byte	0x1b
	.byte	0xb
	.4byte	0x153
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF375
	.byte	0x1f
	.byte	0x1d
	.byte	0x17
	.4byte	0x17c9
	.uleb128 0x5
	.4byte	.LASF376
	.byte	0x20
	.byte	0x37
	.byte	0x24
	.4byte	0x181b
	.uleb128 0x3
	.4byte	0x180a
	.uleb128 0xf
	.4byte	.LASF376
	.byte	0x14
	.byte	0x21
	.byte	0x2a
	.byte	0x10
	.4byte	0x186a
	.uleb128 0xc
	.4byte	.LASF377
	.byte	0x21
	.byte	0x2c
	.byte	0xc
	.4byte	0x19f0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF378
	.byte	0x21
	.byte	0x2f
	.byte	0xc
	.4byte	0x31a
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF379
	.byte	0x21
	.byte	0x32
	.byte	0xf
	.4byte	0x19fb
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF380
	.byte	0x21
	.byte	0x35
	.byte	0xc
	.4byte	0x1581
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF381
	.byte	0x21
	.byte	0x39
	.byte	0xc
	.4byte	0x1581
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF382
	.byte	0x20
	.byte	0x3c
	.byte	0x12
	.4byte	0x960
	.uleb128 0x5
	.4byte	.LASF383
	.byte	0x20
	.byte	0x47
	.byte	0x10
	.4byte	0x1882
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1888
	.uleb128 0x1a
	.4byte	0x1898
	.uleb128 0x18
	.4byte	0x157b
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0x5
	.4byte	.LASF384
	.byte	0x20
	.byte	0x48
	.byte	0x10
	.4byte	0x18a4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x18aa
	.uleb128 0x1a
	.4byte	0x18bf
	.uleb128 0x18
	.4byte	0x954
	.uleb128 0x18
	.4byte	0x157b
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0xf
	.4byte	.LASF385
	.byte	0x10
	.byte	0x20
	.byte	0x4a
	.byte	0x10
	.4byte	0x1901
	.uleb128 0xc
	.4byte	.LASF386
	.byte	0x20
	.byte	0x4f
	.byte	0xc
	.4byte	0x31a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF387
	.byte	0x20
	.byte	0x52
	.byte	0xc
	.4byte	0x191b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF388
	.byte	0x20
	.byte	0x59
	.byte	0x11
	.4byte	0x1936
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF389
	.byte	0x20
	.byte	0x5c
	.byte	0xc
	.4byte	0x194c
	.byte	0xc
	.byte	0
	.uleb128 0x1a
	.4byte	0x191b
	.uleb128 0x18
	.4byte	0x157b
	.uleb128 0x18
	.4byte	0x1876
	.uleb128 0x18
	.4byte	0x1898
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1901
	.uleb128 0x17
	.4byte	0x1930
	.4byte	0x1930
	.uleb128 0x18
	.4byte	0x157b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17fe
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1921
	.uleb128 0x1a
	.4byte	0x194c
	.uleb128 0x18
	.4byte	0x960
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x193c
	.uleb128 0x5
	.4byte	.LASF385
	.byte	0x20
	.byte	0x5d
	.byte	0x3
	.4byte	0x18bf
	.uleb128 0x3
	.4byte	0x1952
	.uleb128 0x5
	.4byte	.LASF390
	.byte	0x21
	.byte	0x1a
	.byte	0x10
	.4byte	0x196f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1975
	.uleb128 0x1a
	.4byte	0x1985
	.uleb128 0x18
	.4byte	0x157b
	.uleb128 0x18
	.4byte	0x13e8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF391
	.byte	0x21
	.byte	0x1b
	.byte	0x10
	.4byte	0x1581
	.uleb128 0x5
	.4byte	.LASF392
	.byte	0x21
	.byte	0x1c
	.byte	0x10
	.4byte	0x196f
	.uleb128 0xb
	.byte	0xc
	.byte	0x21
	.byte	0x1e
	.byte	0x9
	.4byte	0x19ce
	.uleb128 0xc
	.4byte	.LASF393
	.byte	0x21
	.byte	0x20
	.byte	0x1a
	.4byte	0x1991
	.byte	0
	.uleb128 0xc
	.4byte	.LASF394
	.byte	0x21
	.byte	0x23
	.byte	0x1b
	.4byte	0x1985
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF395
	.byte	0x21
	.byte	0x27
	.byte	0x1a
	.4byte	0x1963
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF396
	.byte	0x21
	.byte	0x28
	.byte	0x3
	.4byte	0x199d
	.uleb128 0x3
	.4byte	0x19ce
	.uleb128 0x1a
	.4byte	0x19ea
	.uleb128 0x18
	.4byte	0x19ea
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x19da
	.uleb128 0xe
	.byte	0x4
	.4byte	0x19df
	.uleb128 0x23
	.4byte	0x157b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x19f6
	.uleb128 0x5
	.4byte	.LASF397
	.byte	0x22
	.byte	0x7
	.byte	0x1c
	.4byte	0x1a12
	.uleb128 0x3
	.4byte	0x1a01
	.uleb128 0x19
	.4byte	.LASF397
	.uleb128 0x5
	.4byte	.LASF398
	.byte	0x22
	.byte	0xa
	.byte	0x17
	.4byte	0x1a23
	.uleb128 0x19
	.4byte	.LASF398
	.uleb128 0x5
	.4byte	.LASF399
	.byte	0x23
	.byte	0x19
	.byte	0x18
	.4byte	0x1a34
	.uleb128 0x19
	.4byte	.LASF400
	.uleb128 0x5
	.4byte	.LASF401
	.byte	0x24
	.byte	0x21
	.byte	0x1b
	.4byte	0x11e3
	.uleb128 0x5
	.4byte	.LASF402
	.byte	0x25
	.byte	0x22
	.byte	0x1e
	.4byte	0x1a51
	.uleb128 0x19
	.4byte	.LASF402
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1a45
	.uleb128 0xb
	.byte	0x18
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0x1ab4
	.uleb128 0xc
	.4byte	.LASF403
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.4byte	0x960
	.byte	0
	.uleb128 0xc
	.4byte	.LASF404
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.4byte	0x1930
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF405
	.byte	0x1
	.byte	0x2d
	.byte	0x19
	.4byte	0x1876
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF406
	.byte	0x1
	.byte	0x2e
	.byte	0x17
	.4byte	0x1898
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF407
	.byte	0x1
	.byte	0x2f
	.byte	0xb
	.4byte	0x153
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF408
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x157b
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF409
	.byte	0x1
	.byte	0x31
	.byte	0x3
	.4byte	0x1a5c
	.uleb128 0xb
	.byte	0x10
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x1afe
	.uleb128 0xc
	.4byte	.LASF410
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.4byte	0x13e8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF411
	.byte	0x1
	.byte	0x35
	.byte	0x12
	.4byte	0x1afe
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF412
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.4byte	0x1b04
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF413
	.byte	0x1
	.byte	0x37
	.byte	0x11
	.4byte	0x1a39
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1a28
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1a17
	.uleb128 0x5
	.4byte	.LASF414
	.byte	0x1
	.byte	0x38
	.byte	0x3
	.4byte	0x1ac0
	.uleb128 0xb
	.byte	0x1c
	.byte	0x1
	.byte	0x3a
	.byte	0x9
	.4byte	0x1b54
	.uleb128 0xc
	.4byte	.LASF415
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF416
	.byte	0x1
	.byte	0x3c
	.byte	0x14
	.4byte	0x1a56
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF417
	.byte	0x1
	.byte	0x3d
	.byte	0x14
	.4byte	0x1a56
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF418
	.byte	0x1
	.byte	0x3f
	.byte	0x20
	.4byte	0x1b0a
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF419
	.byte	0x1
	.byte	0x46
	.byte	0x3
	.4byte	0x1b16
	.uleb128 0x24
	.4byte	.LASF420
	.byte	0x1
	.byte	0x49
	.byte	0x17
	.4byte	0x984
	.2byte	0x1f40
	.uleb128 0x25
	.4byte	.LASF421
	.byte	0x1
	.byte	0x4c
	.byte	0xc
	.4byte	0x13e8
	.uleb128 0x5
	.byte	0x3
	.4byte	interface_created
	.uleb128 0x25
	.4byte	.LASF422
	.byte	0x1
	.byte	0x4d
	.byte	0xe
	.4byte	0x1952
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x25
	.4byte	.LASF423
	.byte	0x1
	.byte	0x4e
	.byte	0x17
	.4byte	0x1b54
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env
	.uleb128 0x25
	.4byte	.LASF424
	.byte	0x1
	.byte	0x4f
	.byte	0x16
	.4byte	0x1bb6
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_thread
	.uleb128 0xe
	.byte	0x4
	.4byte	0x155f
	.uleb128 0x26
	.4byte	.LASF434
	.byte	0x1
	.byte	0x50
	.byte	0xc
	.4byte	0x13e8
	.uleb128 0x27
	.string	"hal"
	.byte	0x1
	.byte	0x53
	.byte	0x19
	.4byte	0x1bda
	.uleb128 0x5
	.byte	0x3
	.4byte	hal
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17c4
	.uleb128 0x25
	.4byte	.LASF425
	.byte	0x1
	.byte	0x54
	.byte	0x22
	.4byte	0x173f
	.uleb128 0x5
	.byte	0x3
	.4byte	hal_callbacks
	.uleb128 0x25
	.4byte	.LASF426
	.byte	0x1
	.byte	0x55
	.byte	0x23
	.4byte	0x1c04
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1816
	.uleb128 0x25
	.4byte	.LASF427
	.byte	0x1
	.byte	0x56
	.byte	0x2c
	.4byte	0x19da
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter_callbacks
	.uleb128 0x28
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x22e
	.byte	0xe
	.4byte	0x1c5c
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c5c
	.uleb128 0x29
	.4byte	0x1c62
	.4byte	.LBI58
	.byte	.LVU533
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x233
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LVL172
	.4byte	0x2c4f
	.uleb128 0x2a
	.4byte	.LVL173
	.4byte	0x2c5b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x195e
	.uleb128 0x2b
	.4byte	.LASF499
	.byte	0x1
	.2byte	0x21a
	.byte	0xd
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF500
	.byte	0x1
	.2byte	0x203
	.byte	0x1b
	.4byte	0x1d77
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d77
	.uleb128 0x2d
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x203
	.byte	0x40
	.4byte	0x186a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2e
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x205
	.byte	0x21
	.4byte	0x1d7d
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x1d4c
	.uleb128 0x30
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x208
	.byte	0x1d
	.4byte	0x1d83
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x1d25
	.uleb128 0x30
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x20b
	.byte	0x1c
	.4byte	0x1d77
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x31
	.4byte	.LVL13
	.4byte	0x2c67
	.4byte	0x1d00
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL18
	.4byte	0x2c73
	.4byte	0x1d14
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL19
	.4byte	0x2c7f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL11
	.4byte	0x2c8b
	.uleb128 0x31
	.4byte	.LVL15
	.4byte	0x2c97
	.4byte	0x1d42
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL21
	.4byte	0x2ca3
	.byte	0
	.uleb128 0x31
	.4byte	.LVL10
	.4byte	0x2caf
	.4byte	0x1d66
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL22
	.4byte	0x2c7f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ab4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b0a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1a0d
	.uleb128 0x34
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x1f4
	.byte	0x1b
	.4byte	0x1704
	.byte	0x1
	.4byte	0x1db8
	.uleb128 0x35
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x1f4
	.byte	0x37
	.4byte	0x960
	.uleb128 0x36
	.4byte	.LASF437
	.4byte	0x1dc8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7264
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x1dc8
	.uleb128 0xa
	.4byte	0x31
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.4byte	0x1db8
	.uleb128 0x37
	.4byte	.LASF442
	.byte	0x1
	.2byte	0x1e8
	.byte	0xd
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e23
	.uleb128 0x38
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x1e8
	.byte	0x2a
	.4byte	0x157b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LVL24
	.4byte	0x2cbb
	.4byte	0x1e12
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL25
	.4byte	0x2cc8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x19e
	.byte	0xc
	.4byte	0x13e8
	.byte	0x1
	.4byte	0x1e9e
	.uleb128 0x35
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x19e
	.byte	0x2a
	.4byte	0x157b
	.uleb128 0x39
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x1a0
	.byte	0x18
	.4byte	0x1d77
	.uleb128 0x39
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x1a1
	.byte	0xe
	.4byte	0x1127
	.uleb128 0x39
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x1a2
	.byte	0xd
	.4byte	0x954
	.uleb128 0x39
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x1a3
	.byte	0x16
	.4byte	0x186a
	.uleb128 0x36
	.4byte	.LASF437
	.4byte	0x1eae
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7255
	.uleb128 0x3a
	.4byte	.LASF501
	.byte	0x1
	.2byte	0x1ca
	.byte	0x1
	.uleb128 0x3b
	.uleb128 0x39
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x1b8
	.byte	0x11
	.4byte	0x954
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x1eae
	.uleb128 0xa
	.4byte	0x31
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.4byte	0x1e9e
	.uleb128 0x3c
	.4byte	.LASF439
	.byte	0x1
	.2byte	0x192
	.byte	0xd
	.byte	0x1
	.4byte	0x1ecf
	.uleb128 0x35
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x192
	.byte	0x2b
	.4byte	0x157b
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x17d
	.byte	0xd
	.byte	0x1
	.4byte	0x1f14
	.uleb128 0x35
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x17d
	.byte	0x25
	.4byte	0x153
	.uleb128 0x39
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x17f
	.byte	0x21
	.4byte	0x1d7d
	.uleb128 0x39
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x180
	.byte	0x18
	.4byte	0x1d77
	.uleb128 0x36
	.4byte	.LASF437
	.4byte	0x1f24
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7244
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x1f24
	.uleb128 0xa
	.4byte	0x31
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	0x1f14
	.uleb128 0x3c
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x16f
	.byte	0xd
	.byte	0x1
	.4byte	0x1f45
	.uleb128 0x35
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x16f
	.byte	0x50
	.4byte	0x1d7d
	.byte	0
	.uleb128 0x37
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x159
	.byte	0xd
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f98
	.uleb128 0x38
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x159
	.byte	0x32
	.4byte	0x157b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	.LASF444
	.byte	0x1
	.2byte	0x159
	.byte	0x3e
	.4byte	0x13e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LVL27
	.4byte	0x2cc8
	.4byte	0x1f8e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL28
	.4byte	0x1dcd
	.byte	0
	.uleb128 0x37
	.4byte	.LASF445
	.byte	0x1
	.2byte	0x14d
	.byte	0xd
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2086
	.uleb128 0x38
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x14d
	.byte	0x27
	.4byte	0x157b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	.LASF446
	.byte	0x1
	.2byte	0x14d
	.byte	0x33
	.4byte	0x13e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x14f
	.byte	0xe
	.4byte	0x960
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x30
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x150
	.byte	0x18
	.4byte	0x1704
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3d
	.4byte	0x1d89
	.4byte	.LBI5
	.byte	.LVU7
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x150
	.byte	0x1f
	.4byte	0x2065
	.uleb128 0x3e
	.4byte	0x1d9b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.4byte	.LVL2
	.4byte	0x2cd4
	.uleb128 0x33
	.4byte	.LVL3
	.4byte	0x2ce0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7264
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LVL6
	.4byte	0x2075
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL7
	.4byte	0x2cc8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF447
	.byte	0x1
	.2byte	0x144
	.byte	0xd
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20d8
	.uleb128 0x38
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x144
	.byte	0x2f
	.4byte	0x1a56
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x146
	.byte	0xd
	.4byte	0x157b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x33
	.4byte	.LVL30
	.4byte	0x2cec
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x127
	.byte	0xd
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c0
	.uleb128 0x2d
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x127
	.byte	0x30
	.4byte	0x1a56
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x30
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x129
	.byte	0x18
	.4byte	0x1d77
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2e
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x12a
	.byte	0x21
	.4byte	0x1d7d
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LVL67
	.4byte	0x2cec
	.4byte	0x2147
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x42
	.4byte	.LVL69
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.4byte	.LVL70
	.4byte	0x2cc8
	.uleb128 0x31
	.4byte	.LVL71
	.4byte	0x2cc8
	.4byte	0x216c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL72
	.4byte	0x2caf
	.4byte	0x2186
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL73
	.4byte	0x2cf8
	.4byte	0x219a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL74
	.4byte	0x2c7f
	.4byte	0x21ae
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL75
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.4byte	.LVL76
	.4byte	0x281f
	.byte	0
	.uleb128 0x37
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x119
	.byte	0xd
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2292
	.uleb128 0x38
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x119
	.byte	0x28
	.4byte	0x960
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x119
	.byte	0x34
	.4byte	0x153
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF437
	.4byte	0x1f24
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7216
	.uleb128 0x31
	.4byte	.LVL167
	.4byte	0x22fd
	.4byte	0x2227
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL168
	.4byte	0x2cd4
	.uleb128 0x31
	.4byte	.LVL169
	.4byte	0x2ce0
	.4byte	0x2267
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7216
	.byte	0
	.uleb128 0x31
	.4byte	.LVL170
	.4byte	0x2d04
	.4byte	0x2281
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL171
	.4byte	0x23e6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x104
	.byte	0x12
	.4byte	0x1930
	.byte	0x1
	.4byte	0x22e8
	.uleb128 0x35
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x104
	.byte	0x33
	.4byte	0x157b
	.uleb128 0x39
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x106
	.byte	0x18
	.4byte	0x1d77
	.uleb128 0x36
	.4byte	.LASF437
	.4byte	0x22f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7209
	.uleb128 0x39
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x109
	.byte	0xf
	.4byte	0x1930
	.uleb128 0x39
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x10b
	.byte	0xe
	.4byte	0x1127
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x22f8
	.uleb128 0xa
	.4byte	0x31
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	0x22e8
	.uleb128 0x43
	.4byte	.LASF387
	.byte	0x1
	.byte	0xe5
	.byte	0xd
	.byte	0x1
	.4byte	0x2362
	.uleb128 0x44
	.4byte	.LASF408
	.byte	0x1
	.byte	0xe6
	.byte	0xd
	.4byte	0x157b
	.uleb128 0x44
	.4byte	.LASF405
	.byte	0x1
	.byte	0xe7
	.byte	0x19
	.4byte	0x1876
	.uleb128 0x44
	.4byte	.LASF406
	.byte	0x1
	.byte	0xe8
	.byte	0x17
	.4byte	0x1898
	.uleb128 0x44
	.4byte	.LASF407
	.byte	0x1
	.byte	0xe9
	.byte	0xb
	.4byte	0x153
	.uleb128 0x26
	.4byte	.LASF435
	.byte	0x1
	.byte	0xeb
	.byte	0xe
	.4byte	0x1127
	.uleb128 0x26
	.4byte	.LASF430
	.byte	0x1
	.byte	0xec
	.byte	0x18
	.4byte	0x1d77
	.uleb128 0x36
	.4byte	.LASF437
	.4byte	0x2372
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7204
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x2372
	.uleb128 0xa
	.4byte	0x31
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	0x2362
	.uleb128 0x43
	.4byte	.LASF450
	.byte	0x1
	.byte	0xcb
	.byte	0xd
	.byte	0x1
	.4byte	0x239f
	.uleb128 0x45
	.string	"arg"
	.byte	0x1
	.byte	0xcb
	.byte	0x2b
	.4byte	0x153
	.uleb128 0x3b
	.uleb128 0x46
	.string	"pkt"
	.byte	0x1
	.byte	0xd7
	.byte	0x11
	.4byte	0x157b
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF451
	.byte	0x1
	.byte	0xb9
	.byte	0xd
	.byte	0x1
	.4byte	0x23b9
	.uleb128 0x26
	.4byte	.LASF428
	.byte	0x1
	.byte	0xbb
	.byte	0x21
	.4byte	0x1d7d
	.byte	0
	.uleb128 0x47
	.4byte	.LASF452
	.byte	0x1
	.byte	0x8f
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x23e6
	.uleb128 0x26
	.4byte	.LASF428
	.byte	0x1
	.byte	0x91
	.byte	0x21
	.4byte	0x1d7d
	.uleb128 0x36
	.4byte	.LASF437
	.4byte	0x1dc8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7187
	.byte	0
	.uleb128 0x48
	.4byte	.LASF454
	.byte	0x1
	.byte	0x8a
	.byte	0x5
	.4byte	0x13e8
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2438
	.uleb128 0x49
	.4byte	.LASF455
	.byte	0x1
	.byte	0x8a
	.byte	0x21
	.4byte	0x978
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x33
	.4byte	.LVL108
	.4byte	0x2d10
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_thread_handler
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF502
	.byte	0x1
	.byte	0x7b
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24d3
	.uleb128 0x4b
	.4byte	0x239f
	.4byte	.LBI30
	.byte	.LVU206
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x7e
	.byte	0x5
	.4byte	0x24b9
	.uleb128 0x4c
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x4d
	.4byte	0x23ac
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x2a
	.4byte	.LVL77
	.4byte	0x2d1c
	.uleb128 0x2a
	.4byte	.LVL78
	.4byte	0x2d1c
	.uleb128 0x2a
	.4byte	.LVL79
	.4byte	0x2d28
	.uleb128 0x31
	.4byte	.LVL80
	.4byte	0x2d34
	.4byte	0x24ae
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL81
	.4byte	0x2d40
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL82
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x42
	.4byte	.LVL83
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.4byte	.LVL84
	.4byte	0x2d4c
	.byte	0
	.uleb128 0x48
	.4byte	.LASF456
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x266a
	.uleb128 0x4e
	.4byte	.LASF503
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LDL1
	.uleb128 0x4b
	.4byte	0x23b9
	.4byte	.LBI34
	.byte	.LVU236
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.4byte	0x260b
	.uleb128 0x4c
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x4f
	.4byte	0x23ca
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x31
	.4byte	.LVL85
	.4byte	0x2d58
	.4byte	0x253c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x31
	.4byte	.LVL86
	.4byte	0x2d64
	.4byte	0x2553
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_command_ready
	.byte	0
	.uleb128 0x31
	.4byte	.LVL87
	.4byte	0x2d58
	.4byte	0x2567
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL88
	.4byte	0x2cd4
	.uleb128 0x31
	.4byte	.LVL89
	.4byte	0x2d64
	.4byte	0x2587
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_packet_ready
	.byte	0
	.uleb128 0x31
	.4byte	.LVL90
	.4byte	0x2d70
	.4byte	0x259a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL92
	.4byte	0x2cd4
	.uleb128 0x31
	.4byte	.LVL93
	.4byte	0x2ce0
	.4byte	0x25b7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL95
	.4byte	0x2cd4
	.uleb128 0x31
	.4byte	.LVL96
	.4byte	0x2d7c
	.4byte	0x25d7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.uleb128 0x31
	.4byte	.LVL98
	.4byte	0x2d88
	.4byte	0x2600
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	command_timed_out
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL99
	.4byte	0x2cd4
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL100
	.4byte	0x2d94
	.4byte	0x2638
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL102
	.4byte	0x2438
	.uleb128 0x50
	.4byte	.LVL104
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x2657
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter_callbacks
	.byte	0
	.uleb128 0x51
	.4byte	.LVL105
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hal_callbacks
	.byte	0
	.byte	0
	.uleb128 0x52
	.4byte	0x1ecf
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2785
	.uleb128 0x3e
	.4byte	0x1edd
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x4f
	.4byte	0x1eea
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x4f
	.4byte	0x1ef7
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x53
	.4byte	0x1ecf
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x270a
	.uleb128 0x3e
	.4byte	0x1edd
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x4c
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x54
	.4byte	0x1eea
	.uleb128 0x54
	.4byte	0x1ef7
	.uleb128 0x2a
	.4byte	.LVL41
	.4byte	0x2cd4
	.uleb128 0x33
	.4byte	.LVL42
	.4byte	0x2ce0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL34
	.4byte	0x2caf
	.4byte	0x2724
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL35
	.4byte	0x2da0
	.uleb128 0x2a
	.4byte	.LVL36
	.4byte	0x2dac
	.uleb128 0x31
	.4byte	.LVL38
	.4byte	0x2c7f
	.4byte	0x274a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL44
	.4byte	0x2cd4
	.uleb128 0x33
	.4byte	.LVL46
	.4byte	0x2ce0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x55
	.4byte	0x2377
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x281f
	.uleb128 0x3e
	.4byte	0x2384
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x56
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x27da
	.uleb128 0x4f
	.4byte	0x2391
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x42
	.4byte	.LVL51
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.4byte	.LVL54
	.4byte	0x2db8
	.uleb128 0x2a
	.4byte	.LVL55
	.4byte	0x2db8
	.byte	0
	.uleb128 0x53
	.4byte	0x2377
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x2815
	.uleb128 0x3e
	.4byte	0x2384
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x57
	.4byte	0x27a5
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x54
	.4byte	0x2391
	.uleb128 0x2a
	.4byte	.LVL58
	.4byte	0x2dc4
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL48
	.4byte	0x2dd0
	.byte	0
	.uleb128 0x52
	.4byte	0x1f29
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2884
	.uleb128 0x58
	.4byte	0x1f37
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LVL60
	.4byte	0x2caf
	.4byte	0x2858
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL61
	.4byte	0x2ddd
	.uleb128 0x2a
	.4byte	.LVL62
	.4byte	0x2da0
	.uleb128 0x2a
	.4byte	.LVL63
	.4byte	0x2de9
	.uleb128 0x33
	.4byte	.LVL64
	.4byte	0x2c7f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x52
	.4byte	0x1eb3
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a38
	.uleb128 0x3e
	.4byte	0x1ec1
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x53
	.4byte	0x1eb3
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0x2a28
	.uleb128 0x3e
	.4byte	0x1ec1
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x3d
	.4byte	0x1e23
	.4byte	.LBI43
	.byte	.LVU321
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x196
	.byte	0x11
	.4byte	0x2a17
	.uleb128 0x3e
	.4byte	0x1e35
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x4f
	.4byte	0x1e42
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x4f
	.4byte	0x1e4f
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x4f
	.4byte	0x1e5c
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x4f
	.4byte	0x1e69
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x59
	.4byte	0x1e85
	.4byte	.L82
	.uleb128 0x53
	.4byte	0x1e8e
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0x2985
	.uleb128 0x4f
	.4byte	0x1e8f
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x31
	.4byte	.LVL127
	.4byte	0x1c6c
	.4byte	0x2959
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL129
	.4byte	0x2cd4
	.uleb128 0x31
	.4byte	.LVL131
	.4byte	0x2ce0
	.4byte	0x2975
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x51
	.4byte	.LVL133
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL116
	.4byte	0x1c6c
	.4byte	0x2999
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL118
	.4byte	0x2cd4
	.uleb128 0x50
	.4byte	.LVL119
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x29b5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL120
	.4byte	0x2df5
	.4byte	0x29c9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL134
	.4byte	0x281f
	.uleb128 0x2a
	.4byte	.LVL135
	.4byte	0x2db8
	.uleb128 0x31
	.4byte	.LVL136
	.4byte	0x23e6
	.4byte	0x29ef
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL137
	.4byte	0x2cc8
	.4byte	0x2a03
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL139
	.4byte	0x2cc8
	.uleb128 0x2a
	.4byte	.LVL140
	.4byte	0x2cc8
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL123
	.4byte	0x1dcd
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x51
	.4byte	.LVL111
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x52
	.4byte	0x2292
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b27
	.uleb128 0x3e
	.4byte	0x22a4
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x4f
	.4byte	0x22b1
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x4f
	.4byte	0x22cd
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x54
	.4byte	0x22da
	.uleb128 0x53
	.4byte	0x2292
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0x2adb
	.uleb128 0x3e
	.4byte	0x22a4
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x4c
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.uleb128 0x54
	.4byte	0x22b1
	.uleb128 0x54
	.4byte	0x22cd
	.uleb128 0x54
	.4byte	0x22da
	.uleb128 0x33
	.4byte	.LVL145
	.4byte	0x2e01
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x107
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7209
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL142
	.4byte	0x2e0d
	.4byte	0x2af3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL146
	.4byte	0x2e19
	.uleb128 0x31
	.4byte	.LVL150
	.4byte	0x2d04
	.4byte	0x2b16
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL151
	.4byte	0x23e6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x52
	.4byte	0x22fd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c4f
	.uleb128 0x3e
	.4byte	0x230a
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x3e
	.4byte	0x2316
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x58
	.4byte	0x2322
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x58
	.4byte	0x232e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4f
	.4byte	0x233a
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x4f
	.4byte	0x2346
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x53
	.4byte	0x22fd
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.4byte	0x2c12
	.uleb128 0x3e
	.4byte	0x230a
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x3e
	.4byte	0x2316
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x3e
	.4byte	0x2322
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x3e
	.4byte	0x232e
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x4c
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x54
	.4byte	0x233a
	.uleb128 0x54
	.4byte	0x2346
	.uleb128 0x2a
	.4byte	.LVL155
	.4byte	0x2cd4
	.uleb128 0x33
	.4byte	.LVL156
	.4byte	0x2ce0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7204
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL153
	.4byte	0x2e0d
	.4byte	0x2c2a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL164
	.4byte	0x2d04
	.4byte	0x2c3e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL165
	.4byte	0x23e6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF457
	.4byte	.LASF457
	.byte	0x1e
	.byte	0x53
	.byte	0x12
	.uleb128 0x5a
	.4byte	.LASF458
	.4byte	.LASF458
	.byte	0x21
	.byte	0x3c
	.byte	0x1c
	.uleb128 0x5a
	.4byte	.LASF459
	.4byte	.LASF459
	.byte	0x22
	.byte	0x6c
	.byte	0x7
	.uleb128 0x5a
	.4byte	.LASF460
	.4byte	.LASF460
	.byte	0x22
	.byte	0x4c
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF461
	.4byte	.LASF461
	.byte	0x24
	.byte	0x27
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF462
	.4byte	.LASF462
	.byte	0x22
	.byte	0x5c
	.byte	0xe
	.uleb128 0x5a
	.4byte	.LASF463
	.4byte	.LASF463
	.byte	0x22
	.byte	0x68
	.byte	0xe
	.uleb128 0x5a
	.4byte	.LASF464
	.4byte	.LASF464
	.byte	0x22
	.byte	0x62
	.byte	0xe
	.uleb128 0x5a
	.4byte	.LASF465
	.4byte	.LASF465
	.byte	0x24
	.byte	0x25
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF466
	.4byte	.LASF466
	.byte	0x1c
	.2byte	0x123
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF467
	.4byte	.LASF467
	.byte	0x8
	.byte	0x61
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF468
	.4byte	.LASF468
	.byte	0x1d
	.byte	0x5b
	.byte	0xa
	.uleb128 0x5a
	.4byte	.LASF469
	.4byte	.LASF469
	.byte	0x1d
	.byte	0x7e
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF470
	.4byte	.LASF470
	.byte	0x25
	.byte	0x45
	.byte	0x7
	.uleb128 0x5a
	.4byte	.LASF471
	.4byte	.LASF471
	.byte	0x22
	.byte	0x42
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF472
	.4byte	.LASF472
	.byte	0x25
	.byte	0x40
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF473
	.4byte	.LASF473
	.byte	0x1b
	.byte	0x45
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF474
	.4byte	.LASF474
	.byte	0x25
	.byte	0x30
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF475
	.4byte	.LASF475
	.byte	0x22
	.byte	0x1b
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF476
	.4byte	.LASF476
	.byte	0x24
	.byte	0x29
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF477
	.4byte	.LASF477
	.byte	0x23
	.byte	0x33
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF478
	.4byte	.LASF478
	.byte	0x1b
	.byte	0x3a
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF479
	.4byte	.LASF479
	.byte	0x25
	.byte	0x2c
	.byte	0x10
	.uleb128 0x5a
	.4byte	.LASF480
	.4byte	.LASF480
	.byte	0x25
	.byte	0x73
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF481
	.4byte	.LASF481
	.byte	0x22
	.byte	0x15
	.byte	0x9
	.uleb128 0x5a
	.4byte	.LASF482
	.4byte	.LASF482
	.byte	0x24
	.byte	0x23
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF483
	.4byte	.LASF483
	.byte	0x23
	.byte	0x2e
	.byte	0xe
	.uleb128 0x5a
	.4byte	.LASF484
	.4byte	.LASF484
	.byte	0x1b
	.byte	0x34
	.byte	0xf
	.uleb128 0x5a
	.4byte	.LASF485
	.4byte	.LASF485
	.byte	0x22
	.byte	0x1f
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF486
	.4byte	.LASF486
	.byte	0x22
	.byte	0x2a
	.byte	0x7
	.uleb128 0x5a
	.4byte	.LASF487
	.4byte	.LASF487
	.byte	0x25
	.byte	0x34
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF488
	.4byte	.LASF488
	.byte	0x25
	.byte	0x79
	.byte	0x6
	.uleb128 0x5b
	.4byte	.LASF489
	.4byte	.LASF489
	.byte	0x26
	.2byte	0x15a
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF490
	.4byte	.LASF490
	.byte	0x23
	.byte	0x43
	.byte	0x11
	.uleb128 0x5a
	.4byte	.LASF491
	.4byte	.LASF491
	.byte	0x23
	.byte	0x3a
	.byte	0x11
	.uleb128 0x5a
	.4byte	.LASF492
	.4byte	.LASF492
	.byte	0x1f
	.byte	0x2d
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF493
	.4byte	.LASF493
	.byte	0x27
	.byte	0x29
	.byte	0x6
	.uleb128 0x5a
	.4byte	.LASF494
	.4byte	.LASF494
	.byte	0x8
	.byte	0x5e
	.byte	0x8
	.uleb128 0x5a
	.4byte	.LASF495
	.4byte	.LASF495
	.byte	0x1f
	.byte	0x23
	.byte	0xb
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x39
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
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x39
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x42
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x48
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
	.uleb128 0x39
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
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x4b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5b
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS3:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU51
	.uleb128 .LVU58
	.uleb128 .LVU59
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU53
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU64
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU6
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LFE49
	.2byte	0x5
	.byte	0x74
	.sleb128 8192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU29
	.uleb128 0
.LLST1:
	.4byte	.LVL4
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU7
	.uleb128 .LVU29
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU91
	.uleb128 .LVU94
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST14:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU170
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST15:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 0
.LLST17:
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
.LVUS16:
	.uleb128 .LVU257
	.uleb128 .LVU264
	.uleb128 .LVU269
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU287
	.uleb128 .LVU291
	.uleb128 .LVU304
.LLST16:
	.4byte	.LVL89
	.4byte	.LVL91
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
	.4byte	.LVL101
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU98
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU106
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU118
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU109
	.uleb128 .LVU115
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU131
	.uleb128 .LVU136
	.uleb128 .LVU137
	.uleb128 .LVU139
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU146
	.uleb128 .LVU148
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU419
	.uleb128 .LVU419
	.uleb128 0
.LLST18:
	.4byte	.LVL110
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU320
	.uleb128 .LVU419
	.uleb128 .LVU419
	.uleb128 .LVU424
.LLST19:
	.4byte	.LVL112
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU321
	.uleb128 .LVU368
	.uleb128 .LVU370
	.uleb128 .LVU419
	.uleb128 .LVU419
	.uleb128 .LVU424
.LLST20:
	.4byte	.LVL112
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU323
	.uleb128 .LVU354
	.uleb128 .LVU354
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 .LVU368
	.uleb128 .LVU370
	.uleb128 .LVU390
	.uleb128 .LVU390
	.uleb128 .LVU424
.LLST21:
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU327
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU354
	.uleb128 .LVU366
	.uleb128 .LVU368
	.uleb128 .LVU370
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 .LVU382
	.uleb128 .LVU382
	.uleb128 .LVU390
.LLST22:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x73
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL126
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x3
	.byte	0x73
	.sleb128 6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU331
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 .LVU368
	.uleb128 .LVU370
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU424
.LLST23:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL115
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL126
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU345
	.uleb128 .LVU353
	.uleb128 .LVU381
	.uleb128 .LVU389
.LLST24:
	.4byte	.LVL115
	.4byte	.LVL116-1
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
	.4byte	.LVL126
	.4byte	.LVL127-1
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
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU374
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU394
	.uleb128 .LVU397
	.uleb128 .LVU401
.LLST25:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x73
	.sleb128 2
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU445
	.uleb128 .LVU445
	.uleb128 .LVU459
	.uleb128 .LVU459
	.uleb128 0
.LLST26:
	.4byte	.LVL141
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL150-1
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	.LVL150-1
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU430
	.uleb128 0
.LLST27:
	.4byte	.LVL143
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU448
	.uleb128 0
.LLST28:
	.4byte	.LVL148
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU432
	.uleb128 .LVU433
.LLST29:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU489
	.uleb128 .LVU489
	.uleb128 .LVU505
	.uleb128 .LVU505
	.uleb128 .LVU506
	.uleb128 .LVU506
	.uleb128 0
.LLST30:
	.4byte	.LVL152
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x7a
	.sleb128 20
	.4byte	.LVL163
	.4byte	.LVL164-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 20
	.4byte	.LVL164-1
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU484
	.uleb128 .LVU484
	.uleb128 .LVU505
	.uleb128 .LVU505
	.uleb128 .LVU506
	.uleb128 .LVU506
	.uleb128 0
.LLST31:
	.4byte	.LVL152
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x7a
	.sleb128 8
	.4byte	.LVL163
	.4byte	.LVL164-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 8
	.4byte	.LVL164-1
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU480
	.uleb128 .LVU485
	.uleb128 .LVU485
	.uleb128 .LVU489
	.uleb128 .LVU489
	.uleb128 .LVU492
	.uleb128 .LVU492
	.uleb128 .LVU505
	.uleb128 .LVU505
	.uleb128 .LVU506
.LLST32:
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL160
	.4byte	.LVL161
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
	.4byte	.LVL161
	.4byte	.LVL162
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
	.4byte	.LVL162
	.4byte	.LVL163
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
	.4byte	.LVL163
	.4byte	.LVL164-1
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
.LVUS33:
	.uleb128 .LVU467
	.uleb128 .LVU471
	.uleb128 .LVU475
	.uleb128 .LVU505
	.uleb128 .LVU505
	.uleb128 .LVU506
.LLST33:
	.4byte	.LVL153
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL163
	.4byte	.LVL164-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU469
	.uleb128 .LVU475
.LLST34:
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU469
	.uleb128 .LVU475
.LLST35:
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU469
	.uleb128 .LVU475
.LLST36:
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU469
	.uleb128 .LVU475
.LLST37:
	.4byte	.LVL154
	.4byte	.LVL157
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
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF250:
	.string	"Xthal_cp_id_FPU"
.LASF260:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF138:
	.string	"Xthal_all_extra_size"
.LASF405:
	.string	"complete_callback"
.LASF471:
	.string	"list_append"
.LASF246:
	.string	"Xthal_itlb_arf_ways"
.LASF442:
	.string	"dispatch_reassembled"
.LASF334:
	.string	"__locale_t"
.LASF20:
	.string	"__value"
.LASF491:
	.string	"osi_alarm_set"
.LASF78:
	.string	"__sf"
.LASF139:
	.string	"Xthal_all_extra_align"
.LASF162:
	.string	"Xthal_have_booleans"
.LASF323:
	.string	"_tle"
.LASF83:
	.string	"_read"
.LASF482:
	.string	"osi_mutex_new"
.LASF382:
	.string	"command_opcode_t"
.LASF456:
	.string	"hci_start_up"
.LASF184:
	.string	"Xthal_excm_level"
.LASF396:
	.string	"packet_fragmenter_callbacks_t"
.LASF84:
	.string	"_write"
.LASF129:
	.string	"Xthal_rev_no"
.LASF126:
	.string	"int32_t"
.LASF445:
	.string	"transmit_fragment"
.LASF74:
	.string	"_asctime_buf"
.LASF70:
	.string	"_cvtlen"
.LASF287:
	.string	"zone"
.LASF196:
	.string	"Xthal_have_exceptions"
.LASF411:
	.string	"command_response_timer"
.LASF209:
	.string	"Xthal_instrom_vaddr"
.LASF262:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF437:
	.string	"__func__"
.LASF31:
	.string	"__tm"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF88:
	.string	"_nbuf"
.LASF32:
	.string	"__tm_sec"
.LASF166:
	.string	"Xthal_have_sext"
.LASF113:
	.string	"_l64a_buf"
.LASF420:
	.string	"COMMAND_PENDING_TIMEOUT"
.LASF368:
	.string	"open"
.LASF203:
	.string	"Xthal_tram_sync"
.LASF60:
	.string	"_stdin"
.LASF430:
	.string	"wait_entry"
.LASF91:
	.string	"_lock"
.LASF170:
	.string	"Xthal_have_fp"
.LASF434:
	.string	"hci_host_startup_flag"
.LASF480:
	.string	"fixed_queue_register_dequeue"
.LASF291:
	.string	"type"
.LASF100:
	.string	"_mult"
.LASF167:
	.string	"Xthal_have_clamps"
.LASF219:
	.string	"Xthal_dataram_paddr"
.LASF191:
	.string	"Xthal_num_ibreak"
.LASF365:
	.string	"packet_ready"
.LASF131:
	.string	"Xthal_cpregs_restore_fn"
.LASF264:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF193:
	.string	"Xthal_have_ccount"
.LASF142:
	.string	"Xthal_cp_num"
.LASF415:
	.string	"command_credits"
.LASF498:
	.string	"/home/dieter/Development/ProjektEi/build/bt"
.LASF132:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF489:
	.string	"esp_vhci_host_check_send_available"
.LASF17:
	.string	"__wch"
.LASF223:
	.string	"Xthal_xlmi_size"
.LASF5:
	.string	"__uint8_t"
.LASF55:
	.string	"_file"
.LASF359:
	.string	"DATA_TYPE_COMMAND"
.LASF41:
	.string	"_on_exit_args"
.LASF277:
	.string	"_sys_nerr"
.LASF413:
	.string	"commands_pending_response_lock"
.LASF247:
	.string	"Xthal_dtlb_way_bits"
.LASF476:
	.string	"osi_mutex_free"
.LASF163:
	.string	"Xthal_have_loops"
.LASF228:
	.string	"Xthal_icache_line_lockable"
.LASF477:
	.string	"osi_alarm_free"
.LASF205:
	.string	"Xthal_num_instram"
.LASF115:
	.string	"_mbrlen_state"
.LASF13:
	.string	"long int"
.LASF324:
	.string	"p_next"
.LASF105:
	.string	"_result_k"
.LASF52:
	.string	"_size"
.LASF325:
	.string	"p_prev"
.LASF176:
	.string	"Xthal_hw_configid0"
.LASF177:
	.string	"Xthal_hw_configid1"
.LASF361:
	.string	"DATA_TYPE_SCO"
.LASF140:
	.string	"Xthal_cp_names"
.LASF457:
	.string	"hci_hal_h4_get_interface"
.LASF337:
	.string	"tBTU_EVENT_CALLBACK"
.LASF73:
	.string	"_localtime_buf"
.LASF218:
	.string	"Xthal_dataram_vaddr"
.LASF493:
	.string	"__assert_func"
.LASF283:
	.string	"ip4_addr"
.LASF321:
	.string	"appl_trace_level"
.LASF376:
	.string	"packet_fragmenter_t"
.LASF346:
	.string	"p_tle"
.LASF390:
	.string	"transmit_finished_cb"
.LASF503:
	.string	"error"
.LASF36:
	.string	"__tm_mon"
.LASF249:
	.string	"Xthal_dtlb_arf_ways"
.LASF459:
	.string	"list_node"
.LASF424:
	.string	"hci_host_thread"
.LASF108:
	.string	"_misc_reent"
.LASF444:
	.string	"all_fragments_sent"
.LASF152:
	.string	"Xthal_dcache_size"
.LASF452:
	.string	"hci_layer_init_env"
.LASF331:
	.string	"TIMER_LIST_ENT"
.LASF278:
	.string	"QueueHandle_t"
.LASF2:
	.string	"signed char"
.LASF124:
	.string	"uint8_t"
.LASF120:
	.string	"__sf_fake_stdin"
.LASF478:
	.string	"osi_thread_free"
.LASF436:
	.string	"event_code"
.LASF187:
	.string	"Xthal_intlevel"
.LASF407:
	.string	"context"
.LASF423:
	.string	"hci_host_env"
.LASF199:
	.string	"Xthal_have_highlevel_interrupts"
.LASF490:
	.string	"osi_alarm_cancel"
.LASF197:
	.string	"Xthal_xea_version"
.LASF270:
	.string	"environ"
.LASF3:
	.string	"unsigned char"
.LASF245:
	.string	"Xthal_itlb_ways"
.LASF399:
	.string	"osi_alarm_t"
.LASF357:
	.string	"btu_cb_ptr"
.LASF381:
	.string	"reassemble_and_dispatch"
.LASF66:
	.string	"_unspecified_locale_info"
.LASF303:
	.string	"ESP_LOG_WARN"
.LASF58:
	.string	"_reent"
.LASF123:
	.string	"_global_impure_ptr"
.LASF322:
	.string	"TIMER_CBACK"
.LASF464:
	.string	"list_end"
.LASF179:
	.string	"Xthal_hw_release_minor"
.LASF235:
	.string	"Xthal_have_tlbs"
.LASF319:
	.string	"bd_addr_null"
.LASF394:
	.string	"reassembled"
.LASF348:
	.string	"tBTU_TIMER_REG"
.LASF312:
	.string	"_Bool"
.LASF143:
	.string	"Xthal_cp_max"
.LASF391:
	.string	"packet_reassembled_cb"
.LASF156:
	.string	"Xthal_release_minor"
.LASF384:
	.string	"command_status_cb"
.LASF440:
	.string	"command_timed_out"
.LASF24:
	.string	"char"
.LASF48:
	.string	"_fns"
.LASF174:
	.string	"Xthal_num_writebuffer_entries"
.LASF86:
	.string	"_close"
.LASF192:
	.string	"Xthal_num_dbreak"
.LASF449:
	.string	"event_command_ready"
.LASF130:
	.string	"Xthal_cpregs_save_fn"
.LASF310:
	.string	"INT32"
.LASF447:
	.string	"event_packet_ready"
.LASF279:
	.string	"SemaphoreHandle_t"
.LASF6:
	.string	"__uint16_t"
.LASF335:
	.string	"osi_thread"
.LASF453:
	.string	"hci_layer_get_interface"
.LASF354:
	.string	"reset_complete"
.LASF421:
	.string	"interface_created"
.LASF363:
	.string	"serial_data_type_t"
.LASF387:
	.string	"transmit_command"
.LASF497:
	.string	"/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/hci_layer.c"
.LASF485:
	.string	"list_is_empty"
.LASF372:
	.string	"ready_can_be_called"
.LASF206:
	.string	"Xthal_num_datarom"
.LASF311:
	.string	"BOOLEAN"
.LASF492:
	.string	"future_ready"
.LASF238:
	.string	"Xthal_mmu_rings"
.LASF302:
	.string	"ESP_LOG_ERROR"
.LASF293:
	.string	"ip_addr_any_type"
.LASF267:
	.string	"_timezone"
.LASF275:
	.string	"optreset"
.LASF289:
	.string	"ip_addr"
.LASF364:
	.string	"packet_ready_cb"
.LASF435:
	.string	"stream"
.LASF216:
	.string	"Xthal_datarom_paddr"
.LASF454:
	.string	"hci_host_task_post"
.LASF225:
	.string	"Xthal_dcache_setwidth"
.LASF351:
	.string	"tBTU_EVENT_REG"
.LASF496:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF375:
	.string	"future_t"
.LASF345:
	.string	"SIG_BTU_NUM"
.LASF217:
	.string	"Xthal_datarom_size"
.LASF300:
	.string	"in6addr_any"
.LASF237:
	.string	"Xthal_mmu_asid_kernel"
.LASF330:
	.string	"in_use"
.LASF458:
	.string	"packet_fragmenter_get_interface"
.LASF202:
	.string	"Xthal_tram_enabled"
.LASF269:
	.string	"_tzname"
.LASF158:
	.string	"Xthal_release_internal"
.LASF82:
	.string	"_cookie"
.LASF429:
	.string	"node"
.LASF355:
	.string	"trace_level"
.LASF401:
	.string	"osi_mutex_t"
.LASF53:
	.string	"__sFILE_fake"
.LASF29:
	.string	"_wds"
.LASF406:
	.string	"status_callback"
.LASF484:
	.string	"osi_thread_create"
.LASF75:
	.string	"_sig_func"
.LASF149:
	.string	"Xthal_icache_linesize"
.LASF165:
	.string	"Xthal_have_minmax"
.LASF90:
	.string	"_offset"
.LASF71:
	.string	"_cvtbuf"
.LASF422:
	.string	"interface"
.LASF308:
	.string	"UINT16"
.LASF379:
	.string	"fragment_current_packet"
.LASF500:
	.string	"get_waiting_command"
.LASF171:
	.string	"Xthal_have_speculation"
.LASF215:
	.string	"Xthal_datarom_vaddr"
.LASF272:
	.string	"optind"
.LASF412:
	.string	"commands_pending_response"
.LASF178:
	.string	"Xthal_hw_release_major"
.LASF201:
	.string	"Xthal_tram_pending"
.LASF243:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF467:
	.string	"free"
.LASF472:
	.string	"fixed_queue_enqueue"
.LASF106:
	.string	"_p5s"
.LASF23:
	.string	"long unsigned int"
.LASF155:
	.string	"Xthal_release_major"
.LASF239:
	.string	"Xthal_mmu_ring_bits"
.LASF151:
	.string	"Xthal_icache_size"
.LASF81:
	.string	"__sFILE"
.LASF65:
	.string	"__sdidinit"
.LASF93:
	.string	"_flags2"
.LASF439:
	.string	"hal_says_packet_ready"
.LASF213:
	.string	"Xthal_instram_paddr"
.LASF441:
	.string	"restart_command_waiting_response_timer"
.LASF416:
	.string	"command_queue"
.LASF349:
	.string	"event_range"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF59:
	.string	"_errno"
.LASF290:
	.string	"u_addr"
.LASF136:
	.string	"Xthal_cpregs_size"
.LASF80:
	.string	"_signal_buf"
.LASF309:
	.string	"UINT32"
.LASF30:
	.string	"_Bigint"
.LASF350:
	.string	"event_cb"
.LASF374:
	.string	"result"
.LASF27:
	.string	"_maxwds"
.LASF234:
	.string	"Xthal_have_cacheattr"
.LASF68:
	.string	"__cleanup"
.LASF327:
	.string	"ticks"
.LASF76:
	.string	"_atexit0"
.LASF253:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF336:
	.string	"tBTU_TIMER_CALLBACK"
.LASF473:
	.string	"osi_thread_post"
.LASF248:
	.string	"Xthal_dtlb_ways"
.LASF414:
	.string	"command_waiting_response_t"
.LASF8:
	.string	"__uint32_t"
.LASF64:
	.string	"_emergency"
.LASF11:
	.string	"_lock_t"
.LASF418:
	.string	"cmd_waiting_q"
.LASF392:
	.string	"packet_fragmented_cb"
.LASF212:
	.string	"Xthal_instram_vaddr"
.LASF9:
	.string	"long long int"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF465:
	.string	"osi_mutex_lock"
.LASF96:
	.string	"_niobs"
.LASF419:
	.string	"hci_host_env_t"
.LASF285:
	.string	"ip4_addr_t"
.LASF77:
	.string	"__sglue"
.LASF180:
	.string	"Xthal_hw_release_name"
.LASF282:
	.string	"_ctype_"
.LASF69:
	.string	"_gamma_signgam"
.LASF233:
	.string	"Xthal_have_xlt_cacheattr"
.LASF333:
	.string	"osi_thread_t"
.LASF451:
	.string	"hci_layer_deinit_env"
.LASF255:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF107:
	.string	"_freelist"
.LASF369:
	.string	"close"
.LASF97:
	.string	"_iobs"
.LASF329:
	.string	"param"
.LASF186:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF95:
	.string	"_glue"
.LASF28:
	.string	"_sign"
.LASF398:
	.string	"list_t"
.LASF455:
	.string	"timeout"
.LASF200:
	.string	"Xthal_have_nmi"
.LASF356:
	.string	"tBTU_CB"
.LASF427:
	.string	"packet_fragmenter_callbacks"
.LASF313:
	.string	"event"
.LASF284:
	.string	"addr"
.LASF258:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF297:
	.string	"u32_addr"
.LASF0:
	.string	"unsigned int"
.LASF154:
	.string	"Xthal_debug_configured"
.LASF479:
	.string	"fixed_queue_new"
.LASF460:
	.string	"list_remove"
.LASF486:
	.string	"list_front"
.LASF194:
	.string	"Xthal_num_ccompare"
.LASF161:
	.string	"Xthal_have_density"
.LASF198:
	.string	"Xthal_have_interrupts"
.LASF257:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF499:
	.string	"init_layer_interface"
.LASF227:
	.string	"Xthal_dcache_ways"
.LASF118:
	.string	"_wcrtomb_state"
.LASF175:
	.string	"Xthal_build_unique_id"
.LASF35:
	.string	"__tm_mday"
.LASF211:
	.string	"Xthal_instrom_size"
.LASF87:
	.string	"_ubuf"
.LASF145:
	.string	"Xthal_num_aregs"
.LASF62:
	.string	"_stderr"
.LASF111:
	.string	"_wctomb_state"
.LASF92:
	.string	"_mbstate"
.LASF102:
	.string	"_rand_next"
.LASF54:
	.string	"_flags"
.LASF314:
	.string	"offset"
.LASF204:
	.string	"Xthal_num_instrom"
.LASF295:
	.string	"ip_addr_broadcast"
.LASF46:
	.string	"_atexit"
.LASF428:
	.string	"cmd_wait_q"
.LASF417:
	.string	"packet_queue"
.LASF341:
	.string	"SIG_BTU_BTA_ALARM"
.LASF450:
	.string	"hci_host_thread_handler"
.LASF299:
	.string	"in6_addr"
.LASF19:
	.string	"__count"
.LASF431:
	.string	"event_to_data_type"
.LASF153:
	.string	"Xthal_dcache_is_writeback"
.LASF259:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF446:
	.string	"send_transmit_finished"
.LASF362:
	.string	"DATA_TYPE_EVENT"
.LASF306:
	.string	"ESP_LOG_VERBOSE"
.LASF494:
	.string	"calloc"
.LASF38:
	.string	"__tm_wday"
.LASF332:
	.string	"osi_sem_t"
.LASF220:
	.string	"Xthal_dataram_size"
.LASF393:
	.string	"fragmented"
.LASF292:
	.string	"ip_addr_t"
.LASF229:
	.string	"Xthal_dcache_line_lockable"
.LASF141:
	.string	"Xthal_num_coprocessors"
.LASF39:
	.string	"__tm_yday"
.LASF208:
	.string	"Xthal_num_xlmi"
.LASF402:
	.string	"fixed_queue_t"
.LASF99:
	.string	"_seed"
.LASF195:
	.string	"Xthal_have_prid"
.LASF85:
	.string	"_seek"
.LASF404:
	.string	"complete_future"
.LASF481:
	.string	"list_new"
.LASF15:
	.string	"_fpos_t"
.LASF347:
	.string	"timer_cb"
.LASF18:
	.string	"__wchb"
.LASF261:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF112:
	.string	"_mbtowc_state"
.LASF353:
	.string	"event_reg"
.LASF274:
	.string	"optopt"
.LASF468:
	.string	"esp_log_timestamp"
.LASF410:
	.string	"timer_is_set"
.LASF462:
	.string	"list_begin"
.LASF495:
	.string	"future_new"
.LASF10:
	.string	"long long unsigned int"
.LASF370:
	.string	"transmit_data"
.LASF403:
	.string	"opcode"
.LASF408:
	.string	"command"
.LASF125:
	.string	"uint16_t"
.LASF43:
	.string	"_dso_handle"
.LASF98:
	.string	"_rand48"
.LASF230:
	.string	"Xthal_have_spanning_way"
.LASF318:
	.string	"bd_addr_any"
.LASF389:
	.string	"transmit_downward"
.LASF61:
	.string	"_stdout"
.LASF383:
	.string	"command_complete_cb"
.LASF89:
	.string	"_blksize"
.LASF286:
	.string	"ip6_addr"
.LASF373:
	.string	"semaphore"
.LASF51:
	.string	"_base"
.LASF294:
	.string	"ip_addr_any"
.LASF448:
	.string	"queue"
.LASF263:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF301:
	.string	"ESP_LOG_NONE"
.LASF502:
	.string	"hci_shut_down"
.LASF273:
	.string	"opterr"
.LASF109:
	.string	"_strtok_last"
.LASF159:
	.string	"Xthal_memory_order"
.LASF116:
	.string	"_mbrtowc_state"
.LASF164:
	.string	"Xthal_have_nsa"
.LASF22:
	.string	"_flock_t"
.LASF400:
	.string	"alarm_t"
.LASF304:
	.string	"ESP_LOG_INFO"
.LASF94:
	.string	"__FILE"
.LASF367:
	.string	"hci_hal_t"
.LASF172:
	.string	"Xthal_have_threadptr"
.LASF232:
	.string	"Xthal_have_mimic_cacheattr"
.LASF21:
	.string	"_mbstate_t"
.LASF72:
	.string	"_r48"
.LASF344:
	.string	"SIG_BTU_L2CAP_ALARM"
.LASF16:
	.string	"wint_t"
.LASF466:
	.string	"btu_task_post"
.LASF320:
	.string	"btif_trace_level"
.LASF26:
	.string	"_next"
.LASF57:
	.string	"_data"
.LASF377:
	.string	"init"
.LASF281:
	.string	"u32_t"
.LASF296:
	.string	"ip6_addr_any"
.LASF307:
	.string	"UINT8"
.LASF265:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF432:
	.string	"filter_incoming_event"
.LASF150:
	.string	"Xthal_dcache_linesize"
.LASF252:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF475:
	.string	"list_free"
.LASF185:
	.string	"Xthal_intlevel_mask"
.LASF189:
	.string	"Xthal_inttype_mask"
.LASF144:
	.string	"Xthal_cp_mask"
.LASF338:
	.string	"SIG_BTU_START_UP"
.LASF385:
	.string	"hci_t"
.LASF182:
	.string	"Xthal_num_intlevels"
.LASF226:
	.string	"Xthal_icache_ways"
.LASF240:
	.string	"Xthal_mmu_sr_bits"
.LASF501:
	.string	"intercepted"
.LASF133:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF173:
	.string	"Xthal_have_pif"
.LASF110:
	.string	"_mblen_state"
.LASF487:
	.string	"fixed_queue_is_empty"
.LASF4:
	.string	"short int"
.LASF371:
	.string	"future"
.LASF181:
	.string	"Xthal_hw_release_internal"
.LASF409:
	.string	"waiting_command_t"
.LASF190:
	.string	"Xthal_timer_interrupt"
.LASF326:
	.string	"p_cback"
.LASF128:
	.string	"suboptarg"
.LASF463:
	.string	"list_next"
.LASF44:
	.string	"_fntypes"
.LASF276:
	.string	"_sys_errlist"
.LASF207:
	.string	"Xthal_num_dataram"
.LASF37:
	.string	"__tm_year"
.LASF317:
	.string	"BT_HDR"
.LASF254:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF443:
	.string	"fragmenter_transmit_finished"
.LASF426:
	.string	"packet_fragmenter"
.LASF388:
	.string	"transmit_command_futured"
.LASF56:
	.string	"_lbfsize"
.LASF433:
	.string	"packet"
.LASF63:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF305:
	.string	"ESP_LOG_DEBUG"
.LASF244:
	.string	"Xthal_itlb_way_bits"
.LASF148:
	.string	"Xthal_dcache_linewidth"
.LASF50:
	.string	"__sbuf"
.LASF188:
	.string	"Xthal_inttype"
.LASF45:
	.string	"_is_cxa"
.LASF221:
	.string	"Xthal_xlmi_vaddr"
.LASF366:
	.string	"hci_hal_callbacks_t"
.LASF380:
	.string	"fragment_and_dispatch"
.LASF358:
	.string	"BT_BD_ANY"
.LASF214:
	.string	"Xthal_instram_size"
.LASF103:
	.string	"_mprec"
.LASF438:
	.string	"status"
.LASF79:
	.string	"_misc"
.LASF343:
	.string	"SIG_BTU_ONESHOT_ALARM"
.LASF67:
	.string	"_locale"
.LASF25:
	.string	"__ULong"
.LASF134:
	.string	"Xthal_extra_size"
.LASF241:
	.string	"Xthal_mmu_ca_bits"
.LASF127:
	.string	"uint32_t"
.LASF256:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF328:
	.string	"ticks_initial"
.LASF266:
	.string	"exc_cause_table"
.LASF157:
	.string	"Xthal_release_name"
.LASF395:
	.string	"transmit_finished"
.LASF104:
	.string	"_result"
.LASF342:
	.string	"SIG_BTU_GENERAL_ALARM"
.LASF339:
	.string	"SIG_BTU_HCI_MSG"
.LASF397:
	.string	"list_node_t"
.LASF169:
	.string	"Xthal_have_mul16"
.LASF271:
	.string	"optarg"
.LASF386:
	.string	"do_postload"
.LASF352:
	.string	"timer_reg"
.LASF14:
	.string	"_off_t"
.LASF236:
	.string	"Xthal_mmu_asid_bits"
.LASF242:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF101:
	.string	"_add"
.LASF224:
	.string	"Xthal_icache_setwidth"
.LASF1:
	.string	"short unsigned int"
.LASF34:
	.string	"__tm_hour"
.LASF231:
	.string	"Xthal_have_identity_map"
.LASF146:
	.string	"Xthal_num_aregs_log2"
.LASF315:
	.string	"layer_specific"
.LASF298:
	.string	"u8_addr"
.LASF340:
	.string	"SIG_BTU_BTA_MSG"
.LASF280:
	.string	"u8_t"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF470:
	.string	"fixed_queue_dequeue"
.LASF7:
	.string	"__int32_t"
.LASF147:
	.string	"Xthal_icache_linewidth"
.LASF488:
	.string	"fixed_queue_process"
.LASF461:
	.string	"osi_mutex_unlock"
.LASF251:
	.string	"Xthal_cp_mask_FPU"
.LASF474:
	.string	"fixed_queue_free"
.LASF137:
	.string	"Xthal_cpregs_align"
.LASF42:
	.string	"_fnargs"
.LASF40:
	.string	"__tm_isdst"
.LASF288:
	.string	"ip6_addr_t"
.LASF469:
	.string	"esp_log_write"
.LASF160:
	.string	"Xthal_have_windowed"
.LASF268:
	.string	"_daylight"
.LASF316:
	.string	"data"
.LASF222:
	.string	"Xthal_xlmi_paddr"
.LASF210:
	.string	"Xthal_instrom_paddr"
.LASF360:
	.string	"DATA_TYPE_ACL"
.LASF135:
	.string	"Xthal_extra_align"
.LASF33:
	.string	"__tm_min"
.LASF378:
	.string	"cleanup"
.LASF114:
	.string	"_getdate_err"
.LASF183:
	.string	"Xthal_num_interrupts"
.LASF483:
	.string	"osi_alarm_new"
.LASF425:
	.string	"hal_callbacks"
.LASF168:
	.string	"Xthal_have_mac16"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
