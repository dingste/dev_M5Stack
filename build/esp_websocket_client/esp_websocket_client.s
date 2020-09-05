	.file	"esp_websocket_client.c"
	.text
.Ltext0:
	.global	__divdi3
	.section	.text._tick_get_ms,"ax",@progbits
	.literal_position
	.literal .LC0, 1000, 0
	.align	4
	.type	_tick_get_ms, @function
_tick_get_ms:
.LFB29:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_websocket_client/esp_websocket_client.c"
	.loc 1 104 0
	entry	sp, 32
.LCFI0:
	.loc 1 105 0
	call8	esp_timer_get_time
.LVL0:
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	call8	__divdi3
.LVL1:
	.loc 1 106 0
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE29:
	.size	_tick_get_ms, .-_tick_get_ms
	.section	.text.set_websocket_transport_optional_settings$isra$1,"ax",@progbits
	.align	4
	.type	set_websocket_transport_optional_settings$isra$1, @function
set_websocket_transport_optional_settings$isra$1:
.LFB49:
	.loc 1 241 0
.LVL2:
	entry	sp, 32
.LCFI1:
.LVL3:
	.loc 1 243 0
	beqz.n	a3, .L2
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 16
	beqz.n	a11, .L5
	.loc 1 244 0
	mov.n	a10, a3
	call8	esp_transport_ws_set_path
.LVL4:
	j	.L5
.L8:
	.loc 1 247 0
	mov.n	a10, a3
	call8	esp_transport_ws_set_subprotocol
.LVL5:
	j	.L6
.L9:
	.loc 1 250 0
	mov.n	a10, a3
	call8	esp_transport_ws_set_user_agent
.LVL6:
	j	.L7
.L10:
	.loc 1 253 0
	mov.n	a10, a3
	call8	esp_transport_ws_set_headers
.LVL7:
	retw.n
.L5:
	.loc 1 246 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 48
	bnez.n	a11, .L8
.L6:
	.loc 1 249 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 52
	bnez.n	a11, .L9
.L7:
	.loc 1 252 0
	l32i.n	a2, a2, 0
	l32i.n	a11, a2, 56
	bnez.n	a11, .L10
.L2:
	retw.n
.LFE49:
	.size	set_websocket_transport_optional_settings$isra$1, .-set_websocket_transport_optional_settings$isra$1
	.section	.text.esp_websocket_client_dispatch_event,"ax",@progbits
	.literal_position
	.literal .LC1, WEBSOCKET_EVENTS
	.align	4
	.type	esp_websocket_client_dispatch_event, @function
esp_websocket_client_dispatch_event:
.LFB30:
	.loc 1 112 0
.LVL8:
	entry	sp, 64
.LCFI2:
	.loc 1 117 0
	l32i.n	a8, a2, 12
	.loc 1 124 0
	l32i.n	a10, a2, 0
	.loc 1 117 0
	l32i.n	a8, a8, 40
	.loc 1 124 0
	movi.n	a15, -1
	.loc 1 117 0
	s32i.n	a8, sp, 16
	.loc 1 120 0
	l32i	a8, a2, 88
	.loc 1 124 0
	movi.n	a14, 0x1c
	.loc 1 120 0
	s8i	a8, sp, 8
	.loc 1 121 0
	l32i	a8, a2, 92
	.loc 1 124 0
	mov.n	a13, sp
	.loc 1 121 0
	s32i.n	a8, sp, 20
	.loc 1 122 0
	l32i	a8, a2, 96
	.loc 1 124 0
	mov.n	a12, a3
	.loc 1 122 0
	s32i.n	a8, sp, 24
	.loc 1 124 0
	l32r	a8, .LC1
	.loc 1 116 0
	s32i.n	a2, sp, 12
	.loc 1 124 0
	l32i.n	a11, a8, 0
	.loc 1 118 0
	s32i.n	a4, sp, 0
	.loc 1 119 0
	s32i.n	a5, sp, 4
	.loc 1 124 0
	call8	esp_event_post_to
.LVL9:
	bnez.n	a10, .L16
.LVL10:
.LBB6:
.LBB7:
	.loc 1 131 0
	mov.n	a11, a10
	l32i.n	a10, a2, 0
.LVL11:
	call8	esp_event_loop_run
.LVL12:
.L16:
.LBE7:
.LBE6:
	.loc 1 132 0
	mov.n	a2, a10
.LVL13:
	retw.n
.LFE30:
	.size	esp_websocket_client_dispatch_event, .-esp_websocket_client_dispatch_event
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"WEBSOCKET_CLIENT"
.LC5:
	.string	"\033[0;32mI (%d) %s: Reconnect after %d ms\033[0m\n"
	.section	.text.esp_websocket_client_abort_connection,"ax",@progbits
	.literal_position
	.literal .LC2, 10000
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.type	esp_websocket_client_abort_connection, @function
esp_websocket_client_abort_connection:
.LFB31:
	.loc 1 135 0
.LVL14:
	entry	sp, 32
.LCFI3:
	.loc 1 136 0
	l32i.n	a10, a2, 8
	call8	esp_transport_close
.LVL15:
	.loc 1 137 0
	l32r	a3, .LC2
	s32i.n	a3, a2, 56
	.loc 1 138 0
	call8	_tick_get_ms
.LVL16:
	.loc 1 139 0
	movi.n	a3, 3
	.loc 1 138 0
	s32i.n	a11, a2, 36
	.loc 1 139 0
	s32i.n	a3, a2, 16
	.loc 1 138 0
	s32i.n	a10, a2, 32
	.loc 1 140 0
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC4
	l32i.n	a15, a2, 56
	l32r	a12, .LC6
	mov.n	a14, a11
	mov.n	a13, a10
	mov.n	a10, a3
	call8	esp_log_write
.LVL18:
	.loc 1 141 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 2
	mov.n	a10, a2
	call8	esp_websocket_client_dispatch_event
.LVL19:
	.loc 1 143 0
	movi.n	a2, 0
.LVL20:
	retw.n
.LFE31:
	.size	esp_websocket_client_abort_connection, .-esp_websocket_client_abort_connection
	.section	.rodata.str1.1
.LC8:
	.string	"\033[0;31mE (%d) %s: There are no transports valid, stop websocket client\033[0m\n"
.LC10:
	.string	"\033[0;31mE (%d) %s: Failed to lock ws-client tasks, exitting the task...\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: There are no transport\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: Error transport connect\033[0m\n"
.LC17:
	.string	"\033[0;31mE (%d) %s: Error, no PONG received for more than %d seconds after PING\033[0m\n"
.LC19:
	.string	"\033[0;31mE (%d) %s: Error read data\033[0m\n"
.LC21:
	.string	"\033[0;31mE (%d) %s: Error receive data\033[0m\n"
.LC23:
	.string	"\033[0;31mE (%d) %s: Network error: esp_transport_poll_read() returned %d, errno=%d\033[0m\n"
	.section	.text.esp_websocket_client_task,"ax",@progbits
	.literal_position
	.literal .LC7, .LC3
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC16, 10000
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC25, -858993459
	.align	4
	.type	esp_websocket_client_task, @function
esp_websocket_client_task:
.LFB39:
	.loc 1 489 0
.LVL21:
	entry	sp, 48
.LCFI4:
.LVL22:
	.loc 1 492 0
	movi.n	a3, 1
	s8i	a3, a2, 64
	.loc 1 495 0
	l32i.n	a3, a2, 12
	l32i.n	a10, a2, 4
	l32i.n	a11, a3, 20
	call8	esp_transport_list_get_transport
.LVL23:
	s32i.n	a10, a2, 8
	mov.n	a3, a10
	.loc 1 497 0
	bnez.n	a10, .L20
	.loc 1 498 0 discriminator 2
	call8	esp_log_timestamp
.LVL24:
	l32r	a11, .LC7
	l32r	a12, .LC9
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL25:
	.loc 1 499 0 discriminator 2
	s8i	a3, a2, 64
.L20:
	.loc 1 502 0
	l32i.n	a3, a2, 12
	l32i.n	a4, a3, 32
	bnez.n	a4, .L21
	.loc 1 503 0
	l32i.n	a10, a2, 8
	call8	esp_transport_get_default_port
.LVL26:
	s32i.n	a10, a3, 32
.L21:
	.loc 1 506 0
	movi.n	a4, 1
	.loc 1 507 0
	l32i	a10, a2, 68
	.loc 1 506 0
	s32i.n	a4, a2, 16
	.loc 1 507 0
	mov.n	a11, a4
	call8	xEventGroupClearBits
.LVL27:
	.loc 1 508 0
	movi.n	a5, 0
	.loc 1 509 0
	j	.L22
.LVL28:
.L49:
	.loc 1 510 0
	l32i	a10, a2, 72
	movi.n	a11, -1
	call8	xQueueTakeMutexRecursive
.LVL29:
	mov.n	a3, a10
	beqi	a10, 1, .L23
	.loc 1 511 0 discriminator 2
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC7
	l32r	a12, .LC11
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL31:
	.loc 1 512 0 discriminator 2
	j	.L24
.L23:
	.loc 1 514 0
	l32i.n	a6, a2, 16
	beqi	a6, 2, .L26
	beqi	a6, 3, .L27
	bnei	a6, 1, .L25
	.loc 1 516 0
	l32i.n	a3, a2, 8
	bnez.n	a3, .L29
	.loc 1 517 0 discriminator 2
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC7
	l32r	a12, .LC13
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a6
	call8	esp_log_write
.LVL33:
	.loc 1 518 0 discriminator 2
	s8i	a3, a2, 64
	.loc 1 519 0 discriminator 2
	j	.L25
.L29:
	.loc 1 522 0
	l32i.n	a8, a2, 12
	.loc 1 521 0
	mov.n	a10, a3
	l32i.n	a13, a8, 44
	l32i.n	a12, a8, 32
	l32i.n	a11, a8, 12
	call8	esp_transport_connect
.LVL34:
	bgez	a10, .L30
	.loc 1 525 0 discriminator 2
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC7
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC15
	mov.n	a10, a6
	j	.L65
.L30:
	.loc 1 531 0
	movi.n	a3, 2
	s32i.n	a3, a2, 16
	.loc 1 533 0
	movi.n	a13, 0
	.loc 1 532 0
	movi.n	a3, 0
	s8i	a3, a2, 65
	.loc 1 533 0
	mov.n	a12, a13
	mov.n	a11, a6
	mov.n	a10, a2
	call8	esp_websocket_client_dispatch_event
.LVL36:
	.loc 1 535 0
	j	.L25
.L26:
	.loc 1 537 0
	call8	_tick_get_ms
.LVL37:
	l32i.n	a6, a2, 40
	l32i.n	a8, a2, 44
	sub	a6, a10, a6
	bltu	a10, a6, .L32
	movi.n	a3, 0
.L32:
	sub	a11, a11, a8
	bne	a11, a3, .L31
	l32r	a3, .LC16
	bgeu	a3, a6, .L34
.L31:
	.loc 1 538 0
	call8	_tick_get_ms
.LVL38:
	.loc 1 540 0
	l32i.n	a3, a2, 12
	.loc 1 538 0
	s32i.n	a10, a2, 40
	.loc 1 540 0
	l32i.n	a14, a3, 44
	movi.n	a13, 0
	l32i.n	a10, a2, 8
	.loc 1 538 0
	s32i.n	a11, a2, 44
	.loc 1 540 0
	mov.n	a12, a13
	movi	a11, 0x89
	call8	esp_transport_ws_send_raw
.LVL39:
	.loc 1 541 0
	l8ui	a3, a2, 65
	bnez.n	a3, .L34
	.loc 1 541 0 is_stmt 0 discriminator 1
	l32i.n	a3, a2, 12
	l32i.n	a3, a3, 60
	beqz.n	a3, .L34
	.loc 1 542 0 is_stmt 1
	call8	_tick_get_ms
.LVL40:
	.loc 1 543 0
	movi.n	a3, 1
	.loc 1 542 0
	s32i.n	a10, a2, 48
	s32i.n	a11, a2, 52
	.loc 1 543 0
	s8i	a3, a2, 65
.L34:
	.loc 1 546 0
	call8	_tick_get_ms
.LVL41:
	l32i.n	a6, a2, 48
	l32i.n	a8, a2, 52
	sub	a6, a10, a6
	movi.n	a3, 1
	bltu	a10, a6, .L37
	movi.n	a3, 0
.L37:
	sub	a11, a11, a8
	sub	a11, a11, a3
	l32i.n	a3, a2, 12
	l32i.n	a8, a3, 60
	slli	a3, a8, 5
	sub	a3, a3, a8
	addx4	a3, a3, a8
	slli	a3, a3, 3
	srai	a8, a3, 31
	bltu	a8, a11, .L51
	bne	a11, a8, .L36
	bgeu	a3, a6, .L36
.L51:
	.loc 1 547 0
	l8ui	a3, a2, 65
	beqz.n	a3, .L36
	.loc 1 548 0 discriminator 2
	call8	esp_log_timestamp
.LVL42:
	l32i.n	a3, a2, 12
	l32r	a11, .LC7
	l32i.n	a15, a3, 60
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
.L64:
	.loc 1 549 0 discriminator 2
	mov.n	a10, a2
	call8	esp_websocket_client_abort_connection
.LVL44:
	.loc 1 550 0 discriminator 2
	j	.L25
.L36:
	.loc 1 554 0
	beqz.n	a5, .L25
	.loc 1 558 0
	call8	_tick_get_ms
.LVL45:
.LBB11:
.LBB12:
	.loc 1 459 0
	movi.n	a3, 0
.LBE12:
.LBE11:
	.loc 1 558 0
	s32i.n	a10, a2, 40
	s32i.n	a11, a2, 44
.LVL46:
.LBB16:
.LBB14:
	.loc 1 459 0
	s32i	a3, a2, 96
.L41:
	.loc 1 461 0
	l32i.n	a3, a2, 12
	l32i	a12, a2, 84
	l32i.n	a13, a3, 44
	l32i	a11, a2, 76
	l32i.n	a10, a2, 8
	call8	esp_transport_read
.LVL47:
	mov.n	a3, a10
.LVL48:
	.loc 1 462 0
	bgez	a10, .L40
	.loc 1 463 0
	call8	esp_log_timestamp
.LVL49:
	l32r	a3, .LC7
.LVL50:
	l32r	a12, .LC20
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
	.loc 1 464 0
	mov.n	a10, a2
	call8	esp_websocket_client_abort_connection
.LVL52:
.LBE14:
.LBE16:
	.loc 1 561 0
	call8	esp_log_timestamp
.LVL53:
	l32r	a12, .LC22
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
.LVL54:
.L65:
	call8	esp_log_write
.LVL55:
	j	.L64
.LVL56:
.L40:
.LBB17:
.LBB15:
	.loc 1 467 0
	l32i.n	a10, a2, 8
	call8	esp_transport_ws_get_read_payload_len
.LVL57:
	s32i	a10, a2, 92
	.loc 1 468 0
	l32i.n	a10, a2, 8
	call8	esp_transport_ws_get_read_opcode
.LVL58:
	.loc 1 470 0
	l32i	a12, a2, 76
	.loc 1 468 0
	s32i	a10, a2, 88
	.loc 1 470 0
	mov.n	a13, a3
	movi.n	a11, 3
	mov.n	a10, a2
	call8	esp_websocket_client_dispatch_event
.LVL59:
	.loc 1 472 0
	l32i	a10, a2, 96
	.loc 1 473 0
	l32i	a13, a2, 92
	.loc 1 472 0
	add.n	a10, a3, a10
	s32i	a10, a2, 96
	.loc 1 473 0
	blt	a10, a13, .L41
	.loc 1 476 0
	l32i	a3, a2, 88
.LVL60:
	movi.n	a6, 9
	bne	a3, a6, .L42
.LBB13:
	.loc 1 477 0
	movi.n	a12, 0
	beq	a13, a12, .L43
	l32i	a12, a2, 76
.L43:
.LVL61:
	.loc 1 478 0
	l32i.n	a3, a2, 12
	l32i.n	a10, a2, 8
	l32i.n	a14, a3, 44
	movi	a11, 0x8a
	call8	esp_transport_ws_send_raw
.LVL62:
	j	.L25
.L42:
.LBE13:
	.loc 1 481 0
	bnei	a3, 10, .L25
	.loc 1 482 0
	movi.n	a3, 0
	s8i	a3, a2, 65
	j	.L25
.LVL63:
.L27:
.LBE15:
.LBE17:
	.loc 1 568 0
	l32i.n	a6, a2, 12
	l8ui	a6, a6, 36
	bnez.n	a6, .L44
	.loc 1 569 0
	s8i	a6, a2, 64
	.loc 1 570 0
	j	.L25
.L44:
	.loc 1 572 0
	call8	_tick_get_ms
.LVL64:
	l32i.n	a6, a2, 32
	l32i.n	a8, a2, 36
	sub	a6, a10, a6
	bltu	a10, a6, .L45
	movi.n	a3, 0
.L45:
	sub	a11, a11, a8
	l32i.n	a8, a2, 56
	sub	a3, a11, a3
	srai	a9, a8, 31
	bltu	a9, a3, .L52
	bne	a3, a9, .L25
	bgeu	a8, a6, .L25
.L52:
	.loc 1 573 0
	s32i.n	a4, a2, 16
	.loc 1 574 0
	call8	_tick_get_ms
.LVL65:
	s32i.n	a10, a2, 32
	s32i.n	a11, a2, 36
.L25:
	.loc 1 579 0
	l32i	a10, a2, 72
	call8	xQueueGiveMutexRecursive
.LVL66:
	.loc 1 580 0
	l32i.n	a3, a2, 16
	bnei	a3, 2, .L47
	.loc 1 581 0
	l32i.n	a10, a2, 8
	movi	a11, 0x3e8
	call8	esp_transport_poll_read
.LVL67:
	mov.n	a5, a10
.LVL68:
	.loc 1 582 0
	bgez	a10, .L22
	.loc 1 583 0 discriminator 2
	call8	esp_log_timestamp
.LVL69:
	mov.n	a3, a10
	call8	__errno
.LVL70:
	l32i.n	a6, a10, 0
	l32r	a11, .LC7
	l32r	a12, .LC24
	s32i.n	a6, sp, 0
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL71:
	.loc 1 584 0 discriminator 2
	mov.n	a10, a2
	call8	esp_websocket_client_abort_connection
.LVL72:
	j	.L22
.L47:
	.loc 1 586 0
	bnei	a3, 3, .L22
	.loc 1 588 0
	l32i.n	a3, a2, 56
	extui	a10, a3, 31, 1
	add.n	a3, a10, a3
	l32r	a10, .LC25
	srai	a3, a3, 1
	muluh	a10, a3, a10
	srli	a10, a10, 3
	call8	vTaskDelay
.LVL73:
.L22:
	.loc 1 509 0
	l8ui	a3, a2, 64
	bnez.n	a3, .L49
.L24:
	.loc 1 592 0
	l32i.n	a10, a2, 8
	call8	esp_transport_close
.LVL74:
	.loc 1 593 0
	l32i	a10, a2, 68
	movi.n	a11, 1
	call8	xEventGroupSetBits
.LVL75:
	.loc 1 594 0
	movi.n	a10, 0
	s32i.n	a10, a2, 16
	.loc 1 595 0
	call8	vTaskDelete
.LVL76:
	retw.n
.LFE39:
	.size	esp_websocket_client_task, .-esp_websocket_client_task
	.section	.rodata.str1.1
.LC27:
	.string	"\033[0;31mE (%d) %s: Error parse uri = %s\033[0m\n"
.LC29:
	.string	"%.*s"
.LC31:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_websocket_client/esp_websocket_client.c"
.LC33:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
.LC35:
	.string	"Memory exhausted"
.LC38:
	.string	"/?%.*s"
.LC40:
	.string	"%.*s?%.*s"
	.section	.text.esp_websocket_client_set_uri,"ax",@progbits
	.literal_position
	.literal .LC26, .LC3
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC37, __FUNCTION__$7305
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.align	4
	.global	esp_websocket_client_set_uri
	.type	esp_websocket_client_set_uri, @function
esp_websocket_client_set_uri:
.LFB37:
	.loc 1 393 0
.LVL77:
	entry	sp, 96
.LCFI5:
	.loc 1 394 0
	movi.n	a5, 1
	movi.n	a4, 0
	moveqz	a4, a5, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L81
	moveqz	a4, a5, a3
	bnez.n	a4, .L81
.LVL78:
.LBB22:
.LBB23:
	.loc 1 398 0
	addi	a10, sp, 16
	call8	http_parser_url_init
.LVL79:
	.loc 1 399 0
	mov.n	a10, a3
	call8	strlen
.LVL80:
	mov.n	a11, a10
	addi	a13, sp, 16
	mov.n	a12, a4
	mov.n	a10, a3
	call8	http_parser_parse_url
.LVL81:
	.loc 1 400 0
	beqz.n	a10, .L68
	.loc 1 401 0
	call8	esp_log_timestamp
.LVL82:
	l32r	a11, .LC26
	l32r	a12, .LC28
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL83:
	.loc 1 402 0
	movi.n	a4, -1
	j	.L67
.LVL84:
.L68:
	.loc 1 404 0
	l16ui	a4, sp, 22
	beqz.n	a4, .L70
	.loc 1 405 0
	l32i.n	a4, a2, 12
	l32i.n	a10, a4, 20
.LVL85:
	call8	free
.LVL86:
	.loc 1 406 0
	l16ui	a13, sp, 20
	l32i.n	a10, a2, 12
	l16ui	a12, sp, 22
	l32r	a11, .LC30
	add.n	a13, a3, a13
	addi	a10, a10, 20
	call8	asprintf
.LVL87:
	.loc 1 407 0
	l32i.n	a4, a2, 12
	l32i.n	a4, a4, 20
	bnez.n	a4, .L70
	call8	esp_log_timestamp
.LVL88:
	l32r	a2, .LC36
.LVL89:
	l32r	a11, .LC26
	s32i.n	a2, sp, 8
	l32r	a2, .LC37
	mov.n	a13, a10
	s32i.n	a2, sp, 4
	movi	a2, 0x197
	s32i.n	a2, sp, 0
	l32r	a15, .LC32
	mov.n	a14, a11
	l32r	a12, .LC34
	mov.n	a10, a5
	j	.L104
.LVL90:
.L70:
	.loc 1 410 0
	l16ui	a4, sp, 26
	beqz.n	a4, .L71
	.loc 1 411 0
	l32i.n	a4, a2, 12
	l32i.n	a10, a4, 12
	call8	free
.LVL91:
	.loc 1 412 0
	l16ui	a13, sp, 24
	l32i.n	a10, a2, 12
	l16ui	a12, sp, 26
	l32r	a11, .LC30
	add.n	a13, a3, a13
	addi.n	a10, a10, 12
	call8	asprintf
.LVL92:
	.loc 1 413 0
	l32i.n	a4, a2, 12
	l32i.n	a4, a4, 12
	bnez.n	a4, .L71
	call8	esp_log_timestamp
.LVL93:
	l32r	a2, .LC36
.LVL94:
	l32r	a11, .LC26
	s32i.n	a2, sp, 8
	l32r	a2, .LC37
	s32i.n	a2, sp, 4
	movi	a2, 0x19d
.LVL95:
.L106:
	l32r	a15, .LC32
	l32r	a12, .LC34
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
.L104:
	call8	esp_log_write
.LVL96:
.L105:
	movi	a4, 0x101
	j	.L67
.LVL97:
.L71:
	.loc 1 417 0
	l16ui	a4, sp, 34
	bnez.n	a4, .L72
	l16ui	a4, sp, 38
	beqz.n	a4, .L73
.L72:
	.loc 1 418 0
	l32i.n	a4, a2, 12
	l32i.n	a10, a4, 16
	call8	free
.LVL98:
	.loc 1 419 0
	l16ui	a14, sp, 38
	l32i.n	a10, a2, 12
	l16ui	a12, sp, 34
	bnez.n	a14, .L74
	.loc 1 420 0
	l16ui	a13, sp, 32
	l32r	a11, .LC30
	add.n	a13, a3, a13
	j	.L102
.L74:
	l16ui	a15, sp, 36
	.loc 1 421 0
	bnez.n	a12, .L76
	.loc 1 422 0
	l32r	a11, .LC39
	add.n	a13, a3, a15
	mov.n	a12, a14
.L102:
	addi	a10, a10, 16
	call8	asprintf
.LVL99:
	j	.L75
.L76:
	.loc 1 424 0
	l16ui	a13, sp, 32
	l32r	a11, .LC41
	add.n	a15, a3, a15
	add.n	a13, a3, a13
	addi	a10, a10, 16
	call8	asprintf
.LVL100:
.L75:
	.loc 1 427 0
	l32i.n	a4, a2, 12
	l32i.n	a4, a4, 16
	bnez.n	a4, .L73
	call8	esp_log_timestamp
.LVL101:
	l32r	a2, .LC36
.LVL102:
	l32r	a11, .LC26
	s32i.n	a2, sp, 8
	l32r	a2, .LC37
	s32i.n	a2, sp, 4
	movi	a2, 0x1ab
	j	.L106
.LVL103:
.L73:
	.loc 1 429 0
	l16ui	a10, sp, 28
	beqz.n	a10, .L77
	.loc 1 430 0
	l32i.n	a4, a2, 12
	movi.n	a12, 0xa
	movi.n	a11, 0
	add.n	a10, a3, a10
	call8	strtol
.LVL104:
	s32i.n	a10, a4, 32
.L77:
	.loc 1 433 0
	l16ui	a12, sp, 46
	movi.n	a5, 0
	.loc 1 453 0
	mov.n	a4, a5
	.loc 1 433 0
	beq	a12, a5, .L67
.LBB24:
	.loc 1 435 0
	l16ui	a13, sp, 44
	l32r	a11, .LC30
	add.n	a13, a3, a13
	addi	a10, sp, 48
	.loc 1 434 0
	s32i.n	a5, sp, 48
	.loc 1 435 0
	call8	asprintf
.LVL105:
	.loc 1 436 0
	l32i.n	a10, sp, 48
	beq	a10, a5, .L105
.LBB25:
	.loc 1 437 0
	movi.n	a11, 0x3a
	call8	strchr
.LVL106:
	mov.n	a3, a10
.LVL107:
	.loc 1 438 0
	beq	a10, a5, .L79
	.loc 1 439 0
	s8i	a5, a10, 0
.LVL108:
	.loc 1 441 0
	l32i.n	a4, a2, 12
	l32i.n	a10, a4, 28
	call8	free
.LVL109:
	.loc 1 442 0
	addi.n	a10, a3, 1
.LVL110:
	l32i.n	a4, a2, 12
	call8	strdup
.LVL111:
	s32i.n	a10, a4, 28
	.loc 1 443 0
	bne	a10, a5, .L79
	call8	esp_log_timestamp
.LVL112:
	l32r	a2, .LC36
.LVL113:
	l32r	a11, .LC26
	s32i.n	a2, sp, 8
	l32r	a2, .LC37
	s32i.n	a2, sp, 4
	movi	a2, 0x1bb
	j	.L106
.LVL114:
.L79:
	.loc 1 445 0
	l32i.n	a3, a2, 12
	l32i.n	a10, a3, 24
	call8	free
.LVL115:
	.loc 1 446 0
	l32i.n	a3, a2, 12
	l32i.n	a2, sp, 48
.LVL116:
	mov.n	a10, a2
	call8	strdup
.LVL117:
	s32i.n	a10, a3, 24
	.loc 1 447 0
	bnez.n	a10, .L80
	call8	esp_log_timestamp
.LVL118:
	l32r	a2, .LC36
	l32r	a11, .LC26
	s32i.n	a2, sp, 8
	l32r	a2, .LC37
	s32i.n	a2, sp, 4
	movi	a2, 0x1bf
	j	.L106
.L80:
	.loc 1 448 0
	mov.n	a10, a2
	call8	free
.LVL119:
.LBE25:
.LBE24:
	.loc 1 453 0
	movi.n	a4, 0
	j	.L67
.LVL120:
.L81:
.LBE23:
.LBE22:
	.loc 1 395 0
	movi	a4, 0x102
.LVL121:
.L67:
	.loc 1 454 0
	mov.n	a2, a4
	retw.n
.LFE37:
	.size	esp_websocket_client_set_uri, .-esp_websocket_client_set_uri
	.section	.rodata.str1.1
.LC43:
	.string	"\033[0;31mE (%d) %s: The client has started\033[0m\n"
.LC45:
	.string	"websocket_task"
.LC49:
	.string	"\033[0;31mE (%d) %s: Error create websocket task\033[0m\n"
	.section	.text.esp_websocket_client_start,"ax",@progbits
	.literal_position
	.literal .LC42, .LC3
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC47, esp_websocket_client_task
	.literal .LC48, 2147483647
	.literal .LC50, .LC49
	.align	4
	.global	esp_websocket_client_start
	.type	esp_websocket_client_start, @function
esp_websocket_client_start:
.LFB40:
	.loc 1 599 0
.LVL122:
	entry	sp, 48
.LCFI6:
	.loc 1 601 0
	movi	a8, 0x102
	.loc 1 600 0
	beqz.n	a2, .L108
	.loc 1 603 0
	l32i.n	a8, a2, 16
	blti	a8, 1, .L109
	.loc 1 604 0 discriminator 2
	call8	esp_log_timestamp
.LVL123:
	l32r	a11, .LC42
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC44
	j	.L113
.L109:
.LBB28:
.LBB29:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.loc 2 440 0
	l32r	a9, .LC48
.LBE29:
.LBE28:
	.loc 1 607 0
	l32i.n	a8, a2, 12
.LVL124:
.LBB31:
.LBB30:
	.loc 2 440 0
	s32i.n	a9, sp, 0
.LVL125:
	l32i.n	a14, a8, 4
	l32i.n	a12, a8, 0
	l32r	a11, .LC46
	l32r	a10, .LC47
	movi.n	a15, 0
	mov.n	a13, a2
	call8	xTaskCreatePinnedToCore
.LVL126:
.LBE30:
.LBE31:
	.loc 1 607 0
	beqi	a10, 1, .L110
	.loc 1 608 0 discriminator 2
	call8	esp_log_timestamp
.LVL127:
	l32r	a11, .LC42
	l32r	a12, .LC50
	mov.n	a14, a11
	mov.n	a13, a10
.LVL128:
.L113:
	movi.n	a10, 1
	call8	esp_log_write
.LVL129:
	.loc 1 609 0 discriminator 2
	movi.n	a8, -1
	j	.L108
.LVL130:
.L110:
	.loc 1 611 0
	mov.n	a11, a10
	l32i	a10, a2, 68
	call8	xEventGroupClearBits
.LVL131:
	.loc 1 612 0
	movi.n	a8, 0
.LVL132:
.L108:
	.loc 1 613 0
	mov.n	a2, a8
.LVL133:
	retw.n
.LFE40:
	.size	esp_websocket_client_start, .-esp_websocket_client_start
	.section	.rodata.str1.1
.LC52:
	.string	"\033[0;33mW (%d) %s: Client was not started\033[0m\n"
	.section	.text.esp_websocket_client_stop,"ax",@progbits
	.literal_position
	.literal .LC51, .LC3
	.literal .LC53, .LC52
	.align	4
	.global	esp_websocket_client_stop
	.type	esp_websocket_client_stop, @function
esp_websocket_client_stop:
.LFB41:
	.loc 1 616 0
.LVL134:
	entry	sp, 32
.LCFI7:
	.loc 1 616 0
	mov.n	a3, a2
	.loc 1 618 0
	movi	a2, 0x102
.LVL135:
	.loc 1 617 0
	beqz.n	a3, .L115
	.loc 1 620 0
	l8ui	a2, a3, 64
	bnez.n	a2, .L116
.LVL136:
.LBB34:
.LBB35:
	.loc 1 621 0
	call8	esp_log_timestamp
.LVL137:
	l32r	a11, .LC51
	l32r	a12, .LC53
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL138:
	movi.n	a2, -1
	retw.n
.LVL139:
.L116:
.LBE35:
.LBE34:
	.loc 1 624 0
	movi.n	a2, 0
	.loc 1 625 0
	movi.n	a13, 1
	l32i	a10, a3, 68
	.loc 1 624 0
	s8i	a2, a3, 64
	.loc 1 625 0
	movi.n	a14, -1
	movi.n	a12, 0
	mov.n	a11, a13
	call8	xEventGroupWaitBits
.LVL140:
	.loc 1 626 0
	movi.n	a8, 0
	s32i.n	a8, a3, 16
	.loc 1 627 0
	mov.n	a2, a8
.L115:
	.loc 1 628 0
	retw.n
.LFE41:
	.size	esp_websocket_client_stop, .-esp_websocket_client_stop
	.section	.text.esp_websocket_client_destroy,"ax",@progbits
	.align	4
	.global	esp_websocket_client_destroy
	.type	esp_websocket_client_destroy, @function
esp_websocket_client_destroy:
.LFB36:
	.loc 1 369 0
.LVL141:
	entry	sp, 32
.LCFI8:
	.loc 1 371 0
	movi	a3, 0x102
	.loc 1 370 0
	beqz.n	a2, .L120
	.loc 1 373 0
	l8ui	a3, a2, 64
	beqz.n	a3, .L121
	.loc 1 374 0
	mov.n	a10, a2
	call8	esp_websocket_client_stop
.LVL142:
.L121:
	.loc 1 376 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L122
	.loc 1 377 0
	call8	esp_event_loop_delete
.LVL143:
.L122:
.LBB38:
.LBB39:
	.loc 1 222 0
	l32i.n	a3, a2, 12
.LVL144:
	.loc 1 223 0
	beqz.n	a3, .L123
	.loc 1 226 0
	l32i.n	a10, a3, 12
	call8	free
.LVL145:
	.loc 1 227 0
	l32i.n	a10, a3, 8
	call8	free
.LVL146:
	.loc 1 228 0
	l32i.n	a10, a3, 16
	call8	free
.LVL147:
	.loc 1 229 0
	l32i.n	a10, a3, 20
	call8	free
.LVL148:
	.loc 1 230 0
	l32i.n	a10, a3, 24
	call8	free
.LVL149:
	.loc 1 231 0
	l32i.n	a10, a3, 28
	call8	free
.LVL150:
	.loc 1 232 0
	l32i.n	a10, a3, 48
	call8	free
.LVL151:
	.loc 1 233 0
	l32i.n	a10, a3, 52
	call8	free
.LVL152:
	.loc 1 234 0
	l32i.n	a10, a3, 56
	call8	free
.LVL153:
	.loc 1 235 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL154:
	.loc 1 236 0
	l32i.n	a10, a2, 12
	.loc 1 237 0
	movi.n	a3, 0
.LVL155:
	.loc 1 236 0
	call8	free
.LVL156:
	.loc 1 237 0
	s32i.n	a3, a2, 12
.L123:
.LBE39:
.LBE38:
	.loc 1 380 0
	l32i.n	a10, a2, 4
	call8	esp_transport_list_destroy
.LVL157:
	.loc 1 381 0
	l32i	a10, a2, 72
	call8	vQueueDelete
.LVL158:
	.loc 1 382 0
	l32i	a10, a2, 80
	call8	free
.LVL159:
	.loc 1 383 0
	l32i	a10, a2, 76
	call8	free
.LVL160:
	.loc 1 384 0
	l32i	a10, a2, 68
	beqz.n	a10, .L124
	.loc 1 385 0
	call8	vEventGroupDelete
.LVL161:
.L124:
	.loc 1 387 0
	mov.n	a10, a2
	call8	free
.LVL162:
	.loc 1 389 0
	movi.n	a3, 0
.LVL163:
.L120:
	.loc 1 390 0
	mov.n	a2, a3
	retw.n
.LFE36:
	.size	esp_websocket_client_destroy, .-esp_websocket_client_destroy
	.section	.rodata.str1.1
.LC59:
	.string	"\033[0;31mE (%d) %s: Error create event handler for websocket client\033[0m\n"
.LC61:
	.string	"_tcp"
.LC63:
	.string	"ws"
.LC65:
	.string	"_ssl"
.LC67:
	.string	"wss"
.LC69:
	.string	"\033[0;31mE (%d) %s: Invalid uri\033[0m\n"
.LC74:
	.string	"\033[0;31mE (%d) %s: Failed to set the configuration\033[0m\n"
	.section	.text.esp_websocket_client_init,"ax",@progbits
	.literal_position
	.literal .LC54, .LC31
	.literal .LC55, .LC3
	.literal .LC56, .LC33
	.literal .LC57, .LC35
	.literal .LC58, __FUNCTION__$7288
	.literal .LC60, .LC59
	.literal .LC62, .LC61
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.literal .LC68, .LC67
	.literal .LC70, .LC69
	.literal .LC71, 4096
	.literal .LC72, __FUNCTION__$7275
	.literal .LC73, 10000
	.literal .LC75, .LC74
	.align	4
	.global	esp_websocket_client_init
	.type	esp_websocket_client_init, @function
esp_websocket_client_init:
.LFB35:
	.loc 1 258 0
.LVL164:
	entry	sp, 80
.LCFI9:
	.loc 1 259 0
	movi	a11, 0x68
	movi.n	a10, 1
	call8	calloc
.LVL165:
	mov.n	a3, a10
.LVL166:
	.loc 1 260 0
	bnez.n	a10, .L140
	.loc 1 260 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL167:
	l32r	a2, .LC57
.LVL168:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	l32r	a15, .LC54
	s32i.n	a2, sp, 4
	l32r	a12, .LC56
	movi	a2, 0x104
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL169:
	j	.L223
.LVL170:
.L140:
	.loc 1 262 0 is_stmt 1
	movi.n	a11, 0
	movi.n	a12, 0x14
	addi	a10, sp, 16
	call8	memset
.LVL171:
	movi.n	a4, 1
	.loc 1 267 0
	mov.n	a11, a3
	addi	a10, sp, 16
	.loc 1 262 0
	s32i.n	a4, sp, 16
	.loc 1 267 0
	call8	esp_event_loop_create
.LVL172:
	beqz.n	a10, .L142
	.loc 1 268 0 discriminator 2
	call8	esp_log_timestamp
.LVL173:
	l32r	a11, .LC55
	l32r	a12, .LC60
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a4
	call8	esp_log_write
.LVL174:
	.loc 1 269 0 discriminator 2
	mov.n	a10, a3
	call8	free
.LVL175:
	j	.L222
.L142:
	.loc 1 273 0
	movi.n	a10, 4
	call8	xQueueCreateMutex
.LVL176:
	s32i	a10, a3, 72
	.loc 1 274 0
	bnez.n	a10, .L143
	.loc 1 274 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL177:
	l32r	a2, .LC57
.LVL178:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x112
	j	.L218
.LVL179:
.L143:
	.loc 1 276 0 is_stmt 1
	movi.n	a11, 0x40
	mov.n	a10, a4
	call8	calloc
.LVL180:
	s32i.n	a10, a3, 12
	.loc 1 277 0
	bnez.n	a10, .L145
	.loc 1 277 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL181:
	l32r	a2, .LC57
.LVL182:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x115
.L218:
	l32r	a15, .LC54
	l32r	a12, .LC56
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a10, a4
.L219:
	call8	esp_log_write
.LVL183:
	j	.L144
.LVL184:
.L145:
	.loc 1 279 0 is_stmt 1
	call8	esp_transport_list_init
.LVL185:
	s32i.n	a10, a3, 4
	.loc 1 280 0
	bnez.n	a10, .L146
	.loc 1 280 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL186:
	l32r	a2, .LC57
.LVL187:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x118
	j	.L218
.LVL188:
.L146:
	.loc 1 282 0 is_stmt 1
	call8	esp_transport_tcp_init
.LVL189:
	mov.n	a5, a10
.LVL190:
	.loc 1 283 0
	bnez.n	a10, .L147
	.loc 1 283 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL191:
	l32r	a2, .LC57
.LVL192:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x11b
	j	.L218
.LVL193:
.L147:
	.loc 1 285 0 is_stmt 1
	movi.n	a11, 0x50
	call8	esp_transport_set_default_port
.LVL194:
	.loc 1 286 0
	l32r	a12, .LC62
	l32i.n	a10, a3, 4
	mov.n	a11, a5
	call8	esp_transport_list_add
.LVL195:
	.loc 1 289 0
	mov.n	a10, a5
	call8	esp_transport_ws_init
.LVL196:
	mov.n	a5, a10
.LVL197:
	.loc 1 290 0
	bnez.n	a10, .L148
	.loc 1 290 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL198:
	l32r	a2, .LC57
.LVL199:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x122
	j	.L218
.LVL200:
.L148:
	.loc 1 292 0 is_stmt 1
	movi.n	a11, 0x50
	call8	esp_transport_set_default_port
.LVL201:
	.loc 1 293 0
	l32r	a4, .LC64
	l32i.n	a10, a3, 4
	mov.n	a11, a5
	mov.n	a12, a4
	call8	esp_transport_list_add
.LVL202:
	.loc 1 294 0
	l32i.n	a5, a2, 48
.LVL203:
	mov.n	a6, a4
	bnei	a5, 1, .L149
	.loc 1 295 0
	l32i.n	a10, a3, 12
	mov.n	a11, a4
	addi	a10, a10, 20
	call8	asprintf
.LVL204:
	.loc 1 296 0
	l32i.n	a4, a3, 12
	l32i.n	a4, a4, 20
	bnez.n	a4, .L149
	.loc 1 296 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL205:
	l32r	a2, .LC57
.LVL206:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	mov.n	a13, a10
	s32i.n	a2, sp, 4
	movi	a2, 0x128
	s32i.n	a2, sp, 0
	l32r	a15, .LC54
	mov.n	a14, a11
	l32r	a12, .LC56
	mov.n	a10, a5
	j	.L219
.LVL207:
.L149:
	.loc 1 299 0 is_stmt 1
	call8	esp_transport_ssl_init
.LVL208:
	mov.n	a4, a10
.LVL209:
	.loc 1 300 0
	bnez.n	a10, .L150
	.loc 1 300 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL210:
	l32r	a2, .LC57
.LVL211:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x12c
	j	.L217
.LVL212:
.L150:
	.loc 1 302 0 is_stmt 1
	movi	a11, 0x1bb
	call8	esp_transport_set_default_port
.LVL213:
	.loc 1 303 0
	l32i.n	a5, a2, 44
	beqz.n	a5, .L151
	.loc 1 304 0
	mov.n	a10, a5
	call8	strlen
.LVL214:
	mov.n	a12, a10
	mov.n	a11, a5
	mov.n	a10, a4
	call8	esp_transport_ssl_set_cert_data
.LVL215:
.L151:
	.loc 1 306 0
	l32r	a12, .LC66
	l32i.n	a10, a3, 4
	mov.n	a11, a4
	call8	esp_transport_list_add
.LVL216:
	.loc 1 308 0
	mov.n	a10, a4
	call8	esp_transport_ws_init
.LVL217:
	mov.n	a5, a10
.LVL218:
	.loc 1 309 0
	bnez.n	a10, .L152
	.loc 1 309 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL219:
	l32r	a2, .LC57
.LVL220:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x135
	j	.L217
.LVL221:
.L152:
	.loc 1 311 0 is_stmt 1
	movi	a11, 0x1bb
	call8	esp_transport_set_default_port
.LVL222:
	.loc 1 313 0
	l32r	a4, .LC68
.LVL223:
	l32i.n	a10, a3, 4
	mov.n	a11, a5
	mov.n	a12, a4
	call8	esp_transport_list_add
.LVL224:
	.loc 1 314 0
	l32i.n	a8, a2, 48
	mov.n	a5, a4
.LVL225:
	bnei	a8, 2, .L153
	.loc 1 315 0
	l32i.n	a10, a3, 12
	mov.n	a11, a4
	addi	a10, a10, 20
	call8	asprintf
.LVL226:
	.loc 1 316 0
	l32i.n	a4, a3, 12
	l32i.n	a4, a4, 20
	bnez.n	a4, .L153
	.loc 1 316 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL227:
	l32r	a2, .LC57
.LVL228:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x13c
	j	.L217
.LVL229:
.L153:
	.loc 1 319 0 is_stmt 1
	l32i.n	a11, a2, 0
	beqz.n	a11, .L154
	.loc 1 320 0
	mov.n	a10, a3
	call8	esp_websocket_client_set_uri
.LVL230:
	beqz.n	a10, .L154
	.loc 1 321 0 discriminator 2
	call8	esp_log_timestamp
.LVL231:
	l32r	a11, .LC55
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC70
	j	.L220
.L154:
.LBB42:
.LBB43:
	.loc 1 148 0
	l32i.n	a8, a2, 32
	l32i.n	a4, a3, 12
.LVL232:
	.loc 1 149 0
	blti	a8, 1, .L155
	j	.L215
.L155:
	.loc 1 150 0
	movi.n	a8, 5
.L215:
	s32i.n	a8, a4, 4
	.loc 1 153 0
	l32i.n	a8, a2, 36
	.loc 1 154 0
	beqz.n	a8, .L157
	j	.L216
.L157:
	.loc 1 155 0
	l32r	a8, .LC71
.L216:
	.loc 1 158 0
	l32i.n	a10, a2, 4
	.loc 1 155 0
	s32i.n	a8, a4, 0
	.loc 1 158 0
	beqz.n	a10, .L159
	.loc 1 159 0
	call8	strdup
.LVL233:
	s32i.n	a10, a4, 12
	.loc 1 160 0
	bnez.n	a10, .L159
	call8	esp_log_timestamp
.LVL234:
	l32r	a2, .LC57
.LVL235:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xa0
	j	.L221
.LVL236:
.L159:
	.loc 1 163 0
	l32i.n	a8, a2, 8
	beqz.n	a8, .L161
	.loc 1 164 0
	s32i.n	a8, a4, 32
.L161:
	.loc 1 167 0
	l32i.n	a8, a2, 12
	beqz.n	a8, .L162
	.loc 1 168 0
	l32i.n	a10, a4, 24
	call8	free
.LVL237:
	.loc 1 169 0
	l32i.n	a10, a2, 12
	call8	strdup
.LVL238:
	s32i.n	a10, a4, 24
	.loc 1 170 0
	bnez.n	a10, .L162
	call8	esp_log_timestamp
.LVL239:
	l32r	a2, .LC57
.LVL240:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xaa
	j	.L221
.LVL241:
.L162:
	.loc 1 173 0
	l32i.n	a8, a2, 16
	beqz.n	a8, .L163
	.loc 1 174 0
	l32i.n	a10, a4, 28
	call8	free
.LVL242:
	.loc 1 175 0
	l32i.n	a10, a2, 16
	call8	strdup
.LVL243:
	s32i.n	a10, a4, 28
	.loc 1 176 0
	bnez.n	a10, .L163
	call8	esp_log_timestamp
.LVL244:
	l32r	a2, .LC57
.LVL245:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xb0
	j	.L221
.LVL246:
.L163:
	.loc 1 179 0
	l32i.n	a8, a2, 0
	beqz.n	a8, .L164
	.loc 1 180 0
	l32i.n	a10, a4, 8
	call8	free
.LVL247:
	.loc 1 181 0
	l32i.n	a10, a2, 0
	call8	strdup
.LVL248:
	s32i.n	a10, a4, 8
	.loc 1 182 0
	bnez.n	a10, .L164
	call8	esp_log_timestamp
.LVL249:
	l32r	a2, .LC57
.LVL250:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xb6
	j	.L221
.LVL251:
.L164:
	.loc 1 184 0
	l32i.n	a8, a2, 20
	beqz.n	a8, .L165
	.loc 1 185 0
	l32i.n	a10, a4, 16
	call8	free
.LVL252:
	.loc 1 186 0
	l32i.n	a10, a2, 20
	call8	strdup
.LVL253:
	s32i.n	a10, a4, 16
	.loc 1 187 0
	bnez.n	a10, .L165
	call8	esp_log_timestamp
.LVL254:
	l32r	a2, .LC57
.LVL255:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xbb
	j	.L221
.LVL256:
.L165:
	.loc 1 189 0
	l32i.n	a8, a2, 52
	beqz.n	a8, .L166
	.loc 1 190 0
	l32i.n	a10, a4, 48
	call8	free
.LVL257:
	.loc 1 191 0
	l32i.n	a10, a2, 52
	call8	strdup
.LVL258:
	s32i.n	a10, a4, 48
	.loc 1 192 0
	bnez.n	a10, .L166
	call8	esp_log_timestamp
.LVL259:
	l32r	a2, .LC57
.LVL260:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xc0
	j	.L221
.LVL261:
.L166:
	.loc 1 194 0
	l32i.n	a8, a2, 56
	beqz.n	a8, .L167
	.loc 1 195 0
	l32i.n	a10, a4, 52
	call8	free
.LVL262:
	.loc 1 196 0
	l32i.n	a10, a2, 56
	call8	strdup
.LVL263:
	s32i.n	a10, a4, 52
	.loc 1 197 0
	bnez.n	a10, .L167
	call8	esp_log_timestamp
.LVL264:
	l32r	a2, .LC57
.LVL265:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xc5
	j	.L221
.LVL266:
.L167:
	.loc 1 199 0
	l32i.n	a8, a2, 60
	beqz.n	a8, .L168
	.loc 1 200 0
	l32i.n	a10, a4, 56
	call8	free
.LVL267:
	.loc 1 201 0
	l32i.n	a10, a2, 60
	call8	strdup
.LVL268:
	s32i.n	a10, a4, 56
	.loc 1 202 0
	bnez.n	a10, .L168
	call8	esp_log_timestamp
.LVL269:
	l32r	a2, .LC57
.LVL270:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC72
	s32i.n	a2, sp, 4
	movi	a2, 0xca
.L221:
	l32r	a15, .LC54
	l32r	a12, .LC56
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL271:
	j	.L160
.LVL272:
.L168:
	.loc 1 205 0
	l32r	a8, .LC73
	s32i.n	a8, a4, 44
	.loc 1 206 0
	l32i.n	a8, a2, 28
	s32i.n	a8, a4, 40
	.loc 1 207 0
	movi.n	a8, 1
	s8i	a8, a4, 36
	.loc 1 208 0
	l8ui	a8, a2, 24
	beqz.n	a8, .L169
	.loc 1 209 0
	movi.n	a8, 0
	s8i	a8, a4, 36
.L169:
	.loc 1 212 0
	l32i	a8, a2, 64
.LBE43:
.LBE42:
	.loc 1 331 0
	l32i.n	a10, a3, 12
.LBB45:
.LBB44:
	.loc 1 212 0
	s32i.n	a8, a4, 60
.LBE44:
.LBE45:
	.loc 1 331 0
	l32i.n	a4, a10, 20
.LVL273:
	bnez.n	a4, .L170
	.loc 1 332 0
	mov.n	a11, a6
	addi	a10, a10, 20
	call8	asprintf
.LVL274:
	.loc 1 333 0
	l32i.n	a4, a3, 12
	l32i.n	a4, a4, 20
	bnez.n	a4, .L170
	.loc 1 333 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL275:
	l32r	a2, .LC57
.LVL276:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x14d
	j	.L217
.LVL277:
.L170:
	.loc 1 336 0 is_stmt 1
	l32i.n	a10, a3, 4
	mov.n	a11, a6
	call8	esp_transport_list_get_transport
.LVL278:
	addi.n	a4, a3, 12
	mov.n	a11, a10
	mov.n	a10, a4
	call8	set_websocket_transport_optional_settings$isra$1
.LVL279:
	.loc 1 337 0
	l32i.n	a10, a3, 4
	mov.n	a11, a5
	call8	esp_transport_list_get_transport
.LVL280:
	mov.n	a11, a10
	mov.n	a10, a4
	call8	set_websocket_transport_optional_settings$isra$1
.LVL281:
	.loc 1 339 0
	call8	_tick_get_ms
.LVL282:
	s32i.n	a10, a3, 24
	s32i.n	a11, a3, 28
	.loc 1 340 0
	call8	_tick_get_ms
.LVL283:
	s32i.n	a10, a3, 32
	s32i.n	a11, a3, 36
	.loc 1 341 0
	call8	_tick_get_ms
.LVL284:
	.loc 1 343 0
	l32i.n	a2, a2, 40
.LVL285:
	.loc 1 341 0
	s32i.n	a10, a3, 40
	s32i.n	a11, a3, 44
	.loc 1 344 0
	bgei	a2, 1, .L171
	.loc 1 345 0
	movi	a2, 0x400
.LVL286:
.L171:
	.loc 1 347 0
	mov.n	a10, a2
	call8	malloc
.LVL287:
	s32i	a10, a3, 76
	.loc 1 348 0
	bnez.n	a10, .L172
	.loc 1 348 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL288:
	l32r	a2, .LC57
.LVL289:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x15e
	j	.L217
.LVL290:
.L172:
	.loc 1 351 0 is_stmt 1
	mov.n	a10, a2
	call8	malloc
.LVL291:
	s32i	a10, a3, 80
	.loc 1 352 0
	bnez.n	a10, .L173
	.loc 1 352 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL292:
	l32r	a2, .LC57
.LVL293:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x162
	j	.L217
.LVL294:
.L173:
	.loc 1 355 0 is_stmt 1
	call8	xEventGroupCreate
.LVL295:
	s32i	a10, a3, 68
	.loc 1 356 0
	bnez.n	a10, .L174
	.loc 1 356 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL296:
	l32r	a2, .LC57
.LVL297:
	l32r	a11, .LC55
	s32i.n	a2, sp, 8
	l32r	a2, .LC58
	s32i.n	a2, sp, 4
	movi	a2, 0x166
.LVL298:
.L217:
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	l32r	a15, .LC54
	mov.n	a14, a11
	l32r	a12, .LC56
	movi.n	a10, 1
	j	.L219
.LVL299:
.L174:
	.loc 1 360 0 is_stmt 1
	s32i	a2, a3, 84
.LVL300:
.L223:
	.loc 1 361 0
	mov.n	a2, a3
	retw.n
.L144:
	.loc 1 364 0
	mov.n	a10, a3
	call8	esp_websocket_client_destroy
.LVL301:
.L222:
	.loc 1 365 0
	movi.n	a2, 0
	retw.n
.LVL302:
.L160:
	.loc 1 327 0
	call8	esp_log_timestamp
.LVL303:
	l32r	a11, .LC55
	l32r	a12, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
.LVL304:
.L220:
	movi.n	a10, 1
	call8	esp_log_write
.LVL305:
	.loc 1 328 0
	j	.L144
.LFE35:
	.size	esp_websocket_client_init, .-esp_websocket_client_init
	.section	.text.esp_websocket_client_is_connected,"ax",@progbits
	.align	4
	.global	esp_websocket_client_is_connected
	.type	esp_websocket_client_is_connected, @function
esp_websocket_client_is_connected:
.LFB46:
	.loc 1 701 0
.LVL306:
	entry	sp, 32
.LCFI10:
	.loc 1 703 0
	mov.n	a8, a2
	.loc 1 702 0
	beqz.n	a2, .L225
	.loc 1 705 0
	l32i.n	a8, a2, 16
	movi.n	a2, 0
.LVL307:
	addi	a9, a8, -2
	movi.n	a8, 1
	movnez	a8, a2, a9
	extui	a8, a8, 0, 8
.L225:
	.loc 1 706 0
	mov.n	a2, a8
	retw.n
.LFE46:
	.size	esp_websocket_client_is_connected, .-esp_websocket_client_is_connected
	.section	.rodata.str1.1
.LC77:
	.string	"\033[0;31mE (%d) %s: Invalid arguments\033[0m\n"
.LC79:
	.string	"\033[0;31mE (%d) %s: Could not lock ws-client within %d timeout\033[0m\n"
.LC81:
	.string	"\033[0;31mE (%d) %s: Websocket client is not connected\033[0m\n"
.LC83:
	.string	"\033[0;31mE (%d) %s: Invalid transport\033[0m\n"
.LC85:
	.string	"\033[0;31mE (%d) %s: Network error: esp_transport_write() returned %d, errno=%d\033[0m\n"
	.section	.text.esp_websocket_client_send_with_opcode,"ax",@progbits
	.literal_position
	.literal .LC76, .LC3
	.literal .LC78, .LC77
	.literal .LC80, .LC79
	.literal .LC82, .LC81
	.literal .LC84, .LC83
	.literal .LC86, .LC85
	.align	4
	.type	esp_websocket_client_send_with_opcode, @function
esp_websocket_client_send_with_opcode:
.LFB45:
	.loc 1 648 0
.LVL308:
	entry	sp, 64
.LCFI11:
	.loc 1 648 0
	s32i.n	a4, sp, 16
	mov.n	a4, a5
.LVL309:
	.loc 1 653 0
	movi.n	a5, 0
.LVL310:
	mov.n	a8, a5
	.loc 1 648 0
	s32i.n	a3, sp, 20
	.loc 1 653 0
	movi.n	a3, 1
.LVL311:
	moveqz	a8, a3, a2
	mov.n	a7, a8
	l32i.n	a8, sp, 16
	moveqz	a5, a3, a8
	or	a5, a7, a5
	bnez.n	a5, .L238
	addi.n	a7, a4, -1
	or	a7, a4, a7
	extui	a7, a7, 31, 1
	beqz.n	a7, .L228
.L238:
	.loc 1 654 0 discriminator 2
	call8	esp_log_timestamp
.LVL312:
	l32r	a11, .LC76
	l32r	a12, .LC78
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL313:
	j	.L241
.LVL314:
.L228:
	.loc 1 658 0
	l32i	a10, a2, 72
	mov.n	a11, a6
	call8	xQueueTakeMutexRecursive
.LVL315:
	mov.n	a5, a10
	beqi	a10, 1, .L231
	.loc 1 659 0 discriminator 2
	call8	esp_log_timestamp
.LVL316:
	l32r	a11, .LC76
	l32r	a12, .LC80
	mov.n	a13, a10
	mov.n	a15, a6
	mov.n	a14, a11
	mov.n	a10, a3
	call8	esp_log_write
.LVL317:
.L241:
	.loc 1 660 0 discriminator 2
	movi.n	a2, -1
.LVL318:
	retw.n
.LVL319:
.L231:
	.loc 1 663 0
	mov.n	a10, a2
	call8	esp_websocket_client_is_connected
.LVL320:
	bnez.n	a10, .L232
	.loc 1 664 0 discriminator 2
	call8	esp_log_timestamp
.LVL321:
	l32r	a11, .LC76
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC82
	j	.L240
.L232:
	.loc 1 668 0
	l32i.n	a9, a2, 8
	bnez.n	a9, .L234
	.loc 1 669 0 discriminator 2
	call8	esp_log_timestamp
.LVL322:
	l32r	a11, .LC76
	l32r	a12, .LC84
	mov.n	a14, a11
	mov.n	a13, a10
.L240:
	mov.n	a10, a5
	call8	esp_log_write
.LVL323:
	.loc 1 651 0 discriminator 2
	movi.n	a7, -1
	.loc 1 670 0 discriminator 2
	j	.L233
.L234:
	addx4	a5, a6, a6
	addi.n	a15, a6, 1
	slli	a5, a5, 1
	movi.n	a6, -1
.LVL324:
	.loc 1 681 0
	l32i.n	a3, sp, 20
	movnez	a6, a5, a15
	mov.n	a10, a4
	.loc 1 677 0
	movi	a9, 0x80
.LVL325:
.L237:
	.loc 1 674 0
	l32i	a5, a2, 84
	blt	a5, a10, .L235
	.loc 1 677 0
	or	a3, a3, a9
.LVL326:
	mov.n	a5, a10
.L235:
.LVL327:
	.loc 1 679 0
	l32i.n	a8, sp, 16
	l32i	a10, a2, 80
	add.n	a11, a8, a7
	mov.n	a12, a5
	s32i.n	a9, sp, 24
	call8	memcpy
.LVL328:
	.loc 1 681 0
	l32i	a12, a2, 80
	l32i.n	a10, a2, 8
	mov.n	a11, a3
	mov.n	a14, a6
	mov.n	a13, a5
	call8	esp_transport_ws_send_raw
.LVL329:
	mov.n	a3, a10
.LVL330:
	.loc 1 683 0
	l32i.n	a9, sp, 24
	bgei	a10, 1, .L236
.LVL331:
	.loc 1 685 0
	call8	esp_log_timestamp
.LVL332:
	mov.n	a4, a10
.LVL333:
	call8	__errno
.LVL334:
	l32r	a11, .LC76
	l32i.n	a5, a10, 0
.LVL335:
	l32r	a12, .LC86
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a4
	movi.n	a10, 1
	s32i.n	a5, sp, 0
	call8	esp_log_write
.LVL336:
	.loc 1 686 0
	mov.n	a10, a2
	call8	esp_websocket_client_abort_connection
.LVL337:
	.loc 1 681 0
	mov.n	a7, a3
.LVL338:
	.loc 1 687 0
	j	.L233
.LVL339:
.L236:
	.loc 1 690 0
	add.n	a7, a7, a10
.LVL340:
	.loc 1 691 0
	sub	a10, a4, a7
.LVL341:
	.loc 1 689 0
	movi.n	a3, 0
.LVL342:
	.loc 1 673 0
	blt	a7, a4, .L237
.LVL343:
.L233:
	.loc 1 696 0
	l32i	a10, a2, 72
	.loc 1 697 0
	mov.n	a2, a7
.LVL344:
	.loc 1 696 0
	call8	xQueueGiveMutexRecursive
.LVL345:
	.loc 1 698 0
	retw.n
.LFE45:
	.size	esp_websocket_client_send_with_opcode, .-esp_websocket_client_send_with_opcode
	.section	.text.esp_websocket_client_send_text,"ax",@progbits
	.align	4
	.global	esp_websocket_client_send_text
	.type	esp_websocket_client_send_text, @function
esp_websocket_client_send_text:
.LFB42:
	.loc 1 633 0
.LVL346:
	entry	sp, 32
.LCFI12:
	.loc 1 634 0
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a11, 1
	mov.n	a10, a2
	call8	esp_websocket_client_send_with_opcode
.LVL347:
	.loc 1 635 0
	mov.n	a2, a10
.LVL348:
	retw.n
.LFE42:
	.size	esp_websocket_client_send_text, .-esp_websocket_client_send_text
	.section	.text.esp_websocket_client_send_bin,"ax",@progbits
	.align	4
	.global	esp_websocket_client_send_bin
	.type	esp_websocket_client_send_bin, @function
esp_websocket_client_send_bin:
.LFB44:
	.loc 1 643 0
.LVL349:
	entry	sp, 32
.LCFI13:
	.loc 1 644 0
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a11, 2
	mov.n	a10, a2
	call8	esp_websocket_client_send_with_opcode
.LVL350:
	.loc 1 645 0
	mov.n	a2, a10
.LVL351:
	retw.n
.LFE44:
	.size	esp_websocket_client_send_bin, .-esp_websocket_client_send_bin
	.section	.text.esp_websocket_client_send,"ax",@progbits
	.align	4
	.global	esp_websocket_client_send
	.type	esp_websocket_client_send, @function
esp_websocket_client_send:
.LFB54:
	entry	sp, 32
.LCFI14:
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_websocket_client_send_bin
	mov.n	a2, a10
	retw.n
.LFE54:
	.size	esp_websocket_client_send, .-esp_websocket_client_send
	.section	.text.esp_websocket_register_events,"ax",@progbits
	.literal_position
	.literal .LC87, WEBSOCKET_EVENTS
	.align	4
	.global	esp_websocket_register_events
	.type	esp_websocket_register_events, @function
esp_websocket_register_events:
.LFB47:
	.loc 1 712 0
.LVL352:
	.loc 1 712 0
	entry	sp, 32
.LCFI15:
	.loc 1 712 0
	mov.n	a12, a3
	mov.n	a13, a4
	mov.n	a14, a5
	.loc 1 714 0
	movi	a10, 0x102
	.loc 1 713 0
	beqz.n	a2, .L246
	.loc 1 716 0
	l32r	a8, .LC87
	l32i.n	a10, a2, 0
	l32i.n	a11, a8, 0
	call8	esp_event_handler_register_with
.LVL353:
.L246:
	.loc 1 717 0
	mov.n	a2, a10
.LVL354:
	retw.n
.LFE47:
	.size	esp_websocket_register_events, .-esp_websocket_register_events
	.section	.rodata.__FUNCTION__$7305,"a",@progbits
	.type	__FUNCTION__$7305, @object
	.size	__FUNCTION__$7305, 29
__FUNCTION__$7305:
	.string	"esp_websocket_client_set_uri"
	.section	.rodata.__FUNCTION__$7275,"a",@progbits
	.type	__FUNCTION__$7275, @object
	.size	__FUNCTION__$7275, 32
__FUNCTION__$7275:
	.string	"esp_websocket_client_set_config"
	.section	.rodata.__FUNCTION__$7288,"a",@progbits
	.type	__FUNCTION__$7288, @object
	.size	__FUNCTION__$7288, 26
__FUNCTION__$7288:
	.string	"esp_websocket_client_init"
	.global	WEBSOCKET_EVENTS
	.section	.rodata.str1.1
.LC88:
	.string	"WEBSOCKET_EVENTS"
	.section	.data.WEBSOCKET_EVENTS,"aw",@progbits
	.align	4
	.type	WEBSOCKET_EVENTS, @object
	.size	WEBSOCKET_EVENTS, 4
WEBSOCKET_EVENTS:
	.word	.LC88
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI0-.LFB29
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI3-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI4-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI5-.LFB37
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI6-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI7-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI8-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI10-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI11-.LFB45
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI12-.LFB42
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
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI15-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/include/esp_event_base.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_event/include/esp_event.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_websocket_client/include/esp_websocket_client.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport_ws.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/port/include/http_parser.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/event_groups.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_timer.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 23 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport_tcp.h"
	.file 24 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport_ssl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x207f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF234
	.byte	0xc
	.4byte	.LASF235
	.4byte	.LASF236
	.4byte	.Ldebug_ranges0+0x50
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x70
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x39
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0x100
	.uleb128 0x8
	.4byte	0x10b
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4d
	.4byte	0xfa
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x18
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x6f
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x76
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x6e
	.4byte	0x94
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x58
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.byte	0x4f
	.4byte	0x159
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xa
	.byte	0x1b
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0xa
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xa
	.byte	0x1d
	.4byte	0x190
	.uleb128 0x6
	.byte	0x4
	.4byte	0x196
	.uleb128 0x8
	.4byte	0x1b0
	.uleb128 0x9
	.4byte	0x94
	.uleb128 0x9
	.4byte	0x16f
	.uleb128 0x9
	.4byte	0xd9
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.byte	0x14
	.byte	0xb
	.byte	0x22
	.4byte	0x1f5
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xb
	.byte	0x23
	.4byte	0xd9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xb
	.byte	0x24
	.4byte	0xb8
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xb
	.byte	0x26
	.4byte	0x133
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xb
	.byte	0x27
	.4byte	0xe4
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xb
	.byte	0x28
	.4byte	0x128
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xb
	.byte	0x2a
	.4byte	0x1b0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xc
	.byte	0x1e
	.4byte	0x20b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x211
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x68
	.byte	0x1
	.byte	0x4f
	.4byte	0x31a
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x50
	.4byte	0x17a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x51
	.4byte	0x4c8
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x52
	.4byte	0x4de
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x53
	.4byte	0x72b
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0x54
	.4byte	0x720
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1
	.byte	0x55
	.4byte	0xef
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0x56
	.4byte	0xef
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0x57
	.4byte	0xef
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x58
	.4byte	0xef
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x59
	.4byte	0x70
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0x5a
	.4byte	0x70
	.byte	0x3c
	.uleb128 0xd
	.string	"run"
	.byte	0x1
	.byte	0x5b
	.4byte	0x121
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5c
	.4byte	0x121
	.byte	0x41
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5d
	.4byte	0x5e5
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x5e
	.4byte	0x164
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5f
	.4byte	0xab
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x1
	.byte	0x60
	.4byte	0xab
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x1
	.byte	0x61
	.4byte	0x70
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x1
	.byte	0x62
	.4byte	0x52f
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x1
	.byte	0x63
	.4byte	0x70
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x1
	.byte	0x64
	.4byte	0x70
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x70
	.byte	0xc
	.byte	0x25
	.4byte	0x34b
	.uleb128 0xf
	.4byte	.LASF60
	.sleb128 -1
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
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x2c
	.4byte	0x31a
	.uleb128 0xa
	.byte	0x1c
	.byte	0xc
	.byte	0x31
	.4byte	0x3b3
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xc
	.byte	0x32
	.4byte	0xb8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xc
	.byte	0x33
	.4byte	0x70
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xc
	.byte	0x34
	.4byte	0xc3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xc
	.byte	0x35
	.4byte	0x200
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xc
	.byte	0x36
	.4byte	0x94
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xc
	.byte	0x37
	.4byte	0x70
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xc
	.byte	0x38
	.4byte	0x70
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xc
	.byte	0x39
	.4byte	0x356
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x3e
	.4byte	0x3dd
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xc
	.byte	0x42
	.4byte	0x3be
	.uleb128 0xa
	.byte	0x44
	.byte	0xc
	.byte	0x47
	.4byte	0x4bd
	.uleb128 0xd
	.string	"uri"
	.byte	0xc
	.byte	0x48
	.4byte	0xb8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xc
	.byte	0x49
	.4byte	0xb8
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0xc
	.byte	0x4a
	.4byte	0x70
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xc
	.byte	0x4b
	.4byte	0xb8
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0xc
	.byte	0x4c
	.4byte	0xb8
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xc
	.byte	0x4d
	.4byte	0xb8
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xc
	.byte	0x4e
	.4byte	0x121
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xc
	.byte	0x4f
	.4byte	0x94
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xc
	.byte	0x50
	.4byte	0x70
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xc
	.byte	0x51
	.4byte	0x70
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xc
	.byte	0x52
	.4byte	0x70
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xc
	.byte	0x53
	.4byte	0xb8
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xc
	.byte	0x54
	.4byte	0x3dd
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xc
	.byte	0x55
	.4byte	0xab
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xc
	.byte	0x56
	.4byte	0xab
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xc
	.byte	0x57
	.4byte	0xab
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xc
	.byte	0x58
	.4byte	0x70
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xc
	.byte	0x59
	.4byte	0x3e8
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xd
	.byte	0x19
	.4byte	0x4d3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d9
	.uleb128 0x11
	.4byte	.LASF93
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xd
	.byte	0x1a
	.4byte	0x4e9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ef
	.uleb128 0x11
	.4byte	.LASF94
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x10
	.4byte	0x52f
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xe
	.byte	0x18
	.4byte	0x4f4
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.2byte	0x10e
	.4byte	0x57c
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xf
	.2byte	0x125
	.4byte	0x5a0
	.uleb128 0x15
	.string	"off"
	.byte	0xf
	.2byte	0x126
	.4byte	0xce
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0xf
	.2byte	0x127
	.4byte	0xce
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x20
	.byte	0xf
	.2byte	0x121
	.4byte	0x5d5
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0xf
	.2byte	0x122
	.4byte	0xce
	.byte	0
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0xf
	.2byte	0x123
	.4byte	0xce
	.byte	0x2
	.uleb128 0x17
	.4byte	.LASF116
	.byte	0xf
	.2byte	0x128
	.4byte	0x5d5
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	0x57c
	.4byte	0x5e5
	.uleb128 0x19
	.4byte	0x9d
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x10
	.byte	0x78
	.4byte	0x94
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x1f
	.4byte	0x621
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x40
	.byte	0x1
	.byte	0x34
	.4byte	0x6ea
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x1
	.byte	0x35
	.4byte	0x70
	.byte	0
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x1
	.byte	0x36
	.4byte	0x70
	.byte	0x4
	.uleb128 0xd
	.string	"uri"
	.byte	0x1
	.byte	0x37
	.4byte	0xab
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x1
	.byte	0x38
	.4byte	0xab
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x1
	.byte	0x39
	.4byte	0xab
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x1
	.byte	0x3a
	.4byte	0xab
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x1
	.byte	0x3b
	.4byte	0xab
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x1
	.byte	0x3c
	.4byte	0xab
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x1
	.byte	0x3d
	.4byte	0x70
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0x3e
	.4byte	0x121
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3f
	.4byte	0x94
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x1
	.byte	0x40
	.4byte	0x70
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x1
	.byte	0x41
	.4byte	0xab
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x1
	.byte	0x42
	.4byte	0xab
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x1
	.byte	0x43
	.4byte	0xab
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x1
	.byte	0x44
	.4byte	0x70
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x1
	.byte	0x45
	.4byte	0x621
	.uleb128 0xe
	.byte	0x4
	.4byte	0x70
	.byte	0x1
	.byte	0x47
	.4byte	0x720
	.uleb128 0xf
	.4byte	.LASF127
	.sleb128 -1
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x1
	.byte	0x4d
	.4byte	0x6f5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ea
	.uleb128 0x1a
	.4byte	.LASF135
	.byte	0x1
	.byte	0x91
	.4byte	0x116
	.byte	0x1
	.4byte	0x770
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0x91
	.4byte	0x200
	.uleb128 0x1b
	.4byte	.LASF43
	.byte	0x1
	.byte	0x91
	.4byte	0x770
	.uleb128 0x1c
	.string	"cfg"
	.byte	0x1
	.byte	0x93
	.4byte	0x72b
	.uleb128 0x1d
	.4byte	.LASF133
	.4byte	0x78b
	.4byte	.LASF135
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x776
	.uleb128 0x7
	.4byte	0x4bd
	.uleb128 0x18
	.4byte	0xb1
	.4byte	0x78b
	.uleb128 0x19
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0x77b
	.uleb128 0x1e
	.4byte	.LASF237
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	0x7b3
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0xf1
	.4byte	0x200
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0x1
	.byte	0xf1
	.4byte	0x4de
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0x1
	.byte	0x6c
	.4byte	0x116
	.byte	0x1
	.4byte	0x806
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0x6c
	.4byte	0x200
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x6d
	.4byte	0x34b
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0x1
	.byte	0x6e
	.4byte	0xb8
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1
	.byte	0x6f
	.4byte	0x70
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x71
	.4byte	0x116
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x1
	.byte	0x72
	.4byte	0x3b3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x188
	.4byte	0x116
	.byte	0x1
	.4byte	0x871
	.uleb128 0x21
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x188
	.4byte	0x200
	.uleb128 0x22
	.string	"uri"
	.byte	0x1
	.2byte	0x188
	.4byte	0xb8
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x18d
	.4byte	0x5a0
	.uleb128 0x23
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x18f
	.4byte	0x70
	.uleb128 0x1d
	.4byte	.LASF133
	.4byte	0x881
	.4byte	.LASF142
	.uleb128 0x24
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xab
	.uleb128 0x24
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xab
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xb1
	.4byte	0x881
	.uleb128 0x19
	.4byte	0x9d
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x871
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x267
	.4byte	0x116
	.byte	0x1
	.4byte	0x8a4
	.uleb128 0x21
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x267
	.4byte	0x200
	.byte	0
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x2
	.2byte	0x1b0
	.4byte	0x128
	.byte	0x3
	.4byte	0x8fe
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x2
	.2byte	0x1b1
	.4byte	0x10b
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x2
	.2byte	0x1b2
	.4byte	0x154
	.uleb128 0x21
	.4byte	.LASF149
	.byte	0x2
	.2byte	0x1b3
	.4byte	0x8fe
	.uleb128 0x21
	.4byte	.LASF150
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x903
	.uleb128 0x21
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x1b5
	.4byte	0x133
	.uleb128 0x21
	.4byte	.LASF152
	.byte	0x2
	.2byte	0x1b6
	.4byte	0x90e
	.byte	0
	.uleb128 0x7
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x149
	.uleb128 0x7
	.4byte	0x908
	.uleb128 0x26
	.4byte	.LASF153
	.byte	0x1
	.byte	0x67
	.4byte	0xef
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x936
	.uleb128 0x27
	.4byte	.LVL0
	.4byte	0x1e26
	.byte	0
	.uleb128 0x28
	.4byte	0x790
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a9
	.uleb128 0x29
	.4byte	0x7a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	0x79c
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x79c
	.byte	0x9f
	.uleb128 0x2a
	.4byte	.LVL4
	.4byte	0x1e31
	.4byte	0x970
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL5
	.4byte	0x1e3c
	.4byte	0x984
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL6
	.4byte	0x1e47
	.4byte	0x998
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL7
	.4byte	0x1e52
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x7b3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5c
	.uleb128 0x2d
	.4byte	0x7c3
	.4byte	.LLST0
	.uleb128 0x29
	.4byte	0x7ce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	0x7d9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	0x7e4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	0x7ef
	.4byte	.LLST1
	.uleb128 0x2f
	.4byte	0x7fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xa3a
	.uleb128 0x2d
	.4byte	0x7ce
	.4byte	.LLST2
	.uleb128 0x2d
	.4byte	0x7d9
	.4byte	.LLST3
	.uleb128 0x2d
	.4byte	0x7e4
	.4byte	.LLST4
	.uleb128 0x2d
	.4byte	0x7c3
	.4byte	.LLST5
	.uleb128 0x31
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x32
	.4byte	0x7ef
	.uleb128 0x32
	.4byte	0x7fa
	.uleb128 0x27
	.4byte	.LVL12
	.4byte	0x1e5d
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL9
	.4byte	0x1e68
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x4c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF154
	.byte	0x1
	.byte	0x86
	.4byte	0x116
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaee
	.uleb128 0x34
	.4byte	.LASF70
	.byte	0x1
	.byte	0x86
	.4byte	0x200
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0x1e74
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL18
	.4byte	0x1e8a
	.4byte	0xace
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL19
	.4byte	0x7b3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x116
	.byte	0x1
	.4byte	0xb26
	.uleb128 0x21
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x200
	.uleb128 0x23
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x70
	.uleb128 0x24
	.uleb128 0x23
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1dd
	.4byte	0xb8
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x1e8
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf01
	.uleb128 0x36
	.string	"pv"
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xf01
	.sleb128 -1
	.uleb128 0x38
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x200
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x70
	.4byte	.LLST7
	.uleb128 0x3a
	.4byte	0xaee
	.4byte	.LBB11
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x230
	.4byte	0xc44
	.uleb128 0x2d
	.4byte	0xaff
	.4byte	.LLST8
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2e
	.4byte	0xb0b
	.4byte	.LLST9
	.uleb128 0x30
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xbc6
	.uleb128 0x2e
	.4byte	0xb18
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	.LVL62
	.4byte	0x1e95
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8a
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL47
	.4byte	0x1ea0
	.uleb128 0x27
	.4byte	.LVL49
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL51
	.4byte	0x1e8a
	.4byte	0xc01
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL52
	.4byte	0xa5c
	.4byte	0xc15
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL57
	.4byte	0x1eab
	.uleb128 0x27
	.4byte	.LVL58
	.4byte	0x1eb6
	.uleb128 0x2c
	.4byte	.LVL59
	.4byte	0x7b3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL23
	.4byte	0x1ec1
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL25
	.4byte	0x1e8a
	.4byte	0xc84
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0x1ecc
	.uleb128 0x2a
	.4byte	.LVL27
	.4byte	0x1ed7
	.4byte	0xca1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL29
	.4byte	0x1ee3
	.4byte	0xcb5
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.4byte	.LVL30
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL31
	.4byte	0x1e8a
	.4byte	0xced
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL33
	.4byte	0x1e8a
	.4byte	0xd25
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL34
	.4byte	0x1eef
	.4byte	0xd39
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL35
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL36
	.4byte	0x7b3
	.4byte	0xd66
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL37
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL38
	.4byte	0x913
	.uleb128 0x2a
	.4byte	.LVL39
	.4byte	0x1e95
	.4byte	0xd96
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x89
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL41
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL42
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL43
	.4byte	0x1e8a
	.4byte	0xde0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL44
	.4byte	0xa5c
	.4byte	0xdf4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL45
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL53
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL55
	.4byte	0x1e8a
	.uleb128 0x27
	.4byte	.LVL64
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL65
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL66
	.4byte	0x1efa
	.uleb128 0x2a
	.4byte	.LVL67
	.4byte	0x1f06
	.4byte	0xe3f
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x27
	.4byte	.LVL69
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL70
	.4byte	0x1f11
	.uleb128 0x2a
	.4byte	.LVL71
	.4byte	0x1e8a
	.4byte	0xe93
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL72
	.4byte	0xa5c
	.4byte	0xea7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL73
	.4byte	0x1f1c
	.4byte	0xed4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x27
	.4byte	.LVL74
	.4byte	0x1e74
	.uleb128 0x2a
	.4byte	.LVL75
	.4byte	0x1f28
	.4byte	0xef1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL76
	.4byte	0x1f34
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x70
	.uleb128 0x28
	.4byte	0x806
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1163
	.uleb128 0x2d
	.4byte	0x817
	.4byte	.LLST11
	.uleb128 0x2d
	.4byte	0x823
	.4byte	.LLST12
	.uleb128 0x32
	.4byte	0x82f
	.uleb128 0x32
	.4byte	0x83b
	.uleb128 0x2f
	.4byte	0x847
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7305
	.uleb128 0x31
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x2d
	.4byte	0x823
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	0x817
	.4byte	.LLST14
	.uleb128 0x31
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x2f
	.4byte	0x82f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.4byte	0x83b
	.4byte	.LLST15
	.uleb128 0x2f
	.4byte	0x847
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7305
	.uleb128 0x30
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x1037
	.uleb128 0x2f
	.4byte	0x855
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x101d
	.uleb128 0x2e
	.4byte	0x862
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LVL106
	.4byte	0x1f40
	.4byte	0xfc0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL109
	.4byte	0x1f4b
	.uleb128 0x2a
	.4byte	.LVL111
	.4byte	0x1f56
	.4byte	0xfdd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0x27
	.4byte	.LVL112
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL115
	.4byte	0x1f4b
	.uleb128 0x2a
	.4byte	.LVL117
	.4byte	0x1f56
	.4byte	0x1003
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL118
	.4byte	0x1e7f
	.uleb128 0x2c
	.4byte	.LVL119
	.4byte	0x1f4b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL105
	.4byte	0x1f61
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL79
	.4byte	0x1f6c
	.4byte	0x104c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL80
	.4byte	0x1f78
	.4byte	0x1060
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL81
	.4byte	0x1f83
	.4byte	0x1081
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x27
	.4byte	.LVL82
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL83
	.4byte	0x1e8a
	.4byte	0x10bf
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL86
	.4byte	0x1f4b
	.uleb128 0x2a
	.4byte	.LVL87
	.4byte	0x1f61
	.4byte	0x10df
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x27
	.4byte	.LVL88
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL91
	.4byte	0x1f4b
	.uleb128 0x2a
	.4byte	.LVL92
	.4byte	0x1f61
	.4byte	0x1108
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x27
	.4byte	.LVL93
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL96
	.4byte	0x1e8a
	.uleb128 0x27
	.4byte	.LVL98
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL99
	.4byte	0x1f61
	.uleb128 0x2a
	.4byte	.LVL100
	.4byte	0x1f61
	.4byte	0x1143
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL101
	.4byte	0x1e7f
	.uleb128 0x2c
	.4byte	.LVL104
	.4byte	0x1f8f
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x256
	.4byte	0x116
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1238
	.uleb128 0x3d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x256
	.4byte	0x200
	.4byte	.LLST17
	.uleb128 0x3a
	.4byte	0x8a4
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x25f
	.4byte	0x1209
	.uleb128 0x2d
	.4byte	0x8b5
	.4byte	.LLST18
	.uleb128 0x2d
	.4byte	0x8c1
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	0x8f1
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	0x8e5
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	0x8d9
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	0x8cd
	.4byte	.LLST23
	.uleb128 0x2c
	.4byte	.LVL126
	.4byte	0x1f9a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_websocket_client_task
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL123
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL127
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL129
	.4byte	0x1e8a
	.4byte	0x122e
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL131
	.4byte	0x1ed7
	.byte	0
	.uleb128 0x28
	.4byte	0x886
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12be
	.uleb128 0x2d
	.4byte	0x897
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0x129e
	.uleb128 0x2d
	.4byte	0x897
	.4byte	.LLST25
	.uleb128 0x27
	.4byte	.LVL137
	.4byte	0x1e7f
	.uleb128 0x2c
	.4byte	.LVL138
	.4byte	0x1e8a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL140
	.4byte	0x1fa6
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF159
	.byte	0x1
	.byte	0xd9
	.4byte	0x116
	.byte	0x1
	.4byte	0x12e5
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0xd9
	.4byte	0x200
	.uleb128 0x1c
	.string	"cfg"
	.byte	0x1
	.byte	0xde
	.4byte	0x72b
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x170
	.4byte	0x116
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1414
	.uleb128 0x3d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x170
	.4byte	0x200
	.4byte	.LLST26
	.uleb128 0x3e
	.4byte	0x12be
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x17b
	.4byte	0x13b9
	.uleb128 0x2d
	.4byte	0x12ce
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x2e
	.4byte	0x12d9
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	.LVL145
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL146
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL147
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL148
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL149
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL150
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL151
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL152
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL153
	.4byte	0x1f4b
	.uleb128 0x2a
	.4byte	.LVL154
	.4byte	0x1fb2
	.4byte	0x13ae
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL156
	.4byte	0x1f4b
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL142
	.4byte	0x886
	.4byte	0x13cd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL143
	.4byte	0x1fbb
	.uleb128 0x27
	.4byte	.LVL157
	.4byte	0x1fc6
	.uleb128 0x27
	.4byte	.LVL158
	.4byte	0x1fd1
	.uleb128 0x27
	.4byte	.LVL159
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL160
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL161
	.4byte	0x1fdd
	.uleb128 0x2c
	.4byte	.LVL162
	.4byte	0x1f4b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x101
	.4byte	0x200
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a15
	.uleb128 0x3d
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x101
	.4byte	0x770
	.4byte	.LLST29
	.uleb128 0x38
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x103
	.4byte	0x200
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	.LASF133
	.4byte	0x1a25
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7288
	.uleb128 0x38
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x106
	.4byte	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x40
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x16b
	.4byte	.L144
	.uleb128 0x41
	.string	"tcp"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x4de
	.4byte	.LLST30
	.uleb128 0x41
	.string	"ws"
	.byte	0x1
	.2byte	0x121
	.4byte	0x4de
	.4byte	.LLST31
	.uleb128 0x41
	.string	"ssl"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x4de
	.4byte	.LLST32
	.uleb128 0x41
	.string	"wss"
	.byte	0x1
	.2byte	0x134
	.4byte	0x4de
	.4byte	.LLST33
	.uleb128 0x39
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x157
	.4byte	0x70
	.4byte	.LLST34
	.uleb128 0x3a
	.4byte	0x731
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x146
	.4byte	0x160f
	.uleb128 0x2d
	.4byte	0x741
	.4byte	.LLST35
	.uleb128 0x2d
	.4byte	0x74c
	.4byte	.LLST36
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x2e
	.4byte	0x757
	.4byte	.LLST37
	.uleb128 0x2f
	.4byte	0x762
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7275
	.uleb128 0x27
	.4byte	.LVL233
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL234
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL237
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL238
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL239
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL242
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL243
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL244
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL247
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL248
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL249
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL252
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL253
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL254
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL257
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL258
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL259
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL262
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL263
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL264
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL267
	.4byte	0x1f4b
	.uleb128 0x27
	.4byte	.LVL268
	.4byte	0x1f56
	.uleb128 0x27
	.4byte	.LVL269
	.4byte	0x1e7f
	.uleb128 0x2c
	.4byte	.LVL271
	.4byte	0x1e8a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL165
	.4byte	0x1fe9
	.4byte	0x1628
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.byte	0
	.uleb128 0x27
	.4byte	.LVL167
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL169
	.4byte	0x1e8a
	.4byte	0x1683
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7288
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL171
	.4byte	0x1fb2
	.4byte	0x16a1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL172
	.4byte	0x1ff4
	.4byte	0x16bb
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL173
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL174
	.4byte	0x1e8a
	.4byte	0x16f3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL175
	.4byte	0x1f4b
	.4byte	0x1707
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL176
	.4byte	0x1fff
	.4byte	0x171a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL177
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL180
	.4byte	0x1fe9
	.4byte	0x173d
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL181
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL183
	.4byte	0x1e8a
	.uleb128 0x27
	.4byte	.LVL185
	.4byte	0x200b
	.uleb128 0x27
	.4byte	.LVL186
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL189
	.4byte	0x2016
	.uleb128 0x27
	.4byte	.LVL191
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL194
	.4byte	0x2021
	.4byte	0x1787
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL195
	.4byte	0x202c
	.4byte	0x17a4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL196
	.4byte	0x2037
	.4byte	0x17b8
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL198
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL201
	.4byte	0x2021
	.4byte	0x17d5
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL202
	.4byte	0x202c
	.4byte	0x17ef
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL204
	.4byte	0x1f61
	.4byte	0x1803
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL205
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL208
	.4byte	0x2042
	.uleb128 0x27
	.4byte	.LVL210
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL213
	.4byte	0x2021
	.4byte	0x1833
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1bb
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL214
	.4byte	0x1f78
	.4byte	0x1847
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL215
	.4byte	0x204d
	.4byte	0x1861
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL216
	.4byte	0x202c
	.4byte	0x187e
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL217
	.4byte	0x2037
	.4byte	0x1892
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL219
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL222
	.4byte	0x2021
	.4byte	0x18b0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1bb
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL224
	.4byte	0x202c
	.4byte	0x18ca
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL226
	.4byte	0x1f61
	.4byte	0x18de
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL227
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL230
	.4byte	0x806
	.4byte	0x18fb
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL231
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL274
	.4byte	0x1f61
	.4byte	0x1918
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL275
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL278
	.4byte	0x1ec1
	.4byte	0x1935
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL279
	.4byte	0x936
	.4byte	0x1951
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x42
	.4byte	0x79c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL280
	.4byte	0x1ec1
	.4byte	0x1965
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL281
	.4byte	0x936
	.4byte	0x1981
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x42
	.4byte	0x79c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL282
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL283
	.4byte	0x913
	.uleb128 0x27
	.4byte	.LVL284
	.4byte	0x913
	.uleb128 0x2a
	.4byte	.LVL287
	.4byte	0x2058
	.4byte	0x19b0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL288
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL291
	.4byte	0x2058
	.4byte	0x19cd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL292
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL295
	.4byte	0x2063
	.uleb128 0x27
	.4byte	.LVL296
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL301
	.4byte	0x12e5
	.4byte	0x19fc
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL303
	.4byte	0x1e7f
	.uleb128 0x2c
	.4byte	.LVL305
	.4byte	0x1e8a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xb1
	.4byte	0x1a25
	.uleb128 0x19
	.4byte	0x9d
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x1a15
	.uleb128 0x3c
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2bc
	.4byte	0x121
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a55
	.uleb128 0x3d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x2bc
	.4byte	0x200
	.4byte	.LLST38
	.byte	0
	.uleb128 0x43
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x287
	.4byte	0x70
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8e
	.uleb128 0x3d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x287
	.4byte	0x200
	.4byte	.LLST39
	.uleb128 0x3d
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x287
	.4byte	0x52f
	.4byte	.LLST40
	.uleb128 0x3d
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x287
	.4byte	0xb8
	.4byte	.LLST41
	.uleb128 0x44
	.string	"len"
	.byte	0x1
	.2byte	0x287
	.4byte	0x70
	.4byte	.LLST42
	.uleb128 0x3d
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x287
	.4byte	0x13e
	.4byte	.LLST43
	.uleb128 0x39
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x289
	.4byte	0x70
	.4byte	.LLST44
	.uleb128 0x39
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x28a
	.4byte	0x70
	.4byte	.LLST45
	.uleb128 0x39
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x28a
	.4byte	0x70
	.4byte	.LLST46
	.uleb128 0x41
	.string	"ret"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x70
	.4byte	.LLST47
	.uleb128 0x40
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x2b7
	.4byte	.L233
	.uleb128 0x39
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x2a0
	.4byte	0xe4
	.4byte	.LLST48
	.uleb128 0x27
	.4byte	.LVL312
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL313
	.4byte	0x1e8a
	.4byte	0x1b53
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL315
	.4byte	0x1ee3
	.4byte	0x1b67
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL316
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL317
	.4byte	0x1e8a
	.4byte	0x1ba5
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL320
	.4byte	0x1a2a
	.4byte	0x1bb9
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL321
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL322
	.4byte	0x1e7f
	.uleb128 0x2a
	.4byte	.LVL323
	.4byte	0x1e8a
	.4byte	0x1bdf
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL328
	.4byte	0x206e
	.4byte	0x1bfd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL329
	.4byte	0x1e95
	.4byte	0x1c1d
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL332
	.4byte	0x1e7f
	.uleb128 0x27
	.4byte	.LVL334
	.4byte	0x1f11
	.uleb128 0x2a
	.4byte	.LVL336
	.4byte	0x1e8a
	.4byte	0x1c70
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL337
	.4byte	0xa5c
	.4byte	0x1c84
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL345
	.4byte	0x1efa
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x278
	.4byte	0x70
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d0a
	.uleb128 0x3d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x278
	.4byte	0x200
	.4byte	.LLST49
	.uleb128 0x45
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x278
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.string	"len"
	.byte	0x1
	.2byte	0x278
	.4byte	0x70
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x45
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x278
	.4byte	0x13e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LVL347
	.4byte	0x1a55
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x282
	.4byte	0x70
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d86
	.uleb128 0x3d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x282
	.4byte	0x200
	.4byte	.LLST50
	.uleb128 0x45
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x282
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.string	"len"
	.byte	0x1
	.2byte	0x282
	.4byte	0x70
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x45
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x282
	.4byte	0x13e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LVL350
	.4byte	0x1a55
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x116
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df7
	.uleb128 0x3d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x200
	.4byte	.LLST51
	.uleb128 0x45
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x34b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x45
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x185
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x45
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x94
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LVL353
	.4byte	0x2077
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0x154
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x47
	.4byte	.LASF179
	.byte	0x1
	.byte	0x30
	.4byte	0xf01
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF239
	.byte	0x1
	.byte	0x32
	.4byte	0x16f
	.uleb128 0x5
	.byte	0x3
	.4byte	WEBSOCKET_EVENTS
	.uleb128 0x49
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x12
	.byte	0xbe
	.uleb128 0x49
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xe
	.byte	0x29
	.uleb128 0x49
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xe
	.byte	0x35
	.uleb128 0x49
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xe
	.byte	0x41
	.uleb128 0x49
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xe
	.byte	0x4d
	.uleb128 0x49
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xb
	.byte	0x73
	.uleb128 0x4a
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xb
	.2byte	0x10d
	.uleb128 0x49
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xd
	.byte	0xdb
	.uleb128 0x49
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x11
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x11
	.byte	0x6b
	.uleb128 0x49
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xe
	.byte	0x62
	.uleb128 0x49
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xd
	.byte	0xa8
	.uleb128 0x49
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xe
	.byte	0x76
	.uleb128 0x49
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xe
	.byte	0x6c
	.uleb128 0x49
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xd
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xd
	.byte	0x72
	.uleb128 0x4a
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x10
	.2byte	0x16a
	.uleb128 0x4a
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x8
	.2byte	0x582
	.uleb128 0x49
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xd
	.byte	0x8c
	.uleb128 0x4a
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x8
	.2byte	0x583
	.uleb128 0x49
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xd
	.byte	0xb5
	.uleb128 0x49
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x13
	.byte	0xf
	.uleb128 0x4a
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x2
	.2byte	0x32b
	.uleb128 0x4a
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x10
	.2byte	0x1e3
	.uleb128 0x4a
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x2fb
	.uleb128 0x49
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x14
	.byte	0x1b
	.uleb128 0x49
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x15
	.byte	0x5a
	.uleb128 0x49
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x14
	.byte	0x50
	.uleb128 0x49
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x16
	.byte	0xfa
	.uleb128 0x4a
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0xf
	.2byte	0x15a
	.uleb128 0x49
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x14
	.byte	0x21
	.uleb128 0x4a
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xf
	.2byte	0x15d
	.uleb128 0x49
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x15
	.byte	0x9d
	.uleb128 0x4a
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x2
	.2byte	0x151
	.uleb128 0x4a
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x10
	.2byte	0x137
	.uleb128 0x4b
	.4byte	.LASF231
	.4byte	.LASF231
	.uleb128 0x49
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xb
	.byte	0x43
	.uleb128 0x49
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xd
	.byte	0x35
	.uleb128 0x4a
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x3ac
	.uleb128 0x4a
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x10
	.2byte	0x2c2
	.uleb128 0x49
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x15
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xb
	.byte	0x38
	.uleb128 0x4a
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x8
	.2byte	0x578
	.uleb128 0x49
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0xd
	.byte	0x29
	.uleb128 0x49
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x17
	.byte	0x1d
	.uleb128 0x49
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xd
	.byte	0x7e
	.uleb128 0x49
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0xd
	.byte	0x41
	.uleb128 0x49
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xe
	.byte	0x21
	.uleb128 0x49
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x18
	.byte	0x1e
	.uleb128 0x49
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x18
	.byte	0x29
	.uleb128 0x49
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x15
	.byte	0x65
	.uleb128 0x49
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x10
	.byte	0xb2
	.uleb128 0x4b
	.4byte	.LASF232
	.4byte	.LASF232
	.uleb128 0x49
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xb
	.byte	0xab
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
	.uleb128 0xd
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
	.uleb128 0xd
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x42
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL46
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL77
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL77
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL78
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL78
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111-1
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL122
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x3
	.4byte	esp_websocket_client_task
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x3
	.4byte	esp_websocket_client_task
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL141
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL143
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL144
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL164
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL261
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL285
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL190
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL197
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL209
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL218
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL285
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL294
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL232
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL302
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL232
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL261
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL285
	.4byte	.LVL298
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL302
	.4byte	.LVL304
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL232
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL302
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL307
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL308
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL344
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL308
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL311
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL309
	.4byte	.LVL314
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL314
	.4byte	.LVL315-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL315-1
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL310
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL333
	.4byte	.LVL339
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL339
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL343
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL308
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL310
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL327
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL339
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL341
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL309
	.4byte	.LVL325
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL330
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL309
	.4byte	.LVL325
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL339
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL309
	.4byte	.LVL331
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL331
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL339
	.4byte	.LVL343
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL343
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL325
	.4byte	.LVL330
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL339
	.4byte	.LVL343
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL346
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL348
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL349
	.4byte	.LVL351
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL351
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL354
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF168:
	.string	"need_write"
.LASF222:
	.string	"esp_transport_list_init"
.LASF229:
	.string	"malloc"
.LASF35:
	.string	"task_priority"
.LASF89:
	.string	"pingpong_timeout_sec"
.LASF91:
	.string	"esp_transport_list_handle_t"
.LASF101:
	.string	"WS_TRANSPORT_OPCODES_FIN"
.LASF102:
	.string	"ws_transport_opcodes_t"
.LASF47:
	.string	"ping_tick_ms"
.LASF51:
	.string	"wait_for_pong_resp"
.LASF20:
	.string	"uint64_t"
.LASF148:
	.string	"pcName"
.LASF124:
	.string	"scheme"
.LASF5:
	.string	"__uint8_t"
.LASF38:
	.string	"esp_event_loop_args_t"
.LASF30:
	.string	"esp_event_base_t"
.LASF58:
	.string	"payload_len"
.LASF88:
	.string	"headers"
.LASF184:
	.string	"esp_transport_ws_set_headers"
.LASF129:
	.string	"WEBSOCKET_STATE_INIT"
.LASF12:
	.string	"long int"
.LASF81:
	.string	"path"
.LASF80:
	.string	"password"
.LASF33:
	.string	"queue_size"
.LASF171:
	.string	"_websocket_init_fail"
.LASF98:
	.string	"WS_TRANSPORT_OPCODES_CLOSE"
.LASF0:
	.string	"long long unsigned int"
.LASF116:
	.string	"field_data"
.LASF193:
	.string	"esp_transport_ws_get_read_opcode"
.LASF36:
	.string	"task_stack_size"
.LASF163:
	.string	"event_args"
.LASF223:
	.string	"esp_transport_tcp_init"
.LASF175:
	.string	"esp_websocket_client_send_bin"
.LASF206:
	.string	"free"
.LASF226:
	.string	"esp_transport_ws_init"
.LASF157:
	.string	"lock_timeout"
.LASF37:
	.string	"task_core_id"
.LASF214:
	.string	"xEventGroupWaitBits"
.LASF122:
	.string	"ESP_LOG_DEBUG"
.LASF165:
	.string	"esp_websocket_client_send_with_opcode"
.LASF2:
	.string	"signed char"
.LASF159:
	.string	"esp_websocket_client_destroy_config"
.LASF180:
	.string	"esp_timer_get_time"
.LASF202:
	.string	"vTaskDelay"
.LASF44:
	.string	"state"
.LASF61:
	.string	"WEBSOCKET_EVENT_ERROR"
.LASF76:
	.string	"esp_websocket_transport_t"
.LASF111:
	.string	"UF_USERINFO"
.LASF110:
	.string	"UF_FRAGMENT"
.LASF45:
	.string	"keepalive_tick_ms"
.LASF201:
	.string	"__errno"
.LASF213:
	.string	"xTaskCreatePinnedToCore"
.LASF49:
	.string	"wait_timeout_ms"
.LASF238:
	.string	"esp_websocket_client_task"
.LASF140:
	.string	"puri"
.LASF212:
	.string	"strtol"
.LASF191:
	.string	"esp_transport_read"
.LASF189:
	.string	"esp_log_write"
.LASF27:
	.string	"TaskHandle_t"
.LASF232:
	.string	"memcpy"
.LASF183:
	.string	"esp_transport_ws_set_user_agent"
.LASF117:
	.string	"EventGroupHandle_t"
.LASF10:
	.string	"long long int"
.LASF147:
	.string	"pvTaskCode"
.LASF17:
	.string	"uint16_t"
.LASF24:
	.string	"BaseType_t"
.LASF126:
	.string	"websocket_config_storage_t"
.LASF208:
	.string	"asprintf"
.LASF32:
	.string	"esp_event_handler_t"
.LASF149:
	.string	"usStackDepth"
.LASF134:
	.string	"trans"
.LASF9:
	.string	"__uint32_t"
.LASF181:
	.string	"esp_transport_ws_set_path"
.LASF50:
	.string	"auto_reconnect"
.LASF75:
	.string	"WEBSOCKET_TRANSPORT_OVER_SSL"
.LASF235:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_websocket_client/esp_websocket_client.c"
.LASF143:
	.string	"user_info"
.LASF192:
	.string	"esp_transport_ws_get_read_payload_len"
.LASF96:
	.string	"WS_TRANSPORT_OPCODES_TEXT"
.LASF70:
	.string	"client"
.LASF114:
	.string	"http_parser_url"
.LASF78:
	.string	"port"
.LASF77:
	.string	"host"
.LASF1:
	.string	"unsigned int"
.LASF197:
	.string	"xQueueTakeMutexRecursive"
.LASF60:
	.string	"WEBSOCKET_EVENT_ANY"
.LASF40:
	.string	"event_handle"
.LASF135:
	.string	"esp_websocket_client_set_config"
.LASF210:
	.string	"strlen"
.LASF178:
	.string	"event_handler_arg"
.LASF14:
	.string	"long unsigned int"
.LASF209:
	.string	"http_parser_url_init"
.LASF167:
	.string	"timeout"
.LASF150:
	.string	"pvParameters"
.LASF205:
	.string	"strchr"
.LASF154:
	.string	"esp_websocket_client_abort_connection"
.LASF137:
	.string	"event"
.LASF145:
	.string	"esp_websocket_client_stop"
.LASF7:
	.string	"short unsigned int"
.LASF52:
	.string	"status_bits"
.LASF125:
	.string	"network_timeout_ms"
.LASF73:
	.string	"WEBSOCKET_TRANSPORT_UNKNOWN"
.LASF221:
	.string	"xQueueCreateMutex"
.LASF190:
	.string	"esp_transport_ws_send_raw"
.LASF120:
	.string	"ESP_LOG_WARN"
.LASF133:
	.string	"__FUNCTION__"
.LASF71:
	.string	"user_context"
.LASF227:
	.string	"esp_transport_ssl_init"
.LASF199:
	.string	"xQueueGiveMutexRecursive"
.LASF79:
	.string	"username"
.LASF8:
	.string	"__int32_t"
.LASF236:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp_websocket_client"
.LASF194:
	.string	"esp_transport_list_get_transport"
.LASF128:
	.string	"WEBSOCKET_STATE_UNKNOW"
.LASF11:
	.string	"__uint64_t"
.LASF56:
	.string	"buffer_size"
.LASF121:
	.string	"ESP_LOG_INFO"
.LASF233:
	.string	"esp_event_handler_register_with"
.LASF141:
	.string	"parser_status"
.LASF211:
	.string	"http_parser_parse_url"
.LASF97:
	.string	"WS_TRANSPORT_OPCODES_BINARY"
.LASF41:
	.string	"transport_list"
.LASF39:
	.string	"esp_websocket_client_handle_t"
.LASF13:
	.string	"sizetype"
.LASF220:
	.string	"esp_event_loop_create"
.LASF177:
	.string	"event_handler"
.LASF188:
	.string	"esp_log_timestamp"
.LASF57:
	.string	"last_opcode"
.LASF139:
	.string	"event_data"
.LASF225:
	.string	"esp_transport_list_add"
.LASF26:
	.string	"TickType_t"
.LASF146:
	.string	"xTaskCreate"
.LASF62:
	.string	"WEBSOCKET_EVENT_CONNECTED"
.LASF164:
	.string	"esp_websocket_client_is_connected"
.LASF224:
	.string	"esp_transport_set_default_port"
.LASF54:
	.string	"rx_buffer"
.LASF156:
	.string	"rlen"
.LASF63:
	.string	"WEBSOCKET_EVENT_DISCONNECTED"
.LASF187:
	.string	"esp_transport_close"
.LASF176:
	.string	"esp_websocket_register_events"
.LASF84:
	.string	"task_stack"
.LASF100:
	.string	"WS_TRANSPORT_OPCODES_PONG"
.LASF196:
	.string	"xEventGroupClearBits"
.LASF108:
	.string	"UF_PATH"
.LASF198:
	.string	"esp_transport_connect"
.LASF217:
	.string	"vQueueDelete"
.LASF152:
	.string	"pvCreatedTask"
.LASF59:
	.string	"payload_offset"
.LASF195:
	.string	"esp_transport_get_default_port"
.LASF66:
	.string	"esp_websocket_event_id_t"
.LASF23:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF112:
	.string	"UF_MAX"
.LASF203:
	.string	"xEventGroupSetBits"
.LASF115:
	.string	"field_set"
.LASF169:
	.string	"wlen"
.LASF160:
	.string	"esp_websocket_client_start"
.LASF200:
	.string	"esp_transport_poll_read"
.LASF4:
	.string	"short int"
.LASF87:
	.string	"user_agent"
.LASF109:
	.string	"UF_QUERY"
.LASF99:
	.string	"WS_TRANSPORT_OPCODES_PING"
.LASF142:
	.string	"esp_websocket_client_set_uri"
.LASF86:
	.string	"subprotocol"
.LASF65:
	.string	"WEBSOCKET_EVENT_MAX"
.LASF119:
	.string	"ESP_LOG_ERROR"
.LASF104:
	.string	"http_parser_url_fields"
.LASF21:
	.string	"TaskFunction_t"
.LASF46:
	.string	"reconnect_tick_ms"
.LASF68:
	.string	"data_len"
.LASF155:
	.string	"esp_websocket_client_recv"
.LASF179:
	.string	"STOPPED_BIT"
.LASF69:
	.string	"op_code"
.LASF131:
	.string	"WEBSOCKET_STATE_WAIT_TIMEOUT"
.LASF28:
	.string	"QueueHandle_t"
.LASF34:
	.string	"task_name"
.LASF19:
	.string	"uint32_t"
.LASF237:
	.string	"set_websocket_transport_optional_settings"
.LASF48:
	.string	"pingpong_tick_ms"
.LASF90:
	.string	"esp_websocket_client_config_t"
.LASF53:
	.string	"lock"
.LASF15:
	.string	"char"
.LASF29:
	.string	"SemaphoreHandle_t"
.LASF123:
	.string	"ESP_LOG_VERBOSE"
.LASF74:
	.string	"WEBSOCKET_TRANSPORT_OVER_TCP"
.LASF93:
	.string	"esp_transport_list_t"
.LASF43:
	.string	"config"
.LASF239:
	.string	"WEBSOCKET_EVENTS"
.LASF6:
	.string	"__uint16_t"
.LASF204:
	.string	"vTaskDelete"
.LASF118:
	.string	"ESP_LOG_NONE"
.LASF173:
	.string	"current_opcode"
.LASF85:
	.string	"cert_pem"
.LASF218:
	.string	"vEventGroupDelete"
.LASF174:
	.string	"esp_websocket_client_send_text"
.LASF127:
	.string	"WEBSOCKET_STATE_ERROR"
.LASF132:
	.string	"websocket_client_state_t"
.LASF182:
	.string	"esp_transport_ws_set_subprotocol"
.LASF138:
	.string	"data"
.LASF94:
	.string	"esp_transport_item_t"
.LASF92:
	.string	"esp_transport_handle_t"
.LASF186:
	.string	"esp_event_post_to"
.LASF95:
	.string	"WS_TRANSPORT_OPCODES_CONT"
.LASF107:
	.string	"UF_PORT"
.LASF153:
	.string	"_tick_get_ms"
.LASF172:
	.string	"unlock_and_return"
.LASF31:
	.string	"esp_event_loop_handle_t"
.LASF82:
	.string	"disable_auto_reconnect"
.LASF106:
	.string	"UF_HOST"
.LASF162:
	.string	"esp_websocket_client_init"
.LASF55:
	.string	"tx_buffer"
.LASF234:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF231:
	.string	"memset"
.LASF170:
	.string	"widx"
.LASF42:
	.string	"transport"
.LASF22:
	.string	"esp_err_t"
.LASF219:
	.string	"calloc"
.LASF185:
	.string	"esp_event_loop_run"
.LASF161:
	.string	"esp_websocket_client_destroy"
.LASF207:
	.string	"strdup"
.LASF16:
	.string	"uint8_t"
.LASF228:
	.string	"esp_transport_ssl_set_cert_data"
.LASF136:
	.string	"esp_websocket_client_dispatch_event"
.LASF83:
	.string	"task_prio"
.LASF216:
	.string	"esp_transport_list_destroy"
.LASF113:
	.string	"esp_websocket_client"
.LASF72:
	.string	"esp_websocket_event_data_t"
.LASF105:
	.string	"UF_SCHEMA"
.LASF151:
	.string	"uxPriority"
.LASF158:
	.string	"read_select"
.LASF215:
	.string	"esp_event_loop_delete"
.LASF144:
	.string	"pass"
.LASF103:
	.string	"ws_transport_opcodes"
.LASF64:
	.string	"WEBSOCKET_EVENT_DATA"
.LASF25:
	.string	"UBaseType_t"
.LASF230:
	.string	"xEventGroupCreate"
.LASF67:
	.string	"data_ptr"
.LASF130:
	.string	"WEBSOCKET_STATE_CONNECTED"
.LASF166:
	.string	"opcode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
