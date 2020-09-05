	.file	"hci_hal_h4.c"
	.text
.Ltext0:
	.section	.text.hal_close,"ax",@progbits
	.literal_position
	.literal .LC0, osi_free_func
	.literal .LC1, hci_hal_env
	.literal .LC2, xHciH4TaskHandle
	.literal .LC3, xHciH4Queue
	.align	4
	.type	hal_close, @function
hal_close:
.LFB42:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/hci_hal_h4.c"
	.loc 1 125 0
	entry	sp, 32
.LCFI0:
.LBB4:
.LBB5:
	.loc 1 99 0
	l32r	a2, .LC1
	l32r	a11, .LC0
	l32i.n	a10, a2, 4
	call8	fixed_queue_free
.LVL0:
	.loc 1 100 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
.LBE5:
.LBE4:
	.loc 1 129 0
	l32r	a2, .LC2
	l32i.n	a10, a2, 0
	call8	vTaskDelete
.LVL1:
	.loc 1 130 0
	l32r	a2, .LC3
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL2:
	retw.n
.LFE42:
	.size	hal_close, .-hal_close
	.section	.text.host_send_pkt_available_cb,"ax",@progbits
	.align	4
	.type	host_send_pkt_available_cb, @function
host_send_pkt_available_cb:
.LFB51:
	.loc 1 343 0
	entry	sp, 32
.LCFI1:
	.loc 1 346 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL3:
	retw.n
.LFE51:
	.size	host_send_pkt_available_cb, .-host_send_pkt_available_cb
	.section	.text.hci_hal_h4_rx_handler,"ax",@progbits
	.literal_position
	.literal .LC4, xHciH4Queue
	.literal .LC5, hci_hal_env
	.align	4
	.type	hci_hal_h4_rx_handler, @function
hci_hal_h4_rx_handler:
.LFB44:
	.loc 1 171 0
.LVL4:
	entry	sp, 48
.LCFI2:
.LVL5:
.L4:
	.loc 1 175 0
	l32r	a2, .LC4
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	movi.n	a12, -1
	mov.n	a11, sp
	call8	xQueueGenericReceive
.LVL6:
	bnei	a10, 1, .L4
	.loc 1 176 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L4
	.loc 1 177 0
	l32r	a8, .LC5
	l32i.n	a10, a8, 4
	call8	fixed_queue_process
.LVL7:
	j	.L4
.LFE44:
	.size	hci_hal_h4_rx_handler, .-hci_hal_h4_rx_handler
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"data != NULL"
.LC9:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/hci_hal_h4.c"
.LC11:
	.string	"length > 0"
.LC13:
	.string	"BT_HCI"
.LC15:
	.string	"\033[0;31mE (%d) %s: %s invalid data type: %d\033[0m\n"
	.section	.text.transmit_data,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.literal .LC8, __func__$8718
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.align	4
	.type	transmit_data, @function
transmit_data:
.LFB43:
	.loc 1 141 0
.LVL8:
	entry	sp, 48
.LCFI3:
	.loc 1 141 0
	extui	a4, a4, 0, 16
	.loc 1 144 0
	bnez.n	a3, .L7
.LVL9:
.LBB8:
.LBB9:
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi	a11, 0x90
	j	.L11
.LVL10:
.L7:
.LBE9:
.LBE8:
	.loc 1 145 0
	bnez.n	a4, .L8
	.loc 1 145 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC8
	movi	a11, 0x91
.L11:
	l32r	a10, .LC10
	call8	__assert_func
.LVL11:
.L8:
	.loc 1 147 0 is_stmt 1
	addi.n	a5, a2, -1
	bltui	a5, 3, .L9
	.loc 1 148 0 discriminator 1
	call8	esp_log_timestamp
.LVL12:
	l32r	a11, .LC14
	l32r	a15, .LC8
	l32r	a12, .LC16
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
	.loc 1 149 0 discriminator 1
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L9:
	.loc 1 154 0
	addi.n	a3, a3, -1
.LVL16:
	.loc 1 161 0
	addi.n	a11, a4, 1
	.loc 1 154 0
	l8ui	a5, a3, 0
.LVL17:
	.loc 1 161 0
	extui	a11, a11, 0, 16
	.loc 1 155 0
	s8i	a2, a3, 0
.LVL18:
	.loc 1 161 0
	mov.n	a10, a3
	call8	esp_vhci_host_send_packet
.LVL19:
	.loc 1 166 0
	mov.n	a2, a4
.LVL20:
	.loc 1 164 0
	s8i	a5, a3, 0
	.loc 1 167 0
	retw.n
.LFE43:
	.size	transmit_data, .-transmit_data
	.section	.rodata.str1.1
.LC17:
	.string	"upper_callbacks != NULL"
.LC26:
	.string	"\033[0;31mE (%d) %s: %s unable to create rx queue.\n\033[0m\n"
.LC31:
	.string	"hciH4T"
	.section	.text.hal_open,"ax",@progbits
	.literal_position
	.literal .LC18, .LC17
	.literal .LC19, __func__$8709
	.literal .LC20, .LC9
	.literal .LC21, callbacks
	.literal .LC22, hci_hal_env
	.literal .LC23, event_uart_has_bytes
	.literal .LC24, __func__$8702
	.literal .LC25, .LC13
	.literal .LC27, .LC26
	.literal .LC28, xHciH4Queue
	.literal .LC29, xHciH4TaskHandle
	.literal .LC30, 2560
	.literal .LC32, .LC31
	.literal .LC33, hci_hal_h4_rx_handler
	.literal .LC34, vhci_host_cb
	.align	4
	.type	hal_open, @function
hal_open:
.LFB41:
	.loc 1 104 0
.LVL21:
	entry	sp, 48
.LCFI4:
	.loc 1 105 0
	bnez.n	a2, .L13
.LVL22:
.LBB14:
.LBB15:
	l32r	a13, .LC18
	l32r	a12, .LC19
	l32r	a10, .LC20
	movi	a11, 0x69
	call8	__assert_func
.LVL23:
.L13:
.LBE15:
.LBE14:
	.loc 1 106 0
	l32r	a8, .LC21
.LBB16:
.LBB17:
	.loc 1 87 0
	movi	a10, 0x176
.LBE17:
.LBE16:
	.loc 1 106 0
	s32i.n	a2, a8, 0
.LVL24:
.LBB19:
.LBB18:
	.loc 1 84 0
	l32r	a2, .LC22
.LVL25:
	movi	a8, 0x402
	s32i.n	a8, a2, 0
	.loc 1 85 0
	movi.n	a8, 0
	s16i	a8, a2, 8
	.loc 1 87 0
	call8	fixed_queue_new
.LVL26:
	s32i.n	a10, a2, 4
	.loc 1 88 0
	beqz.n	a10, .L14
	.loc 1 89 0
	l32r	a11, .LC23
	call8	fixed_queue_register_dequeue
.LVL27:
	j	.L15
.L14:
	.loc 1 91 0
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC25
	l32r	a15, .LC24
	l32r	a12, .LC27
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
.L15:
.LBE18:
.LBE19:
	.loc 1 113 0
	movi.n	a12, 0
	movi.n	a11, 0x10
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL30:
	l32r	a2, .LC28
	.loc 1 114 0
	l32r	a15, .LC29
	.loc 1 113 0
	s32i.n	a10, a2, 0
	.loc 1 114 0
	l32r	a12, .LC30
	movi.n	a2, 0
	l32r	a11, .LC32
	l32r	a10, .LC33
	mov.n	a13, a2
	s32i.n	a2, sp, 0
	movi.n	a14, 0x15
	call8	xTaskCreatePinnedToCore
.LVL31:
	.loc 1 117 0
	l32r	a10, .LC34
	call8	esp_vhci_host_register_callback
.LVL32:
	movi.n	a8, 1
	moveqz	a2, a8, a10
	.loc 1 122 0
	retw.n
.LFE41:
	.size	hal_open, .-hal_open
	.section	.text.hci_hal_h4_task_post,"ax",@progbits
	.literal_position
	.literal .LC35, xHciH4Queue
	.align	4
	.global	hci_hal_h4_task_post
	.type	hci_hal_h4_task_post, @function
hci_hal_h4_task_post:
.LFB45:
	.loc 1 185 0
.LVL33:
	entry	sp, 48
.LCFI5:
	.loc 1 191 0
	mov.n	a12, a2
	l32r	a2, .LC35
.LVL34:
	.loc 1 188 0
	movi.n	a3, 0
	.loc 1 191 0
	l32i.n	a10, a2, 0
	mov.n	a13, a3
	mov.n	a11, sp
	.loc 1 188 0
	s32i.n	a3, sp, 0
	.loc 1 189 0
	s32i.n	a3, sp, 4
	.loc 1 191 0
	call8	xQueueGenericSend
.LVL35:
	addi.n	a10, a10, -1
	movi.n	a2, 1
	moveqz	a2, a3, a10
	.loc 1 196 0
	retw.n
.LFE45:
	.size	hci_hal_h4_task_post, .-hci_hal_h4_task_post
	.section	.rodata.str1.1
.LC39:
	.string	"\033[0;31mE (%d) %s: %s couldn't aquire memory for inbound data buffer.\n\033[0m\n"
	.section	.text.host_recv_pkt_cb,"ax",@progbits
	.literal_position
	.literal .LC36, hci_hal_env
	.literal .LC37, __func__$8770
	.literal .LC38, .LC13
	.literal .LC40, .LC39
	.align	4
	.type	host_recv_pkt_cb, @function
host_recv_pkt_cb:
.LFB52:
	.loc 1 350 0
.LVL36:
	entry	sp, 32
.LCFI6:
	.loc 1 350 0
	mov.n	a6, a2
	.loc 1 355 0
	l32r	a2, .LC36
.LVL37:
	.loc 1 350 0
	extui	a3, a3, 0, 16
	.loc 1 355 0
	l32i.n	a5, a2, 4
	.loc 1 356 0
	movi.n	a2, 0
	.loc 1 355 0
	beq	a5, a2, .L18
.LVL38:
	.loc 1 360 0
	addi.n	a11, a3, 8
.LVL39:
	movi.n	a10, 1
	call8	calloc
.LVL40:
	mov.n	a4, a10
.LVL41:
	.loc 1 362 0
	bne	a10, a2, .L19
.LVL42:
.LBB22:
.LBB23:
	.loc 1 363 0
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC38
	l32r	a15, .LC37
	l32r	a12, .LC40
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	movi.n	a2, -1
	retw.n
.LVL45:
.L19:
.LBE23:
.LBE22:
	.loc 1 366 0
	s16i	a2, a10, 4
	.loc 1 367 0
	s16i	a3, a10, 2
	.loc 1 368 0
	s16i	a2, a10, 6
	.loc 1 369 0
	mov.n	a12, a3
	mov.n	a11, a6
	addi.n	a10, a10, 8
	call8	memcpy
.LVL46:
	.loc 1 370 0
	mov.n	a10, a5
	mov.n	a11, a4
	call8	fixed_queue_enqueue
.LVL47:
	.loc 1 371 0
	mov.n	a10, a2
	call8	hci_hal_h4_task_post
.LVL48:
.L18:
	.loc 1 376 0
	retw.n
.LFE52:
	.size	host_recv_pkt_cb, .-host_recv_pkt_cb
	.section	.rodata.str1.1
.LC41:
	.string	"packet"
	.section	.text.host_recv_adv_packet,"ax",@progbits
	.literal_position
	.literal .LC42, .LC41
	.literal .LC43, __func__$8741
	.literal .LC44, .LC9
	.literal .LC45, 15876
	.align	4
	.global	host_recv_adv_packet
	.type	host_recv_adv_packet, @function
host_recv_adv_packet:
.LFB47:
	.loc 1 229 0
.LVL49:
	entry	sp, 32
.LCFI7:
	.loc 1 230 0
	bnez.n	a2, .L23
.LVL50:
.LBB26:
.LBB27:
	l32r	a13, .LC42
	l32r	a12, .LC43
	l32r	a10, .LC44
	movi	a11, 0xe6
	call8	__assert_func
.LVL51:
.L23:
.LBE27:
.LBE26:
	.loc 1 231 0
	l16ui	a10, a2, 8
	l32r	a9, .LC45
	movi.n	a8, 0
	bne	a10, a9, .L24
	.loc 1 232 0
	l8ui	a11, a2, 11
	.loc 1 234 0
	movi	a10, -0xf0
	movi.n	a2, 1
.LVL52:
	mov.n	a3, a8
	addi	a9, a11, -2
	add.n	a10, a11, a10
	moveqz	a3, a2, a9
	moveqz	a8, a2, a10
	or	a8, a3, a8
.L24:
	.loc 1 241 0
	mov.n	a2, a8
	retw.n
.LFE47:
	.size	host_recv_adv_packet, .-host_recv_adv_packet
	.section	.rodata.str1.1
.LC47:
	.string	"\033[0;31mE (%d) %s: Workround stream corrupted during LE SCAN: pkt_len=%d ble_event_len=%d\n\033[0m\n"
.LC50:
	.string	"\033[0;31mE (%d) %s: %s Unknown HCI message type. Dropping this byte 0x%x, min %x, max %x\n\033[0m\n"
.LC53:
	.string	"\033[0;31mE (%d) %s: Wrong packet length type=%d pkt_len=%d hdr_len=%d\033[0m\n"
.LC55:
	.string	"\033[0;31mE (%d) %s: Wrong packet length type=%d hdr_len=%d pd_len=%d pkt_len=%d\033[0m\n"
	.section	.text.event_uart_has_bytes,"ax",@progbits
	.literal_position
	.literal .LC46, .LC13
	.literal .LC48, .LC47
	.literal .LC49, __func__$8753
	.literal .LC51, .LC50
	.literal .LC52, preamble_sizes
	.literal .LC54, .LC53
	.literal .LC56, .LC55
	.literal .LC57, hci_hal_env
	.literal .LC58, outbound_event_types
	.literal .LC59, callbacks
	.align	4
	.type	event_uart_has_bytes, @function
event_uart_has_bytes:
.LFB50:
	.loc 1 334 0
.LVL53:
	entry	sp, 80
.LCFI8:
	.loc 1 336 0
	j	.L27
.L42:
	.loc 1 337 0
	mov.n	a10, a2
	call8	fixed_queue_dequeue
.LVL54:
.LBB35:
.LBB36:
	.loc 1 266 0
	l16ui	a4, a10, 4
	addi.n	a5, a10, 8
	add.n	a4, a5, a4
.LBB37:
.LBB38:
	.loc 1 208 0
	l8ui	a5, a4, 0
.LBE38:
.LBE37:
.LBE36:
.LBE35:
	.loc 1 337 0
	mov.n	a3, a10
.LVL55:
.LBB45:
.LBB44:
.LBB40:
.LBB39:
	.loc 1 208 0
	bnei	a5, 2, .L29
.LVL56:
	.loc 1 209 0
	l8ui	a10, a4, 2
	l8ui	a5, a4, 1
	slli	a10, a10, 8
	add.n	a10, a5, a10
.LVL57:
	.loc 1 211 0
	extui	a10, a10, 0, 12
.LVL58:
	call8	l2cu_find_lcb_by_handle
.LVL59:
	.loc 1 212 0
	beqz.n	a10, .L30
	.loc 1 213 0
	l16ui	a5, a10, 42
	addi.n	a5, a5, 1
	s16i	a5, a10, 42
.L30:
	.loc 1 215 0
	call8	esp_vhci_host_check_send_available
.LVL60:
	beqz.n	a10, .L29
	.loc 1 216 0
	addi	a11, sp, 16
	addi	a10, sp, 32
	call8	l2cu_find_completed_packets
.LVL61:
	.loc 1 217 0
	beqz.n	a10, .L29
	.loc 1 218 0
	addi	a12, sp, 16
	addi	a11, sp, 32
	call8	btsnd_hcic_host_num_xmitted_pkts
.LVL62:
.L29:
.LBE39:
.LBE40:
	.loc 1 278 0
	l16ui	a9, a3, 2
	.loc 1 277 0
	l16ui	a5, a3, 4
	.loc 1 278 0
	addi.n	a9, a9, -1
	.loc 1 276 0
	l8ui	a6, a4, 0
.LVL63:
	.loc 1 277 0
	addi.n	a5, a5, 1
	.loc 1 278 0
	extui	a9, a9, 0, 16
	.loc 1 277 0
	s16i	a5, a3, 4
.LVL64:
	.loc 1 278 0
	s16i	a9, a3, 2
	.loc 1 279 0
	movi.n	a5, 0x3e
	bne	a6, a5, .L32
.LVL65:
.LBB41:
	.loc 1 282 0
	l8ui	a4, a4, 1
.LVL66:
	.loc 1 284 0
	call8	esp_log_timestamp
.LVL67:
	l32r	a11, .LC46
	l16ui	a15, a3, 2
	l32r	a12, .LC48
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL68:
	j	.L55
.LVL69:
.L32:
.LBE41:
	.loc 1 289 0
	addi	a5, a6, -2
	extui	a5, a5, 0, 8
	bltui	a5, 3, .L34
	.loc 1 290 0
	call8	esp_log_timestamp
.LVL70:
	movi.n	a4, 4
.LVL71:
	l32r	a11, .LC46
	s32i.n	a4, sp, 8
	movi.n	a4, 2
	s32i.n	a4, sp, 4
	s32i.n	a6, sp, 0
	l32r	a15, .LC49
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC51
	j	.L56
.LVL72:
.L34:
	.loc 1 296 0
	l32r	a7, .LC52
	addi.n	a5, a6, -1
	add.n	a7, a7, a5
	l8ui	a7, a7, 0
.LVL73:
	.loc 1 297 0
	bgeu	a9, a7, .L35
	.loc 1 298 0
	call8	esp_log_timestamp
.LVL74:
	s32i.n	a7, sp, 4
	l32r	a11, .LC46
	l16ui	a4, a3, 2
.LVL75:
	l32r	a12, .LC54
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	mov.n	a15, a6
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL76:
	j	.L55
.LVL77:
.L35:
	.loc 1 276 0
	addi.n	a4, a4, 1
.LVL78:
	.loc 1 303 0
	bnei	a6, 2, .L36
	.loc 1 304 0
	addi	a8, a7, -2
	add.n	a4, a4, a8
.LVL79:
	.loc 1 305 0
	l8ui	a8, a4, 1
	l8ui	a4, a4, 0
.LVL80:
	slli	a8, a8, 8
	add.n	a4, a4, a8
	extui	a4, a4, 0, 16
.LVL81:
	j	.L37
.LVL82:
.L36:
	.loc 1 308 0
	add.n	a4, a4, a7
.LVL83:
	addi.n	a4, a4, -1
	l8ui	a4, a4, 0
.LVL84:
.L37:
	.loc 1 311 0
	add.n	a8, a4, a7
	beq	a8, a9, .L38
	.loc 1 312 0
	call8	esp_log_timestamp
.LVL85:
	l32r	a11, .LC46
	l16ui	a5, a3, 2
.LVL86:
	l32r	a12, .LC56
	s32i.n	a5, sp, 8
	s32i.n	a4, sp, 4
	s32i.n	a7, sp, 0
	mov.n	a15, a6
	mov.n	a14, a11
	mov.n	a13, a10
.LVL87:
.L56:
	movi.n	a10, 1
	call8	esp_log_write
.LVL88:
.L55:
	.loc 1 314 0
	mov.n	a10, a3
	call8	free
.LVL89:
	j	.L27
.LVL90:
.L38:
.LBB42:
.LBB43:
	.loc 1 247 0
	mov.n	a10, a3
	call8	host_recv_adv_packet
.LVL91:
	beqz.n	a10, .L40
	.loc 1 249 0
	l32r	a4, .LC57
.LVL92:
	l16ui	a6, a4, 8
.LVL93:
	addi.n	a6, a6, 1
	s16i	a6, a4, 8
	.loc 1 250 0
	call8	esp_vhci_host_check_send_available
.LVL94:
	beqz.n	a10, .L40
	.loc 1 252 0
	l16ui	a10, a4, 8
	.loc 1 253 0
	movi.n	a6, 0
	.loc 1 252 0
	call8	btsnd_hcic_ble_update_adv_report_flow_control
.LVL95:
	.loc 1 253 0
	s16i	a6, a4, 8
.L40:
.LBE43:
.LBE42:
	.loc 1 329 0
	l32r	a4, .LC58
	.loc 1 330 0
	mov.n	a10, a3
	.loc 1 329 0
	addx2	a5, a5, a4
.LVL96:
	l16ui	a4, a5, 0
	s16i	a4, a3, 0
	.loc 1 330 0
	l32r	a4, .LC59
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 0
	callx8	a4
.LVL97:
.L27:
.LBE44:
.LBE45:
	.loc 1 336 0
	mov.n	a10, a2
	call8	fixed_queue_is_empty
.LVL98:
	beqz.n	a10, .L42
	.loc 1 340 0
	retw.n
.LFE50:
	.size	event_uart_has_bytes, .-event_uart_has_bytes
	.section	.text.hci_hal_h4_get_interface,"ax",@progbits
	.literal_position
	.literal .LC60, interface
	.align	4
	.global	hci_hal_h4_get_interface
	.type	hci_hal_h4_get_interface, @function
hci_hal_h4_get_interface:
.LFB53:
	.loc 1 390 0
	entry	sp, 32
.LCFI9:
	.loc 1 392 0
	l32r	a2, .LC60
	retw.n
.LFE53:
	.size	hci_hal_h4_get_interface, .-hci_hal_h4_get_interface
	.section	.rodata.__func__$8753,"a",@progbits
	.type	__func__$8753, @object
	.size	__func__$8753, 25
__func__$8753:
	.string	"hci_hal_h4_hdl_rx_packet"
	.section	.rodata.__func__$8702,"a",@progbits
	.type	__func__$8702, @object
	.size	__func__$8702, 17
__func__$8702:
	.string	"hci_hal_env_init"
	.section	.rodata.__func__$8770,"a",@progbits
	.type	__func__$8770, @object
	.size	__func__$8770, 17
__func__$8770:
	.string	"host_recv_pkt_cb"
	.section	.rodata.__func__$8709,"a",@progbits
	.type	__func__$8709, @object
	.size	__func__$8709, 9
__func__$8709:
	.string	"hal_open"
	.section	.rodata.__func__$8718,"a",@progbits
	.type	__func__$8718, @object
	.size	__func__$8718, 14
__func__$8718:
	.string	"transmit_data"
	.section	.rodata.__func__$8741,"a",@progbits
	.type	__func__$8741, @object
	.size	__func__$8741, 21
__func__$8741:
	.string	"host_recv_adv_packet"
	.section	.bss.xHciH4Queue,"aw",@nobits
	.align	4
	.type	xHciH4Queue, @object
	.size	xHciH4Queue, 4
xHciH4Queue:
	.zero	4
	.section	.bss.xHciH4TaskHandle,"aw",@nobits
	.align	4
	.type	xHciH4TaskHandle, @object
	.size	xHciH4TaskHandle, 4
xHciH4TaskHandle:
	.zero	4
	.section	.rodata.vhci_host_cb,"a",@progbits
	.align	4
	.type	vhci_host_cb, @object
	.size	vhci_host_cb, 8
vhci_host_cb:
	.word	host_send_pkt_available_cb
	.word	host_recv_pkt_cb
	.section	.bss.callbacks,"aw",@nobits
	.align	4
	.type	callbacks, @object
	.size	callbacks, 4
callbacks:
	.zero	4
	.section	.rodata.interface,"a",@progbits
	.align	4
	.type	interface, @object
	.size	interface, 12
interface:
	.word	hal_open
	.word	hal_close
	.word	transmit_data
	.section	.bss.hci_hal_env,"aw",@nobits
	.align	4
	.type	hci_hal_env, @object
	.size	hci_hal_env, 12
hci_hal_env:
	.zero	12
	.section	.rodata.outbound_event_types,"a",@progbits
	.align	2
	.type	outbound_event_types, @object
	.size	outbound_event_types, 8
outbound_event_types:
	.short	4864
	.short	4352
	.short	4608
	.short	4096
	.section	.rodata.preamble_sizes,"a",@progbits
	.type	preamble_sizes, @object
	.size	preamble_sizes, 4
preamble_sizes:
	.byte	3
	.byte	4
	.byte	3
	.byte	2
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI0-.LFB42
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
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI2-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI3-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI4-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI5-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI6-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI7-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI8-.LFB50
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI9-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/list.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/fixed_queue.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/hci_hal.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/thread.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/include/esp_bt.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/hcidefs.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/l2c_api.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/l2cap/include/l2c_int.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1eb9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF397
	.byte	0xc
	.4byte	.LASF398
	.4byte	.LASF399
	.4byte	.Ldebug_ranges0+0x48
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x8
	.4byte	0xf0
	.uleb128 0x9
	.4byte	0xa2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x121
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1a
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1b
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1c
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x21
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x22
	.4byte	0x158
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF31
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0xbf
	.4byte	0x1a4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.byte	0xc0
	.4byte	0xc4
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x5
	.byte	0xc1
	.4byte	0xc4
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.byte	0xc2
	.4byte	0xc4
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0xc3
	.4byte	0xc4
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.byte	0xc4
	.4byte	0x1a4
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0xb9
	.4byte	0x1b3
	.uleb128 0x10
	.4byte	0x9b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0xc5
	.4byte	0x15f
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x12b
	.4byte	0x1ca
	.uleb128 0xf
	.4byte	0x121
	.4byte	0x1da
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x121
	.uleb128 0xf
	.4byte	0x121
	.4byte	0x1f0
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.byte	0x18
	.byte	0x5
	.2byte	0x165
	.4byte	0x255
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x166
	.4byte	0x121
	.byte	0
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x167
	.4byte	0x121
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x168
	.4byte	0x137
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x169
	.4byte	0x137
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x16a
	.4byte	0x137
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x16b
	.4byte	0x137
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x16c
	.4byte	0x137
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x16d
	.4byte	0x1f0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x1f1
	.4byte	0x121
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x1f7
	.4byte	0x121
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x6
	.byte	0x20
	.4byte	0xe5
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x20
	.byte	0x6
	.byte	0x21
	.4byte	0x2fd
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0x22
	.4byte	0x2fd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0x23
	.4byte	0x2fd
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0x24
	.4byte	0x303
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0x25
	.4byte	0x142
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0x26
	.4byte	0x142
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0x27
	.4byte	0x137
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0x28
	.4byte	0x137
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x6
	.byte	0x29
	.4byte	0x12c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x6
	.byte	0x2a
	.4byte	0x121
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x284
	.uleb128 0x6
	.byte	0x4
	.4byte	0x279
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0x2b
	.4byte	0x284
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa
	.4byte	0x31f
	.uleb128 0x16
	.4byte	.LASF57
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x1f
	.4byte	0x32f
	.uleb128 0x16
	.4byte	.LASF58
	.uleb128 0x6
	.byte	0x4
	.4byte	0x324
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1b
	.4byte	0x35f
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0x20
	.4byte	0x33a
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.byte	0x22
	.4byte	0x375
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37b
	.uleb128 0x8
	.4byte	0x386
	.uleb128 0x9
	.4byte	0x386
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b3
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.byte	0x24
	.4byte	0x3a1
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0xa
	.byte	0x28
	.4byte	0x36a
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0x2f
	.4byte	0x38c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0xc
	.byte	0xa
	.byte	0x31
	.4byte	0x3dd
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0xa
	.byte	0x36
	.4byte	0x3f7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xa
	.byte	0x39
	.4byte	0xab
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xa
	.byte	0x4e
	.4byte	0x41c
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	0x158
	.4byte	0x3ec
	.uleb128 0x9
	.4byte	0x3ec
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f2
	.uleb128 0x18
	.4byte	0x3a1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0x17
	.4byte	0xc4
	.4byte	0x416
	.uleb128 0x9
	.4byte	0x35f
	.uleb128 0x9
	.4byte	0x416
	.uleb128 0x9
	.4byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fd
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x4f
	.4byte	0x3ac
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xb
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xb
	.byte	0x76
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xc
	.byte	0x6e
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xd
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x10
	.byte	0xe
	.byte	0x1c
	.4byte	0x495
	.uleb128 0xe
	.string	"sig"
	.byte	0xe
	.byte	0x1d
	.4byte	0xda
	.byte	0
	.uleb128 0xe
	.string	"par"
	.byte	0xe
	.byte	0x1e
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.string	"cb"
	.byte	0xe
	.byte	0x1f
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xe
	.string	"arg"
	.byte	0xe
	.byte	0x20
	.4byte	0xa2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xe
	.byte	0x22
	.4byte	0x459
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x26
	.4byte	0x4b9
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xe
	.byte	0x60
	.4byte	0xda
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x62
	.4byte	0x4dd
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xe
	.byte	0x65
	.4byte	0x4c4
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x8
	.byte	0xf
	.2byte	0x149
	.4byte	0x510
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0xf
	.2byte	0x14a
	.4byte	0xab
	.byte	0
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0xf
	.2byte	0x14b
	.4byte	0x524
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x524
	.uleb128 0x9
	.4byte	0x416
	.uleb128 0x9
	.4byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x510
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0xf
	.2byte	0x14c
	.4byte	0x4e8
	.uleb128 0x13
	.byte	0x10
	.byte	0x10
	.2byte	0x56c
	.4byte	0x58d
	.uleb128 0x1a
	.string	"id"
	.byte	0x10
	.2byte	0x56d
	.4byte	0x121
	.byte	0
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x10
	.2byte	0x56e
	.4byte	0x121
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x10
	.2byte	0x56f
	.4byte	0x12c
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x10
	.2byte	0x570
	.4byte	0x137
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x10
	.2byte	0x571
	.4byte	0x137
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x10
	.2byte	0x572
	.4byte	0x137
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x10
	.2byte	0x573
	.4byte	0x536
	.uleb128 0x8
	.4byte	0x5a4
	.uleb128 0x9
	.4byte	0x12c
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x37
	.byte	0x11
	.2byte	0x1c2
	.4byte	0x6cc
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x21
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x22
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x23
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x25
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x26
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x27
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x29
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x2a
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x2b
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x2d
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x2e
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x37
	.byte	0x11
	.2byte	0x6ec
	.4byte	0x704
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x12
	.byte	0x40
	.4byte	0x121
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x12
	.byte	0x48
	.4byte	0x121
	.uleb128 0xc
	.byte	0xa
	.byte	0x12
	.byte	0x86
	.4byte	0x76b
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x12
	.byte	0x8b
	.4byte	0x121
	.byte	0
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0x12
	.byte	0x8d
	.4byte	0x121
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0x12
	.byte	0x8e
	.4byte	0x121
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0x12
	.byte	0x8f
	.4byte	0x12c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0x12
	.byte	0x90
	.4byte	0x12c
	.byte	0x6
	.uleb128 0xe
	.string	"mps"
	.byte	0x12
	.byte	0x91
	.4byte	0x12c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x12
	.byte	0x92
	.4byte	0x71a
	.uleb128 0xc
	.byte	0x48
	.byte	0x12
	.byte	0x98
	.4byte	0x827
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x12
	.byte	0x99
	.4byte	0x12c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0x12
	.byte	0x9a
	.4byte	0x14d
	.byte	0x2
	.uleb128 0xe
	.string	"mtu"
	.byte	0x12
	.byte	0x9b
	.4byte	0x12c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0x12
	.byte	0x9c
	.4byte	0x14d
	.byte	0x6
	.uleb128 0xe
	.string	"qos"
	.byte	0x12
	.byte	0x9d
	.4byte	0x255
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0x12
	.byte	0x9e
	.4byte	0x14d
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0x12
	.byte	0x9f
	.4byte	0x12c
	.byte	0x22
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0x12
	.byte	0xa0
	.4byte	0x14d
	.byte	0x24
	.uleb128 0xe
	.string	"fcr"
	.byte	0x12
	.byte	0xa1
	.4byte	0x76b
	.byte	0x26
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x12
	.byte	0xa2
	.4byte	0x14d
	.byte	0x30
	.uleb128 0xe
	.string	"fcs"
	.byte	0x12
	.byte	0xa3
	.4byte	0x121
	.byte	0x31
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x12
	.byte	0xa4
	.4byte	0x14d
	.byte	0x32
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0x12
	.byte	0xa5
	.4byte	0x58d
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0x12
	.byte	0xa6
	.4byte	0x12c
	.byte	0x44
	.byte	0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x12
	.byte	0xa7
	.4byte	0x776
	.uleb128 0xc
	.byte	0x6
	.byte	0x12
	.byte	0xac
	.4byte	0x85f
	.uleb128 0xe
	.string	"mtu"
	.byte	0x12
	.byte	0xae
	.4byte	0x12c
	.byte	0
	.uleb128 0xe
	.string	"mps"
	.byte	0x12
	.byte	0xaf
	.4byte	0x12c
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF167
	.byte	0x12
	.byte	0xb0
	.4byte	0x12c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0x12
	.byte	0xb1
	.4byte	0x832
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x12
	.byte	0xbc
	.4byte	0x12c
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x12
	.byte	0xc8
	.4byte	0x880
	.uleb128 0x8
	.4byte	0x89a
	.uleb128 0x9
	.4byte	0x1da
	.uleb128 0x9
	.4byte	0x12c
	.uleb128 0x9
	.4byte	0x12c
	.uleb128 0x9
	.4byte	0x121
	.byte	0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x12
	.byte	0xcf
	.4byte	0x8a5
	.uleb128 0x8
	.4byte	0x8b5
	.uleb128 0x9
	.4byte	0x12c
	.uleb128 0x9
	.4byte	0x12c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x12
	.byte	0xd5
	.4byte	0x599
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x12
	.byte	0xdc
	.4byte	0x8cb
	.uleb128 0x8
	.4byte	0x8db
	.uleb128 0x9
	.4byte	0x12c
	.uleb128 0x9
	.4byte	0x8db
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x827
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x12
	.byte	0xe3
	.4byte	0x8cb
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x12
	.byte	0xea
	.4byte	0x8f7
	.uleb128 0x8
	.4byte	0x907
	.uleb128 0x9
	.4byte	0x12c
	.uleb128 0x9
	.4byte	0x14d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x12
	.byte	0xf1
	.4byte	0x8a5
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x12
	.byte	0xf7
	.4byte	0x91d
	.uleb128 0x8
	.4byte	0x928
	.uleb128 0x9
	.4byte	0x1da
	.byte	0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x12
	.byte	0xfe
	.4byte	0x933
	.uleb128 0x8
	.4byte	0x943
	.uleb128 0x9
	.4byte	0x12c
	.uleb128 0x9
	.4byte	0x386
	.byte	0
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x12
	.2byte	0x106
	.4byte	0x599
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x12
	.2byte	0x114
	.4byte	0x8f7
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x12
	.2byte	0x11d
	.4byte	0x91d
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x12
	.2byte	0x126
	.4byte	0x8a5
	.uleb128 0x13
	.byte	0x2c
	.byte	0x12
	.2byte	0x12d
	.4byte	0xa0c
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0x12
	.2byte	0x12e
	.4byte	0xa0c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0x12
	.2byte	0x12f
	.4byte	0xa12
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF185
	.byte	0x12
	.2byte	0x130
	.4byte	0xa18
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0x12
	.2byte	0x131
	.4byte	0xa1e
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF187
	.byte	0x12
	.2byte	0x132
	.4byte	0xa24
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF188
	.byte	0x12
	.2byte	0x133
	.4byte	0xa2a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x12
	.2byte	0x134
	.4byte	0xa30
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF190
	.byte	0x12
	.2byte	0x135
	.4byte	0xa36
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF191
	.byte	0x12
	.2byte	0x136
	.4byte	0xa3c
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF192
	.byte	0x12
	.2byte	0x137
	.4byte	0xa42
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF193
	.byte	0x12
	.2byte	0x138
	.4byte	0xa48
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x875
	.uleb128 0x6
	.byte	0x4
	.4byte	0x89a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8e1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x907
	.uleb128 0x6
	.byte	0x4
	.4byte	0x912
	.uleb128 0x6
	.byte	0x4
	.4byte	0x928
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x967
	.uleb128 0x11
	.4byte	.LASF194
	.byte	0x12
	.2byte	0x13a
	.4byte	0x973
	.uleb128 0x13
	.byte	0xa
	.byte	0x12
	.2byte	0x13f
	.4byte	0xab2
	.uleb128 0x14
	.4byte	.LASF195
	.byte	0x12
	.2byte	0x140
	.4byte	0x121
	.byte	0
	.uleb128 0x14
	.4byte	.LASF196
	.byte	0x12
	.2byte	0x141
	.4byte	0x121
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF197
	.byte	0x12
	.2byte	0x142
	.4byte	0x12c
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x12
	.2byte	0x143
	.4byte	0x12c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x12
	.2byte	0x144
	.4byte	0x12c
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF200
	.byte	0x12
	.2byte	0x145
	.4byte	0x12c
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0x12
	.2byte	0x147
	.4byte	0xa5a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x13
	.byte	0x51
	.4byte	0xb01
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF208
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF209
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF210
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0x13
	.byte	0x5b
	.4byte	0xabe
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x13
	.byte	0x5f
	.4byte	0xb3d
	.uleb128 0xb
	.4byte	.LASF212
	.byte	0
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF215
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF216
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF217
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x13
	.byte	0x66
	.4byte	0xb0c
	.uleb128 0xc
	.byte	0x60
	.byte	0x13
	.byte	0xaa
	.4byte	0xc41
	.uleb128 0xd
	.4byte	.LASF219
	.byte	0x13
	.byte	0xab
	.4byte	0x121
	.byte	0
	.uleb128 0xd
	.4byte	.LASF220
	.byte	0x13
	.byte	0xac
	.4byte	0x121
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF221
	.byte	0x13
	.byte	0xad
	.4byte	0x121
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF222
	.byte	0x13
	.byte	0xae
	.4byte	0x121
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF223
	.byte	0x13
	.byte	0xaf
	.4byte	0x121
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF224
	.byte	0x13
	.byte	0xb0
	.4byte	0x121
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF225
	.byte	0x13
	.byte	0xb2
	.4byte	0x14d
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF226
	.byte	0x13
	.byte	0xb3
	.4byte	0x14d
	.byte	0x7
	.uleb128 0xd
	.4byte	.LASF227
	.byte	0x13
	.byte	0xb5
	.4byte	0x14d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF228
	.byte	0x13
	.byte	0xb6
	.4byte	0x14d
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF229
	.byte	0x13
	.byte	0xb7
	.4byte	0x14d
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF230
	.byte	0x13
	.byte	0xb8
	.4byte	0x14d
	.byte	0xb
	.uleb128 0xd
	.4byte	.LASF231
	.byte	0x13
	.byte	0xba
	.4byte	0x14d
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF232
	.byte	0x13
	.byte	0xbc
	.4byte	0x12c
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF233
	.byte	0x13
	.byte	0xbd
	.4byte	0x386
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF234
	.byte	0x13
	.byte	0xbe
	.4byte	0x334
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF235
	.byte	0x13
	.byte	0xbf
	.4byte	0x334
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF236
	.byte	0x13
	.byte	0xc0
	.4byte	0x334
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF237
	.byte	0x13
	.byte	0xc2
	.4byte	0x309
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF238
	.byte	0x13
	.byte	0xc3
	.4byte	0x309
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF239
	.byte	0x13
	.byte	0xdf
	.4byte	0xb48
	.uleb128 0xc
	.byte	0x34
	.byte	0x13
	.byte	0xf2
	.4byte	0xc85
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x13
	.byte	0xf3
	.4byte	0x14d
	.byte	0
	.uleb128 0xe
	.string	"psm"
	.byte	0x13
	.byte	0xf4
	.4byte	0x12c
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF240
	.byte	0x13
	.byte	0xf5
	.4byte	0x12c
	.byte	0x4
	.uleb128 0xe
	.string	"api"
	.byte	0x13
	.byte	0xfb
	.4byte	0xa4e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF241
	.byte	0x13
	.byte	0xfc
	.4byte	0xc4c
	.uleb128 0x1c
	.4byte	.LASF242
	.2byte	0x16c
	.byte	0x13
	.2byte	0x112
	.4byte	0xe7c
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x13
	.2byte	0x113
	.4byte	0x14d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF243
	.byte	0x13
	.2byte	0x114
	.4byte	0xb01
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF244
	.byte	0x13
	.2byte	0x115
	.4byte	0x85f
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF245
	.byte	0x13
	.2byte	0x116
	.4byte	0x85f
	.byte	0xe
	.uleb128 0x14
	.4byte	.LASF246
	.byte	0x13
	.2byte	0x118
	.4byte	0xe7c
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF247
	.byte	0x13
	.2byte	0x119
	.4byte	0xe7c
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF248
	.byte	0x13
	.2byte	0x11a
	.4byte	0x112e
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF249
	.byte	0x13
	.2byte	0x11c
	.4byte	0x12c
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF250
	.byte	0x13
	.2byte	0x11d
	.4byte	0x12c
	.byte	0x22
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x13
	.2byte	0x11f
	.4byte	0x309
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF252
	.byte	0x13
	.2byte	0x121
	.4byte	0x1134
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF253
	.byte	0x13
	.2byte	0x122
	.4byte	0x158
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF254
	.byte	0x13
	.2byte	0x129
	.4byte	0x121
	.byte	0x49
	.uleb128 0x14
	.4byte	.LASF255
	.byte	0x13
	.2byte	0x12a
	.4byte	0x121
	.byte	0x4a
	.uleb128 0x14
	.4byte	.LASF256
	.byte	0x13
	.2byte	0x12b
	.4byte	0x121
	.byte	0x4b
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x13
	.2byte	0x12f
	.4byte	0x121
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF257
	.byte	0x13
	.2byte	0x131
	.4byte	0x827
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF258
	.byte	0x13
	.2byte	0x132
	.4byte	0x86a
	.byte	0x98
	.uleb128 0x14
	.4byte	.LASF259
	.byte	0x13
	.2byte	0x133
	.4byte	0x827
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF260
	.byte	0x13
	.2byte	0x135
	.4byte	0x334
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF261
	.byte	0x13
	.2byte	0x136
	.4byte	0x14d
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF262
	.byte	0x13
	.2byte	0x137
	.4byte	0x12c
	.byte	0xea
	.uleb128 0x14
	.4byte	.LASF263
	.byte	0x13
	.2byte	0x139
	.4byte	0x704
	.byte	0xec
	.uleb128 0x14
	.4byte	.LASF264
	.byte	0x13
	.2byte	0x13a
	.4byte	0x70f
	.byte	0xed
	.uleb128 0x14
	.4byte	.LASF265
	.byte	0x13
	.2byte	0x13b
	.4byte	0x70f
	.byte	0xee
	.uleb128 0x14
	.4byte	.LASF266
	.byte	0x13
	.2byte	0x13e
	.4byte	0xab2
	.byte	0xf0
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x13
	.2byte	0x13f
	.4byte	0xc41
	.byte	0xfc
	.uleb128 0x1d
	.4byte	.LASF268
	.byte	0x13
	.2byte	0x140
	.4byte	0x12c
	.2byte	0x15c
	.uleb128 0x1d
	.4byte	.LASF269
	.byte	0x13
	.2byte	0x141
	.4byte	0x12c
	.2byte	0x15e
	.uleb128 0x1d
	.4byte	.LASF270
	.byte	0x13
	.2byte	0x142
	.4byte	0x121
	.2byte	0x160
	.uleb128 0x1d
	.4byte	.LASF271
	.byte	0x13
	.2byte	0x143
	.4byte	0x14d
	.2byte	0x161
	.uleb128 0x1d
	.4byte	.LASF272
	.byte	0x13
	.2byte	0x144
	.4byte	0x14d
	.2byte	0x162
	.uleb128 0x1d
	.4byte	.LASF273
	.byte	0x13
	.2byte	0x149
	.4byte	0x121
	.2byte	0x163
	.uleb128 0x1d
	.4byte	.LASF274
	.byte	0x13
	.2byte	0x14c
	.4byte	0x14d
	.2byte	0x164
	.uleb128 0x1d
	.4byte	.LASF275
	.byte	0x13
	.2byte	0x150
	.4byte	0x12c
	.2byte	0x166
	.uleb128 0x1d
	.4byte	.LASF276
	.byte	0x13
	.2byte	0x152
	.4byte	0x12c
	.2byte	0x168
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc90
	.uleb128 0x1c
	.4byte	.LASF277
	.2byte	0x180
	.byte	0x13
	.2byte	0x175
	.4byte	0x112e
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x13
	.2byte	0x176
	.4byte	0x14d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF278
	.byte	0x13
	.2byte	0x177
	.4byte	0xb3d
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x13
	.2byte	0x179
	.4byte	0x309
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF279
	.byte	0x13
	.2byte	0x17a
	.4byte	0x12c
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF280
	.byte	0x13
	.2byte	0x17b
	.4byte	0x12c
	.byte	0x2a
	.uleb128 0x14
	.4byte	.LASF281
	.byte	0x13
	.2byte	0x17d
	.4byte	0x1170
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF282
	.byte	0x13
	.2byte	0x17f
	.4byte	0x116a
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF283
	.byte	0x13
	.2byte	0x180
	.4byte	0x309
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF284
	.byte	0x13
	.2byte	0x181
	.4byte	0x309
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF285
	.byte	0x13
	.2byte	0x182
	.4byte	0x1be
	.byte	0x78
	.uleb128 0x14
	.4byte	.LASF286
	.byte	0x13
	.2byte	0x184
	.4byte	0x121
	.byte	0x7e
	.uleb128 0x1a
	.string	"id"
	.byte	0x13
	.2byte	0x185
	.4byte	0x121
	.byte	0x7f
	.uleb128 0x14
	.4byte	.LASF287
	.byte	0x13
	.2byte	0x186
	.4byte	0x121
	.byte	0x80
	.uleb128 0x14
	.4byte	.LASF288
	.byte	0x13
	.2byte	0x187
	.4byte	0x11c6
	.byte	0x84
	.uleb128 0x14
	.4byte	.LASF289
	.byte	0x13
	.2byte	0x188
	.4byte	0x12c
	.byte	0x88
	.uleb128 0x14
	.4byte	.LASF290
	.byte	0x13
	.2byte	0x189
	.4byte	0x14d
	.byte	0x8a
	.uleb128 0x14
	.4byte	.LASF291
	.byte	0x13
	.2byte	0x18b
	.4byte	0x12c
	.byte	0x8c
	.uleb128 0x14
	.4byte	.LASF292
	.byte	0x13
	.2byte	0x18d
	.4byte	0x12c
	.byte	0x8e
	.uleb128 0x14
	.4byte	.LASF293
	.byte	0x13
	.2byte	0x18e
	.4byte	0x12c
	.byte	0x90
	.uleb128 0x14
	.4byte	.LASF294
	.byte	0x13
	.2byte	0x190
	.4byte	0x14d
	.byte	0x92
	.uleb128 0x14
	.4byte	.LASF295
	.byte	0x13
	.2byte	0x192
	.4byte	0x14d
	.byte	0x93
	.uleb128 0x14
	.4byte	.LASF296
	.byte	0x13
	.2byte	0x193
	.4byte	0x121
	.byte	0x94
	.uleb128 0x14
	.4byte	.LASF297
	.byte	0x13
	.2byte	0x194
	.4byte	0x137
	.byte	0x98
	.uleb128 0x14
	.4byte	.LASF298
	.byte	0x13
	.2byte	0x195
	.4byte	0x11cc
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF299
	.byte	0x13
	.2byte	0x197
	.4byte	0x1e0
	.byte	0xa0
	.uleb128 0x14
	.4byte	.LASF300
	.byte	0x13
	.2byte	0x19e
	.4byte	0x386
	.byte	0xa8
	.uleb128 0x14
	.4byte	.LASF301
	.byte	0x13
	.2byte	0x19f
	.4byte	0x12c
	.byte	0xac
	.uleb128 0x14
	.4byte	.LASF302
	.byte	0x13
	.2byte	0x1a0
	.4byte	0x121
	.byte	0xae
	.uleb128 0x14
	.4byte	.LASF303
	.byte	0x13
	.2byte	0x1a1
	.4byte	0x11d2
	.byte	0xb0
	.uleb128 0x14
	.4byte	.LASF304
	.byte	0x13
	.2byte	0x1a4
	.4byte	0x11d8
	.byte	0xb4
	.uleb128 0x1d
	.4byte	.LASF305
	.byte	0x13
	.2byte	0x1a5
	.4byte	0x12c
	.2byte	0x134
	.uleb128 0x1d
	.4byte	.LASF306
	.byte	0x13
	.2byte	0x1a8
	.4byte	0x26d
	.2byte	0x136
	.uleb128 0x1d
	.4byte	.LASF307
	.byte	0x13
	.2byte	0x1aa
	.4byte	0x261
	.2byte	0x137
	.uleb128 0x1d
	.4byte	.LASF308
	.byte	0x13
	.2byte	0x1ab
	.4byte	0x261
	.2byte	0x138
	.uleb128 0x1d
	.4byte	.LASF276
	.byte	0x13
	.2byte	0x1ac
	.4byte	0x12c
	.2byte	0x13a
	.uleb128 0x1d
	.4byte	.LASF309
	.byte	0x13
	.2byte	0x1ad
	.4byte	0x334
	.2byte	0x13c
	.uleb128 0x1d
	.4byte	.LASF310
	.byte	0x13
	.2byte	0x1ae
	.4byte	0x121
	.2byte	0x140
	.uleb128 0x1d
	.4byte	.LASF311
	.byte	0x13
	.2byte	0x1b4
	.4byte	0x121
	.2byte	0x141
	.uleb128 0x1d
	.4byte	.LASF312
	.byte	0x13
	.2byte	0x1b6
	.4byte	0x12c
	.2byte	0x142
	.uleb128 0x1d
	.4byte	.LASF313
	.byte	0x13
	.2byte	0x1b7
	.4byte	0x12c
	.2byte	0x144
	.uleb128 0x1d
	.4byte	.LASF314
	.byte	0x13
	.2byte	0x1b8
	.4byte	0x12c
	.2byte	0x146
	.uleb128 0x1d
	.4byte	.LASF315
	.byte	0x13
	.2byte	0x1b9
	.4byte	0x12c
	.2byte	0x148
	.uleb128 0x1d
	.4byte	.LASF316
	.byte	0x13
	.2byte	0x1bb
	.4byte	0x12c
	.2byte	0x14a
	.uleb128 0x1d
	.4byte	.LASF317
	.byte	0x13
	.2byte	0x1bc
	.4byte	0x12c
	.2byte	0x14c
	.uleb128 0x1d
	.4byte	.LASF318
	.byte	0x13
	.2byte	0x1bd
	.4byte	0x158
	.2byte	0x14e
	.uleb128 0x1d
	.4byte	.LASF319
	.byte	0x13
	.2byte	0x1bf
	.4byte	0x12c
	.2byte	0x150
	.uleb128 0x1d
	.4byte	.LASF320
	.byte	0x13
	.2byte	0x1c0
	.4byte	0x12c
	.2byte	0x152
	.uleb128 0x1d
	.4byte	.LASF321
	.byte	0x13
	.2byte	0x1c1
	.4byte	0x12c
	.2byte	0x154
	.uleb128 0x1d
	.4byte	.LASF322
	.byte	0x13
	.2byte	0x1ca
	.4byte	0x11e8
	.2byte	0x158
	.uleb128 0x1d
	.4byte	.LASF323
	.byte	0x13
	.2byte	0x1cb
	.4byte	0x121
	.2byte	0x17c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe82
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc85
	.uleb128 0x11
	.4byte	.LASF324
	.byte	0x13
	.2byte	0x153
	.4byte	0xc90
	.uleb128 0x13
	.byte	0x8
	.byte	0x13
	.2byte	0x158
	.4byte	0x116a
	.uleb128 0x14
	.4byte	.LASF325
	.byte	0x13
	.2byte	0x159
	.4byte	0x116a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF326
	.byte	0x13
	.2byte	0x15a
	.4byte	0x116a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x113a
	.uleb128 0x11
	.4byte	.LASF327
	.byte	0x13
	.2byte	0x15b
	.4byte	0x1146
	.uleb128 0x13
	.byte	0xc
	.byte	0x13
	.2byte	0x169
	.4byte	0x11ba
	.uleb128 0x14
	.4byte	.LASF328
	.byte	0x13
	.2byte	0x16a
	.4byte	0x116a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF325
	.byte	0x13
	.2byte	0x16b
	.4byte	0x116a
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF329
	.byte	0x13
	.2byte	0x16c
	.4byte	0x121
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF330
	.byte	0x13
	.2byte	0x16d
	.4byte	0x121
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF331
	.byte	0x13
	.2byte	0x16e
	.4byte	0x117c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x943
	.uleb128 0x6
	.byte	0x4
	.4byte	0x314
	.uleb128 0x6
	.byte	0x4
	.4byte	0x95b
	.uleb128 0xf
	.4byte	0x116a
	.4byte	0x11e8
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	0x11ba
	.4byte	0x11f8
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF332
	.byte	0x13
	.2byte	0x1ce
	.4byte	0xe82
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11f8
	.uleb128 0xc
	.byte	0xc
	.byte	0x1
	.byte	0x37
	.4byte	0x1237
	.uleb128 0xd
	.4byte	.LASF333
	.byte	0x1
	.byte	0x38
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF334
	.byte	0x1
	.byte	0x39
	.4byte	0x334
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF335
	.byte	0x1
	.byte	0x3a
	.4byte	0xc4
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF336
	.byte	0x1
	.byte	0x3b
	.4byte	0x120a
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.byte	0x8b
	.4byte	0xc4
	.byte	0x1
	.4byte	0x128c
	.uleb128 0x1f
	.4byte	.LASF337
	.byte	0x1
	.byte	0x8b
	.4byte	0x35f
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8c
	.4byte	0x416
	.uleb128 0x1f
	.4byte	.LASF338
	.byte	0x1
	.byte	0x8c
	.4byte	0xc4
	.uleb128 0x20
	.4byte	.LASF339
	.byte	0x1
	.byte	0x8e
	.4byte	0xb9
	.uleb128 0x21
	.4byte	.LASF340
	.4byte	0x129c
	.4byte	.LASF71
	.byte	0
	.uleb128 0xf
	.4byte	0xb2
	.4byte	0x129c
	.uleb128 0x12
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x18
	.4byte	0x128c
	.uleb128 0x1e
	.4byte	.LASF341
	.byte	0x1
	.byte	0x67
	.4byte	0x158
	.byte	0x1
	.4byte	0x12ca
	.uleb128 0x1f
	.4byte	.LASF342
	.byte	0x1
	.byte	0x67
	.4byte	0x3ec
	.uleb128 0x21
	.4byte	.LASF340
	.4byte	0x12da
	.4byte	.LASF341
	.byte	0
	.uleb128 0xf
	.4byte	0xb2
	.4byte	0x12da
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.4byte	0x12ca
	.uleb128 0x22
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x15d
	.4byte	0x25
	.byte	0x1
	.4byte	0x132e
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x15d
	.4byte	0x416
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x15d
	.4byte	0xc4
	.uleb128 0x25
	.string	"pkt"
	.byte	0x1
	.2byte	0x160
	.4byte	0x386
	.uleb128 0x26
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x161
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF340
	.4byte	0x133e
	.4byte	.LASF343
	.byte	0
	.uleb128 0xf
	.4byte	0xb2
	.4byte	0x133e
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.4byte	0x132e
	.uleb128 0x27
	.4byte	.LASF346
	.byte	0x1
	.byte	0xe4
	.4byte	0x158
	.byte	0x1
	.4byte	0x136c
	.uleb128 0x1f
	.4byte	.LASF345
	.byte	0x1
	.byte	0xe4
	.4byte	0x386
	.uleb128 0x21
	.4byte	.LASF340
	.4byte	0x137c
	.4byte	.LASF346
	.byte	0
	.uleb128 0xf
	.4byte	0xb2
	.4byte	0x137c
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	0x136c
	.uleb128 0x28
	.4byte	.LASF348
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0x13b1
	.uleb128 0x1f
	.4byte	.LASF333
	.byte	0x1
	.byte	0x4e
	.4byte	0x2c
	.uleb128 0x1f
	.4byte	.LASF347
	.byte	0x1
	.byte	0x4f
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF340
	.4byte	0x13b1
	.4byte	.LASF348
	.byte	0
	.uleb128 0x18
	.4byte	0x132e
	.uleb128 0x29
	.4byte	.LASF400
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF401
	.byte	0x1
	.byte	0x7c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1403
	.uleb128 0x2b
	.4byte	0x13b6
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x7e
	.4byte	0x13f0
	.uleb128 0x2c
	.4byte	.LVL0
	.4byte	0x1d88
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL1
	.4byte	0x1d93
	.uleb128 0x2c
	.4byte	.LVL2
	.4byte	0x1d9f
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x156
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x142a
	.uleb128 0x2e
	.4byte	.LVL3
	.4byte	0x1dab
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF402
	.byte	0x1
	.byte	0xaa
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1483
	.uleb128 0x31
	.string	"arg"
	.byte	0x1
	.byte	0xaa
	.4byte	0xa2
	.4byte	.LLST0
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.byte	0xac
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	.LVL6
	.4byte	0x1db6
	.4byte	0x1479
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL7
	.4byte	0x1dc2
	.byte	0
	.uleb128 0x34
	.4byte	0x1242
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1581
	.uleb128 0x35
	.4byte	0x1252
	.4byte	.LLST1
	.uleb128 0x35
	.4byte	0x125d
	.4byte	.LLST2
	.uleb128 0x35
	.4byte	0x1268
	.4byte	.LLST3
	.uleb128 0x36
	.4byte	0x1273
	.4byte	.LLST4
	.uleb128 0x37
	.4byte	0x127e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8718
	.uleb128 0x38
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x1508
	.uleb128 0x35
	.4byte	0x1252
	.4byte	.LLST5
	.uleb128 0x35
	.4byte	0x125d
	.4byte	.LLST6
	.uleb128 0x35
	.4byte	0x1268
	.4byte	.LLST7
	.uleb128 0x39
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x3a
	.4byte	0x1273
	.uleb128 0x37
	.4byte	0x127e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8718
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL11
	.4byte	0x1dcd
	.4byte	0x151f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL12
	.4byte	0x1dd8
	.uleb128 0x33
	.4byte	.LVL13
	.4byte	0x1de3
	.4byte	0x1566
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8718
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL19
	.4byte	0x1dee
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x12a1
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x170d
	.uleb128 0x35
	.4byte	0x12b1
	.4byte	.LLST8
	.uleb128 0x37
	.4byte	0x12bc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8709
	.uleb128 0x38
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x15ff
	.uleb128 0x35
	.4byte	0x12b1
	.4byte	.LLST9
	.uleb128 0x39
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x37
	.4byte	0x12bc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8709
	.uleb128 0x2e
	.4byte	.LVL23
	.4byte	0x1dcd
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8709
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x1381
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6c
	.4byte	0x169a
	.uleb128 0x3c
	.4byte	0x138d
	.2byte	0x402
	.uleb128 0x3c
	.4byte	0x1398
	.2byte	0x176
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x37
	.4byte	0x13a3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8702
	.uleb128 0x33
	.4byte	.LVL26
	.4byte	0x1dfa
	.4byte	0x1645
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x176
	.byte	0
	.uleb128 0x33
	.4byte	.LVL27
	.4byte	0x1e05
	.4byte	0x165c
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_uart_has_bytes
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL28
	.4byte	0x1dd8
	.uleb128 0x2e
	.4byte	.LVL29
	.4byte	0x1de3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8702
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL30
	.4byte	0x1e10
	.4byte	0x16b7
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL31
	.4byte	0x1e1c
	.4byte	0x16f9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_hal_h4_rx_handler
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciH4TaskHandle
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL32
	.4byte	0x1e28
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	vhci_host_cb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF403
	.byte	0x1
	.byte	0xb8
	.4byte	0x4dd
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1761
	.uleb128 0x3f
	.4byte	.LASF349
	.byte	0x1
	.byte	0xb8
	.4byte	0x4b9
	.4byte	.LLST10
	.uleb128 0x32
	.string	"evt"
	.byte	0x1
	.byte	0xba
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LVL35
	.4byte	0x1e34
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x12df
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1880
	.uleb128 0x35
	.4byte	0x12f0
	.4byte	.LLST11
	.uleb128 0x40
	.4byte	0x12fc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	0x1308
	.4byte	.LLST12
	.uleb128 0x36
	.4byte	0x1314
	.4byte	.LLST13
	.uleb128 0x37
	.4byte	0x1320
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8770
	.uleb128 0x38
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x181c
	.uleb128 0x35
	.4byte	0x12f0
	.4byte	.LLST14
	.uleb128 0x35
	.4byte	0x12fc
	.4byte	.LLST15
	.uleb128 0x39
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x3a
	.4byte	0x1308
	.uleb128 0x3a
	.4byte	0x1314
	.uleb128 0x37
	.4byte	0x1320
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8770
	.uleb128 0x2c
	.4byte	.LVL43
	.4byte	0x1dd8
	.uleb128 0x2e
	.4byte	.LVL44
	.4byte	0x1de3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8770
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL40
	.4byte	0x1e40
	.4byte	0x1835
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x33
	.4byte	.LVL46
	.4byte	0x1e4b
	.4byte	0x1855
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL47
	.4byte	0x1e54
	.4byte	0x186f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL48
	.4byte	0x170d
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x1343
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18fb
	.uleb128 0x35
	.4byte	0x1353
	.4byte	.LLST16
	.uleb128 0x37
	.4byte	0x135e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8741
	.uleb128 0x39
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x35
	.4byte	0x1353
	.4byte	.LLST17
	.uleb128 0x39
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x37
	.4byte	0x135e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8741
	.uleb128 0x2e
	.4byte	.LVL51
	.4byte	0x1dcd
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8741
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x106
	.byte	0x1
	.4byte	0x1960
	.uleb128 0x23
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x106
	.4byte	0x386
	.uleb128 0x26
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x108
	.4byte	0xb9
	.uleb128 0x26
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x108
	.4byte	0xb9
	.uleb128 0x26
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x109
	.4byte	0xc4
	.uleb128 0x26
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x10a
	.4byte	0x416
	.uleb128 0x21
	.4byte	.LASF340
	.4byte	0x1970
	.4byte	.LASF350
	.uleb128 0x42
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.2byte	0x119
	.4byte	0xb9
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xb2
	.4byte	0x1970
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.4byte	0x1960
	.uleb128 0x28
	.4byte	.LASF353
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	0x19da
	.uleb128 0x1f
	.4byte	.LASF345
	.byte	0x1
	.byte	0xc7
	.4byte	0x386
	.uleb128 0x20
	.4byte	.LASF337
	.byte	0x1
	.byte	0xc8
	.4byte	0xb9
	.uleb128 0x20
	.4byte	.LASF354
	.byte	0x1
	.byte	0xc8
	.4byte	0xb9
	.uleb128 0x20
	.4byte	.LASF279
	.byte	0x1
	.byte	0xc9
	.4byte	0xc4
	.uleb128 0x20
	.4byte	.LASF355
	.byte	0x1
	.byte	0xca
	.4byte	0x19da
	.uleb128 0x20
	.4byte	.LASF356
	.byte	0x1
	.byte	0xcb
	.4byte	0x19da
	.uleb128 0x20
	.4byte	.LASF352
	.byte	0x1
	.byte	0xcc
	.4byte	0x416
	.uleb128 0x20
	.4byte	.LASF248
	.byte	0x1
	.byte	0xcd
	.4byte	0x1204
	.byte	0
	.uleb128 0xf
	.4byte	0xc4
	.4byte	0x19ea
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.4byte	.LASF357
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	0x1a02
	.uleb128 0x1f
	.4byte	.LASF345
	.byte	0x1
	.byte	0xf4
	.4byte	0x386
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x14d
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c79
	.uleb128 0x43
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x14d
	.4byte	0x334
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x44
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x14f
	.4byte	0x386
	.4byte	.LLST18
	.uleb128 0x45
	.4byte	0x18fb
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x152
	.4byte	0x1c54
	.uleb128 0x35
	.4byte	0x1908
	.4byte	.LLST18
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x36
	.4byte	0x1914
	.4byte	.LLST20
	.uleb128 0x36
	.4byte	0x1920
	.4byte	.LLST21
	.uleb128 0x36
	.4byte	0x192c
	.4byte	.LLST22
	.uleb128 0x36
	.4byte	0x1938
	.4byte	.LLST23
	.uleb128 0x37
	.4byte	0x1944
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8753
	.uleb128 0x45
	.4byte	0x1975
	.4byte	.LBB37
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x111
	.4byte	0x1b2a
	.uleb128 0x35
	.4byte	0x1981
	.4byte	.LLST18
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x36
	.4byte	0x198c
	.4byte	.LLST25
	.uleb128 0x36
	.4byte	0x1997
	.4byte	.LLST26
	.uleb128 0x36
	.4byte	0x19a2
	.4byte	.LLST27
	.uleb128 0x37
	.4byte	0x19ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.4byte	0x19b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.4byte	0x19c3
	.4byte	.LLST28
	.uleb128 0x36
	.4byte	0x19ce
	.4byte	.LLST29
	.uleb128 0x2c
	.4byte	.LVL59
	.4byte	0x1e5f
	.uleb128 0x2c
	.4byte	.LVL60
	.4byte	0x1e6b
	.uleb128 0x33
	.4byte	.LVL61
	.4byte	0x1e77
	.4byte	0x1b12
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL62
	.4byte	0x1e83
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0x1b7b
	.uleb128 0x36
	.4byte	0x1952
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LVL67
	.4byte	0x1dd8
	.uleb128 0x2e
	.4byte	.LVL68
	.4byte	0x1de3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	0x19ea
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x13f
	.4byte	0x1bbf
	.uleb128 0x35
	.4byte	0x19f6
	.4byte	.LLST31
	.uleb128 0x33
	.4byte	.LVL91
	.4byte	0x1343
	.4byte	0x1bac
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL94
	.4byte	0x1e6b
	.uleb128 0x2c
	.4byte	.LVL95
	.4byte	0x1e8f
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL70
	.4byte	0x1dd8
	.uleb128 0x2c
	.4byte	.LVL74
	.4byte	0x1dd8
	.uleb128 0x33
	.4byte	.LVL76
	.4byte	0x1de3
	.4byte	0x1c13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL85
	.4byte	0x1dd8
	.uleb128 0x33
	.4byte	.LVL88
	.4byte	0x1de3
	.4byte	0x1c2f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x33
	.4byte	.LVL89
	.4byte	0x1e9b
	.4byte	0x1c43
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x47
	.4byte	.LVL97
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL54
	.4byte	0x1ea6
	.4byte	0x1c68
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL98
	.4byte	0x1eb1
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x185
	.4byte	0x1c8f
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c95
	.uleb128 0x18
	.4byte	0x422
	.uleb128 0x49
	.4byte	.LASF361
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x1cad
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x18
	.4byte	0x1ca
	.uleb128 0x49
	.4byte	.LASF362
	.byte	0x5
	.2byte	0x2b9
	.4byte	0x1cc5
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1ca
	.uleb128 0xf
	.4byte	0xb9
	.4byte	0x1cda
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF363
	.byte	0x1
	.byte	0x29
	.4byte	0x1ceb
	.uleb128 0x5
	.byte	0x3
	.4byte	preamble_sizes
	.uleb128 0x18
	.4byte	0x1cca
	.uleb128 0xf
	.4byte	0xc4
	.4byte	0x1d00
	.uleb128 0x12
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF364
	.byte	0x1
	.byte	0x30
	.4byte	0x1d11
	.uleb128 0x5
	.byte	0x3
	.4byte	outbound_event_types
	.uleb128 0x18
	.4byte	0x1cf0
	.uleb128 0x4a
	.4byte	.LASF365
	.byte	0x1
	.byte	0x3e
	.4byte	0x1237
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_hal_env
	.uleb128 0x4b
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x17f
	.4byte	0x1d39
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x18
	.4byte	0x3ac
	.uleb128 0x4a
	.4byte	.LASF367
	.byte	0x1
	.byte	0x40
	.4byte	0x3ec
	.uleb128 0x5
	.byte	0x3
	.4byte	callbacks
	.uleb128 0x4b
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x17a
	.4byte	0x1d61
	.uleb128 0x5
	.byte	0x3
	.4byte	vhci_host_cb
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x4a
	.4byte	.LASF369
	.byte	0x1
	.byte	0x43
	.4byte	0x443
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciH4TaskHandle
	.uleb128 0x4a
	.4byte	.LASF370
	.byte	0x1
	.byte	0x44
	.4byte	0x44e
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciH4Queue
	.uleb128 0x4c
	.4byte	.LASF371
	.4byte	.LASF371
	.byte	0x8
	.byte	0x2d
	.uleb128 0x4d
	.4byte	.LASF372
	.4byte	.LASF372
	.byte	0xc
	.2byte	0x2fb
	.uleb128 0x4d
	.4byte	.LASF373
	.4byte	.LASF373
	.byte	0xd
	.2byte	0x3ac
	.uleb128 0x4c
	.4byte	.LASF374
	.4byte	.LASF374
	.byte	0xe
	.byte	0x68
	.uleb128 0x4d
	.4byte	.LASF375
	.4byte	.LASF375
	.byte	0xd
	.2byte	0x38a
	.uleb128 0x4c
	.4byte	.LASF376
	.4byte	.LASF376
	.byte	0x8
	.byte	0x83
	.uleb128 0x4c
	.4byte	.LASF377
	.4byte	.LASF377
	.byte	0x14
	.byte	0x29
	.uleb128 0x4c
	.4byte	.LASF378
	.4byte	.LASF378
	.byte	0x9
	.byte	0x57
	.uleb128 0x4c
	.4byte	.LASF379
	.4byte	.LASF379
	.byte	0x9
	.byte	0x6b
	.uleb128 0x4d
	.4byte	.LASF380
	.4byte	.LASF380
	.byte	0xf
	.2byte	0x15d
	.uleb128 0x4c
	.4byte	.LASF381
	.4byte	.LASF381
	.byte	0x8
	.byte	0x29
	.uleb128 0x4c
	.4byte	.LASF382
	.4byte	.LASF382
	.byte	0x8
	.byte	0x7d
	.uleb128 0x4d
	.4byte	.LASF383
	.4byte	.LASF383
	.byte	0xd
	.2byte	0x5d0
	.uleb128 0x4d
	.4byte	.LASF384
	.4byte	.LASF384
	.byte	0xc
	.2byte	0x151
	.uleb128 0x4d
	.4byte	.LASF385
	.4byte	.LASF385
	.byte	0xf
	.2byte	0x165
	.uleb128 0x4d
	.4byte	.LASF386
	.4byte	.LASF386
	.byte	0xd
	.2byte	0x265
	.uleb128 0x4c
	.4byte	.LASF387
	.4byte	.LASF387
	.byte	0x15
	.byte	0x57
	.uleb128 0x4e
	.4byte	.LASF405
	.4byte	.LASF405
	.uleb128 0x4c
	.4byte	.LASF388
	.4byte	.LASF388
	.byte	0x8
	.byte	0x3e
	.uleb128 0x4d
	.4byte	.LASF389
	.4byte	.LASF389
	.byte	0x13
	.2byte	0x253
	.uleb128 0x4d
	.4byte	.LASF390
	.4byte	.LASF390
	.byte	0xf
	.2byte	0x152
	.uleb128 0x4d
	.4byte	.LASF391
	.4byte	.LASF391
	.byte	0x13
	.2byte	0x2a0
	.uleb128 0x4d
	.4byte	.LASF392
	.4byte	.LASF392
	.byte	0x16
	.2byte	0x245
	.uleb128 0x4d
	.4byte	.LASF393
	.4byte	.LASF393
	.byte	0x16
	.2byte	0x32e
	.uleb128 0x4c
	.4byte	.LASF394
	.4byte	.LASF394
	.byte	0x15
	.byte	0x5a
	.uleb128 0x4c
	.4byte	.LASF395
	.4byte	.LASF395
	.byte	0x8
	.byte	0x43
	.uleb128 0x4c
	.4byte	.LASF396
	.4byte	.LASF396
	.byte	0x8
	.byte	0x31
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LFE43
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL18
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x5
	.byte	0x3
	.4byte	callbacks
	.4byte	.LVL26-1
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-1
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL64
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL73
	.4byte	.LVL86
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes
	.byte	0x22
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes-1
	.byte	0x22
	.4byte	.LVL90
	.4byte	.LVL96
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes
	.byte	0x22
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL55
	.4byte	.LVL59-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x11
	.byte	0x74
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x74
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL90
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF139:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF374:
	.string	"hci_host_task_post"
.LASF71:
	.string	"transmit_data"
.LASF144:
	.string	"BTM_PM_STS_PARK"
.LASF369:
	.string	"xHciH4TaskHandle"
.LASF137:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF48:
	.string	"TIMER_CBACK"
.LASF85:
	.string	"notify_host_send_available"
.LASF141:
	.string	"BTM_PM_STS_ACTIVE"
.LASF200:
	.string	"fcr_tx_buf_size"
.LASF266:
	.string	"ertm_info"
.LASF15:
	.string	"char"
.LASF190:
	.string	"pL2CA_QoSViolationInd_Cb"
.LASF403:
	.string	"hci_hal_h4_task_post"
.LASF335:
	.string	"adv_free_num"
.LASF158:
	.string	"qos_present"
.LASF295:
	.string	"w4_info_rsp"
.LASF42:
	.string	"peak_bandwidth"
.LASF203:
	.string	"CST_ORIG_W4_SEC_COMP"
.LASF290:
	.string	"is_bonding"
.LASF292:
	.string	"link_xmit_quota"
.LASF214:
	.string	"LST_CONNECTING_WAIT_SWITCH"
.LASF209:
	.string	"CST_W4_L2CAP_DISCONNECT_RSP"
.LASF64:
	.string	"packet_ready_cb"
.LASF343:
	.string	"host_recv_pkt_cb"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF36:
	.string	"BT_HDR"
.LASF381:
	.string	"fixed_queue_new"
.LASF165:
	.string	"flags"
.LASF66:
	.string	"hci_hal_callbacks_t"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF366:
	.string	"interface"
.LASF377:
	.string	"__assert_func"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF384:
	.string	"xTaskCreatePinnedToCore"
.LASF275:
	.string	"fixed_chnl_idle_tout"
.LASF27:
	.string	"UINT16"
.LASF305:
	.string	"disc_reason"
.LASF166:
	.string	"tL2CAP_CFG_INFO"
.LASF0:
	.string	"unsigned int"
.LASF336:
	.string	"hci_hal_env_t"
.LASF244:
	.string	"local_conn_cfg"
.LASF328:
	.string	"p_serve_ccb"
.LASF237:
	.string	"ack_timer"
.LASF170:
	.string	"tL2CA_CONNECT_IND_CB"
.LASF181:
	.string	"tL2CA_NOCP_CB"
.LASF373:
	.string	"vQueueDelete"
.LASF223:
	.string	"num_tries"
.LASF294:
	.string	"partial_segment_being_sent"
.LASF153:
	.string	"rtrans_tout"
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF265:
	.string	"rx_data_rate"
.LASF217:
	.string	"LST_DISCONNECTING"
.LASF221:
	.string	"next_seq_expected"
.LASF240:
	.string	"real_psm"
.LASF378:
	.string	"esp_log_timestamp"
.LASF151:
	.string	"tx_win_sz"
.LASF355:
	.string	"handles"
.LASF169:
	.string	"tL2CAP_CH_CFG_BITS"
.LASF310:
	.string	"sec_act"
.LASF30:
	.string	"BOOLEAN"
.LASF88:
	.string	"stype"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF46:
	.string	"tBLE_ADDR_TYPE"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF289:
	.string	"idle_timeout"
.LASF150:
	.string	"mode"
.LASF206:
	.string	"CST_W4_L2CA_CONNECT_RSP"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF358:
	.string	"host_send_pkt_available_cb"
.LASF248:
	.string	"p_lcb"
.LASF387:
	.string	"calloc"
.LASF391:
	.string	"l2cu_find_completed_packets"
.LASF157:
	.string	"mtu_present"
.LASF186:
	.string	"pL2CA_ConfigInd_Cb"
.LASF246:
	.string	"p_next_ccb"
.LASF218:
	.string	"tL2C_LINK_STATE"
.LASF348:
	.string	"hci_hal_env_init"
.LASF350:
	.string	"hci_hal_h4_hdl_rx_packet"
.LASF326:
	.string	"p_last_ccb"
.LASF284:
	.string	"upda_con_timer"
.LASF274:
	.string	"is_flushable"
.LASF390:
	.string	"esp_vhci_host_check_send_available"
.LASF40:
	.string	"token_rate"
.LASF286:
	.string	"link_role"
.LASF333:
	.string	"buffer_size"
.LASF342:
	.string	"upper_callbacks"
.LASF28:
	.string	"UINT32"
.LASF19:
	.string	"uint32_t"
.LASF189:
	.string	"pL2CA_DisconnectCfm_Cb"
.LASF47:
	.string	"tBT_TRANSPORT"
.LASF183:
	.string	"pL2CA_ConnectInd_Cb"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF207:
	.string	"CST_CONFIG"
.LASF302:
	.string	"acl_priority"
.LASF32:
	.string	"event"
.LASF216:
	.string	"LST_CONNECTED"
.LASF29:
	.string	"INT32"
.LASF143:
	.string	"BTM_PM_STS_SNIFF"
.LASF375:
	.string	"xQueueGenericReceive"
.LASF404:
	.string	"hci_hal_h4_get_interface"
.LASF156:
	.string	"result"
.LASF314:
	.string	"waiting_update_conn_latency"
.LASF133:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF11:
	.string	"long long unsigned int"
.LASF125:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF179:
	.string	"tL2CA_ECHO_RSP_CB"
.LASF346:
	.string	"host_recv_adv_packet"
.LASF361:
	.string	"bd_addr_any"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF332:
	.string	"tL2C_LCB"
.LASF220:
	.string	"last_rx_ack"
.LASF380:
	.string	"esp_vhci_host_send_packet"
.LASF7:
	.string	"__uint16_t"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF132:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF329:
	.string	"num_ccb"
.LASF145:
	.string	"BTM_PM_STS_SSR"
.LASF78:
	.string	"SIG_HCI_HAL_RECV_PACKET"
.LASF397:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF196:
	.string	"allowed_modes"
.LASF92:
	.string	"flush_timeout"
.LASF243:
	.string	"chnl_state"
.LASF257:
	.string	"our_cfg"
.LASF205:
	.string	"CST_W4_L2CAP_CONNECT_RSP"
.LASF199:
	.string	"fcr_rx_buf_size"
.LASF321:
	.string	"current_used_conn_timeout"
.LASF359:
	.string	"event_uart_has_bytes"
.LASF45:
	.string	"FLOW_SPEC"
.LASF3:
	.string	"size_t"
.LASF400:
	.string	"hci_hal_env_deinit"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"offset"
.LASF154:
	.string	"mon_tout"
.LASF356:
	.string	"num_packets"
.LASF175:
	.string	"tL2CA_DISCONNECT_IND_CB"
.LASF233:
	.string	"p_rx_sdu"
.LASF234:
	.string	"waiting_for_ack_q"
.LASF31:
	.string	"_Bool"
.LASF262:
	.string	"buff_quota"
.LASF401:
	.string	"hal_close"
.LASF149:
	.string	"tL2CAP_CHNL_DATA_RATE"
.LASF128:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF271:
	.string	"peer_cfg_already_rejected"
.LASF80:
	.string	"task_post_t"
.LASF394:
	.string	"free"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF270:
	.string	"fcr_cfg_tries"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF173:
	.string	"tL2CA_CONFIG_IND_CB"
.LASF131:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF386:
	.string	"xQueueGenericSend"
.LASF222:
	.string	"last_ack_sent"
.LASF155:
	.string	"tL2CAP_FCR_OPTS"
.LASF287:
	.string	"cur_echo_id"
.LASF81:
	.string	"TASK_POST_SUCCESS"
.LASF52:
	.string	"ticks"
.LASF211:
	.string	"tL2C_CHNL_STATE"
.LASF269:
	.string	"max_rx_mtu"
.LASF273:
	.string	"bypass_fcs"
.LASF385:
	.string	"esp_vhci_host_register_callback"
.LASF256:
	.string	"remote_id"
.LASF282:
	.string	"p_pending_ccb"
.LASF251:
	.string	"timer_entry"
.LASF398:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/hci_hal_h4.c"
.LASF8:
	.string	"__int32_t"
.LASF65:
	.string	"packet_ready"
.LASF82:
	.string	"TASK_POST_FAIL"
.LASF61:
	.string	"DATA_TYPE_SCO"
.LASF297:
	.string	"peer_ext_fea"
.LASF70:
	.string	"close"
.LASF327:
	.string	"tL2C_CCB_Q"
.LASF323:
	.string	"rr_pri"
.LASF93:
	.string	"tHCI_EXT_FLOW_SPEC"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF268:
	.string	"tx_mps"
.LASF198:
	.string	"user_tx_buf_size"
.LASF309:
	.string	"le_sec_pending_q"
.LASF75:
	.string	"QueueHandle_t"
.LASF176:
	.string	"tL2CA_DISCONNECT_CFM_CB"
.LASF56:
	.string	"TIMER_LIST_ENT"
.LASF272:
	.string	"out_cfg_fcr_present"
.LASF171:
	.string	"tL2CA_CONNECT_CFM_CB"
.LASF16:
	.string	"uint8_t"
.LASF389:
	.string	"l2cu_find_lcb_by_handle"
.LASF185:
	.string	"pL2CA_ConnectPnd_Cb"
.LASF34:
	.string	"layer_specific"
.LASF367:
	.string	"callbacks"
.LASF254:
	.string	"config_done"
.LASF38:
	.string	"qos_flags"
.LASF383:
	.string	"xQueueGenericCreate"
.LASF26:
	.string	"UINT8"
.LASF316:
	.string	"updating_conn_min_interval"
.LASF213:
	.string	"LST_CONNECT_HOLDING"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF172:
	.string	"tL2CA_CONNECT_PND_CB"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF236:
	.string	"retrans_q"
.LASF62:
	.string	"DATA_TYPE_EVENT"
.LASF193:
	.string	"pL2CA_TxComplete_Cb"
.LASF10:
	.string	"long long int"
.LASF338:
	.string	"length"
.LASF263:
	.string	"ccb_priority"
.LASF232:
	.string	"rx_sdu_len"
.LASF242:
	.string	"t_l2c_ccb"
.LASF228:
	.string	"srej_sent"
.LASF306:
	.string	"transport"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF215:
	.string	"LST_CONNECTING"
.LASF393:
	.string	"btsnd_hcic_ble_update_adv_report_flow_control"
.LASF72:
	.string	"BaseType_t"
.LASF124:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF376:
	.string	"fixed_queue_process"
.LASF281:
	.string	"ccb_queue"
.LASF43:
	.string	"latency"
.LASF79:
	.string	"SIG_HCI_HAL_NUM"
.LASF77:
	.string	"BtTaskEvt_t"
.LASF51:
	.string	"p_cback"
.LASF252:
	.string	"p_rcb"
.LASF201:
	.string	"tL2CAP_ERTM_INFO"
.LASF224:
	.string	"max_held_acks"
.LASF89:
	.string	"max_sdu_size"
.LASF296:
	.string	"info_rx_bits"
.LASF301:
	.string	"idle_timeout_sv"
.LASF285:
	.string	"remote_bd_addr"
.LASF298:
	.string	"link_xmit_data_q"
.LASF238:
	.string	"mon_retrans_timer"
.LASF126:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF58:
	.string	"fixed_queue_t"
.LASF167:
	.string	"credits"
.LASF315:
	.string	"waiting_update_conn_timeout"
.LASF402:
	.string	"hci_hal_h4_rx_handler"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF317:
	.string	"updating_conn_max_interval"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF54:
	.string	"param"
.LASF399:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF67:
	.string	"_tle"
.LASF212:
	.string	"LST_DISCONNECTED"
.LASF74:
	.string	"TaskHandle_t"
.LASF142:
	.string	"BTM_PM_STS_HOLD"
.LASF55:
	.string	"in_use"
.LASF44:
	.string	"delay_variation"
.LASF357:
	.string	"hci_update_adv_report_flow_control"
.LASF267:
	.string	"fcrb"
.LASF379:
	.string	"esp_log_write"
.LASF304:
	.string	"p_fixed_ccbs"
.LASF135:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF226:
	.string	"local_busy"
.LASF147:
	.string	"BTM_PM_STS_ERROR"
.LASF91:
	.string	"access_latency"
.LASF197:
	.string	"user_rx_buf_size"
.LASF60:
	.string	"DATA_TYPE_ACL"
.LASF73:
	.string	"TickType_t"
.LASF291:
	.string	"link_flush_tout"
.LASF39:
	.string	"service_type"
.LASF35:
	.string	"data"
.LASF280:
	.string	"completed_packets"
.LASF136:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF277:
	.string	"t_l2c_linkcb"
.LASF84:
	.string	"esp_vhci_host_callback"
.LASF339:
	.string	"previous_byte"
.LASF17:
	.string	"uint16_t"
.LASF372:
	.string	"vTaskDelete"
.LASF148:
	.string	"tL2CAP_CHNL_PRIORITY"
.LASF371:
	.string	"fixed_queue_free"
.LASF239:
	.string	"tL2C_FCRB"
.LASF241:
	.string	"tL2C_RCB"
.LASF303:
	.string	"p_nocp_cb"
.LASF159:
	.string	"flush_to_present"
.LASF276:
	.string	"tx_data_len"
.LASF191:
	.string	"pL2CA_DataInd_Cb"
.LASF164:
	.string	"ext_flow_spec"
.LASF362:
	.string	"bd_addr_null"
.LASF299:
	.string	"peer_chnl_mask"
.LASF392:
	.string	"btsnd_hcic_host_num_xmitted_pkts"
.LASF182:
	.string	"tL2CA_TX_COMPLETE_CB"
.LASF283:
	.string	"info_timer_entry"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF138:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF6:
	.string	"short int"
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF202:
	.string	"CST_CLOSED"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF12:
	.string	"long int"
.LASF370:
	.string	"xHciH4Queue"
.LASF324:
	.string	"tL2C_CCB"
.LASF127:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF330:
	.string	"quota"
.LASF174:
	.string	"tL2CA_CONFIG_CFM_CB"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF259:
	.string	"peer_cfg"
.LASF255:
	.string	"local_id"
.LASF249:
	.string	"local_cid"
.LASF177:
	.string	"tL2CA_QOS_VIOLATION_IND_CB"
.LASF49:
	.string	"p_next"
.LASF204:
	.string	"CST_TERM_W4_SEC_COMP"
.LASF260:
	.string	"xmit_hold_q"
.LASF253:
	.string	"should_free_rcb"
.LASF192:
	.string	"pL2CA_CongestionStatus_Cb"
.LASF347:
	.string	"max_buffer_count"
.LASF178:
	.string	"tL2CA_DATA_IND_CB"
.LASF229:
	.string	"wait_ack"
.LASF235:
	.string	"srej_rcv_hold_q"
.LASF194:
	.string	"tL2CAP_APPL_INFO"
.LASF59:
	.string	"DATA_TYPE_COMMAND"
.LASF365:
	.string	"hci_hal_env"
.LASF4:
	.string	"__uint8_t"
.LASF86:
	.string	"notify_host_recv"
.LASF208:
	.string	"CST_OPEN"
.LASF68:
	.string	"hci_hal_t"
.LASF311:
	.string	"conn_update_mask"
.LASF83:
	.string	"task_post_status_t"
.LASF37:
	.string	"BD_ADDR"
.LASF341:
	.string	"hal_open"
.LASF134:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF69:
	.string	"open"
.LASF264:
	.string	"tx_data_rate"
.LASF318:
	.string	"updating_param_flag"
.LASF219:
	.string	"next_tx_seq"
.LASF87:
	.string	"esp_vhci_host_callback_t"
.LASF388:
	.string	"fixed_queue_enqueue"
.LASF250:
	.string	"remote_cid"
.LASF50:
	.string	"p_prev"
.LASF53:
	.string	"ticks_initial"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF13:
	.string	"sizetype"
.LASF395:
	.string	"fixed_queue_dequeue"
.LASF14:
	.string	"long unsigned int"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF187:
	.string	"pL2CA_ConfigCfm_Cb"
.LASF360:
	.string	"queue"
.LASF18:
	.string	"int32_t"
.LASF63:
	.string	"serial_data_type_t"
.LASF345:
	.string	"packet"
.LASF184:
	.string	"pL2CA_ConnectCfm_Cb"
.LASF76:
	.string	"bt_task_evt"
.LASF325:
	.string	"p_first_ccb"
.LASF121:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF293:
	.string	"sent_not_acked"
.LASF337:
	.string	"type"
.LASF210:
	.string	"CST_W4_L2CA_DISCONNECT_RSP"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF188:
	.string	"pL2CA_DisconnectInd_Cb"
.LASF331:
	.string	"tL2C_RR_SERV"
.LASF313:
	.string	"waiting_update_conn_max_interval"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF349:
	.string	"timeout"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF382:
	.string	"fixed_queue_register_dequeue"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF312:
	.string	"waiting_update_conn_min_interval"
.LASF300:
	.string	"p_hcit_rcv_acl"
.LASF129:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF307:
	.string	"open_addr_type"
.LASF195:
	.string	"preferred_mode"
.LASF278:
	.string	"link_state"
.LASF160:
	.string	"flush_to"
.LASF162:
	.string	"fcs_present"
.LASF231:
	.string	"send_f_rsp"
.LASF41:
	.string	"token_bucket_size"
.LASF245:
	.string	"peer_conn_cfg"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF161:
	.string	"fcr_present"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF319:
	.string	"current_used_conn_interval"
.LASF308:
	.string	"ble_addr_type"
.LASF2:
	.string	"signed char"
.LASF130:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF353:
	.string	"hci_packet_complete"
.LASF163:
	.string	"ext_flow_spec_present"
.LASF230:
	.string	"rej_after_srej"
.LASF279:
	.string	"handle"
.LASF405:
	.string	"memcpy"
.LASF364:
	.string	"outbound_event_types"
.LASF368:
	.string	"vhci_host_cb"
.LASF258:
	.string	"peer_cfg_bits"
.LASF227:
	.string	"rej_sent"
.LASF225:
	.string	"remote_busy"
.LASF90:
	.string	"sdu_inter_time"
.LASF340:
	.string	"__func__"
.LASF247:
	.string	"p_prev_ccb"
.LASF322:
	.string	"rr_serv"
.LASF354:
	.string	"num_handle"
.LASF363:
	.string	"preamble_sizes"
.LASF168:
	.string	"tL2CAP_LE_CFG_INFO"
.LASF288:
	.string	"p_echo_rsp_cb"
.LASF261:
	.string	"cong_sent"
.LASF396:
	.string	"fixed_queue_is_empty"
.LASF57:
	.string	"list_t"
.LASF351:
	.string	"hdr_size"
.LASF334:
	.string	"rx_q"
.LASF180:
	.string	"tL2CA_CONGESTION_STATUS_CB"
.LASF152:
	.string	"max_transmit"
.LASF146:
	.string	"BTM_PM_STS_PENDING"
.LASF344:
	.string	"pkt_size"
.LASF320:
	.string	"current_used_conn_latency"
.LASF352:
	.string	"stream"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF140:
	.string	"BTM_EIR_MAX_SERVICES"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
